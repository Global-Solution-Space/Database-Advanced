SELECT pr.nome,
       t.nome_talhao
FROM propriedade pr
JOIN talhao t
ON pr.id_propriedade = t.propriedade_id_propriedade;