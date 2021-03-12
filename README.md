# sistema-prave
Projeto de ingressão no Laboratório LAIS da UFRN, cujo o objetivo é auxilar na reabilitação de pacientes vítimas de Acidente Vascular Encefálico (AVE). 

## Índice

<ol align="left">
  <li><a href="#10-objetivo">Objetivo</a></li>
  <li><a href="#20-proposta-de-solução">Proposta de solução</a></li>
  <li><a href="#30-desenvolvimento">Desenvolvimento</a>
    <ol>
      <li><a href="#31-arduino-uno">Arduino uno</a></li>
      <li><a href="#32-placa-de-circuito-impresso">Placa de circuito impresso</a></li>
      <li><a href="#interface">Interface</a></li>
    </ol>
  </li>
  <li><a href="#40-lista-de-materiais">Lista de materiais</a>
    <ol>
      <li><a href="#41-softwares-de-simulação">Softwares de simulação</a></li>
    </ol>
  </li>
  <li><a href="#50-referências">Referências</a></li>
</ol>

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

## Sistema de controle
<!-- Descrição do controle do carro -->


## Lista de Materiais

### Hardware

* Operacional [LM324](https://www.alldatasheet.com/datasheet-pdf/pdf/17871/PHILIPS/LM324.html) - uma unidade contém 4 operacionais;
* Resistores:
	* 1k - 2 unidades;
	* 5.6k - 1 unidade;
	* 9.1k - 1 unidade;
	* 33k - 1 unidade . 
* Potenciômetro de 100k - 1 unidade;
* Capacitor de 10nF - 1 unidade;
* Arduino uno - 1 unidade;
* ESP01 - 1 unidade;
* Fonte de alimentação simétrica +-5V;


### Software

* [PSpice](https://www.electronics-lab.com/downloads/circutedesignsimulation/?page=5). Neste projeto foi utilizado este software de simulação por ser gratuito, utilizado em meio acadêmico, disponível para estudantes e devido a familiariadade do projetista com a ferramenta. Embora este software seja uma ótima ferramenta de simulação, a versão para estudante apresenta limitações na complexidade do circuito, então é importante destacar que **as simulações foram realizadas separadamente para cara bloco ou módulo do circuito proposto.**

* [IDE arduino](https://www.arduino.cc/en/software). Software amplamente utilizado para a programação e simulação de microcontroladores. A escolha desta ferramenta se dá devido ao microcontrolador utilizado, neste caso, um arduino uno e além disso devido a todo suporte existente da comunidade.

* [Qt](https://www.qt.io/download-open-source?hsCtaTracking=9f6a2170-a938-42df-a8e2-a9f0b1d6cdce%7C6cb0de4f-9bb5-4778-ab02-bfb62735f3e5). Este sofware foi utilizado para criação da interface gráfica. Por apresentar uma versão open source, ser gratúito, permitir funcionamento em multiplas plataformas e uso da linguagem C++, foram as razões consideradas para utilizar esta ferramenta neste projeto.


## Orçamento do projeto



## Referências 

[1](#) Ning, Z & Huang, J & Guo, S & Wang, L. (2020). A Portable Potentiostat for Three-Electrode Electrochemical Sensor. Journal of Physics: Conference Series. 1550. 042049. 10.1088/1742-6596/1550/4/042049.<br>

[2](#) Crespo, J. R. (2017). Electrochemical-SERS analysis of R6G using a microcontroller based Portable Potentiostat (Doctoral dissertation).<br>

[3](#) WEBSTER, H. E. J. G.Measurement, Instrumentation, and Sensors Handbook:Electromagnetic, Optical, Radiation, Chemical, and Biomedical Measurement. 2. ed.[S.l.]: CRC Press, 2014. 1921 p. ISBN 1439848912.<br>

[4](#) Malvino, Albert Paul; e Bates, David J.; Eletrônica, vol. 1 e vol. 2, 8a ed., Ed. McGraw Hill-Bookman, São Paulo, SP, 2016. Também em recurso eletrônico.



## Melhorias e ideias

