#!/bin/bash

Jenkinurl=http://172.20.1.119:8080/
JenkinsUser=admin
JarfilePath=/opt/jenkins-cli.jar
JenkinsPass=1121f7c6c5406da4f2eda955ab6f776367

read -p "Please give the name of jenkins project you want to build: " jobname


java -jar $JarfilePath -s $Jenkinurl -auth $JenkinsUser:$JenkinsPass  build "$jobname"


echo "Your Jenkins Job is Successfully Triggered."

