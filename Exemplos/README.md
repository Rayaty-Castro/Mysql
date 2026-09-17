# Exemplo 1: Higienização de Nomes e Padronização de E-mail (String Functions)

Utiliza TRIM para remover os espaços indesejados nas pontas do nome e UPPER para padronizar tudo em maiúsculas. Aplica LOWER para garantir que os e-mails fiquem inteiramente em minúsculas, facilitando a comparação de strings.

# Exemplo 2: Cálculo da Data de Renovação da Assinatura (Date Functions)

A função DATE_ADD pega a coluna data_inicio e soma um intervalo exato de 1 mês. O resultado projeta a data do próximo ciclo de faturamento da assinatura.

# Exemplo 3: Máscara Visual para Código de Rastreio (String Functions)

 A função REPLACE altera os hífens do código de rastreio para barras. A função COALESCE intercepta valores nulos (NULL) e substitui pelo texto padrão 'SEM RASTREIO'.

# Exemplo 4: Formatação de Datas em Padrão Brasileiro (Date Functions)

Explicação: A função DATE_FORMAT converte a estrutura padrão do MySQL (YYYY-MM-DD HH:MM:SS) para a formatação local do usuário com o dia, mês e ano separados por barras e horas formatadas.

# Exemplo 5: Cálculo de Dias Desde a Última Compra (Aritmética Temporal e String)

CONCAT une a string fixa ao valor numérico para gerar uma identificação formatada. DATEDIFF calcula a diferença em dias corridos entre a data fornecida e a data em que o pedido foi efetuado.
