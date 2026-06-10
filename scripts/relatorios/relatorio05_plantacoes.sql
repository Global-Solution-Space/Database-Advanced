SELECT pr.nome AS propriedade,
       t.nome_talhao AS talhao,
       tp.tipo_plant AS cultura
  FROM talhao t
  JOIN tipo_plantacao tp
    ON t.tipo_plantacao_id_tipo_plant = tp.id_tipo_plant
  JOIN propriedade pr
    ON t.propriedade_id_propriedade = pr.id_propriedade
 ORDER BY tp.tipo_plant, pr.nome;