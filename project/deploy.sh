#!/bin/bash


server=$1
username=$2
passd=$3
catalogue=$4
organisation=$5
realm=$6

# Login:
echo "/////////////////Login sur APIC////////////////////////"
./apic login --server $server --username $username --password $passd --realm provider/$realm


#publish products
echo "/////////////////Creation des PRODUITS en local depuis APIC////////////////////////"
./apic products:publish yaml/hello-world-product_1.0.0.yaml --server $server --catalog $catalogue --org $organisation
#apic draft-apis:create --org $organisation --server $server opra-devservice_1.0.0.yaml


