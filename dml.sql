-- DML for Terra Nova Database
-- Generated on: 2026-06-09 16:07:22

SET DEFINE OFF;

--------------------------------------------------
-- TIPO_API
--------------------------------------------------
INSERT INTO tipo_api VALUES (1, 'SATVEG');
INSERT INTO tipo_api VALUES (2, 'NASAPOWER');

--------------------------------------------------
-- TIPO_PLANTACAO
--------------------------------------------------
INSERT INTO tipo_plantacao VALUES (1, 'Soja');
INSERT INTO tipo_plantacao VALUES (2, 'Milho');
INSERT INTO tipo_plantacao VALUES (3, 'Algodao');
INSERT INTO tipo_plantacao VALUES (4, 'Cana-de-Acucar');
INSERT INTO tipo_plantacao VALUES (5, 'Cafe');

--------------------------------------------------
-- PRODUTOR
--------------------------------------------------
INSERT INTO produtor VALUES (1, 'Joao Silva', 'joao@terra.com', '123456');
INSERT INTO produtor VALUES (2, 'Maria Souza', 'maria@terra.com', '123456');
INSERT INTO produtor VALUES (3, 'Carlos Lima', 'carlos@terra.com', '123456');
INSERT INTO produtor VALUES (4, 'Ana Costa', 'ana@terra.com', '123456');
INSERT INTO produtor VALUES (5, 'Pedro Santos', 'pedro@terra.com', '123456');
INSERT INTO produtor VALUES (6, 'Fernanda Rocha', 'fernanda@terra.com', '123456');
INSERT INTO produtor VALUES (7, 'Lucas Oliveira', 'lucas@terra.com', '123456');
INSERT INTO produtor VALUES (8, 'Juliana Alves', 'juliana@terra.com', '123456');
INSERT INTO produtor VALUES (9, 'Ricardo Gomes', 'ricardo@terra.com', '123456');
INSERT INTO produtor VALUES (10, 'Patricia Melo', 'patricia@terra.com', '123456');

--------------------------------------------------
-- TELEFONE
--------------------------------------------------
INSERT INTO telefone VALUES (1, '11', '999111111', 1);
INSERT INTO telefone VALUES (2, '11', '999222222', 2);
INSERT INTO telefone VALUES (3, '21', '999333333', 3);
INSERT INTO telefone VALUES (4, '31', '999444444', 4);
INSERT INTO telefone VALUES (5, '41', '999555555', 5);
INSERT INTO telefone VALUES (6, '51', '999666666', 6);
INSERT INTO telefone VALUES (7, '61', '999777777', 7);
INSERT INTO telefone VALUES (8, '71', '999888888', 8);
INSERT INTO telefone VALUES (9, '81', '999999999', 9);
INSERT INTO telefone VALUES (10, '85', '988888888', 10);

