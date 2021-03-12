#define PWM_OUTPUT 5
#define MOTOR_PIN3 10 // conecta ao pino 7 do L293
#define MOTOR_PIN4 9 // conecta ao pino 2 do L293
 
// variáveis para controle do motor
int Input, motorSpeed;

void setup ()
{
  Serial.begin(9600);
}
 
void loop()
{
  speedControl();
}

int getEMGSignal() {
  return analogRead(A0); // Leitura da resposta do sensor
}

void speedControl(){
  Input = getEMGSignal();
  // analogWrite(PWM_OUTPUT, Output);
  
  motorSpeed = Input/4; // o input varia de 0 a 1024, ent
  // Serial.print(motorSpeed);
  Serial.print(Input); // Envio dos dados para interface

  digitalWrite(MOTOR_PIN3, LOW);
  digitalWrite(MOTOR_PIN4, motorSpeed); // pulso PWM proporcional a entrada da tensão
  
}
