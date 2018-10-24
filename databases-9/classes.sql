--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.4

-- Started on 2018-10-24 14:41:49 EDT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 16423)
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    id integer NOT NULL,
    first_name text,
    last_name text
);


ALTER TABLE public.students OWNER TO postgres;

--
-- TOC entry 3126 (class 0 OID 16423)
-- Dependencies: 196
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.students (id, first_name, last_name) VALUES (1, 'Tom', 'Henry');
INSERT INTO public.students (id, first_name, last_name) VALUES (2, 'Jerry', 'Strella');
INSERT INTO public.students (id, first_name, last_name) VALUES (3, 'Pierre', 'LePonte');
INSERT INTO public.students (id, first_name, last_name) VALUES (4, 'Kelsi', 'Melana');


--
-- TOC entry 3004 (class 2606 OID 16430)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


-- Completed on 2018-10-24 14:41:50 EDT

--
-- PostgreSQL database dump complete
--

