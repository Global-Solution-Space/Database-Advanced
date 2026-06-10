SELECT t.nome_talhao AS talhao,
       a.titulo AS alerta,
       a.descricao AS detalhe,
       a.nivel_alerta AS risco,
       a.resolvido AS status_resolvido,
       TO_CHAR(a.data_alerta, 'DD/MM/YYYY HH24:MI') AS data_ocorrencia
  FROM talhao t
  JOIN alerta_agricola a
    ON t.id_talhao = a.talhao_id_talhao
 ORDER BY a.data_alerta DESC;