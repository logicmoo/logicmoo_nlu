#!/bin/sh

# starts GoDiS deLux startit agent

OAAJP=${OAA_HOME}/lib/jar
CP=${OAAJP}/antlr-oaa.jar:${OAAJP}/concurrent-1.3.1.jar:${OAAJP}/log4j-1.2.7.jar:${OAAJP}/oaa2.jar:${OAA_HOME}/runtime/startit/jar/oaa2startit.jar:${OAA_HOME}/runtime/monitor/jar/oaa2monitor.jar

java -cp ${CP} -DTRINDIKIT=../trindikit4 -DGODIS=../godis -DGFAGENT=../gfc2java com.sri.oaa2.agt.startit.Startit -delay 250 -props player_unimodal.unix.props player_unimodal.config

