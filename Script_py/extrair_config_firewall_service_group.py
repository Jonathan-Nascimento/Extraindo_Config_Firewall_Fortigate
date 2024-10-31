import re

def extrair_enderecos(arquivo):
    """Extrai todos os endereços de um arquivo de configuração do Fortigate.

    Args:
        arquivo (str): Caminho para o arquivo de configuração.

    Returns:
        list: Lista de strings contendo os endereços.
    """

    with open(arquivo, 'r') as f:
        config = f.read()

    # Expressão regular para encontrar blocos de endereços
    pattern = r"config firewall service group\n(.*?)\nend"

    enderecos = []
    for match in re.finditer(pattern, config, re.DOTALL):
        bloco = match.group(1)
        # Aqui você pode processar cada bloco para extrair os endereços
        # por exemplo, dividindo por linhas e removendo espaços em branco
        enderecos.extend(linha.strip() for linha in bloco.splitlines())

    return enderecos

# Exemplo de uso
arquivo = '../Backup-Firewall.conf'
todos_enderecos = extrair_enderecos(arquivo)

# Salvando os endereços em um arquivo
with open('../extraido/config_firewall_service_group.cfg', 'w') as f:
    for endereco in todos_enderecos:
        f.write(endereco + '\n')