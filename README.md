# Extrair_Config_Firewall_Fortigate

Clonando git

1 - git clone https://github.com/Jonathan-Nascimento/Extrair_Config_Firewall_Fortigate.git

- Entre no diretorio clonado

cd Extrair_Config_Firewall_Fortigate


 - Realizar o backup do Firewall do FortiGate e adicione no diretorio "Extrair_Config_Firewall_Fortigate"


 - Renomear o backup para "Backup-Firewall.conf"

 ~# mv Fortigate-ID_20241025_1016.conf Backup-Firewall.conf

 - Acesso o diretorio dos script .sh

 cd Script_sh

 - Execute o script de extração
 
 bash Exe-py.sh