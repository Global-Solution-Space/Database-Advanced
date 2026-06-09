SELECT t.nome_talhao,
       tp.tipo_plant
FROM talhao t
JOIN tipo_plantacao tp
ON t.tipo_plantacao_id_tipo_plant =
   tp.id_tipo_plant;