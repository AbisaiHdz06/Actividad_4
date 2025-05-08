#!/bin/bash

# Colores para salida
GREEN='\033[0;32m'
NC='\033[0m' # Sin color

echo -e "${GREEN}🔧 Actualizando sistema...${NC}"
sudo yum update -y

echo -e "${GREEN}📦 Instalando paquetes necesarios...${NC}"
sudo yum install -y yum-utils

echo -e "${GREEN}🔑 Agregando repositorio oficial de HashiCorp...${NC}"
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

echo -e "${GREEN}⬇️ Instalando Terraform...${NC}"
sudo yum -y install terraform

echo -e "${GREEN}✅ Verificando instalación de Terraform...${NC}"
terraform -version

echo -e "${GREEN}🚀 Terraform instalado correctamente.${NC}"
