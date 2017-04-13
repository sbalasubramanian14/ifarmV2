--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: ifarm; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ifarm;


ALTER SCHEMA ifarm OWNER TO postgres;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = ifarm, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: chemicals; Type: TABLE; Schema: ifarm; Owner: postgres
--

CREATE TABLE chemicals (
    name character varying,
    type character varying,
    stock integer,
    ppqty integer,
    uid character varying
);


ALTER TABLE chemicals OWNER TO postgres;

--
-- Name: cultivation; Type: TABLE; Schema: ifarm; Owner: postgres
--

CREATE TABLE cultivation (
    land_no character varying,
    date character varying,
    crop character varying,
    variety character varying,
    seeds_qty integer,
    uid character varying
);


ALTER TABLE cultivation OWNER TO postgres;

--
-- Name: dailyexpense; Type: TABLE; Schema: ifarm; Owner: postgres
--

CREATE TABLE dailyexpense (
    date date,
    expense character varying,
    amount integer,
    type character varying,
    uid character varying
);


ALTER TABLE dailyexpense OWNER TO postgres;

--
-- Name: investment; Type: TABLE; Schema: ifarm; Owner: postgres
--

CREATE TABLE investment (
    uid character varying,
    investment_initial integer,
    investment_current integer,
    landno character varying,
    date character varying
);


ALTER TABLE investment OWNER TO postgres;

--
-- Name: labourcharges; Type: TABLE; Schema: ifarm; Owner: postgres
--

CREATE TABLE labourcharges (
    workerid character varying,
    landno character varying,
    date character varying,
    wage integer,
    uid character varying
);


ALTER TABLE labourcharges OWNER TO postgres;

--
-- Name: land; Type: TABLE; Schema: ifarm; Owner: postgres
--

CREATE TABLE land (
    land_no character varying,
    area integer,
    soil character varying,
    uid character varying
);


ALTER TABLE land OWNER TO postgres;

--
-- Name: seed; Type: TABLE; Schema: ifarm; Owner: postgres
--

CREATE TABLE seed (
    variety character varying,
    type character varying,
    stock integer,
    ppqty integer,
    uid character varying
);


ALTER TABLE seed OWNER TO postgres;

--
-- Name: task; Type: TABLE; Schema: ifarm; Owner: postgres
--

CREATE TABLE task (
    title character varying,
    status character varying,
    workers integer,
    uid character varying,
    fid character varying,
    start date,
    "end" date,
    color character varying,
    taskid character varying
);


ALTER TABLE task OWNER TO postgres;

--
-- Name: TABLE task; Type: COMMENT; Schema: ifarm; Owner: postgres
--

COMMENT ON TABLE task IS 'none';


--
-- Name: tool; Type: TABLE; Schema: ifarm; Owner: postgres
--

CREATE TABLE tool (
    name character varying,
    type character varying,
    price integer,
    uid character varying
);


ALTER TABLE tool OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: ifarm; Owner: postgres
--

CREATE TABLE users (
    password character varying(20),
    username character varying NOT NULL,
    fname character varying,
    lname character varying
);


ALTER TABLE users OWNER TO postgres;

--
-- Name: workers; Type: TABLE; Schema: ifarm; Owner: postgres
--

CREATE TABLE workers (
    empid character varying,
    name character varying,
    address character varying,
    mobile bigint,
    category character varying,
    uid character varying
);


ALTER TABLE workers OWNER TO postgres;

--
-- Name: TABLE workers; Type: COMMENT; Schema: ifarm; Owner: postgres
--

COMMENT ON TABLE workers IS 'worker table :P';


--
-- Data for Name: chemicals; Type: TABLE DATA; Schema: ifarm; Owner: postgres
--

COPY chemicals (name, type, stock, ppqty, uid) FROM stdin;
\.


--
-- Data for Name: cultivation; Type: TABLE DATA; Schema: ifarm; Owner: postgres
--

COPY cultivation (land_no, date, crop, variety, seeds_qty, uid) FROM stdin;
T2W001-002	03/07/2017	Paddy	CR Dhan 40 (IET 19253)	10	\N
T2W001-003	03/12/2017	Paddy	Punjab Basmati-2	15	sbala@gmail.com
T2W001-003	03/14/2017	Paddy	Punjab Basmati-2	5	sbala@gmail.com
\.


