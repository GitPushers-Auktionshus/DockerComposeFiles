#!/bin/bash

export VAULT_ADDR='https://vault:8201'
export VAULT_TOKEN='00000000-0000-0000-0000-000000000000'

vault kv put secret/hemmeligheder MinKode=abcd1234
vault kv put secret/connectionStrings ConnectionURI=mongodb://admin:1234@mongodb-dev:27017/?authSource=admin
vault kv put secret/environmentVariables Secret=fwnhy8423HBgbirfffwefefwefwefwedqwsad6q3wfrhgedr32etsg7u Issuer=JADADADDAADA Salt='$2a$11$NnQ3D9KHpPr1UOjTo/2fXO'
                               



