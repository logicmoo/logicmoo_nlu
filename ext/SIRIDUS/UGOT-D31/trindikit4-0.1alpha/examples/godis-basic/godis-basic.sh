#!/bin/sh

CLASSPATH=${OAA_HOME}/lib/jar/antlr-oaa.jar:${OAA_HOME}/lib/jar/concurrent-1.3.1.jar:${OAA_HOME}/lib/jar/log4j-1.2.7.jar:${OAA_HOME}/lib/jar/oaa2.jar:${OAA_HOME}/runtime/startit/jar/oaa2startit.jar:${OAA_HOME}/runtime/monitor/jar/oaa2monitor.jar  

echo ${CLASSPATH}

java -cp ${CLASSPATH} com.sri.oaa2.agt.startit.Startit -delay 250 -props godis-basic.unix.props godis-basic.config