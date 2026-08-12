# Simulador de Subida da Minhoca

Aplicação desenvolvida em **Delphi VCL** como parte de uma avaliação prática de desenvolvimento.

## Demonstração

🎥 [Assistir ao vídeo de demonstração da aplicação](https://drive.google.com/file/d/17CyIdt10nuulpqprrcb6wUxZfz95jhK6/view?usp=drive_link)

## Objetivo

Simular o deslocamento de uma minhoca dentro de um buraco, considerando três parâmetros informados pelo usuário:

* profundidade do buraco;
* distância de avanço a cada subida;
* distância de queda após cada avanço.

A simulação continua até que a minhoca alcance ou ultrapasse a profundidade total do buraco.

## Funcionalidades

* Configuração da profundidade, avanço e queda;
* Validação para impedir situações em que a queda seja maior ou igual ao avanço;
* Animação visual da posição da minhoca no buraco;
* Indicação visual ao atingir metade do percurso;
* Mudança de cor ao concluir a subida;
* Contagem de:

  * altura atual;
  * quantidade de subidas;
  * quantidade de quedas;
  * tempo decorrido;
* Registro dos eventos da simulação;
* Opção para pausar a execução;
* Opção para retomar a simulação do ponto em que foi interrompida;
* Restauração dos valores padrão.

## Valores padrão

A aplicação inicia com os seguintes valores:

* Profundidade: `20 cm`
* Avanço: `5 cm`
* Queda: `3 cm`

## Regras da simulação

A cada ciclo:

1. A minhoca avança a distância configurada.
2. Caso tenha alcançado a saída, a simulação é encerrada.
3. Caso contrário, ocorre a queda definida pelo usuário.
4. A queda corresponde a 1 segundo no tempo da simulação.
5. O processo é repetido até a saída do buraco.

## Tecnologias utilizadas

* Delphi 12 Community Edition
* VCL
* Object Pascal
* `TTimer` para controle da simulação
* Componentes visuais nativos da VCL

Não foram utilizadas bibliotecas ou componentes externos.

## Estrutura principal

A lógica da aplicação está concentrada na unit principal, responsável por:

* controlar os estados da simulação;
* calcular a altura atual;
* atualizar a posição visual da minhoca;
* controlar subida e queda por meio do `TTimer`;
* atualizar os indicadores da interface;
* registrar os eventos da execução.

A posição visual da minhoca é calculada proporcionalmente à relação entre sua altura atual e a profundidade total do buraco.

## Como executar

1. Abra o arquivo do projeto no Delphi.
2. Compile o projeto.
3. Execute a aplicação.
4. Informe os parâmetros desejados ou utilize os valores padrão.
5. Clique em **Iniciar Simulação**.

Também é possível pausar a execução e retomá-la posteriormente sem perder o estado atual da simulação.

## Requisitos

* Windows
* Delphi com suporte a aplicações VCL

## Autor

**Sofia Miranda**
