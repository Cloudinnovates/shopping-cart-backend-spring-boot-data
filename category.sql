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
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE category (
    category_id integer NOT NULL,
    category_name character varying(255),
    seo_url character varying(255)
);


ALTER TABLE category OWNER TO postgres;

--
-- Name: category_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE category_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE category_category_id_seq OWNER TO postgres;

--
-- Name: category_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE category_category_id_seq OWNED BY category.category_id;


--
-- Name: category_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY category ALTER COLUMN category_id SET DEFAULT nextval('category_category_id_seq'::regclass);


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO category (category_id, category_name, seo_url) VALUES (1, 'Beverages', 'beverages');
INSERT INTO category (category_id, category_name, seo_url) VALUES (2, 'Condiments', 'condiments');
INSERT INTO category (category_id, category_name, seo_url) VALUES (3, 'Confections', 'confections');
INSERT INTO category (category_id, category_name, seo_url) VALUES (4, 'Dairy Products', 'dairy-products');
INSERT INTO category (category_id, category_name, seo_url) VALUES (5, 'Grains/Cereals', 'grains-cereals');
INSERT INTO category (category_id, category_name, seo_url) VALUES (6, 'Meat/Poultry', 'meat-poultry');
INSERT INTO category (category_id, category_name, seo_url) VALUES (7, 'Produce', 'produce');
INSERT INTO category (category_id, category_name, seo_url) VALUES (8, 'Seafood', 'seafood');


--
-- Name: category_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('category_category_id_seq', 8, true);


--
-- Name: category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);


--
-- PostgreSQL database dump complete
--

