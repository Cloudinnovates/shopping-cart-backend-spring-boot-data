--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.9
-- Dumped by pg_dump version 9.5.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE product (
    product_id integer NOT NULL,
    product_name character varying(255),
    quantity_per_unit character varying(255),
    unit_price integer NOT NULL,
    units_in_stock integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE product OWNER TO postgres;

--
-- Name: product_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_product_id_seq OWNER TO postgres;

--
-- Name: product_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_product_id_seq OWNED BY product.product_id;


--
-- Name: product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product ALTER COLUMN product_id SET DEFAULT nextval('product_product_id_seq'::regclass);


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (1, 'Chai', '10 boxes x 20 bags', 200000, 100, 2);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (2, 'Chang', '24 - 12 oz bottles', 190000, 17, 1);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (3, 'Chef Anton''s Cajun Seasoning', '48 - 6 oz jars', 220000, 53, 2);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (4, 'Chef Anton''s Gumbo Mix', '36 boxes', 213500, 0, 2);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (5, 'Grandma''s Boysenberry Spread', '12 - 8 oz jars', 250000, 120, 2);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (6, 'Uncle Bob''s Organic Dried Pears', '12 - 1 lb pkgs.', 300000, 15, 7);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (7, 'Northwoods Cranberry Sauce', '12 - 12 oz jars', 400000, 100, 2);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (8, 'Mishi Kobe Niku', '18 - 500 g pkgs.', 970000, 29, 6);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (9, 'Ikura', '12 - 200 ml jars', 310000, 31, 8);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (10, 'Queso Cabrales', '1 kg pkg.', 210000, 22, 4);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (11, 'Queso Manchego La Pastora', '10 - 500 g pkgs.', 380000, 86, 4);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (12, 'Konbu', '2 kg box', 60000, 24, 8);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (13, 'Tofu', '40 - 100 g pkgs.', 232500, 35, 7);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (14, 'Genen Shouyu', '24 - 250 ml bottles', 155000, 39, 2);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (15, 'Pavlova', '32 - 500 g boxes', 174500, 29, 3);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (16, 'Guiza', '20 - 1 kg tins', 390000, 0, 6);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (17, 'Carnarvon Tigers', '16 kg pkg.', 625000, 42, 8);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (18, 'Teatime Chocolate Biscuits', '10 boxes x 12 pieces', 92000, 25, 3);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (19, 'Sir Rodney''s Marmalade', '30 gift boxes', 810000, 40, 3);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (20, 'Sir Rodney''s Scones', '24 pkgs. x 4 pieces', 100000, 3, 3);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (21, 'Gustaf''s Knäckebröd', '24 - 500 g pkgs.', 210000, 104, 5);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (22, 'Tunnbröd', '12 - 250 g pkgs.', 90000, 61, 5);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (23, 'Guaraná Fantástica', '12 - 355 ml cans', 45000, 20, 1);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (24, 'NuNuCa Nuß-Nougat-Creme', '20 - 450 g glasses', 140000, 76, 3);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (25, 'Gumbär Gummibärchen', '100 - 250 g bags', 312300, 15, 3);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (26, 'Schoggi Schokolade', '100 - 100 g pieces', 439000, 49, 3);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (27, 'Rössle Sauerkraut', '25 - 825 g cans', 456000, 26, 7);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (28, 'Thüringer Rostbratwurst', '50 bags x 30 sausgs.', 1237900, 0, 6);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (29, 'Nord-Ost Matjeshering', '10 - 200 g glasses', 258900, 10, 8);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (30, 'Gorgonzola Telino', '12 - 100 g pkgs', 125000, 0, 4);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (31, 'Mascarpone Fabioli', '24 - 200 g pkgs.', 320000, 9, 4);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (32, 'Geitost', '500 g', 25000, 112, 4);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (33, 'Sasquatch Ale', '24 - 12 oz bottles', 140000, 111, 1);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (34, 'Steeleye Stout', '24 - 12 oz bottles', 180000, 20, 1);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (35, 'Inlagd Sill', '24 - 250 g jars', 190000, 112, 8);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (36, 'Gravad lax', '12 - 500 g pkgs.', 260000, 11, 8);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (37, 'Côte de Blaye', '12 - 75 cl bottles', 2635000, 17, 1);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (38, 'Chartreuse verte', '750 cc per bottle', 180000, 69, 1);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (39, 'Boston Crab Meat', '24 - 4 oz tins', 184000, 123, 8);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (40, 'Jack''s New England Clam Chowder', '12 - 12 oz cans', 96500, 85, 8);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (41, 'Singaporean Hokkien Fried Mee', '32 - 1 kg pkgs.', 140000, 26, 5);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (42, 'Ipoh Coffee', '16 - 500 g tins', 460000, 17, 1);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (43, 'Gula Malacca', '20 - 2 kg bags', 194500, 27, 2);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (44, 'Rogede sild', '1k pkg.', 95000, 5, 8);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (45, 'Spegesild', '4 - 450 g glasses', 120000, 95, 8);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (46, 'Zaanse koeken', '10 - 4 oz boxes', 95000, 36, 3);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (47, 'Chocolade', '10 pkgs.', 127500, 15, 3);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (48, 'Maxilaku', '24 - 50 g pkgs.', 200000, 10, 3);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (49, 'Valkoinen suklaa', '12 - 100 g bars', 162500, 65, 3);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (50, 'Manjimup Dried Apples', '50 - 300 g pkgs.', 530000, 20, 7);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (51, 'Filo Mix', '16 - 2 kg boxes', 70000, 38, 5);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (52, 'Perth Pasties', '48 pieces', 328000, 0, 6);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (53, 'Tourtière', '16 pies', 74500, 21, 6);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (54, 'Pâté chinois', '24 boxes x 2 pies', 240000, 115, 6);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (55, 'Gnocchi di nonna Alice', '24 - 250 g pkgs.', 380000, 21, 5);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (56, 'Ravioli Angelo', '24 - 250 g pkgs.', 195000, 36, 5);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (57, 'Escargots de Bourgogne', '24 pieces', 132500, 62, 8);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (58, 'Raclette Courdavault', '5 kg pkg.', 550000, 79, 4);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (59, 'Camembert Pierrot', '15 - 300 g rounds', 340000, 19, 4);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (60, 'Sirop d''érable', '24 - 500 ml bottles', 285000, 113, 2);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (61, 'Tarte au sucre', '48 pies', 493000, 17, 3);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (62, 'Vegie-spread', '15 - 625 g jars', 439000, 24, 2);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (63, 'Wimmers gute Semmelknödel', '20 bags x 4 pieces', 332500, 22, 5);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (64, 'Louisiana Fiery Hot Pepper Sauce', '32 - 8 oz bottles', 210500, 76, 2);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (65, 'Louisiana Hot Spiced Okra', '24 - 8 oz jars', 170000, 4, 2);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (66, 'Laughing Lumberjack Lager', '24 - 12 oz bottles', 140000, 52, 1);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (67, 'Scottish Longbreads', '10 boxes x 8 pieces', 125000, 6, 3);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (68, 'Gudbrandsdalsost', '10 kg pkg.', 360000, 26, 4);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (69, 'Outback Lager', '24 - 355 ml bottles', 150000, 15, 1);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (70, 'Flotemysost', '10 - 500 g pkgs.', 215000, 26, 4);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (71, 'Mozzarella di Giovanni', '24 - 200 g pkgs.', 348000, 14, 4);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (72, 'Röd Kaviar', '24 - 150 g jars', 150000, 101, 8);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (73, 'Longlife Tofu', '5 kg pkg.', 100000, 4, 7);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (74, 'Rhönbräu Klosterbier', '24 - 0.5 l bottles', 77500, 125, 1);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (75, 'Lakkalikööri', '500 ml', 180000, 57, 1);
INSERT INTO product (product_id, product_name, quantity_per_unit, unit_price, units_in_stock, category_id) VALUES (76, 'Original Frankfurter grüne Soße', '12 boxes', 130000, 32, 2);


--
-- Name: product_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_product_id_seq', 76, true);


--
-- Name: product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);


--
-- Name: fk1mtsbur82frn64de7balymq9s; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES category(category_id);


--
-- PostgreSQL database dump complete
--

