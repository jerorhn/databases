--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

-- Started on 2018-07-28 10:51:12 EDT

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
-- TOC entry 198 (class 1259 OID 16400)
-- Name: booking; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.booking (
    id integer NOT NULL,
    check_in date,
    check_out date,
    guest_id integer,
    room_id integer
);


ALTER TABLE public.booking OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16387)
-- Name: guests; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.guests (
    id integer NOT NULL,
    first_name text,
    last_name text,
    phone integer,
    email text,
    address text
);


ALTER TABLE public.guests OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16395)
-- Name: rooms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms (
    id integer NOT NULL,
    room_number integer,
    floor_number integer,
    nightly_price money
);


ALTER TABLE public.rooms OWNER TO postgres;

--
-- TOC entry 3136 (class 0 OID 16400)
-- Dependencies: 198
-- Data for Name: booking; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.booking (id, check_in, check_out, guest_id, room_id) FROM stdin;
\.


--
-- TOC entry 3134 (class 0 OID 16387)
-- Dependencies: 196
-- Data for Name: guests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.guests (id, first_name, last_name, phone, email, address) FROM stdin;
\.


--
-- TOC entry 3135 (class 0 OID 16395)
-- Dependencies: 197
-- Data for Name: rooms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rooms (id, room_number, floor_number, nightly_price) FROM stdin;
\.


--
-- TOC entry 3010 (class 2606 OID 16404)
-- Name: booking booking_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking
    ADD CONSTRAINT booking_pkey PRIMARY KEY (id);


--
-- TOC entry 3006 (class 2606 OID 16394)
-- Name: guests guests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guests
    ADD CONSTRAINT guests_pkey PRIMARY KEY (id);


--
-- TOC entry 3008 (class 2606 OID 16399)
-- Name: rooms rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);


--
-- TOC entry 3011 (class 2606 OID 16405)
-- Name: booking guest_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking
    ADD CONSTRAINT guest_id FOREIGN KEY (guest_id) REFERENCES public.guests(id);


--
-- TOC entry 3012 (class 2606 OID 16410)
-- Name: booking room_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking
    ADD CONSTRAINT room_id FOREIGN KEY (room_id) REFERENCES public.rooms(id);


-- Completed on 2018-07-28 10:51:12 EDT

--
-- PostgreSQL database dump complete
--

