#!/usr/bin/env bash
# This script can be used to automatically build and deploy this project
# Add following lines to your ~/.bash_profile
 #export TOMCAT_PATH=path to tomcat without ending slash
# export HMS_SPM_PATH=path to project without ending slash

sh $TOMCAT_PATH/bin/catalina.sh stop
mvn clean install -DskipTests -o

rm -r $TOMCAT_PATH/webapps/spm-web*
rm -r $TOMCAT_PATH/webapps/spm-messenger*
rm -r $TOMCAT_PATH/webapps/se-sim*
cp web/target/se-sim.war $TOMCAT_PATH/webapps

export JPDA_ADDRESS=5005
export JPDA_TRANSPORT=dt_socket
sh $TOMCAT_PATH/bin/catalina.sh jpda run
