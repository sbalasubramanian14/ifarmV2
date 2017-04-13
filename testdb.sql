--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.5
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
-- Name: cultivation; Type: TABLE; Schema: ifarm; Owner: postgres
--

CREATE TABLE cultivation (
    land_no character varying,
    date character varying,
    crop character varying,
    variety character varying,
    p_area integer
);


ALTER TABLE cultivation OWNER TO postgres;

--
-- Name: land; Type: TABLE; Schema: ifarm; Owner: postgres
--

CREATE TABLE land (
    land_no character varying,
    p_area integer,
    soil character varying,
    r_area integer,
    uid character varying
);


ALTER TABLE land OWNER TO postgres;

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
-- Name: users users_pkey; Type: CONSTRAINT; Schema: ifarm; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

