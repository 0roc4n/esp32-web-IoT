#include <WiFi.h>
#include <HTTPClient.h>

// WiFi parameters
const char* ssid = "Connect";
const char* password = "connect123";
HTTPClient http;

// host to send data
const char* host = "http://192.168.159.238/esp32/Getstatus.php";

void setup() {
  pinMode(23, OUTPUT);
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
  if (WiFi.status() == WL_CONNECTED) {
    http.begin(host);
    int httpCode = http.GET();
    if (httpCode > 0) {
      if (httpCode == HTTP_CODE_OK) {
        String payload = http.getString();
        Serial.println(payload);
        if (payload == "112030") {
          digitalWrite(23, HIGH); // if data == 1 -> LED ON
        } else if (payload == "102030") {
          digitalWrite(23, LOW); // if data == 0 -> LED OFF
        }else if (payload == "102130") {
          digitalWrite(23, HIGH); // if data == 0 -> LED OFF
        }else if (payload == "102030") {
          digitalWrite(23, LOW); // if data == 0 -> LED OFF
        }else if (payload == "102031") {
          digitalWrite(23, HIGH); // if data == 0 -> LED OFF
        }else if (payload == "102030") {
          digitalWrite(23, LOW); // if data == 0 -> LED OFF
        }
        
      }
    }
    http.end();
  }
  
}