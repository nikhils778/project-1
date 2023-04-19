--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _admin; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._admin (
    admin_id smallint,
    admin_name character varying(5) DEFAULT NULL::character varying,
    admin_pass character varying(5) DEFAULT NULL::character varying
);


ALTER TABLE public._admin OWNER TO rebasedata;

--
-- Name: _car; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._car (
    chassis_number smallint,
    model smallint,
    color character varying(6) DEFAULT NULL::character varying
);


ALTER TABLE public._car OWNER TO rebasedata;

--
-- Name: _customer; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._customer (
    c_id smallint,
    name character varying(6) DEFAULT NULL::character varying,
    email character varying(16) DEFAULT NULL::character varying,
    pass character varying(6) DEFAULT NULL::character varying,
    phone integer,
    address character varying(8) DEFAULT NULL::character varying
);


ALTER TABLE public._customer OWNER TO rebasedata;

--
-- Name: _dealership; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dealership (
    d_id integer,
    name character varying(15) DEFAULT NULL::character varying
);


ALTER TABLE public._dealership OWNER TO rebasedata;

--
-- Name: _manufacturer; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._manufacturer (
    m_id integer,
    name character varying(12) DEFAULT NULL::character varying
);


ALTER TABLE public._manufacturer OWNER TO rebasedata;

--
-- Name: _model; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._model (
    model smallint,
    m_id integer,
    name character varying(18) DEFAULT NULL::character varying,
    year character varying(10) DEFAULT NULL::character varying,
    basic_spec character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._model OWNER TO rebasedata;

--
-- Name: _sale2; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._sale2 (
    sale_id smallint,
    customer_id smallint,
    carmodel smallint,
    ordertime character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._sale2 OWNER TO rebasedata;

--
-- Data for Name: _admin; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._admin (admin_id, admin_name, admin_pass) FROM stdin;
1	admin	admin
\.


--
-- Data for Name: _car; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._car (chassis_number, model, color) FROM stdin;
1000	71	blue
1003	72	blue
1004	72	green
1005	73	blue
1006	73	green
1007	74	blue
1008	74	green
1009	75	blue
1110	75	blue
1114	81	yellow
1115	83	red
1116	83	yellow
1117	84	red
1118	84	yellow
1119	85	red
1120	85	red
1121	91	black
1122	91	white
1123	92	black
1124	92	white
1125	93	black
1126	93	white
1127	94	black
1128	94	white
1129	95	black
1130	95	white
1131	1001	orange
1132	1001	silver
1133	1002	orange
1134	1002	orange
1135	1003	orange
1136	1003	silver
1137	1004	orange
1138	1004	silver
1139	1005	orange
1140	1005	silver
1141	1101	silver
1142	1101	silver
1143	1102	silver
1144	1102	silver
1145	1103	silver
1146	1103	silver
1147	1104	silver
1148	1104	silver
1149	1105	silver
1150	1105	silver
1151	1201	white
1152	1201	white
1153	1202	white
1154	1202	white
1155	1203	white
1156	1203	white
1157	1204	white
1158	1204	white
1159	1205	white
1160	1205	white
\.


--
-- Data for Name: _customer; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._customer (c_id, name, email, pass, phone, address) FROM stdin;
1	sourav	sourav@gmail.com	sourav	80808080	banglore
2	ankur	ankur@gmail.com	ankur	907868	delhi
\.


--
-- Data for Name: _dealership; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dealership (d_id, name) FROM stdin;
7001	Galaxy Toyota
8001	Audi Central
9001	BMW One Central
10001	Metro Chevrolet
11001	Aston Martin
12001	Mistubishi
\.


--
-- Data for Name: _manufacturer; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._manufacturer (m_id, name) FROM stdin;
7001	Toyota
8001	Audi
9001	BMW
10001	Chevrolet
11001	Aston Martin
12001	Mitsubishi
\.


--
-- Data for Name: _model; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._model (model, m_id, name, year, basic_spec) FROM stdin;
71	7001	Land Cruiser Prado	2015-01-01	
72	7001	Fortuner	2017-01-01	
73	7001	Camry	2017-01-01	
74	7001	Innova Crysta	2016-01-01	
75	7001	Etios Cross	2015-01-01	
81	8001	R8	2016-01-01	
82	8001	Q7	2015-01-01	
83	8001	RS7	2016-01-01	
84	8001	A8	2017-01-01	
85	8001	TT	2015-01-01	
91	9001	M4	2016-01-01	
92	9001	X6	2017-01-01	
93	9001	i8	2015-01-01	
94	9001	M3	2017-01-01	
95	9001	X3	2016-01-01	
1001	10001	Trailblazer	2016-01-01	
1002	10001	Cruze	2017-01-01	
1003	10001	Sail	2015-01-01	
1004	10001	Beat	2017-01-01	
1005	10001	Volt	2016-01-01	
1101	11001	Db11	2014-01-01	
1102	11001	Rapide	2015-01-01	
1103	11001	Vanquish	2014-01-01	
1104	11001	Vantage	2015-01-01	
1105	11001	Vulcan	2015-01-01	
1201	12001	Cedia	2012-01-01	
1202	12001	Lancer	2002-01-01	
1203	12001	Montero	2013-01-01	
1204	12001	Outlander	2016-01-01	
1205	12001	Pajero	2014-01-01	
\.


--
-- Data for Name: _sale2; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._sale2 (sale_id, customer_id, carmodel, ordertime) FROM stdin;
1	1	72	2017-11-20 21:40:31
2	2	81	2017-11-20 21:44:35
3	1	81	2017-11-20 21:45:33
4	1	81	2017-11-20 21:46:54
\.


--
-- PostgreSQL database dump complete
--

