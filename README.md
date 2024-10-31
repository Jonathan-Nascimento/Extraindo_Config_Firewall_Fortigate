# Scripts para Extração de Configurações do FortiGate

Esses scripts Python foram desenvolvidos para extrair informações específicas das configurações de um firewall FortiGate e gerar relatórios personalizados. Cada script se concentra em uma área particular da configuração, como endereços IP, políticas de firewall, agendamentos e serviços.

### Pré-requisitos 

    Git - Instalado
    Ambiente - Linux/macOS
    Conhecimento - Básico de linha de comando
    Python 3.x - Instalado

### Instalação

* Clone o repositório:

``` bash    
$ git clone https://github.com/Jonathan-Nascimento/Extrair_Config_Firewall_Fortigate.git
``` 

    
* Navegue até o diretório:

``` bash
$ cd Extrair_Config_Firewall_Fortigate
``` 

* Realize o backup do FortiGate: Utilize a interface web do FortiGate para gerar um arquivo de configuração completo.
* Copie o backup para o diretório: Arraste e solte o arquivo de configuração para o diretório Extrair_Config_Firewall_Fortigate.
* Renomeie o arquivo: Renomeie o arquivo para Backup-Firewall.conf para facilitar a organização.

### Execute o script:
    
``` bash
$ cd Script_sh
$ bash Exe-py.sh
``` 
  
 O script irá analisar o arquivo de configuração e gerar relatórios detalhados sobre as regras de firewall, interfaces, VPNs e outras configurações importantes.

### Saída

``` bash
Executando ../Script_py/extrair_config_firewall_address6.py...
../Script_py/extrair_config_firewall_address6.py executado com sucesso!
Executando ../Script_py/extrair_config_firewall_address.py...
../Script_py/extrair_config_firewall_address.py executado com sucesso!
Executando ../Script_py/extrair_config_firewall_addrgrp.py...
../Script_py/extrair_config_firewall_addrgrp.py executado com sucesso!
Executando ../Script_py/extrair_config_firewall_DoS-policy.py...
../Script_py/extrair_config_firewall_DoS-policy.py executado com sucesso!
Executando ../Script_py/extrair_config_firewall_ippool.py...
../Script_py/extrair_config_firewall_ippool.py executado com sucesso!
Executando ../Script_py/extrair_config_firewall_ldb-monitor.py...
../Script_py/extrair_config_firewall_ldb-monitor.py executado com sucesso!
Executando ../Script_py/extrair_config_firewall_multicast-address.py...
../Script_py/extrair_config_firewall_multicast-address.py executado com sucesso!
Executando ../Script_py/extrair_config_firewall_policy.py...
../Script_py/extrair_config_firewall_policy.py executado com sucesso!
Executando ../Script_py/extrair_config_firewall_schedule_onetime.py...
../Script_py/extrair_config_firewall_schedule_onetime.py executado com sucesso!
Executando ../Script_py/extrair_config_firewall_schedule_recurring.py...
../Script_py/extrair_config_firewall_schedule_recurring.py executado com sucesso!
Executando ../Script_py/extrair_config_firewall_service_custom.py...
../Script_py/extrair_config_firewall_service_custom.py executado com sucesso!
Executando ../Script_py/extrair_config_firewall_service_group.py...
../Script_py/extrair_config_firewall_service_group.py executado com sucesso!
Executando ../Script_py/extrair_config_firewall_sniffer.py...
../Script_py/extrair_config_firewall_sniffer.py executado com sucesso!
Executando ../Script_py/extrair_config_firewall_vip.py...
../Script_py/extrair_config_firewall_vip.py executado com sucesso!
Executando ../Script_py/extrair_config_router_static.py...
../Script_py/extrair_config_router_static.py executado com sucesso!
Todos os scripts Python foram executados.
Configurações extraídas e filtradas. Arquivo final salvo em: ../extraido/no_ID_config_firewall_address.cfg
Configurações extraídas e filtradas. Arquivo final salvo em: ../extraido/no_ID_config_firewall_addrgrp.cfg
Configurações extraídas e filtradas. Arquivo final salvo em: ../extraido/no_ID_config_firewall_policy.cfg
Configurações extraídas e filtradas. Arquivo final salvo em: ../extraido/no_ID_config_firewall_address.cfg
Todos os scripts para remover o UUID foram executados.
``` 

Os resultados da análise serão salvos em arquivos de texto no diretório extraido.
