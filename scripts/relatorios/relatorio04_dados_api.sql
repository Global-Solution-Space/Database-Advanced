SELECT d.id_dado,
       d.valor,
       r.tipo_param
FROM dado_temporal d
JOIN req_api r
ON d.req_api_id_api = r.id_api;