#include "mainwindow.h"
#include "ui_mainwindow.h"

//Bibliotecas para comunicação serial
#include <QSerialPortInfo>
#include <QDebug>

#include <QPixmap>
#include <QIcon>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    /*Inicialização de variáveis*/
    this->devicePortName = "";
    this->devicesIsConnected = false;
    this->arduinoUno = new QSerialPort;
    ui->connectionStatusLabel->setText(QString("<span style=\" font-size:12pt; color:red;\">Desconectado</span>"));

    //Eventos ou Sinais disparados
    on_refreshButton_clicked(); // Evento para atualização das portas disponíveis
}

MainWindow::~MainWindow()
{
    delete ui;
}

//Retorno de todos os dispositivos conectados
QStringList MainWindow::getDevicesList(){
    this->devList.clear();//limpa o array[]:String
    ui->portSelection->clear();//limpa a caixa de seleção

    foreach(const QSerialPortInfo serialInfo, QSerialPortInfo::availablePorts()){
        this->devList << serialInfo.portName();
    }
    //qDebug() << devList << "\n";
    ui->portSelection->addItems(devList);
    return this->devList;
}

//Leitura de evento ao clicar no butão "Atualizar"
void MainWindow::on_refreshButton_clicked()
{
    QStringList portList = this->getDevicesList();
    //qDebug() << portList;
}

/* Esta função realiza a leitura dos dados
enviados pela via Serial e envia os dados para o gráfico*/
void MainWindow::readSerial(){
    QStringList buffer = serialBuffer.split("\r\n");
//    qDebug() << buffer;

    if (buffer.length() < 3){
        serialData = arduinoUno->readAll();
        serialBuffer += QString::fromStdString(serialData.toStdString());
    }else{
        //atualiza no display
        this->updateLDCData(buffer[1]); // Imprimindo no LCD
        this->plotGraph(buffer[1]); // Plotando o gráfico
        serialBuffer = "";
    }
}

void MainWindow::updateLDCData(QString data){
    ui->lcdNumber->display(data);
}

//Setup do gráfico
void MainWindow::plotGraph(QString data){
    double key = QElapsedTimer().elapsed()/1000.0; // leitura do tempo
    double voltage = (data.toDouble()*5)/1023; // conversão para tensão de entrada

    this->emgVoltage.append(voltage);
    this->saveTimeStamp.append(key);

    ui->customPlot->addGraph(); // criação do gráfico
    ui->customPlot->graph(0)->addData(key, voltage); // adição dos dados ao gráfico
    // Adição de labels nos eixos:
    ui->customPlot->xAxis->setLabel("Tempo (s)");
    ui->customPlot->yAxis->setLabel("Tensão (V)");
    // Faz com que o gráfico role para direita na medida que os novos valores chegam
    ui->customPlot->graph(0)->rescaleValueAxis();
    ui->customPlot->xAxis->setRange(key, 8, Qt::AlignRight);
    ui->customPlot->replot();
}

// Evento de conexão com o dispositivo
void MainWindow::on_connectDeviceButton_clicked()
{
    if (ui->portSelection->count() <= 0){
        QMessageBox::warning(this, "Erro na porta.", "Nenhum dispositivo conectado!");
    }else{
        devicesIsConnected = true; // Se passar por todas as verificações recebe true na verificação
        devicePortName = ui->portSelection->currentText(); // Se passar por todas as verificações recebe o nome da porta

        // altera o estado de conexão na interface
        ui->connectionStatusLabel->setText(QString("<span style=\" font-size:12pt; color:green;\">Conectado</span>"));

        arduinoUno->setPortName(devicePortName); // Muda o nome da porta para a que o arduino se encontra
        arduinoUno->open(QSerialPort::ReadWrite); //Acessando arduino em modo de escrita para a placa
        arduinoUno->setBaudRate(QSerialPort::Baud9600);
        arduinoUno->setDataBits(QSerialPort::Data8); // Arduino, 8 bits
        arduinoUno->setParity(QSerialPort::NoParity);
        arduinoUno->setStopBits(QSerialPort::OneStop); // A opção half and stop é só para o windows
        arduinoUno->setFlowControl(QSerialPort::NoFlowControl);

        // Evento que será chamado toda vez que tiver dados disponíveis
        QObject::connect(arduinoUno, SIGNAL(readyRead()), this, SLOT(readSerial()));
    }
}

// Evento para exportar os dados em CSV
void MainWindow::on_exportCSVButton_clicked()
{
    // abre o arquivo csv
//    QString filePath = QDir::currentPath();
    QFile file("/home/gustavo/Downloads/UFRN_2_Season/qt-arduino/test_file.csv");
    file.open(QIODevice::Append | QIODevice::Text);

    // escrita dos dados no arquivo
    QTextStream stream(&file);
    stream << "Tensão (V)" << "," << "TimeStamp";

    for(int i=0; i< this->emgVoltage.length(); i++){
        stream << this->emgVoltage[i] << "," << saveTimeStamp[i] << Qt::endl;
    }

    stream.flush();
    file.close();
}

// Butão que desconecta o arduino
void MainWindow::on_pushButton_5_clicked()
{
    if(this->devicesIsConnected){
        this->devicesIsConnected = false;
        ui->connectionStatusLabel->setText(QString("<span style=\" font-size:12pt; color:red;\">Desconectado</span>"));
        arduinoUno->close();
    }
}
