# esp32-web-IoT
IoT LED Control with Web Application

# Pre Requirement
1. Xampp version 7.0+
2. Visual Studio Code
3. Arduino IDE (for online compiler go to arduino IoT web and install arduino agent to your computer)
4. Browser
# Installation
Part I (Web App)
1. Clone the repository https://github.com/0roc4n/esp32-web-IoT.git
2. Open xampp, run apache and mysql
3. open browser locate locahost phpmyadmin
4. create new database "qlda" import qlda.sql
5. open file folder open toggletest.php, check if working
Part II (Arduino Installation)
-----Arduino IDE (Local Machine)------
   1. open arduino ide, create new sketch
   2. paste the arduCode.ino
   3. install all neccessary libraries (check the "#include")
   4. check board and port
   5. upload code
*Note if this is using esp32 board, check board for esp8266*
-----Arduino Editor (Online IDE)------
    1. Go to https://create.arduino.cc
    2. create new sketch
    3. paste arduCode.ino
    4. select board and port esp32s
    5. upload code
*Note install arduino agent to run usb upload via arduino ide online compiler*
# Wiring Diagram
1. Check arduCOde.ino for LED wiring diagram
