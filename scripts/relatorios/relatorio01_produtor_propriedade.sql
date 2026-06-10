SELECT p.nome AS nome_produtor,
       p.email AS email_contato,
       pr.nome AS nome_propriedade,
       pr.tamanho_total AS area_total
  FROM produtor p
  JOIN propriedade pr
    ON p.id_produtor = pr.produtor_id_produtor
 ORDER BY p.nome, pr.nome;