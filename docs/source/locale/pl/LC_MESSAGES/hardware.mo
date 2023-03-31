��            )   �      �  W   �  3   �  �    �     �   �  J  :  �  �  z   U	  $  �	  7   �
  e   -     �  �  �     W  ,  `  �   �  �    �    Y  �  h   V  �   �     q  #  x  �   �  A  R  �  �  �  ;  m   �  �  g  c   �  I   Z  �  �  �   �   �   \!  A  "  �  ^#  �   D%  0  �%  L   '  e   Z'     �'  �  �'     �)  6  �)  �   �*  "  k+    �-  A  �/  g   �0  �   U1     -2  U  =2  �   �3  >  @4  �  5  �  O7  �   9                                                                               
                    	                                       **At the moment, servos with a maximum deflection angle of 180 degrees are supported.** **INCORRECT SERVOS CONFIGURATION MAY DAMAGE THEM!** **Note:** Please note that whenever you change the camera model to camera with other angles of view (FOV), you need to update the configuration in the "config.ini" file. You must specify the correct viewing angle for the connected camera (FOV / Field Of View). This is required for correct mapping of the screen coords to the movements of the servos. Camera with given incorrect FOV (i.e. not matching true angle of view) can generate too slow or too fast and not good servo movement. **Note:** if you are using Arduino then you must also specify correct pulse range in **Arduino** code (available in **Client** directory): **Note:** on one device at a time, the camera can only be active in one application (using it by one application blocks the possibility of using it in another application). **Note:** the servo requires precise configuration of the operating parameters and proper setting of the pulses, as well as the maximum tilt angles that the servo can perform - all these parameters must be defined in the configuration files. A detailed description of the parameters can be found in the further part of the manual. **Note:** when transmitting commands responsible for the movement of the servo, the **Lock Center** option in the **Rendering > Lock Center** menu will always be enabled. The option is activated automatically when you enable sending commands to the server. To disable it, you must first disconnect from the servomotors. This behaviour does not apply to the video source - when playing a movie, you can disable locking the center of the screen at the center point. **Tip:** From release >=0.9.3 you can configure all those base options via **Servo > Configure servo...** settings window: **Tip:** The appropriate operating parameters of your servo can be found in the manufacturer's documentation. You can also try to set these parameters by trial and error method, sending commands to the servo manually and trying to find the appropriate values at which the servo responds best. 360 degree servos will be supported in future releases. Additional (default) operating parameters of the servos can be configured in the **config.ini** file: Camera (CSI, USB) Connecting the servos can be done both on the side of the server application (e.g. Arduino or Raspberry should be connected directly to the USB port of the machine on which the server application is running) and on the side of the client application (e.g. on a Raspberry or other computer remotely connected to the network ) - commands to the servomotors will then be sent remotely from the server towards the client via the network. Hardware If there is a need to start the servos automatically (when starting the application), enter the servo port in **servo.local** parameter for locally connected servo, or enter the IP address of the remote device with the client application in **servo.remote** parameter in case of remote servo control. If you are using Raspberry GPIO pins to control the servos then specify these options in **config.ini** placed in client's directory: In order for commands to servos to be transmitted at all, the **Enabled** in the **Servo menu** in the server application must be enabled. For a locally connected servo, select the serial port for communication with a local controller (e.g. Arduino) in the same menu, it can be done in the menu **Servo > Local > (port name)**. For a remotely connected device (e.g. using a Raspberry client) select the appropriate remote option in the menu **Servo > Remote > (IP address of the remote device)**. In the application, you can optionally activate movement only along a given axis (X or Y) using the appropriate option in the **Servo** menu. Thanks to this, you can enable movement along only one axis, e.g. along the X axis, depending on your needs. **Note:** if no local or remote servos are selected in the options in the menu, then no servo commands are passed on. An active servo also forces the **Lock Center** option in the view settings to be enabled, which locks the center point of the screen. In the case of connecting via Arduino, the code attached to the **Client / Arduino** directory must be uploaded to the Arduino board. The code should be uploaded to the Arduino, e.g. using the Arduino IDE. In the case of connection via Raspberry, the client application from the **Client / PC, Raspberry** directory must be uploaded to Rasberry. On the side of the application itself, video capture is done using **OpenCV** and **imutils** libraries. Other options, such as capture resolution, or the number of captured frames per second (fps) can also be set in the file, but note - these options may not work for every camera. Servos Servos can be physically connected in several ways: using an Arduino-type microcontroller or using a minicomputer with built-in **GPIO pins of the PWM type**, e.g. Raspberry. In the next releases, it is planned to add the possibility of handling any external system with a driver for servos. The **camera.idx** parameter can be used to specify the numerical ID of the camera in operating system if you need to select this camera automatically when starting the application. The **map_fov** option allows for more accurate motion mapping, taking into account the real angle of view of the camera and it should always be enabled (value = **1**) to get the best translation of motion into the servo. A description of all options and parameters can be found in the further part of the documentation. The camera can be connected both via the USB connector directly to the computer with the server application, and via the CSI connector to e.g. Raspberry (then the video from the camera will be transmitted remotely from the client via the network/WiFi to the server application). Local connection (directly to the server application, e.g. via USB) offers faster data transfer than the remote video transfer via the network. The project requires two servos to work: one for movement along the X (horizontal) axis, the other for movement along the Y (vertical) axis. The servos must be properly calibrated with the camera, i.e. the camera directed at the central base point should be physically attached to the platform in such a way that the servos are then in their default, initial position (e.g. 90/90 degrees for servos with the maximum operating range 180 degrees). Viewing angles (FOV) must be defined in the **config.ini** file and via **Servo > Configure servo...*** menu: Project-Id-Version: SERVO CAM
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2023-03-31 18:52+0200
Last-Translator: 
Language-Team: pl <LL@li.org>
Language: pl
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n==1 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
Generated-By: Babel 2.12.1
X-Generator: Poedit 3.0.1
 **Na chwilę obecną obsługiwane są serwomechanizmy o maksymalnym kącie wychylenia 180 stopni.** **NIEPOPRAWNE SKONFIGUROWANIE SERWOMECHANIZMÓW GROZI ICH USZKODZENIEM!** **Uwaga:** należy pamiętać, że po każdorazowej zmianie modelu kamery na kamerę z innymi kątami widzenia (FOV) należy zaktualizować konfigurację aplikacji w pliku "config.ini". Należy podać w nim poprawny kąt widzenia dla podłączonej kamery (FOV / Field Of View). Jest to wymagane dla poprawnego mapowania obrazu na ruchy serwomechanizmów. Kamera z podanym niepoprawnym FOV (tj. niepasującym do jej prawdziwego kąta widzenia) może generować zbyt wolny lub zbyt szybki ruch serwomechanizmu. **Uwaga:** jeśli używasz Arduino, musisz również zdefiniować właściwą dla swojego serwa zakres impulsów sterujących w kodzie dla **Arduino** (dostępnym w katalogu **Client**): **Uwaga:** na jednym urządzeniu w jednym czasie kamera może być aktywna tylko w jednej aplikacji (używanie jej przez jedną aplikację blokuje możliwość jej użycia w innej aplikacji). **Uwaga:** serwomechanizm wymaga dokładnej konfiguracji parametrów pracy i odpowiedniego ustawienia impulsów, a także maks. kątów wychylenia jakie wykonać może serwo – wszystkie te parametry należy zdefiniować w plikach konfiguracyjnych. Dokładny opis parametrów znajduje się w dalszej części instrukcji. **Uwaga:** podczas przekazywania komend odpowiedzialnych za ruch serwomechanizmu zawsze włączona będzie opcja **Zablokuj środek** znajdująca się w menu **Widok / obraz > Zablokuj środek**. Opcja aktywuje się automatycznie podczas włączania przekazywania komend do serwa. Aby ją wyłączyć należy uprzednio rozłączyć się z serwomotorami. Nie dotyczy to źródła **wideo** – odtwarzając plik filmowy można wyłączyć blokowanie środka ekranu w centralnym punkcie. Od wersji 0.9.3 możesz skonfigurować wszystkie te podstawowe opcje poprzez ustawienia w **Servo > Configure servo... (Serwo > Konfiguruj serwo...)**: **Tip:** Odpowiednie parametry pracy swojego serwomechanizmu znajdziesz w dokumentacji producenta. Możesz też spróbować ustawić te parametry metodą prób i błędów, wysyłając komendy do serwomechanizmu ręcznie i próbując ustalić odpowiednie wartości, przy których serwo reaguje najlepiej. Serwomechanizmy 360 stopni będą obsługiwane w kolejnych wersjach systemu. Dodatkowe (domyślne) parametry pracy serwomechanizmów skonfigurować można w pliku **config.ini**: Kamera (CSI, USB) Podłączenie serwomechanizmów może być wykonane zarówno po stronie aplikacji serwerowej (podłączyć należy wtedy np. Arduino lub Raspberry bezpośrednio pod port USB maszyny, na której uruchomiono aplikację serwerową), jak i po stronie aplikacji klienckiej (np. na zdalnie podłączonym do sieci Raspberry lub innym komputerze) - komendy do serwomotorów będą wysyłane wtedy zdalnie od serwera w kierunku klienta poprzez sieć. Hardware (sprzęt) Jeśli istnieje konieczność uruchamiania serwomechanizmów automatycznie - wraz ze startem aplikacji, należy podać tutaj od razu port (**servo.local)** dla sterowania serwa podłączonego lokalnie, lub adres IP zdalnego urządzenia z aplikacją kliencką w przypadku trybu pracy zdalnej (**servo.remote**). Jeśli używasz Raspberry GPIO do sterowania serwem, zdefiniuj te opcje w pliku konfiguracyjnym **config.ini** znajdującym się w katalogu klienta: Aby komendy do serwomechanizmów były w ogóle przekazywane musi być włączona opcja **Włączone** znajdująca się w menu **Serwo** w aplikacji serwerowej. Dla lokalnie podłączonego serwa należy w tym samym menu wybrać port szeregowy do komunikacji z lokalnym sterownikiem (np. Arduino), można to zrobić w menu **Serwo >Lokalne > (nazwa portu)**. Dla zdalnie podłączonego urządzenia (np. za pomocą klienta w postaci Raspberry) należy wybrać odpowiednią opcję zdalną w menu **Serwo > Zdalne > (adres IP zdalnego urządzenia)**. W aplikacji opcjonalnie można aktywować ruch tylko po danej osi serwomechanizmu (X lub Y) używając do tego odpowiedniej opcji w menu **Serwo**. Można dzięki temu włączyć ruch jedynie po jednej osi, np. po osi X, zależnie od potrzeb. **Uwaga: jeśli żadne lokalne, ani zdalne serwo nie jest wybrane w opcjach w menu to żadne komendy do serwomechanizmów nie są wtedy przekazywane. Aktywne serwo ponadto wymusza włączenie opcji "Zablokuj środek" znajdującej się w ustawieniach widoku i blokującą centralny punkt ekranu.**. W przypadku podłączenia za pomocą Arduino na płytkę Arduino wgrany musi być kod załączony w katalogu **Client / Arduino**. Kod należy wgrać na Arduino np. za pomocą Arduino IDE. W przypadku połączenia za pomocą Raspberry należy wgrać na Rasberry aplikację kliencką z katalogu **Client / PC, Raspberry**. Po stronie samej aplikacji przechwytywanie obrazu odbywa się za pomocą bibliotek OpenCV oraz imutils. W pliku można ustawić również inne opcje, takie jak rozdzielczość przechwytywania obrazu, czy ilość przechwytywanych klatek na sekundę (fps), ale uwaga – opcje te mogą nie zadziałać dla każdej kamery. Serwomechanizmy Serwomechanizmy mogą zostać fizycznie podłączone na kilka sposobów: za pomocą mikrokontrolera typu Arduino, lub za pomocą minikomputera posiadającego wbudowane wyprowadzenia **GPIO typu PWM**, np. Raspberry. W kolejnej wersji planowane jest dodanie możliwości obsługi dowolnego zewn. układu ze sterownikiem dla serwomechanizmów. Parametrem **camera.idx** podać można natomiast numeryczne ID kamery w systemie operacyjnym jeśli jest potrzeba wyboru tej kamery automatycznie podczas startu aplikacji. Opcja **map_fov** pozwala na dokładniejsze mapowanie ruchu, uwzględniając do tego prawdziwy kąt widzenia kamery i powinna być zawsze włączona (wartość = **1**), aby uzyskać jak najlepsze przełożenie ruchu na serwomechanizm. Opis wszystkich opcji i parametrów znajduje się w dalszej części dokumentacji. Kamera może zostać podłączona zarówno poprzez złącze USB bezpośrednio do
komputera z aplikacją serwerową, jak i poprzez złącze CSI do np. Raspberry (wtedy obraz z kamery może być przekazywany z klienta zdalnie poprzez sieć/WiFi do aplikacji serwerowej). Podłączenie lokalne - bezpośrednio do aplikacji serwerowej (np. poprzez USB) pozwala na szybszy transfer danych, niż tryb zdalnego przesyłania obrazu przez sieć przez aplikację kliencką. Całość do pracy wymaga dwóch serwomechanizmów: jeden dla ruchu po osi X (poziomej), drugi dla ruchu po osi Y (pionowej). Serwa muszą być odpowiednio skalibrowane z kamerą, tj. kamera skierowana w centralny punkt bazowy powinna być fizycznie przymocowana do platformy w taki sposób, aby serwomechanizmy znajdowały się wtedy w swojej domyślnej, inicjalnej pozycji (np. 90/90 stopni dla serwomechanizmów o maksymalnym zakresie pracy 180 stopni). Kąty widzenia (FOV) mogą zostać zdefiniowane w pliku **config.ini** oraz za pomocą menu **Servo > Configure servo... (Serwo > Konfiguruj serwo...)****: 