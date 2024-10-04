#!/bin/bash

# Editar o arquivo sshd_config para permitir login root
sed -i 's/#PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config

# Reiniciar o serviço SSH para aplicar mudanças
systemctl restart sshd

# Remover diretório LCD35-show existente e clonar o novo
rm -rf LCD35-show && git clone https://github.com/waveshare/LCD-show.git

# Entrar na pasta e executar permissões e script
cd LCD-show/
chmod +x LCD35-show
./LCD35-show lite -y


