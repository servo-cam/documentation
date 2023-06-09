Additional information
=======================

Compiling from sources
-----------------------

PyInstaller is used for compilation.

In the project directory there are configuration files for Windows and Linux:

- windows.spec
- linux.spec


**Build for Windows (CPU version):**

.. code-block:: console

   venv\Scripts\activate
   pyinstaller windows.spec


**Build for Windows (GPU version):**

.. code-block:: console

   conda activate tf-gpu
   pyinstaller windows.spec


The Windows GPU version requires the ``zlibwapi.dll`` library, it is located in the ``lib`` directory. 
MVC libraries are also included with the windows build. 
NVidia CUDA libraries are required on the system (recommended installation with conda).


**Build for Linux:**

.. code-block:: console

   source venv/bin/activate
   pyinstaller linux.spec


Configuration - list of parameters
----------------------------------

**config.ini** file:

**Linux:** ``/home/user/.config/servocam_org/config.ini``

**Windows:** ``C:\Users\user\.config\servocam_org\config.ini``



**Syntax:** key - description, type [possible values] (default value)

# config.ini

**app.lang** - application language, string [pl|en] (en)

**app.model** - AI model, string (none)

# app.model = none

# app.model = movenet_single_pose_lightning_4

# app.model = movenet_single_pose_thunder_4

# app.model = movenet_multi_pose_lightning_1

# app.model = mobilenet

# app.model = opencv_movement_detect_single

# app.model = opencv_movement_detect_multi

**app.source** - default mode, string [cam|video|stream|remote] (cam)

**app.video_url** - default video file, string

**app.stream_url** - default URL with stream, string

**app.remote_host** - default remote host, string

**app.remote_ip** - default remote IP, string

**app.disabled** - on/off pause in the application, bool [1|0] (0)

**app.ai** - on/off AI in application, bool [1|0] (1)

**app.debug** - on/off debugger in the application, bool [1|0] (1)

**security.web.token** - security token for web application, string

**security.aes.video** - on/off video image encryption using AES during connection, bool [1|0] (1)

**security.aes.data** - on/off data encryption using AES while connections, bool [1|0] (1)

**security.aes.key** - 16 character-length secret encryption key, must be the same on the client and on the server, string

**camera.idx** - default camera index, integer (0)

**camera.fov.x** - FOV in X axis /horizontal/ in degrees, integer (100)

**camera.fov.y** - FOV in Y axis /vertical in degrees/, integer (68)

**camera.width** - width of the captured video in px, integer (1280)

**camera.height** - height of the captured video in px, integer (720)

**camera.fps** - number of frames of the captured video per second, integer (30)

**servo.enabled** - on/off. servo, bool [1|0] (1)

**servo.enabled.x** - on/off x-axis, bool [1|0] (1)

**servo.enabled.y** - on/off Y axis, bool [1|0] (1)

**servo.local** - default local port address, string

**servo.remote** - default IP address of the remote client, string

**servo.map_fov** - on/off mapping the FOV of the camera to the movement of the mechanism, bool [1|0] (1)

**servo.use_limit** = on/off mapping by limit instead of max angle, bool [1|0] (0)

**servo.angle.start.x** - initial deflection of the servo in the X axis, integer (90)

**servo.angle.start.y** - initial deflection of the servo in the Y axis, integer (90)

**servo.angle.min.x** - min. deflection of the servo in the X axis, integer (0) # servo parameter

**servo.angle.min.y** - min. deflection of the servo in the Y axis, integer (0) # servo parameter

**servo.angle.max.x** - max. deflection of the servo in the X axis, integer (180) # servo parameter

**servo.angle.max.y** - max. deflection of the servo in the Y axis, integer (180) # servo parameter

**servo.limit.min.x** - min. allowed movement of the servo in the X axis, integer(0) # physical, real possibility

**servo.limit.min.y** - min. allowed movement of the servo in the Y axis, integer(0) # physical, real possibility

**servo.limit.max.x** - max. allowed movement of the servo in the X axis, integer (180) # physical, real possibility

**servo.limit.max.y** - max. allowed movement of the servo in the Y axis, integer (180) # physical, real possibility

**servo.angle.step.x** = min. difference in angles for sending the w command X axis, integer (1)

**servo.angle.step.y** = min. difference in angles for sending the w command Y axis, integer (1)

**servo.angle.multiplier.x** - multiplier of steps in the X axis, integer (1)

**servo.angle.multiplier.y** - multiplier of steps in the Y axis, integer (1)

**server.port.data** - port for sending data on the client, integer (6666)

