SELECT t.nome_talhao AS talhao,
       ta.tipo_api AS fonte_dados,
       r.tipo_param AS parametro_medido,
       d.valor AS valor_leitura,
       TO_CHAR(d.data_leitura, 'DD/MM/YYYY') AS data_leitura
  FROM dado_temporal d
  JOIN req_api r
    ON d.req_api_id_api = r.id_api
  JOIN tipo_api ta
    ON r.tipo_api_id_tipo = ta.id_tipo
  JOIN talhao t
    ON d.talhao_id_talhao = t.id_talhao
 ORDER BY d.data_leitura DESC;