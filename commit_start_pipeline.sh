#!/bin/bash

#execute jenkins job from cli
java -jar ~/jenkins_cli/jenkins-cli.jar -s http://192.168.174.133:8080 build pipeline_cicd_fastweb
