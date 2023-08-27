#include <WiFi.h>
#include <HTTPClient.h>
#include "DHT.h"
#define DHTPIN 22
#define DHTTYPE DHT11
DHT dht(DHTPIN, DHTTYPE);

// WiFi parameters
const char* ssid = "Connect";
const char* password = "connect123";

bool ledState23 = false;
bool ledState22 = false;
bool ledState1 = false;
HTTPClient http;

// host to send data
const char* host = "http://192.168.47.238/esp32/Getstatus.php";
const char* host2 = "192.168.47.238";


void setup() {
  Serial.println("DHT11 Output!");
  dht.begin();
  pinMode(23, OUTPUT);
  
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
      } if (payload == "102030") {
        setLEDStates(false, false, false); // Turn off all LEDs
      } if (payload == "102130") {
        setLEDStates(false, true, false); // Turn on LED 22
      } if (payload == "102031") {
        setLEDStates(false, false, true); // Turn on LED 1
      } if (payload == "112130") {
        setLEDStates(true, true, false); // Turn on all LEDs
      } if (payload == "112031") {
        setLEDStates(true, false, true); // Turn on LED 23 and 22
      } else if (payload == "102131") {
        setLEDStates(false, true, true); // Turn on LED 23 and 1
      } if (payload == "112131") {
        setLEDStates(true, true, true); // Turn on LED 22 and 1
      }


    }

    http.end();
  
  
  }
  float temperature = dht.readTemperature();
    float humidity = dht.readHumidity();

    if (isnan(temperature) || isnan(humidity)) {
        Serial.println("Failed to read DHT11");
    } else {
        Serial.print("Humidity: ");
        Serial.print(humidity);
        Serial.print(" %\t");
        Serial.print("Temperature: ");
        Serial.print(temperature);
        Serial.println(" *C");
        delay(3000);
    }

    Serial.print("connecting to ");
    Serial.println(host2);

    WiFiClient client;
    const int httpPort = 80; // Use port 80 for HTTP

    if (!client.connect(host2, httpPort)) {
        Serial.println("connection failed");
        return;
    }

    String request = "GET /esp32-web-iot/connection.php";
    request += "?temperature=" + String(temperature);
    request += "&humidity=" + String(humidity);
    request += " HTTP/1.1\r\n";
    request += "Host: " + String(host2) + "\r\n";
    request += "Connection: close\r\n\r\n";

    client.print(request);

    unsigned long timeout = millis();
    while (client.available() == 0) {
        if (millis() - timeout > 5000) { // Increased timeout to 5 seconds
            Serial.println(">>> Client Timeout !");
            client.stop();
            return;
        }
    }

    while (client.available()) {
        String line = client.readStringUntil('\r');
        Serial.print(line);
    }

    Serial.println();
    Serial.println("closing connection");
}


void setLEDStates(bool state23, bool state22, bool state1) {
  if (ledState23 != state23) {
    ledState23 = state23;
    digitalWrite(23, state23 ? HIGH : LOW);
    delay(50);
  }

  if (ledState22 != state22) {
    ledState22 = state22;
    digitalWrite(21, state22 ? HIGH : LOW);
    delay(50);
  }

  if (ledState1 != state1) {
    ledState1 = state1;
    digitalWrite(35, state1 ? HIGH : LOW);
    delay(50);
  }
}