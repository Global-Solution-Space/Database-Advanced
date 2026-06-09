SELECT t.nome_talhao,
       a.titulo,
       a.nivel_alerta
FROM talhao t
JOIN alerta_agricola a
ON t.id_talhao = a.talhao_id_talhao;