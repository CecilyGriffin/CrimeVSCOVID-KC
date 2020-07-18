--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

-- Started on 2020-07-18 08:29:57

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 202 (class 1259 OID 17115)
-- Name: covid; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.covid (
    id integer NOT NULL,
    zip_code character varying,
    covid19_cases character varying,
    crude_rate_per_hundred_thousand character varying
);


ALTER TABLE public.covid OWNER TO postgres;

--
-- TOC entry 2817 (class 0 OID 17115)
-- Dependencies: 202
-- Data for Name: covid; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.covid (id, zip_code, covid19_cases, crude_rate_per_hundred_thousand) FROM stdin;
0	64101	SUPP*	Not Caclulated**
1	64102	SUPP*	Not Caclulated**
2	64105	19	Not Caclulated**
3	64106	80	857.82
4	64108	60	769.33
5	64109	43	445.73
6	64110	47	273.64
7	64111	46	258.41
8	64112	24	287.36
9	64113	24	200.20
10	64114	53	217.17
11	64116	104	976.62
12	64117	82	583.63
13	64118	92	422.33
14	64119	76	436.26
15	64120	SUPP*	Not Caclulated**
16	64123	219	2286.01
17	64124	316	2973.84
18	64125	31	0.00
19	64126	75	1334.28
20	64127	182	1177.46
21	64128	92	808.51
22	64129	35	411.86
23	64130	100	500.10
24	64131	61	266.00
25	64132	49	330.70
26	64133	67	410.59
27	64134	84	351.85
28	64136	8	Not Caclulated**
29	64137	70	657.52
30	64138	44	325.97
31	64139	SUPP*	Not Caclulated**
32	64145	18	Not Caclulated**
33	64146	SUPP*	Not Caclulated**
34	64147	SUPP*	Not Caclulated**
35	64149	SUPP*	Not Caclulated**
36	64151	58	268.93
37	64152	27	289.39
38	64153	16	331.81
39	64154	40	367.14
40	64155	72	314.18
41	64156	18	0.00
42	64157	58	291.19
43	64158	19	376.91
44	64161	SUPP*	Not Caclulated**
45	64163	SUPP*	Not Caclulated**
46	64164	SUPP*	Not Caclulated**
47	64165	SUPP*	Not Caclulated**
48	64166	SUPP*	Not Caclulated**
49	64167	SUPP*	Not Caclulated**
\.


--
-- TOC entry 2690 (class 2606 OID 17122)
-- Name: covid covid_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.covid
    ADD CONSTRAINT covid_pkey PRIMARY KEY (id);


-- Completed on 2020-07-18 08:29:58

--
-- PostgreSQL database dump complete
--

