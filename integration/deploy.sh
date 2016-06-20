#!/usr/bin/env bash
# This script can be used to automatically build and deploy this project
# Add following lines to your ~/.bash_profile
 #export TOMCAT_PATH=path to tomcat without ending slash
# export HMS_SPM_PATH=path to project without ending slash

sh $CATALINA_HOME/bin/catalina.sh stop
mvn clean install -DskipTests -o

rm -r $CATALINA_HOME/webapps/spm-web*
rm -r $CATALINA_HOME/webapps/spm-messenger*
rm -r $CATALINA_HOME/webapps/se-sim*
cp web/target/se-sim.war $CATALINA_HOME/webapps

export JPDA_ADDRESS=5005
export JPDA_TRANSPORT=dt_socket
sh $CATALINA_HOME/bin/catalina.sh jpda run
