Additional informations
=======================

Compilation from sources
------------------------

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


The Windows GPU version requires the ``zlibwapi.dll`` library, it is located in the ``lib`` directory. MVC libraries are also included with the windows build. CUDA libraries are required on the system (recommended installation with conda).


**Build for Linux:**

.. code-block:: console

   source venv/bin/activate
   pyinstaller linux.spec


Configuration - list of parameters
----------------------------------

**config.ini** file:

**Linux:** ``/home/user/.config/tracker2/config.ini``

**Windows:** ``C:\\Users\\user\\.config\\tracker2\\config.ini``



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

**app.source** - default mode, string [local|video|stream|remote]
(video)

**app.video_url** - default video file, string (./mp4/whatislove.mp4)

**app.stream_url** - default URL with stream, string

**app.remote_host** - default remote host, string
(https://assets.afcdn.com/video49/20210722/v_645516.m3u8)

**app.remote_ip** - default remote IP, string

**app.disabled** - on/off pause in the application, bool [1|0] (0)

**app.ai** - on/off AI in application, bool [1|0] (1)

**app.debug** - on/off debugger in the application, bool [1|0] (1)

**security.web.token** - security token for web application, string

**security.aes.video** - on/off video image encryption using AES
during connection, bool [1|0] (1)

**security.aes.data** - on/off data encryption using AES while
connections, bool [1|0] (1)

**security.aes.key** - 16 character-length secret encryption key, must be the same
on the client and on the server, string

**camera.idx** - default camera index, integer (0)

**camera.fov.x** - FOV in X axis /horizontal/ in degrees, integer (100)

**camera.fov.y** - FOV in Y axis /vertical in degrees/, integer (68)

**camera.width** - width of the captured video in px, integer
(1280)

**camera.height** - height of the captured video in px, integer (720)

**camera.fps** - number of frames of the captured video per second,
integer (30)

**servo.enabled** - on/off. servo, bool [1|0] (1)

**servo.enabled.x** - on/off x-axis, bool [1|0] (1)

**servo.enabled.y** - on/off Y axis, bool [1|0] (1)

**servo.local** - default local port address, string

**servo.remote** - default IP address of the remote client, string

**servo.map_fov** - on/off mapping the FOV of the camera to the movement of the mechanism,
bool [1|0] (1)

**servo.use_limit** = on/off mapping by limit instead of max angle,
bool [1|0] (0)

**servo.angle.start.x** - initial deflection of the servo in the X axis,
integer (90)

**servo.angle.start.y** - initial deflection of the servo in the Y axis,
integer (90)

**servo.angle.min.x** - min. deflection of the servo in the X axis, integer
(0) # servo parameter

**servo.angle.min.y** - min. deflection of the servo in the Y axis, integer
(0) # servo parameter

**servo.angle.max.x** - max. deflection of the servo in the X axis, integer
(180) # servo parameter

**servo.angle.max.y** - max. deflection of the servo in the Y axis, integer
(180) # servo parameter

**servo.limit.min.x** - min. allowed movement of the servo in the X axis,
integer(0) # physical, real possibility

**servo.limit.min.y** - min. allowed movement of the servo in the Y axis,
integer(0) # physical, real possibility

**servo.limit.max.x** - max. allowed movement of the servo in the X axis,
integer (180) # physical, real possibility

**servo.limit.max.y** - max. allowed movement of the servo in the Y axis,
integer (180) # physical, real possibility

**servo.angle.step.x** = min. difference in angles for sending the w command
X axis, integer (1)

**servo.angle.step.y** = min. difference in angles for sending the w command
Y axis, integer (1)

**servo.angle.multiplier.x** - multiplier of steps in the X axis, integer (1)

**servo.angle.multiplier.y** - multiplier of steps in the Y axis, integer (1)

**server.port.data** - port for sending data on the client, integer
(6666)

**server.port.conn** - port for initiating connection on the client,
integer (6667)

**server.port.status** - port for receiving status from the client, integer
(6668)

**serial.data.baud_rate** – transfer speed for serial connections,
int (9600)

**serial.data.format** - format of data sent to the device by
serial port, string [RAW|JSON] (RAW)

**clients.conn_wait** - max. waiting time in seconds for the next
connection, integer (5)

**clients.hang_time** - max. time to consider a call on hold, w
seconds, integer (5)

**clients.inactive_time** - time until the connection is considered inactive, w
seconds, integer (5)

**clients.stream.jpeg** - enable/disable JPEG decompression, required if
client compression is enabled, bool [1|0] (0)

**target.mode** - default auto mode, string [OFF|IDLE|FOLLOW|PATROL]
(IDLE)

**target.point** - default aiming point [AUTO|HEAD|NECK|BODY|LEGS]
(CAR)

**target.locked** - on/off locating on object, bool [1|0] (0)

**target.single** - on/off placing on a single target, , bool [1|0]
(0)

**target.delay** - delay in aiming auto, float (0.40)

**target.speed** - aiming speed multiplier, float (0.1)

**target.smooth** - multiplier for smoothing movement when aiming, float
(1.6)

**target.threshold.x** - value slowing down in the X axis (0.15)

**target.threshold.y** - value slowing down in the Y axis (0.15)

**target.brake** - on/off traffic blanking in the absence of a target, bool
[1|0] (1)

**target.smooth.follow** - on/off tracking motion smoothing, bool
[1|0] (0)

**target.smooth.camera** - camera smoothing on/off, bool [1|0]
(1)

**target.mean.target** - on/off smoothing target coordinates, bool [1|0]
(1)

**target.mean.now** - on/off smoothing tracking coordinates, bool
[1|0] (1)

**target.mean.cam** - on/off smoothing camera coordinates, bool [1|0]
(0)

**target.mean.target.step** - min. movement required during smoothing
target coordinate, float (0.005)

**target.mean.now.step** - min. movement required during smoothing
tracking coordinate, float (0.01)

**target.mean.cam.step** - min. movement required during smoothing
camera coordinates, float (0.01)

**target.mean.target.depth** - number of records of previous moves during
smoothing target coordinates, integer (2)

**target.mean.now.depth** - number of records of previous moves during
tracking coordinate smoothing, integer (2)

**target.mean.cam.depth** - number of records of previous moves during
smoothing camera coordinates, integer (2)

**target.action.name** - default action, string [A1|A2|A3|B4|B5|B6] (A1)

**target.action.mode** - default action mode, string
[SINGLE|CONTINUOUS|SERIES|TOGGLE] (CONTINUOUS)

**target.action.enable** - on/off auto actions, bool [1|0] (0)

**target.action.length** - duration of the action, integer (10)

**target.action.switch** - length of interval between target change, integer
(thirty)

**target.time.before_target** - time required before targeting, float
(0.3)

**target.time.as_target** - time to be considered targeted, integer (3)

**target.time.as_lost** - time to be considered lost, integer (30)

**target.limit.on_target** - max. counter on target, integer (999)

**patrol.timeout** - waiting time for starting the patrol /ms/,
integer (2000)

**patrol.step** - patrol movement step, float (0.005)

**patrol.interval** - time interval for patrol traffic, integer (600)

**patrol.direction** - default patrol direction, string
[LEFT|RIGHT] (RIGHT)

**manual.speed** - default speed of manual control, integer (20)

**manual.action.mode** - default action mode for manual control,
string [OFF|SINGLE|CONTINUOUS|SERIES|TOGGLE] (OFF)

**render.full_screen** - on/off fullscreen, bool [1|0] (0)

**render.fit** - on/off fit to screen, bool [1|0] (1)

**render.tracking** - on/off display trace, bool [1|0] (1)

**render.targeting** - on/off display aiming, bool [1|0] (1)

**render.bounds** - on/off display boxes, bool [1|0] (1)

**render.labels** - on/off display labels, bool [1|0] (1)

**render.text** - on/off display text, bool [1|0] (1)

**render.zoom** - zoom value, integer (0)

**render.minimized** - on/off minimized on start, bool [1|0]
(0)

**render.maximized** - on/off maximized on start, bool [1|0]
(0)

**render.console** - on/off display console, bool [1|0] (1)

**render.simulator** - on/off servo motion simulator, bool [1|0] (0)

**render.montage.cols** - number of columns in preview mode, integer (2)

**render.montage.rows** - number of rows in preview mode, integer (2)

**render.montage.width** - box width in px in preview mode,
integer (400)

**render.overlay.status.font.size** - font size for text for
overlay, integer (1)

**render.overlay.status.font.thickness** - font thickness for text
for overlay, integer (1)

**video.loop** - on/off video loop, bool [1|0] (1)

**stream.loop** - on/off image loop for stream, bool [1|0] (1)

**area.target** - on/off area for tracking, bool [1|0] (0)

**area.target.world** - on/off mapping to the world of the area for
trace, bool [1|0] (0)

**area.target.x** - X coordinate, normalized in the range between 0-1, float
(0)

**area.target.y** - Y coordinate, normalized in the range between 0-1, float
(0)

**area.target.w** - width, normalized in the range between 0-1, float (0)

**area.target.h** - height, normalized in the range between 0-1, float (0)

**area.patrol** - on/off patrol area, bool [1|0] (0/

**area.patrol.world** - on/off mapping to the world of the patrol area,
bool [1|0] (0)

**area.patrol.x** - X coordinate, normalized in the range between 0-1, float
(0)

**area.patrol.y** - Y coordinate, normalized in the range between 0-1, float
(0)

**area.patrol.w** - width, normalized in the range between 0-1, float (0)

**area.patrol.h** - height, normalized in the range between 0-1, float (0)

**area.action** - on/off area for action, bool [1|0] (0)

**area.action.world** - on/off mapping to the world of the action area,
bool [1|0] (0)

**area.action.x** - X coordinate, normalized in the range between 0-1, float
(0)

**area.action.y** - Y coordinate, normalized in the range between 0-1, float
(0)

**area.action.w** - width, normalized in the range between 0-1, float (0)

**area.action.h** - height, normalized in the range between 0-1, float (0)

**filter.detect.classes** - class names for the detection filter, string
[class1,class2,class3,...]

**filter.detect.min_score** - min. detection score, float (0.2)

**filter.target.classes** - class names for the targeting filter, string
[class1,class2,class3,...]

**filter.target.min_score** - min. score for pinpointing, float
(0.2)

**filter.action.classes** - class names for the action filter, string
[class1,class2,class3,...]

**filter.action.min_score** - min. action score, float (0.2)

**video_filter.input** - default video filters for input, string
[filter1,filter2,filter3,...]

**video_filter.output** - default video filters for output, string
[filter1,filter2,filter3,...]

The analogous configuration for the web application is in the file
**config.js** located in the **Web** directory.

Software - technical data
--------------------------

Libraries used
~~~~~~~~~~~~~~~

- Python (python3) - v3.10

- PySide6 (PySide6) - v6.4.2

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

absl-py==1.4.0

altgraph==0.17.3

astunparse==1.6.3

cachetools==5.3.0

certifi==2022.12.7

charset-normalizer==3.1.0

click==8.1.3

Flask==2.2.3

flatbuffers==23.3.3

gast==0.4.0

google-auth==2.16.2

google-auth-oauthlib==0.4.6

google-pasta==0.2.0

grpcio==1.51.3

h5py==3.8.0

idna==3.4

imagezmq==1.1.1

imutils==0.5.4

itsdangerous==2.1.2

Jinja2==3.1.2

keras==2.11.0

libclang==15.0.6.1

Markdown==3.4.1

MarkupSafe==2.1.2

numpy==1.24.2

oauthlib==3.2.2

opencv-python==4.7.0.72

opt-einsum==3.3.0

packaging==23.0

picamera==1.13

protobuf==3.19.6

pyasn1==0.4.8

pyasn1-modules==0.2.8

pycryptodomex==3.17

pyinstaller==5.8.0

pyinstaller-hooks-contrib==2023.0

pyserial==3.5

PySide6==6.4.2

PySide6-Addons==6.4.2

PySide6-Essentials==6.4.2

pyzmq==25.0.0

requests==2.28.2

requests-oauthlib==1.3.1

RPi.GPIO==0.7.1

rsa==4.9

shiboken6==6.4.2

simplejpeg==1.6.5

six==1.16.0

tensorboard==2.11.2

tensorboard-data-server==0.6.1

tensorboard-plugin-wit==1.8.1

tensorflow==2.11.0

tensorflow-estimator==2.11.0

tensorflow-hub==0.12.0

tensorflow-io-gcs-filesystem==0.31.0

termcolor==2.2.0

typing_extensions==4.5.0

urllib3==1.26.14

Werkzeug==2.2.3

wrapt==1.15.0

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

where in turn:

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

Summary
=======

(c) 2023 servocam.org

https://servocam.org

https://github.com/servo-cam

info@servocam.org