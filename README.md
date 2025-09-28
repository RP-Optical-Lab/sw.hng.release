# SW HNG Project 

# What's new in the latest version

## Version 0.0.6
### New:
1. --
### Bugs fixed:
1. Fixed an issue where user operational parameters were sometimes lost after a sudden power cut.
2. Corrected the display of negative DAY Camera temperatures.
3. Fixed a bug where snapshots were not updating correctly.
### Notes:
1. Setting the IP address requires GUI version 1.0.4 or higher.

## Version 0.0.5
### New:
1. Added STATUS cmd to indicating the completion of image transmission in MULTICAST mode.
2. Added Runtime errors for MULTICAST mode.
### Bugs fixed:
1. Improved restart sequence.
### Notes:
1. --

## Version 0.0.4
### New:
1. Replace JPEG compression with JPEG2000.
2. Split the image into 1350 bytes packets.
3. Transmit packets at 120 ms intervals, maintaining a total data rate of 86,400 bits (10800 bytes) per second.
3. Packets are sequentially numbered to allow proper reassembly after reception and decompression.
### Bugs fixed:
1. --
### Notes:
1. Required GUI version 1.0.2 and above

## Version 0.0.3
### New:
1. Added IR TEC current temperature and TEC status flags to BIT
2. Added script to reduce power consumption
3. The system shutdown on overheating has been changed from 90 to 118 degrees
### Bugs fixed:
1. Fixed bug enabling SDI TX while RTSP is running
### Notes:
1. Required GUI version 1.0.1 and above

## Version 0.0.2
### New:
1. Added Day camera temperature to BIT
2. Added Pass-through to Day/IR cameras
3. Added IR presets
4. Added IR lens temperature and TEC target to BIT
5. Added RTSP for both cameras
### Bugs fixed:
1. Fixed issue where additional IP was not set on startup
### Notes:
1. Required GUI version 1.0.1 and above

## Version 0.0.1
### New:
1. All new ... ⚡
### Bugs fixed:
1. New release without bugs and problems 🏆
### Notes:
1. The release works as expected