**server.port.conn** - port for initiating connection on the client, integer (6667)

**server.port.status** - port for receiving status from the client, integer (6668)

**serial.data.baud_rate** – transfer speed for serial connections, int (9600)

**serial.data.format** - format of data sent to the device by serial port, string [RAW|JSON] (RAW)

**clients.conn_wait** - max. waiting time in seconds for the next connection, integer (5)

**clients.hang_time** - max. time to consider a call on hold, in seconds, integer (5)

**clients.inactive_time** - time until the connection is considered inactive, in seconds, integer (5)

**clients.stream.jpeg** - enable/disable JPEG decompression, required if client compression is enabled, bool [1|0] (0)

**target.mode** - default auto mode, string [OFF|IDLE|FOLLOW|PATROL] (IDLE)

**target.point** - default aiming point [AUTO|HEAD|NECK|BODY|LEGS] (AUTO)

**target.locked** - on/off locating on object, bool [1|0] (0)

**target.single** - on/off placing on a single target, , bool [1|0] (0)

**target.delay** - delay in aiming auto, float (0.40)

**target.speed** - aiming speed multiplier, float (0.1)

**target.smooth** - multiplier for smoothing movement when aiming, float (1.6)

**target.threshold.x** - value slowing down in the X axis (0.15)

**target.threshold.y** - value slowing down in the Y axis (0.15)

**target.brake** - on/off servo stopping in the absence of a target, bool [1|0] (1)

**target.smooth.follow** - on/off tracking motion smoothing, bool [1|0] (0)

**target.smooth.camera** - on/off camera smoothing, bool [1|0] (1)

**target.mean.target** - on/off smoothing target coordinates, bool [1|0] (1)

**target.mean.now** - on/off smoothing tracking coordinates, bool [1|0] (1)

**target.mean.cam** - on/off smoothing camera coordinates, bool [1|0] (0)

**target.mean.target.step** - min. movement required during smoothing target coordinate, float (0.005)

**target.mean.now.step** - min. movement required during smoothing tracking coordinate, float (0.01)

**target.mean.cam.step** - min. movement required during smoothing camera coordinates, float (0.01)

**target.mean.target.depth** - number of records of previous moves during smoothing target coordinates, integer (2)

**target.mean.now.depth** - number of records of previous moves during tracking coordinate smoothing, integer (2)

**target.mean.cam.depth** - number of records of previous moves during smoothing camera coordinates, integer (2)

**target.action.name** - default action, string [A1|A2|A3|B4|B5|B6] (A1)

**target.action.mode** - default action mode, string [SINGLE|CONTINUOUS|SERIES|TOGGLE] (CONTINUOUS)

**target.action.enable** - on/off auto actions, bool [1|0] (0)

**target.action.length** - duration of the action, integer (10)

**target.action.switch** - length of interval between target change, integer (30)

**target.time.before_target** - time required before targeting, float (0.3)

**target.time.as_target** - time to be considered targeted, integer (3)

**target.time.as_lost** - time to be considered lost, integer (30)

**target.limit.on_target** - max. counter on target, integer (999)

**patrol.timeout** - waiting time for starting the patrol /ms/, integer (2000)

**patrol.step** - patrol movement step, float (0.005)

**patrol.interval** - time interval for patrol traffic, integer (600)

**patrol.direction** - default patrol direction, string [LEFT|RIGHT] (RIGHT)

**manual.speed** - default speed of manual control, integer (20)

**manual.action.mode** - default action mode for manual control, string [OFF|SINGLE|CONTINUOUS|SERIES|TOGGLE] (OFF)

**render.full_screen** - on/off fullscreen, bool [1|0] (0)

**render.fit** - on/off fit to screen, bool [1|0] (1)

**render.tracking** - on/off display trace, bool [1|0] (1)

**render.targeting** - on/off display aiming, bool [1|0] (1)

**render.bounds** - on/off display boxes, bool [1|0] (1)

**render.labels** - on/off display labels, bool [1|0] (1)

**render.text** - on/off display text, bool [1|0] (1)

**render.zoom** - zoom value, integer (0)

**render.minimized** - on/off minimized on start, bool [1|0] (0)

**render.maximized** - on/off maximized on start, bool [1|0] (0)

**render.console** - on/off display console, bool [1|0] (1)

**render.simulator** - on/off servo motion simulator, bool [1|0] (0)

**render.montage.cols** - number of columns in preview mode, integer (2)

**render.montage.rows** - number of rows in preview mode, integer (2)

