#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

#include <QDialog>
#include <QSerialPort>
#include <QMessageBox>

#include <QtGui>
#include <QtWidgets>
#include <QKeyEvent>

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

    QStringList getDevicesList();

private slots:
    //Funções que "escutam" o disparo de eventos
    void on_refreshButton_clicked();

    void plotGraph(QString); //setup do gráfico
    //void realtimeDataSlot(); // função de exibição dos dados

    void on_connectDeviceButton_clicked();

    // Lê os dados da porta serial
    void readSerial();
private:
    Ui::MainWindow *ui;

    QSerialPort *arduinoUno;
    QString devicePortName; // Recebe a porta que o arduino está conectado
    bool devicesIsConnected; //
    QByteArray serialData; // Atributos para leitura da porta serial
    QString serialBuffer; // guarda o conteúdo lido da porta serial
    QString devices;

    //variáveis de teste
    QStringList devList;

    //Array de dados
    QVector<double> emgData;
    QVector<double> timestamp;

    void sendSerialCommand(QString);
    void updateConnectionStatus();
    void updateLDCData(QString);

};
#endif // MAINWINDOW_H
