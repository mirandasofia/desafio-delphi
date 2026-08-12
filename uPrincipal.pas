unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Buttons;

type
  TForm1 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    teProfundidade: TEdit;
    teAvanco: TEdit;
    teQueda: TEdit;
    Label4: TLabel;
    btRestaurar: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lbAltura: TLabel;
    lbQuedas: TLabel;
    lbTempo: TLabel;
    Panel3: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    lbSubidas: TLabel;
    Timer: TTimer;
    Label10: TLabel;
    Shape1: TShape;
    Label11: TLabel;
    Shape2: TShape;
    Label13: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Label1: TLabel;
    Label14: TLabel;
    Memo1: TMemo;
    Shape6: TShape;
    pBuraco: TPanel;
    minhoca: TShape;
    plIniciar: TPanel;
    btPararSimulacao: TButton;
    mRegistro: TMemo;
    Label15: TLabel;
    btRetomar: TButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;

  private
    { Private declarations }
    FTempo: Integer;
    FAvanco: Double;
    FQueda: Double;
    FAlturaAtual: Double;
    FProfundidade: Double;

    FQtdSubidas: Integer;
    FQtdQuedas: Integer;

    FMetadeAlcancada: Boolean;
    FDeveCair: Boolean;
    FSimulacaoAtiva: Boolean;
    FSimulacaoPausada: Boolean;

    procedure btRestaurarClick(Sender: TObject);
    procedure LimpaCampos;
    procedure TimerTimer(Sender: TObject);
    procedure AtualizaPosicao;
    procedure FormCreate(Sender: TObject);
    procedure plIniciarClick(Sender: TObject);
    procedure btPararSimulacaoClick(Sender: TObject);
    procedure RegistrarEvento(const Mensagem: string);
    procedure btRetomarClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btRestaurarClick(Sender: TObject);
begin
  teProfundidade.Text := floatToStr(20);
  teAvanco.Text       := floatToStr(5);
  teQueda.Text        := floatToStr(3);
end;

procedure TForm1.btRetomarClick(Sender: TObject);
begin
  if not FSimulacaoPausada then
    Exit;

  FSimulacaoAtiva := True;
  FSimulacaoPausada := False;

  Timer.Enabled := True;

  plIniciar.Enabled := False;
  btPararSimulacao.Enabled := True;
  btRetomar.Enabled := False;

  RegistrarEvento('Simulação retomada.');
end;

procedure TForm1.btPararSimulacaoClick(Sender: TObject);
begin
  if not FSimulacaoAtiva then
    Exit;

  Timer.Enabled := False;

  FSimulacaoAtiva := False;
  FSimulacaoPausada := True;

  plIniciar.Enabled := True;
  btPararSimulacao.Enabled := False;
  btRetomar.Enabled := True;

  RegistrarEvento(
    Format('Simulação pausada na altura de %.1f cm.', [FAlturaAtual])
  );
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  plIniciar.Font.Color := clWhite;
  btPararSimulacao.Enabled := False;
end;

procedure TForm1.AtualizaPosicao;
var
  AreaUtil: Integer;
  Percentual: Double;
begin
  AreaUtil := pBuraco.ClientHeight - minhoca.Height;

  Percentual := FAlturaAtual / FProfundidade;

  if Percentual < 0 then
    Percentual := 0;

  if Percentual > 1 then
    Percentual := 1;

  minhoca.Top :=
    AreaUtil - Round(Percentual * AreaUtil);
end;

procedure TForm1.LimpaCampos;
begin
  teProfundidade.Clear;
  teAvanco.Clear;
  teQueda.Clear;
end;

