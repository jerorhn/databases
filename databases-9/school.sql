--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.4

-- Started on 2018-10-15 22:55:54 EDT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3135 (class 1262 OID 16586)
-- Name: school; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE school WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE school OWNER TO postgres;

\connect school

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 13253)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3137 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 16595)
-- Name: classes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classes (
    id integer NOT NULL,
    student_id integer,
    class_name text,
    grade "char"
);


ALTER TABLE public.classes OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16587)
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    id integer NOT NULL,
    first_name text,
    last_name text,
    phone numeric(10,0),
    email text,
    address text
);


ALTER TABLE public.students OWNER TO postgres;

--
-- TOC entry 3129 (class 0 OID 16595)
-- Dependencies: 197
-- Data for Name: classes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.classes (id, student_id, class_name, grade) VALUES (1, 1, 'Math1', 'B');
INSERT INTO public.classes (id, student_id, class_name, grade) VALUES (2, 1, 'English5', 'D');
INSERT INTO public.classes (id, student_id, class_name, grade) VALUES (3, 1, 'Biology', 'F');
INSERT INTO public.classes (id, student_id, class_name, grade) VALUES (4, 2, 'Math1', 'F');
INSERT INTO public.classes (id, student_id, class_name, grade) VALUES (5, 2, 'English5', 'A');
INSERT INTO public.classes (id, student_id, class_name, grade) VALUES (6, 3, 'Math1', 'B');


--
-- TOC entry 3128 (class 0 OID 16587)
-- Dependencies: 196
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.students (id, first_name, last_name, phone, email, address) VALUES (1, 'Paul', 'Walker', 3152641919, 'walkerp1919@gmail.com', '2032 Pageland Hwy');
INSERT INTO public.students (id, first_name, last_name, phone, email, address) VALUES (2, 'John', 'Phillips', 5742983158, 'jphillips21537@yahoo.com', '1223 Lazybrook Rd');
INSERT INTO public.students (id, first_name, last_name, phone, email, address) VALUES (3, 'Ray', 'Jackson', 3729153765, 'jacksonray3765@aol.com', '3215 Rockpost Cir');


--
-- TOC entry 3005 (class 2606 OID 16602)
-- Name: classes classes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (id);


--
-- TOC entry 3003 (class 2606 OID 16594)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- TOC entry 3006 (class 2606 OID 16603)
-- Name: classes student_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classes
    ADD CONSTRAINT student_id FOREIGN KEY (student_id) REFERENCES public.students(id);


-- Completed on 2018-10-15 22:55:54 EDT

--
-- PostgreSQL database dump complete
--

