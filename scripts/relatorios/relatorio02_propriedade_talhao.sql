SELECT pr.nome AS nome_propriedade,
       t.nome_talhao AS talhao,
       t.volum_area AS area_talhao
  FROM propriedade pr
  JOIN talhao t
    ON pr.id_propriedade = t.propriedade_id_propriedade
 ORDER BY pr.nome, t.nome_talhao;