--
-- Data for Name: dailyexpense; Type: TABLE DATA; Schema: ifarm; Owner: postgres
--

COPY dailyexpense (date, expense, amount, type, uid) FROM stdin;
2017-03-22	Total worker charges of that day.	1200	Labour Charges	sbala@gmail.com
2017-03-22	Machinery working expenses.	300	Machinery Charges	sbala@gmail.com
2017-03-22	Machinery working expenses.	200	Machinery Charges	sbala@gmail.com
2017-03-22	Machinery working expenses.	200	Machinery Charges	sbala@gmail.com
2017-03-22	Tea Charge	100	Miscellaneous Charges	sbala@gmail.com
2017-03-12	Petrol expenses	300	Machinery Charges	sbala@gmail.com
2017-03-15	Irrigation extra charges	500	Miselanous Charges	sbala@gmail.com
2017-03-23	Total worker charges of that day.	400	Labour Charges	sbala@gmail.com
\.


--
-- Data for Name: investment; Type: TABLE DATA; Schema: ifarm; Owner: postgres
--

COPY investment (uid, investment_initial, investment_current, landno, date) FROM stdin;
sbala@gmail.com	200000	199100	T2W001-003	2017-03-22
sbala@gmail.com	100100	96900	T2W001-002	2017-03-22
\.


--
-- Data for Name: labourcharges; Type: TABLE DATA; Schema: ifarm; Owner: postgres
--

COPY labourcharges (workerid, landno, date, wage, uid) FROM stdin;
009	T2W001-002	2017-03-22	500	sbala@gmail.com
015	T2W001-003	2017-03-22	100	sbala@gmail.com
020	T2W001-002	2017-03-22	100	sbala@gmail.com
111	T2W001-002	2017-03-22	500	sbala@gmail.com
009	T2W001-002	2017-03-23	200	sbala@gmail.com
111	T2W001-002	2017-03-23	200	sbala@gmail.com
\.


--
-- Data for Name: land; Type: TABLE DATA; Schema: ifarm; Owner: postgres
--

COPY land (land_no, area, soil, uid) FROM stdin;
T2W001-002	0	red	sbala@gmail.com
T2W001-003	10	alluvial	sbala@gmail.com
\.


--
-- Data for Name: seed; Type: TABLE DATA; Schema: ifarm; Owner: postgres
--

COPY seed (variety, type, stock, ppqty, uid) FROM stdin;
Punjab Basmati-2	Paddy	5	100	sbala@gmail.com
\.


--
-- Data for Name: task; Type: TABLE DATA; Schema: ifarm; Owner: postgres
--

COPY task (title, status, workers, uid, fid, start, "end", color, taskid) FROM stdin;
Harvesting	Pending	10	sbala@gmail.com	T2W001-002_Paddy	2017-03-07	2017-03-08	#FF0000	Harvesting.2017-03-07 00:00:00
Sacking	Pending	15	sbala@gmail.com	T2W001-002_Paddy	2017-03-08	2017-03-09	#0071c5	Sacking.2017-03-08 00:00:00
\.


--
-- Data for Name: tool; Type: TABLE DATA; Schema: ifarm; Owner: postgres
--

COPY tool (name, type, price, uid) FROM stdin;
Belarus 3022	Tractor	5000	sbala@gmail.com
Farm truck 001	Truck	1000	sbala@gmail.com
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: ifarm; Owner: postgres
--

COPY users (password, username, fname, lname) FROM stdin;
123456	sbala@gmail.com	Bala	S
\.


--
-- Data for Name: workers; Type: TABLE DATA; Schema: ifarm; Owner: postgres
--

COPY workers (empid, name, address, mobile, category, uid) FROM stdin;
010	Naga	World	9876543210	Operator	sbala@gmail.com
009	Govarthanan	Indian	999999997	Operator	sbala@gmail.com
015	Dharun	world	9543820340	Labour	sbala@gmail.com
020	Pallls	 :) Mars	9514732681	Labour	sbala@gmail.com
111	Rajesh	Venus	9876543210	Operator	sbala@gmail.com
\.


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: ifarm; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- PostgreSQL database dump complete
--

