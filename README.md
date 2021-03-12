# sistema-prave
Projeto de ingressão no Laboratório LAIS da UFRN, cujo o objetivo é auxilar na reabilitação de pacientes vítimas de Acidente Vascular Encefálico (AVE). 

## Índice

<ol align="left">
  <li><a href="#introdução">Introdução</a></li>
  <li><a href="#objetivo">Objetivo</a></li>
  <li><a href="#20-instrumentação-e-modelagem">Instrumentação e modelagem</a>
    <ol>
      <li><a href="#21-estágio-diferencial">Estágio diferencial</a></li>
      <li><a href="#22-estágio-de-filtragem">Estágio de filtragem</a></li>
      <li><a href="#23-estágio-de-amplificação-e-retificação">Estágio de amplificação e retificação</a></li>
    </ol>
  </li>
  <li><a href="#lista-de-materiais-e-serviços">Lista de materiais e serviços</a>
    <ol>
      <li><a href="#hardware">Hardware</a></li>
      <li><a href="#softwares">Softwares</a></li>
    </ol>
  </li>
  <li><a href="#orçamento-do-projeto">Orçamento do projeto</a></li>
  <li><a href="#referências">Referências</a></li>
  <li><a href="#melhorias-e-ideias">Melhorias e ideias</a></li>

</ol>

## Introdução
<!-- Falar um pouco sobre a aplicação -->
<!-- Falar a sequência de passos utilizados para desenvolver o projeto -->


## Objetivo
<!-- Descrição simples sobre -->

## 2.0 Instrumentação e modelagem
<!-- Mostrar cálculos e simulações -->
Para realizar a medição de biopotenciais é necessário realizar uma amplificação do sinal, já que a amplitude da resposta elétrica varia uV e mV, na medição de EMG é em torno de 1mV~10mV(Referência: Livro de Instrumentação, pg). 

O circuito desenvolvido é composto por quatro módulos, sendo estes o módulo diferencial, filtragem do sinal, amplificação e retificação do sinal, como é possível observar no diagrama abaixo.

<p align="center">
  <img width="500px" src=".github/diagrama_circuito-Page-1.png">
</p>

### 2.1 Estágio diferencial
Na construção do circuito que fará a medição de biopotenciais é necessário atentar-se as questões de segurança dos pacientes,    

Para a construção deste estágio foi utilizada a configuração do amplificador de instrumentação, já que este tipo de amplificador diferencial permite:

- Alto ganho para entradas diferenciais é pequenas (mV): fator importante na obtenção das leituras em pacientes que estão em reabilitação, pois talvez tenham uma resposta elétrica muito baixa;
- Grande common mode rejection ratio (CMRR): aumenta a precisão ou ;
- Alta impedância de entrada, evitando o fluxo de altas correntes;

<p align="center">
  <img width="400px" src=".github/amp_dif.png">
</p>

Simulação do circuito

Tensão de entrada
<p align="center">
  <img width="400px" src=".github/amp_dif_input.png">
</p>


Saída do estaǵio diferencial

<p align="center">
  <img width="400px" src=".github/output_amp_dif.png">
</p>


### 2.2 Estágio de filtragem

Para reduzir a presença de ruídos na aquisição do EMG, foi necessário realizar a construção de um módulo de filtragem. Como os sinais de EMG apresentam frequências entre 20 e 500Hz (Adicionar referências)

<p align="center">
  <img width="500px" src=".github/band_pass_filter.png">
</p>
<!-- Descrever as características da tensão de entrada
  Mostrar os cálculos
  Colocar referências (OpenHardware)
 -->
Simulação

<p align="center">
  <img width="500px" src=".github/filter_output.png">
</p>

### 2.3 Estágio de amplificação e retificação

Neste estágio realiza-se a amplificação final do sinal juntamente com a retificação deste, visto que o sinal será convertido para um sinal digital. Além disso, este estágio permite ajuste do ganho, tendo então um valor entre 47 e 147 proximadamente.

<p align="center">
  <img width="500px" src=".github/amplifier_circuit.png">
</p>

**Simulação**

<p align="center">
  <img width="500px" src=".github/amplifier_simulation.png">
