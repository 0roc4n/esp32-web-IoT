#include <WiFi.h>
#include <HTTPClient.h>

// WiFi parameters
const char* ssid = "Connect";
const char* password = "connect123";
bool ledState23 = false;
bool ledState22 = false;
bool ledState1 = false;
HTTPClient http;

// host to send data
const char* host = "http://192.168.38.238/esp32/Getstatus.php";

void setup() {
  pinMode(23, OUTPUT);
  pinMode(22, OUTPUT);
  pinMode(21, OUTPUT);
  Serial.begin(9600);
  Serial.print("Connecting to ");
  Serial.println(ssid);
  WiFi.begin(ssid, password);
  
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  
  Serial.println();
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}

void loop() {
  String payload;
  if (WiFi.status() == WL_CONNECTED) {
    http.begin(host);
    int httpCode = http.GET();
    
    if (httpCode > 0 && httpCode == HTTP_CODE_OK) {
      payload = http.getString();
      Serial.println(payload);
      if (payload == "112030") {
        setLEDStates(true, false, false); // Turn on LED 23
      }if (payload == "102030") {
        setLEDStates(false, false, false); // Turn off all LEDs
      }if (payload == "102130") {
        setLEDStates(false, true, false); // Turn on LED 22
      }if (payload == "102031") {
        setLEDStates(false, false, true); // Turn on LED 1
      }if (payload == "112130") {
        setLEDStates(true, true, false); // Turn on all LEDs
      }if (payload == "112031") {
        setLEDStates(true, false, true); // Turn on LED 23 and 22
      } else if (payload == "102131") {
        setLEDStates(false, true, true); // Turn on LED 23 and 1
      }if (payload == "112131") {
        setLEDStates(true, true, true); // Turn on LED 22 and 1
      }
      
      
    }
    
    http.end();
  }
  //digitalWrite(21, HIGH);
  
}

void setLEDStates(bool state23, bool state22, bool state1) {
  if (ledState23 != state23) {
    ledState23 = state23;
    digitalWrite(23, state23 ? HIGH : LOW);
    delay(50);
  }
  
  if (ledState22 != state22) {
    ledState22 = state22;
    digitalWrite(22, state22 ? HIGH : LOW);
    delay(50);
  }
  
  if (ledState1 != state1) {
    ledState1 = state1;
    digitalWrite(21, state1 ? HIGH : LOW);
    delay(50);
  }
}