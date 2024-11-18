
# Scripts para Extração de Configurações do FortiGate

Este repositório contém scripts em Python para extrair informações específicas das configurações de um firewall FortiGate e gerar relatórios detalhados e personalizados. Cada script aborda uma área específica, como endereços IP, políticas de firewall, agendamentos e serviços.

---

## 🛠️ Pré-requisitos

- **Git**: Deve estar instalado.
- **Sistema Operacional**: Linux ou macOS.
- **Python 3.x**: Deve estar instalado.
- **Conhecimento Básico**: Familiaridade com linha de comando e manipulação de arquivos de configuração.

---

## 🚀 Instalação

### 1. Clone o repositório

```bash
git clone https://github.com/Jonathan-Nascimento/Extrair_Config_Firewall_Fortigate.git
```

### 2. Navegue até o diretório

```bash
cd Extrair_Config_Firewall_Fortigate
```

### 3. Realize o backup do FortiGate

- Acesse a interface web do FortiGate e gere um **arquivo de configuração completo**.

### 4. Copie o arquivo de backup

- Arraste e solte o arquivo de configuração gerado no diretório `Extrair_Config_Firewall_Fortigate`.

### 5. Renomeie o arquivo de configuração

```bash
mv <nome_do_arquivo> Backup-Firewall.conf
```

---

## 📄 Execução dos Scripts

### 1. Acesse o diretório de execução

```bash
cd Script_sh
```

### 2. Execute o script principal

```bash
bash Exe-py.sh
```

- O script processará o arquivo de configuração, executará os scripts Python e gerará relatórios detalhados.

---

## 📂 Saída Gerada

### Exemplo de execução:

```bash
Executando ../Script_py/extrair_config_firewall_address.py...
../Script_py/extrair_config_firewall_address.py executado com sucesso!
Executando ../Script_py/extrair_config_firewall_policy.py...
../Script_py/extrair_config_firewall_policy.py executado com sucesso!
...
Todos os scripts Python foram executados.
Configurações extraídas e filtradas. Arquivo final salvo em: ../extraido/no_ID_config_firewall_policy.cfg
Todos os scripts para remover o UUID foram executados.
```

### Diretório de saída

Os relatórios gerados são salvos no diretório `extraido`, com arquivos nomeados de forma descritiva, como:

- `no_ID_config_firewall_address.cfg`: Contém os endereços extraídos.
- `no_ID_config_firewall_policy.cfg`: Inclui as políticas de firewall extraídas.
- Outros arquivos relevantes conforme o tipo de configuração processada.

---

## 🔍 Principais Recursos

1. **Extração de Configurações**
   - Endereços IPv4 e IPv6.
   - Políticas de firewall.
   - Agendamentos (pontuais e recorrentes).
   - Pools de IP.
   - Serviços personalizados e grupos de serviços.
   - Regras de VIP e monitoramento.

2. **Remoção de Identificadores Únicos (UUID)**
   - Torna os relatórios mais limpos e reutilizáveis.

3. **Geração de Relatórios**
   - Arquivos organizados por tipo de configuração.

---

## 🎯 Benefícios

- **Automação Completa**: Simplifica a análise de configurações complexas.
- **Facilidade de Reuso**: Saídas organizadas para serem reaplicadas em outros dispositivos.
- **Flexibilidade**: Adaptável a diferentes versões de FortiGate.

---

## 📄 Licença

Este projeto está licenciado sob a [MIT License](LICENSE).

---

**Dúvidas ou sugestões?** Entre em contato através do [GitHub Issues](https://github.com/Jonathan-Nascimento/Extrair_Config_Firewall_Fortigate/issues).