**render.montage.width** - box width in px in preview mode, integer (400)

**render.overlay.status.font.size** - font size for text for overlay, integer (1)

**render.overlay.status.font.thickness** - font thickness for text for overlay, integer (1)

**video.loop** - on/off video loop, bool [1|0] (1)

**stream.loop** - on/off image loop for stream, bool [1|0] (1)

**area.target** - on/off area for tracking, bool [1|0] (0)

**area.target.world** - on/off mapping to the world of the area for trace, bool [1|0] (0)

**area.target.x** - X coordinate, normalized in the range between 0-1, float (0)

**area.target.y** - Y coordinate, normalized in the range between 0-1, float (0)

**area.target.w** - width, normalized in the range between 0-1, float (0)

**area.target.h** - height, normalized in the range between 0-1, float (0)

**area.patrol** - on/off patrol area, bool [1|0] (0/

**area.patrol.world** - on/off mapping to the world of the patrol area, bool [1|0] (0)

**area.patrol.x** - X coordinate, normalized in the range between 0-1, float (0)

**area.patrol.y** - Y coordinate, normalized in the range between 0-1, float (0)

**area.patrol.w** - width, normalized in the range between 0-1, float (0)

**area.patrol.h** - height, normalized in the range between 0-1, float (0)

**area.action** - on/off area for action, bool [1|0] (0)

**area.action.world** - on/off mapping to the world of the action area, bool [1|0] (0)

**area.action.x** - X coordinate, normalized in the range between 0-1, float (0)

**area.action.y** - Y coordinate, normalized in the range between 0-1, float (0)

**area.action.w** - width, normalized in the range between 0-1, float (0)

**area.action.h** - height, normalized in the range between 0-1, float (0)

**filter.detect.classes** - class names for the detection filter, string [class1,class2,class3,...]

**filter.detect.min_score** - min. detection score, float (0.2)

**filter.target.classes** - class names for the targeting filter, string [class1,class2,class3,...]

**filter.target.min_score** - min. score for pinpointing, float (0.2)

**filter.action.classes** - class names for the action filter, string [class1,class2,class3,...]

**filter.action.min_score** - min. action score, float (0.2)

**video_filter.input** - default video filters for input, string [filter1,filter2,filter3,...]

**video_filter.output** - default video filters for output, string [filter1,filter2,filter3,...]

The analogous configuration for the web application is in the file
**config.js** located in the **Web** directory.

Software - technical data
--------------------------

Libraries used
~~~~~~~~~~~~~~~

- Python (python3) - v3.10

- PySide6 (PySide6-Essentials) - v6.4.2

- Tensorflow (tensorflow) - v2.11.0

- TensorflowHub (tensorflow-hub) - v0.12.0

- OpenCV (opencv-python) - v4.7.0.72

- Numpy (numpy) - v1.24.2

- Imutils (imutils) - v0.5.4

- ImageZMQ (imagezmq) – v1.1.1

- Cryptodome (pycryptodomex) - v3.17

- PySerial (pyserial) - v3.5

- PyInstaller (pyinstaller) – v5.8.0

- Rpi.GPIO - v0.7.1

- SimpleJpeg (simplejpeg) – v1.6.5

- PiCamera – v1.13

AI models used
~~~~~~~~~~~~~~~

Movenet (human motion detection):

- SinglePose Lightning v4 - https://tfhub.dev/google/movenet/singlepose/lightning/4

- SinglePose Thunder v4 - https://tfhub.dev/google/movenet/singlepose/thunder/4

- MultiPose Lightning v1 - https://tfhub.dev/google/movenet/multipose/lightning/1

Mobilenet (object classification):

- SSD Mobilenet v2 - https://tfhub.dev/tensorflow/ssd_mobilenet_v2/2

Requirements Python 3.10 (for Python sources)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# requirements.txt

| absl-py==1.4.0
| altgraph==0.17.3
| astunparse==1.6.3
| cachetools==5.3.0
| certifi==2022.12.7
| charset-normalizer==3.1.0
| click==8.1.3
| Flask==2.2.3
| flatbuffers==23.3.3
| gast==0.4.0
| google-auth==2.16.2
| google-auth-oauthlib==0.4.6
| google-pasta==0.2.0
| grpcio==1.51.3
| h5py==3.8.0
| idna==3.4
| imagezmq==1.1.1
| imutils==0.5.4
| itsdangerous==2.1.2
| Jinja2==3.1.2
| keras==2.11.0
| libclang==15.0.6.1
| Markdown==3.4.1
| MarkupSafe==2.1.2
| numpy==1.24.2
| oauthlib==3.2.2
| opencv-python==4.7.0.72
| opt-einsum==3.3.0
| packaging==23.0
| protobuf==3.19.6
| pyasn1==0.4.8
| pyasn1-modules==0.2.8
| pycryptodomex==3.17
| pyinstaller==5.8.0
| pyinstaller-hooks-contrib==2023.0
| pyserial==3.5
| PySide6-Essentials==6.4.2
| pyzmq==25.0.0
| requests==2.28.2
| requests-oauthlib==1.3.1
| RPi.GPIO==0.7.1
| rsa==4.9
| shiboken6==6.4.2
| simplejpeg==1.6.5
| six==1.16.0
| tensorboard==2.11.2
| tensorboard-data-server==0.6.1
| tensorboard-plugin-wit==1.8.1
| tensorflow==2.11.0
| tensorflow-estimator==2.11.0
| tensorflow-hub==0.12.0
| tensorflow-io-gcs-filesystem==0.31.0
| termcolor==2.2.0
| typing_extensions==4.5.0
| urllib3==1.26.14
| Werkzeug==2.2.3
| wrapt==1.15.0

Configuration of GPIO pins - Raspberry
--------------------------------------

Pin addressing mode: **GPIO.BOARD**

| **PIN 32** – SERVO X (PWM, CHANNEL 0)
| **PIN 33** – SERVO Y (PWM, CHANNEL 1)
| **PIN 16** – ACTION A1 (DIGITAL, OUTPUT)
| **PIN 18** – ACTION A2 (DIGITAL, OUTPUT)
| **PIN 22** – ACTION A3 (DIGITAL, OUTPUT)
| **PIN 24** - ACTION B4 (DIGITAL, OUTPUT)
| **PIN 26** - ACTION B5 (DIGITAL, OUTPUT)
| **PIN 36** - ACTION B6 (DIGITAL, OUTPUT)

The configuration is in the **config.ini** file in the root directory
of client application:

.. code-block:: ini

   client.device.raspberry.pin.servo_x = 32
   client.device.raspberry.pin.servo_y = 33
   client.device.raspberry.pin.action_A1 = 16
   client.device.raspberry.pin.action_A2 = 18
   client.device.raspberry.pin.action_A3 = 22
   client.device.raspberry.pin.action_B4 = 24
   client.device.raspberry.pin.action_B5 = 26
   client.device.raspberry.pin.action_B6 = 36

Configuration of GPIO pins - Arduino
------------------------------------

| **PIN 10** – SERVO X (PWM)
| **PIN 11** – Y SERVO (PWM)
| **PIN 2** - ACTION A1 (DIGITAL, OUTPUT)
| **PIN 4** – ACTION A2 (DIGITAL, OUTPUT)
| **PIN 7** – ACTION A3 (DIGITAL, OUTPUT)
| **PIN 8** - ACTION B4 (DIGITAL, OUTPUT)
| **PIN 12** - ACTION B5 (DIGITAL, OUTPUT)
| **PIN 13** - ACTION B6 (DIGITAL, OUTPUT)

The configuration is in a single code file for the application
Arduino client:

.. code-block:: cpp

   #define PIN_SERVO_X 10 // servo X (horizontal) PWM pin
   #define PIN_SERVO_Y 11 // servo Y (vertical) PWM pin
   #define PIN_ACTION_1 2 // action #1 (A1) DIGITAL pin
   #define PIN_ACTION_2 4 // action #2 (A2) DIGITAL pin
   #define PIN_ACTION_3 7 // action #3 (A3) DIGITAL pin
   #define PIN_ACTION_4 8 // action #4 (B4) DIGITAL pin
   #define PIN_ACTION_5 12 // action #5 (B5) DIGITAL pin
   #define PIN_ACTION_6 13 // action #6 (B6) DIGITAL pin
   


Format of commands sent to the serial port
------------------------------------------

In the case of a serial connection, the syntax sent to the command port
looks like this:

   ``X,Y,C,1,2,3,4,5,6``

where:

   **X** – X servo movement value (angle)

   **Y** – Y servo movement value (angle)

   **C** - the number of detected objects by AI (if the mode
   auto/AI, with manual it always equals 0)

   **1** - state of A1 (0 or 1)

   **2** - state of A2 (0 or 1)

   **3** - state of A3 (0 or 1)

   **4** – state of B4 (0 or 1)

   **5** - state of B5 (0 or 1)

   **6** - state of B6 (0 or 1)

An example command sent to the serial port:

   ``30,120,1,0,1,0,0,0,0``

meaning in turn:

- servo movement X = 30 degrees
- servo movement Y = 120 degrees
- 1 detected object
- active action A2 (state = 1)
- rest of actions (A1, A3, B4, B5, B6) are disabled (state = 0).

The end of command character is a newline character: **\\n**

Command ``0`` (zero) sent to the serial port
(Arduino) sends request for status response of the device/sensors.

**The above can be used to program your own controller
using a serial / UART / USB port to connect.**

**Tip:** The command format above can be used to manually send a command to the servo. To do this, just connect the servos to, for example, Arduino, and then, using the Arduino IDE, send the appropriate command to the Arduino serial port (using Arduino Serial Port Monitor and the USB connector).


Troubleshooting
===============

**Unable to connect from another device**

Only one server application can be connected to the remote client at a time - to enable connection from a different IP, you must first disconnect from the previous application. Connecting multiple apps at once will be addressed in future releases.

**Lost connection with the client**

It may happen that for various reasons the connection is broken or the client application stops responding - if this happens, it should be restarted on the client machine, or it is best to use software that supervises running applications, such as Supervisor.

**No smooth movement of servos connected remotely**

Depending on the speed of your connection (if it is a WIFI connection), there may be delays in sending commands and video stream. To adjust the bandwidth to your connection, you can try to reduce the resolution of the transmitted video on the client side, enable JPEG compression, or try to disable other applications that are currently using the network and generating a large load.

**Delays (lags) when connecting to the client**

Remote connection will always generate delays, they will vary depending on the infrastructure you have. The software architecture is prepared in such a way that these delays are as small as possible, however, some physical aspects cannot be overcome and a delay of several dozen milliseconds will always occur. Additional delay may be generated by the client's computer, depending on the computing power it has (e.g. Raspberry 3 will react slower than Raspberry 4). Only a local connection allows you to work without visible transfer delays.

**GPU detection issues**

The software can run on both GPU and CPU. In the absence of a suitable GPU, all calculations will be performed on the CPU. If the graphics card with GPU is not detected by the software, make sure that it is compatible with Tensor Flow and that the appropriate CUDA libraries are installed in the operating system (details of installing CUDA libraries can be found on the Nvidia website or in the tutorials available on web).

**The servo does not respond well to control commands**

It may happen that the motion to the servo is transmitted incorrectly despite the correct commands being sent. The cause may be an incorrect configuration of the servo control pulses. You should then properly configure these options by setting the parameters appropriate for your servo model. These parameters should be configured in the file with the code for Arduino (if the control is done using Arduino), or in the client's ``config.ini`` file (if the control is done using the Raspberry GPIO).

**Unable to connect via serial port**

It may happen that the serial (USB) port you are trying to use to establish a connection with e.g. Arduino cannot be opened. Make sure that no other application is already using this port. If this is the case, release the port in the other application and try to connect again. A port already in use by one application cannot be used by another application.


Change log
==========

Server app
----------

0.9.3 (2023.03.30)
~~~~~~~~~~~~~~~~~~

- added "live" servo configurator


0.9.2 (2023.03.27)
~~~~~~~~~~~~~~~~~~

- fixed wrong delta to angle Y axis calculation
- fixed clients list parsing on config save
- added GPU support to Windows version
- added webstream connections
- added overlay labels
- added continous and toggle actions control via keyboard
- added window UI sliders
- added logo, website url and updater

0.9.1 (2023.03.21)
~~~~~~~~~~~~~~~~~~

- fixed connection core between sockets
- fixed high CPU usage after remote disconnect
- fixed serial port disconnect handling
- added ping and socket responses for device commands
- added performance debug info
- added options tab
- added config save option


0.9.0 (2023.03.14)
~~~~~~~~~~~~~~~~~~

- initial beta version


Client app
----------

0.9.2 (2023.03.27)
~~~~~~~~~~~~~~~~~~

- small fixes

0.9.1 (2023.03.21)
~~~~~~~~~~~~~~~~~~

- fix: socket disconnecting
- fix: socket restarting
- added ping timestamps and socket responses for device commands
- added socket config options
- added serial port auto-reconnecting after disconnect
- added logging to log files
- added loop socket


0.9.0 (2023.03.15)
~~~~~~~~~~~~~~~~~~

- initial version



Credits / license
=================

(c) 2023 servocam.org

https://servocam.org

https://github.com/servo-cam

info@servocam.org

___________

Software released under the MIT license:

MIT License

Copyright (c) 2023 servo-cam

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.