</p>

**Cálculo do ganho e retificação**

```
Av = R/R1 + 1
```

## Interface gráfica 
<!-- Demonstrar o funcionamento da interface -->

Uma vez que a visualização gráfica é necessária para o profissional de saúde que fará o acompanhamento do paciente, foi desenvolvida uma interface gráfica que permite a visualização em tempo real da resposta muscular do paciente. Além disso, o usuário poderá fazer a exportação de um arquivo .CSV com os dados armazenados da consulta.

A interface recebe informações enviadas pelo arduino uno via comunicação serial. Para fins de simulação foi realizada a variação de tensão sob um potenciômetro de 10k Ohms, assim foi validado o funcionamento da interface.

A interface foi desenvolvida utilizando a ferramenta [Qt](https://www.qt.io/) e os motivos que levaram a escolha deste software estão descritas na seção de [Lista de Materiais](#Software). 

<p align="center">
  <img width="500px" src=".github/real_time_plot_v1.gif">
</p>

## Sistema de corrida
<!-- Descrição do controle do carro -->

Para esta primeira versão do sistema desenvolvido neste projeto, tem-se suporte para apenas 1 jogador, já que na especificação indica que o sistema deve possuir até 4 jogadores. Entretando, esta limitação pode ser removida com melhorias futuras. Outro ponto importante é que priorizou-se utilizar materiais de fácil acesso, de modo fosse possível reaproveitar materiais recicláveis.

Foi utilizado um arduino uno para simular o controlador do sistema e um motor DC responsável por tracionar o carro de brinquedo. O [controle](./car_controller/car_controller.ino) desenvolvido para a ativação do motor é simples, a velocidade será proporcional a tensão lida pelo arduino. O arduino uno possui 10 bits de resolução, então os valores são convertidos entre 0 e 1023. Já a velocidade do motor DC é controlada por meio de um pulso PWM, cujo o duty cycle varia de 0 a 255, representando 0 a 100%.  

<p align="center">
  <img width="350px" src=".github/motor_circuit.png">
  <img height="210px" src=".github/real_circuit.jpg">
  <br>
  <p align="center">Figura A. Circuito para controle do motor: esquemático e testado (Fonte: <a href="https://www.arduinoecia.com.br/controle-de-motor-dc-com-o-l293d-ponte-h/">Arduino e Cia</a>).</p>
</p>
<br>

Já em relação ao ambiente/pista de corrida, optou-se por utilizar uma impressora, como pode-se observar na figura abaixo. A motivação da escolha parte da ideia de reciclagem, além disso a mecânica da estrutura permite a mesma dinâmica propocionada por jogos *drag racing*. Em paralelo ao motor tem-se um sensor ultra sônico para frenagem do carrinho quando este se aproximar na "linha de chegada".
Por fim o carro de brinquedo é anexado na superfície que é controlada pelo motor. 

<p align="center">
  <img height="350px" src=".github/usar1.jpg">
  <img height="350px" src=".github/usar_2.jpg">
  <img height="350px" src=".github/usar_3.jpg">
  <br>
  <p align="center">Figura X. Estrutura da pista</p>
</p>

É importante destacar que esta abordagem via corrida de carrinho é uma forma interessante de analisar o quadro de evolução do paciente. 

## Lista de Materiais e serviços

### Hardware

* Operacional [LM324](https://www.alldatasheet.com/datasheet-pdf/pdf/17871/PHILIPS/LM324.html) - uma unidade contém 4 operacionais;
* Resistores:
	* 1k - 2 unidades;
	* 5.6k - 1 unidade;
	* 9.1k - 1 unidade;
	* 33k - 1 unidade . 
* Potenciômetro de 100k - 1 unidade;
* Capacitor de 10nF - 1 unidade;
* Arduino nano - 1 unidade;
<!-- ou arduino nano, por ser mais prático -->
* **Eletrodo utilizado**:
<!-- Justificar a escolha do eletródo, usar como base o livro de instrumentação -->
* [Max1044/icl7660](https://datasheets.maximintegrated.com/en/ds/ICL7660-MAX1044.pdf): um conversor de tensão para -5V, este componente simplificará o circuito final para a alimentação simétrica dos estágios com amplificadores.

* Diodo [D1N4007]() : 
 <!-- razão de ter escolhido este diodo  -->

* [L293D](): é o módulo da ponte H, necessária para controle do motor DC.

* Bateria 9V: 


### Softwares
[voltar para índice](#índice) 

* [PSpice](https://www.electronics-lab.com/downloads/circutedesignsimulation/?page=5). Neste projeto foi utilizado este software de simulação por ser gratuito, utilizado em meio acadêmico, disponível para estudantes e devido a familiariadade do projetista com a ferramenta. Embora este software seja uma ótima ferramenta de simulação, a versão para estudante apresenta limitações na complexidade do circuito, então é importante destacar que **as simulações foram realizadas separadamente para cara bloco ou módulo do circuito proposto.**

* [IDE arduino](https://www.arduino.cc/en/software). Software amplamente utilizado para a programação e simulação de microcontroladores. A escolha desta ferramenta se dá devido ao microcontrolador utilizado, neste caso, um arduino uno e além disso devido a todo suporte existente da comunidade.

* [Qt](https://www.qt.io/download-open-source?hsCtaTracking=9f6a2170-a938-42df-a8e2-a9f0b1d6cdce%7C6cb0de4f-9bb5-4778-ab02-bfb62735f3e5). Este sofware foi utilizado para criação da interface gráfica. Por apresentar uma versão open source, ser gratúito, permitir funcionamento em multiplas plataformas e uso da linguagem C++, foram as razões consideradas para utilizar esta ferramenta neste projeto.


## Orçamento do projeto

Na lista abaixo contém todos os componentes utilizados e o respectivo preço. É importante que os itens da lista são vendidos no Brasil e, para fazer uma breve comparação, também é apresentado uma lista com o preço dos mesmos componentes disponíveis no mercado internacional. Deste modo dependendo da urgência/verba disponível para a construção do protótipo, pode-se escolher a melhor alternativa.

1. Max1044/icl7660 - R$ [49,90](https://produto.mercadolivre.com.br/MLB-1743219833-max1044icl7660-switched-capacitor-voltage-converters-5-pcs-_JM#position=5&type=item&tracking_id=fe80bb47-8e29-429a-8a61-f6f3be3a011d) (pelo mercado livre)

2. LM324 x 2

3. Resistores x *n* (quantidade de resistores)

4. Capacitores x *n* (quantidade de capacitores)

5. Impressão da placa

6. Arduino nano - RS [31,90](https://www.robocore.net/placa-arduino/placa-nano-v3-com-cabo-usb-para-arduino?gclid=Cj0KCQiAv6yCBhCLARIsABqJTjYw68xsy4khcI4-SAYwE8Emp7A2HrOhB0R6kJR8ZRxTo6YxT30KngkaAg1aEALw_wcB)

<p><strong>Total: </strong>R$ <span style="color: green">100,00 </span></p>


Optando por comprar no mercado internacional tem-se:



<p>Total: R$ <span style="color: green">100,00 </span></p>



## Referências 

[1](#) Ning, Z & Huang, J & Guo, S & Wang, L. (2020). A Portable Potentiostat for Three-Electrode Electrochemical Sensor. Journal of Physics: Conference Series. 1550. 042049. 10.1088/1742-6596/1550/4/042049.<br>

[2](#) Crespo, J. R. (2017). Electrochemical-SERS analysis of R6G using a microcontroller based Portable Potentiostat (Doctoral dissertation).<br>

[3](#) WEBSTER, H. E. J. G.Measurement, Instrumentation, and Sensors Handbook:Electromagnetic, Optical, Radiation, Chemical, and Biomedical Measurement. 2. ed.[S.l.]: CRC Press, 2014. 1921 p. ISBN 1439848912.<br>

[4](#) Malvino, Albert Paul; e Bates, David J.; Eletrônica, vol. 1 e vol. 2, 8a ed., Ed. McGraw Hill-Bookman, São Paulo, SP, 2016. Também em recurso eletrônico.



## Melhorias e ideias