--------------------------------------------------
-- LOCALIZACAO
--------------------------------------------------
INSERT INTO localizacao VALUES (1, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-54.5, -12.1, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (2, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-54.2, -12.2, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (3, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-53.9, -12.3, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (4, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-53.6, -12.4, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (5, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-53.3, -12.5, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (6, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-53.0, -12.6, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (7, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-52.7, -12.7, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (8, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-52.4, -12.8, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (9, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-52.1, -12.9, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (10, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-51.8, -13.0, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (11, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-51.5, -13.1, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (12, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-51.2, -13.2, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (13, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-50.9, -13.3, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (14, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-50.6, -13.4, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (15, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-50.3, -13.5, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (16, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-50.0, -13.6, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (17, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-49.7, -13.7, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (18, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-49.4, -13.8, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (19, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-49.1, -13.9, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (20, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-48.8, -14.0, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (21, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-48.5, -14.1, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (22, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-48.2, -14.2, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (23, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-47.9, -14.3, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (24, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-47.6, -14.4, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (25, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-47.3, -14.5, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (26, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-47.0, -14.6, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (27, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-46.7, -14.7, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (28, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-46.4, -14.8, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (29, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-46.1, -14.9, NULL), NULL, NULL));
INSERT INTO localizacao VALUES (30, MDSYS.SDO_GEOMETRY(2001, 4326, MDSYS.SDO_POINT_TYPE(-45.8, -15.0, NULL), NULL, NULL));

--------------------------------------------------
-- PROPRIEDADE
--------------------------------------------------
INSERT INTO propriedade VALUES (1, 'Fazenda Aurora', 520.5, 1, 1);
INSERT INTO propriedade VALUES (2, 'Fazenda Bela Vista', 410.0, 2, 2);
INSERT INTO propriedade VALUES (3, 'Sitio Esperanca', 230.0, 3, 3);
INSERT INTO propriedade VALUES (4, 'Fazenda Verde', 680.2, 4, 4);
INSERT INTO propriedade VALUES (5, 'Fazenda Horizonte', 745.8, 5, 5);
INSERT INTO propriedade VALUES (6, 'Sitio Sol Nascente', 180.0, 6, 6);
INSERT INTO propriedade VALUES (7, 'Fazenda Campo Bom', 390.4, 7, 7);
INSERT INTO propriedade VALUES (8, 'Fazenda Recanto', 510.0, 8, 8);
INSERT INTO propriedade VALUES (9, 'Sitio Rio Claro', 275.0, 9, 9);
INSERT INTO propriedade VALUES (10, 'Fazenda Planalto', 610.0, 10, 10);

--------------------------------------------------
-- TALHAO
--------------------------------------------------
INSERT INTO talhao VALUES (1, 'Talhao A1', 42.5, 1, 1, 11);
INSERT INTO talhao VALUES (2, 'Talhao A2', 36.0, 2, 1, 12);
INSERT INTO talhao VALUES (3, 'Talhao B1', 28.0, 1, 2, 13);
INSERT INTO talhao VALUES (4, 'Talhao B2', 31.5, 3, 2, 14);
INSERT INTO talhao VALUES (5, 'Talhao C1', 22.0, 2, 3, 15);
INSERT INTO talhao VALUES (6, 'Talhao C2', 24.8, 4, 3, 16);
INSERT INTO talhao VALUES (7, 'Talhao D1', 55.0, 5, 4, 17);
INSERT INTO talhao VALUES (8, 'Talhao D2', 48.3, 1, 4, 18);
INSERT INTO talhao VALUES (9, 'Talhao E1', 62.1, 2, 5, 19);
INSERT INTO talhao VALUES (10, 'Talhao E2', 59.4, 3, 5, 20);
INSERT INTO talhao VALUES (11, 'Talhao F1', 18.6, 4, 6, 21);
INSERT INTO talhao VALUES (12, 'Talhao F2', 16.9, 5, 6, 22);
INSERT INTO talhao VALUES (13, 'Talhao G1', 44.2, 1, 7, 23);
INSERT INTO talhao VALUES (14, 'Talhao G2', 41.7, 2, 8, 24);
INSERT INTO talhao VALUES (15, 'Talhao H1', 33.8, 3, 9, 25);

--------------------------------------------------
-- REQ_API
--------------------------------------------------
INSERT INTO req_api VALUES (1, 'NDVI', TO_TIMESTAMP('2026-05-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1);
INSERT INTO req_api VALUES (2, 'PRECTOTCORR', TO_TIMESTAMP('2026-05-01 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2);
INSERT INTO req_api VALUES (3, 'NDVI', TO_TIMESTAMP('2026-05-02 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1);
INSERT INTO req_api VALUES (4, 'PRECTOTCORR', TO_TIMESTAMP('2026-05-02 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2);
INSERT INTO req_api VALUES (5, 'NDVI', TO_TIMESTAMP('2026-05-03 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1);
INSERT INTO req_api VALUES (6, 'PRECTOTCORR', TO_TIMESTAMP('2026-05-03 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2);
INSERT INTO req_api VALUES (7, 'NDVI', TO_TIMESTAMP('2026-05-04 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1);
INSERT INTO req_api VALUES (8, 'PRECTOTCORR', TO_TIMESTAMP('2026-05-04 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2);

--------------------------------------------------
-- DADO_TEMPORAL
--------------------------------------------------
INSERT INTO dado_temporal VALUES (1, TO_DATE('2026-05-01', 'YYYY-MM-DD'), 0.82, 1, 1);
INSERT INTO dado_temporal VALUES (2, TO_DATE('2026-05-01', 'YYYY-MM-DD'), 12.5, 2, 2);
INSERT INTO dado_temporal VALUES (3, TO_DATE('2026-05-02', 'YYYY-MM-DD'), 0.79, 3, 3);
INSERT INTO dado_temporal VALUES (4, TO_DATE('2026-05-02', 'YYYY-MM-DD'), 8.3, 4, 4);
INSERT INTO dado_temporal VALUES (5, TO_DATE('2026-05-03', 'YYYY-MM-DD'), 0.74, 5, 5);
INSERT INTO dado_temporal VALUES (6, TO_DATE('2026-05-03', 'YYYY-MM-DD'), 21.7, 6, 6);
INSERT INTO dado_temporal VALUES (7, TO_DATE('2026-05-04', 'YYYY-MM-DD'), 0.61, 7, 7);
INSERT INTO dado_temporal VALUES (8, TO_DATE('2026-05-04', 'YYYY-MM-DD'), 34.1, 8, 8);
INSERT INTO dado_temporal VALUES (9, TO_DATE('2026-05-05', 'YYYY-MM-DD'), 0.48, 9, 1);
INSERT INTO dado_temporal VALUES (10, TO_DATE('2026-05-05', 'YYYY-MM-DD'), 4.9, 10, 2);
INSERT INTO dado_temporal VALUES (11, TO_DATE('2026-05-06', 'YYYY-MM-DD'), 0.92, 11, 3);
INSERT INTO dado_temporal VALUES (12, TO_DATE('2026-05-06', 'YYYY-MM-DD'), 16.4, 12, 4);
INSERT INTO dado_temporal VALUES (13, TO_DATE('2026-05-07', 'YYYY-MM-DD'), 0.55, 13, 5);
INSERT INTO dado_temporal VALUES (14, TO_DATE('2026-05-07', 'YYYY-MM-DD'), 28.8, 14, 6);
INSERT INTO dado_temporal VALUES (15, TO_DATE('2026-05-08', 'YYYY-MM-DD'), 0.67, 15, 7);
INSERT INTO dado_temporal VALUES (16, TO_DATE('2026-05-08', 'YYYY-MM-DD'), 11.2, 1, 8);
INSERT INTO dado_temporal VALUES (17, TO_DATE('2026-05-09', 'YYYY-MM-DD'), 0.39, 2, 1);
INSERT INTO dado_temporal VALUES (18, TO_DATE('2026-05-09', 'YYYY-MM-DD'), 19.5, 3, 2);
INSERT INTO dado_temporal VALUES (19, TO_DATE('2026-05-10', 'YYYY-MM-DD'), 0.88, 4, 3);
INSERT INTO dado_temporal VALUES (20, TO_DATE('2026-05-10', 'YYYY-MM-DD'), 7.7, 5, 4);

--------------------------------------------------
-- ALERTA_AGRICOLA
--------------------------------------------------
INSERT INTO alerta_agricola VALUES (1, 'Baixa Umidade', 'Umidade abaixo do ideal no talhao 1', 'MEDIO', 'N', TO_TIMESTAMP('2026-05-01 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1);
INSERT INTO alerta_agricola VALUES (2, 'Risco de Seca', 'Precipitacao acumulada baixa no talhao 2', 'ALTO', 'N', TO_TIMESTAMP('2026-05-01 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2);
INSERT INTO alerta_agricola VALUES (3, 'Vegetacao Reduzida', 'Indice NDVI abaixo do esperado', 'MEDIO', 'S', TO_TIMESTAMP('2026-05-02 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3);
INSERT INTO alerta_agricola VALUES (4, 'Chuva Intensa', 'Possibilidade de encharcamento', 'ALTO', 'N', TO_TIMESTAMP('2026-05-02 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4);
INSERT INTO alerta_agricola VALUES (5, 'Monitoramento', 'Talhao em acompanhamento', 'BAIXO', 'S', TO_TIMESTAMP('2026-05-03 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5);
INSERT INTO alerta_agricola VALUES (6, 'Estresse Hidrico', 'Solo com baixa retencao de agua', 'CRITICO', 'N', TO_TIMESTAMP('2026-05-03 13:20:00', 'YYYY-MM-DD HH24:MI:SS'), 6);
INSERT INTO alerta_agricola VALUES (7, 'Risco de Alagamento', 'Acumulado de chuva elevado', 'ALTO', 'N', TO_TIMESTAMP('2026-05-04 14:10:00', 'YYYY-MM-DD HH24:MI:SS'), 7);
INSERT INTO alerta_agricola VALUES (8, 'Indice Normal', 'Parametros dentro do padrao', 'BAIXO', 'S', TO_TIMESTAMP('2026-05-05 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), 8);
INSERT INTO alerta_agricola VALUES (9, 'Baixo Vigor', 'Vegetacao com sinais de enfraquecimento', 'MEDIO', 'N', TO_TIMESTAMP('2026-05-06 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 9);
INSERT INTO alerta_agricola VALUES (10, 'Analise Preventiva', 'Leitura preventiva de solo e clima', 'BAIXO', 'S', TO_TIMESTAMP('2026-05-07 17:30:00', 'YYYY-MM-DD HH24:MI:SS'), 10);

COMMIT;
