#! /bin/bash

brew install python
pip3 install virtualenv
brew install git
brew install chromedriver
pip3 install -r requirements.txt

cd Test/TestCases/
robot --variable BROWSER:chrome . HotelReservation.robot