procedure TForm1.plIniciarClick(Sender: TObject);
begin
    FProfundidade := StrToFloat(teProfundidade.Text);
    FAvanco := StrToFloat(teAvanco.Text);
    FQueda := StrToFloat(teQueda.Text);

    if FQueda >= FAvanco then
    begin
      ShowMessage('O avanço deve ser maior que a queda.');
      Exit;
    end;

    FAlturaAtual := 0;
    FQtdSubidas := 0;
    FQtdQuedas := 0;
    FTempo := 0;
    mRegistro.Clear;


    RegistrarEvento(
      Format(
        'Início: profundidade %.1f cm, avanço %.1f cm e queda %.1f cm.',
        [FProfundidade, FAvanco, FQueda]
      )
    );

    FMetadeAlcancada  := False;
    FDeveCair         := False;
    FSimulacaoAtiva   := True;
    FSimulacaoPausada := False;

    plIniciar.Enabled        := False;
    btPararSimulacao.Enabled := True;
    btRetomar.Enabled        := False;

    lbAltura.Caption  := '0 cm';
    lbSubidas.Caption := '0';
    lbQuedas.Caption  := '0';
    lbTempo.Caption   := '0 s';

    Timer.Interval := 1000;
    Timer.Enabled  := True;

    AtualizaPosicao;
    minhoca.Brush.Color := clFuchsia;
end;

procedure TForm1.RegistrarEvento(const Mensagem: string);
begin
    mRegistro.Lines.Add(
    Format('[%02d s] %s', [FTempo, Mensagem])
  );

  // Faz o Memo rolar automaticamente até a última linha
  mRegistro.SelStart := Length(Memo1.Text);
  mRegistro.Perform(EM_SCROLLCARET, 0, 0);
end;

procedure TForm1.TimerTimer(Sender: TObject);
begin
  if not FDeveCair then
  begin
    // SUBIDA
    FAlturaAtual := FAlturaAtual + FAvanco;
    Inc(FQtdSubidas);

    RegistrarEvento(
      Format(
        'Subida %d: altura %.1f cm.',
        [FQtdSubidas, FAlturaAtual]
      )
    );

    AtualizaPosicao;

    lbAltura.Caption := Format('%.1f cm', [FAlturaAtual]);
    lbSubidas.Caption := IntToStr(FQtdSubidas);

    // Verifica metade
    if (FAlturaAtual >= FProfundidade / 2) and
       not FMetadeAlcancada then
    begin
      FMetadeAlcancada := True;
      minhoca.Brush.Color := clYellow;
      RegistrarEvento('A minhoca alcançou metade do percurso.');
    end;

    // Verifica saída
    if FAlturaAtual >= FProfundidade then
    begin
      minhoca.Brush.Color := clGreen;
      Timer.Enabled := False;

      FSimulacaoAtiva := False;

      plIniciar.Enabled := True;
      btPararSimulacao.Enabled := False;

      RegistrarEvento(
        Format(
          'Concluído! A minhoca saiu após %d subidas e %d quedas.',
          [FQtdSubidas, FQtdQuedas]
        )
      );

      ShowMessage(
        Format(
          'A minhoca saiu do buraco!' + sLineBreak +
          'Subidas: %d' + sLineBreak +
          'Quedas: %d' + sLineBreak +
          'Tempo: %d segundos',
          [FQtdSubidas, FQtdQuedas, FTempo]
        )
      );

      Exit;
    end;

    // No próximo ciclo ela deverá cair
    FDeveCair := True;
  end
  else
  begin
    // QUEDA
    FAlturaAtual := FAlturaAtual - FQueda;

    Inc(FQtdQuedas);
    Inc(FTempo);

    RegistrarEvento(
      Format(
        'Queda %d: voltou para %.1f cm.',
        [FQtdQuedas, FAlturaAtual]
      )
    );

    // Verifica metade
    if (FAlturaAtual < FProfundidade / 2) and
       FMetadeAlcancada then
    begin
      FMetadeAlcancada := False;
      minhoca.Brush.Color := clFuchsia;
    end;

    AtualizaPosicao;

    lbAltura.Caption := Format('%.1f cm', [FAlturaAtual]);
    lbQuedas.Caption := IntToStr(FQtdQuedas);
    lbTempo.Caption := IntToStr(FTempo) + ' s';

    // No próximo ciclo volta a subir
    FDeveCair := False;
  end;
end;

end.
