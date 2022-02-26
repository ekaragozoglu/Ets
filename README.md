Installation
============
To get started, you must be run project.sh file.

Before run this command, you have to add Library    pabot.PabotLib in your robot file.
$ pabot --processes n --variable BROWSER:headlesschrome HotelReservation.robot

cd /path/
Before run this command, you have to add Library    pabot.PabotLib in your robot file.
$ pabot --variable BROWSER:headlesschrome -t "scenario name" HotelReservation.robot

2-) In test cases, the browser should be given as a parameter. If headless is on for Firefox, a command like the following should be executed.(n = The number n indicates how many parallel browsers will be used.)

Before run this command, you have to add Library    pabot.PabotLib in your robot file.
$ pabot --processes n --variable BROWSER:headlessfirefox TestCase.robot
