# Extrair_Config_Firewall_Fortigate

1 - Clonando git

~# git clone https://github.com/Jonathan-Nascimento/Extrair_Config_Firewall_Fortigate.git

2 - Entre no diretorio clonado

~# cd Extrair_Config_Firewall_Fortigate

 3 - Realizar o backup do Firewall do FortiGate e adicione no diretorio "Extrair_Config_Firewall_Fortigate"

 4 - Renomear o backup para "Backup-Firewall.conf"

 ~# mv Fortigate-ID_20241025_1016.conf Backup-Firewall.conf

 5 - Acesso o diretorio dos script .sh

 ~# cd Script_sh

6 - Execute o script de extração
 
 ~# bash Exe-py.sh
