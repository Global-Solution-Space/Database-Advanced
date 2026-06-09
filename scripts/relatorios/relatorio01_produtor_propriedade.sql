SELECT p.nome,
       pr.nome
FROM produtor p
JOIN propriedade pr
ON p.id_produtor = pr.produtor_id_produtor;