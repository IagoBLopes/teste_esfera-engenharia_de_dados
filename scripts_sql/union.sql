CREATE OR REPLACE VIEW `mystudentproject-292517.teste_esfera.db_final_view` AS
WITH receita AS (
  SELECT
    fonte_recursos,
    tipo_receita as tipo_movimentacao,
    arrecadado as valor, 
    'receita' as origem,
  FROM
    `mystudentproject-292517.teste_esfera.db_receita`
),
despesa AS (
  SELECT
    fonte_recursos,
    tipo_despesa as tipo_movimentacao,
    liquidado as valor,
    'despesa' as origem,
  FROM
    `mystudentproject-292517.teste_esfera.db_despesa`
)

SELECT * FROM receita

UNION ALL

SELECT * FROM despesa;