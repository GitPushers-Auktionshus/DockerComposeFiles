#!/bin/sh
sleep 2 &&
vault kv put secret/connectionStrings ConnectionURI=mongodb://admin:1234@mongodb-dev:27017/?authSource=admin
vault kv put secret/enviromentVariables Secret=fwnhy8423HBgbirfffwefefwefwefwedqwsad6q3wfrhgedr32etsg7u Issuer=JADADADDAADA Salt='$2a$11$NnQ3D9KHpPr1UOjTo/2fXO'
vault kv get -mount=secret connectionStrings