--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.12
-- Dumped by pg_dump version 9.6.12

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
-- Name: alumni_tracker_app_alumnus; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_alumnus (
    id integer NOT NULL,
    severence_date date,
    organization_role_capacity_id integer NOT NULL,
    person_id integer NOT NULL,
    severence_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_alumnus OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_alumnus_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_alumnus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_alumnus_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_alumnus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_alumnus_id_seq OWNED BY public.alumni_tracker_app_alumnus.id;


--
-- Name: alumni_tracker_app_alumnuscheckin; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_alumnuscheckin (
    id integer NOT NULL,
    occured date NOT NULL,
    last_updated date,
    employed boolean NOT NULL,
    enrolled boolean NOT NULL,
    caregiver boolean NOT NULL,
    notes text,
    alumnus_person_id integer NOT NULL,
    conducted_by_id integer NOT NULL,
    last_updated_by_id integer,
    human_conducted boolean NOT NULL,
    notaa boolean NOT NULL,
    military boolean NOT NULL
);


ALTER TABLE public.alumni_tracker_app_alumnuscheckin OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_alumnuscheckin_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_alumnuscheckin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_alumnuscheckin_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_alumnuscheckin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_alumnuscheckin_id_seq OWNED BY public.alumni_tracker_app_alumnuscheckin.id;


--
-- Name: alumni_tracker_app_alumnuscheckincommongoodtag; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_alumnuscheckincommongoodtag (
    id integer NOT NULL,
    checkin_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_alumnuscheckincommongoodtag OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_alumnuscheckincommongoodtag_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_alumnuscheckincommongoodtag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_alumnuscheckincommongoodtag_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_alumnuscheckincommongoodtag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_alumnuscheckincommongoodtag_id_seq OWNED BY public.alumni_tracker_app_alumnuscheckincommongoodtag.id;


--
-- Name: alumni_tracker_app_alumnuscheckinemployment; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_alumnuscheckinemployment (
    id integer NOT NULL,
    paid boolean NOT NULL,
    title character varying(100),
    discontinued boolean NOT NULL,
    start_date date,
    stop_date date,
    satisfaction character varying(2),
    compensation_type character varying(1),
    compensation_ammount numeric(9,2),
    hourly_approx_weekly_hours integer,
    alumnus_checkin_id integer NOT NULL,
    continuation_of_id integer,
    continued_in_id integer,
    employer_id integer NOT NULL,
    extent_id integer,
    position_id integer,
    work_state_id integer,
    CONSTRAINT alumni_tracker_app_alumnuschec_hourly_approx_weekly_hours_check CHECK ((hourly_approx_weekly_hours >= 0))
);


ALTER TABLE public.alumni_tracker_app_alumnuscheckinemployment OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_alumnuscheckinemployment_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_alumnuscheckinemployment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_alumnuscheckinemployment_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_alumnuscheckinemployment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_alumnuscheckinemployment_id_seq OWNED BY public.alumni_tracker_app_alumnuscheckinemployment.id;


--
-- Name: alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit (
    id integer NOT NULL,
    benefit_id integer NOT NULL,
    checkin_employment_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_alumnuscheckinemploymentemploymentben_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_alumnuscheckinemploymentemploymentben_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_alumnuscheckinemploymentemploymentben_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_alumnuscheckinemploymentemploymentben_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_alumnuscheckinemploymentemploymentben_id_seq OWNED BY public.alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit.id;


--
-- Name: alumni_tracker_app_alumnuscheckinemploymenttag; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_alumnuscheckinemploymenttag (
    id integer NOT NULL,
    checkin_employment_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_alumnuscheckinemploymenttag OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_alumnuscheckinemploymenttag_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_alumnuscheckinemploymenttag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_alumnuscheckinemploymenttag_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_alumnuscheckinemploymenttag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_alumnuscheckinemploymenttag_id_seq OWNED BY public.alumni_tracker_app_alumnuscheckinemploymenttag.id;


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_alumnuscheckinenrollment (
    id integer NOT NULL,
    start_date date,
    stop_date date,
    completed boolean NOT NULL,
    discontinued boolean NOT NULL,
    alumnus_checkin_id integer NOT NULL,
    continuation_of_id integer,
    continued_in_id integer,
    credential_awarder_id integer NOT NULL,
    credential_goal_id integer,
    extent_id integer,
    study_state_id integer
);


ALTER TABLE public.alumni_tracker_app_alumnuscheckinenrollment OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_alumnuscheckinenrollment_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_alumnuscheckinenrollment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_alumnuscheckinenrollment_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_alumnuscheckinenrollment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_alumnuscheckinenrollment_id_seq OWNED BY public.alumni_tracker_app_alumnuscheckinenrollment.id;


--
-- Name: alumni_tracker_app_alumnuscheckinenrollmenttag; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_alumnuscheckinenrollmenttag (
    id integer NOT NULL,
    checkin_enrollment_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_alumnuscheckinenrollmenttag OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_alumnuscheckinenrollmenttag_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_alumnuscheckinenrollmenttag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_alumnuscheckinenrollmenttag_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_alumnuscheckinenrollmenttag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_alumnuscheckinenrollmenttag_id_seq OWNED BY public.alumni_tracker_app_alumnuscheckinenrollmenttag.id;


--
-- Name: alumni_tracker_app_alumnuscredential; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_alumnuscredential (
    id integer NOT NULL,
    earned_on date NOT NULL,
    alumnus_person_id integer NOT NULL,
    credential_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_alumnuscredential OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_alumnuscredential_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_alumnuscredential_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_alumnuscredential_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_alumnuscredential_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_alumnuscredential_id_seq OWNED BY public.alumni_tracker_app_alumnuscredential.id;


--
-- Name: alumni_tracker_app_checkinbookmark; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_checkinbookmark (
    id integer NOT NULL,
    created date NOT NULL,
    notes text,
    checkin_id integer NOT NULL,
    user_profile_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_checkinbookmark OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_checkinbookmark_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_checkinbookmark_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_checkinbookmark_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_checkinbookmark_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_checkinbookmark_id_seq OWNED BY public.alumni_tracker_app_checkinbookmark.id;


--
-- Name: alumni_tracker_app_checkincommongoodtag; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_checkincommongoodtag (
    id integer NOT NULL,
    tag character varying(100) NOT NULL,
    taxonomy_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_checkincommongoodtag OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_checkincommongoodtag_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_checkincommongoodtag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_checkincommongoodtag_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_checkincommongoodtag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_checkincommongoodtag_id_seq OWNED BY public.alumni_tracker_app_checkincommongoodtag.id;


--
-- Name: alumni_tracker_app_checkincommongoodtaxonomy; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_checkincommongoodtaxonomy (
    id integer NOT NULL,
    taxonomy character varying(100) NOT NULL
);


ALTER TABLE public.alumni_tracker_app_checkincommongoodtaxonomy OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_checkincommongoodtaxonomy_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_checkincommongoodtaxonomy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_checkincommongoodtaxonomy_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_checkincommongoodtaxonomy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_checkincommongoodtaxonomy_id_seq OWNED BY public.alumni_tracker_app_checkincommongoodtaxonomy.id;


--
-- Name: alumni_tracker_app_checkinemploymenttag; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_checkinemploymenttag (
    id integer NOT NULL,
    tag character varying(100) NOT NULL,
    taxonomy_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_checkinemploymenttag OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_checkinemploymenttag_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_checkinemploymenttag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_checkinemploymenttag_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_checkinemploymenttag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_checkinemploymenttag_id_seq OWNED BY public.alumni_tracker_app_checkinemploymenttag.id;


--
-- Name: alumni_tracker_app_checkinemploymenttaxonomy; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_checkinemploymenttaxonomy (
    id integer NOT NULL,
    taxonomy character varying(100) NOT NULL
);


ALTER TABLE public.alumni_tracker_app_checkinemploymenttaxonomy OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_checkinemploymenttaxonomy_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_checkinemploymenttaxonomy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_checkinemploymenttaxonomy_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_checkinemploymenttaxonomy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_checkinemploymenttaxonomy_id_seq OWNED BY public.alumni_tracker_app_checkinemploymenttaxonomy.id;


--
-- Name: alumni_tracker_app_checkinenrollmenttag; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_checkinenrollmenttag (
    id integer NOT NULL,
    tag character varying(100) NOT NULL,
    taxonomy_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_checkinenrollmenttag OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_checkinenrollmenttag_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_checkinenrollmenttag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_checkinenrollmenttag_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_checkinenrollmenttag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_checkinenrollmenttag_id_seq OWNED BY public.alumni_tracker_app_checkinenrollmenttag.id;


--
-- Name: alumni_tracker_app_checkinenrollmenttaxonomy; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_checkinenrollmenttaxonomy (
    id integer NOT NULL,
    taxonomy character varying(100) NOT NULL
);


ALTER TABLE public.alumni_tracker_app_checkinenrollmenttaxonomy OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_checkinenrollmenttaxonomy_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_checkinenrollmenttaxonomy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_checkinenrollmenttaxonomy_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_checkinenrollmenttaxonomy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_checkinenrollmenttaxonomy_id_seq OWNED BY public.alumni_tracker_app_checkinenrollmenttaxonomy.id;


--
-- Name: alumni_tracker_app_credential; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_credential (
    id integer NOT NULL,
    focus character varying(100) NOT NULL,
    awarder_id integer NOT NULL,
    type_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_credential OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_credential_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_credential_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_credential_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_credential_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_credential_id_seq OWNED BY public.alumni_tracker_app_credential.id;


--
-- Name: alumni_tracker_app_datadashboard; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_datadashboard (
    id integer NOT NULL,
    drive_file_id character varying(100) NOT NULL,
    url character varying(255) NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.alumni_tracker_app_datadashboard OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_datadashboard_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_datadashboard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_datadashboard_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_datadashboard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_datadashboard_id_seq OWNED BY public.alumni_tracker_app_datadashboard.id;


--
-- Name: alumni_tracker_app_datadashboarddatasheet; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_datadashboarddatasheet (
    id integer NOT NULL,
    dashboard_id integer NOT NULL,
    sheet_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_datadashboarddatasheet OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_datadashboarddatasheet_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_datadashboarddatasheet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_datadashboarddatasheet_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_datadashboarddatasheet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_datadashboarddatasheet_id_seq OWNED BY public.alumni_tracker_app_datadashboarddatasheet.id;


--
-- Name: alumni_tracker_app_datasheet; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_datasheet (
    id integer NOT NULL,
    drive_file_id character varying(100) NOT NULL
);


ALTER TABLE public.alumni_tracker_app_datasheet OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_datasheet_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_datasheet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_datasheet_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_datasheet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_datasheet_id_seq OWNED BY public.alumni_tracker_app_datasheet.id;


--
-- Name: alumni_tracker_app_fiscalschoolyear; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_fiscalschoolyear (
    id integer NOT NULL,
    year integer NOT NULL,
    short_name character varying(4) NOT NULL,
    long_name character varying(7) NOT NULL,
    CONSTRAINT alumni_tracker_app_fiscalschoolyear_year_check CHECK ((year >= 0))
);


ALTER TABLE public.alumni_tracker_app_fiscalschoolyear OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_fiscalschoolyear_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_fiscalschoolyear_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_fiscalschoolyear_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_fiscalschoolyear_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_fiscalschoolyear_id_seq OWNED BY public.alumni_tracker_app_fiscalschoolyear.id;


--
-- Name: alumni_tracker_app_language; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_language (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.alumni_tracker_app_language OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_language_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_language_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_language_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_language_id_seq OWNED BY public.alumni_tracker_app_language.id;


--
-- Name: alumni_tracker_app_metaacademiccoursecontentarea; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_metaacademiccoursecontentarea (
    id integer NOT NULL,
    content_area character varying(100) NOT NULL,
    seminal boolean NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaacademiccoursecontentarea OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaacademiccoursecontentarea_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_metaacademiccoursecontentarea_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaacademiccoursecontentarea_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaacademiccoursecontentarea_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_metaacademiccoursecontentarea_id_seq OWNED BY public.alumni_tracker_app_metaacademiccoursecontentarea.id;


--
-- Name: alumni_tracker_app_metacredentialtype; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_metacredentialtype (
    id integer NOT NULL,
    type character varying(100) NOT NULL,
    seminal boolean NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metacredentialtype OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metacredentialtype_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_metacredentialtype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metacredentialtype_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metacredentialtype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_metacredentialtype_id_seq OWNED BY public.alumni_tracker_app_metacredentialtype.id;


--
-- Name: alumni_tracker_app_metaemploymentbenefit; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_metaemploymentbenefit (
    id integer NOT NULL,
    benefit character varying(100) NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaemploymentbenefit OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaemploymentbenefit_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_metaemploymentbenefit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaemploymentbenefit_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaemploymentbenefit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_metaemploymentbenefit_id_seq OWNED BY public.alumni_tracker_app_metaemploymentbenefit.id;


--
-- Name: alumni_tracker_app_metaemploymentextent; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_metaemploymentextent (
    id integer NOT NULL,
    extent character varying(100) NOT NULL,
    seminal boolean NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaemploymentextent OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaemploymentextent_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_metaemploymentextent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaemploymentextent_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaemploymentextent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_metaemploymentextent_id_seq OWNED BY public.alumni_tracker_app_metaemploymentextent.id;


--
-- Name: alumni_tracker_app_metaemploymentposition; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_metaemploymentposition (
    id integer NOT NULL,
    "position" character varying(100) NOT NULL,
    seminal boolean NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaemploymentposition OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaemploymentposition_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_metaemploymentposition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaemploymentposition_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaemploymentposition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_metaemploymentposition_id_seq OWNED BY public.alumni_tracker_app_metaemploymentposition.id;


--
-- Name: alumni_tracker_app_metaenrollmentextent; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_metaenrollmentextent (
    id integer NOT NULL,
    extent character varying(100) NOT NULL,
    seminal boolean NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaenrollmentextent OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaenrollmentextent_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_metaenrollmentextent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaenrollmentextent_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaenrollmentextent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_metaenrollmentextent_id_seq OWNED BY public.alumni_tracker_app_metaenrollmentextent.id;


--
-- Name: alumni_tracker_app_metaorganizationgrouptype; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_metaorganizationgrouptype (
    id integer NOT NULL,
    group_type character varying(100) NOT NULL,
    seminal boolean NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaorganizationgrouptype OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaorganizationgrouptype_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_metaorganizationgrouptype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaorganizationgrouptype_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaorganizationgrouptype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_metaorganizationgrouptype_id_seq OWNED BY public.alumni_tracker_app_metaorganizationgrouptype.id;


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationro5728; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_metaorganizationmembershiporganizationro5728 (
    id integer NOT NULL,
    member_role character varying(100) NOT NULL,
    seminal boolean NOT NULL,
    capacity_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaorganizationmembershiporganizationro5728 OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizati_id_seq1; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq1 OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizati_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq1 OWNED BY public.alumni_tracker_app_metaorganizationmembershiporganizationro5728.id;


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationroceaf; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_metaorganizationmembershiporganizationroceaf (
    id integer NOT NULL,
    perspective character varying(100) NOT NULL,
    seminal boolean NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaorganizationmembershiporganizationroceaf OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizati_id_seq2; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq2 OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizati_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq2 OWNED BY public.alumni_tracker_app_metaorganizationmembershiporganizationroceaf.id;


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationro0b6e; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_metaorganizationmembershiporganizationro0b6e (
    id integer NOT NULL,
    severence character varying(100) NOT NULL,
    abbreviation character varying(25),
    seminal boolean NOT NULL,
    role_capacity_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaorganizationmembershiporganizationro0b6e OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizati_id_seq3; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq3
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq3 OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizati_id_seq3; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq3 OWNED BY public.alumni_tracker_app_metaorganizationmembershiporganizationro0b6e.id;


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationroacdd; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_metaorganizationmembershiporganizationroacdd (
    id integer NOT NULL,
    entrance character varying(100) NOT NULL,
    abbreviation character varying(25),
    seminal boolean NOT NULL,
    role_capacity_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaorganizationmembershiporganizationroacdd OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizatio_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_metaorganizationmembershiporganizatio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaorganizationmembershiporganizatio_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizatio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_metaorganizationmembershiporganizatio_id_seq OWNED BY public.alumni_tracker_app_metaorganizationmembershiporganizationroacdd.id;


--
-- Name: alumni_tracker_app_metaorganizationrole; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_metaorganizationrole (
    id integer NOT NULL,
    role character varying(100) NOT NULL,
    seminal boolean NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaorganizationrole OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaorganizationrole_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_metaorganizationrole_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaorganizationrole_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaorganizationrole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_metaorganizationrole_id_seq OWNED BY public.alumni_tracker_app_metaorganizationrole.id;


--
-- Name: alumni_tracker_app_metaorganizationrolecapacity; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_metaorganizationrolecapacity (
    id integer NOT NULL,
    capacity character varying(100) NOT NULL,
    seminal boolean NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaorganizationrolecapacity OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaorganizationrolecapacity_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_metaorganizationrolecapacity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaorganizationrolecapacity_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaorganizationrolecapacity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_metaorganizationrolecapacity_id_seq OWNED BY public.alumni_tracker_app_metaorganizationrolecapacity.id;


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityalumnusseverence; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_metaorganizationrolecapacityalumnusseverence (
    id integer NOT NULL,
    severence character varying(100) NOT NULL,
    abbreviation character varying(25),
    role_capacity_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaorganizationrolecapacityalumnusseverence OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaorganizationrolecapacityalumnusse_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_metaorganizationrolecapacityalumnusse_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaorganizationrolecapacityalumnusse_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaorganizationrolecapacityalumnusse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_metaorganizationrolecapacityalumnusse_id_seq OWNED BY public.alumni_tracker_app_metaorganizationrolecapacityalumnusseverence.id;


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityepoch; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_metaorganizationrolecapacityepoch (
    id integer NOT NULL,
    epoch character varying(50) NOT NULL,
    week_length integer NOT NULL,
    seminal boolean NOT NULL,
    capacity_id integer NOT NULL,
    CONSTRAINT alumni_tracker_app_metaorganizationrolecapaci_week_length_check CHECK ((week_length >= 0))
);


ALTER TABLE public.alumni_tracker_app_metaorganizationrolecapacityepoch OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaorganizationrolecapacityepoch_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_metaorganizationrolecapacityepoch_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaorganizationrolecapacityepoch_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaorganizationrolecapacityepoch_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_metaorganizationrolecapacityepoch_id_seq OWNED BY public.alumni_tracker_app_metaorganizationrolecapacityepoch.id;


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityrelationship3375; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_metaorganizationrolecapacityrelationship3375 (
    id integer NOT NULL,
    perspective character varying(100) NOT NULL,
    seminal boolean NOT NULL,
    capacity_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaorganizationrolecapacityrelationship3375 OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaorganizationrolecapacityrelations_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_metaorganizationrolecapacityrelations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaorganizationrolecapacityrelations_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_metaorganizationrolecapacityrelations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_metaorganizationrolecapacityrelations_id_seq OWNED BY public.alumni_tracker_app_metaorganizationrolecapacityrelationship3375.id;


--
-- Name: alumni_tracker_app_organization; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organization (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    image_url character varying(100)
);


ALTER TABLE public.alumni_tracker_app_organization OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organization_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organization_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organization_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organization_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organization_id_seq OWNED BY public.alumni_tracker_app_organization.id;


--
-- Name: alumni_tracker_app_organizationrole; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organizationrole (
    id integer NOT NULL,
    image_url character varying(100),
    organization_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrole OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrole_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrole_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrole_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrole_id_seq OWNED BY public.alumni_tracker_app_organizationrole.id;


--
-- Name: alumni_tracker_app_organizationrolecapacity; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacity (
    id integer NOT NULL,
    image_url character varying(100),
    organization_role_id integer NOT NULL,
    role_capacity_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacity OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacity_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacity_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacity_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacity.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckincommongoo6791; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitycheckincommongoo6791 (
    id integer NOT NULL,
    organization_role_capacity_id integer NOT NULL,
    taxonomy_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitycheckincommongoo6791 OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitycheckincommon_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitycheckincommon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitycheckincommon_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitycheckincommon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitycheckincommon_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacitycheckincommongoo6791.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinemploymena215; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitycheckinemploymena215 (
    id integer NOT NULL,
    organization_role_capacity_id integer NOT NULL,
    taxonomy_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitycheckinemploymena215 OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinemploy_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitycheckinemploy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitycheckinemploy_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinemploy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitycheckinemploy_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacitycheckinemploymena215.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e (
    id integer NOT NULL,
    organization_role_capacity_id integer NOT NULL,
    taxonomy_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinenroll_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitycheckinenroll_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitycheckinenroll_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinenroll_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitycheckinenroll_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e.id;


--
-- Name: alumni_tracker_app_organizationrolecapacityepoch; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacityepoch (
    id integer NOT NULL,
    advent_week_offset integer NOT NULL,
    capacity_id integer NOT NULL,
    epoch_id integer NOT NULL,
    start_fsy_id integer NOT NULL,
    start_fsy_day_id integer NOT NULL,
    stop_fsy_id integer NOT NULL,
    stop_fsy_day_id integer NOT NULL,
    CONSTRAINT alumni_tracker_app_organizationrolecap_advent_week_offset_check CHECK ((advent_week_offset >= 0))
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacityepoch OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacityepoch_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacityepoch_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacityepoch_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacityepoch_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacityepoch_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacityepoch.id;


--
-- Name: alumni_tracker_app_organizationrolecapacityfsyday; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacityfsyday (
    id integer NOT NULL,
    fsy_seq integer,
    instructional boolean NOT NULL,
    calendar_date date NOT NULL,
    capacity_id integer NOT NULL,
    fsy_id integer NOT NULL,
    CONSTRAINT alumni_tracker_app_organizationrolecapacityfsyday_fsy_seq_check CHECK ((fsy_seq >= 0))
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacityfsyday OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacityfsyday_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacityfsyday_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacityfsyday_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacityfsyday_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacityfsyday_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacityfsyday.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroup; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitygroup (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    group_type_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroup OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroup_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroup_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroup_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacitygroup.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3 (
    id integer NOT NULL,
    content_area_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3 OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademi_id_seq1; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroupacademi_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroupacademi_id_seq1 OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademi_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroupacademi_id_seq1 OWNED BY public.alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademiccourse; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitygroupacademiccourse (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    abbreviation character varying(100) NOT NULL,
    code character varying(25) NOT NULL,
    max_accru_credits numeric(3,2),
    group_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroupacademiccourse OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademic_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroupacademic_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroupacademic_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroupacademic_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacitygroupacademiccourse.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    abbreviation character varying(100) NOT NULL,
    code character varying(25) NOT NULL,
    max_accru_credits numeric(3,2),
    group_membership_id integer NOT NULL,
    orc_gac_alias_id integer
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq1; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq1 OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq1 OWNED BY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa4723; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitygroupmembershipa4723 (
    id integer NOT NULL,
    content_area_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroupmembershipa4723 OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq2; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq2 OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq2 OWNED BY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa4723.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembership; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitygroupmembership (
    id integer NOT NULL,
    group_id integer NOT NULL,
    role_capacity_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroupmembership OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembersh_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroupmembersh_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroupmembersh_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembersh_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroupmembersh_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacitygroupmembership.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembership; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitymembership (
    id integer NOT NULL,
    organization_role_capacity_id integer NOT NULL,
    person_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitymembership OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitymembership_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitymembership_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitymembership_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitymembership_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitymembership_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacitymembership.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprelatid708; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708 (
    id integer NOT NULL,
    perspective_id integer NOT NULL,
    source_membership_id integer NOT NULL,
    target_membership_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708 OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprel_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitymembershiprel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitymembershiprel_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitymembershiprel_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiproleenum; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitymembershiproleenum (
    id integer NOT NULL,
    capacity_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitymembershiproleenum OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitymembershipro_id_seq1; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitymembershipro_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitymembershipro_id_seq1 OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitymembershipro_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitymembershipro_id_seq1 OWNED BY public.alumni_tracker_app_organizationrolecapacitymembershiproleenum.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiproleeneed9; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitymembershiproleeneed9 (
    id integer NOT NULL,
    dashboard_id integer NOT NULL,
    enumed_role_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitymembershiproleeneed9 OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitymembershipro_id_seq2; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitymembershipro_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitymembershipro_id_seq2 OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitymembershipro_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitymembershipro_id_seq2 OWNED BY public.alumni_tracker_app_organizationrolecapacitymembershiproleeneed9.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprole; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitymembershiprole (
    id integer NOT NULL,
    entrance_id integer,
    enumed_role_id integer NOT NULL,
    membership_id integer NOT NULL,
    severence_id integer,
    start_fsy_day_id integer,
    stop_fsy_day_id integer
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitymembershiprole OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprol_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitymembershiprol_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitymembershiprol_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitymembershiprol_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacitymembershiprole.id;


--
-- Name: alumni_tracker_app_organizationrolecapacityrelationship; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacityrelationship (
    id integer NOT NULL,
    perspective_id integer NOT NULL,
    source_capacity_id integer NOT NULL,
    target_capacity_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacityrelationship OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacityrelationship_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacityrelationship_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacityrelationship_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacityrelationship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacityrelationship_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacityrelationship.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomy; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitytaxonomy (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    seminal boolean NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitytaxonomy OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomy_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitytaxonomy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitytaxonomy_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitytaxonomy_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacitytaxonomy.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomyterm; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitytaxonomyterm (
    id integer NOT NULL,
    term character varying(100) NOT NULL,
    taxonomy_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitytaxonomyterm OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomyterm_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitytaxonomyterm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitytaxonomyterm_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomyterm_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitytaxonomyterm_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacitytaxonomyterm.id;


--
-- Name: alumni_tracker_app_organizationrolecapacityterm; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacityterm (
    id integer NOT NULL,
    capacity_id integer NOT NULL,
    term_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacityterm OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacityterm_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacityterm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacityterm_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacityterm_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacityterm_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacityterm.id;


--
-- Name: alumni_tracker_app_organizationrolecapacityuser; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacityuser (
    id integer NOT NULL,
    role_capacity_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacityuser OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacityuser_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacityuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacityuser_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_organizationrolecapacityuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacityuser_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacityuser.id;


--
-- Name: alumni_tracker_app_performancemeasure; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_performancemeasure (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    abbreviation character varying(10) NOT NULL
);


ALTER TABLE public.alumni_tracker_app_performancemeasure OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_performancemeasure_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_performancemeasure_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_performancemeasure_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_performancemeasure_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_performancemeasure_id_seq OWNED BY public.alumni_tracker_app_performancemeasure.id;


--
-- Name: alumni_tracker_app_performancemeasuredashboard; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_performancemeasuredashboard (
    id integer NOT NULL,
    dashboard_id integer NOT NULL,
    performance_measure_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_performancemeasuredashboard OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_performancemeasuredashboard_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_performancemeasuredashboard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_performancemeasuredashboard_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_performancemeasuredashboard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_performancemeasuredashboard_id_seq OWNED BY public.alumni_tracker_app_performancemeasuredashboard.id;


--
-- Name: alumni_tracker_app_person; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_person (
    id integer NOT NULL,
    id_mask character varying(100) NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    image_url character varying(100),
    phone character varying(20),
    phone_last_updated_on date,
    email character varying(100),
    email_last_updated_on date,
    mailing_street character varying(255),
    mailing_unit character varying(255),
    mailing_city character varying(255),
    mailing_zip character varying(10),
    mailing_last_updated_on date,
    email_last_updated_by_id integer,
    mailing_last_updated_by_id integer,
    mailing_state_id integer,
    phone_last_updated_by_id integer
);


ALTER TABLE public.alumni_tracker_app_person OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_person_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_person_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_person_id_seq OWNED BY public.alumni_tracker_app_person.id;


--
-- Name: alumni_tracker_app_preferencedomain; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_preferencedomain (
    id integer NOT NULL,
    domain character varying(100) NOT NULL
);


ALTER TABLE public.alumni_tracker_app_preferencedomain OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_preferencedomain_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_preferencedomain_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_preferencedomain_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_preferencedomain_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_preferencedomain_id_seq OWNED BY public.alumni_tracker_app_preferencedomain.id;


--
-- Name: alumni_tracker_app_preferencedomainpreference; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_preferencedomainpreference (
    id integer NOT NULL,
    preference character varying(100) NOT NULL,
    domain_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_preferencedomainpreference OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_preferencedomainpreference_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_preferencedomainpreference_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_preferencedomainpreference_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_preferencedomainpreference_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_preferencedomainpreference_id_seq OWNED BY public.alumni_tracker_app_preferencedomainpreference.id;


--
-- Name: alumni_tracker_app_student; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_student (
    person_id integer NOT NULL,
    stars_id integer,
    CONSTRAINT alumni_tracker_app_student_stars_id_check CHECK ((stars_id >= 0))
);


ALTER TABLE public.alumni_tracker_app_student OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_studentcredithistory; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_studentcredithistory (
    id integer NOT NULL,
    credit_opportunity numeric(4,2) NOT NULL,
    credit_earned boolean NOT NULL,
    grad_contrib boolean NOT NULL,
    accru_adjust numeric(4,2),
    orc_epoch_id integer NOT NULL,
    orc_gac_course_id integer NOT NULL,
    orc_gmac_course_id integer,
    orc_membership_id integer NOT NULL,
    student_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_studentcredithistory OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_studentcredithistory_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_studentcredithistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_studentcredithistory_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_studentcredithistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_studentcredithistory_id_seq OWNED BY public.alumni_tracker_app_studentcredithistory.id;


--
-- Name: alumni_tracker_app_studentenrollmenttrack; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_studentenrollmenttrack (
    membership_role_id integer NOT NULL,
    stint_serial integer,
    attempted_credits numeric(5,2),
    earned_credits numeric(4,2),
    grad_contrib_credits numeric(4,2),
    total_attempted_credits numeric(5,2),
    total_earned_credits numeric(5,2),
    total_grad_contrib_credits numeric(5,2),
    track_attempted_credits numeric(5,2),
    track_earned_credits numeric(5,2),
    track_grad_contrib_credits numeric(5,2),
    entry_age_years integer,
    entry_age_months integer,
    lapsed_prior_weeks integer,
    start_advent_week_offset integer,
    stop_advent_week_offset integer,
    enrollment_week_length integer,
    timeline_total_weeks integer,
    track_timeline_total_weeks integer,
    timeline_prescribed_credit_volume numeric(5,2),
    ontrack_proportion numeric(6,3),
    projected_grad_fsy_id integer,
    start_fsy_id integer,
    stop_fsy_id integer,
    CONSTRAINT alumni_tracker_app_studentenro_track_timeline_total_weeks_check CHECK ((track_timeline_total_weeks >= 0)),
    CONSTRAINT alumni_tracker_app_studentenroll_start_advent_week_offset_check CHECK ((start_advent_week_offset >= 0)),
    CONSTRAINT alumni_tracker_app_studentenrollm_stop_advent_week_offset_check CHECK ((stop_advent_week_offset >= 0)),
    CONSTRAINT alumni_tracker_app_studentenrollme_enrollment_week_length_check CHECK ((enrollment_week_length >= 0)),
    CONSTRAINT alumni_tracker_app_studentenrollment_timeline_total_weeks_check CHECK ((timeline_total_weeks >= 0)),
    CONSTRAINT alumni_tracker_app_studentenrollmenttr_lapsed_prior_weeks_check CHECK ((lapsed_prior_weeks >= 0)),
    CONSTRAINT alumni_tracker_app_studentenrollmenttrac_entry_age_months_check CHECK ((entry_age_months >= 0)),
    CONSTRAINT alumni_tracker_app_studentenrollmenttrack_entry_age_years_check CHECK ((entry_age_years >= 0)),
    CONSTRAINT alumni_tracker_app_studentenrollmenttrack_stint_serial_check CHECK ((stint_serial >= 0))
);


ALTER TABLE public.alumni_tracker_app_studentenrollmenttrack OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_studentidentifiers; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_studentidentifiers (
    id integer NOT NULL,
    identifier character varying(100) NOT NULL,
    capacity_id integer NOT NULL,
    student_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_studentidentifiers OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_studentidentifiers_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_studentidentifiers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_studentidentifiers_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_studentidentifiers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_studentidentifiers_id_seq OWNED BY public.alumni_tracker_app_studentidentifiers.id;


--
-- Name: alumni_tracker_app_studenttransitivedemos; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_studenttransitivedemos (
    id integer NOT NULL,
    current_as_of date NOT NULL,
    gender character varying(1),
    date_of_birth date NOT NULL,
    hispanic boolean NOT NULL,
    african_american boolean NOT NULL,
    asian boolean NOT NULL,
    caucasian boolean NOT NULL,
    native_american boolean NOT NULL,
    pacific_islander boolean NOT NULL,
    ell_current boolean NOT NULL,
    has_children boolean NOT NULL,
    special_ed_current boolean NOT NULL,
    raw_mailing_street character varying(255),
    raw_mailing_city character varying(100),
    raw_mailing_zip character varying(10),
    geocode_lat numeric(8,6),
    geocode_long numeric(9,6),
    home_language_id integer,
    raw_mailing_state_id integer,
    student_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_studenttransitivedemos OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_studenttransitivedemos_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_studenttransitivedemos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_studenttransitivedemos_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_studenttransitivedemos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_studenttransitivedemos_id_seq OWNED BY public.alumni_tracker_app_studenttransitivedemos.id;


--
-- Name: alumni_tracker_app_userprofile; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_userprofile (
    id integer NOT NULL,
    auth_token_relay boolean NOT NULL,
    person_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_userprofile OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_userprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_userprofile_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_userprofile_id_seq OWNED BY public.alumni_tracker_app_userprofile.id;


--
-- Name: alumni_tracker_app_userprofilepreference; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_userprofilepreference (
    id integer NOT NULL,
    value jsonb NOT NULL,
    preference_id integer NOT NULL,
    user_profile_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_userprofilepreference OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_userprofilepreference_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_userprofilepreference_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_userprofilepreference_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_userprofilepreference_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_userprofilepreference_id_seq OWNED BY public.alumni_tracker_app_userprofilepreference.id;


--
-- Name: alumni_tracker_app_usstate; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.alumni_tracker_app_usstate (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    abbreviation character varying(2) NOT NULL
);


ALTER TABLE public.alumni_tracker_app_usstate OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_usstate_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.alumni_tracker_app_usstate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_usstate_id_seq OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_usstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.alumni_tracker_app_usstate_id_seq OWNED BY public.alumni_tracker_app_usstate.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO sva_dba;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO sva_dba;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO sva_dba;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO sva_dba;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO sva_dba;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO sva_dba;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO sva_dba;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO sva_dba;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO sva_dba;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO sva_dba;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO sva_dba;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO sva_dba;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO sva_dba;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO sva_dba;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO sva_dba;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO sva_dba;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO sva_dba;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO sva_dba;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: sva_dba
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO sva_dba;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sva_dba
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: sva_dba
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO sva_dba;

--
-- Name: v_alumnus_ci_at_a_glance; Type: VIEW; Schema: public; Owner: sva_dba
--

CREATE VIEW public.v_alumnus_ci_at_a_glance AS
 SELECT ci_aggd.alum_id,
        CASE
            WHEN ((date_part('month'::text, alum.severence_date) >= (7)::double precision) AND (date_part('month'::text, alum.severence_date) <= (12)::double precision)) THEN (date_part('year'::text, alum.severence_date) + (1)::double precision)
            WHEN (date_part('month'::text, alum.severence_date) <= (6)::double precision) THEN date_part('year'::text, alum.severence_date)
            ELSE NULL::double precision
        END AS graduating_class,
        CASE
            WHEN (ci_aggd.ci_years_post_grad > (2)::double precision) THEN '2+'::text
            WHEN (ci_aggd.ci_years_post_grad = (2)::double precision) THEN '2'::text
            ELSE '1'::text
        END AS years_post_grad,
    ci_aggd.ci_id,
        CASE
            WHEN (ci.enrolled = true) THEN 'Y'::text
            ELSE 'N'::text
        END AS enrolled,
        CASE
            WHEN (ci.employed = true) THEN 'Y'::text
            ELSE 'N'::text
        END AS employed,
        CASE
            WHEN (ci.caregiver = true) THEN 'Y'::text
            ELSE 'N'::text
        END AS caregiver,
        CASE
            WHEN ((ci_common_good.cg_tag_count IS NOT NULL) AND (ci_common_good.cg_tag_count >= 1)) THEN 'Y'::text
            ELSE 'N'::text
        END AS common_good
   FROM (((( SELECT ci_post_grad.alum_id,
            ci_post_grad.ci_years_post_grad,
            ci_post_grad.ci_id,
            max(ci_post_grad.ci_date) AS ci_date
           FROM ( SELECT ci_grad.alum_id,
                    ci_grad.ci_id,
                    ci_grad.ci_date,
                    (ci_grad.occured_year - ci_grad.grad_year) AS ci_years_post_grad
                   FROM ( SELECT alum_1.person_id AS alum_id,
                            ci_1.id AS ci_id,
                            ci_1.occured AS ci_date,
                            date_part('year'::text, ci_1.occured) AS occured_year,
                                CASE
                                    WHEN ((date_part('month'::text, alum_1.severence_date) >= (7)::double precision) AND (date_part('month'::text, alum_1.severence_date) <= (12)::double precision)) THEN (date_part('year'::text, alum_1.severence_date) + (1)::double precision)
                                    WHEN (date_part('month'::text, alum_1.severence_date) <= (6)::double precision) THEN date_part('year'::text, alum_1.severence_date)
                                    ELSE NULL::double precision
                                END AS grad_year
                           FROM (public.alumni_tracker_app_alumnuscheckin ci_1
                             JOIN public.alumni_tracker_app_alumnus alum_1 ON ((ci_1.alumnus_person_id = alum_1.person_id)))
                          WHERE ((alum_1.severence_id = ( SELECT alumni_tracker_app_metaorganizationrolecapacityalumnusseverence.id AS severence_id
                                   FROM public.alumni_tracker_app_metaorganizationrolecapacityalumnusseverence
                                  WHERE ((alumni_tracker_app_metaorganizationrolecapacityalumnusseverence.severence)::text = 'Graduate'::text)
                                 LIMIT 1)) AND (alum_1.organization_role_capacity_id = ( SELECT alumni_tracker_app_organizationrolecapacity.id
                                   FROM public.alumni_tracker_app_organizationrolecapacity
                                  WHERE (alumni_tracker_app_organizationrolecapacity.organization_role_id = ( SELECT alumni_tracker_app_organizationrole.id AS organization_role_id
   FROM public.alumni_tracker_app_organizationrole
  WHERE ((alumni_tracker_app_organizationrole.role_id = ( SELECT alumni_tracker_app_metaorganizationrole.id AS meta_org_role_id
     FROM public.alumni_tracker_app_metaorganizationrole
    WHERE ((alumni_tracker_app_metaorganizationrole.role)::text = 'School'::text)
   LIMIT 1)) AND (alumni_tracker_app_organizationrole.organization_id = ( SELECT alumni_tracker_app_organization.id AS organization_id
     FROM public.alumni_tracker_app_organization
    WHERE ((alumni_tracker_app_organization.name)::text = 'South Valley Academy'::text)
   LIMIT 1)))))
                                 LIMIT 1)))) ci_grad) ci_post_grad
          GROUP BY ci_post_grad.alum_id, ci_post_grad.ci_years_post_grad, ci_post_grad.ci_id) ci_aggd
     JOIN public.alumni_tracker_app_alumnus alum ON ((ci_aggd.alum_id = alum.person_id)))
     JOIN public.alumni_tracker_app_alumnuscheckin ci ON ((ci_aggd.ci_id = ci.id)))
     LEFT JOIN ( SELECT alumni_tracker_app_alumnuscheckincommongoodtag.checkin_id,
            count(*) AS cg_tag_count
           FROM public.alumni_tracker_app_alumnuscheckincommongoodtag
          GROUP BY alumni_tracker_app_alumnuscheckincommongoodtag.checkin_id) ci_common_good ON ((ci_aggd.ci_id = ci_common_good.checkin_id)));


ALTER TABLE public.v_alumnus_ci_at_a_glance OWNER TO sva_dba;

--
-- Name: v_alumnus_ci_common_good; Type: VIEW; Schema: public; Owner: sva_dba
--

CREATE VIEW public.v_alumnus_ci_common_good AS
 SELECT ci_aggd.ci_id,
        CASE
            WHEN ((date_part('month'::text, alum.severence_date) >= (7)::double precision) AND (date_part('month'::text, alum.severence_date) <= (12)::double precision)) THEN (date_part('year'::text, alum.severence_date) + (1)::double precision)
            WHEN (date_part('month'::text, alum.severence_date) <= (6)::double precision) THEN date_part('year'::text, alum.severence_date)
            ELSE NULL::double precision
        END AS graduating_class,
        CASE
            WHEN (ci_aggd.ci_years_post_grad > (2)::double precision) THEN '2+'::text
            WHEN (ci_aggd.ci_years_post_grad = (2)::double precision) THEN '2'::text
            ELSE '1'::text
        END AS years_post_grad,
        CASE
            WHEN (cg_activism.id IS NOT NULL) THEN 'Y'::text
            ELSE 'N'::text
        END AS activism,
        CASE
            WHEN (cg_assistance.id IS NOT NULL) THEN 'Y'::text
            ELSE 'N'::text
        END AS assistance,
        CASE
            WHEN (cg_school_involvement.id IS NOT NULL) THEN 'Y'::text
            ELSE 'N'::text
        END AS school_involvement,
        CASE
            WHEN (cg_volunteerism.id IS NOT NULL) THEN 'Y'::text
            ELSE 'N'::text
        END AS volunteerism
   FROM (((((( SELECT ci_post_grad.alum_id,
            ci_post_grad.ci_years_post_grad,
            ci_post_grad.ci_id,
            max(ci_post_grad.ci_date) AS ci_date
           FROM ( SELECT ci_grad.alum_id,
                    ci_grad.ci_id,
                    ci_grad.ci_date,
                    (ci_grad.occured_year - ci_grad.grad_year) AS ci_years_post_grad
                   FROM ( SELECT alum_1.person_id AS alum_id,
                            ci.id AS ci_id,
                            ci.occured AS ci_date,
                            date_part('year'::text, ci.occured) AS occured_year,
                                CASE
                                    WHEN ((date_part('month'::text, alum_1.severence_date) >= (7)::double precision) AND (date_part('month'::text, alum_1.severence_date) <= (12)::double precision)) THEN (date_part('year'::text, alum_1.severence_date) + (1)::double precision)
                                    WHEN (date_part('month'::text, alum_1.severence_date) <= (6)::double precision) THEN date_part('year'::text, alum_1.severence_date)
                                    ELSE NULL::double precision
                                END AS grad_year
                           FROM (public.alumni_tracker_app_alumnuscheckin ci
                             JOIN public.alumni_tracker_app_alumnus alum_1 ON ((ci.alumnus_person_id = alum_1.person_id)))
                          WHERE ((ci.human_conducted = true) AND (alum_1.severence_id = ( SELECT alumni_tracker_app_metaorganizationrolecapacityalumnusseverence.id AS severence_id
                                   FROM public.alumni_tracker_app_metaorganizationrolecapacityalumnusseverence
                                  WHERE ((alumni_tracker_app_metaorganizationrolecapacityalumnusseverence.severence)::text = 'Graduate'::text)
                                 LIMIT 1)) AND (alum_1.organization_role_capacity_id = ( SELECT alumni_tracker_app_organizationrolecapacity.id
                                   FROM public.alumni_tracker_app_organizationrolecapacity
                                  WHERE (alumni_tracker_app_organizationrolecapacity.organization_role_id = ( SELECT alumni_tracker_app_organizationrole.id AS organization_role_id
   FROM public.alumni_tracker_app_organizationrole
  WHERE ((alumni_tracker_app_organizationrole.role_id = ( SELECT alumni_tracker_app_metaorganizationrole.id AS meta_org_role_id
     FROM public.alumni_tracker_app_metaorganizationrole
    WHERE ((alumni_tracker_app_metaorganizationrole.role)::text = 'School'::text)
   LIMIT 1)) AND (alumni_tracker_app_organizationrole.organization_id = ( SELECT alumni_tracker_app_organization.id AS organization_id
     FROM public.alumni_tracker_app_organization
    WHERE ((alumni_tracker_app_organization.name)::text = 'South Valley Academy'::text)
   LIMIT 1)))))
                                 LIMIT 1)))) ci_grad) ci_post_grad
          GROUP BY ci_post_grad.alum_id, ci_post_grad.ci_years_post_grad, ci_post_grad.ci_id) ci_aggd
     JOIN public.alumni_tracker_app_alumnus alum ON ((ci_aggd.alum_id = alum.person_id)))
     LEFT JOIN ( SELECT alumni_tracker_app_alumnuscheckincommongoodtag.id,
            alumni_tracker_app_alumnuscheckincommongoodtag.checkin_id
           FROM public.alumni_tracker_app_alumnuscheckincommongoodtag
          WHERE (alumni_tracker_app_alumnuscheckincommongoodtag.tag_id IN ( SELECT alumni_tracker_app_checkincommongoodtag.id
                   FROM public.alumni_tracker_app_checkincommongoodtag
                  WHERE ((alumni_tracker_app_checkincommongoodtag.tag)::text = ANY ((ARRAY['Attended a rally or protest'::character varying, 'Voted or attended a political event'::character varying])::text[]))))) cg_activism ON ((ci_aggd.ci_id = cg_activism.id)))
     LEFT JOIN ( SELECT alumni_tracker_app_alumnuscheckincommongoodtag.id,
            alumni_tracker_app_alumnuscheckincommongoodtag.checkin_id
           FROM public.alumni_tracker_app_alumnuscheckincommongoodtag
          WHERE (alumni_tracker_app_alumnuscheckincommongoodtag.tag_id IN ( SELECT alumni_tracker_app_checkincommongoodtag.id
                   FROM public.alumni_tracker_app_checkincommongoodtag
                  WHERE ((alumni_tracker_app_checkincommongoodtag.tag)::text = ANY ((ARRAY['Helped a neighbor'::character varying, 'Physically or financially taken care of family, friends and/or others'::character varying, 'Donated to community organizations or individuals'::character varying])::text[]))))) cg_assistance ON ((ci_aggd.ci_id = cg_assistance.id)))
     LEFT JOIN ( SELECT alumni_tracker_app_alumnuscheckincommongoodtag.id,
            alumni_tracker_app_alumnuscheckincommongoodtag.checkin_id
           FROM public.alumni_tracker_app_alumnuscheckincommongoodtag
          WHERE (alumni_tracker_app_alumnuscheckincommongoodtag.tag_id IN ( SELECT alumni_tracker_app_checkincommongoodtag.id
                   FROM public.alumni_tracker_app_checkincommongoodtag
                  WHERE ((alumni_tracker_app_checkincommongoodtag.tag)::text = 'Been active in their or their child’s school'::text)))) cg_school_involvement ON ((ci_aggd.ci_id = cg_school_involvement.id)))
     LEFT JOIN ( SELECT alumni_tracker_app_alumnuscheckincommongoodtag.id,
            alumni_tracker_app_alumnuscheckincommongoodtag.checkin_id
           FROM public.alumni_tracker_app_alumnuscheckincommongoodtag
          WHERE (alumni_tracker_app_alumnuscheckincommongoodtag.tag_id IN ( SELECT alumni_tracker_app_checkincommongoodtag.id
                   FROM public.alumni_tracker_app_checkincommongoodtag
                  WHERE ((alumni_tracker_app_checkincommongoodtag.tag)::text = ANY ((ARRAY['Been active in their church or neighborhood association'::character varying, 'Been a mentor to another person in any capacity'::character varying, 'Volunteered at a school or in the community'::character varying])::text[]))))) cg_volunteerism ON ((ci_aggd.ci_id = cg_volunteerism.id)));


ALTER TABLE public.v_alumnus_ci_common_good OWNER TO sva_dba;

--
-- Name: v_alumnus_ci_employment; Type: VIEW; Schema: public; Owner: sva_dba
--

CREATE VIEW public.v_alumnus_ci_employment AS
 SELECT
        CASE
            WHEN ((date_part('month'::text, alum.severence_date) >= (7)::double precision) AND (date_part('month'::text, alum.severence_date) <= (12)::double precision)) THEN (date_part('year'::text, alum.severence_date) + (1)::double precision)
            WHEN (date_part('month'::text, alum.severence_date) <= (6)::double precision) THEN date_part('year'::text, alum.severence_date)
            ELSE NULL::double precision
        END AS graduating_class,
        CASE
            WHEN (
            CASE
                WHEN ((date_part('month'::text, alum.severence_date) >= (7)::double precision) AND (date_part('month'::text, alum.severence_date) <= (12)::double precision)) THEN (date_part('year'::text, ci.occured) - (date_part('year'::text, alum.severence_date) + (1)::double precision))
                WHEN (date_part('month'::text, alum.severence_date) <= (6)::double precision) THEN (date_part('year'::text, ci.occured) - date_part('year'::text, alum.severence_date))
                ELSE NULL::double precision
            END > (2)::double precision) THEN '2+'::text
            WHEN (
            CASE
                WHEN ((date_part('month'::text, alum.severence_date) >= (7)::double precision) AND (date_part('month'::text, alum.severence_date) <= (12)::double precision)) THEN (date_part('year'::text, ci.occured) - (date_part('year'::text, alum.severence_date) + (1)::double precision))
                WHEN (date_part('month'::text, alum.severence_date) <= (6)::double precision) THEN (date_part('year'::text, ci.occured) - date_part('year'::text, alum.severence_date))
                ELSE NULL::double precision
            END = (2)::double precision) THEN '2'::text
            WHEN (
            CASE
                WHEN ((date_part('month'::text, alum.severence_date) >= (7)::double precision) AND (date_part('month'::text, alum.severence_date) <= (12)::double precision)) THEN (date_part('year'::text, ci.occured) - (date_part('year'::text, alum.severence_date) + (1)::double precision))
                WHEN (date_part('month'::text, alum.severence_date) <= (6)::double precision) THEN (date_part('year'::text, ci.occured) - date_part('year'::text, alum.severence_date))
                ELSE NULL::double precision
            END <= (1)::double precision) THEN '1'::text
            ELSE NULL::text
        END AS years_after_graduation,
        CASE
            WHEN ((ci_emp.compensation_type)::text = 'H'::text) THEN 'Hourly'::text
            WHEN ((ci_emp.compensation_type)::text = 'S'::text) THEN 'Salaried'::text
            ELSE NULL::text
        END AS compensation,
    ci.occured,
    meta_emp_ext.extent,
    meta_emp_pos."position",
    us_state.abbreviation AS workstate
   FROM ((((((public.alumni_tracker_app_alumnuscheckinemployment ci_emp
     JOIN public.alumni_tracker_app_alumnuscheckin ci ON ((ci_emp.alumnus_checkin_id = ci.id)))
     JOIN public.alumni_tracker_app_person person ON ((ci.alumnus_person_id = person.id)))
     JOIN public.alumni_tracker_app_alumnus alum ON ((person.id = alum.person_id)))
     JOIN public.alumni_tracker_app_metaemploymentextent meta_emp_ext ON ((ci_emp.extent_id = meta_emp_ext.id)))
     JOIN public.alumni_tracker_app_metaemploymentposition meta_emp_pos ON ((ci_emp.position_id = meta_emp_pos.id)))
     JOIN public.alumni_tracker_app_usstate us_state ON ((ci_emp.work_state_id = us_state.id)))
  WHERE ((ci_emp.compensation_type IS NOT NULL) AND (alum.severence_id = ( SELECT alumni_tracker_app_metaorganizationrolecapacityalumnusseverence.id AS severence_id
           FROM public.alumni_tracker_app_metaorganizationrolecapacityalumnusseverence
          WHERE ((alumni_tracker_app_metaorganizationrolecapacityalumnusseverence.severence)::text = 'Graduate'::text)
         LIMIT 1)) AND (alum.organization_role_capacity_id = ( SELECT alumni_tracker_app_organizationrolecapacity.id
           FROM public.alumni_tracker_app_organizationrolecapacity
          WHERE (alumni_tracker_app_organizationrolecapacity.organization_role_id = ( SELECT alumni_tracker_app_organizationrole.id AS organization_role_id
                   FROM public.alumni_tracker_app_organizationrole
                  WHERE ((alumni_tracker_app_organizationrole.role_id = ( SELECT alumni_tracker_app_metaorganizationrole.id AS meta_org_role_id
                           FROM public.alumni_tracker_app_metaorganizationrole
                          WHERE ((alumni_tracker_app_metaorganizationrole.role)::text = 'School'::text)
                         LIMIT 1)) AND (alumni_tracker_app_organizationrole.organization_id = ( SELECT alumni_tracker_app_organization.id AS organization_id
                           FROM public.alumni_tracker_app_organization
                          WHERE ((alumni_tracker_app_organization.name)::text = 'South Valley Academy'::text)
                         LIMIT 1)))))
         LIMIT 1)));


ALTER TABLE public.v_alumnus_ci_employment OWNER TO sva_dba;

--
-- Name: v_alumnus_latest_checkin_severence_dates; Type: VIEW; Schema: public; Owner: sva_dba
--

CREATE VIEW public.v_alumnus_latest_checkin_severence_dates AS
 SELECT alum.person_id AS alumnus_person_id,
    alum.organization_role_capacity_id,
    max(alum.severence_date) AS last_severence_date,
    (
        CASE
            WHEN ((date_part('month'::text, max(alum.severence_date)) >= (7)::double precision) AND (date_part('month'::text, max(alum.severence_date)) <= (12)::double precision)) THEN (date_part('year'::text, max(alum.severence_date)) + (1)::double precision)
            ELSE date_part('year'::text, max(alum.severence_date))
        END)::integer AS last_severence_sy,
    max(alum_ci.occured) AS last_checkin_date,
    (
        CASE
            WHEN ((date_part('month'::text, max(alum_ci.occured)) >= (7)::double precision) AND (date_part('month'::text, max(alum_ci.occured)) <= (12)::double precision)) THEN (date_part('year'::text, max(alum_ci.occured)) + (1)::double precision)
            ELSE date_part('year'::text, max(alum_ci.occured))
        END)::integer AS last_checkin_sy
   FROM (((((public.alumni_tracker_app_alumnus alum
     LEFT JOIN public.alumni_tracker_app_person p ON ((alum.person_id = p.id)))
     LEFT JOIN public.alumni_tracker_app_alumnuscheckin alum_ci ON ((alum.person_id = alum_ci.alumnus_person_id)))
     LEFT JOIN public.alumni_tracker_app_organizationrolecapacity org_role_cap ON ((alum.organization_role_capacity_id = org_role_cap.id)))
     LEFT JOIN public.alumni_tracker_app_organizationrole org_role ON ((org_role_cap.id = org_role.organization_id)))
     LEFT JOIN public.alumni_tracker_app_organization org ON ((org_role.organization_id = org.id)))
  GROUP BY alum.person_id, alum.organization_role_capacity_id, org.name, p.first_name, p.last_name, p.image_url;


ALTER TABLE public.v_alumnus_latest_checkin_severence_dates OWNER TO sva_dba;

--
-- Name: v_sva_alumni_grad_classes; Type: VIEW; Schema: public; Owner: sva_dba
--

CREATE VIEW public.v_sva_alumni_grad_classes AS
 SELECT alum.id AS alumnus_id,
    person.id AS person_id,
    person.first_name,
    person.last_name,
        CASE
            WHEN ((date_part('month'::text, alum.severence_date) >= (7)::double precision) AND (date_part('month'::text, alum.severence_date) <= (12)::double precision)) THEN (date_part('year'::text, alum.severence_date) + (1)::double precision)
            WHEN (date_part('month'::text, alum.severence_date) <= (6)::double precision) THEN date_part('year'::text, alum.severence_date)
            ELSE NULL::double precision
        END AS graduating_class
   FROM (public.alumni_tracker_app_alumnus alum
     JOIN public.alumni_tracker_app_person person ON ((alum.person_id = person.id)))
  WHERE ((alum.severence_id = ( SELECT alumni_tracker_app_metaorganizationrolecapacityalumnusseverence.id AS severence_id
           FROM public.alumni_tracker_app_metaorganizationrolecapacityalumnusseverence
          WHERE ((alumni_tracker_app_metaorganizationrolecapacityalumnusseverence.severence)::text = 'Graduate'::text)
         LIMIT 1)) AND (alum.organization_role_capacity_id = ( SELECT alumni_tracker_app_organizationrolecapacity.id
           FROM public.alumni_tracker_app_organizationrolecapacity
          WHERE (alumni_tracker_app_organizationrolecapacity.organization_role_id = ( SELECT alumni_tracker_app_organizationrole.id AS organization_role_id
                   FROM public.alumni_tracker_app_organizationrole
                  WHERE ((alumni_tracker_app_organizationrole.role_id = ( SELECT alumni_tracker_app_metaorganizationrole.id AS meta_org_role_id
                           FROM public.alumni_tracker_app_metaorganizationrole
                          WHERE ((alumni_tracker_app_metaorganizationrole.role)::text = 'School'::text)
                         LIMIT 1)) AND (alumni_tracker_app_organizationrole.organization_id = ( SELECT alumni_tracker_app_organization.id AS organization_id
                           FROM public.alumni_tracker_app_organization
                          WHERE ((alumni_tracker_app_organization.name)::text = 'South Valley Academy'::text)
                         LIMIT 1)))))
         LIMIT 1)));


ALTER TABLE public.v_sva_alumni_grad_classes OWNER TO sva_dba;

--
-- Name: alumni_tracker_app_alumnus id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnus ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_alumnus_id_seq'::regclass);


--
-- Name: alumni_tracker_app_alumnuscheckin id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckin ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_alumnuscheckin_id_seq'::regclass);


--
-- Name: alumni_tracker_app_alumnuscheckincommongoodtag id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckincommongoodtag ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_alumnuscheckincommongoodtag_id_seq'::regclass);


--
-- Name: alumni_tracker_app_alumnuscheckinemployment id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemployment ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_alumnuscheckinemployment_id_seq'::regclass);


--
-- Name: alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_alumnuscheckinemploymentemploymentben_id_seq'::regclass);


--
-- Name: alumni_tracker_app_alumnuscheckinemploymenttag id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemploymenttag ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_alumnuscheckinemploymenttag_id_seq'::regclass);


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollment ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_alumnuscheckinenrollment_id_seq'::regclass);


--
-- Name: alumni_tracker_app_alumnuscheckinenrollmenttag id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollmenttag ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_alumnuscheckinenrollmenttag_id_seq'::regclass);


--
-- Name: alumni_tracker_app_alumnuscredential id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscredential ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_alumnuscredential_id_seq'::regclass);


--
-- Name: alumni_tracker_app_checkinbookmark id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinbookmark ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_checkinbookmark_id_seq'::regclass);


--
-- Name: alumni_tracker_app_checkincommongoodtag id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkincommongoodtag ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_checkincommongoodtag_id_seq'::regclass);


--
-- Name: alumni_tracker_app_checkincommongoodtaxonomy id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkincommongoodtaxonomy ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_checkincommongoodtaxonomy_id_seq'::regclass);


--
-- Name: alumni_tracker_app_checkinemploymenttag id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinemploymenttag ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_checkinemploymenttag_id_seq'::regclass);


--
-- Name: alumni_tracker_app_checkinemploymenttaxonomy id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinemploymenttaxonomy ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_checkinemploymenttaxonomy_id_seq'::regclass);


--
-- Name: alumni_tracker_app_checkinenrollmenttag id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinenrollmenttag ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_checkinenrollmenttag_id_seq'::regclass);


--
-- Name: alumni_tracker_app_checkinenrollmenttaxonomy id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinenrollmenttaxonomy ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_checkinenrollmenttaxonomy_id_seq'::regclass);


--
-- Name: alumni_tracker_app_credential id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_credential ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_credential_id_seq'::regclass);


--
-- Name: alumni_tracker_app_datadashboard id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_datadashboard ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_datadashboard_id_seq'::regclass);


--
-- Name: alumni_tracker_app_datadashboarddatasheet id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_datadashboarddatasheet ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_datadashboarddatasheet_id_seq'::regclass);


--
-- Name: alumni_tracker_app_datasheet id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_datasheet ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_datasheet_id_seq'::regclass);


--
-- Name: alumni_tracker_app_fiscalschoolyear id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_fiscalschoolyear ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_fiscalschoolyear_id_seq'::regclass);


--
-- Name: alumni_tracker_app_language id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_language ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_language_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaacademiccoursecontentarea id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaacademiccoursecontentarea ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaacademiccoursecontentarea_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metacredentialtype id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metacredentialtype ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metacredentialtype_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaemploymentbenefit id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaemploymentbenefit ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaemploymentbenefit_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaemploymentextent id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaemploymentextent ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaemploymentextent_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaemploymentposition id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaemploymentposition ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaemploymentposition_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaenrollmentextent id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaenrollmentextent ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaenrollmentextent_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaorganizationgrouptype id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationgrouptype ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaorganizationgrouptype_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationro0b6e id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationro0b6e ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq3'::regclass);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationro5728 id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationro5728 ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq1'::regclass);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationroacdd id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationroacdd ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaorganizationmembershiporganizatio_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationroceaf id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationroceaf ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq2'::regclass);


--
-- Name: alumni_tracker_app_metaorganizationrole id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrole ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaorganizationrole_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacity id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacity ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaorganizationrolecapacity_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityalumnusseverence id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityalumnusseverence ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaorganizationrolecapacityalumnusse_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityepoch id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityepoch ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaorganizationrolecapacityepoch_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityrelationship3375 id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityrelationship3375 ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaorganizationrolecapacityrelations_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organization id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organization ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organization_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrole id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrole ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrole_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacity id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacity ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacity_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckincommongoo6791 id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckincommongoo6791 ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitycheckincommon_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinemploymena215 id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckinemploymena215 ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitycheckinemploy_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitycheckinenroll_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacityepoch id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityepoch ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacityepoch_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacityfsyday id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityfsyday ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacityfsyday_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroup id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroup ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitygroup_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3 id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3 ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitygroupacademi_id_seq1'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademiccourse id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupacademiccourse ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitygroupacademic_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembership id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembership ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitygroupmembersh_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa4723 id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa4723 ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq2'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq1'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembership id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembership ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitymembership_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprelatid708 id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708 ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitymembershiprel_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprole id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprole ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitymembershiprol_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiproleeneed9 id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiproleeneed9 ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitymembershipro_id_seq2'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiproleenum id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiproleenum ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitymembershipro_id_seq1'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacityrelationship id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityrelationship ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacityrelationship_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomy id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitytaxonomy ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitytaxonomy_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomyterm id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitytaxonomyterm ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitytaxonomyterm_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacityterm id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityterm ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacityterm_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacityuser id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityuser ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacityuser_id_seq'::regclass);


--
-- Name: alumni_tracker_app_performancemeasure id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_performancemeasure ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_performancemeasure_id_seq'::regclass);


--
-- Name: alumni_tracker_app_performancemeasuredashboard id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_performancemeasuredashboard ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_performancemeasuredashboard_id_seq'::regclass);


--
-- Name: alumni_tracker_app_person id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_person ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_person_id_seq'::regclass);


--
-- Name: alumni_tracker_app_preferencedomain id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_preferencedomain ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_preferencedomain_id_seq'::regclass);


--
-- Name: alumni_tracker_app_preferencedomainpreference id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_preferencedomainpreference ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_preferencedomainpreference_id_seq'::regclass);


--
-- Name: alumni_tracker_app_studentcredithistory id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_studentcredithistory ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_studentcredithistory_id_seq'::regclass);


--
-- Name: alumni_tracker_app_studentidentifiers id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_studentidentifiers ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_studentidentifiers_id_seq'::regclass);


--
-- Name: alumni_tracker_app_studenttransitivedemos id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_studenttransitivedemos ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_studenttransitivedemos_id_seq'::regclass);


--
-- Name: alumni_tracker_app_userprofile id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_userprofile ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_userprofile_id_seq'::regclass);


--
-- Name: alumni_tracker_app_userprofilepreference id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_userprofilepreference ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_userprofilepreference_id_seq'::regclass);


--
-- Name: alumni_tracker_app_usstate id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_usstate ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_usstate_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: alumni_tracker_app_alumnus; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_alumnus (id, severence_date, organization_role_capacity_id, person_id, severence_id) FROM stdin;
184	2004-06-01	1	192	1
185	2004-06-01	1	193	1
186	2004-06-01	1	194	1
187	2004-06-01	1	195	1
188	2004-06-01	1	196	1
189	2004-06-01	1	197	1
190	2004-06-01	1	198	1
191	2004-06-01	1	199	1
192	2004-06-01	1	200	1
193	2004-06-01	1	201	1
194	2004-06-01	1	202	1
195	2004-06-01	1	203	1
196	2004-06-01	1	204	1
197	2004-06-01	1	205	1
198	2004-06-01	1	206	1
199	2004-06-01	1	207	1
200	2004-06-01	1	208	1
201	2004-06-01	1	209	1
202	2004-06-01	1	210	1
203	2004-06-01	1	211	1
204	2004-06-01	1	212	1
205	2004-06-01	1	213	1
206	2004-06-01	1	214	1
207	2005-06-01	1	215	1
208	2005-06-01	1	216	1
209	2005-06-01	1	217	1
210	2005-06-01	1	218	1
211	2005-06-01	1	219	1
212	2005-06-01	1	220	1
213	2005-06-01	1	221	1
214	2005-06-01	1	222	1
215	2005-06-01	1	223	1
216	2005-06-01	1	224	1
217	2006-06-01	1	225	1
218	2006-06-01	1	226	1
219	2006-06-01	1	227	1
220	2006-06-01	1	228	1
221	2006-06-01	1	229	1
222	2006-06-01	1	230	1
223	2006-06-01	1	231	1
224	2006-06-01	1	232	1
225	2006-06-01	1	233	1
226	2007-06-01	1	234	1
227	2007-06-01	1	235	1
228	2007-06-01	1	236	1
229	2007-06-01	1	237	1
230	2007-06-01	1	238	1
231	2007-06-01	1	239	1
232	2007-06-01	1	240	1
233	2007-06-01	1	241	1
234	2007-06-01	1	242	1
235	2007-06-01	1	243	1
236	2007-06-01	1	244	1
237	2007-06-01	1	245	1
238	2007-06-01	1	246	1
239	2007-06-01	1	247	1
240	2007-06-01	1	248	1
241	2007-06-01	1	249	1
242	2007-06-01	1	250	1
243	2007-06-01	1	251	1
244	2007-06-01	1	252	1
245	2007-06-01	1	253	1
246	2007-06-01	1	254	1
247	2007-06-01	1	255	1
248	2007-06-01	1	256	1
249	2007-06-01	1	257	1
250	2007-06-01	1	258	1
251	2007-06-01	1	259	1
252	2007-06-01	1	260	1
253	2007-06-01	1	261	1
254	2007-06-01	1	262	1
255	2007-06-01	1	263	1
256	2007-06-01	1	264	1
257	2007-06-01	1	265	1
258	2007-06-01	1	266	1
259	2007-06-01	1	267	1
260	2007-06-01	1	268	1
261	2008-06-01	1	269	1
262	2008-06-01	1	270	1
263	2008-06-01	1	271	1
264	2008-06-01	1	272	1
265	2008-06-01	1	273	1
266	2008-06-01	1	274	1
267	2008-06-01	1	275	1
268	2008-06-01	1	276	1
269	2008-06-01	1	277	1
270	2008-06-01	1	278	1
271	2008-06-01	1	279	1
272	2008-06-01	1	280	1
273	2008-06-01	1	281	1
274	2008-06-01	1	282	1
275	2008-06-01	1	283	1
276	2008-06-01	1	284	1
277	2008-06-01	1	285	1
278	2008-06-01	1	286	1
279	2008-06-01	1	287	1
280	2008-06-01	1	288	1
281	2008-06-01	1	289	1
282	2008-06-01	1	290	1
283	2008-06-01	1	291	1
284	2008-06-01	1	292	1
285	2008-06-01	1	293	1
286	2009-06-01	1	294	1
287	2009-06-01	1	295	1
288	2009-06-01	1	296	1
289	2009-06-01	1	297	1
290	2009-06-01	1	298	1
291	2009-06-01	1	299	1
292	2009-06-01	1	300	1
293	2009-06-01	1	301	1
294	2009-06-01	1	302	1
295	2009-06-01	1	303	1
296	2009-06-01	1	304	1
297	2009-06-01	1	305	1
298	2009-06-01	1	306	1
299	2009-06-01	1	307	1
300	2009-06-01	1	308	1
301	2009-06-01	1	309	1
302	2009-06-01	1	310	1
303	2009-06-01	1	311	1
304	2009-06-01	1	312	1
305	2009-06-01	1	313	1
306	2009-06-01	1	314	1
307	2009-06-01	1	315	1
308	2009-06-01	1	316	1
309	2009-06-01	1	317	1
310	2009-06-01	1	318	1
311	2010-06-01	1	319	1
312	2010-06-01	1	320	1
313	2010-06-01	1	321	1
314	2010-06-01	1	322	1
315	2010-06-01	1	323	1
316	2010-06-01	1	324	1
317	2010-06-01	1	325	1
318	2010-06-01	1	326	1
319	2010-06-01	1	327	1
320	2010-06-01	1	328	1
321	2010-06-01	1	329	1
322	2010-06-01	1	330	1
323	2010-06-01	1	331	1
324	2010-06-01	1	332	1
325	2010-06-01	1	333	1
326	2010-06-01	1	334	1
327	2010-06-01	1	335	1
328	2010-06-01	1	336	1
329	2010-06-01	1	337	1
330	2010-06-01	1	338	1
331	2010-06-01	1	339	1
332	2010-06-01	1	340	1
333	2010-06-01	1	341	1
334	2010-06-01	1	342	1
335	2010-06-01	1	343	1
336	2010-06-01	1	344	1
337	2010-06-01	1	345	1
338	2010-06-01	1	346	1
339	2010-06-01	1	347	1
340	2010-06-01	1	348	1
341	2010-06-01	1	349	1
342	2010-06-01	1	350	1
343	2010-06-01	1	351	1
344	2010-06-01	1	352	1
345	2010-06-01	1	353	1
346	2010-06-01	1	354	1
347	2010-06-01	1	355	1
348	2010-06-01	1	356	1
349	2010-06-01	1	357	1
350	2010-06-01	1	358	1
351	2010-06-01	1	359	1
352	2010-06-01	1	360	1
353	2011-06-01	1	361	1
354	2011-06-01	1	362	1
355	2011-06-01	1	363	1
356	2011-06-01	1	364	1
357	2011-06-01	1	365	1
358	2011-06-01	1	366	1
359	2011-06-01	1	367	1
360	2011-06-01	1	368	1
361	2011-06-01	1	369	1
362	2011-06-01	1	370	1
363	2011-06-01	1	371	1
364	2011-06-01	1	372	1
365	2011-06-01	1	373	1
366	2011-06-01	1	374	1
367	2011-06-01	1	375	1
368	2011-06-01	1	376	1
369	2011-06-01	1	377	1
370	2011-06-01	1	378	1
371	2011-06-01	1	379	1
372	2011-06-01	1	380	1
373	2011-06-01	1	381	1
374	2011-06-01	1	382	1
375	2011-06-01	1	383	1
376	2011-06-01	1	384	1
377	2011-06-01	1	385	1
378	2011-06-01	1	386	1
379	2011-06-01	1	387	1
380	2011-06-01	1	388	1
381	2011-06-01	1	389	1
382	2011-06-01	1	390	1
383	2011-06-01	1	391	1
384	2011-06-01	1	392	1
385	2011-06-01	1	393	1
386	2011-06-01	1	394	1
387	2011-06-01	1	395	1
388	2011-06-01	1	396	1
389	2011-06-01	1	397	1
390	2011-06-01	1	398	1
391	2012-06-01	1	399	1
392	2012-06-01	1	400	1
393	2012-06-01	1	401	1
394	2012-06-01	1	402	1
395	2012-06-01	1	403	1
396	2012-06-01	1	404	1
397	2012-06-01	1	405	1
398	2012-06-01	1	406	1
399	2012-06-01	1	407	1
400	2012-06-01	1	408	1
401	2012-06-01	1	409	1
402	2012-06-01	1	410	1
403	2012-06-01	1	411	1
404	2012-06-01	1	412	1
405	2012-06-01	1	413	1
406	2012-06-01	1	414	1
407	2012-06-01	1	415	1
408	2012-06-01	1	416	1
409	2012-06-01	1	417	1
410	2012-06-01	1	418	1
411	2012-06-01	1	419	1
412	2012-06-01	1	420	1
413	2012-06-01	1	421	1
414	2012-06-01	1	422	1
415	2012-06-01	1	423	1
416	2012-06-01	1	424	1
417	2012-06-01	1	425	1
418	2012-06-01	1	426	1
419	2012-06-01	1	427	1
420	2012-06-01	1	428	1
421	2012-06-01	1	429	1
422	2012-06-01	1	430	1
423	2012-06-01	1	431	1
424	2012-06-01	1	432	1
425	2012-06-01	1	433	1
426	2012-06-01	1	434	1
427	2012-06-01	1	435	1
428	2012-06-01	1	436	1
429	2012-06-01	1	437	1
430	2013-06-01	1	438	1
431	2013-06-01	1	439	1
432	2013-06-01	1	440	1
433	2013-06-01	1	441	1
434	2013-06-01	1	442	1
435	2013-06-01	1	443	1
436	2013-06-01	1	444	1
437	2013-06-01	1	445	1
438	2013-06-01	1	446	1
439	2013-06-01	1	447	1
440	2013-06-01	1	448	1
441	2013-06-01	1	449	1
442	2013-06-01	1	450	1
443	2013-06-01	1	451	1
444	2013-06-01	1	452	1
445	2013-06-01	1	453	1
446	2013-06-01	1	454	1
447	2013-06-01	1	455	1
448	2013-06-01	1	456	1
449	2013-06-01	1	457	1
450	2013-06-01	1	458	1
451	2013-06-01	1	459	1
452	2013-06-01	1	460	1
453	2013-06-01	1	461	1
454	2013-06-01	1	462	1
455	2013-06-01	1	463	1
456	2013-06-01	1	464	1
457	2013-06-01	1	465	1
458	2013-06-01	1	466	1
459	2013-06-01	1	467	1
460	2013-06-01	1	468	1
461	2013-06-01	1	469	1
462	2013-06-01	1	470	1
463	2013-06-01	1	471	1
464	2013-06-01	1	472	1
465	2013-06-01	1	473	1
466	2013-06-01	1	474	1
467	2013-06-01	1	475	1
468	2013-06-01	1	476	1
469	2013-06-01	1	477	1
470	2013-06-01	1	478	1
471	2013-06-01	1	479	1
472	2013-06-01	1	480	1
473	2013-06-01	1	481	1
474	2013-06-01	1	482	1
475	2013-06-01	1	483	1
476	2013-06-01	1	484	1
477	2013-06-01	1	485	1
478	2014-06-01	1	486	1
479	2014-06-01	1	487	1
480	2014-06-01	1	488	1
481	2014-06-01	1	489	1
482	2014-06-01	1	490	1
483	2014-06-01	1	491	1
484	2014-06-01	1	492	1
485	2014-06-01	1	493	1
486	2014-06-01	1	494	1
487	2014-06-01	1	495	1
488	2014-06-01	1	496	1
489	2014-06-01	1	497	1
490	2014-06-01	1	498	1
491	2014-06-01	1	499	1
492	2014-06-01	1	500	1
493	2014-06-01	1	501	1
494	2014-06-01	1	502	1
495	2014-06-01	1	503	1
496	2014-06-01	1	504	1
497	2014-06-01	1	505	1
498	2014-06-01	1	506	1
499	2014-06-01	1	507	1
500	2014-06-01	1	508	1
501	2014-06-01	1	509	1
502	2014-06-01	1	510	1
503	2014-06-01	1	511	1
504	2014-06-01	1	512	1
505	2014-06-01	1	513	1
506	2014-06-01	1	514	1
507	2014-06-01	1	515	1
508	2014-06-01	1	516	1
509	2014-06-01	1	517	1
510	2014-06-01	1	518	1
511	2014-06-01	1	519	1
512	2014-06-01	1	520	1
513	2014-06-01	1	521	1
514	2014-06-01	1	522	1
515	2014-06-01	1	523	1
516	2014-06-01	1	524	1
517	2014-06-01	1	525	1
518	2014-06-01	1	526	1
519	2014-06-01	1	527	1
520	2014-06-01	1	528	1
521	2014-06-01	1	529	1
522	2015-06-01	1	530	1
523	2015-06-01	1	531	1
524	2015-06-01	1	532	1
525	2015-06-01	1	533	1
526	2015-06-01	1	534	1
527	2015-06-01	1	535	1
528	2015-06-01	1	536	1
529	2015-06-01	1	537	1
530	2015-06-01	1	538	1
531	2015-06-01	1	539	1
532	2015-06-01	1	540	1
533	2015-06-01	1	541	1
534	2015-06-01	1	542	1
535	2015-06-01	1	543	1
536	2015-06-01	1	544	1
537	2015-06-01	1	545	1
538	2015-06-01	1	546	1
539	2015-06-01	1	547	1
540	2015-06-01	1	548	1
541	2015-06-01	1	549	1
542	2015-06-01	1	550	1
543	2015-06-01	1	551	1
544	2015-06-01	1	552	1
545	2015-06-01	1	553	1
546	2015-06-01	1	554	1
547	2015-06-01	1	555	1
548	2015-06-01	1	556	1
549	2015-06-01	1	557	1
550	2015-06-01	1	558	1
551	2015-06-01	1	559	1
552	2015-06-01	1	560	1
553	2015-06-01	1	561	1
554	2015-06-01	1	562	1
555	2015-06-01	1	563	1
556	2015-06-01	1	564	1
557	2015-06-01	1	565	1
558	2015-06-01	1	566	1
559	2015-06-01	1	567	1
560	2015-06-01	1	568	1
561	2015-06-01	1	569	1
562	2015-06-01	1	570	1
563	2015-06-01	1	571	1
564	2015-06-01	1	572	1
565	2015-06-01	1	573	1
566	2015-06-01	1	574	1
567	2015-06-01	1	575	1
568	2015-06-01	1	576	1
569	2015-06-01	1	577	1
570	2015-06-01	1	578	1
571	2015-06-01	1	579	1
572	2015-06-01	1	580	1
573	2015-06-01	1	581	1
574	2015-06-01	1	582	1
575	2015-06-01	1	583	1
576	2015-06-01	1	584	1
577	2015-06-01	1	585	1
578	2016-06-01	1	586	1
579	2016-06-01	1	587	1
580	2016-06-01	1	588	1
581	2016-06-01	1	589	1
582	2016-06-01	1	590	1
583	2016-06-01	1	591	1
584	2016-06-01	1	592	1
585	2016-06-01	1	593	1
586	2016-06-01	1	594	1
587	2016-06-01	1	595	1
588	2016-06-01	1	596	1
589	2016-06-01	1	597	1
590	2016-06-01	1	598	1
591	2016-06-01	1	599	1
592	2016-06-01	1	600	1
593	2016-06-01	1	601	1
594	2016-06-01	1	602	1
595	2016-06-01	1	603	1
596	2016-06-01	1	604	1
597	2016-06-01	1	605	1
598	2016-06-01	1	606	1
599	2016-06-01	1	607	1
600	2016-06-01	1	608	1
601	2016-06-01	1	609	1
602	2016-06-01	1	610	1
603	2016-06-01	1	611	1
604	2016-06-01	1	612	1
605	2016-06-01	1	613	1
606	2016-06-01	1	614	1
607	2016-06-01	1	615	1
608	2016-06-01	1	616	1
609	2016-06-01	1	617	1
610	2016-06-01	1	618	1
611	2016-06-01	1	619	1
612	2016-06-01	1	620	1
613	2016-06-01	1	621	1
614	2016-06-01	1	622	1
615	2016-06-01	1	623	1
616	2016-06-01	1	624	1
617	2016-06-01	1	625	1
618	2016-06-01	1	626	1
619	2016-06-01	1	627	1
620	2016-06-01	1	628	1
621	2016-06-01	1	629	1
622	2016-06-01	1	630	1
623	2016-06-01	1	631	1
624	2016-06-01	1	632	1
625	2016-06-01	1	633	1
626	2016-06-01	1	634	1
627	2016-06-01	1	635	1
628	2016-06-01	1	636	1
629	2016-06-01	1	637	1
630	2016-06-01	1	638	1
631	2016-06-01	1	639	1
632	2016-06-01	1	640	1
633	2016-06-01	1	641	1
634	2016-06-01	1	642	1
635	2016-06-01	1	643	1
636	2016-06-01	1	644	1
637	2016-06-01	1	645	1
638	2016-06-01	1	646	1
639	2016-06-01	1	647	1
640	2016-06-01	1	648	1
641	2016-06-01	1	649	1
642	2016-06-01	1	650	1
643	2017-06-01	1	651	1
644	2017-06-01	1	652	1
645	2017-06-01	1	653	1
646	2017-06-01	1	654	1
647	2017-06-01	1	655	1
648	2017-06-01	1	656	1
649	2017-06-01	1	657	1
650	2017-06-01	1	658	1
651	2017-06-01	1	659	1
652	2017-06-01	1	660	1
653	2017-06-01	1	661	1
654	2017-06-01	1	662	1
655	2017-06-01	1	663	1
656	2017-06-01	1	664	1
657	2017-06-01	1	665	1
658	2017-06-01	1	666	1
659	2017-06-01	1	667	1
660	2017-06-01	1	668	1
661	2017-06-01	1	669	1
662	2017-06-01	1	670	1
663	2017-06-01	1	671	1
664	2017-06-01	1	672	1
665	2017-06-01	1	673	1
666	2017-06-01	1	674	1
667	2017-06-01	1	675	1
668	2017-06-01	1	676	1
669	2017-06-01	1	677	1
670	2017-06-01	1	678	1
671	2017-06-01	1	679	1
672	2017-06-01	1	680	1
673	2017-06-01	1	681	1
674	2017-06-01	1	682	1
675	2017-06-01	1	683	1
676	2017-06-01	1	684	1
677	2017-06-01	1	685	1
678	2017-06-01	1	686	1
679	2017-06-01	1	687	1
680	2017-06-01	1	688	1
681	2017-06-01	1	689	1
682	2017-06-01	1	690	1
683	2017-06-01	1	691	1
684	2017-06-01	1	692	1
685	2017-06-01	1	693	1
686	2017-06-01	1	694	1
687	2017-06-01	1	695	1
688	2017-06-01	1	696	1
689	2017-06-01	1	697	1
690	2017-06-01	1	698	1
691	2017-06-01	1	699	1
692	2017-06-01	1	700	1
693	2017-06-01	1	701	1
694	2017-06-01	1	702	1
695	2017-06-01	1	703	1
696	2017-06-01	1	704	1
697	2017-06-01	1	705	1
698	2017-06-01	1	706	1
699	2017-06-01	1	707	1
700	2017-06-01	1	708	1
701	2017-06-01	1	709	1
702	2017-06-01	1	710	1
703	2017-06-01	1	711	1
704	2017-06-01	1	712	1
705	2017-06-01	1	713	1
706	2017-06-01	1	714	1
707	2017-06-01	1	715	1
708	2017-06-01	1	716	1
709	2017-06-01	1	717	1
710	2017-06-01	1	718	1
711	2017-06-01	1	719	1
712	2017-06-01	1	720	1
713	2017-06-01	1	721	1
714	2017-06-01	1	722	1
715	2018-06-01	1	723	1
716	2018-06-01	1	724	1
717	2018-06-01	1	725	1
718	2018-06-01	1	726	1
719	2018-06-01	1	727	1
720	2018-06-01	1	728	1
721	2018-06-01	1	729	1
722	2018-06-01	1	730	1
723	2018-06-01	1	731	1
724	2018-06-01	1	732	1
725	2018-06-01	1	733	1
726	2018-06-01	1	734	1
727	2018-06-01	1	735	1
728	2018-06-01	1	736	1
729	2018-06-01	1	737	1
730	2018-06-01	1	738	1
731	2018-06-01	1	739	1
732	2018-06-01	1	740	1
733	2018-06-01	1	741	1
734	2018-06-01	1	742	1
735	2018-06-01	1	743	1
736	2018-06-01	1	744	1
737	2018-06-01	1	745	1
738	2018-06-01	1	746	1
739	2018-06-01	1	747	1
740	2018-06-01	1	748	1
741	2018-06-01	1	749	1
742	2018-06-01	1	750	1
743	2018-06-01	1	751	1
744	2018-06-01	1	752	1
745	2018-06-01	1	753	1
746	2018-06-01	1	754	1
747	2018-06-01	1	755	1
748	2018-06-01	1	756	1
749	2018-06-01	1	757	1
750	2018-06-01	1	758	1
751	2018-06-01	1	759	1
752	2018-06-01	1	760	1
753	2018-06-01	1	761	1
754	2018-06-01	1	762	1
755	2018-06-01	1	763	1
756	2018-06-01	1	764	1
757	2018-06-01	1	765	1
758	2018-06-01	1	766	1
759	2018-06-01	1	767	1
760	2018-06-01	1	768	1
761	2018-06-01	1	769	1
762	2018-06-01	1	770	1
763	2018-06-01	1	771	1
764	2018-06-01	1	772	1
765	2018-06-01	1	773	1
766	2018-06-01	1	774	1
767	2018-06-01	1	775	1
768	2018-06-01	1	776	1
769	2018-06-01	1	777	1
770	2018-06-01	1	778	1
771	2018-06-01	1	779	1
772	2018-06-01	1	780	1
773	2018-06-01	1	781	1
774	2018-06-01	1	782	1
775	2018-06-01	1	783	1
776	2018-06-01	1	784	1
777	2018-06-01	1	785	1
778	2018-06-01	1	786	1
779	2018-06-01	1	787	1
780	2018-06-01	1	788	1
781	2018-06-01	1	789	1
782	2018-06-01	1	790	1
783	2018-06-01	1	791	1
784	2018-06-01	1	792	1
785	2018-06-01	1	793	1
786	2019-06-01	1	794	1
787	2019-06-01	1	795	1
788	2019-06-01	1	796	1
789	2019-06-01	1	797	1
790	2019-06-01	1	798	1
791	2019-06-01	1	799	1
792	2019-06-01	1	800	1
793	2019-06-01	1	801	1
794	2019-06-01	1	802	1
795	2019-06-01	1	803	1
796	2019-06-01	1	804	1
797	2019-06-01	1	805	1
798	2019-06-01	1	806	1
799	2019-06-01	1	807	1
800	2019-06-01	1	808	1
801	2019-06-01	1	809	1
802	2019-06-01	1	810	1
803	2019-06-01	1	811	1
804	2019-06-01	1	812	1
805	2019-06-01	1	813	1
806	2019-06-01	1	814	1
807	2019-06-01	1	815	1
808	2019-06-01	1	816	1
809	2019-06-01	1	817	1
810	2019-06-01	1	818	1
811	2019-06-01	1	819	1
812	2019-06-01	1	820	1
813	2019-06-01	1	821	1
814	2019-06-01	1	822	1
815	2019-06-01	1	823	1
816	2019-06-01	1	824	1
817	2019-06-01	1	825	1
818	2019-06-01	1	826	1
819	2019-06-01	1	827	1
820	2019-06-01	1	828	1
821	2019-06-01	1	829	1
822	2019-06-01	1	830	1
823	2019-06-01	1	831	1
824	2019-06-01	1	832	1
825	2019-06-01	1	833	1
826	2019-06-01	1	834	1
827	2019-06-01	1	835	1
828	2019-06-01	1	836	1
829	2019-06-01	1	837	1
830	2019-06-01	1	838	1
831	2019-06-01	1	839	1
832	2019-06-01	1	840	1
833	2019-06-01	1	841	1
834	2019-06-01	1	842	1
835	2019-06-01	1	843	1
836	2019-06-01	1	844	1
837	2019-06-01	1	845	1
838	2019-06-01	1	846	1
839	2019-06-01	1	847	1
840	2019-06-01	1	848	1
841	2019-06-01	1	849	1
842	2019-06-01	1	850	1
843	2019-06-01	1	851	1
844	2019-06-01	1	852	1
845	2019-06-01	1	853	1
846	2019-06-01	1	854	1
847	2019-06-01	1	855	1
848	2019-06-01	1	856	1
849	2019-06-01	1	857	1
850	2019-06-01	1	858	1
851	2019-06-01	1	859	1
852	2019-06-01	1	860	1
853	2019-06-01	1	861	1
854	2019-06-01	1	862	1
855	2019-06-01	1	863	1
856	2019-06-01	1	864	1
857	2019-06-01	1	865	1
858	2019-06-01	1	866	1
859	2019-06-01	1	867	1
860	2019-06-01	1	868	1
861	2020-05-31	1	870	1
862	2020-05-31	1	871	1
863	2020-05-31	1	872	1
864	2020-05-31	1	873	1
865	2020-05-31	1	874	1
866	2020-05-31	1	875	1
867	2020-05-31	1	876	1
868	2020-05-31	1	877	1
869	2020-05-31	1	878	1
870	2020-05-31	1	879	1
871	2020-05-31	1	880	1
872	2020-05-31	1	881	1
873	2020-05-31	1	882	1
874	2020-05-31	1	883	1
875	2020-05-31	1	884	1
876	2020-05-31	1	885	1
877	2020-05-31	1	886	1
878	2020-05-31	1	887	1
879	2020-05-31	1	888	1
880	2020-05-31	1	889	1
881	2020-05-31	1	890	1
882	2020-05-31	1	891	1
883	2020-05-31	1	892	1
884	2020-05-31	1	893	1
885	2020-05-31	1	894	1
886	2020-05-31	1	895	1
887	2020-05-31	1	896	1
888	2020-05-31	1	897	1
889	2020-05-31	1	898	1
890	2020-05-31	1	899	1
891	2020-05-31	1	900	1
892	2020-05-31	1	901	1
893	2020-05-31	1	902	1
894	2020-05-31	1	903	1
895	2020-05-31	1	904	1
896	2020-05-31	1	905	1
897	2020-05-31	1	906	1
898	2020-05-31	1	907	1
899	2020-05-31	1	908	1
900	2020-05-31	1	909	1
901	2020-05-31	1	910	1
902	2020-05-31	1	911	1
903	2020-05-31	1	912	1
904	2020-05-31	1	913	1
905	2020-05-31	1	914	1
906	2020-05-31	1	915	1
907	2020-05-31	1	916	1
908	2020-05-31	1	917	1
909	2020-05-31	1	918	1
910	2020-05-31	1	919	1
911	2020-05-31	1	920	1
912	2020-05-31	1	921	1
913	2020-05-31	1	922	1
914	2020-05-31	1	923	1
915	2020-05-31	1	924	1
916	2020-05-31	1	925	1
917	2020-05-31	1	926	1
918	2020-05-31	1	927	1
919	2020-05-31	1	928	1
920	2020-05-31	1	929	1
921	2020-05-31	1	930	1
922	2020-05-31	1	931	1
923	2020-05-31	1	932	1
924	2020-05-31	1	933	1
925	2020-05-31	1	934	1
926	2020-05-31	1	935	1
927	2020-05-31	1	936	1
928	2020-05-31	1	937	1
929	2020-05-31	1	938	1
930	2020-05-31	1	939	1
931	2020-05-31	1	940	1
932	2020-05-31	1	941	1
933	2020-05-31	1	942	1
\.


--
-- Name: alumni_tracker_app_alumnus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_alumnus_id_seq', 933, true);


--
-- Data for Name: alumni_tracker_app_alumnuscheckin; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_alumnuscheckin (id, occured, last_updated, employed, enrolled, caregiver, notes, alumnus_person_id, conducted_by_id, last_updated_by_id, human_conducted, notaa, military) FROM stdin;
24	2020-06-17	2020-10-20	t	f	t	\N	274	2	6	t	f	f
57	2012-09-03	2020-10-30	t	t	f	Second Major Psychology	433	2	2	t	f	f
29	2020-06-25	2020-06-26	t	f	f	\N	478	2	2	t	f	f
31	2020-07-13	2020-07-13	f	f	f	\N	305	2	2	t	f	f
547	2020-10-21	2020-10-21	t	t	f	\N	284	2	2	t	f	f
548	2020-10-22	2020-10-22	t	f	f	\N	293	2	2	t	f	f
549	2020-10-26	2020-10-26	t	t	f	\N	474	2	2	t	f	f
550	2020-10-30	2020-10-30	t	f	t	\N	271	2	2	t	f	f
554	2020-11-15	2020-11-15	t	f	f	\N	442	6	6	t	f	f
555	2020-11-16	2020-11-16	f	t	f	\N	442	6	6	t	f	f
556	2020-11-19	2020-11-19	t	f	f	\N	568	2	2	t	f	f
557	2020-11-20	2020-11-20	t	f	f	Will be going back to school in the Fall of 2021	525	2	2	t	f	f
558	2020-11-26	2020-11-26	f	f	f	Goes by Alejandra Olivas	324	2	2	t	f	f
559	2020-12-03	2020-12-03	f	f	t	\N	278	2	2	t	f	f
560	2020-12-03	2020-12-03	f	f	f	Goes by Jennifer Saavedra	207	2	2	t	f	f
561	2020-12-03	2020-12-03	t	t	f	\N	654	2	2	t	f	f
411	2017-08-21	2020-12-03	f	t	f	Undergraduate Major: Interdisciplinary Art concentration on Dance and Feminist Studies	654	2	2	t	f	f
562	2020-12-03	2020-12-03	t	t	t	Concentration: History	233	2	2	t	f	f
563	2020-12-11	2020-12-11	f	f	t	\N	564	2	2	t	f	f
564	2020-12-11	2020-12-11	t	f	t	No longer enrolled in school	610	2	2	t	f	f
30	2020-06-30	\N	f	f	f	\N	714	2	\N	f	f	f
32	2011-08-22	\N	f	t	f	\N	368	2	\N	f	f	f
33	2013-08-26	\N	f	t	f	\N	368	2	\N	f	f	f
34	2009-08-31	\N	f	t	f	\N	306	2	\N	f	f	f
35	2011-08-29	\N	f	t	f	\N	390	2	\N	f	f	f
36	2012-01-09	\N	f	t	f	\N	368	2	\N	f	f	f
37	2012-08-27	\N	f	t	f	\N	406	2	\N	f	f	f
38	2012-08-20	\N	f	t	f	\N	425	2	\N	f	f	f
39	2018-05-29	\N	f	t	f	\N	425	2	\N	f	f	f
40	2015-08-17	\N	f	t	f	\N	562	2	\N	f	f	f
41	2017-05-15	\N	f	t	f	\N	562	2	\N	f	f	f
42	2010-08-23	\N	f	t	f	\N	355	2	\N	f	f	f
43	2012-01-09	\N	f	t	f	\N	355	2	\N	f	f	f
44	2011-08-25	\N	f	t	f	\N	398	2	\N	f	f	f
45	2015-06-08	\N	f	t	f	\N	398	2	\N	f	f	f
46	2017-01-17	\N	f	t	f	\N	398	2	\N	f	f	f
47	2014-08-25	\N	f	t	f	\N	440	2	\N	f	f	f
48	2011-08-29	\N	f	t	f	\N	380	2	\N	f	f	f
49	2011-08-22	\N	f	t	f	\N	374	2	\N	f	f	f
50	2012-08-20	\N	f	t	f	\N	374	2	\N	f	f	f
51	2018-05-14	\N	f	t	f	\N	374	2	\N	f	f	f
52	2013-08-19	\N	f	t	f	\N	477	2	\N	f	f	f
53	2016-01-19	\N	f	t	f	\N	477	2	\N	f	f	f
54	2011-08-29	\N	f	t	f	\N	370	2	\N	f	f	f
55	2014-08-25	\N	f	t	f	\N	488	2	\N	f	f	f
56	2012-08-27	\N	f	t	f	\N	399	2	\N	f	f	f
58	2016-08-29	\N	f	t	f	\N	572	2	\N	f	f	f
59	2015-08-01	\N	f	t	f	\N	548	2	\N	f	f	f
60	2016-08-22	\N	f	t	f	\N	548	2	\N	f	f	f
61	2018-05-14	\N	f	t	f	\N	548	2	\N	f	f	f
62	2019-01-14	\N	f	t	f	\N	548	2	\N	f	f	f
63	2016-08-29	\N	f	t	f	\N	597	2	\N	f	f	f
64	2012-08-20	\N	f	t	f	\N	416	2	\N	f	f	f
65	2013-05-20	\N	f	t	f	\N	416	2	\N	f	f	f
66	2015-08-17	\N	f	t	f	\N	550	2	\N	f	f	f
67	2013-08-19	\N	f	t	f	\N	484	2	\N	f	f	f
68	2019-08-13	\N	f	t	f	\N	484	2	\N	f	f	f
69	2014-08-25	\N	f	t	f	\N	500	2	\N	f	f	f
70	2017-08-28	\N	f	t	f	\N	717	2	\N	f	f	f
71	2019-09-03	\N	f	t	f	\N	710	2	\N	f	f	f
72	2017-08-21	\N	f	t	f	\N	720	2	\N	f	f	f
73	2015-08-17	\N	f	t	f	\N	584	2	\N	f	f	f
74	2012-08-20	\N	f	t	f	\N	403	2	\N	f	f	f
75	2013-08-26	\N	f	t	f	\N	403	2	\N	f	f	f
76	2015-08-31	\N	f	t	f	\N	539	2	\N	f	f	f
77	2010-08-23	\N	f	t	f	\N	347	2	\N	f	f	f
78	2011-05-23	\N	f	t	f	\N	347	2	\N	f	f	f
79	2016-01-18	\N	f	t	f	\N	347	2	\N	f	f	f
80	2010-08-30	\N	f	t	f	\N	328	2	\N	f	f	f
81	2009-08-31	\N	f	t	f	\N	298	2	\N	f	f	f
82	2011-08-22	\N	f	t	f	\N	298	2	\N	f	f	f
83	2009-08-24	\N	f	t	f	\N	315	2	\N	f	f	f
84	2016-09-06	\N	f	t	f	\N	315	2	\N	f	f	f
85	2009-08-31	\N	f	t	f	\N	303	2	\N	f	f	f
86	2010-05-24	\N	f	t	f	\N	333	2	\N	f	f	f
87	2010-08-23	\N	f	t	f	\N	333	2	\N	f	f	f
88	2014-08-25	\N	f	t	f	\N	329	2	\N	f	f	f
89	2010-08-30	\N	f	t	f	\N	308	2	\N	f	f	f
90	2011-08-22	\N	f	t	f	\N	326	2	\N	f	f	f
91	2013-01-14	\N	f	t	f	\N	324	2	\N	f	f	f
92	2017-08-28	\N	f	t	f	\N	325	2	\N	f	f	f
93	2010-08-30	\N	f	t	f	\N	334	2	\N	f	f	f
94	2010-08-23	\N	f	t	f	\N	341	2	\N	f	f	f
95	2010-08-15	\N	f	t	f	\N	359	2	\N	f	f	f
96	2011-01-13	\N	f	t	f	\N	359	2	\N	f	f	f
97	2014-01-06	\N	f	t	f	\N	351	2	\N	f	f	f
98	2010-08-23	\N	f	t	f	\N	360	2	\N	f	f	f
99	2012-05-21	\N	f	t	f	\N	360	2	\N	f	f	f
100	2009-08-31	\N	f	t	f	\N	317	2	\N	f	f	f
101	2009-08-31	\N	f	t	f	\N	307	2	\N	f	f	f
102	2011-08-22	\N	f	t	f	\N	307	2	\N	f	f	f
103	2011-01-10	\N	f	t	f	\N	337	2	\N	f	f	f
104	2010-08-19	\N	f	t	f	\N	336	2	\N	f	f	f
105	2009-08-24	\N	f	t	f	\N	295	2	\N	f	f	f
106	2010-08-30	\N	f	t	f	\N	295	2	\N	f	f	f
107	2009-08-24	\N	f	t	f	\N	294	2	\N	f	f	f
108	2010-05-24	\N	f	t	f	\N	352	2	\N	f	f	f
109	2010-08-23	\N	f	t	f	\N	352	2	\N	f	f	f
110	2010-08-30	\N	f	t	f	\N	357	2	\N	f	f	f
111	2013-05-20	\N	f	t	f	\N	357	2	\N	f	f	f
112	2010-08-23	\N	f	t	f	\N	322	2	\N	f	f	f
113	2012-08-27	\N	f	t	f	\N	322	2	\N	f	f	f
114	2009-08-24	\N	f	t	f	\N	304	2	\N	f	f	f
115	2009-08-24	\N	f	t	f	\N	311	2	\N	f	f	f
116	2010-01-11	\N	f	t	f	\N	311	2	\N	f	f	f
117	2009-08-31	\N	f	t	f	\N	297	2	\N	f	f	f
118	2010-05-24	\N	f	t	f	\N	332	2	\N	f	f	f
119	2010-08-23	\N	f	t	f	\N	332	2	\N	f	f	f
120	2010-08-30	\N	f	t	f	\N	342	2	\N	f	f	f
121	2015-08-31	\N	f	t	f	\N	342	2	\N	f	f	f
122	2010-08-30	\N	f	t	f	\N	345	2	\N	f	f	f
123	2010-08-30	\N	f	t	f	\N	349	2	\N	f	f	f
124	2010-08-23	\N	f	t	f	\N	346	2	\N	f	f	f
125	2014-05-19	\N	f	t	f	\N	346	2	\N	f	f	f
126	2010-08-23	\N	f	t	f	\N	348	2	\N	f	f	f
127	2010-08-30	\N	f	t	f	\N	335	2	\N	f	f	f
128	2011-08-22	\N	f	t	f	\N	335	2	\N	f	f	f
129	2018-08-27	\N	f	t	f	\N	790	2	\N	f	f	f
130	2016-08-29	\N	f	t	f	\N	604	2	\N	f	f	f
131	2010-08-23	\N	f	t	f	\N	339	2	\N	f	f	f
132	2012-01-09	\N	f	t	f	\N	385	2	\N	f	f	f
133	2015-01-12	\N	f	t	f	\N	385	2	\N	f	f	f
134	2012-08-27	\N	f	t	f	\N	408	2	\N	f	f	f
135	2014-03-17	\N	f	t	f	\N	408	2	\N	f	f	f
136	2012-08-20	\N	f	t	f	\N	436	2	\N	f	f	f
137	2013-01-07	\N	f	t	f	\N	436	2	\N	f	f	f
138	2013-06-17	\N	f	t	f	\N	436	2	\N	f	f	f
139	2016-05-16	\N	f	t	f	\N	553	2	\N	f	f	f
140	2009-08-31	\N	f	t	f	\N	314	2	\N	f	f	f
141	2010-08-23	\N	f	t	f	\N	343	2	\N	f	f	f
142	2010-08-23	\N	f	t	f	\N	321	2	\N	f	f	f
143	2013-08-26	\N	f	t	f	\N	321	2	\N	f	f	f
144	2011-08-22	\N	f	t	f	\N	376	2	\N	f	f	f
145	2014-05-19	\N	f	t	f	\N	376	2	\N	f	f	f
146	2014-08-18	\N	f	t	f	\N	508	2	\N	f	f	f
147	2016-08-29	\N	f	t	f	\N	508	2	\N	f	f	f
148	2013-08-26	\N	f	t	f	\N	439	2	\N	f	f	f
149	2011-08-22	\N	f	t	f	\N	393	2	\N	f	f	f
150	2014-06-16	\N	f	t	f	\N	393	2	\N	f	f	f
151	2011-08-22	\N	f	t	f	\N	384	2	\N	f	f	f
152	2012-01-09	\N	f	t	f	\N	384	2	\N	f	f	f
153	2013-08-26	\N	f	t	f	\N	469	2	\N	f	f	f
154	2013-08-26	\N	f	t	f	\N	452	2	\N	f	f	f
155	2013-08-19	\N	f	t	f	\N	457	2	\N	f	f	f
156	2017-08-21	\N	f	t	f	\N	457	2	\N	f	f	f
157	2018-01-15	\N	f	t	f	\N	457	2	\N	f	f	f
158	2013-08-19	\N	f	t	f	\N	441	2	\N	f	f	f
159	2014-08-25	\N	f	t	f	\N	441	2	\N	f	f	f
160	2014-08-21	\N	f	t	f	\N	498	2	\N	f	f	f
161	2019-02-04	\N	f	t	f	\N	498	2	\N	f	f	f
162	2013-08-19	\N	f	t	f	\N	476	2	\N	f	f	f
163	2014-05-19	\N	f	t	f	\N	476	2	\N	f	f	f
164	2013-08-26	\N	f	t	f	\N	464	2	\N	f	f	f
165	2011-08-29	\N	f	t	f	\N	362	2	\N	f	f	f
166	2016-01-04	\N	f	t	f	\N	362	2	\N	f	f	f
167	2019-06-10	\N	f	t	f	\N	362	2	\N	f	f	f
168	2014-08-25	\N	f	t	f	\N	507	2	\N	f	f	f
169	2012-08-27	\N	f	t	f	\N	429	2	\N	f	f	f
170	2014-06-16	\N	f	t	f	\N	429	2	\N	f	f	f
171	2017-06-05	\N	f	t	f	\N	583	2	\N	f	f	f
172	2016-09-05	\N	f	t	f	\N	611	2	\N	f	f	f
173	2016-08-29	\N	f	t	f	\N	603	2	\N	f	f	f
174	2017-08-21	\N	f	t	f	\N	679	2	\N	f	f	f
175	2013-08-26	\N	f	t	f	\N	443	2	\N	f	f	f
176	2014-08-25	\N	f	t	f	\N	423	2	\N	f	f	f
177	2015-08-31	\N	f	t	f	\N	569	2	\N	f	f	f
178	2011-08-22	\N	f	t	f	\N	387	2	\N	f	f	f
179	2012-08-20	\N	f	t	f	\N	419	2	\N	f	f	f
180	2014-01-06	\N	f	t	f	\N	419	2	\N	f	f	f
181	2012-08-27	\N	f	t	f	\N	415	2	\N	f	f	f
182	2013-08-19	\N	f	t	f	\N	459	2	\N	f	f	f
183	2014-08-25	\N	f	t	f	\N	506	2	\N	f	f	f
184	2015-08-31	\N	f	t	f	\N	540	2	\N	f	f	f
185	2018-08-20	\N	f	t	f	\N	540	2	\N	f	f	f
186	2015-09-21	\N	f	t	f	\N	547	2	\N	f	f	f
187	2017-04-10	\N	f	t	f	\N	547	2	\N	f	f	f
188	2018-08-20	\N	f	t	f	\N	547	2	\N	f	f	f
189	2015-08-31	\N	f	t	f	\N	537	2	\N	f	f	f
190	2012-08-23	\N	f	t	f	\N	426	2	\N	f	f	f
191	2012-08-20	\N	f	t	f	\N	427	2	\N	f	f	f
192	2014-05-19	\N	f	t	f	\N	427	2	\N	f	f	f
193	2013-08-19	\N	f	t	f	\N	460	2	\N	f	f	f
194	2017-01-17	\N	f	t	f	\N	460	2	\N	f	f	f
195	2013-08-15	\N	f	t	f	\N	461	2	\N	f	f	f
196	2014-01-06	\N	f	t	f	\N	461	2	\N	f	f	f
197	2010-08-23	\N	f	t	f	\N	320	2	\N	f	f	f
198	2010-08-30	\N	f	t	f	\N	327	2	\N	f	f	f
199	2011-08-24	\N	f	t	f	\N	389	2	\N	f	f	f
200	2011-08-29	\N	f	t	f	\N	372	2	\N	f	f	f
201	2011-08-22	\N	f	t	f	\N	396	2	\N	f	f	f
202	2011-08-22	\N	f	t	f	\N	391	2	\N	f	f	f
203	2014-05-19	\N	f	t	f	\N	391	2	\N	f	f	f
204	2016-02-08	\N	f	t	f	\N	391	2	\N	f	f	f
205	2014-08-25	\N	f	t	f	\N	424	2	\N	f	f	f
206	2012-08-22	\N	f	t	f	\N	413	2	\N	f	f	f
207	2014-08-25	\N	f	t	f	\N	413	2	\N	f	f	f
208	2016-08-22	\N	f	t	f	\N	413	2	\N	f	f	f
209	2016-08-29	\N	f	t	f	\N	446	2	\N	f	f	f
210	2014-08-25	\N	f	t	f	\N	520	2	\N	f	f	f
211	2015-06-01	\N	f	t	f	\N	520	2	\N	f	f	f
212	2012-08-20	\N	f	t	f	\N	430	2	\N	f	f	f
213	2013-08-26	\N	f	t	f	\N	430	2	\N	f	f	f
214	2012-08-27	\N	f	t	f	\N	437	2	\N	f	f	f
215	2013-09-02	\N	f	t	f	\N	445	2	\N	f	f	f
216	2013-08-26	\N	f	t	f	\N	444	2	\N	f	f	f
217	2017-08-28	\N	f	t	f	\N	574	2	\N	f	f	f
218	2015-08-17	\N	f	t	f	\N	552	2	\N	f	f	f
219	2016-08-29	\N	f	t	f	\N	552	2	\N	f	f	f
220	2013-08-26	\N	f	t	f	\N	453	2	\N	f	f	f
221	2014-08-18	\N	f	t	f	\N	512	2	\N	f	f	f
222	2016-05-16	\N	f	t	f	\N	512	2	\N	f	f	f
223	2014-01-20	\N	f	t	f	\N	438	2	\N	f	f	f
224	2015-05-26	\N	f	t	f	\N	438	2	\N	f	f	f
225	2015-08-18	\N	f	t	f	\N	554	2	\N	f	f	f
226	2015-08-31	\N	f	t	f	\N	535	2	\N	f	f	f
227	2018-08-20	\N	f	t	f	\N	535	2	\N	f	f	f
228	2015-08-17	\N	f	t	f	\N	564	2	\N	f	f	f
229	2016-01-19	\N	f	t	f	\N	571	2	\N	f	f	f
230	2016-08-29	\N	f	t	f	\N	587	2	\N	f	f	f
231	2016-08-22	\N	f	t	f	\N	588	2	\N	f	f	f
232	2016-08-22	\N	f	t	f	\N	648	2	\N	f	f	f
233	2019-08-19	\N	f	t	f	\N	648	2	\N	f	f	f
234	2011-08-22	\N	f	t	f	\N	394	2	\N	f	f	f
235	2014-05-19	\N	f	t	f	\N	394	2	\N	f	f	f
236	2011-08-22	\N	f	t	f	\N	383	2	\N	f	f	f
237	2011-08-22	\N	f	t	f	\N	365	2	\N	f	f	f
238	2012-05-21	\N	f	t	f	\N	365	2	\N	f	f	f
239	2012-08-20	\N	f	t	f	\N	422	2	\N	f	f	f
240	2012-08-20	\N	f	t	f	\N	420	2	\N	f	f	f
241	2013-05-20	\N	f	t	f	\N	420	2	\N	f	f	f
242	2012-08-20	\N	f	t	f	\N	400	2	\N	f	f	f
243	2013-05-20	\N	f	t	f	\N	400	2	\N	f	f	f
244	2017-08-01	\N	f	t	f	\N	400	2	\N	f	f	f
245	2014-08-18	\N	f	t	f	\N	519	2	\N	f	f	f
246	2014-08-18	\N	f	t	f	\N	487	2	\N	f	f	f
247	2018-07-01	\N	f	t	f	\N	487	2	\N	f	f	f
248	2013-08-19	\N	f	t	f	\N	465	2	\N	f	f	f
249	2014-08-21	\N	f	t	f	\N	486	2	\N	f	f	f
250	2016-08-22	\N	f	t	f	\N	486	2	\N	f	f	f
251	2017-08-28	\N	f	t	f	\N	486	2	\N	f	f	f
252	2019-08-20	\N	f	t	f	\N	486	2	\N	f	f	f
253	2012-08-20	\N	f	t	f	\N	401	2	\N	f	f	f
254	2013-05-20	\N	f	t	f	\N	401	2	\N	f	f	f
255	2014-09-01	\N	f	t	f	\N	492	2	\N	f	f	f
256	2017-01-01	\N	f	t	f	\N	492	2	\N	f	f	f
257	2013-08-19	\N	f	t	f	\N	481	2	\N	f	f	f
258	2017-08-28	\N	f	t	f	\N	481	2	\N	f	f	f
259	2016-09-26	\N	f	t	f	\N	598	2	\N	f	f	f
260	2016-08-29	\N	f	t	f	\N	599	2	\N	f	f	f
261	2014-08-18	\N	f	t	f	\N	502	2	\N	f	f	f
262	2015-08-31	\N	f	t	f	\N	435	2	\N	f	f	f
263	2014-08-18	\N	f	t	f	\N	504	2	\N	f	f	f
264	2019-05-20	\N	f	t	f	\N	504	2	\N	f	f	f
265	2018-05-14	\N	f	t	f	\N	579	2	\N	f	f	f
266	2016-08-22	\N	f	t	f	\N	610	2	\N	f	f	f
267	2012-01-16	\N	f	t	f	\N	395	2	\N	f	f	f
268	2013-08-15	\N	f	t	f	\N	455	2	\N	f	f	f
269	2014-08-25	\N	f	t	f	\N	517	2	\N	f	f	f
270	2013-08-19	\N	f	t	f	\N	448	2	\N	f	f	f
271	2016-08-29	\N	f	t	f	\N	448	2	\N	f	f	f
272	2014-08-25	\N	f	t	f	\N	489	2	\N	f	f	f
273	2017-08-28	\N	f	t	f	\N	667	2	\N	f	f	f
274	2015-08-31	\N	f	t	f	\N	566	2	\N	f	f	f
275	2012-08-20	\N	f	t	f	\N	432	2	\N	f	f	f
276	2016-08-29	\N	f	t	f	\N	586	2	\N	f	f	f
277	2011-08-22	\N	f	t	f	\N	366	2	\N	f	f	f
278	2013-08-26	\N	f	t	f	\N	375	2	\N	f	f	f
279	2017-08-21	\N	f	t	f	\N	375	2	\N	f	f	f
280	2013-08-19	\N	f	t	f	\N	449	2	\N	f	f	f
281	2017-08-28	\N	f	t	f	\N	656	2	\N	f	f	f
282	2015-08-31	\N	f	t	f	\N	560	2	\N	f	f	f
283	2015-08-17	\N	f	t	f	\N	549	2	\N	f	f	f
284	2019-01-14	\N	f	t	f	\N	549	2	\N	f	f	f
285	2014-08-18	\N	f	t	f	\N	526	2	\N	f	f	f
286	2016-01-18	\N	f	t	f	\N	538	2	\N	f	f	f
287	2018-05-14	\N	f	t	f	\N	497	2	\N	f	f	f
288	2015-08-17	\N	f	t	f	\N	555	2	\N	f	f	f
289	2016-08-29	\N	f	t	f	\N	595	2	\N	f	f	f
290	2016-08-22	\N	f	t	f	\N	625	2	\N	f	f	f
291	2017-01-17	\N	f	t	f	\N	625	2	\N	f	f	f
292	2014-08-25	\N	f	t	f	\N	472	2	\N	f	f	f
293	2012-08-20	\N	f	t	f	\N	434	2	\N	f	f	f
294	2013-08-19	\N	f	t	f	\N	450	2	\N	f	f	f
295	2016-05-16	\N	f	t	f	\N	450	2	\N	f	f	f
296	2016-01-19	\N	f	t	f	\N	503	2	\N	f	f	f
297	2014-08-25	\N	f	t	f	\N	521	2	\N	f	f	f
298	2012-08-27	\N	f	t	f	\N	407	2	\N	f	f	f
299	2013-08-19	\N	f	t	f	\N	462	2	\N	f	f	f
300	2014-05-19	\N	f	t	f	\N	462	2	\N	f	f	f
301	2014-08-25	\N	f	t	f	\N	480	2	\N	f	f	f
302	2013-08-19	\N	f	t	f	\N	471	2	\N	f	f	f
303	2011-08-22	\N	f	t	f	\N	388	2	\N	f	f	f
304	2013-05-20	\N	f	t	f	\N	388	2	\N	f	f	f
305	2018-08-27	\N	f	t	f	\N	530	2	\N	f	f	f
306	2011-08-22	\N	f	t	f	\N	373	2	\N	f	f	f
307	2016-01-19	\N	f	t	f	\N	534	2	\N	f	f	f
308	2017-08-21	\N	f	t	f	\N	534	2	\N	f	f	f
309	2019-04-01	\N	f	t	f	\N	534	2	\N	f	f	f
310	2011-08-22	\N	f	t	f	\N	382	2	\N	f	f	f
311	2015-05-26	\N	f	t	f	\N	382	2	\N	f	f	f
312	2011-08-22	\N	f	t	f	\N	361	2	\N	f	f	f
313	2012-05-21	\N	f	t	f	\N	361	2	\N	f	f	f
314	2015-08-19	\N	f	t	f	\N	532	2	\N	f	f	f
315	2012-08-27	\N	f	t	f	\N	412	2	\N	f	f	f
316	2013-08-26	\N	f	t	f	\N	485	2	\N	f	f	f
317	2012-08-20	\N	f	t	f	\N	404	2	\N	f	f	f
318	2013-05-20	\N	f	t	f	\N	404	2	\N	f	f	f
319	2015-08-17	\N	f	t	f	\N	563	2	\N	f	f	f
320	2015-08-31	\N	f	t	f	\N	557	2	\N	f	f	f
321	2015-05-26	\N	f	t	f	\N	545	2	\N	f	f	f
322	2013-09-02	\N	f	t	f	\N	442	2	\N	f	f	f
323	2015-06-01	\N	f	t	f	\N	442	2	\N	f	f	f
324	2015-08-31	\N	f	t	f	\N	581	2	\N	f	f	f
325	2014-08-25	\N	f	t	f	\N	491	2	\N	f	f	f
326	2014-08-18	\N	f	t	f	\N	511	2	\N	f	f	f
327	2019-01-14	\N	f	t	f	\N	511	2	\N	f	f	f
328	2017-08-21	\N	f	t	f	\N	529	2	\N	f	f	f
329	2014-08-25	\N	f	t	f	\N	527	2	\N	f	f	f
330	2016-08-29	\N	f	t	f	\N	490	2	\N	f	f	f
331	2014-08-18	\N	f	t	f	\N	514	2	\N	f	f	f
332	2014-08-25	\N	f	t	f	\N	493	2	\N	f	f	f
333	2016-08-29	\N	f	t	f	\N	602	2	\N	f	f	f
334	2017-08-28	\N	f	t	f	\N	686	2	\N	f	f	f
335	2017-08-28	\N	f	t	f	\N	709	2	\N	f	f	f
336	2017-08-28	\N	f	t	f	\N	651	2	\N	f	f	f
337	2017-08-28	\N	f	t	f	\N	701	2	\N	f	f	f
338	2017-08-28	\N	f	t	f	\N	721	2	\N	f	f	f
339	2011-08-22	\N	f	t	f	\N	386	2	\N	f	f	f
340	2012-01-09	\N	f	t	f	\N	386	2	\N	f	f	f
341	2017-08-21	\N	f	t	f	\N	687	2	\N	f	f	f
342	2018-05-14	\N	f	t	f	\N	687	2	\N	f	f	f
343	2017-08-21	\N	f	t	f	\N	666	2	\N	f	f	f
344	2019-01-14	\N	f	t	f	\N	758	2	\N	f	f	f
345	2018-08-27	\N	f	t	f	\N	725	2	\N	f	f	f
346	2015-08-17	\N	f	t	f	\N	556	2	\N	f	f	f
347	2015-01-20	\N	f	t	f	\N	522	2	\N	f	f	f
348	2016-01-18	\N	f	t	f	\N	551	2	\N	f	f	f
349	2009-08-24	\N	f	t	f	\N	312	2	\N	f	f	f
350	2009-08-31	\N	f	t	f	\N	312	2	\N	f	f	f
351	2018-01-16	\N	f	t	f	\N	705	2	\N	f	f	f
352	2019-09-03	\N	f	t	f	\N	804	2	\N	f	f	f
353	2015-08-31	\N	f	t	f	\N	542	2	\N	f	f	f
354	2017-09-11	\N	f	t	f	\N	698	2	\N	f	f	f
355	2017-08-28	\N	f	t	f	\N	706	2	\N	f	f	f
356	2017-08-28	\N	f	t	f	\N	674	2	\N	f	f	f
357	2013-08-19	\N	f	t	f	\N	474	2	\N	f	f	f
358	2014-01-20	\N	f	t	f	\N	410	2	\N	f	f	f
359	2017-08-21	\N	f	t	f	\N	665	2	\N	f	f	f
360	2014-08-25	\N	f	t	f	\N	499	2	\N	f	f	f
361	2017-08-28	\N	f	t	f	\N	719	2	\N	f	f	f
362	2015-08-17	\N	f	t	f	\N	543	2	\N	f	f	f
363	2015-08-31	\N	f	t	f	\N	543	2	\N	f	f	f
364	2017-08-28	\N	f	t	f	\N	703	2	\N	f	f	f
365	2017-08-28	\N	f	t	f	\N	690	2	\N	f	f	f
366	2019-05-20	\N	f	t	f	\N	690	2	\N	f	f	f
367	2017-08-28	\N	f	t	f	\N	680	2	\N	f	f	f
368	2018-08-20	\N	f	t	f	\N	768	2	\N	f	f	f
369	2018-08-20	\N	f	t	f	\N	745	2	\N	f	f	f
370	2018-08-27	\N	f	t	f	\N	761	2	\N	f	f	f
371	2017-08-21	\N	f	t	f	\N	675	2	\N	f	f	f
372	2018-08-27	\N	f	t	f	\N	752	2	\N	f	f	f
373	2017-08-28	\N	f	t	f	\N	663	2	\N	f	f	f
374	2018-08-21	\N	f	t	f	\N	740	2	\N	f	f	f
375	2017-08-28	\N	f	t	f	\N	670	2	\N	f	f	f
376	2012-08-20	\N	f	t	f	\N	411	2	\N	f	f	f
377	2017-08-21	\N	f	t	f	\N	699	2	\N	f	f	f
378	2017-08-28	\N	f	t	f	\N	694	2	\N	f	f	f
379	2017-08-21	\N	f	t	f	\N	700	2	\N	f	f	f
380	2018-05-14	\N	f	t	f	\N	700	2	\N	f	f	f
381	2018-08-27	\N	f	t	f	\N	782	2	\N	f	f	f
382	2017-08-16	\N	f	t	f	\N	692	2	\N	f	f	f
383	2017-09-06	\N	f	t	f	\N	664	2	\N	f	f	f
384	2017-08-28	\N	f	t	f	\N	689	2	\N	f	f	f
385	2019-08-19	\N	f	t	f	\N	689	2	\N	f	f	f
386	2017-08-28	\N	f	t	f	\N	714	2	\N	f	f	f
387	2017-08-28	\N	f	t	f	\N	669	2	\N	f	f	f
388	2017-08-21	\N	f	t	f	\N	668	2	\N	f	f	f
389	2018-09-10	\N	f	t	f	\N	783	2	\N	f	f	f
390	2018-08-27	\N	f	t	f	\N	723	2	\N	f	f	f
391	2010-08-23	\N	f	t	f	\N	330	2	\N	f	f	f
392	2017-08-28	\N	f	t	f	\N	671	2	\N	f	f	f
393	2014-08-25	\N	f	t	f	\N	409	2	\N	f	f	f
394	2017-08-28	\N	f	t	f	\N	702	2	\N	f	f	f
395	2013-08-19	\N	f	t	f	\N	454	2	\N	f	f	f
396	2011-08-29	\N	f	t	f	\N	338	2	\N	f	f	f
397	2017-08-28	\N	f	t	f	\N	707	2	\N	f	f	f
398	2018-08-27	\N	f	t	f	\N	737	2	\N	f	f	f
399	2016-08-29	\N	f	t	f	\N	609	2	\N	f	f	f
400	2014-09-01	\N	f	t	f	\N	495	2	\N	f	f	f
401	2019-09-09	\N	f	t	f	\N	801	2	\N	f	f	f
402	2013-08-15	\N	f	t	f	\N	451	2	\N	f	f	f
403	2013-08-26	\N	f	t	f	\N	451	2	\N	f	f	f
404	2013-08-19	\N	f	t	f	\N	463	2	\N	f	f	f
405	2018-08-27	\N	f	t	f	\N	463	2	\N	f	f	f
406	2009-08-24	\N	f	t	f	\N	302	2	\N	f	f	f
407	2011-01-10	\N	f	t	f	\N	302	2	\N	f	f	f
408	2011-08-29	\N	f	t	f	\N	377	2	\N	f	f	f
409	2013-08-19	\N	f	t	f	\N	377	2	\N	f	f	f
410	2019-08-19	\N	f	t	f	\N	809	2	\N	f	f	f
412	2019-05-20	\N	f	t	f	\N	654	2	\N	f	f	f
413	2017-08-01	\N	f	t	f	\N	722	2	\N	f	f	f
414	2012-08-27	\N	f	t	f	\N	417	2	\N	f	f	f
415	2018-08-27	\N	f	t	f	\N	762	2	\N	f	f	f
416	2013-08-19	\N	f	t	f	\N	479	2	\N	f	f	f
417	2014-08-25	\N	f	t	f	\N	479	2	\N	f	f	f
418	2014-08-25	\N	f	t	f	\N	523	2	\N	f	f	f
419	2018-08-27	\N	f	t	f	\N	748	2	\N	f	f	f
420	2017-08-21	\N	f	t	f	\N	716	2	\N	f	f	f
421	2017-08-28	\N	f	t	f	\N	708	2	\N	f	f	f
422	2015-08-31	\N	f	t	f	\N	578	2	\N	f	f	f
423	2018-08-27	\N	f	t	f	\N	777	2	\N	f	f	f
424	2018-08-15	\N	f	t	f	\N	781	2	\N	f	f	f
425	2019-09-03	\N	f	t	f	\N	781	2	\N	f	f	f
426	2018-08-20	\N	f	t	f	\N	788	2	\N	f	f	f
427	2018-08-27	\N	f	t	f	\N	744	2	\N	f	f	f
428	2018-08-27	\N	f	t	f	\N	791	2	\N	f	f	f
429	2018-08-27	\N	f	t	f	\N	789	2	\N	f	f	f
430	2018-08-27	\N	f	t	f	\N	738	2	\N	f	f	f
431	2018-08-21	\N	f	t	f	\N	743	2	\N	f	f	f
432	2018-08-20	\N	f	t	f	\N	733	2	\N	f	f	f
433	2012-08-27	\N	f	t	f	\N	414	2	\N	f	f	f
434	2019-08-19	\N	f	t	f	\N	840	2	\N	f	f	f
435	2012-08-27	\N	f	t	f	\N	354	2	\N	f	f	f
436	2017-08-28	\N	f	t	f	\N	683	2	\N	f	f	f
437	2018-08-20	\N	f	t	f	\N	754	2	\N	f	f	f
438	2015-08-17	\N	f	t	f	\N	558	2	\N	f	f	f
439	2018-08-20	\N	f	t	f	\N	769	2	\N	f	f	f
440	2019-05-20	\N	f	t	f	\N	769	2	\N	f	f	f
441	2018-08-15	\N	f	t	f	\N	780	2	\N	f	f	f
442	2018-08-20	\N	f	t	f	\N	728	2	\N	f	f	f
443	2018-08-20	\N	f	t	f	\N	767	2	\N	f	f	f
444	2018-08-27	\N	f	t	f	\N	756	2	\N	f	f	f
445	2018-08-27	\N	f	t	f	\N	742	2	\N	f	f	f
446	2018-08-27	\N	f	t	f	\N	773	2	\N	f	f	f
447	2018-08-27	\N	f	t	f	\N	784	2	\N	f	f	f
448	2018-08-20	\N	f	t	f	\N	779	2	\N	f	f	f
449	2019-01-14	\N	f	t	f	\N	757	2	\N	f	f	f
450	2018-08-20	\N	f	t	f	\N	753	2	\N	f	f	f
451	2019-05-20	\N	f	t	f	\N	753	2	\N	f	f	f
452	2018-08-20	\N	f	t	f	\N	786	2	\N	f	f	f
453	2018-08-27	\N	f	t	f	\N	793	2	\N	f	f	f
454	2018-08-27	\N	f	t	f	\N	726	2	\N	f	f	f
455	2017-08-28	\N	f	t	f	\N	682	2	\N	f	f	f
456	2018-08-27	\N	f	t	f	\N	759	2	\N	f	f	f
457	2019-09-03	\N	f	t	f	\N	797	2	\N	f	f	f
458	2019-08-19	\N	f	t	f	\N	814	2	\N	f	f	f
459	2018-08-20	\N	f	t	f	\N	727	2	\N	f	f	f
460	2018-08-27	\N	f	t	f	\N	741	2	\N	f	f	f
461	2019-09-03	\N	f	t	f	\N	831	2	\N	f	f	f
462	2019-08-19	\N	f	t	f	\N	855	2	\N	f	f	f
463	2012-08-20	\N	f	t	f	\N	405	2	\N	f	f	f
464	2009-08-31	\N	f	t	f	\N	296	2	\N	f	f	f
465	2010-08-30	\N	f	t	f	\N	350	2	\N	f	f	f
466	2018-08-27	\N	f	t	f	\N	760	2	\N	f	f	f
467	2019-09-26	\N	f	t	f	\N	856	2	\N	f	f	f
468	2019-09-03	\N	f	t	f	\N	803	2	\N	f	f	f
469	2019-09-03	\N	f	t	f	\N	862	2	\N	f	f	f
470	2010-08-23	\N	f	t	f	\N	319	2	\N	f	f	f
471	2018-08-27	\N	f	t	f	\N	755	2	\N	f	f	f
472	2019-09-03	\N	f	t	f	\N	838	2	\N	f	f	f
473	2019-08-19	\N	f	t	f	\N	858	2	\N	f	f	f
474	2019-09-03	\N	f	t	f	\N	835	2	\N	f	f	f
475	2019-08-19	\N	f	t	f	\N	844	2	\N	f	f	f
476	2019-09-03	\N	f	t	f	\N	863	2	\N	f	f	f
477	2019-09-03	\N	f	t	f	\N	861	2	\N	f	f	f
478	2019-09-03	\N	f	t	f	\N	820	2	\N	f	f	f
479	2019-09-03	\N	f	t	f	\N	794	2	\N	f	f	f
480	2013-08-26	\N	f	t	f	\N	467	2	\N	f	f	f
481	2015-05-26	\N	f	t	f	\N	576	2	\N	f	f	f
482	2015-08-17	\N	f	t	f	\N	576	2	\N	f	f	f
483	2015-08-24	\N	f	t	f	\N	496	2	\N	f	f	f
484	2014-08-25	\N	f	t	f	\N	513	2	\N	f	f	f
485	2018-01-16	\N	f	t	f	\N	513	2	\N	f	f	f
486	2019-06-03	\N	f	t	f	\N	513	2	\N	f	f	f
487	2013-08-19	\N	f	t	f	\N	468	2	\N	f	f	f
488	2016-01-19	\N	f	t	f	\N	468	2	\N	f	f	f
489	2018-09-10	\N	f	t	f	\N	749	2	\N	f	f	f
490	2016-08-29	\N	f	t	f	\N	600	2	\N	f	f	f
491	2019-08-19	\N	f	t	f	\N	839	2	\N	f	f	f
492	2018-08-27	\N	f	t	f	\N	724	2	\N	f	f	f
493	2016-08-29	\N	f	t	f	\N	606	2	\N	f	f	f
494	2019-08-01	\N	f	t	f	\N	833	2	\N	f	f	f
495	2017-08-28	\N	f	t	f	\N	657	2	\N	f	f	f
496	2019-08-21	\N	f	t	f	\N	829	2	\N	f	f	f
497	2019-08-21	\N	f	t	f	\N	813	2	\N	f	f	f
498	2017-01-17	\N	f	t	f	\N	593	2	\N	f	f	f
499	2016-01-19	\N	f	t	f	\N	356	2	\N	f	f	f
500	2017-08-28	\N	f	t	f	\N	695	2	\N	f	f	f
501	2017-08-21	\N	f	t	f	\N	681	2	\N	f	f	f
502	2019-08-19	\N	f	t	f	\N	810	2	\N	f	f	f
503	2017-08-28	\N	f	t	f	\N	713	2	\N	f	f	f
504	2019-08-19	\N	f	t	f	\N	846	2	\N	f	f	f
505	2019-09-03	\N	f	t	f	\N	859	2	\N	f	f	f
506	2019-08-21	\N	f	t	f	\N	830	2	\N	f	f	f
507	2017-01-17	\N	f	t	f	\N	594	2	\N	f	f	f
508	2018-01-16	\N	f	t	f	\N	658	2	\N	f	f	f
509	2013-08-26	\N	f	t	f	\N	458	2	\N	f	f	f
510	2017-08-28	\N	f	t	f	\N	661	2	\N	f	f	f
511	2018-08-27	\N	f	t	f	\N	729	2	\N	f	f	f
512	2019-09-03	\N	f	t	f	\N	860	2	\N	f	f	f
513	2015-08-31	\N	f	t	f	\N	531	2	\N	f	f	f
514	2019-08-19	\N	f	t	f	\N	817	2	\N	f	f	f
515	2015-08-31	\N	f	t	f	\N	565	2	\N	f	f	f
516	2019-08-19	\N	f	t	f	\N	850	2	\N	f	f	f
517	2011-08-22	\N	f	t	f	\N	369	2	\N	f	f	f
518	2013-05-20	\N	f	t	f	\N	369	2	\N	f	f	f
519	2018-08-27	\N	f	t	f	\N	369	2	\N	f	f	f
520	2019-08-19	\N	f	t	f	\N	818	2	\N	f	f	f
521	2014-08-18	\N	f	t	f	\N	494	2	\N	f	f	f
522	2015-01-20	\N	f	t	f	\N	494	2	\N	f	f	f
523	2018-08-20	\N	f	t	f	\N	751	2	\N	f	f	f
524	2015-08-19	\N	f	t	f	\N	559	2	\N	f	f	f
525	2019-08-19	\N	f	t	f	\N	559	2	\N	f	f	f
526	2017-08-28	\N	f	t	f	\N	660	2	\N	f	f	f
527	2019-08-19	\N	f	t	f	\N	853	2	\N	f	f	f
528	2019-09-03	\N	f	t	f	\N	826	2	\N	f	f	f
529	2019-08-26	\N	f	t	f	\N	867	2	\N	f	f	f
530	2019-09-03	\N	f	t	f	\N	822	2	\N	f	f	f
531	2019-08-26	\N	f	t	f	\N	796	2	\N	f	f	f
532	2019-08-21	\N	f	t	f	\N	834	2	\N	f	f	f
533	2014-08-25	\N	f	t	f	\N	518	2	\N	f	f	f
534	2019-09-09	\N	f	t	f	\N	847	2	\N	f	f	f
535	2019-09-03	\N	f	t	f	\N	837	2	\N	f	f	f
536	2019-08-19	\N	f	t	f	\N	843	2	\N	f	f	f
537	2019-09-03	\N	f	t	f	\N	816	2	\N	f	f	f
538	2018-08-27	\N	f	t	f	\N	731	2	\N	f	f	f
539	2017-08-28	\N	f	t	f	\N	688	2	\N	f	f	f
540	2011-08-22	\N	f	t	f	\N	364	2	\N	f	f	f
541	2017-08-28	\N	f	t	f	\N	712	2	\N	f	f	f
542	2019-08-19	\N	f	t	f	\N	712	2	\N	f	f	f
543	2019-08-19	\N	f	t	f	\N	800	2	\N	f	f	f
544	2011-08-22	\N	f	t	f	\N	378	2	\N	f	f	f
545	2016-09-16	\N	f	t	f	\N	378	2	\N	f	f	f
546	2016-08-22	\N	f	t	f	\N	607	2	\N	f	f	f
\.


--
-- Name: alumni_tracker_app_alumnuscheckin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_alumnuscheckin_id_seq', 564, true);


--
-- Data for Name: alumni_tracker_app_alumnuscheckincommongoodtag; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_alumnuscheckincommongoodtag (id, checkin_id, tag_id) FROM stdin;
14	24	1
18	24	2
19	24	3
20	24	5
21	24	6
22	24	7
23	24	8
24	29	9
25	29	2
26	29	5
27	29	6
28	29	4
29	547	1
30	547	2
31	547	3
32	547	5
33	547	6
34	547	7
35	547	8
36	547	9
37	548	1
38	548	7
39	548	9
40	548	6
41	549	1
42	549	3
43	549	5
44	549	7
45	549	8
46	549	9
47	550	8
48	550	9
49	550	7
50	57	2
51	57	3
52	57	4
53	57	5
54	57	7
55	57	8
56	556	2
57	556	4
58	556	5
59	556	6
60	556	8
61	556	9
62	557	1
63	557	2
64	557	3
65	557	5
66	557	8
67	557	9
68	559	3
69	559	6
70	559	7
71	561	1
72	561	2
73	561	3
74	561	5
75	561	6
76	561	7
77	561	8
78	561	9
79	562	2
80	562	3
81	562	4
82	562	5
83	562	6
84	562	7
85	562	8
86	562	9
87	563	2
88	563	3
89	563	5
90	563	7
91	563	8
92	563	9
93	564	8
94	564	9
95	564	6
96	564	7
\.


--
-- Name: alumni_tracker_app_alumnuscheckincommongoodtag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_alumnuscheckincommongoodtag_id_seq', 96, true);


--
-- Data for Name: alumni_tracker_app_alumnuscheckinemployment; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_alumnuscheckinemployment (id, paid, title, discontinued, start_date, stop_date, satisfaction, compensation_type, compensation_ammount, hourly_approx_weekly_hours, alumnus_checkin_id, continuation_of_id, continued_in_id, employer_id, extent_id, position_id, work_state_id) FROM stdin;
2	t	Director of Child Development	f	2018-11-26	\N	LV	S	\N	\N	24	\N	\N	8	1	1	1
3	t	Procedure Coordinator	f	2018-09-27	\N	\N	\N	\N	\N	29	\N	\N	9	1	1	1
4	t	Financial Accountant	f	2020-04-20	\N	LV	S	\N	\N	547	\N	\N	62	1	1	1
5	t	Immigration Attorney	f	2018-08-01	\N	LS	S	\N	\N	548	\N	\N	64	1	1	1
6	t	Instructor & Assistant	f	2019-08-05	\N	LS	S	\N	\N	549	\N	\N	65	1	1	1
7	t	Accountant II	f	2018-03-05	\N	LS	H	\N	\N	550	\N	\N	66	2	1	1
8	t	Family Support Liaison	f	2017-11-06	\N	LV	S	\N	\N	57	\N	\N	67	1	1	1
10	t	\N	f	2020-11-15	\N	\N	\N	\N	\N	554	\N	\N	62	1	1	1
11	t	Park Ranger	f	2020-07-19	\N	LS	H	\N	\N	556	\N	\N	70	1	1	1
12	t	Process Engineer	f	2019-05-25	\N	LV	\N	\N	\N	557	\N	\N	72	1	1	1
13	t	Front Desk Associate	f	2020-12-07	\N	\N	\N	\N	\N	561	\N	\N	73	1	1	1
14	t	Techinical Support	f	2020-08-10	\N	LS	S	\N	\N	562	\N	\N	74	1	1	1
15	t	Cashier	f	2016-07-08	\N	LS	H	\N	\N	564	\N	\N	75	1	1	1
\.


--
-- Name: alumni_tracker_app_alumnuscheckinemployment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_alumnuscheckinemployment_id_seq', 15, true);


--
-- Name: alumni_tracker_app_alumnuscheckinemploymentemploymentben_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_alumnuscheckinemploymentemploymentben_id_seq', 25, true);


--
-- Data for Name: alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit (id, benefit_id, checkin_employment_id) FROM stdin;
1	1	2
2	2	2
3	1	3
4	2	3
5	1	4
6	2	4
7	3	4
8	4	4
9	1	5
10	2	5
11	3	5
12	4	6
13	1	6
14	1	8
15	2	8
16	3	8
17	1	12
18	2	12
19	3	12
20	4	12
21	2	13
22	1	14
23	2	14
24	3	14
25	4	14
\.


--
-- Data for Name: alumni_tracker_app_alumnuscheckinemploymenttag; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_alumnuscheckinemploymenttag (id, checkin_employment_id, tag_id) FROM stdin;
3	2	49
4	2	1
6	12	20
7	15	47
8	15	16
\.


--
-- Name: alumni_tracker_app_alumnuscheckinemploymenttag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_alumnuscheckinemploymenttag_id_seq', 8, true);


--
-- Data for Name: alumni_tracker_app_alumnuscheckinenrollment; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_alumnuscheckinenrollment (id, start_date, stop_date, completed, discontinued, alumnus_checkin_id, continuation_of_id, continued_in_id, credential_awarder_id, credential_goal_id, extent_id, study_state_id) FROM stdin;
4	2011-08-22	\N	f	f	32	\N	\N	29	\N	\N	1
5	2013-08-26	\N	f	f	33	\N	\N	4	\N	\N	1
6	2009-08-31	\N	f	f	34	\N	\N	4	\N	\N	1
7	2011-08-29	\N	f	f	35	\N	\N	4	\N	\N	1
8	2012-01-09	\N	f	f	36	\N	\N	4	\N	\N	1
9	2012-08-27	\N	f	f	37	\N	\N	4	\N	\N	1
10	2012-08-20	\N	f	f	38	\N	\N	29	\N	\N	1
11	2018-05-29	\N	f	f	39	\N	\N	38	\N	\N	44
12	2015-08-17	\N	f	f	40	\N	\N	29	\N	\N	1
13	2017-05-15	\N	f	f	41	\N	\N	4	\N	\N	1
14	2010-08-23	\N	f	f	42	\N	\N	29	\N	\N	1
15	2012-01-09	\N	f	f	43	\N	\N	4	\N	\N	1
16	2011-08-25	\N	f	f	44	\N	\N	12	\N	\N	1
17	2015-06-08	\N	f	f	45	\N	\N	24	\N	\N	1
18	2017-01-17	\N	f	f	46	\N	\N	29	\N	\N	1
19	2014-08-25	\N	f	f	47	\N	\N	4	\N	\N	1
20	2011-08-29	\N	f	f	48	\N	\N	4	\N	\N	1
21	2011-08-22	\N	f	f	49	\N	\N	41	\N	\N	7
22	2012-08-20	\N	f	f	50	\N	\N	29	\N	\N	1
23	2018-05-14	\N	f	f	51	\N	\N	4	\N	\N	1
24	2013-08-19	\N	f	f	52	\N	\N	29	\N	\N	1
25	2016-01-19	\N	f	f	53	\N	\N	4	\N	\N	1
26	2011-08-29	\N	f	f	54	\N	\N	4	\N	\N	1
27	2014-08-25	\N	f	f	55	\N	\N	4	\N	\N	1
28	2012-08-27	\N	f	f	56	\N	\N	4	\N	\N	1
29	2012-09-03	\N	f	f	57	\N	\N	17	\N	\N	17
30	2016-08-29	\N	f	f	58	\N	\N	4	\N	\N	1
31	2015-08-01	\N	f	f	59	\N	\N	43	\N	\N	1
32	2016-08-22	\N	f	f	60	\N	\N	29	\N	\N	1
33	2018-05-14	\N	f	f	61	\N	\N	4	\N	\N	1
34	2019-01-14	\N	f	f	62	\N	\N	31	\N	\N	1
35	2016-08-29	\N	f	f	63	\N	\N	4	\N	\N	1
36	2012-08-20	\N	f	f	64	\N	\N	29	\N	\N	1
37	2013-05-20	\N	f	f	65	\N	\N	4	\N	\N	1
38	2015-08-17	\N	f	f	66	\N	\N	29	\N	\N	1
39	2013-08-19	\N	f	f	67	\N	\N	29	\N	\N	1
40	2019-08-13	\N	f	f	68	\N	\N	59	\N	\N	7
41	2014-08-25	\N	f	f	69	\N	\N	4	\N	\N	1
42	2017-08-28	\N	f	f	70	\N	\N	4	\N	\N	1
43	2019-09-03	\N	f	f	71	\N	\N	4	\N	\N	1
44	2017-08-21	\N	f	f	72	\N	\N	29	\N	\N	1
45	2015-08-17	\N	f	f	73	\N	\N	29	\N	\N	1
46	2012-08-20	\N	f	f	74	\N	\N	29	\N	\N	1
47	2013-08-26	\N	f	f	75	\N	\N	4	\N	\N	1
48	2015-08-31	\N	f	f	76	\N	\N	4	\N	\N	1
49	2010-08-23	\N	f	f	77	\N	\N	29	\N	\N	1
50	2011-05-23	\N	f	f	78	\N	\N	4	\N	\N	1
51	2016-01-18	\N	f	f	79	\N	\N	31	\N	\N	1
52	2010-08-30	\N	f	f	80	\N	\N	4	\N	\N	1
53	2009-08-31	\N	f	f	81	\N	\N	42	\N	\N	11
54	2011-08-22	\N	f	f	82	\N	\N	47	\N	\N	11
55	2009-08-24	\N	f	f	83	\N	\N	29	\N	\N	1
56	2016-09-06	\N	f	f	84	\N	\N	39	\N	\N	50
57	2009-08-31	\N	f	f	85	\N	\N	4	\N	\N	1
58	2010-05-24	\N	f	f	86	\N	\N	4	\N	\N	1
59	2010-08-23	\N	f	f	87	\N	\N	29	\N	\N	1
60	2014-08-25	\N	f	f	88	\N	\N	4	\N	\N	1
61	2010-08-30	\N	f	f	89	\N	\N	4	\N	\N	1
62	2011-08-22	\N	f	f	90	\N	\N	29	\N	\N	1
63	2013-01-14	\N	f	f	91	\N	\N	29	\N	\N	1
64	2017-08-28	\N	f	f	92	\N	\N	4	\N	\N	1
65	2010-08-30	\N	f	f	93	\N	\N	4	\N	\N	1
66	2010-08-23	\N	f	f	94	\N	\N	29	\N	\N	1
67	2010-08-15	\N	f	f	95	\N	\N	43	\N	\N	1
68	2011-01-13	\N	f	f	96	\N	\N	6	\N	\N	1
69	2014-01-06	\N	f	f	97	\N	\N	4	\N	\N	1
70	2010-08-23	\N	f	f	98	\N	\N	29	\N	\N	1
71	2012-05-21	\N	f	f	99	\N	\N	4	\N	\N	1
72	2009-08-31	\N	f	f	100	\N	\N	4	\N	\N	1
73	2009-08-31	\N	f	f	101	\N	\N	4	\N	\N	1
74	2011-08-22	\N	f	f	102	\N	\N	29	\N	\N	1
75	2011-01-10	\N	f	f	103	\N	\N	4	\N	\N	1
76	2010-08-19	\N	f	f	104	\N	\N	6	\N	\N	1
77	2009-08-24	\N	f	f	105	\N	\N	29	\N	\N	1
78	2010-08-30	\N	f	f	106	\N	\N	4	\N	\N	1
79	2009-08-24	\N	f	f	107	\N	\N	29	\N	\N	1
80	2010-05-24	\N	f	f	108	\N	\N	4	\N	\N	1
81	2010-08-23	\N	f	f	109	\N	\N	29	\N	\N	1
82	2010-08-30	\N	f	f	110	\N	\N	17	\N	\N	17
83	2013-05-20	\N	f	f	111	\N	\N	4	\N	\N	1
84	2010-08-23	\N	f	f	112	\N	\N	29	\N	\N	1
85	2012-08-27	\N	f	f	113	\N	\N	4	\N	\N	1
86	2009-08-24	\N	f	f	114	\N	\N	29	\N	\N	1
87	2009-08-24	\N	f	f	115	\N	\N	29	\N	\N	1
88	2010-01-11	\N	f	f	116	\N	\N	4	\N	\N	1
89	2009-08-31	\N	f	f	117	\N	\N	4	\N	\N	1
90	2010-05-24	\N	f	f	118	\N	\N	4	\N	\N	1
91	2010-08-23	\N	f	f	119	\N	\N	29	\N	\N	1
92	2010-08-30	\N	f	f	120	\N	\N	17	\N	\N	17
93	2015-08-31	\N	f	f	121	\N	\N	4	\N	\N	1
94	2010-08-30	\N	f	f	122	\N	\N	4	\N	\N	1
95	2010-08-30	\N	f	f	123	\N	\N	4	\N	\N	1
96	2010-08-23	\N	f	f	124	\N	\N	29	\N	\N	1
97	2014-05-19	\N	f	f	125	\N	\N	4	\N	\N	1
98	2010-08-23	\N	f	f	126	\N	\N	29	\N	\N	1
99	2010-08-30	\N	f	f	127	\N	\N	4	\N	\N	1
100	2011-08-22	\N	f	f	128	\N	\N	29	\N	\N	1
101	2018-08-27	\N	f	f	129	\N	\N	4	\N	\N	1
102	2016-08-29	\N	f	f	130	\N	\N	4	\N	\N	1
103	2010-08-23	\N	f	f	131	\N	\N	29	\N	\N	1
104	2012-01-09	\N	f	f	132	\N	\N	4	\N	\N	1
105	2015-01-12	\N	f	f	133	\N	\N	57	\N	\N	1
106	2012-08-27	\N	f	f	134	\N	\N	4	\N	\N	1
107	2014-03-17	\N	f	f	135	\N	\N	40	\N	\N	16
108	2012-08-20	\N	f	f	136	\N	\N	19	\N	\N	1
109	2013-01-07	\N	f	f	137	\N	\N	4	\N	\N	1
110	2013-06-17	\N	f	f	138	\N	\N	40	\N	\N	16
111	2016-05-16	\N	f	f	139	\N	\N	4	\N	\N	1
112	2009-08-31	\N	f	f	140	\N	\N	22	\N	\N	33
113	2010-08-23	\N	f	f	141	\N	\N	34	\N	\N	44
114	2010-08-23	\N	f	f	142	\N	\N	29	\N	\N	1
115	2013-08-26	\N	f	f	143	\N	\N	4	\N	\N	1
116	2011-08-22	\N	f	f	144	\N	\N	29	\N	\N	1
117	2014-05-19	\N	f	f	145	\N	\N	4	\N	\N	1
118	2014-08-18	\N	f	f	146	\N	\N	29	\N	\N	1
119	2016-08-29	\N	f	f	147	\N	\N	4	\N	\N	1
120	2013-08-26	\N	f	f	148	\N	\N	4	\N	\N	1
121	2011-08-22	\N	f	f	149	\N	\N	29	\N	\N	1
122	2014-06-16	\N	f	f	150	\N	\N	40	\N	\N	16
123	2011-08-22	\N	f	f	151	\N	\N	29	\N	\N	1
124	2012-01-09	\N	f	f	152	\N	\N	4	\N	\N	1
125	2013-08-26	\N	f	f	153	\N	\N	4	\N	\N	1
126	2013-08-26	\N	f	f	154	\N	\N	4	\N	\N	1
127	2013-08-19	\N	f	f	155	\N	\N	29	\N	\N	1
128	2017-08-21	\N	f	f	156	\N	\N	28	\N	\N	7
129	2018-01-15	\N	f	f	157	\N	\N	56	\N	\N	7
130	2013-08-19	\N	f	f	158	\N	\N	29	\N	\N	1
131	2014-08-25	\N	f	f	159	\N	\N	4	\N	\N	1
132	2014-08-21	\N	f	f	160	\N	\N	6	\N	\N	1
133	2019-02-04	\N	f	f	161	\N	\N	32	\N	\N	49
134	2013-08-19	\N	f	f	162	\N	\N	29	\N	\N	1
135	2014-05-19	\N	f	f	163	\N	\N	4	\N	\N	1
136	2013-08-26	\N	f	f	164	\N	\N	4	\N	\N	1
137	2011-08-29	\N	f	f	165	\N	\N	4	\N	\N	1
138	2016-01-04	\N	f	f	166	\N	\N	57	\N	\N	1
139	2019-06-10	\N	f	f	167	\N	\N	37	\N	\N	4
140	2014-08-25	\N	f	f	168	\N	\N	4	\N	\N	1
141	2012-08-27	\N	f	f	169	\N	\N	53	\N	\N	6
142	2014-06-16	\N	f	f	170	\N	\N	27	\N	\N	6
143	2017-06-05	\N	f	f	171	\N	\N	29	\N	\N	1
144	2016-09-05	\N	f	f	172	\N	\N	17	\N	\N	17
145	2016-08-29	\N	f	f	173	\N	\N	4	\N	\N	1
146	2017-08-21	\N	f	f	174	\N	\N	29	\N	\N	1
147	2013-08-26	\N	f	f	175	\N	\N	4	\N	\N	1
148	2014-08-25	\N	f	f	176	\N	\N	4	\N	\N	1
149	2015-08-31	\N	f	f	177	\N	\N	4	\N	\N	1
150	2011-08-22	\N	f	f	178	\N	\N	29	\N	\N	1
151	2012-08-20	\N	f	f	179	\N	\N	29	\N	\N	1
152	2014-01-06	\N	f	f	180	\N	\N	4	\N	\N	1
153	2012-08-27	\N	f	f	181	\N	\N	4	\N	\N	1
154	2013-08-19	\N	f	f	182	\N	\N	29	\N	\N	1
155	2014-08-25	\N	f	f	183	\N	\N	4	\N	\N	1
156	2015-08-31	\N	f	f	184	\N	\N	4	\N	\N	1
157	2018-08-20	\N	f	f	185	\N	\N	29	\N	\N	1
158	2015-09-21	\N	f	f	186	\N	\N	44	\N	\N	48
159	2017-04-10	\N	f	f	187	\N	\N	25	\N	\N	48
160	2018-08-20	\N	f	f	188	\N	\N	54	\N	\N	48
161	2015-08-31	\N	f	f	189	\N	\N	4	\N	\N	1
162	2012-08-23	\N	f	f	190	\N	\N	6	\N	\N	1
163	2012-08-20	\N	f	f	191	\N	\N	29	\N	\N	1
164	2014-05-19	\N	f	f	192	\N	\N	4	\N	\N	1
165	2013-08-19	\N	f	f	193	\N	\N	29	\N	\N	1
166	2017-01-17	\N	f	f	194	\N	\N	4	\N	\N	1
167	2013-08-15	\N	f	f	195	\N	\N	43	\N	\N	1
168	2014-01-06	\N	f	f	196	\N	\N	4	\N	\N	1
169	2010-08-23	\N	f	f	197	\N	\N	29	\N	\N	1
170	2010-08-30	\N	f	f	198	\N	\N	17	\N	\N	17
171	2011-08-24	\N	f	f	199	\N	\N	31	\N	\N	1
172	2011-08-29	\N	f	f	200	\N	\N	4	\N	\N	1
173	2011-08-22	\N	f	f	201	\N	\N	29	\N	\N	1
174	2011-08-22	\N	f	f	202	\N	\N	29	\N	\N	1
175	2014-05-19	\N	f	f	203	\N	\N	4	\N	\N	1
176	2016-02-08	\N	f	f	204	\N	\N	57	\N	\N	1
177	2014-08-25	\N	f	f	205	\N	\N	4	\N	\N	1
178	2012-08-22	\N	f	f	206	\N	\N	15	\N	\N	44
179	2014-08-25	\N	f	f	207	\N	\N	61	\N	\N	44
180	2016-08-22	\N	f	f	208	\N	\N	15	\N	\N	44
181	2016-08-29	\N	f	f	209	\N	\N	4	\N	\N	1
182	2014-08-25	\N	f	f	210	\N	\N	46	\N	\N	44
183	2015-06-01	\N	f	f	211	\N	\N	20	\N	\N	44
184	2012-08-20	\N	f	f	212	\N	\N	29	\N	\N	1
185	2013-08-26	\N	f	f	213	\N	\N	4	\N	\N	1
186	2012-08-27	\N	f	f	214	\N	\N	4	\N	\N	1
187	2013-09-02	\N	f	f	215	\N	\N	17	\N	\N	17
188	2013-08-26	\N	f	f	216	\N	\N	4	\N	\N	1
189	2017-08-28	\N	f	f	217	\N	\N	4	\N	\N	1
190	2015-08-17	\N	f	f	218	\N	\N	29	\N	\N	1
191	2016-08-29	\N	f	f	219	\N	\N	4	\N	\N	1
192	2013-08-26	\N	f	f	220	\N	\N	4	\N	\N	1
193	2014-08-18	\N	f	f	221	\N	\N	29	\N	\N	1
194	2016-05-16	\N	f	f	222	\N	\N	4	\N	\N	1
195	2014-01-20	\N	f	f	223	\N	\N	29	\N	\N	1
196	2015-05-26	\N	f	f	224	\N	\N	4	\N	\N	1
197	2015-08-18	\N	f	f	225	\N	\N	31	\N	\N	1
198	2015-08-31	\N	f	f	226	\N	\N	4	\N	\N	1
199	2018-08-20	\N	f	f	227	\N	\N	29	\N	\N	1
200	2015-08-17	\N	f	f	228	\N	\N	29	\N	\N	1
201	2016-01-19	\N	f	f	229	\N	\N	4	\N	\N	1
202	2016-08-29	\N	f	f	230	\N	\N	4	\N	\N	1
203	2016-08-22	\N	f	f	231	\N	\N	29	\N	\N	1
204	2016-08-22	\N	f	f	232	\N	\N	36	\N	\N	4
205	2019-08-19	\N	f	f	233	\N	\N	13	\N	\N	4
206	2011-08-22	\N	f	f	234	\N	\N	29	\N	\N	1
207	2014-05-19	\N	f	f	235	\N	\N	4	\N	\N	1
208	2011-08-22	\N	f	f	236	\N	\N	29	\N	\N	1
209	2011-08-22	\N	f	f	237	\N	\N	29	\N	\N	1
210	2012-05-21	\N	f	f	238	\N	\N	4	\N	\N	1
211	2012-08-20	\N	f	f	239	\N	\N	29	\N	\N	1
212	2012-08-20	\N	f	f	240	\N	\N	29	\N	\N	1
213	2013-05-20	\N	f	f	241	\N	\N	4	\N	\N	1
214	2012-08-20	\N	f	f	242	\N	\N	29	\N	\N	1
215	2013-05-20	\N	f	f	243	\N	\N	4	\N	\N	1
216	2017-08-01	\N	f	f	244	\N	\N	43	\N	\N	1
217	2014-08-18	\N	f	f	245	\N	\N	29	\N	\N	1
218	2014-08-18	\N	f	f	246	\N	\N	29	\N	\N	1
219	2018-07-01	\N	f	f	247	\N	\N	29	\N	\N	1
220	2013-08-19	\N	f	f	248	\N	\N	29	\N	\N	1
221	2014-08-21	\N	f	f	249	\N	\N	6	\N	\N	1
222	2016-08-22	\N	f	f	250	\N	\N	29	\N	\N	1
223	2017-08-28	\N	f	f	251	\N	\N	4	\N	\N	1
224	2019-08-20	\N	f	f	252	\N	\N	31	\N	\N	1
225	2012-08-20	\N	f	f	253	\N	\N	29	\N	\N	1
226	2013-05-20	\N	f	f	254	\N	\N	4	\N	\N	1
227	2014-09-01	\N	f	f	255	\N	\N	14	\N	\N	39
228	2017-01-01	\N	f	f	256	\N	\N	30	\N	\N	46
229	2013-08-19	\N	f	f	257	\N	\N	29	\N	\N	1
230	2017-08-28	\N	f	f	258	\N	\N	4	\N	\N	1
231	2016-09-26	\N	f	f	259	\N	\N	10	\N	\N	6
232	2016-08-29	\N	f	f	260	\N	\N	4	\N	\N	1
233	2014-08-18	\N	f	f	261	\N	\N	29	\N	\N	1
234	2015-08-31	\N	f	f	262	\N	\N	4	\N	\N	1
235	2014-08-18	\N	f	f	263	\N	\N	29	\N	\N	1
236	2019-05-20	\N	f	f	264	\N	\N	4	\N	\N	1
237	2018-05-14	\N	f	f	265	\N	\N	4	\N	\N	1
238	2016-08-22	\N	f	f	266	\N	\N	29	\N	\N	1
239	2012-01-16	\N	f	f	267	\N	\N	29	\N	\N	1
240	2013-08-15	\N	f	f	268	\N	\N	43	\N	\N	1
241	2014-08-25	\N	f	f	269	\N	\N	4	\N	\N	1
242	2013-08-19	\N	f	f	270	\N	\N	29	\N	\N	1
243	2016-08-29	\N	f	f	271	\N	\N	4	\N	\N	1
244	2014-08-25	\N	f	f	272	\N	\N	4	\N	\N	1
245	2017-08-28	\N	f	f	273	\N	\N	4	\N	\N	1
246	2015-08-31	\N	f	f	274	\N	\N	4	\N	\N	1
247	2012-08-20	\N	f	f	275	\N	\N	29	\N	\N	1
248	2016-08-29	\N	f	f	276	\N	\N	4	\N	\N	1
249	2011-08-22	\N	f	f	277	\N	\N	29	\N	\N	1
250	2013-08-26	\N	f	f	278	\N	\N	35	\N	\N	33
251	2017-08-21	\N	f	f	279	\N	\N	29	\N	\N	1
252	2013-08-19	\N	f	f	280	\N	\N	29	\N	\N	1
253	2017-08-28	\N	f	f	281	\N	\N	4	\N	\N	1
254	2015-08-31	\N	f	f	282	\N	\N	4	\N	\N	1
255	2015-08-17	\N	f	f	283	\N	\N	29	\N	\N	1
256	2019-01-14	\N	f	f	284	\N	\N	4	\N	\N	1
257	2014-08-18	\N	f	f	285	\N	\N	29	\N	\N	1
258	2016-01-18	\N	f	f	286	\N	\N	29	\N	\N	1
259	2018-05-14	\N	f	f	287	\N	\N	4	\N	\N	1
260	2015-08-17	\N	f	f	288	\N	\N	29	\N	\N	1
261	2016-08-29	\N	f	f	289	\N	\N	4	\N	\N	1
262	2016-08-22	\N	f	f	290	\N	\N	45	\N	\N	44
263	2017-01-17	\N	f	f	291	\N	\N	16	\N	\N	44
264	2014-08-25	\N	f	f	292	\N	\N	4	\N	\N	1
265	2012-08-20	\N	f	f	293	\N	\N	29	\N	\N	1
266	2013-08-19	\N	f	f	294	\N	\N	29	\N	\N	1
267	2016-05-16	\N	f	f	295	\N	\N	4	\N	\N	1
268	2016-01-19	\N	f	f	296	\N	\N	4	\N	\N	1
269	2014-08-25	\N	f	f	297	\N	\N	4	\N	\N	1
270	2012-08-27	\N	f	f	298	\N	\N	4	\N	\N	1
271	2013-08-19	\N	f	f	299	\N	\N	29	\N	\N	1
272	2014-05-19	\N	f	f	300	\N	\N	4	\N	\N	1
273	2014-08-25	\N	f	f	301	\N	\N	4	\N	\N	1
274	2013-08-19	\N	f	f	302	\N	\N	29	\N	\N	1
275	2011-08-22	\N	f	f	303	\N	\N	29	\N	\N	1
276	2013-05-20	\N	f	f	304	\N	\N	4	\N	\N	1
277	2018-08-27	\N	f	f	305	\N	\N	4	\N	\N	1
278	2011-08-22	\N	f	f	306	\N	\N	29	\N	\N	1
279	2016-01-19	\N	f	f	307	\N	\N	4	\N	\N	1
280	2017-08-21	\N	f	f	308	\N	\N	29	\N	\N	1
281	2019-04-01	\N	f	f	309	\N	\N	21	\N	\N	10
282	2011-08-22	\N	f	f	310	\N	\N	29	\N	\N	1
283	2015-05-26	\N	f	f	311	\N	\N	4	\N	\N	1
284	2011-08-22	\N	f	f	312	\N	\N	29	\N	\N	1
285	2012-05-21	\N	f	f	313	\N	\N	4	\N	\N	1
286	2015-08-19	\N	f	f	314	\N	\N	6	\N	\N	1
287	2012-08-27	\N	f	f	315	\N	\N	4	\N	\N	1
288	2013-08-26	\N	f	f	316	\N	\N	4	\N	\N	1
289	2012-08-20	\N	f	f	317	\N	\N	29	\N	\N	1
290	2013-05-20	\N	f	f	318	\N	\N	4	\N	\N	1
291	2015-08-17	\N	f	f	319	\N	\N	29	\N	\N	1
292	2015-08-31	\N	f	f	320	\N	\N	4	\N	\N	1
293	2015-05-26	\N	f	f	321	\N	\N	4	\N	\N	1
294	2013-09-02	\N	f	f	322	\N	\N	17	\N	\N	17
295	2015-06-01	\N	f	f	323	\N	\N	29	\N	\N	1
296	2015-08-31	\N	f	f	324	\N	\N	4	\N	\N	1
297	2014-08-25	\N	f	f	325	\N	\N	4	\N	\N	1
298	2014-08-18	\N	f	f	326	\N	\N	29	\N	\N	1
299	2019-01-14	\N	f	f	327	\N	\N	4	\N	\N	1
300	2017-08-21	\N	f	f	328	\N	\N	29	\N	\N	1
301	2014-08-25	\N	f	f	329	\N	\N	4	\N	\N	1
302	2016-08-29	\N	f	f	330	\N	\N	4	\N	\N	1
303	2014-08-18	\N	f	f	331	\N	\N	29	\N	\N	1
304	2014-08-25	\N	f	f	332	\N	\N	4	\N	\N	1
305	2016-08-29	\N	f	f	333	\N	\N	4	\N	\N	1
306	2017-08-28	\N	f	f	334	\N	\N	4	\N	\N	1
307	2017-08-28	\N	f	f	335	\N	\N	4	\N	\N	1
308	2017-08-28	\N	f	f	336	\N	\N	4	\N	\N	1
309	2017-08-28	\N	f	f	337	\N	\N	4	\N	\N	1
310	2017-08-28	\N	f	f	338	\N	\N	4	\N	\N	1
311	2011-08-22	\N	f	f	339	\N	\N	29	\N	\N	1
312	2012-01-09	\N	f	f	340	\N	\N	4	\N	\N	1
313	2017-08-21	\N	f	f	341	\N	\N	29	\N	\N	1
314	2018-05-14	\N	f	f	342	\N	\N	4	\N	\N	1
315	2017-08-21	\N	f	f	343	\N	\N	29	\N	\N	1
316	2019-01-14	\N	f	f	344	\N	\N	4	\N	\N	1
317	2018-08-27	\N	f	f	345	\N	\N	4	\N	\N	1
318	2015-08-17	\N	f	f	346	\N	\N	29	\N	\N	1
319	2015-01-20	\N	f	f	347	\N	\N	4	\N	\N	1
320	2016-01-18	\N	f	f	348	\N	\N	29	\N	\N	1
321	2009-08-24	\N	f	f	349	\N	\N	29	\N	\N	1
322	2009-08-31	\N	f	f	350	\N	\N	4	\N	\N	1
323	2018-01-16	\N	f	f	351	\N	\N	4	\N	\N	1
324	2019-09-03	\N	f	f	352	\N	\N	4	\N	\N	1
325	2015-08-31	\N	f	f	353	\N	\N	4	\N	\N	1
326	2017-09-11	\N	f	f	354	\N	\N	55	\N	\N	15
327	2017-08-28	\N	f	f	355	\N	\N	4	\N	\N	1
328	2017-08-28	\N	f	f	356	\N	\N	4	\N	\N	1
330	2014-01-20	\N	f	f	358	\N	\N	29	\N	\N	1
331	2017-08-21	\N	f	f	359	\N	\N	23	\N	\N	1
332	2014-08-25	\N	f	f	360	\N	\N	4	\N	\N	1
333	2017-08-28	\N	f	f	361	\N	\N	4	\N	\N	1
334	2015-08-17	\N	f	f	362	\N	\N	29	\N	\N	1
335	2015-08-31	\N	f	f	363	\N	\N	4	\N	\N	1
336	2017-08-28	\N	f	f	364	\N	\N	4	\N	\N	1
337	2017-08-28	\N	f	f	365	\N	\N	52	\N	\N	44
338	2019-05-20	\N	f	f	366	\N	\N	4	\N	\N	1
339	2017-08-28	\N	f	f	367	\N	\N	4	\N	\N	1
340	2018-08-20	\N	f	f	368	\N	\N	29	\N	\N	1
341	2018-08-20	\N	f	f	369	\N	\N	29	\N	\N	1
342	2018-08-27	\N	f	f	370	\N	\N	4	\N	\N	1
343	2017-08-21	\N	f	f	371	\N	\N	29	\N	\N	1
344	2018-08-27	\N	f	f	372	\N	\N	4	\N	\N	1
345	2017-08-28	\N	f	f	373	\N	\N	4	\N	\N	1
346	2018-08-21	\N	f	f	374	\N	\N	31	\N	\N	1
347	2017-08-28	\N	f	f	375	\N	\N	4	\N	\N	1
348	2012-08-20	\N	f	f	376	\N	\N	29	\N	\N	1
349	2017-08-21	\N	f	f	377	\N	\N	29	\N	\N	1
350	2017-08-28	\N	f	f	378	\N	\N	4	\N	\N	1
351	2017-08-21	\N	f	f	379	\N	\N	29	\N	\N	1
352	2018-05-14	\N	f	f	380	\N	\N	4	\N	\N	1
353	2018-08-27	\N	f	f	381	\N	\N	4	\N	\N	1
354	2017-08-16	\N	f	f	382	\N	\N	6	\N	\N	1
355	2017-09-06	\N	f	f	383	\N	\N	48	\N	\N	23
356	2017-08-28	\N	f	f	384	\N	\N	4	\N	\N	1
357	2019-08-19	\N	f	f	385	\N	\N	29	\N	\N	1
358	2017-08-28	\N	f	f	386	\N	\N	4	\N	\N	1
359	2017-08-28	\N	f	f	387	\N	\N	4	\N	\N	1
360	2017-08-21	\N	f	f	388	\N	\N	29	\N	\N	1
361	2018-09-10	\N	f	f	389	\N	\N	50	\N	\N	7
362	2018-08-27	\N	f	f	390	\N	\N	4	\N	\N	1
363	2010-08-23	\N	f	f	391	\N	\N	29	\N	\N	1
364	2017-08-28	\N	f	f	392	\N	\N	4	\N	\N	1
365	2014-08-25	\N	f	f	393	\N	\N	4	\N	\N	1
366	2017-08-28	\N	f	f	394	\N	\N	4	\N	\N	1
367	2013-08-19	\N	f	f	395	\N	\N	29	\N	\N	1
368	2011-08-29	\N	f	f	396	\N	\N	4	\N	\N	1
369	2017-08-28	\N	f	f	397	\N	\N	4	\N	\N	1
370	2018-08-27	\N	f	f	398	\N	\N	4	\N	\N	1
371	2016-08-29	\N	f	f	399	\N	\N	4	\N	\N	1
372	2014-09-01	\N	f	f	400	\N	\N	33	\N	\N	7
373	2019-09-09	\N	f	f	401	\N	\N	11	\N	\N	1
374	2013-08-15	\N	f	f	402	\N	\N	43	\N	\N	1
375	2013-08-26	\N	f	f	403	\N	\N	4	\N	\N	1
376	2013-08-19	\N	f	f	404	\N	\N	29	\N	\N	1
377	2018-08-27	\N	f	f	405	\N	\N	4	\N	\N	1
378	2009-08-24	\N	f	f	406	\N	\N	29	\N	\N	1
379	2011-01-10	\N	f	f	407	\N	\N	4	\N	\N	1
380	2011-08-29	\N	f	f	408	\N	\N	4	\N	\N	1
381	2013-08-19	\N	f	f	409	\N	\N	29	\N	\N	1
382	2019-08-19	\N	f	f	410	\N	\N	29	\N	\N	1
384	2019-05-20	\N	f	f	412	\N	\N	4	\N	\N	1
385	2017-08-01	\N	f	f	413	\N	\N	43	\N	\N	1
386	2012-08-27	\N	f	f	414	\N	\N	4	\N	\N	1
387	2018-08-27	\N	f	f	415	\N	\N	4	\N	\N	1
388	2013-08-19	\N	f	f	416	\N	\N	29	\N	\N	1
389	2014-08-25	\N	f	f	417	\N	\N	4	\N	\N	1
390	2014-08-25	\N	f	f	418	\N	\N	4	\N	\N	1
391	2018-08-27	\N	f	f	419	\N	\N	4	\N	\N	1
392	2017-08-21	\N	f	f	420	\N	\N	29	\N	\N	1
393	2017-08-28	\N	f	f	421	\N	\N	4	\N	\N	1
394	2015-08-31	\N	f	f	422	\N	\N	4	\N	\N	1
395	2018-08-27	\N	f	f	423	\N	\N	4	\N	\N	1
396	2018-08-15	\N	f	f	424	\N	\N	6	\N	\N	1
397	2019-09-03	\N	f	f	425	\N	\N	4	\N	\N	1
398	2018-08-20	\N	f	f	426	\N	\N	29	\N	\N	1
399	2018-08-27	\N	f	f	427	\N	\N	4	\N	\N	1
400	2018-08-27	\N	f	f	428	\N	\N	4	\N	\N	1
401	2018-08-27	\N	f	f	429	\N	\N	4	\N	\N	1
402	2018-08-27	\N	f	f	430	\N	\N	4	\N	\N	1
403	2018-08-21	\N	f	f	431	\N	\N	31	\N	\N	1
404	2018-08-20	\N	f	f	432	\N	\N	29	\N	\N	1
405	2012-08-27	\N	f	f	433	\N	\N	4	\N	\N	1
406	2019-08-19	\N	f	f	434	\N	\N	29	\N	\N	1
407	2012-08-27	\N	f	f	435	\N	\N	4	\N	\N	1
408	2017-08-28	\N	f	f	436	\N	\N	4	\N	\N	1
409	2018-08-20	\N	f	f	437	\N	\N	29	\N	\N	1
410	2015-08-17	\N	f	f	438	\N	\N	29	\N	\N	1
411	2018-08-20	\N	f	f	439	\N	\N	29	\N	\N	1
412	2019-05-20	\N	f	f	440	\N	\N	4	\N	\N	1
413	2018-08-15	\N	f	f	441	\N	\N	6	\N	\N	1
414	2018-08-20	\N	f	f	442	\N	\N	29	\N	\N	1
415	2018-08-20	\N	f	f	443	\N	\N	29	\N	\N	1
416	2018-08-27	\N	f	f	444	\N	\N	4	\N	\N	1
417	2018-08-27	\N	f	f	445	\N	\N	4	\N	\N	1
418	2018-08-27	\N	f	f	446	\N	\N	4	\N	\N	1
419	2018-08-27	\N	f	f	447	\N	\N	4	\N	\N	1
420	2018-08-20	\N	f	f	448	\N	\N	29	\N	\N	1
421	2019-01-14	\N	f	f	449	\N	\N	4	\N	\N	1
422	2018-08-20	\N	f	f	450	\N	\N	29	\N	\N	1
423	2019-05-20	\N	f	f	451	\N	\N	4	\N	\N	1
424	2018-08-20	\N	f	f	452	\N	\N	29	\N	\N	1
425	2018-08-27	\N	f	f	453	\N	\N	4	\N	\N	1
426	2018-08-27	\N	f	f	454	\N	\N	4	\N	\N	1
427	2017-08-28	\N	f	f	455	\N	\N	4	\N	\N	1
428	2018-08-27	\N	f	f	456	\N	\N	4	\N	\N	1
429	2019-09-03	\N	f	f	457	\N	\N	4	\N	\N	1
430	2019-08-19	\N	f	f	458	\N	\N	29	\N	\N	1
431	2018-08-20	\N	f	f	459	\N	\N	29	\N	\N	1
432	2018-08-27	\N	f	f	460	\N	\N	4	\N	\N	1
433	2019-09-03	\N	f	f	461	\N	\N	4	\N	\N	1
434	2019-08-19	\N	f	f	462	\N	\N	29	\N	\N	1
435	2012-08-20	\N	f	f	463	\N	\N	29	\N	\N	1
436	2009-08-31	\N	f	f	464	\N	\N	4	\N	\N	1
437	2010-08-30	\N	f	f	465	\N	\N	4	\N	\N	1
438	2018-08-27	\N	f	f	466	\N	\N	4	\N	\N	1
439	2019-09-26	\N	f	f	467	\N	\N	58	\N	\N	6
440	2019-09-03	\N	f	f	468	\N	\N	4	\N	\N	1
441	2019-09-03	\N	f	f	469	\N	\N	4	\N	\N	1
442	2010-08-23	\N	f	f	470	\N	\N	29	\N	\N	1
443	2018-08-27	\N	f	f	471	\N	\N	26	\N	\N	6
444	2019-09-03	\N	f	f	472	\N	\N	4	\N	\N	1
445	2019-08-19	\N	f	f	473	\N	\N	29	\N	\N	1
446	2019-09-03	\N	f	f	474	\N	\N	4	\N	\N	1
447	2019-08-19	\N	f	f	475	\N	\N	29	\N	\N	1
448	2019-09-03	\N	f	f	476	\N	\N	4	\N	\N	1
449	2019-09-03	\N	f	f	477	\N	\N	4	\N	\N	1
450	2019-09-03	\N	f	f	478	\N	\N	4	\N	\N	1
451	2019-09-03	\N	f	f	479	\N	\N	4	\N	\N	1
452	2013-08-26	\N	f	f	480	\N	\N	4	\N	\N	1
453	2015-05-26	\N	f	f	481	\N	\N	4	\N	\N	1
454	2015-08-17	\N	f	f	482	\N	\N	29	\N	\N	1
455	2015-08-24	\N	f	f	483	\N	\N	49	\N	\N	4
456	2014-08-25	\N	f	f	484	\N	\N	4	\N	\N	1
457	2018-01-16	\N	f	f	485	\N	\N	60	\N	\N	18
458	2019-06-03	\N	f	f	486	\N	\N	29	\N	\N	1
459	2013-08-19	\N	f	f	487	\N	\N	29	\N	\N	1
460	2016-01-19	\N	f	f	488	\N	\N	4	\N	\N	1
461	2018-09-10	\N	f	f	489	\N	\N	50	\N	\N	7
462	2016-08-29	\N	f	f	490	\N	\N	4	\N	\N	1
463	2019-08-19	\N	f	f	491	\N	\N	29	\N	\N	1
464	2018-08-27	\N	f	f	492	\N	\N	4	\N	\N	1
465	2016-08-29	\N	f	f	493	\N	\N	4	\N	\N	1
466	2019-08-01	\N	f	f	494	\N	\N	43	\N	\N	1
467	2017-08-28	\N	f	f	495	\N	\N	4	\N	\N	1
468	2019-08-21	\N	f	f	496	\N	\N	6	\N	\N	1
469	2019-08-21	\N	f	f	497	\N	\N	6	\N	\N	1
470	2017-01-17	\N	f	f	498	\N	\N	4	\N	\N	1
471	2016-01-19	\N	f	f	499	\N	\N	4	\N	\N	1
472	2017-08-28	\N	f	f	500	\N	\N	4	\N	\N	1
473	2017-08-21	\N	f	f	501	\N	\N	29	\N	\N	1
474	2019-08-19	\N	f	f	502	\N	\N	29	\N	\N	1
475	2017-08-28	\N	f	f	503	\N	\N	4	\N	\N	1
476	2019-08-19	\N	f	f	504	\N	\N	29	\N	\N	1
477	2019-09-03	\N	f	f	505	\N	\N	4	\N	\N	1
478	2019-08-21	\N	f	f	506	\N	\N	6	\N	\N	1
479	2017-01-17	\N	f	f	507	\N	\N	4	\N	\N	1
480	2018-01-16	\N	f	f	508	\N	\N	4	\N	\N	1
481	2013-08-26	\N	f	f	509	\N	\N	4	\N	\N	1
482	2017-08-28	\N	f	f	510	\N	\N	4	\N	\N	1
483	2018-08-27	\N	f	f	511	\N	\N	4	\N	\N	1
484	2019-09-03	\N	f	f	512	\N	\N	4	\N	\N	1
485	2015-08-31	\N	f	f	513	\N	\N	4	\N	\N	1
486	2019-08-19	\N	f	f	514	\N	\N	29	\N	\N	1
487	2015-08-31	\N	f	f	515	\N	\N	4	\N	\N	1
488	2019-08-19	\N	f	f	516	\N	\N	29	\N	\N	1
489	2011-08-22	\N	f	f	517	\N	\N	29	\N	\N	1
490	2013-05-20	\N	f	f	518	\N	\N	4	\N	\N	1
491	2018-08-27	\N	f	f	519	\N	\N	15	\N	\N	44
492	2019-08-19	\N	f	f	520	\N	\N	29	\N	\N	1
493	2014-08-18	\N	f	f	521	\N	\N	29	\N	\N	1
494	2015-01-20	\N	f	f	522	\N	\N	4	\N	\N	1
495	2018-08-20	\N	f	f	523	\N	\N	29	\N	\N	1
496	2015-08-19	\N	f	f	524	\N	\N	6	\N	\N	1
497	2019-08-19	\N	f	f	525	\N	\N	29	\N	\N	1
498	2017-08-28	\N	f	f	526	\N	\N	4	\N	\N	1
499	2019-08-19	\N	f	f	527	\N	\N	29	\N	\N	1
500	2019-09-03	\N	f	f	528	\N	\N	4	\N	\N	1
501	2019-08-26	\N	f	f	529	\N	\N	26	\N	\N	6
502	2019-09-03	\N	f	f	530	\N	\N	4	\N	\N	1
503	2019-08-26	\N	f	f	531	\N	\N	26	\N	\N	6
504	2019-08-21	\N	f	f	532	\N	\N	6	\N	\N	1
505	2014-08-25	\N	f	f	533	\N	\N	4	\N	\N	1
506	2019-09-09	\N	f	f	534	\N	\N	50	\N	\N	7
507	2019-09-03	\N	f	f	535	\N	\N	4	\N	\N	1
508	2019-08-19	\N	f	f	536	\N	\N	29	\N	\N	1
509	2019-09-03	\N	f	f	537	\N	\N	4	\N	\N	1
510	2018-08-27	\N	f	f	538	\N	\N	4	\N	\N	1
511	2017-08-28	\N	f	f	539	\N	\N	4	\N	\N	1
512	2011-08-22	\N	f	f	540	\N	\N	29	\N	\N	1
513	2017-08-28	\N	f	f	541	\N	\N	4	\N	\N	1
514	2019-08-19	\N	f	f	542	\N	\N	29	\N	\N	1
515	2019-08-19	\N	f	f	543	\N	\N	29	\N	\N	1
516	2011-08-22	\N	f	f	544	\N	\N	29	\N	\N	1
517	2016-09-16	\N	f	f	545	\N	\N	18	\N	\N	44
518	2016-08-22	\N	f	f	546	\N	\N	24	\N	\N	1
519	2019-09-18	\N	f	f	547	\N	\N	5	\N	2	1
520	2013-08-19	\N	f	f	549	329	\N	29	\N	1	1
329	2013-08-19	\N	f	f	357	\N	520	29	\N	\N	1
521	2019-08-12	\N	f	f	549	\N	\N	29	498	1	1
522	2020-08-07	\N	f	f	57	\N	\N	43	499	2	1
523	2020-11-16	\N	f	f	555	\N	\N	4	25	\N	1
524	2017-08-21	\N	f	f	561	383	\N	29	\N	1	1
383	2017-08-21	\N	f	f	411	\N	524	29	\N	\N	1
525	2018-08-20	\N	f	f	562	\N	\N	19	501	1	1
\.


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_alumnuscheckinenrollment_id_seq', 525, true);


--
-- Data for Name: alumni_tracker_app_alumnuscheckinenrollmenttag; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_alumnuscheckinenrollmenttag (id, checkin_enrollment_id, tag_id) FROM stdin;
4	524	1
5	524	5
6	524	44
\.


--
-- Name: alumni_tracker_app_alumnuscheckinenrollmenttag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_alumnuscheckinenrollmenttag_id_seq', 6, true);


--
-- Data for Name: alumni_tracker_app_alumnuscredential; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_alumnuscredential (id, earned_on, alumnus_person_id, credential_id) FROM stdin;
58	2013-12-14	295	467
59	2013-12-14	295	443
60	2014-05-01	297	487
61	2013-12-12	297	454
62	2014-05-01	297	468
63	2014-05-01	297	439
64	2011-08-04	298	430
65	2013-05-03	298	466
66	2013-04-30	298	449
67	2016-04-30	302	468
68	2016-04-30	302	48
69	2015-08-16	303	48
70	2013-05-11	304	443
71	2013-05-11	304	467
72	2015-05-07	308	105
73	2015-05-07	308	137
74	2011-08-14	317	468
75	2011-08-14	317	137
76	2011-08-14	317	105
77	2015-05-09	324	448
78	2011-05-27	325	469
79	2014-05-11	327	427
80	2014-04-09	327	462
81	2011-12-15	328	426
82	2011-12-15	328	468
83	2014-12-13	332	443
84	2014-12-13	332	452
85	2013-05-02	335	445
86	2014-05-17	335	474
87	2014-05-17	335	443
88	2015-05-09	341	428
89	2014-05-07	342	462
90	2014-05-11	342	484
91	2016-05-14	346	474
92	2014-05-17	347	443
93	2014-05-17	347	474
94	2015-05-07	349	86
95	2014-05-01	349	29
96	2014-05-01	349	468
97	2013-05-02	349	113
98	2014-12-11	351	160
99	2015-05-07	354	48
100	2015-05-07	354	468
101	2015-05-07	355	468
102	2015-05-07	355	16
103	2014-12-11	355	4
104	2014-12-11	355	445
105	2013-07-29	358	422
106	2015-05-08	359	424
107	2015-05-08	359	492
108	2015-05-09	360	467
109	2015-05-09	365	443
110	2015-05-09	365	448
111	2016-08-07	368	128
112	2014-05-01	368	434
113	2016-08-07	368	468
114	2014-05-01	368	468
115	2015-12-12	370	100
116	2015-12-12	370	468
117	2016-08-07	370	468
118	2016-08-07	370	171
119	2014-12-11	370	48
120	2015-12-12	374	448
121	2015-12-12	374	443
122	2015-05-22	375	493
123	2015-05-18	375	444
124	2015-12-12	380	110
125	2015-12-12	382	452
126	2015-12-12	382	443
127	2015-12-08	385	451
128	2015-12-08	385	440
129	2014-08-10	386	48
130	2014-12-11	386	16
131	2015-05-09	387	465
132	2015-05-09	387	443
133	2015-12-12	388	443
134	2015-12-12	388	452
135	2016-05-14	389	446
136	2016-05-13	389	482
137	2016-10-14	391	451
138	2016-10-14	391	440
139	2015-05-21	398	425
140	2015-05-07	404	48
141	2015-12-12	400	443
142	2015-12-12	400	448
143	2016-05-14	401	443
144	2016-05-14	401	447
145	2015-05-07	403	48
146	2015-05-07	403	468
147	2016-04-30	406	468
148	2016-04-30	406	160
149	2015-12-12	407	160
150	2015-12-12	407	468
151	2016-05-14	422	471
152	2016-05-14	422	443
153	2016-05-13	426	492
154	2016-05-13	426	477
155	2016-05-13	426	297
156	2016-05-27	429	485
157	2016-05-27	429	429
158	2016-05-04	433	462
159	2016-05-08	433	421
160	2016-04-30	435	468
161	2016-04-30	435	152
162	2016-08-07	458	37
163	2014-12-11	458	137
164	2015-05-07	458	468
165	2016-08-07	458	468
166	2015-05-07	458	105
167	2015-05-07	467	160
168	2015-05-07	467	468
169	2016-04-30	513	48
170	2016-08-07	513	458
171	2016-08-07	513	468
172	2016-04-30	513	468
173	2015-12-12	521	468
174	2015-12-12	521	17
175	2016-08-07	523	468
176	2016-08-07	523	48
177	2016-08-07	576	468
178	2016-08-07	576	160
179	2018-12-09	368	486
180	2018-12-09	368	48
181	2016-12-11	406	468
182	2016-12-11	406	486
183	2017-04-30	406	426
184	2017-04-30	406	48
185	2018-12-14	425	438
186	2019-05-18	398	460
187	2019-05-18	398	490
188	2019-05-11	398	443
189	2019-05-11	398	423
190	2016-12-11	380	468
191	2016-12-11	380	131
192	2018-05-12	477	467
193	2018-05-12	477	443
194	2019-04-28	717	441
195	2018-04-29	604	167
196	2017-08-06	604	486
197	2016-12-11	553	468
198	2016-12-11	553	441
199	2017-05-13	376	443
200	2017-05-13	376	447
201	2018-12-15	508	431
202	2018-12-15	508	443
203	2016-12-11	528	441
204	2016-12-11	441	21
205	2016-12-11	441	468
206	2017-12-10	441	169
207	2017-08-06	441	16
208	2017-12-16	476	443
209	2017-12-16	476	470
210	2018-04-20	362	451
211	2018-04-20	362	476
212	2018-12-09	443	48
213	2017-08-06	423	486
214	2018-04-29	423	152
215	2019-04-28	540	22
216	2019-04-28	540	5
217	2016-12-11	540	468
218	2016-12-11	540	486
219	2019-04-28	540	481
220	2019-04-28	540	16
221	2018-06-18	547	442
222	2018-06-18	547	483
223	2018-05-11	426	473
224	2018-05-12	427	443
225	2018-05-12	427	474
226	2019-04-28	460	468
227	2019-04-28	460	472
228	2017-05-13	413	437
229	2017-05-13	413	491
230	2017-12-10	446	146
231	2018-05-05	520	450
232	2018-05-05	520	453
233	2017-04-30	453	486
234	2017-12-10	453	128
235	2017-04-30	453	468
236	2017-12-10	453	468
237	2018-12-15	512	488
238	2018-12-15	512	443
239	2017-12-16	438	447
240	2017-12-16	438	443
241	2017-05-12	554	482
242	2017-05-13	554	433
243	2018-04-29	535	21
244	2018-04-29	535	16
245	2017-04-30	535	468
246	2018-04-29	535	468
247	2017-04-30	535	486
248	2018-04-29	535	481
249	2016-12-17	394	470
250	2016-12-17	394	443
251	2016-12-17	420	443
252	2016-12-17	420	467
253	2018-12-15	519	443
254	2018-12-15	519	467
255	2018-05-12	487	431
256	2018-05-12	487	489
257	2018-05-22	492	464
258	2018-05-27	492	475
259	2016-12-17	395	459
260	2018-08-09	625	463
261	2019-05-11	434	443
262	2019-05-11	434	461
263	2018-05-12	450	452
264	2018-05-12	450	443
265	2016-12-11	521	16
266	2016-12-11	407	486
267	2017-08-06	407	48
268	2017-05-13	462	443
269	2017-05-13	462	488
270	2016-12-11	382	160
271	2017-12-16	361	443
272	2017-12-16	361	480
273	2016-12-11	485	468
274	2016-12-11	485	481
275	2018-12-15	404	447
276	2018-12-15	404	443
277	2017-05-10	442	462
278	2017-05-14	442	456
279	2018-05-12	514	443
280	2018-05-12	514	448
281	2019-04-28	651	128
282	2018-08-05	721	137
283	2018-12-09	721	105
284	2016-12-17	386	467
285	2016-12-17	386	443
286	2016-12-11	386	113
287	2018-12-09	725	160
288	2017-12-10	542	486
289	2019-04-28	706	81
290	2018-04-29	706	441
291	2017-05-13	410	443
292	2017-05-13	410	448
293	2018-04-29	543	468
294	2018-04-29	543	30
295	2018-08-05	680	441
296	2019-04-28	670	455
297	2019-04-28	670	48
298	2019-04-28	689	468
299	2019-04-28	689	2
300	2019-04-21	714	468
301	2019-04-28	714	160
302	2019-04-28	723	486
303	2019-04-28	671	48
304	2016-12-11	409	468
305	2018-04-29	409	481
306	2018-04-29	409	12
307	2016-12-11	409	48
308	2018-04-29	409	16
309	2019-04-28	702	486
310	2019-04-28	702	160
311	2017-04-30	451	152
312	2016-12-11	451	468
313	2016-12-11	451	478
314	2017-04-30	377	468
315	2016-12-11	377	468
316	2017-04-30	377	2
317	2016-12-11	377	48
318	2017-04-30	479	48
319	2017-04-30	479	146
320	2017-04-30	479	468
321	2017-12-10	479	432
322	2016-12-11	523	486
323	2016-12-11	523	468
324	2016-12-11	523	33
325	2018-04-29	683	441
326	2017-12-16	405	448
327	2017-12-16	405	443
328	2018-08-05	467	48
329	2017-12-10	576	486
330	2016-12-11	513	16
331	2017-04-30	513	486
332	2017-04-30	513	468
333	2017-04-30	513	481
334	2017-12-10	600	441
335	2019-04-28	658	105
336	2018-08-05	658	137
337	2016-12-11	458	457
338	2018-12-09	531	81
339	2017-12-10	531	441
340	2018-12-09	565	113
341	2019-04-28	565	29
342	2019-04-28	565	86
343	2019-04-28	565	468
344	2018-12-09	565	48
345	2018-05-12	369	443
346	2018-05-12	369	479
347	2019-04-28	712	21
348	2019-04-28	712	16
349	2019-04-28	712	481
350	2019-04-28	712	468
351	2019-08-11	604	48
352	2019-08-15	413	436
353	2019-08-11	521	481
354	2017-12-16	360	435
355	2017-12-16	360	443
356	2017-04-30	342	468
357	2017-04-30	342	160
358	2013-05-11	293	494
359	2018-05-19	293	495
360	2012-12-21	274	496
361	2017-12-15	271	467
362	2019-05-11	525	500
\.


--
-- Name: alumni_tracker_app_alumnuscredential_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_alumnuscredential_id_seq', 362, true);


--
-- Data for Name: alumni_tracker_app_checkinbookmark; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_checkinbookmark (id, created, notes, checkin_id, user_profile_id) FROM stdin;
\.


--
-- Name: alumni_tracker_app_checkinbookmark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_checkinbookmark_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_checkincommongoodtag; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_checkincommongoodtag (id, tag, taxonomy_id) FROM stdin;
1	Attended a rally or protest	1
2	Voted or attended a political event	1
3	Been active in their or their child’s school	1
4	Been active in their church or neighborhood association	1
6	Helped a neighbor	1
7	Physically or financially taken care of family, friends and/or others	1
8	Been a mentor to another person in any capacity	1
9	Donated to community organizations or individuals	1
5	Volunteered at a school or in the community	1
\.


--
-- Name: alumni_tracker_app_checkincommongoodtag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_checkincommongoodtag_id_seq', 9, true);


--
-- Data for Name: alumni_tracker_app_checkincommongoodtaxonomy; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_checkincommongoodtaxonomy (id, taxonomy) FROM stdin;
1	SVA Common Good Taxonomy
\.


--
-- Name: alumni_tracker_app_checkincommongoodtaxonomy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_checkincommongoodtaxonomy_id_seq', 1, true);


--
-- Data for Name: alumni_tracker_app_checkinemploymenttag; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_checkinemploymenttag (id, tag, taxonomy_id) FROM stdin;
1	Activism & Advocacy	1
2	Agriculture	1
3	Animal Care	1
4	Architecture	1
5	Arts	1
6	Arts Education	1
7	Automotive	1
8	Aviation	1
9	Business	1
10	Child Care	1
11	Communications	1
12	Community Center	1
13	Construction	1
14	Consulting	1
15	Cosmetology	1
16	Culinary	1
17	Cultural Organization	1
18	Education	1
19	Energy	1
20	Engineering	1
21	Environmental	1
22	Fashion	1
23	Finance	1
24	Fire Science	1
25	Government and Politics	1
26	Graphic Design	1
27	Healthcare	1
28	Hospitality	1
29	Industry	1
30	Insurance	1
31	Interior Design	1
32	Journalism	1
33	Law Enforcement	1
34	Legal	1
35	Library	1
36	Logistics	1
37	Machinery	1
38	Manufacturing	1
39	Marketing	1
40	Media	1
41	Museum	1
42	Music	1
43	Other	1
44	Performing Arts	1
45	Real Estate	1
46	Religious Facility	1
47	Retail	1
48	Science	1
49	Social Services	1
50	Sports and Recreation	1
51	Technology	1
52	Telecommunications	1
53	Trades	1
54	Transportation	1
55	Utility	1
56	Visual Arts	1
\.


--
-- Name: alumni_tracker_app_checkinemploymenttag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_checkinemploymenttag_id_seq', 56, true);


--
-- Data for Name: alumni_tracker_app_checkinemploymenttaxonomy; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_checkinemploymenttaxonomy (id, taxonomy) FROM stdin;
1	FFE/ImBlaze
\.


--
-- Name: alumni_tracker_app_checkinemploymenttaxonomy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_checkinemploymenttaxonomy_id_seq', 1, true);


--
-- Data for Name: alumni_tracker_app_checkinenrollmenttag; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_checkinenrollmenttag (id, tag, taxonomy_id) FROM stdin;
1	Activism & Advocacy	1
2	Agriculture	1
3	Animal Care	1
4	Architecture	1
5	Arts	1
6	Arts Education	1
7	Automotive	1
8	Aviation	1
9	Business	1
10	Child Care	1
11	Communications	1
12	Community Center	1
13	Construction	1
14	Consulting	1
15	Cosmetology	1
16	Culinary	1
17	Cultural Organization	1
18	Education	1
19	Energy	1
20	Engineering	1
21	Environmental	1
22	Fashion	1
23	Finance	1
24	Fire Science	1
25	Government and Politics	1
26	Graphic Design	1
27	Healthcare	1
28	Hospitality	1
29	Industry	1
30	Insurance	1
31	Interior Design	1
32	Journalism	1
33	Law Enforcement	1
34	Legal	1
35	Library	1
36	Logistics	1
37	Machinery	1
38	Manufacturing	1
39	Marketing	1
40	Media	1
41	Museum	1
42	Music	1
43	Other	1
44	Performing Arts	1
45	Real Estate	1
46	Religious Facility	1
47	Retail	1
48	Science	1
49	Social Services	1
50	Sports and Recreation	1
51	Technology	1
52	Telecommunications	1
53	Trades	1
54	Transportation	1
55	Utility	1
56	Visual Arts	1
\.


--
-- Name: alumni_tracker_app_checkinenrollmenttag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_checkinenrollmenttag_id_seq', 56, true);


--
-- Data for Name: alumni_tracker_app_checkinenrollmenttaxonomy; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_checkinenrollmenttaxonomy (id, taxonomy) FROM stdin;
1	FFE/ImBlaze
\.


--
-- Name: alumni_tracker_app_checkinenrollmenttaxonomy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_checkinenrollmenttaxonomy_id_seq', 1, true);


--
-- Data for Name: alumni_tracker_app_credential; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_credential (id, focus, awarder_id, type_id) FROM stdin;
1	Anthropology	4	3
2	Business	4	3
3	Career Technical	4	3
4	Communication	4	3
5	Criminology	4	3
6	Early Childhood Multicultural Education	4	3
7	English	4	3
8	Environmental Planning and Design	4	3
9	Film	4	3
10	Fine Arts	4	3
11	Geography, Associate of Arts	4	3
12	History	4	3
13	Hospitality and Tourism	4	3
14	Human Services	4	3
15	Latin American Studies	4	3
16	Liberal Arts	4	3
17	Modern Languages	4	3
18	Political Science	4	3
19	Pre-Health Science	4	3
20	Pre-Law	4	3
21	Psychology	4	3
22	Sociology	4	3
23	Teacher Education	4	3
24	Theatre	4	3
25	Accounting	4	3
26	Architectural/Engineering Drafting Technology	4	3
27	Aviation Maintenance Technology	4	3
28	Brewing and Beverage Management	4	3
29	Business Administration	4	3
30	Computer Information Systems	4	3
31	Construction Management Technology	4	3
32	Construction Technology	4	3
33	Cosmetology	4	3
34	Criminal Justice	4	3
35	Culinary Arts	4	3
36	Diagnostic Medical Sonography	4	3
37	Electrical Trades	4	3
38	Electroneurodiagnostic Technology	4	3
39	Electronic Health Informatics	4	3
40	Emergency Medical Services	4	3
41	Exercise Science and Wellness	4	3
42	Film Production	4	3
43	Fire Science	4	3
44	Geographic Information Technology	4	3
45	Health Information Technology	4	3
46	Health Services Management	4	3
47	Heating, Ventilating, Air Conditioning and Refrigeration Technology	4	3
48	Integrated Studies	4	3
49	Machine Tool Technology	4	3
50	Medical Laboratory Technician	4	3
51	Nursing	4	3
52	Office Administration	4	3
53	Paralegal Studies	4	3
54	Pharmacy Technician	4	3
55	Physical Therapist Assistant	4	3
56	Plumbing and Gas Fitting	4	3
57	Polysomnographic Technology	4	3
58	Pre-Architecture	4	3
59	Radiologic Technology	4	3
60	Respiratory Therapy	4	3
61	Surgical Technology	4	3
62	Transportation Technology	4	3
63	Veterinary Technology	4	3
64	Welding Technology	4	3
65	Biology	4	3
66	Biotechnology	4	3
67	Chemistry	4	3
68	Computer Science	4	3
69	Earth and Planetary Science	4	3
70	Engineering	4	3
71	Mathematical Sciences	4	3
72	Nutrition	4	3
73	Physics	4	3
74	Surveying Engineering	4	3
75	Accounting	4	1
76	Advanced Industrial Maintenance	4	1
77	Airframe Maintenance Technician	4	1
78	American Sign Language	4	1
79	Architectural Woodworking	4	1
80	Architectural/Engineering Drafting Technology	4	1
81	Automotive Technology	4	1
82	Baking	4	1
83	Beverage Management	4	1
84	Biotechnology	4	1
85	Bookkeeping	4	1
86	Business Administration	4	1
87	Business Analytics	4	1
88	Career Technical Education Teaching	4	1
89	Carpentry	4	1
90	Fire Academy	4	1
91	Law Enforcement Academy	4	1
92	Industrial HVAC & Building Performance	4	1
93	Community Dental Health Coordinator	4	1
94	Community Paramedic	4	1
95	Computer Information Systems	4	1
96	Construction Estimating and Scheduling	4	1
97	Construction for Film	4	1
98	Culinary Fundamentals	4	1
99	Customer Service	4	1
100	Dental Assisting	4	1
101	Diesel Equipment Technology	4	1
102	Dietary Manager	4	1
103	Digital Media Marketing	4	1
104	Early Childhood Program Administration	4	1
105	Electrical Trades	4	1
106	Electronic Health Record	4	1
107	Emergency Medical Services	4	1
108	Entrepreneurship	4	1
109	English for Speakers of Other Languages	4	1
110	Film Crew Technician	4	1
111	Fitness	4	1
112	Food Service Management	4	1
113	General Business	4	1
114	General Studies	4	1
115	Geographic Information Technology	4	1
116	Health, Wellness, and Public Safety	4	1
117	Hospitality and Tourism	4	1
118	Industrial Maintenance	4	1
119	Machine Tool Technology	4	1
120	Managing Fire Officer	4	1
121	Medical Assistant	4	1
122	Medical Office Transcription	4	1
123	Nail Technician	4	1
124	Office Administration	4	1
125	Office Receptionist	4	1
126	Patient Care Technician	4	1
127	Payroll Clerk	4	1
128	Pharmacy Technician	4	1
129	Photovoltaic Systems	4	1
130	Plumbing and Gas Fitting	4	1
131	Post Production Technician	4	1
132	Powerplant Maintenance Technician	4	1
133	Pre-Health Science	4	1
134	Programmable Logic Controls Systems	4	1
135	Project Management	4	1
136	Residential HVAC	4	1
137	Residential Wiring	4	1
138	Retail Management	4	1
139	Spanish Interpreter	4	1
140	Spanish Language	4	1
141	Substance Abuse Counselor	4	1
142	Surveying Technology	4	1
143	Sustainable Building Technology	4	1
144	Truck Driving Owner Operator	4	1
145	Unmanned Aircraft Systems	4	1
146	Welding	4	1
147	Wildland Firefighter	4	1
148	Yoga Instructor	4	1
149	Automotive Service Fundamentals	4	1
150	Bench Jewelry	4	1
151	Brewing Technology	4	1
152	Child Development	4	1
153	Class B CDL	4	1
154	Community EMT	4	1
155	Community Health Worker	4	1
156	Emergency Medical Technician	4	1
157	Emerging Applications in Applied Technologies	4	1
158	Home Health Aide	4	1
159	Infant Family Studies	4	1
160	Nursing Assistant	4	1
161	Online Teaching and Learning	4	1
162	Personal Care Attendant	4	1
163	Phlebotomy Technician	4	1
164	911 Dispatcher	4	1
165	Rapid Prototyping and Innovative Design	4	1
166	Social Justice	4	1
167	Sterile Processing Technician	4	1
168	Sustainability	4	1
169	Truck Driving	4	1
170	Unmanned Aircraft Systems Fundamentals	4	1
171	Veterinary Receptionist	4	1
172	Africana Studies	5	4
173	American Studies	5	4
174	Anthropology	5	4
175	Astrophysics	5	4
176	Biology	5	4
177	Chemistry	5	4
178	Chicana and Chicano	5	4
179	Classical Studies	5	4
180	Communication	5	4
181	Comparative Literature and Cultural Studies	5	4
182	Criminology	5	4
183	Earth and Planetary Science	5	4
184	Earth and Planetary Sciences	5	4
185	East Asian Studies	5	4
186	Economics	5	4
187	English-Philosophy	5	4
188	English studies	5	4
189	Environmental Science	5	4
190	French	5	4
191	Geography	5	4
192	German	5	4
193	Health, Medicine and Human Values	5	4
194	History	5	4
195	International Studies	5	4
196	Languages	5	4
197	Latin American Studies	5	4
198	Linguistics	5	4
199	Philosophy	5	4
200	Physics	5	4
201	Physics and Astrophysics	5	4
202	Political Science	5	4
203	Portuguese	5	4
204	Psychology	5	4
205	Religious Studies	5	4
206	Russian	5	4
207	Signed Language Interpreting	5	4
208	Sociology	5	4
209	Spanish	5	4
210	Speech and Hearing Sciences	5	4
211	Statistics	5	4
212	Women Studies	5	4
213	Athletic Training	5	4
214	Exercise Science	5	4
215	Health Education	5	4
216	Nutrition and Dietetics	5	4
217	Physical Education	5	4
218	Special Education	5	4
219	Art Education	5	4
220	Art History	5	4
221	Art Studio	5	4
222	Design and Technology for Performance	5	4
223	Interdisciplinary Arts	5	4
224	Interdisciplinary Film & Digital Media	5	4
225	Media Arts	5	4
226	Music	5	4
227	Theatre	5	4
228	Nursing	5	4
229	Pharmaceutical Science	5	4
230	Population Health	5	4
231	Interdisciplinary Liberal Arts	5	4
232	Architecture	5	4
233	Chemical Engineering	5	4
234	Civil Engineering	5	4
235	Computer Engineering	5	4
236	Computer Science	5	4
237	Construction Engineering	5	4
238	Construction Management	5	4
239	Electrical Engineering	5	4
240	Mechanical Engineering	5	4
241	Nuclear Engineering	5	4
242	Biochemistry	5	4
243	Dental Hygiene	5	4
244	Emergency Medical Services	5	4
245	Medical Laboratory Sciences	5	4
246	Integrative Studies	5	4
247	Liberal Arts	5	4
248	Native American Studies	5	4
249	Instructional Technology and Training	5	4
250	Accounting	6	4
251	Aerospace Engineering	6	4
252	Agricultural and Community Development	6	4
253	Agricultural and Extension Education (Advanced Technology Education)	6	4
254	Agricultural and Extension Education (Agricultural Communications)	6	4
255	Agricultural and Extension Education (Agricultural Education Teaching)	6	4
256	Agricultural Biology (Applied Biology)	6	4
257	Agricultural Biology (Applied Microbiology)	6	4
258	Agricultural Biology (Entomology)	6	4
259	Agricultural Biology (Environmental Biology)	6	4
260	Agricultural Biology (Pest Biology and Management)	6	4
261	Agricultural Economics and Business	6	4
262	Agronomy (Crop Consulting)	6	4
263	Agronomy (General Agronomy)	6	4
264	Animal Science (Animal Industry)	6	4
265	Animal Science (Science)	6	4
266	Animation and Visual Effects	6	4
267	Anthropology	6	4
268	Applied Studies	6	4
269	Applied Studies (Zero-to-Four [Early Childhood])	6	4
270	Art (Art History)	6	4
271	Art (Museum Conservation)	6	4
272	Art (Studio Art)	6	4
273	Athletic Training	6	4
274	Biochemistry	6	4
275	Biology	6	4
276	Chemical Engineering	6	4
277	Chemistry	6	4
278	Civil Engineering (Environmental)	6	4
279	Civil Engineering (General)	6	4
280	Civil Engineering (Geotechnical)	6	4
281	Civil Engineering (Structural)	6	4
282	Civil Engineering (Water Resources)	6	4
283	Clothing, Textiles and Fashion Merchandising	6	4
284	Communication Disorders	6	4
285	Communication Studies	6	4
286	Computer Science	6	4
287	Computer Science (Algorithm Theory)	6	4
288	Computer Science (Artificial Intelligence)	6	4
289	Computer Science (Big Data and Data Science)	6	4
290	Computer Science (Bioinformatics)	6	4
291	Computer Science (Cybersecurity)	6	4
292	Computer Science (Human Computer Interaction)	6	4
293	Computer Science (Networking)	6	4
294	Computer Science (Software Development)	6	4
295	Conservation Ecology	6	4
296	Counseling and Community Psychology	6	4
297	Criminal Justice	6	4
298	Dance (Contemporary Dance)	6	4
299	Dance (Dance Sport)	6	4
300	Dance (Spanish)	6	4
301	Digital Film Making	6	4
302	Early Childhood	6	4
303	Economics	6	4
304	Electrical Engineering	6	4
305	Electrical Engineering (Communications and Signal Processing)	6	4
306	Electrical Engineering (Computers and Electronics)	6	4
307	Electrical Engineering (Control and Power)	6	4
308	Electrical Engineering (Electromagnetics and Photonics)	6	4
309	Elementary Education (Bilingual/TESOL Endorsement)	6	4
310	Elementary Education (Language Arts K-8)	6	4
311	Elementary Education (Math K-8)	6	4
312	Elementary Education (Science K-8)	6	4
313	Elementary Education (Social Studies K-8)	6	4
314	Engineering Physics (Aerospace)	6	4
315	Engineering Physics (Chemical)	6	4
316	Engineering Physics (Electrical)	6	4
317	Engineering Physics (Mechanical)	6	4
318	Engineering Technology - Civil (Construction Technology)	6	4
319	Engineering Technology - Civil (Geomatics)	6	4
320	Engineering Technology - Civil (Renewable Energy Technologies)	6	4
321	Engineering Technology - Civil (Transportation Technology)	6	4
322	Engineering Technology - Civil (Water/Wastewater Technology)	6	4
323	Engineering Technology - Electronics and Computer (Digital Forensics)	6	4
324	Engineering Technology - Electronics and Computer (Information Security Technology)	6	4
325	Engineering Technology - Electronics and Computer (Renewable Energy Technologies)	6	4
326	Engineering Technology - Information (Information Security Technology)	6	4
327	Engineering Technology - Mechanical (Renewable Energy Technologies)	6	4
328	English (Creative Writing)	6	4
329	English (English)	6	4
330	English (Literature, Language and Culture)	6	4
331	English (Rhetoric, Digital Media and Professional Communication)	6	4
332	Environmental Science	6	4
333	Family and Child Science	6	4
334	Family and Consumer Sciences Education	6	4
335	Finance (Banking and Financial Planning)	6	4
336	Finance (Entrepreneurial Finance)	6	4
337	Finance (Financial Analyst)	6	4
338	Finance (Risk Management and Insurance)	6	4
339	Fisheries and Wildlife Science (Aquatic Ecology and Management)	6	4
340	Fisheries and Wildlife Science (Wildlife Ecology and Management)	6	4
341	Food Science and Technology (Culinary Science)	6	4
342	Food Science and Technology (Meat Science)	6	4
343	Food Science and Technology (Science, Technology and Engineering)	6	4
344	Foreign Languages (French)	6	4
345	Foreign Languages (German)	6	4
346	Foreign Languages (Spanish)	6	4
347	Gender and Sexuality Studies	6	4
348	General Agriculture	6	4
349	General Business (Entrepreneurship)	6	4
350	Genetics and Biotechnology	6	4
351	Geography (Geographic Information Science and Technology)	6	4
352	Geography (Human/Environment Relationships)	6	4
353	Geology (Earth and Environmental Sciences)	6	4
354	Geology (Earth Science Education)	6	4
355	Geology (Geological Sciences)	6	4
356	Geomatics	6	4
357	Government	6	4
358	History	6	4
359	Horticulture (Crop Consulting)	6	4
360	Horticulture (General Horticulture)	6	4
361	Horticulture (Horticulture Business)	6	4
362	Horticulture (Landscape Design)	6	4
363	Horticulture (Ornamental Horticulture)	6	4
364	Hotel, Restaurant and Tourism Management	6	4
365	Human Nutrition and Dietetic Sciences (Nutrition Education)	6	4
366	Human Nutrition and Dietetic Sciences (Pre-Dietetics/Dietetics)	6	4
367	Individualized Studies	6	4
368	Industrial Engineering	6	4
369	Information and Communication Technology	6	4
370	Information Systems	6	4
371	International Business	6	4
372	Journalism and Media Studies	6	4
373	Kinesiology (Clinical Exerise Science)	6	4
374	Kinesiology (Exercise Science)	6	4
375	Kinesiology (Performance Psychology)	6	4
376	Kinesiology (Physical Education)	6	4
377	Management (Human Resource Management)	6	4
378	Management (Project and Supply Chain Management)	6	4
379	Management (Small Business Management and Entrepreneurship)	6	4
380	Marketing	6	4
381	Marketing (PGA Golf Management)	6	4
382	Mathematics (Actuarial Science and Insurance)	6	4
383	Mathematics (Applied Mathematics)	6	4
384	Mathematics (General Mathematics)	6	4
385	Mechanical Engineering	6	4
386	Microbiology	6	4
387	Music (Instrumental Performance)	6	4
388	Music (Piano Performance)	6	4
389	Music (Vocal Performance)	6	4
390	Music Education (K-12, Instrumental)	6	4
391	Music Education (K-12, Vocal)	6	4
392	Natural Resources Economics and Policy	6	4
393	Nursing	6	4
394	Philosophy	6	4
395	Physics	6	4
396	Physics (Applied Optics)	6	4
397	Physics (Applied Physics)	6	4
398	Physics (Computational Physics)	6	4
399	Physics (Geophysics)	6	4
400	Physics (Materials Science)	6	4
401	Psychology	6	4
402	Public Health	6	4
403	Range Science	6	4
404	Secondary Education (General Science)	6	4
405	Secondary Education (Language Arts)	6	4
406	Secondary Education (Math)	6	4
407	Secondary Education (Social Studies)	6	4
408	Social Work	6	4
409	Sociology	6	4
410	Soil Science (Environment and Resource Management)	6	4
411	Soil Science (Soil and Water Science)	6	4
412	Soil Science (Soils)	6	4
413	Special Education (Dual Licensure, Elementary Education)	6	4
414	Special Education (Dual Licensure, Secondary Education)	6	4
415	Theatre Arts	6	4
416	Theatre Arts (Musical Theatre)	6	4
417	Turfgrass Science and Management (Athletic Field Management Athletics)	6	4
418	Turfgrass Science and Management (Golf Course Management)	6	4
419	Turfgrass Science and Management (Turfgrass Business)	6	4
420	Turfgrass Science and Management (Turfgrass Science)	6	4
421	Studio Art	17	4
422	Psychology	43	4
423	Nursing	29	4
424	General Business	6	4
425	Other	12	7
426	Phlebotomy	4	1
427	Special Studies	17	4
428	Exercise Science	29	4
429	Fcs/Apparel Merchandising	53	4
430	Aa General Studies	51	3
431	Biology	29	4
432	Welding	4	3
433	General Studies	31	3
434	Residential Hvac	4	1
435	Business Administration	29	5
436	Liberal Arts	61	3
437	Interdisciplinary Studies	15	4
438	Hart-Residential Hvac Tech	38	1
439	Arch/Engr Drafting Technology	4	1
440	Dental Assisting	57	1
441	Automotive Serv Fundamentals	4	1
442	Other	44	7
443	Other	29	7
444	Other	35	7
445	General Education	4	1
446	Family And Consumer Scie Comp	31	4
447	Sociology	29	4
448	Psychology	29	4
449	Other	47	7
450	Kinesiology Bs	46	4
451	Other	57	7
452	Spanish	29	4
453	Other	46	7
454	Computer-Assisted Drafting	4	1
455	Cis Systems Administration	4	1
456	Psychology	17	4
457	Photovoltaic Installation	4	1
458	Pre-Health Sciences	4	3
459	Early Childhood Multicult Ed	29	4
460	Nursing	24	3
461	Mechanical Engineering	29	4
462	Other	17	7
463	Business Administration	45	3
464	Other	14	7
465	Political Science	29	4
466	Spanish	47	4
467	Business Administration	29	4
468	Other	4	7
469	Medical Assisting	57	1
470	Elementary Education	29	4
471	Secondary Education	29	4
472	Medical Office Receptionist	4	1
473	Public Administration	6	5
474	Criminology	29	4
475	Sp Maj: Soc-Anth & Educstudies	14	4
476	Nursing	57	3
477	Foreign Languages	6	4
478	Early Childhood Multicult Educ	4	3
479	Nuclear Engineering	29	4
480	English-Philosophy	29	4
481	General Studies Certificate	4	1
482	Other	31	7
483	Not Applicable	44	3
484	Biochemistry And Molecular Biology	17	4
485	Other	53	7
486	Health Wellness Public Safety	4	1
487	Arch/Engr Drafting Technology	4	3
488	Family & Child Studies	29	4
489	Health,Medicine & Human Values	29	4
490	Other	24	7
491	Other	15	7
492	Other	6	7
493	Global Studies	35	4
494	Black Studies and History	4	4
495	JD	5	7
496	Family Studies	5	4
497	Literature	5	5
498	Literature	29	5
499	Social Work	43	5
500	Mechanical Engineering	71	4
501	Education	19	4
\.


--
-- Name: alumni_tracker_app_credential_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_credential_id_seq', 501, true);


--
-- Data for Name: alumni_tracker_app_datadashboard; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_datadashboard (id, drive_file_id, url, name, description) FROM stdin;
\.


--
-- Name: alumni_tracker_app_datadashboard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_datadashboard_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_datadashboarddatasheet; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_datadashboarddatasheet (id, dashboard_id, sheet_id) FROM stdin;
\.


--
-- Name: alumni_tracker_app_datadashboarddatasheet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_datadashboarddatasheet_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_datasheet; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_datasheet (id, drive_file_id) FROM stdin;
\.


--
-- Name: alumni_tracker_app_datasheet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_datasheet_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_fiscalschoolyear; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_fiscalschoolyear (id, year, short_name, long_name) FROM stdin;
\.


--
-- Name: alumni_tracker_app_fiscalschoolyear_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_fiscalschoolyear_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_language; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_language (id, name) FROM stdin;
\.


--
-- Name: alumni_tracker_app_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_language_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_metaacademiccoursecontentarea; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_metaacademiccoursecontentarea (id, content_area, seminal) FROM stdin;
\.


--
-- Name: alumni_tracker_app_metaacademiccoursecontentarea_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaacademiccoursecontentarea_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_metacredentialtype; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_metacredentialtype (id, type, seminal) FROM stdin;
1	Certificate	f
2	Certification	f
3	Associate's Degree	f
4	Bachelor's Degree	f
5	Masters's Degree	f
6	PhD	f
7	Other	f
\.


--
-- Name: alumni_tracker_app_metacredentialtype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metacredentialtype_id_seq', 7, true);


--
-- Data for Name: alumni_tracker_app_metaemploymentbenefit; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_metaemploymentbenefit (id, benefit) FROM stdin;
1	Health Insurance
2	Paid Leave
3	Retirement Savings
4	Tuition Compensation
\.


--
-- Name: alumni_tracker_app_metaemploymentbenefit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaemploymentbenefit_id_seq', 4, true);


--
-- Data for Name: alumni_tracker_app_metaemploymentextent; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_metaemploymentextent (id, extent, seminal) FROM stdin;
1	Full Time	f
2	Part Time	f
3	Seasonal	f
\.


--
-- Name: alumni_tracker_app_metaemploymentextent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaemploymentextent_id_seq', 3, true);


--
-- Data for Name: alumni_tracker_app_metaemploymentposition; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_metaemploymentposition (id, "position", seminal) FROM stdin;
1	Employee	f
2	Intern	f
3	X3 Intern	f
4	X3 Post Grad	f
5	Apprentice	f
6	Volunteer	f
\.


--
-- Name: alumni_tracker_app_metaemploymentposition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaemploymentposition_id_seq', 6, true);


--
-- Data for Name: alumni_tracker_app_metaenrollmentextent; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_metaenrollmentextent (id, extent, seminal) FROM stdin;
1	Full Time	f
2	Part Time	f
\.


--
-- Name: alumni_tracker_app_metaenrollmentextent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaenrollmentextent_id_seq', 2, true);


--
-- Data for Name: alumni_tracker_app_metaorganizationgrouptype; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_metaorganizationgrouptype (id, group_type, seminal) FROM stdin;
1	Public School District	f
2	State Public Schools	f
3	School Network	f
\.


--
-- Name: alumni_tracker_app_metaorganizationgrouptype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaorganizationgrouptype_id_seq', 3, true);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizati_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq1', 8, true);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizati_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq2', 1, false);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizati_id_seq3; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq3', 1, false);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizatio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaorganizationmembershiporganizatio_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_metaorganizationmembershiporganizationro0b6e; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_metaorganizationmembershiporganizationro0b6e (id, severence, abbreviation, seminal, role_capacity_id) FROM stdin;
\.


--
-- Data for Name: alumni_tracker_app_metaorganizationmembershiporganizationro5728; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_metaorganizationmembershiporganizationro5728 (id, member_role, seminal, capacity_id) FROM stdin;
1	Internship Program Staff	t	3
2	Student	f	6
3	Dual Enrollment Coach	f	6
4	Registrar	f	6
5	Socail Worker	f	6
6	Staff	f	6
7	School Leader	f	6
8	Executive Director	f	6
\.


--
-- Data for Name: alumni_tracker_app_metaorganizationmembershiporganizationroacdd; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_metaorganizationmembershiporganizationroacdd (id, entrance, abbreviation, seminal, role_capacity_id) FROM stdin;
\.


--
-- Data for Name: alumni_tracker_app_metaorganizationmembershiporganizationroceaf; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_metaorganizationmembershiporganizationroceaf (id, perspective, seminal, role_id) FROM stdin;
\.


--
-- Data for Name: alumni_tracker_app_metaorganizationrole; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_metaorganizationrole (id, role, seminal) FROM stdin;
1	Employer	f
2	Internship Provider	f
3	State Education Department	f
4	Non Profit	f
5	School	f
\.


--
-- Name: alumni_tracker_app_metaorganizationrole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaorganizationrole_id_seq', 5, true);


--
-- Data for Name: alumni_tracker_app_metaorganizationrolecapacity; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_metaorganizationrolecapacity (id, capacity, seminal) FROM stdin;
1	Credential Awarder	t
2	Employer	t
3	Internship Facilitator	f
4	Internship Provider	f
5	Education Policy Institute	f
6	High School	f
\.


--
-- Name: alumni_tracker_app_metaorganizationrolecapacity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaorganizationrolecapacity_id_seq', 6, true);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityalumnusse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaorganizationrolecapacityalumnusse_id_seq', 1, true);


--
-- Data for Name: alumni_tracker_app_metaorganizationrolecapacityalumnusseverence; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_metaorganizationrolecapacityalumnusseverence (id, severence, abbreviation, role_capacity_id) FROM stdin;
1	Graduate	GRAD	6
\.


--
-- Data for Name: alumni_tracker_app_metaorganizationrolecapacityepoch; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_metaorganizationrolecapacityepoch (id, epoch, week_length, seminal, capacity_id) FROM stdin;
\.


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityepoch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaorganizationrolecapacityepoch_id_seq', 1, false);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityrelations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaorganizationrolecapacityrelations_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_metaorganizationrolecapacityrelationship3375; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_metaorganizationrolecapacityrelationship3375 (id, perspective, seminal, capacity_id) FROM stdin;
\.


--
-- Data for Name: alumni_tracker_app_organization; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organization (id, name, image_url) FROM stdin;
1	South Valley Academy	\N
2	United States Navy	\N
4	Central New Mexico Community College	\N
5	University of New Mexico	\N
6	New Mexico State University	\N
7	CNLKids	\N
8	Cuidando Los Ninos	\N
9	Southwest Endoscopy	\N
10	Stanford University	\N
11	Southwestern Indian Polytechnic Institute	\N
12	St John'S College	\N
13	Arizona Western College	\N
14	Swarthmore College	\N
15	Texas A&M University	\N
16	Texas State University	\N
17	Cornell College	\N
18	Central Texas College	\N
19	Western New Mexico University	\N
20	Tyler Junior College	\N
21	Strayer University	\N
22	Rensselaer Polytechnic Institute	\N
23	San Juan College	\N
24	Santa Fe Community College	\N
25	Clark College	\N
26	Loyola Marymount University	\N
27	Los Angeles Pierce College	\N
28	University Of Colorado	\N
29	University Of New Mexico	\N
30	Sit Graduate Institute	\N
31	Eastern New Mexico University	\N
32	American Public University System	\N
33	Fort Lewis College	\N
34	St Philip'S College	\N
35	The New School	\N
36	University Of Arizona	\N
37	Grand Canyon University	\N
38	El Paso Community College	\N
39	University Of Wisconsin	\N
40	Itt Technical Institute	\N
41	Naropa University	\N
42	Valencia Community College	\N
43	New Mexico Highlands University	\N
44	Lower Columbia College	\N
45	Northwest Vista College	\N
46	University Of Texas	\N
47	University Of Central Florida	\N
48	Hampshire College	\N
49	Phoenix College	\N
50	University Of Denver	\N
51	Valencia College	\N
52	St Edwards University	\N
53	California State University	\N
54	Washington State University	\N
55	Knox College	\N
56	Pikes Peak Community College	\N
57	Carrington College	\N
58	University Of California	\N
59	Colorado Technical University	\N
60	Seward County Community College	\N
61	Palo Alto College	\N
62	State of New Mexico Bernalillo County	\N
63	Amherst College	\N
64	New Mexico Immigrant Law Center	\N
65	Valley Borrego CPA	\N
66	Albuquerque Public Schools (West Mesa)	\N
67	apquerque  school	\N
68	american university	\N
69	City of Albuquerque Open Space	\N
70	New mexico tech	\N
71	Intel	\N
72	Planet Fitness	\N
73	Robert F Kennedy Charter High School	\N
74	Filiberto's Mexican Food	\N
\.


--
-- Name: alumni_tracker_app_organization_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organization_id_seq', 74, true);


--
-- Data for Name: alumni_tracker_app_organizationrole; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organizationrole (id, image_url, organization_id, role_id) FROM stdin;
1	\N	1	5
2	\N	2	1
4	\N	4	5
5	\N	5	5
6	\N	6	5
7	\N	7	1
8	\N	8	1
9	\N	9	1
10	\N	10	5
11	\N	11	5
12	\N	12	5
13	\N	13	5
14	\N	14	5
15	\N	15	5
16	\N	16	5
17	\N	17	5
18	\N	18	5
19	\N	19	5
20	\N	20	5
21	\N	21	5
22	\N	22	5
23	\N	23	5
24	\N	24	5
25	\N	25	5
26	\N	26	5
27	\N	27	5
28	\N	28	5
29	\N	29	5
30	\N	30	5
31	\N	31	5
32	\N	32	5
33	\N	33	5
34	\N	34	5
35	\N	35	5
36	\N	36	5
37	\N	37	5
38	\N	38	5
39	\N	39	5
40	\N	40	5
41	\N	41	5
42	\N	42	5
43	\N	43	5
44	\N	44	5
45	\N	45	5
46	\N	46	5
47	\N	47	5
48	\N	48	5
49	\N	49	5
50	\N	50	5
51	\N	51	5
52	\N	52	5
53	\N	53	5
54	\N	54	5
55	\N	55	5
56	\N	56	5
57	\N	57	5
58	\N	58	5
59	\N	59	5
60	\N	60	5
61	\N	61	5
62	\N	62	1
63	\N	63	5
64	\N	64	1
65	\N	5	1
66	\N	65	1
67	\N	66	1
68	\N	67	1
69	\N	68	1
70	\N	69	1
71	\N	70	5
72	\N	71	1
73	\N	72	1
74	\N	73	1
75	\N	74	1
\.


--
-- Name: alumni_tracker_app_organizationrole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrole_id_seq', 75, true);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacity; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organizationrolecapacity (id, image_url, organization_role_id, role_capacity_id) FROM stdin;
1	\N	1	6
2	\N	2	2
4	\N	4	1
5	\N	5	1
6	\N	6	1
7	\N	7	2
8	\N	8	2
9	\N	9	2
10	\N	10	1
11	\N	11	1
12	\N	12	1
13	\N	13	1
14	\N	14	1
15	\N	15	1
16	\N	16	1
17	\N	17	1
18	\N	18	1
19	\N	19	1
20	\N	20	1
21	\N	21	1
22	\N	22	1
23	\N	23	1
24	\N	24	1
25	\N	25	1
26	\N	26	1
27	\N	27	1
28	\N	28	1
29	\N	29	1
30	\N	30	1
31	\N	31	1
32	\N	32	1
33	\N	33	1
34	\N	34	1
35	\N	35	1
36	\N	36	1
37	\N	37	1
38	\N	38	1
39	\N	39	1
40	\N	40	1
41	\N	41	1
42	\N	42	1
43	\N	43	1
44	\N	44	1
45	\N	45	1
46	\N	46	1
47	\N	47	1
48	\N	48	1
49	\N	49	1
50	\N	50	1
51	\N	51	1
52	\N	52	1
53	\N	53	1
54	\N	54	1
55	\N	55	1
56	\N	56	1
57	\N	57	1
58	\N	58	1
59	\N	59	1
60	\N	60	1
61	\N	61	1
62	\N	62	2
63	\N	63	1
64	\N	64	2
65	\N	65	2
66	\N	66	2
67	\N	67	2
68	\N	68	2
69	\N	69	2
70	\N	70	2
71	\N	71	1
72	\N	72	2
73	\N	73	2
74	\N	74	2
75	\N	75	2
\.


--
-- Name: alumni_tracker_app_organizationrolecapacity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacity_id_seq', 75, true);


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckincommon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitycheckincommon_id_seq', 1, true);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitycheckincommongoo6791; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organizationrolecapacitycheckincommongoo6791 (id, organization_role_capacity_id, taxonomy_id) FROM stdin;
1	1	1
\.


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinemploy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitycheckinemploy_id_seq', 1, true);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitycheckinemploymena215; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organizationrolecapacitycheckinemploymena215 (id, organization_role_capacity_id, taxonomy_id) FROM stdin;
1	1	1
\.


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinenroll_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitycheckinenroll_id_seq', 1, true);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e (id, organization_role_capacity_id, taxonomy_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: alumni_tracker_app_organizationrolecapacityepoch; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organizationrolecapacityepoch (id, advent_week_offset, capacity_id, epoch_id, start_fsy_id, start_fsy_day_id, stop_fsy_id, stop_fsy_day_id) FROM stdin;
\.


--
-- Name: alumni_tracker_app_organizationrolecapacityepoch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacityepoch_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacityfsyday; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organizationrolecapacityfsyday (id, fsy_seq, instructional, calendar_date, capacity_id, fsy_id) FROM stdin;
\.


--
-- Name: alumni_tracker_app_organizationrolecapacityfsyday_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacityfsyday_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitygroup; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organizationrolecapacitygroup (id, name, group_type_id) FROM stdin;
\.


--
-- Name: alumni_tracker_app_organizationrolecapacitygroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitygroup_id_seq', 1, false);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademi_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitygroupacademi_id_seq1', 1, false);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitygroupacademic_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3 (id, content_area_id, course_id) FROM stdin;
\.


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitygroupacademiccourse; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organizationrolecapacitygroupacademiccourse (id, name, abbreviation, code, max_accru_credits, group_id) FROM stdin;
\.


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq1', 1, false);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq2', 1, false);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembersh_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitygroupmembersh_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitygroupmembership; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organizationrolecapacitygroupmembership (id, group_id, role_capacity_id) FROM stdin;
\.


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa4723; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa4723 (id, content_area_id, course_id) FROM stdin;
\.


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad (id, name, abbreviation, code, max_accru_credits, group_membership_id, orc_gac_alias_id) FROM stdin;
\.


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitymembership; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organizationrolecapacitymembership (id, organization_role_capacity_id, person_id) FROM stdin;
1	1	2
2	1	187
3	1	189
4	1	188
5	1	190
\.


--
-- Name: alumni_tracker_app_organizationrolecapacitymembership_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitymembership_id_seq', 5, true);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitymembershiprel_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitymembershiprelatid708; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708 (id, perspective_id, source_membership_id, target_membership_id) FROM stdin;
\.


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershipro_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitymembershipro_id_seq1', 1, true);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershipro_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitymembershipro_id_seq2', 1, false);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitymembershiprol_id_seq', 5, true);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitymembershiprole; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organizationrolecapacitymembershiprole (id, entrance_id, enumed_role_id, membership_id, severence_id, start_fsy_day_id, stop_fsy_day_id) FROM stdin;
1	\N	1	1	\N	\N	\N
2	\N	1	2	\N	\N	\N
3	\N	1	3	\N	\N	\N
4	\N	1	4	\N	\N	\N
5	\N	1	5	\N	\N	\N
\.


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitymembershiproleeneed9; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organizationrolecapacitymembershiproleeneed9 (id, dashboard_id, enumed_role_id) FROM stdin;
\.


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitymembershiproleenum; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organizationrolecapacitymembershiproleenum (id, capacity_id, role_id) FROM stdin;
1	1	7
\.


--
-- Data for Name: alumni_tracker_app_organizationrolecapacityrelationship; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organizationrolecapacityrelationship (id, perspective_id, source_capacity_id, target_capacity_id) FROM stdin;
\.


--
-- Name: alumni_tracker_app_organizationrolecapacityrelationship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacityrelationship_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitytaxonomy; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organizationrolecapacitytaxonomy (id, name, seminal) FROM stdin;
\.


--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitytaxonomy_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitytaxonomyterm; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organizationrolecapacitytaxonomyterm (id, term, taxonomy_id) FROM stdin;
\.


--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomyterm_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitytaxonomyterm_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacityterm; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organizationrolecapacityterm (id, capacity_id, term_id) FROM stdin;
\.


--
-- Name: alumni_tracker_app_organizationrolecapacityterm_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacityterm_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacityuser; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_organizationrolecapacityuser (id, role_capacity_id, user_id) FROM stdin;
\.


--
-- Name: alumni_tracker_app_organizationrolecapacityuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacityuser_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_performancemeasure; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_performancemeasure (id, name, abbreviation) FROM stdin;
\.


--
-- Name: alumni_tracker_app_performancemeasure_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_performancemeasure_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_performancemeasuredashboard; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_performancemeasuredashboard (id, dashboard_id, performance_measure_id) FROM stdin;
\.


--
-- Name: alumni_tracker_app_performancemeasuredashboard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_performancemeasuredashboard_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_person; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_person (id, id_mask, first_name, last_name, image_url, phone, phone_last_updated_on, email, email_last_updated_on, mailing_street, mailing_unit, mailing_city, mailing_zip, mailing_last_updated_on, email_last_updated_by_id, mailing_last_updated_by_id, mailing_state_id, phone_last_updated_by_id) FROM stdin;
1		SVA	Keymaster	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2		Arturo	Castillo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3	cf20e0ef-419c-4081-9d9c-38773d96acad	Lauren	Badua	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
193	21823041-9f6c-4ef9-9a85-9b1ba5c1e0c3	Lauren	Badua	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
194	0ad6126d-1304-4a6c-99dd-99c590d7acdd	Judith	Cruz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
195	3dbab21a-2208-4028-b27a-a695a878fc61	Jennifer	Dominguez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
196	b00f6bd3-e157-4f49-84b2-937ca61e1350	Emilee	Flores	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
197	d7ac2d47-50b5-4f06-b869-0747c293b28d	Raquel	Garcia	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
198	eac3fd31-ff0a-46a3-a029-cdafa89b0040	Heidi	Gomez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
199	f0530613-f3c2-401c-a2ac-c0b4bfac914c	Vanessa	Griffin	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
207	9c854d61-4e07-421b-947d-bf33d3235af6	Jennifer	Otero	\N	15055955014	2020-11-10	Jotero182@gmail.com	2020-11-10	\N	\N	\N	\N	\N	2	\N	\N	2
202	60c3ff76-32b5-4457-adac-827c1a6e5582	Hector	Montoya	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
203	cc5c8881-230e-437e-82a9-33e04f079298	Juan	Morales	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
204	5c9cf56f-60d6-46e0-b9d7-c05eb8b0c22e	Sergio	Munoz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
205	40ea9aa5-40dd-4dab-b4fe-3d786208f451	Angelica	Nguyen	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
206	7758c877-52a3-46f2-9458-192ce0db3b5e	Sonia	Ornelas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
208	3426671d-2ac6-41dc-a4ed-e8c283ecf235	Sasha	Pellerin	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
209	1b018c09-bf61-414c-a296-34514ce62101	Natalie	Perez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
210	185b6bf5-7bb7-4071-a95e-51756e1d05e5	Jericha	Phillips	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
211	40f5b5a0-8629-418f-920f-db44ab82e6e3	Joshua	Rael	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
212	66833439-a608-4252-ba26-ca83bf58702c	Matthew	Siegling	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
214	d0ed60de-7f0e-4401-8358-c9f209dbe7ae	James	Wells	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
215	3d2de945-a742-4a5d-8fa2-16aa013849d7	Lewis	Baca	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
216	3338e199-6477-47e0-8a58-22f9b1739811	Robert	Baca	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
217	0198cbe1-6133-44d3-9ba1-f54fef498b03	Felicia	Fuentes	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
218	9678bc4e-d500-4b0e-826e-36800b81deec	Christopher	Gallegos	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
219	6a56ed99-aba6-4cd8-bf91-3b636d49d915	Lannette	Griffin	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
220	4c7c00d6-6bac-49a4-85c5-fe6a5f85e58c	Javier	Jurado	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
221	38e804d2-3d18-444f-af75-06f152bf0351	Yolanda	Ramirez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
222	151fb637-6b66-4f1f-9f5d-4626f0e546ec	Claudia	Rodelas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
223	9648bc45-4c61-48c8-9e2e-ab2c9c9a32fb	Theresa	Rodriguez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
224	20661c13-a281-4963-a18e-77b6b0042913	Andrew	Trujillo 	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
226	dff86607-8c5e-43df-a0c7-94b28842d953	Samantha	Lujan	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
227	337a2524-a660-483f-9dc6-e4509c131ec6	Anayensi	Cano	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
229	96a8a6ad-e194-4def-a6b9-32368c427ff6	Carlos	Medina	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
230	daf3562b-3785-4b1c-9956-b38a9fac69cb	Vanessa	Perez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
231	efbfab44-8cf4-4ba3-ab6d-5ddd7278bbf7	Rhea	Samora	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
232	fff33618-f319-4fef-8419-de5275814ff5	Sadie	Sanchez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
234	8513bfda-48a2-4194-a0d0-d3cbddaadbf2	Erick	Aldaz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
235	77dea59f-6f2e-4648-aa3a-9888ed4bde8e	Jacqueline	Barela	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
236	42de1982-2619-42cc-9fa2-15cfa7ca048d	Marco	Carrasco	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
237	9e43d29a-d468-4e26-aef7-912d0c2c153c	Sergio	Cera	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
238	36e71e0f-99b6-48f3-a034-a45260334321	Brianna	Chavez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
239	c85ec2de-8ed3-43ee-9232-db14de45d6b8	Esmeralda	Dominguez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
240	6c12e70c-9ca2-4476-97ac-74eb37684ccb	Oscar	Dozal	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
241	763b8541-61b3-4d59-b22b-323796a17e2f	Juan 	Duran	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
242	7fe87542-6c0c-429b-bb38-2f30ef9f0825	Jessica	Fields	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
243	65dae1c4-2d54-4f5a-9e3f-bb5c32073c96	Roxana	Gomez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
244	cdecea25-0204-4985-81e8-0ea2d4bf78b1	Summer	Gonzales	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
245	23744a49-0f5c-435d-b1c3-429645894378	Eduardo	Inguanzo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
246	b4ea5d6d-9c75-4f50-bf14-07e47d411b13	Katherine	Jimenez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
247	429b7cf5-f321-4c4c-98fb-7e80ba22197b	Bailey	Long	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
248	dfd1fc1b-ed6e-419e-a927-4e410b89e96e	Erica	Lopez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
249	53a02a99-f98d-4d3c-a6df-1c69bfb789f1	Dominic	Luna	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
250	8901f88b-979a-46da-8b05-79fd382c62ac	Roshawn	Maldonado	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
251	b62d59c7-30e2-46e1-8218-3793f89e4e02	Melanie	Marquez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
252	9c8d28e1-f413-4a7f-bb57-89a0e051bcfa	Marisa	Martinez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
254	18dadf3e-020e-42bf-8861-d76d2dd0a256	Viviana	Medina	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
255	a7ee2772-e9ad-4837-910b-0428fbde43cc	Wesley	Montgomery	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
256	f6589dbc-dbc8-4f0c-8f6a-10d06a92ceaa	Jessica	Nessle	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
257	7f1aea6c-2810-48b2-a895-2d5bb605ea89	Maria 	Otero	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
259	6a995dfb-1568-4c46-a3d6-c733ba15affc	Nancy	Perez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
260	c31bc445-46c9-4b75-ad7c-a34ce08dc6aa	Africa	Quiroga	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
261	8bd7e1de-cfba-43aa-926c-4d05836e9329	Jacob	Rael	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
262	a0601a8c-9933-4369-abea-35b0cdf5b6e4	Irving	Ramos	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
263	cd9b7f93-6a8c-4957-8394-abc87d0c9211	Amanda	Rivera	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
264	20381d30-9d12-42c0-a0e4-ff2776c1f969	Daisy	Ronquillo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
265	2486c0ac-fa0d-42a4-9452-e5a250d10ba7	Nataly	Torres	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
266	d73c934a-002b-4c68-a5c2-66f5b354fc53	Bernadette	Valencia	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
267	6bb2534b-bd9e-4ac6-a077-2013272490b0	Edward	Valencia	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
268	375be86b-d912-43f2-a398-5c4e9b24fa01	Brittany	Vandever	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
270	667f7fdb-e276-47a0-b1c9-81f20f896345	Jesus	Armendariz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
253	4a2db24c-b813-4316-9a7b-e72943f5b5fe	Abigail	Martinez	\N	15053064670	2020-11-11	martinezabi0@gmail.com	2020-11-11	\N	\N	\N	\N	\N	2	\N	\N	2
273	688343bb-42d2-42e8-b958-70d38cd61197	Erik	Carreon	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
225	466c80cc-44e9-4681-b29f-30bec04d74f5	Angela	Betancourt	\N	15059186814	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
269	84b9d30d-c29a-4444-acb6-e31da344a6c3	Gerardo	Alvarez	\N	15059079931	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
201	3d5f67a3-86c9-4fc8-a887-99d8d0db1905	Dalia	Medina	\N	15052677031	2020-08-04	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
228	d8a70342-13e8-4586-acb8-3a118228e0a5	Martin	Martinez	\N	15056392317	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
200	3f427e8f-7ed9-47e9-9b62-11027e73f286	Sandra	Jurado	\N	15054805889	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
272	b454fdd0-28d1-4554-a4e0-5ff6a3a89e59	Rosa	Caro	\N	15055447763	2020-08-19	rcaro@southvalleyacademy.org	2020-11-12	2439 Big Pine Dr NW	\N	Albuquerque	87120	2020-11-12	2	2	1	2
275	06814a13-2775-4f1f-a060-9d26e2c30e03	Dyana	Gonzalez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
276	1c038f7e-0645-4ca7-93c5-0cdb83fd679b	Alexandra	Gurule	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
277	69f03bf5-f41c-442b-bead-a6ca115ca1a7	Eduardo	Gutierrez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
869	d4ccf0f7-0a65-47ed-bda1-db410b187a38	Ismael	Aguero	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
279	7d4cb4f4-bcb6-40d1-b82d-2735546f1a0f	Samuel	Lopez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
280	792e81d4-3b47-47e9-9ab4-a22268e9c667	Noe	Loya	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
281	1bd3e758-0519-4c46-9a37-a6f9ab0c211e	Victoria	Lujan	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
282	028aaba7-ead9-485c-bc07-6574c9501c66	Rubi	Molina	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
283	19f5fd20-1a31-46cc-a99f-728b481dba4d	Damian	Necochea	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
285	a1f53e3d-b54b-4027-bb03-e9fc6ea35966	Bianca	Olivas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
286	ea63c172-e5d4-422e-b607-4ef0e9bb4b36	Mayra	Ontiveros	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
287	484f8232-e262-4150-a381-3df25919711c	Elena	Perez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
288	ac7cae61-9b50-4207-944d-11f3a3f299c0	Erick	Perez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
289	c4cb7076-322a-4ed9-8b93-cfaab1dc5585	Javier	Rojo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
290	deb2f833-ea92-44bf-9776-f63710369d0a	Crystal	Rudolfo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
291	0ca3c4b0-6d74-4983-8300-8c0118cc4540	Morgan	Ruiz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
292	c2835b7f-e4a8-42b3-a145-ded748ecef33	Christina	Silva	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
294	db28ccc3-d30d-4ce5-b6b5-ee9626c390a0	Hector	Anchondo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
295	72a2c68b-8099-4213-9504-c4a7670fa255	Ruby	Bencomo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
296	8fd97572-796a-4dfe-85f5-b3b6477acf02	Angel	Chavez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
298	d4a759f7-9c05-45fe-bb72-07a2abd63ea8	Stephanie	Cruz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
299	7bfc68ac-ff42-4400-a6a7-7fcb89be0251	Gladis	Enriquez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
300	8afa0efd-e365-46e9-80fc-61c43868fe68	Alma	Flores	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
301	cbda2088-9113-419b-8b78-aa13337bac74	Juana	Gomez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
302	cb88d532-6e93-42a1-9339-1cb0856a2cb4	Aracely	Gomez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
303	c3bd2701-61ac-4d56-8ad2-5478da1dda48	Jessica	Gutierrez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
304	fd3700fe-7a4a-406a-847c-efa2f6e69537	Christian	Jurado	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
305	9f0532da-09b1-41ba-846f-910aba338420	Anthony	Lopez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
306	8876d646-6677-46e7-9cdf-803aa3eb195d	Marco	Maldonado	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
307	04e673f4-3ce8-4926-9aa0-e02f7af9afd4	Miguel	Martinez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
308	1162ef2d-131f-46fa-b654-fa86f31faba2	Abinadab	Mendoza	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
309	f37b9481-994f-44c1-b883-85fcebda7b26	Jorge	Mendoza	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
310	c314d816-d7c4-40f7-9181-5629ef188406	Jessica	Perez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
311	c2c2fafc-c9f1-4a6d-b478-14c48352b5ae	Jessica	Ramirez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
312	3f1956ab-c524-4635-85ae-a9e7e64a11a0	Vanessa	Rodriguez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
313	11e78ea3-34fe-4a05-84f9-43d3de6ef888	Nimsy	Salas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
316	250c1c31-eef6-49f8-900d-183726d610ce	Osbaldo	Villareal	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
317	d34d1146-bcd7-4f26-bcf6-0aa878438947	Arturo	Zambrano	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
318	b7cd3fc1-9b99-4212-9602-f5f520517e2a	Christopher	Zimmerman	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
319	323c24be-bd3e-4071-a05e-a196e14cc2ac	Elyasib	Acosta	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
320	bc243568-74f4-4431-8802-d6d3c88d05f6	Maria	Aleman	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
321	dc329bf4-21bb-4def-b872-fb5569dd7c03	Alejandro	Aragones	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
323	a42ab0e6-2736-4743-a95e-62fbd351603e	Arturo	Camunez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
325	5b8ccc7e-7faa-4e0d-843b-67bb142b9b17	Michelle	Caro	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
326	f506af6c-1a51-4d52-9d9d-fd589f45f3a5	Pedro	Chavez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
329	f6a40400-f0f7-4a1f-887f-cb0d54bba96f	Brenda	Enriquez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
330	69daa131-1731-4819-8be4-9e5ba0517960	Lorenzo	Escarcega	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
324	85208e77-4a4a-498b-80de-c05e0093ce9d	Alejandra	Carmona	\N	15057175130	2020-11-26	acarmo840@gmail.com	2020-11-26	\N	\N	\N	\N	\N	2	\N	\N	2
332	33b9f5a9-cf57-4e2a-9f19-40704a6ae565	Johana	Garcia	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
333	a5824d6a-f904-4191-9585-885dd3945fb4	Omar	Gonzales	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
334	911c6213-2d47-45f1-9dcf-275cb92a7624	Emilio	Gurule	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
315	27d12cf3-bb61-410a-9889-84f0d67b86e8	Luis	Torres	\N	15057300932	2020-12-09	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
336	5ca9f6fd-5568-43ff-bac3-02faaa1d7454	Cody	Hendren	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
337	b94fff78-7870-4b5d-a40f-4bd60b30fe93	Mireya	Jaquez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
338	636c9f97-dd8f-43f9-b976-dae9fc961457	Claudia	Jordan	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
339	b6f48dcb-3473-4a16-94a0-2a3f2e36d533	Anissa	Lavers	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
340	aae23318-f67c-4ad0-ae94-b9715c5ec99e	Maira	Lerma	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
343	9fa82494-516c-4a46-b010-efbc7230420d	Joshua	Martinez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
344	49d83994-c3ea-4737-9b05-6f745d5b7088	Miguel	Martinez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
345	8c18ba48-3658-4039-8f20-6e303742a1da	Katty	Mendoza	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
346	de60d34a-40d5-4b6d-9c92-3147eb1075c2	Klarissa	Mier	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
348	361565da-9d4d-45df-a3cb-17d951cdf08c	David	Morales	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
349	3689f79c-84ab-486c-8184-87e767df3f1c	Daisy	Ortiz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
350	368a3753-96b2-41f2-a28c-cd49d611ab3a	Christopher	Patton	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
351	1253db56-f1ab-4619-9455-b9b9c4e53e60	Kenia	Perez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
352	fb67d72a-5fc1-4cf9-af6a-44e224ee9f91	Susana	Perez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
353	8c0e31ce-667f-42df-9a95-1aae68d81904	Brenda	Pinon	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
354	62c461b1-4a74-463b-8e18-c3c7d1d4a485	Javier	Quinonez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
356	c126ba3c-e563-4670-b037-a053b2aedc79	Luis 	Rubio	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
357	71e1a7f2-7ac6-4348-9918-be3b5bbc8bb1	Catalina	Salas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
359	0b141275-ec65-4153-8cfc-685b8c361e52	Brian	Zubia	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
284	acad0f42-5ecb-48fc-a9e6-97179f23f0ba	Carla	Nieto	\N	15054539993	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
293	c59d833c-feb3-40cb-bb89-e4462f6d0ee5	Diana	Torres	\N	15054502079	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
327	0b771bab-1455-48e6-b5ae-389e9fe31ed4	Amanda	Chavez	\N	15054800587	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
342	baa2e4ee-0f3a-4c40-9790-5dbea66dd66e	Cinthia	Manriquez	\N	15059747271	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
347	44b7ac24-ae29-4434-926f-5276dbb5b99a	Edwin	Morales	\N	15053630512	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
297	34507688-2e0f-4dcb-b0bd-cd5b92bfe5fe	Jose	Correa	\N	15058032956	2020-08-04	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
331	26dca7a9-ae96-4b3e-917b-09c39785730a	Joshua	Foster	\N	15055041005	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
358	2b1f36dc-257c-4058-b2a7-a19ba01bdf04	Luisana	Salcido	\N	15053409569	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
328	8e9f8873-1092-4c1d-90b1-dab71579ca5f	Anthony	Corral	\N	15056204382	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
797	66e78973-c2bc-467f-af4a-b39cfbc0e940	Yurid	Armendariz Lopez	\N	15059005610	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
361	70f1f721-d8d8-4771-b76c-e4609cb3b3a4	Jorge	Alvarez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
362	982b937e-44d4-43d1-aad4-6583df9ecf46	Michael	Bailey	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
363	5b75717b-2342-4e30-946f-bcded5e2ed70	Carlos	Barragan	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
364	efb7488c-7377-491e-b4bd-12a9d834aa98	Justin	Blea	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
365	00b6e416-e354-40c7-aec3-724ddccfdafc	Elizabeth	Cardiel	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
366	54fba225-3920-46dc-ba13-de8d6fe6e8f4	Lizdebeth	Carrasco	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
367	6ab7ea59-c0e4-4b17-af41-07d1f3acc318	George	Carrasco	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
368	2ea03859-0782-4e89-873f-34f3426c7575	Job	Castrellon	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
369	309a960e-a581-4727-a4c7-a28ed8edbab5	Denise	Chavez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
370	b492b767-de42-4bb4-8087-7da0e06e00c6	Perla	Chavez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
433	6b4317eb-17e2-4214-a397-ceb03f177037	Alyssa 	Romero	\N	15055504359	\N	apr94@msn.com	2020-10-30	\N	\N	\N	\N	\N	2	\N	\N	\N
372	122251aa-b7f4-4365-af00-19bf1d631b69	Marilyn	Duran	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
373	9ceed228-52c6-4c72-b3fd-574e71d46b76	Angelica	Enriquez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
374	1fa3cd17-9bb2-482d-87a7-628f77b7f5cb	Jaylene	Fink	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
187	6ca8e8f9-ec26-4ab8-8d05-1c1ec50aae99	Karla	Melendez	\N	\N	\N	kmelendez@southvalleyacademy.org	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
188	d54b2bca-32f0-4030-9828-cf21074d534b	Julie	Radoslovich	\N	\N	\N	jradoslovich@southvalleyacademy.org	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
189	282b519f-be1d-4bb3-8766-913dbb224f2e	Shelly	Roberts	\N	\N	\N	sroberts@southvalleyacademy.org	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
190	21b4d613-0254-460e-bc06-11d1c0a75d81	FFE	Admin	\N	\N	\N	data@futurefocusededucation.org	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
376	c9bc2063-3b90-44c6-b7e2-b0f1a89ead09	Katrina	Garza	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
377	34cbad57-f699-4e9e-8fff-9fe2adc92a5f	Crystal	Gomez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
378	6537d4f4-0e83-4ab4-96f8-6b964b1cde90	Ralph	Gonzales	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
379	6ccfd9fa-0292-45e5-bde6-03b01c473edc	Abril	Marquez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
380	b9d7bb52-1399-47a3-bd85-bfaef77a1132	Adriana	Martinez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
381	ee73d837-ee1e-419c-8a10-f0a07f46e1c6	Mario	Martinez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
382	bb6ed533-d168-4f26-b5f0-fcbb7762b009	Erika	Miramontes	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
383	edf19a13-ceae-44e7-a196-7d5619196cb0	Ashleigh	Montoya	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
384	4fc852bd-b3f4-4247-b4fd-2a7f801894c2	Joe	Najera	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
385	1129bc0f-50a7-471b-99fa-e98eab939094	Diana	Najera	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
387	b39d757e-c806-4a7f-ae4d-aaba3f86a176	Ana Karen	Olivas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
388	270b7be7-fcf4-4734-ad3c-b2be4ba608b4	Nora	Ontiveros	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
389	635196fe-3305-41bf-8bb1-4a6c90548975	Andrea	Perea	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
390	f500c3fd-7e69-4e10-9186-c1f3a3ea5c34	Emilio	Polanco	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
391	f4d5230c-7c48-4b57-9a4e-26d7f6658e65	Carina	Preciado	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
392	6ccb49bd-b0ee-444d-8c45-e6bd2272a80e	Alfredo	Rico	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
393	e8f1c6b6-c5cf-4dfd-ae1c-05be846445b6	Michael	Rodriguez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
394	c4568630-7dc7-435e-bc9a-86ab88f4dc7d	Amanda	Saenz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
395	6da6668e-37c4-4d3a-b6c2-bdfc202828b6	Saira	Salas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
396	da537cf5-abb2-443a-8d32-dfa0a4347036	Jacob	Sanchez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
398	dcc47eb7-37d7-4ba5-a8e6-4682ca5b645c	Colin	Willis	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
399	dccd15f1-44f7-49e1-ac71-e0fb940f6174	Hilych	Armenta	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
402	91312f2a-bc25-43b0-b00a-769046fc3269	Jose	Calzadillas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
423	762b19ed-7bf7-40ec-8e05-4e74fc412033	Brenda	Parra	\N	15059007876	2020-11-12	brendaparra94@gmail.com	2020-11-12	\N	\N	\N	\N	\N	2	\N	\N	2
404	3f841c8b-d618-48cd-8148-2719523c6604	George	Carrasco	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
405	95ba38f3-2f09-4f02-a0a2-30687dc6acee	Ivan	Comparan	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
406	5438710d-00fa-463b-a1af-b2f2c68a1fb3	Gabriela	Duenas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
438	ed8f0322-8562-4f55-b0cc-f8c907480cbe	Melissa	Aleman	\N	15055459889	2020-08-19	meli.aleman1204@gmail.com	2020-11-12	\N	\N	\N	\N	\N	2	\N	\N	2
408	ebecf2f8-eabb-420a-95b8-184042c7f614	Emilio	Flores	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
410	f0d8e37e-1fd3-4b1f-ac2e-f28c401e37d6	Estefany	Gonzalez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
411	a8ca31e2-1e12-41e9-96e1-2cdf47540b4b	Jonathan	Gonzalez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
412	6a525f77-bf17-4c86-9047-24ca20bf22bd	Cristian	Hernandez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
413	c9bf16e4-3ac5-41bd-b89f-148d040c0ebf	Diana	Hernandez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
414	a45bd80b-e7f5-4742-952c-4025bfca2614	Daniel	Herrera	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
415	64578a1f-3bc2-491d-a0cc-b3cc44f28ccf	Adriana	Holguin	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
416	ebfc1719-c161-4758-82cb-d54dff557f4b	Christian	Jacquez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
417	c35a50dc-2b1a-4232-80fa-16cde9837cf0	Alexis	Loma	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
418	981fa4f0-5941-46ba-acff-e50d44f25773	Adriana	Marquez-Lopez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
419	ee057bd8-326f-41b5-9e0d-70b10e79cf3b	Jorge	Mendoza	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
420	4375f20d-960a-46b7-89ad-a828ab9ecb3f	Juan Pablo	Morales	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
424	125f5c80-a375-40a5-8da3-003eaecf9772	Luis	Perla Ochoa	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
427	93e8690f-9738-4d50-b729-4139a887f1d9	Maria	Pulido	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
428	99a98dbc-8024-43ae-b37d-7107d69eb8b7	Erick	Ramirez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
429	148f35d7-57a7-426b-9b0f-fdec7dc37898	Karina	Ramirez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
431	918bf6bc-0afe-4ecf-8008-7482de88460a	Amanda	Raught	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
435	63872c3f-11da-4b9d-80b0-baac358a1805	Tania	Tena Armendariz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
436	2bb3a36d-a989-43ff-8fb1-9fef84811960	Lluvia	Torres-Dominguez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
425	3ac4a9db-431a-476d-b2c4-316385e95f01	Javier	Portillo	\N	15055040867	2020-12-01	Ports_94@outlook.com	2020-12-01	3018 Mule Farm PL SW	\N	Albuquerque	87105	2020-12-01	2	2	1	2
409	caf70079-3237-47f1-8b24-ecab4fd3474e	Bryan	Fornelli	\N	15054107232	\N	b27ryan@gmail.com	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
432	0c5f027c-4c20-4ab3-9049-f2c00973e4f1	Deyanara	Rivera	\N	15056108656	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
386	7a31980a-d05b-4e75-8307-b7228a473731	Jesus	Nunez	\N	15057104709	2020-08-04	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
434	982dbb02-2571-4cc2-8b7d-a61e8470109b	Kevin	Ruiz	\N	15053046220	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
422	8b964f4c-7913-4a68-b001-42d3c3fe8b34	Lurdes	Ortiz	\N	15054527373	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
403	a6be6db9-4d39-4a02-b14b-ac3eca43775a	Raziel	Castenada	\N	15052399652	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
400	031b44db-ac9a-41cd-befe-84b2fc20f162	Saira	Bustillos	\N	15053225836	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
407	3a2cfd6c-ac54-4bad-9c15-683a91aac658	Karen	Enriquez	\N	15055159900	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
371	1c2f9afc-01f0-486a-9c3c-c9f42bd9add7	Vianka	Chavez-Villa	\N	15059672954	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
439	d97291fe-df11-4d9a-91d8-72cddba2ff9f	Rebecca	Acosta	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
440	4c3b65ab-30bb-4b21-9956-3b6a83a2e22c	Francisco	Casillas Moreira	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
441	aef1b61c-40ea-49e8-a369-4980c9ce92af	Noe	Castaneda	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
870	11a3a61f-978b-41e4-b9d3-3f6b5ee7ae73	Ismael	Aguero	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
444	f591e56b-dfd8-4a19-9cce-0908a068678b	Yajaira	Cavazos	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
445	a084f984-df2b-4b22-a417-dffdf5cac5a8	Daniel	Chavez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
446	50422ef4-1b40-42bc-84d4-87e0bc5035b1	Erik	De La Cruz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
447	76809468-8ecd-4671-97e4-c500f1c50b9c	Evelyn	Duran	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
448	dd99128e-f120-4b12-bd5a-7dd9cbc97c9e	Lisbeth	Duran	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
449	bee25ee8-6649-4ea5-a0a9-6127d70e0bd1	Valentin	Enriquez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
450	d2f6221d-e1c6-4e98-adfc-b6b3fb3031e3	Natalia	Garcia	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
451	533e543a-9e73-4aba-8677-4958382a7750	Jasmin	Gomez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
452	b99d0d39-8e85-47c5-8de7-ba6d4b592a5c	Andy	Gonzales	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
453	855244c4-8f41-4bda-835c-ea12cf558d25	David	Gutierrez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
454	2b540504-b8db-48dd-927f-6c9ce6a8d45a	Priscilla	Guzman	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
456	1eaf80ad-996f-4a63-8c11-a0fb469df864	Clemente	Hernandez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
457	15e015c2-8f71-4b5c-a358-91047b20bf2e	Denesia	Hernandez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
458	1c69a4f4-aabe-4b3a-9a31-3c54f44bb345	Rafael	Hernandez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
460	7491c526-867d-4601-8fa4-80bdfbef8d8f	Mariha	Herrera	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
461	5871374d-97e5-4dd2-a142-155e8e2f5839	Marisa	Herrera	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
463	0598fec2-3026-4861-8870-8ad3377986a7	Veronica	Maldonado	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
464	b56fad6d-e6be-4e9f-8246-64d2d7997b63	Rubi	Marquez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
465	f090c252-ca6b-4eb4-888b-a8302e0c9e14	Amairani	Mata	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
466	daa55141-9c8b-44af-aab2-71772c00f214	Mariana	Mercado	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
487	f13cd1ad-bd51-4179-8064-e13c49dd800b	Daniela	Armendariz	\N	15059080507	\N	darmendariz@salud.unm.edu	2020-11-10	\N	\N	\N	\N	\N	2	\N	\N	\N
468	1f07f749-6808-4ad8-9d8c-1123cff8492e	David	Molinar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
469	12f7b7f4-c925-49f7-a231-d47025583748	Jessica	Montoya	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
470	a36f34d7-9000-44d8-96dc-266d82fc7c7d	Cinthya	Munoz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
472	b0f6ad06-9883-4789-9839-80dcf142330b	Alejandro	Olivas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
473	512fbf5c-82e2-479b-bd4c-665682d6b958	Marcela	Ortega	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
476	9a401eba-b2c1-4f25-91f8-44b608470c19	Karen	Perez	\N	15053487354	2020-08-06	kgperez90@gmail.com	2020-11-11	8919 Blue Meadow Trl SW	\N	Albuquerque	87121	2020-11-11	2	2	1	2
504	2c2fd043-27ac-4ac7-a1de-067c551714b5	Pedro	Gutierrez	\N	15059678622	2020-11-11	pedrogutierrez1234@gmail.com	2020-11-11	3028 Rio Maule Dr SW	\N	Albuquerque	87121	2020-11-11	2	2	1	2
492	93691c72-6de9-4887-a085-551b5d5738e1	Esteban	Cabrera Duran	\N	15053045768	\N	estcabreraduran@gmail.com	2020-11-11	1714 Jackson Street	\N	Philadelphia	19145	2020-11-11	2	2	39	\N
479	b7d72ed1-88fa-408d-a69b-3ff015ad43ba	Edwin	Ronquillo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
480	587da3e4-045e-472b-83e3-bf886c1977ee	Nayely	Ronquillo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
481	eab8f2f4-f227-43e4-9e39-b68421d067cc	Rocio	Saenz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
482	038495a2-37db-43fa-a3ac-f9c5c6df17b0	Elaine	Sisneros	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
483	24328b08-d9d4-436e-9460-ef2ee87e8b03	Stephanie	Sisneros	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
485	29fa4c2a-eb57-4325-9544-e20177ddfcf0	Prisma	Varela	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
488	372c23ab-6f07-4896-a8e1-e79396a86504	Jacob	Baca	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
471	0c2fb102-457d-4bf1-ab4c-3239caa49556	Jason	Najar	\N	15053319873	2020-11-11	jasonxnajar@gmail.com	2020-11-11	\N	\N	\N	\N	\N	2	\N	\N	2
520	9cc3dd50-6f24-4fa0-b1d5-e83748f93664	Rebecca	Otero	\N	15053066665	2020-07-30	oterorebecca8@gmail.com	2020-07-30	1701 Payne St	716	Dallas	75201	2020-11-12	2	2	44	2
443	46a6fbb8-aae9-4af4-8afd-e37279f7bb77	Jose	Castro	\N	15055823088	2020-12-01	castroman408@gmail.com	2020-12-01	1102 25th st sw	\N	Rio Rancho	87124	2020-12-01	2	2	1	2
518	0fb55826-6775-4f40-813f-7474c88f1817	Ingrid	Ordonez	\N	15058183181	2020-12-03	Ikordonezc@gmail.com	2020-12-03	\N	\N	\N	\N	\N	2	\N	\N	2
459	dfd8c301-3aec-4435-88ab-a5029eb8ac0d	Rebeca	Hernandez	\N	15054108539	2020-06-30	rbc.hernandez@yahoo.com	2020-12-10	1522 W 5th St	\N	Hastings	68901	2020-12-10	2	2	29	2
506	794f0cc5-e507-4ac8-9022-6f136c0bf7ab	Cynthia	Holguin	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
510	dd206ade-e757-4c54-9e62-b4b859eaecd5	Rodrigo	Loya	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
478	5fb39f3b-ba80-42e7-b297-c3a1a74816d2	Andrea	Rojas	\N	15055735640	2020-06-25	drear0603@yahoo.com	2020-06-26	\N	\N	\N	\N	\N	2	\N	\N	2
486	41ea653f-da13-4517-ab48-71b180ceecbb	Yasmin	Anchondo	\N	15053154019	2020-07-01	anchondo15@gmail.com	2020-07-01	\N	\N	\N	\N	\N	2	\N	\N	2
509	22031251-9f73-4dc2-9cd1-a87c3ad9b148	Loma	Pedro	\N	15055730130	2020-07-01	ploma21@yahoo.com	2020-07-01	\N	\N	\N	\N	\N	2	\N	\N	2
517	65344c37-bbf8-41b8-a9b4-29faa62b1f5e	Edgar	Ordonez	\N	15056977240	2020-07-01	edgarordonez505@yahoo.com	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
497	29f4a7bc-773f-4c46-af41-a342d1087867	Xavier	De La Rosa	\N	15058086766	2020-07-01	delarosa41912@gmail.com	2020-07-01	\N	\N	\N	\N	\N	2	\N	\N	2
514	95877396-6376-40cf-98e8-81193a43d081	Jaquelin	Miramontes	\N	\N	\N	jaki.miramontes@yahoo.com	2020-07-01	\N	\N	\N	\N	\N	2	\N	\N	\N
512	a3b37618-ddfa-4bf8-bef0-3c44f1766d62	Adasmine	Mercado	\N	15056104724	2020-07-13	adasminemercado@yahoo.com	2020-07-13	\N	\N	\N	\N	\N	2	\N	\N	2
495	90483306-7cef-401e-9dc4-67b92d843d32	Joseph	Cordova	\N	15053049663	2020-07-13	josephcordova4200@yahoo.com	2020-07-13	\N	\N	\N	\N	\N	2	\N	\N	2
507	438d254f-f669-4ec4-a043-a060313dc59a	Jonathan	Jean	\N	15054892965	2020-07-13	jonathanjoejean@yahoo.com	2020-07-13	\N	\N	\N	\N	\N	2	\N	\N	2
503	1ef9b93a-7ab5-4fce-9a63-ba879704b768	David	Gonzalez	\N	\N	\N	drg5o5dj@gmail.com	2020-07-13	\N	\N	\N	\N	\N	2	\N	\N	\N
494	355807b6-057a-4737-86bd-de023001ad56	Angelo	Chavez	\N	15053824655	2020-07-29	angelochavez1@gmail.com	2020-07-29	\N	\N	\N	\N	\N	2	\N	\N	2
521	bb4ad3d7-575c-4e78-8b4f-ba01c0631a27	Jasmin	Quintana	\N	15058046766	2020-07-30	quintana.4.49.12@gmail.com	2020-07-30	\N	\N	\N	\N	\N	2	\N	\N	2
500	c86af599-f031-46b3-a482-20860099aa5b	Araceli	Gamboa	\N	15053409389	2020-07-30	azgamboa7@hotmail.com	2020-07-30	\N	\N	\N	\N	\N	2	\N	\N	2
516	93ef8239-283f-4458-89da-3431e8738c7e	Itzel	Najera	\N	15059347390	2020-07-30	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
475	516f7025-c151-49ff-bec7-1820eac0359c	Gabriel	Perla Ochoa	\N	15054497567	2020-08-04	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
462	523b6119-92aa-4917-a131-c6695ab12742	Haydee	Loya	\N	15052174350	2020-08-04	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
489	4d598125-a9e6-4a79-a35f-87e99066a92b	Sugeily	Batista	\N	15059996295	2020-08-19	batista_sugeily@yahoo.com	2020-07-13	\N	\N	\N	\N	\N	2	\N	\N	2
558	8980640d-f737-491d-8b35-2d5d9229206c	Viviana	Martinez	\N	15053044751	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
604	bc565d63-43b7-4a77-9d68-5154e362b3d8	Viviana	Cruz Peña	\N	15053632948	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
570	b8a3cad5-cf22-413a-84ef-2da04429fa7a	Yadira	Preciado	\N	15054108386	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
871	92ebd197-157a-4b63-b25b-ff9c96fe120d	Hannah	Anderson	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
584	4358c461-13ba-48af-9b53-20f6cfe49e5d	Karina	Veleta-Enriquez	\N	15058181684	2020-11-05	kveleta97@gmail.com	2020-11-05	\N	\N	\N	\N	\N	2	\N	\N	2
532	980a93b2-4054-4f98-ad0a-c1cd1af1b8f7	Vanessa	Alcala	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
533	ff6df3dd-336d-4d62-94ad-a7352c4d780a	Emily	Anderson	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
534	2e2066db-d50a-47fb-a6dd-f6a38e028f7f	Luis	Andrade-Huerta	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
535	d8c865c8-8df2-4f1b-8b7d-a59cdc9d1699	Karen	Bejarano Ordonez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
537	d8b3a27f-2d66-4cf0-878c-0baf309c94bc	Myrna	Campos	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
539	d8dc0fc6-fe07-4202-b390-1d9a428a37c7	Miguel	Castaneda	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
541	ecd6eb87-0712-4c70-afe7-62e842156237	Jacquelene	Comparan	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
542	ca4c0c68-0221-4ebf-9e18-f94b48058b01	Tiffany	Echeverria	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
580	a2d2133a-a043-4b8f-a7ff-c07f57bbf885	Gerisa	Torres	\N	15057217599	\N	gerisatorres@gmail.com	2020-11-10	8852 W Hess St	\N	Tolleson	85353	2020-11-10	2	2	4	\N
545	e0e21768-45b1-4c7a-b2bf-7d94e79cbcff	Esmeralda	Gomez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
548	413b5df9-3e6c-4b9e-94bc-19e9d0dae3a5	Zamantha	Hidalgo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
551	3588ded8-3ba8-402e-9a71-334c7902d68f	Daniel	Loya	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
552	77d4cf0f-82a2-4f1a-b0d8-82e9cd20c91f	Lizbeth	Madrid	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
554	ab8988e6-8cf5-415b-928c-93661cbeb537	Jessica	Marquez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
555	5d6f5e90-8b73-4a00-9dff-0a0849df7375	Esly	Martinez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
556	afb571ac-13e4-407e-a666-fcc78f2303c5	Pedro	Martinez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
557	3b1872a7-004f-4b2a-977a-f24aa1a4b265	Reydesel	Martinez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
559	f1a62c91-7cc0-4520-9e78-43c1f0157424	Christopher	Martinez-Quarles	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
560	b8f528d7-a5d3-4a86-99e1-599c6ee6735b	Kevin	Mazariegos	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
561	deb9bee8-5218-4253-919d-255d47a7d210	Isel	Mendoza	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
564	dd80e862-ccdc-441e-87a2-b39603f017a1	Emmanuel	Munoz	\N	15055156804	2020-11-11	munozemmanuel15@gmail.com	2020-11-11	\N	\N	\N	\N	\N	2	\N	\N	2
565	e81fc499-5fab-4b1b-b248-bbca58612660	Adriana	Nunez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
566	588ec642-a245-442f-89a5-f67af8e879f4	Ruby	Ordonez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
567	6c93d97c-9c25-4c72-9b7e-6e30e3391cd4	Fabiola	Orozco	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
569	e63fc199-2868-4851-965b-d68ce0a888b5	Martha 	Parra	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
572	f3fb41fb-5486-459d-9f99-48f46a4f3286	Edgar	Rodriguez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
573	36d9b72a-400c-4b24-8897-ae8e8187ca3b	Victor	Rodriguez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
574	823b53a2-15fd-4d93-af2c-6200084433bf	Natalie	Rojas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
549	b6e929f0-ad43-491b-9d9c-bd1a3c25df4e	Diana	Jacquez	\N	15053158871	\N	dianajaquez12@gmail.com	2020-11-12	\N	\N	\N	\N	\N	2	\N	\N	\N
576	7dd3ed09-0308-46c4-bd53-297c74a5c94a	Edgar	Sandoval	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
578	e66c1dc0-c0f4-428c-8781-df1f7e243027	Isabel	Soto	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
579	c617ce2f-87c7-4527-a3c6-8698eea3471b	Rodolfo	Tena	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
582	9cd6b7e5-289a-468f-b0cb-5db4321e459a	Hector	Uribe	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
585	c58a9331-e607-4a08-a3c0-8682d059b57d	Olivia	Villalobos	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
540	6e27d449-6a94-4ffe-bf52-fa3d9c82c8e3	Cindy	Chavez-Villa	\N	15055446173	2020-12-01	cindyvilla03@gmail.com	2020-12-01	\N	\N	\N	\N	\N	2	\N	\N	2
588	fa8da073-17a1-4317-940e-f1cd6ae00a76	Adrian	Baca	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
589	e175a34e-5abd-426d-b0d6-89ba4a64acb9	Jaylynne	Barraza Sandoval	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
590	8d2ec72f-a488-4223-b694-41f7ff6a5e5f	Christopher	Benavidez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
592	fb9d27ed-e91c-4ad3-bee6-1552b7d311f8	Aylin	Bustillos	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
593	180831b5-6236-461b-b6ff-0a52ae804635	Adrian	Cabral Lopez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
595	3e67d38e-7bf3-42ba-82f6-58b487e9ff1f	Karen	Campa Pacheco	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
596	876461fc-3923-449e-a02f-26d6d0ea6db1	Jacqueline	Campos	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
597	9d7f0316-67b3-4a48-8c67-d605a451f34f	Bertha	Campos Muro	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
583	7300d113-0f5b-4c26-90cb-d4eda0b9b30c	Marco	Valenzuela	\N	15053825687	2020-12-09	Valenzuelamarco43@gmail.com	2020-12-09	\N	\N	\N	\N	\N	2	\N	\N	2
599	6d9d450b-e8df-49d4-a836-19516d674ed9	Yarely	Carrete	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
600	7c5da0e3-6cd9-43c1-8a3d-b4bd17a29656	Eduardo	Casas Marta	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
601	fc0fe537-3d93-462f-bc8c-4c5f912ca9a5	Ivan	Casillas Moreira	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
602	15ba042e-6b39-48c7-a004-f85d3e5dd8ba	Irma	Chavez Morales	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
603	7f8406e6-66d5-4042-ad4c-f8cf1d0a553f	Diana	Contreras Rios	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
605	ac6fbe3f-237b-407b-8399-b30abc07afc7	Joseph	Day	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
529	893817fb-4d3e-408d-b4b3-dfb0ef287d5a	David	Varela	\N	15055503358	2020-07-01	vareladavid@yahoo.com	2020-07-01	\N	\N	\N	\N	\N	2	\N	\N	2
524	254594e8-b9b4-4739-8f79-7d2ae3cef45c	Miguel	Rubio	\N	\N	\N	miguel.rubio27@hotmail.com	2020-07-01	\N	\N	\N	\N	\N	2	\N	\N	\N
531	ec922dfb-aaff-4557-a18b-c69dfc653a35	Daniel	Aguirre	\N	15055075128	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
538	4fd36a22-5bc0-4c81-9fd3-c1ced158177f	Gerardo	Casas	\N	15053121220	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
546	7da39b7d-a02e-4872-867e-a1036192fd8c	German	Gonzalez	\N	15055709518	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
553	105741dc-dcdb-4b08-b025-97e5ae453cf5	Cindy	Maldonado	\N	15053032625	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
571	c93603cb-8426-4ba2-8834-d4bc403c6164	Danay	Quezada	\N	15052340139	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
587	0e70110b-7e38-43c2-84bb-7d15162d7cbc	Enrique	Aleman Pedraza	\N	15054853802	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
523	9c0a8624-7a14-46a7-a66a-43f9bdff86db	Janette	Ronquillo	\N	15054497526	2020-07-13	lachapiz01@gmail.com	2020-07-13	\N	\N	\N	\N	\N	2	\N	\N	2
562	4f9c8959-66d8-4575-84d2-4576485a2c2c	Karina	Miramontes	\N	15057121388	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
575	3c36308c-51f7-43f6-9e7b-a354d54f4eaa	Ana	Romero	\N	15054355169	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
577	70d375fa-20ef-4384-92b1-3105832361cf	Kathia	Sosa	\N	15058044808	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
563	be31ddc4-4c00-40b0-aa65-70cfb75741f0	Kevin	Morales	\N	15057379469	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
586	db3df36a-57a9-42c2-a97f-6fb52b39bd4f	Mariana	Acosta Ortiz	\N	15054806967	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
598	3385bd84-1233-479a-a96c-7036dfda5f8f	Maribel	Cardiel	\N	15054527287	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
547	75103718-c71e-49d7-be46-520d9fc99cd7	Omar	Hernandez	\N	15053143254	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
594	5f1d2733-6833-4359-bf6a-3f5f7721a5f6	Sergio	Calzadillas Mendoza	\N	15057121149	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
606	6195bd5a-8838-40be-ab01-30009ca0242d	David	De La Cruz-Ibarra	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
607	1e4d172d-03ab-41fb-835a-1c25f37f8997	Karen	Delgado Estrada	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
608	c23bc17b-ab9f-4f45-b9f2-c112ce7aa2c3	Daniela	Dueñas-Delgado	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
609	2d9ceaa6-39fb-4a42-92ef-a27546a54f26	Maria	Galindo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
612	3ec81c8e-1e10-443d-8ca6-676898fb3c61	Isaac	Griego	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
613	d9671b81-f067-4284-b744-2eb5dc8596d4	Edward	Gutierrez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
614	1b3f0407-5fd4-4eaa-90bd-9a5d6e05818a	Gerardo	Gutierrez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
615	1da0f320-effb-4850-8d58-4e91bd3eebc4	Matthew	Gutierrez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
616	c61bcba0-2c1a-4f9d-aee4-4962c279b8a6	Oscar	Hernandez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
618	da4fbecf-8443-4f41-8bd0-a6480289e3a6	Ashley	Jean	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
619	92bb7dca-08b1-4f29-9541-5c50b3d3e83a	Daryl	Krawic	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
620	d87fbb64-5feb-4782-815a-1c687a701b99	Jose	Lara Garcia	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
623	923ef9d5-8748-4f34-ac74-a68877a96783	Diego	Majalca	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
624	565aae60-77bf-4668-8dc0-402211a66a0d	Martin	Marquez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
627	a09595eb-fe9f-40e9-b933-1c137c250f1a	Ariana	Muñoz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
629	5bca7b19-4eae-4427-8df4-63c2d43cb3ca	Julissa	Nevarez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
630	37aa04de-1584-4cbb-a290-b8f45220bdf5	Maritza	Olivas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
631	2e164e4c-56d4-4780-8a9d-c775a3916931	Ivonne	Ornelas Perez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
632	18a5d5aa-7c91-4d7d-b47a-56246608b8a8	Gustavo	Ortega Muñoz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
634	1831e716-ede4-4cb4-a065-2337abad4ad7	Edgar	Portillo-Valencia	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
671	fcc517b3-bcf6-444f-ba7c-78bcd077f1dc	Zuly	Fornelli Perez	\N	15055630743	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
636	f62a425e-5fb1-4be3-ae37-39d9a485165b	Isabel	Ramirez Zaragoza	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
637	fed26fe0-529a-41a9-904e-98a5835b4b30	Omar	Rodelas Jurado	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
872	98f902c9-9dee-4705-bc60-0bb3545cf416	Gisselle	Araiza Pulido	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
639	d777460f-b31f-4fc5-9d2c-3db8a257ffa3	Yanira	Romero	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
640	da099293-94bb-4848-b405-623b9b3f6b08	Victor	Rubio Vazquez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
641	68696137-eccc-4791-b949-8d7349256f2e	Nancy	Salazar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
642	66998106-ebdf-4a8f-8329-e1c2e35de697	Danee	Savedra	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
643	6802e7b8-5ea2-4848-9e33-1045ad2c5937	Kimberly	Tirado-Fuentes	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
644	c80bf142-f11f-4e52-afa6-90264192f8d8	Juan	Torres Dominguez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
645	e8735c02-c0e7-44b7-bb5e-46fe841bad07	Angelo	Ulibarri	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
646	61a6f2d8-08de-4cd4-a753-57fec29b0b4f	Ulises	Uribe	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
647	38e82e28-68ab-476b-9602-5a3607410cf8	Yazmin	Valenzuela Jimenez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
648	74e10023-ca59-4edf-8244-4691baca373e	Luis	Vazquez Garcia	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
649	bb64b9d8-fbe3-4280-b846-369fc88ba3b3	Veronika	Villalobos	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
650	08bd6bc3-6c62-44f5-83f5-1f88e945a40e	Carlos	Villarreal	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
651	539ca48e-fbb5-49e5-af2d-0b7840c8a3df	Sidney	Alvarez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
654	4b62b6fa-2f86-42eb-a047-c6e0b1d3c2ab	Fabian	Arreola	\N	15058045923	\N	zfarreola@gmail.com	2020-11-10	\N	\N	\N	\N	\N	2	\N	\N	\N
656	50b8a456-6255-4e95-b865-b9280a8173ea	Giselle	Beltran	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
657	b8a41f02-c52c-40e1-8e4e-d0347f5d3668	Aylin	Bustillos	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
659	04eef4a7-962b-408a-b5f2-2abe6465ad8c	Ramiro	Bustillos Quintana	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
660	d085ae4c-0e2c-4300-8475-f3f864be2415	Eric	Calzadillas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
661	fa73a854-91b8-45f3-b608-38fbaf24ac52	Yahaira	Carreras Cubillas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
662	c5f76f58-ef11-4b97-b407-9d1f9a5ff415	Ivan	Casillas Moreira	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
621	ff153853-bad4-4b2e-99df-b5f51629b819	Patrick	Loya	\N	15054509962	2020-11-11	patrickloya97@gamil.com	2020-11-11	6007 Palm Ave SW	\N	Albuquerque	87121	2020-11-11	2	2	1	2
669	c565b513-de54-43f5-bcc0-882decd7848f	Eleazar	Enriquez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
622	daa8a31d-6a62-412d-b4c0-2063f8779558	Fatima	Loya Dominguez	\N	15059100442	2020-12-01	Floya24@gmail.com	2020-12-01	4312 Riley rd sw	\N	Albuquerque	87121	2020-12-01	2	2	1	2
676	eff16812-b117-4bfb-bbe8-2abb70249846	Isaac	Griego	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
677	c141afc3-30c6-4b49-af81-effbaf483e2e	Karina	Guaderrama	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
679	7b47cb8e-8b95-4dbe-b94d-60161cca4eca	Gustavo	Hernandez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
680	165753cf-4084-418c-b6b0-748fb8f9df7a	Omar	Hernandez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
685	8af16773-8a3f-40d2-b064-240bd4e492ff	Adrian	Marquez Ochoa	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
670	a4754858-2d2e-4f0f-bc3c-9ea60329c1cb	Adrian	Fierro	\N	15055078321	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
625	245f96d8-5344-478c-bd89-a0011bf0f770	Andrew	Martinez	\N	15059002354	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
628	c4d30f8c-60a9-4f70-bf4c-c27c1fbf9e77	Andrea	Najera	\N	15054858558	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
633	197d98fb-0f98-4ead-bd3d-99dd1206d156	Denise	Padilla	\N	15059909845	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
652	a76b5e9c-6df2-465e-85a5-d735d55ee952	Ambar Lizbeth	Angeles	\N	15059189114	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
665	08819f3d-f000-4403-aeeb-3a2d0a3fc06b	Gabrielle	Chavez	\N	15054441005	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
668	77bdcbd9-69eb-44ad-905e-3c079d126e7f	Brenda	Chavez-Villa	\N	15055446172	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
672	04b24512-ca61-4249-b1ad-8321f1d1af65	Elvira	Galindo Arellano	\N	15057389463	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
674	7f7859b5-9247-4a6d-9a81-62272ea34993	Dianette	Grajeda Carrera	\N	15052089824	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
684	4273fdda-e55a-4168-9c36-f090dc656751	Diego	Majalca Erives	\N	15054407241	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
638	4f08268d-bc9c-4777-b7c4-c20b2a6f442d	Jasmain	Rodriguez	\N	15053893336	2020-08-04	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
673	bfc1c65f-367a-423f-a43f-a533cb2f1d03	Julian	Garcia-Iturralde	\N	15056154226	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
663	ae3913bb-5eab-4415-a810-64bc22273777	Lizbeth	Castro Meraz	\N	15055889573	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
655	43b0ced4-0268-4a1a-bc2e-d2ece8f95d66	Luis	Arreola	\N	15054806283	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
635	2cc9fe7f-d211-4f25-88ac-149713847ba7	Luis	Pulido-Falcon	\N	15055062867	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
658	62e74174-49a4-4a7d-9385-68c1c143e852	Manuel	Bustillos	\N	15053890398	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
683	d4e7fc22-a887-4675-aca7-305b9d9c1f81	Marco	Lerma Vargas	\N	15052345482	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
666	0278df85-c415-41ef-a9f1-feb330c385c6	Mariah	Chavez	\N	15054153290	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
675	aaa02467-e32f-4254-9792-854762520ea7	Sergio	Granados	\N	15053770402	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
681	acfddbc3-4a4b-455b-8771-09450e453ee9	Sidumi	Hernandez Chavez	\N	15054927698	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
686	feb7864d-6a86-4bbd-b8db-9219c3d718f4	Aileen	Martinez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
687	0171ebc0-2d45-42e8-b21a-57ce188fceaa	Ivett	Martinez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
697	131704d0-9e86-4005-b46e-0ea93b68b4c8	Xavier	Nevarez Rodriguez	\N	15052088781	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
718	ed02ff56-e8df-40cb-a1e3-5ab706e802f1	Yolanda	Vargas	\N	15057159696	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
873	2d2492ee-1888-496c-9106-387e96262519	Mariana	Arana Palacios	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
694	6adadc14-2fc3-4bf8-a55f-6eca6f2254b2	Alondra	Navarrete	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
696	7f298fa6-3fa6-4e58-bb88-f30219e3e953	Noe	Nevarez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
690	7ca1ea4d-4db0-427f-88b4-fbbba0ea78f0	Diva	Miramontes	\N	15052342781	2020-12-02	miramontes.diva1@gmail.con	2020-12-03	2921 Blake Rd SW	\N	Albuquerque	87105	2020-12-03	2	2	1	2
701	5215f0d7-2927-4051-91fd-b9e18547a95b	Yessica	Quinones-Arceo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
702	07438dde-c360-4655-b746-f8aa6a77127e	Margarita	Quintana	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
703	37d4d77e-b1e0-40d0-99f7-90ce8e87f748	Vannesa	Ramirez Montano	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
705	44a252b8-59b0-4edc-8de8-0cb54fb3a133	Dianna	Rodriguez Soto	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
706	a8ba263c-d673-46b7-9424-055cb3e1ef62	Guillermo	Saenz Quintana	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
750	58619654-a8f0-4860-ab37-ebcae85b58a8	Noheli	Guardado Zamarripa	\N	15055451054	2020-12-09	Jaquelineguardado52@gmail.com	2020-12-09	\N	\N	\N	\N	\N	2	\N	\N	2
709	8ce92667-7652-4a76-87d0-fc0906415e63	Manuel	Soria	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
712	4d5d66fa-b446-4b0a-b577-4a9a0300ed20	Roberto	Tirado-Fuentes	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
723	b99c50f9-701c-4244-94fb-591f6ebb26b3	Jessica	Acosta Ortiz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
725	5054b90b-5272-4a45-b179-3d8e36a7e650	Rosalia	Alvidrez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
727	42dc199c-1193-4da2-9ec0-2b8ce9e7748a	Gabriella	Astorga	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
728	878ab2ea-88fd-4376-99a6-07fee8d0e6f5	Jordan	Benavidez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
729	b8043a7d-ad26-4255-8523-ee9e2cdb54d8	Katie	Bergevin	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
731	92a76f5c-1484-43d9-87ca-c4c1835de33a	Abigail	Cabrales Morales	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
732	27bec7e5-f86f-4aac-a628-e89fa125505e	Jose	Cabrera Duran	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
733	c6cfc65f-7c2d-4c13-80ab-76d080a46f9d	Patricia	Campos Muro	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
734	d0a06f49-a60c-4bf8-a667-b142574d8566	Ivan	Cano Rubio	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
735	513b7834-85cb-48f3-9bc2-59af6f37cc42	Emily	Cardenas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
736	469e4fa9-7cf6-4925-99ca-6de8ade575fd	Carlos	Carrillo Gonzalez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
737	095a96e4-8a99-48f9-bd29-d5db044c22c1	Jose	Carrillo Gonzalez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
738	952cccd3-e540-4c37-830e-5cdd0fc277c6	Roque	Castillo Portillo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
739	65e9366c-7207-4bd9-8452-959fa2566e51	Eric	Chavez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
740	6177f2d7-b9cb-4bdf-89ac-34d3b9306da3	Jacob	Day	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
742	bbb785ba-4153-434a-aeca-846c039ced0a	Jocelyn	Delgado Holguin	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
744	5183c44c-6e16-4907-9858-ee659623016f	Oscar	Dominguez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
745	e30c47f8-c62a-410a-bdb1-05373c72c8ac	Gladiz	Dominguez Nevarez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
746	7a58da56-0302-41cc-a4b1-9b86c4fb4604	Jayline	Gallegos	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
747	26048704-2447-4590-b0a9-c99df73e6fa0	Juan	Garcia Trevizo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
748	67680f08-5f61-456d-8476-d881a3f97e2e	Nalleli	Garcia-Pena	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
751	14fc3780-9b11-4051-bac4-5646837b3353	April	Guerrero	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
752	b83e106f-fe19-446e-931f-78cc15f37d64	Alexis	Hernandez Hernandez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
756	2a190d68-594d-4695-8a81-66d6bb533e3f	Bri'Anna	Lovato	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
757	dc783eff-d8d2-449a-9b76-8e0bff5bf421	Reina	Magallanes	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
758	3d457584-e23f-4644-bb55-0dd8eb483ef5	Jenifer	Maldonado Almanza	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
759	3b62d1de-db25-45c8-a5e6-26f8ed6ba4cd	Alan	Manrriquez Bustillos	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
760	9d3a173b-5e6b-4623-bc80-f89c369910d7	Alicia	Marquez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
761	f7b459f8-1ffe-4179-8b0d-eb62fc5394f5	Ana	Marquez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
762	5ac361ce-192a-4b94-a5e1-9406b70a4b09	Jonathan	Marquez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
763	b3c742de-656b-43e5-81b1-54df6ab3aa12	Valeria	Martinez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
764	630b92c3-4318-449c-9886-3eab912ad91d	Joshua	Martinez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
765	66df2b54-f074-4bf6-bcec-e1394c8c7b14	Alberto	Martinez-Ramirez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
692	218f8090-7a1c-4b24-b0e8-dbfea139c5a8	Angelica	Munoz	\N	15057204386	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
699	3831d371-0c1c-4c1c-97ba-ef7aac0609ac	Ana	Palma	\N	15059759762	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
707	e8de6e0a-c32c-484c-9c16-6c98f3ed31a3	Gissel	Sanchez	\N	15053157849	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
716	89c0b511-9e7d-49c4-9318-a7bdc1f6bc2e	Jaqueline	Valencia Cortez	\N	15055157336	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
717	e86cb4bb-815b-48ac-8676-a9fe0a9659a9	Alejandro	Valenzuela	\N	15055735443	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
721	c31ea909-b94c-41ce-a3eb-93a04c981420	Edmundo	Villalobos Aguirre	\N	15053143739	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
724	7a1973f3-e078-4531-a70f-c1796f3c7d52	Edgar	Alvarado Gaytan	\N	15058143565	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
726	e6fcd40e-1897-443d-9348-c9c2b41af21d	Carlos	Arana Palacios	\N	15052703829	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
711	9f289d88-355e-4332-9fd5-e9a7843ac1f6	Carlos	Tena	\N	15055452196	2020-08-04	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
720	d51db8b5-1fb1-4ed2-a2bf-15a59e8213f2	Jessica	Veleta	\N	15052615354	2020-08-04	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
722	e1a9cc96-f5ba-41a2-aedb-ce13425e6482	Jose	Villarreal	\N	15052256738	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
693	5e545cce-0640-4da3-919c-060207ad0ac5	Josmar	Munoz Guillen	\N	15053197370	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
689	c15f489e-bbf7-4111-9c0a-bfdc342d74e3	Lizbeth	Medina Ramos	\N	15054171103	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
719	3a98c34d-8dbe-48b8-ae5d-c6007f02c79d	Lizbeth	Vasquez Lopez	\N	15054106971	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
743	9524e378-1b4c-4dee-bdea-9f985fb2333c	Lynette	Diaz Garcia	\N	15052211900	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
698	0e6d94f2-f9d2-450c-97b6-47878142fcf2	Maika	Padilla	\N	15059085925	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
730	7a47c120-da25-430b-a583-93a64579a26a	Maite	Bojorquez	\N	15055453597	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
688	ef46df91-e241-45d3-acd1-6a320eaf26e7	Manuel	Martinez Gallegos	\N	15055453107	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
753	97605ad5-46ae-4bc9-a7e9-4b2c2a123d1e	Martin	Herrera Estebane	\N	15056201494	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
713	53d8947c-5ee2-456c-a2df-5c2fe2c6ccc0	Maura	Torres Mendoza	\N	15053883147	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
715	9b242da1-301d-4dc8-9794-eadad06f292e	Terrieann	Turrietta	\N	15052491149	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
741	560f5635-b7fd-4bc5-943e-6571836b2fcf	Valeria	Delgado	\N	15054145258	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
766	b54fc688-f481-4f36-a71d-dfa2b5dbd3d0	Erik	Medrano Caraveo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
767	0cfb5165-71bb-4d1f-82ee-731cf0c8e4f9	Sergio	Melero Rocha	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
768	018057ea-362d-4fce-baa2-c7cd75b374d3	Daniel	Mojarro Espinoza	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
770	fd9fc67f-0544-4957-a05c-7a377153fe31	Victoria	Morales Ramirez	\N	15055446617	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
772	361d547f-b3dc-4730-86a6-f4c4e2013ee4	Alonso	Perez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
773	a1d9ff20-8583-4298-a894-6c5404791502	Yomara	Perez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
774	1d99b9eb-0e36-4e69-acad-8966d3faead4	Francisco	Perez Galvan	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
775	d1a16637-5c99-4acf-aa52-03b5433aa613	Samantha	Pinedo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
777	b4bdd549-98fe-46dd-81e1-1b62c2bcd523	Martha	Rico Enriquez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
778	d1f52b9e-c306-418c-9cc7-7dd7c08e7df7	Juan	Rios    	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
779	4437204b-6e34-4185-8284-7316c918c8c7	Hector	Rios Rascon	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
781	fbc712f6-d2ba-49e6-a2b2-2b504e145869	Edwin	Rivera Copas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
782	e85953b1-a2ae-4827-8508-7fa41ec1ae57	Alfredo	Rodriguez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
783	bdff2a32-3865-4b8d-a03a-fd5a801cbb66	Ivan	Rodriguez Holguin	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
785	999e34ac-0c8d-4998-807d-5db51213d8db	Caleb	Ruane	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
787	c60ac1b5-22fc-436f-b5ee-1d12663ce3e5	Destiny	Smith	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
788	cf950bd1-0fae-4516-8c0e-9aca2765de15	Oscar	Solis-Flores	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
789	e1684737-cbf2-4f67-853a-8937de39b807	Joann	Valdez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
790	dc60fd1a-2e3d-44a3-9ed9-ae31e11deaf2	Paola	Varela	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
791	343cd07d-31c4-4a8a-8619-10a860766672	Humberto	Veleta	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
793	db2dc267-a982-4336-8a66-a5953fa23756	Ariana	Villalobos Cruz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
802	a6cf64b5-a840-4dd4-b0a2-e1eb26e5f7f9	Zane	Begay	\N	15058350163	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
795	d3f794c3-97f3-467b-97fe-bf32929ad0e5	Javier	Anaya Lopez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
796	95fde598-64df-4730-97eb-afd44bd99a50	Manuel	Armendariz Castro	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
798	b103740c-8509-4c44-997b-d425d5fdf1a8	Raeann	Armijo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
799	46788787-cfa1-4145-989e-3a36c8b5bb08	Julian	Arreola Merino	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
800	9bdbd5d4-48ca-44c4-929c-05576d1f0d21	Vanessa	Baca	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
803	94b49c29-8dff-4806-9c06-4ef8f74aa618	Joseph	Bejarano Ordonez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
804	89a77fb6-cb4f-400e-8fa0-a9b3760f01a4	Jared	Bolivar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
805	2d205232-ef93-44aa-90d8-bcda04f77e6f	Jose	Cabrera Duran	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
874	058e03ec-6b0b-43bd-b27a-140144125b91	Juan	Barraza	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
807	a7ae6202-5f8b-4638-b7ce-3232115a22f5	Marco	Carreon Rodriguez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
808	dd21d417-7824-4ce5-b514-ba266beb365e	Francisco	Carrillo Gonzalez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
809	2c605803-9c08-417a-83bf-46f3134e8f54	Elizabeth	Cereceres	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
810	41a8e8fc-2fce-400a-96d6-cebf01072d2b	Alex	Chavez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
812	4a3410a3-4a56-4b0b-b72c-9f681348c4e0	Reagan	Chee	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
875	e6e85c5d-9e4f-481f-bdcc-59308725d5e8	Nemecio	Barraza	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
815	f51cd1e0-af36-40fe-a95e-41a9600f304b	Diego	Diaz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
817	4e0a3f14-fe91-4f97-a379-815a73544cf2	Karen	Estrada Reyes	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
819	0b249b62-9f0b-4d77-9ec7-578d26d1d531	Raul	Frescas Calderon	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
820	c00fa3c2-9f2d-43d9-ab75-cc0f7743aeec	Axxel	Fuentes Escarcega	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
821	721310b9-4e14-4904-8778-74b2b64c60c6	Christopher	Galicia Padilla	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
822	6f4f4de9-a0a3-4dfc-93bf-6a57f609b001	Joana	Gamboa Rivas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
823	3a6c6f72-c4a0-4d7a-878c-ffa10ff84983	Fernanda	Gamon Barraza	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
824	4b396b41-2efa-4def-9635-ae3387e24be1	Diana	Garcia Garcia	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
825	57421188-bb9c-4444-84b4-2d4d92be1679	Bryan	Gonzalez-Torres	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
826	feaed3da-1214-4a02-875d-ef7e0e31381b	Mauricio	Gutierrez-Gonzalez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
827	ea247f5b-de6c-4859-ae99-52b07b19cba3	Johnathon	Hernandez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
828	9a613a88-0b50-4ea6-9807-d5f26d5b77ab	Miguel	Herrera Estebane	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
834	78419380-5b43-479a-ab2b-4363f9e3c68a	Gisela	Loya Carrillo	\N	15058767713	2020-11-18	loyagisela@gmail.com	2020-11-18	\N	\N	\N	\N	\N	2	\N	\N	2
832	e9a9ef30-709b-43de-9820-3c0af0000bb8	Kevin	Lopez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
801	c1744ab8-5b14-424f-b6da-df479f651ff5	Cheyenne	Begay	\N	15058182629	\N	cheyennebegay425@gmail.com	2020-12-09	4000 Blake Road SW	48	Albuquerque	87121	2020-12-09	2	2	1	\N
837	6d101cc2-abd5-4805-9f9b-0de763286688	Nisa	Martinez-Rivas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
840	86bcd5c3-5182-4809-828f-9476abc88e19	Joilie	Morales	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
841	dab0cb39-470b-4029-bbbf-efa85d07f00d	Victoria	Nessle	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
842	810cee63-2bd2-457d-8ad1-c40d4fcb3cdf	Pablo	Nevarez Escarcega	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
843	404ec610-4238-4eab-80bf-dc90fc6ed8b1	Cindy	Ordonez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
845	23350d9f-bd2f-4201-acb5-c79a68c39d75	Trinity	Ortiz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
794	3c6fc3ee-2101-425a-8a26-4f9f0b8e8e1e	Luis	Aguero	\N	15058043338	2020-06-30	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
771	e6877212-7827-46bb-9225-03e78fa1b43d	Daniel	Najera-Carrasco	\N	15053404306	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
780	3ba33fd2-5ca5-4c15-b61f-cb88f85129b4	Alejandro	Rivera	\N	15056392575	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
784	07857647-e6e9-4529-bc53-3f45560286b8	AnnaMarie	Roman	\N	15059854956	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
792	e3e5f953-ff0d-4ac9-9414-2c6c45605e8a	Christian	Villa	\N	15054807201	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
813	e4944e79-e606-49df-b35a-4b7bd866388a	Carlos	De Santiago	\N	15052363361	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
818	965159be-1242-4bc4-b6f2-7da3d3ee9d91	Adriana	Font	\N	15054358890	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
833	2b3e7121-698e-452b-b288-1200bc7ebf30	Alexa	Loya Carrillo	\N	15053406250	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
835	0529741f-f988-4d9c-9fac-00a08198e4ca	Andres	Martinez	\N	15056206261	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
839	663f94ab-30c9-49e8-8916-a76f4e25b18b	Dariana	Miramontes Marquez	\N	15053883839	\N	miramontes.dariana@gmail.com	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
776	bf683f7b-e427-46f2-b645-466af85a3490	Jose	Ramirez	\N	15055890450	2020-08-04	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
844	12d6e623-47b8-49e7-aea1-f344a13e816f	Jorge	Ordonez Moreno	\N	15054146252	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
829	c0e71b5a-731c-4068-bf21-c0dc50f9c542	Karime	Holguin Ruiz	\N	15055079238	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
816	b105a409-02ec-43c8-9a8a-6c34c031ce3f	Litzy	Enriquez Trejo	\N	15053479297	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
838	f903cce4-db32-4134-9f48-88f02d808f25	Pricila	Mendoza Camacho	\N	15056592172	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
806	3efe9455-26d2-4fe2-b58b-5b8debb795f6	Saul	Cano-Rubio	\N	15052059626	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
846	78e1b020-d4b1-41e7-83a5-4cd1ee2e3cf5	Andy	Padilla Morales	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
525	971edcca-44f8-4de4-a223-8473639e387e	Jorge	Salcido	\N	15058394280	2020-07-13	jorge_salcido13@hotmail.com	2020-11-10	\N	\N	\N	\N	\N	2	\N	\N	2
848	f5baf8cc-5d4e-48c0-bb5b-0fe92517c247	Brisa	Perez Nunez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
850	f5ef139f-53f9-4663-bb92-84369eb63744	Andrea	Quintana Grajeda	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
851	75dfd70a-baaf-4c02-bc3b-61fdd7a9b7c8	Jorge	Ramirez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
852	aaf5dd76-6474-429d-86c3-9d57bf61b8d3	Jose	Ramirez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
854	8f4c82c1-ff80-4ca3-9a36-6f7d7696b450	Jesus	Reyes Reyes	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
855	31eec9c5-25c4-4633-903b-5bd7e9b097a2	Daniel	Rodriguez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
857	3503879c-10fb-4972-b6a2-285716b56dd5	Reyna	Romo Zubia	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
511	9393686c-5fdb-463d-9511-bcd248c094f2	Mara	Marquez 	\N	15056104724	2020-07-13	mara.marquez@yahoo.com	2020-11-26	\N	\N	\N	\N	\N	2	\N	\N	2
401	066dbc98-f1c0-4efe-bd2b-d80f1f26b954	Nancy	Cabrera	\N	15059332336	2020-08-19	cabrera_ncy@yahoo.com	2020-12-03	\N	\N	\N	\N	\N	2	\N	\N	2
860	03571680-977b-4007-9d7a-3b6782285c85	Brian	Sosa Martinez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
861	30f5ea0b-48b1-4476-b9c9-00588c898fdd	Debbie	Sotelo Arambulo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
863	830b5604-83dc-4d80-8ec8-4be92a588656	Janys	Tinajero	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
864	ee11daa6-75d0-4022-a3ec-f7bf57da9ba4	Michelle	Trevizo Chavez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
866	a684aa71-e755-4f1f-ab04-08980775e0aa	Daniel	Valenzuela	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
867	13f7463a-49bd-4559-86da-bb3d0431ba56	Brayan	Vazquez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
868	4dff1416-c54b-4b86-9546-503cdd7b577e	Karen	Zubiate Torres	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
862	16cd8f0c-e56b-4019-94d9-7b4eb0a5a587	Cindy	Soto Garcia	\N	15053014254	2020-12-10	Cindysoto854@gmail.com	2020-12-10	\N	\N	\N	\N	\N	2	\N	\N	2
526	cbf65fdb-3f04-4843-9cc1-d796f3b52290	Erica	Sanchez	\N	15053041634	2020-07-01	sanchezscholar505@gmail.com	2020-07-01	\N	\N	\N	\N	\N	2	\N	\N	2
499	23699a82-2886-4b3d-b23f-607ebeadf588	Alexis	Font	\N	15057308054	2020-07-01	font9913@yahoo.com	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
274	55e4baba-6b2a-4afa-85d2-17a6d86762f7	Paola	Castillo	\N	15052180404	2020-06-17	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
527	a785e0ab-2277-4265-9303-cf83746b632f	Juan	Trevizo	\N	15053151426	2020-07-01	trevizo.juan16@gmail.com	2020-07-01	\N	\N	\N	\N	\N	2	\N	\N	2
474	14783ae1-dd12-4fe4-8f5b-82d2525999c1	Cynthia	Padilla	\N	15059086416	2020-06-25	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
442	f362ecee-a5fd-4b6a-8b8c-68c8fc3aceb7	Arturo	Castillo	\N	15054357799	2020-06-25	acastillo@southvalleyacademy.org	2020-06-24	\N	\N	\N	\N	2020-06-13	6	6	\N	2
278	35acdf89-b1a0-4f5a-ba75-6b2658b7f6fb	Brisia	Lerma	\N	15053155930	2020-06-25	brisia_lerma@yahoo.com	2020-06-30	\N	\N	\N	\N	\N	2	\N	\N	2
714	b07de580-5784-4c01-be3a-2817db253703	Abigail	Torres Ramirez	\N	15056392644	2020-06-30	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
678	b6b1919c-8454-4399-bcb2-8e769362169d	Abril	Gurrola Garcia	\N	15054339052	2020-06-30	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
814	bdbb8f3e-77c2-4b74-a4c6-0fcc2cb44bfe	Adrian	Delgado Cota	\N	15055072502	2020-06-30	delgadocota0215@gmail.com	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
491	6ae70868-1002-4b22-8bed-0d80d73c5ba2	Diana	Cabrera	\N	15055507968	2020-07-01	diana.hernandez81495@yahoo.com	2020-07-01	\N	\N	\N	\N	\N	2	\N	\N	2
695	2e72f61d-dc91-4678-87ff-b6c92f73d15e	Jorge	Navarrete Gaytan	\N	15055737290	2020-08-04	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
836	f14d3d86-389d-4c37-bd45-f459cd176583	Aailinn	Martinez Reyes	\N	15055828105	2020-07-01	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6
496	f71729f3-756b-4dd8-a72e-51bd0aa375bc	German	Cruz	\N	\N	\N	germane1896@yahoo.com	2020-07-01	\N	\N	\N	\N	\N	2	\N	\N	\N
493	3900c311-ef9d-40fc-91fb-b525cd00096b	Karen	Chaparro	\N	15053040575	2020-07-01	karenchaparro91@yahoo.com	2020-07-01	\N	\N	\N	\N	\N	2	\N	\N	2
192	9343c708-4cd1-4b61-83aa-d79de5949326	Conan	Sanchez	\N	15055064860	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
375	e80b4cfe-c9f3-4c41-ac0e-647d2b158d8e	Cecilia	Frescas	\N	16465381149	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
530	a18edcde-9fa1-46fd-a065-c99dfa6d5c9f	Aracely 	Acosta	\N	15057176777	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
710	8dc4a6d8-f887-4c89-8f60-5b32685a840a	Elier	Tarango Dominguez	\N	15056590989	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
849	9909b8a4-1b68-4fd4-bb68-aa199770f2f0	Carlos	Perez Rios	\N	15053227291	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
853	b6781959-6555-4b7f-aeb0-254409876fb5	Domonique	Ramirez-Mendez	\N	15059996693	\N	bgramir@yahoo.com	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
856	719dc3b3-ca22-4fcf-aefd-6590ddcd1cd5	Adriana	Rodriguez Alvarez	\N	15058034753	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
865	6a492d23-7e88-4819-8286-bc88b6f506d4	Adessa	Ulibarri	\N	15054891144	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
528	30b2a7ba-c63f-4b10-9c09-e48977136695	Luis	Valencia	\N	15055157403	2020-07-13	francisco57317@yahoo.com	2020-07-13	\N	\N	\N	\N	\N	2	\N	\N	2
502	28b067f6-b252-4b6b-b4af-149e15a704d8	Leslie	Godina	\N	15053318237	2020-07-13	mizz_leslie@gmail.com	2020-07-13	\N	\N	\N	\N	\N	2	\N	\N	2
505	50dc5827-89f5-4c11-ab36-4d60621ca477	Francisca	Hernandez	\N	15058779186	2020-07-13	frannyisme23@yahoo.com	2020-07-13	\N	\N	\N	\N	\N	2	\N	\N	2
515	de947cbd-6289-469d-87ec-1faa994ab6b5	Esmeralda	Moreno	\N	15054445100	2020-07-30	esmeraldamoreno@gmail.com	2020-07-30	\N	\N	\N	\N	\N	2	\N	\N	2
501	8c13d454-c050-4e41-b099-7d0bfe6132ce	David	Garcia	\N	15053635429	2020-07-30	davidgarcia773@yahoo.com	2020-07-30	\N	\N	\N	\N	\N	2	\N	\N	2
522	f31bf672-cb3b-4989-9bd0-1b088f8fb694	Alma	Rocha	\N	15059071958	2020-07-30	alma61896@gmail.com	2020-07-30	\N	\N	\N	\N	\N	2	\N	\N	2
519	898c6cce-b716-47ad-aa09-4f36e98942fe	Melinda	Ortiz	\N	15054497665	2020-07-30	meliortizxb@yahoo.com	2020-07-30	\N	\N	\N	\N	\N	2	\N	\N	2
335	dc30f588-6b98-4a0b-b4f2-75295e75c690	Joel	Gutierrez	\N	15053590585	2020-08-04	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
437	b1a38d41-85a8-4a74-a29d-0a50677af31d	Gennesis	Vargas	\N	15059489497	2020-08-04	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
467	8bd1bf31-0d0d-42bf-a1a0-d9a74906745e	Janelle	Michel	\N	15056009124	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
858	70c8230f-7ed9-42ec-8f23-f2543186ed14	Jose	Ronquillo-Tena	\N	15054338615	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
653	6a3fef43-1ad0-4578-bba8-2ff6fc05c8a5	Joselyn	Arambulo Sotelo	\N	15052672166	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
664	a7564bbb-1324-40b8-8405-900124d72d1b	Keily	Castro Miranda	\N	15059178695	2020-08-06	mirandacastro1998@gmail.com	2020-08-06	\N	\N	\N	\N	\N	2	\N	\N	2
691	4f229e6b-d6a8-4890-8647-f408b27a6ecc	Luis	Morales Castillo	\N	15058353045	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
831	950af642-90eb-4bfa-8646-64e4ad838f3f	Maria	Lara Garcia	\N	15054507744	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
591	ef873cec-be70-4065-9f1e-aa848e9e9627	Marilyn	Bojorquez	\N	15052619912	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
708	63ccaea0-a1dd-4be2-af90-f253afe9a905	Mariana	Santiestevan Nunez	\N	15055823752	2020-08-06	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
859	6a40ea58-1b93-45af-a296-097126c455f3	Marina	Santiesteban Nunez	\N	15055823752	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
322	4f7e4fa8-5d13-4382-8e82-975e305cfcc3	Stephanie	Cabrera	\N	15057204263	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
360	5a668d30-3bbd-4807-accb-4c7e49f2a483	Karina	Zubiate Torres	\N	15054929809	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
704	7104048c-91d5-4fce-ab6d-fc51240f7f99	Valeria	Ramirez Rubio	\N	15056392365	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
667	ac165138-269a-43a4-a020-2f19c204de29	Victor	Chavez	\N	15052039845	2020-08-19	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
876	f02a862c-e11c-413d-8bfe-aacbc98bbe51	Roman	Nicacio Bojorquez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
877	466aa8ee-bb32-44a7-82c6-3a0f70234f8a	Emma	Bolivar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
878	cb35045d-a2ef-487a-85cb-85d8877c09f7	Nairi	Bustillos	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
879	3b83e579-efd7-47fc-8dd5-b2fa0fda94a6	Karen	Bustillos Rodriguez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
880	f7d0e4cf-85ba-4f21-ae43-8bf51c851baf	Xitlalic	Campos-Reyes	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
881	6cd9a918-d465-494e-96cb-45eb3f620518	Angelica	Carmona	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
882	5b7aa4c4-8479-401a-8941-dd02d44cf34d	Yudith	Castillo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
883	cbba5050-b795-4460-bc88-5a7a71af7122	Diana	Cereceres	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
884	3af1605a-e72f-46ec-8237-ba825e97d390	Adriana	Chavez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
885	9a713fcf-d6bc-4236-a9e5-0176e1bc8b84	Alyssa	Chavez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
886	e46c94d0-31e3-4bac-9975-0b233e79ad27	Millian	Cordova	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
887	6a37e488-9c8b-49fc-ab73-675156bdfb8a	Karen	Cota Gonzalez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
888	174d1c3f-c434-4d24-a04b-fb575f4f7607	Viviann	Cruz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
889	563f527f-1725-4641-9387-cd62409767ae	Reynaldo	Dominguez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
890	a9d91aad-9be6-473e-99f5-b78a3a5fd6d7	Gisselle	Enriquez Flores	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
891	0f4e2c53-5660-43a1-9012-1da0ed36d908	Jennifer	Enriquez Garcia	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
892	e7d00f63-a22f-47f1-be88-0f0c4aae0856	Erick	Enriquez Reyes	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
893	06e6e439-56d7-4f05-900f-f7d505a3d206	Kymberli	Enriquez Vargas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
894	e8a49fe7-2d6c-4313-9881-4333014b3a3e	Javier	Estrada	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
895	866faeb8-79df-4cb2-9a7e-4d5041baa3df	Meylan	Garcia Bustillos	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
896	ba855ed3-b36d-4ca4-9219-b8da58d9e655	Alexis	Garibay	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
897	ff08c59d-d2be-4b0b-8974-1f2879c734b3	Nathaniel	Guardian	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
898	85a68a00-e9a4-4e23-bd68-09d3c1ac5dd1	Ashley	Hernandez-Chavez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
899	621fa92e-aa0e-4645-accf-1e07cc599be2	Zoie	Killgore	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
900	def6b3c6-101f-4cf9-bb3f-60c8a749857a	Sandra	Lerma Vargas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
901	6c16cfe7-a5b8-4b77-8180-9c3f7e2e915c	Joshua	Lingnau	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
902	bd454250-f6bb-4dde-8b1b-9b3600702f90	Jennifer	Lopez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
904	3fc6fa4b-416a-47a3-bfef-ffb35e9bc914	Jacob	Lucero	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
905	fa865a78-ac04-4514-807b-8d9c4175cb00	Itzel	Luna-Perez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
906	44a33504-1e56-46dc-994d-7ed3e818bb93	Santiago	Mendez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
907	df083d7b-fe96-43c0-aee5-f5f1cfb34789	Margarita	Marquez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
908	a36a2e41-6d24-409a-8ecb-3af718730ca0	Marvin	Marquez Moran	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
909	92d48e26-fb98-4114-9c0e-c7229bbf9549	Kassandra	Martinez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
910	69ad6bb3-3d35-4bdc-8daf-f401bca9ea89	Viviana	Martinez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
911	5fb287a5-e5c3-4fe6-a600-8dc3656c2df9	Luis	Martinez Lopez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
912	56a8bbc3-d919-4b42-b0aa-b69fa752f4de	Jaime	Martinez-Gibson	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
913	301eb2ef-0671-4ce5-a1bf-c36bbc33d2e3	Manuel	Mata	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
915	03bdc82a-050e-4cf5-b47a-34e0f7950dda	Kylee	Mestas-Chavez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
916	41da7f66-e94a-4106-bd13-fe8e7b5292fc	Yurityz	Munoz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
917	c572543a-b9b6-43c4-baa7-b13f01ce0a61	Destinie	Murphy	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
918	eed6fd98-a6d4-466f-bca5-e3055e59d197	Bryan	Ordonez Moreno	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
919	534be272-8ed6-4f6a-a7f2-cad5031a154f	Omar	Ornelas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
920	f88c446b-e200-4650-a7da-ded95d2f7cce	Natalie	Ortiz	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
921	2c8efba6-2294-4ae6-acb4-3af1fe54f274	Kevin	Perez Rios	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
922	078c2380-6383-43f6-845a-6c3520b70ae9	Mario	Pinedo	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
923	75cd25a5-30d1-4127-afa8-29aac357000d	Adreana	Porras	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
924	c07cef2d-ce2f-41ea-9dd0-0606737d0bab	Juan	Portillo Segovia	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
925	a08d162d-b499-4f21-8c15-889f974276c4	Alejandro	Ramirez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
926	e548ef2e-4655-4f73-b77f-1211c53e01bb	Jesus	Reyes Reyes	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
927	77ac988b-e2fc-45fc-bb44-7131c9b845b0	Jessica	Reyes-Rodelas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
928	5d143d43-b933-4d54-abe2-ee4d3c4b5fea	Joaly	Rios	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
929	7d3d3d0c-71ae-410b-a916-d84b52524247	Brayan	Rios Rascon	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
930	dabc0293-7daa-472f-aafc-621c650846ff	Daniela	Rivas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
931	85ee8121-580a-4e29-87d1-c9951c7b403a	Abigail	Rodriguez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
932	6e230669-87ac-4ae7-8a16-7d6576dedcbe	Joshua	Rodriguez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
934	53eeef95-3887-43ed-a3f2-363b76f4ba8d	Josiah	Romero	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
935	044a450e-9979-4c30-bb44-21f92f9ba295	Rocio	Sanchez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
936	f86e3bd3-2ba9-462e-97d9-96126dfed16d	Levi	Sena	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
937	b7e4c82f-1dd4-4ea9-ad38-4c7c9075bc27	Alfredo	Silva Cota	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
938	3f7c0ef3-a048-47d9-a5f3-b7923c8d65fa	Krystal	Soria	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
939	d3f57138-0710-4678-9847-d4dbbad50f4f	Ivonne	Torres Ramirez	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
940	aaa18112-5264-4fbb-b75d-50ce389762b4	Julian	Vargas	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
941	867c9fec-6581-4b4c-af03-916e799925e9	Brenda	Vazquez Escobar	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
942	48b6eefd-fd05-47b6-87fc-0faeed3b56f4	Andy	Viramontes Flores	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
568	23166182-60b0-4174-8c22-cc7681718e6b	Savannah	Ortega	\N	15053585699	2020-09-02	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
397	e92e7b8c-8614-406a-b60b-2301fdf8947c	Omar	Torres	\N	15054531824	2020-10-26	Omartorres121@gmail.com	2020-10-27	\N	\N	\N	\N	\N	2	\N	\N	2
271	59a2bcc5-007a-40ba-a89e-a85364d11184	Alejandra	Bueno	\N	15053152948	\N	abueno89@gmail.com	2020-10-30	\N	\N	\N	\N	\N	2	\N	\N	\N
498	97a67b56-ba44-43a6-8ebe-aa85516a3f4f	Jasmin	Dominguez	\N	18084926519	2020-11-05	dominguez_jmin14@yahoo.com	2020-11-05	4446 Alea Loop	\N	Wahiawa	96786	2020-11-05	2	2	13	2
811	e821bbad-c0b1-464b-be7c-f22dcf2db9ac	Nallely	Chavez	\N	15055736796	2020-11-05	nallelychavez20@gmail.com	2020-11-05	4505 Valley Gardens Cir SW	\N	Albuquerque	87105	2020-11-05	2	2	1	2
341	964fea77-7720-45c2-88c0-cc13d1ff72cf	Elizabeth	Madrid	\N	15055734391	2020-11-05	lizmadrid50@gmail.com	2020-11-05	1151 Tapia blvd sw	\N	Albuquerque	87105	2020-11-05	2	2	1	2
550	e7df0030-eb2f-408a-91d1-4cc5cdf1eb2a	Aylin	Jaquez	\N	15059446365	2020-11-05	jaquez.aylin14@gmail.com	2020-11-05	2460 Camelia Ct SW	\N	Albuquerque	87105	2020-11-05	2	2	1	2
914	454c1191-abd5-465a-82bc-03feaaf2e3ce	Lesley	Melendez	\N	15055045338	2020-11-18	lesleymelendez81@gmail.com	2020-11-18	2221 Wilbur Rd SW	\N	Albuquerque	87105	2020-11-18	2	2	1	2
933	2329edea-a578-4c66-8590-28c800be4976	Norma	Rodriguez Fierro	\N	15054890207	2020-12-01	Norma.nr909@gmail.com	2020-12-01	\N	\N	\N	\N	\N	2	\N	\N	2
754	6ff5573c-03e5-4928-80f4-fe3bf2302399	Tino	Holguin	\N	15059073440	2020-11-05	tinodanielholguin@gmail.com	2020-11-05	6401 2nd St. SW	\N	Albuquerque	87105	2020-11-05	2	2	1	2
543	18cc81e9-a777-4d05-8571-1cf6becaafb3	Miguel	Espinoza	\N	15057108089	2020-11-05	maespinoza1117@gmail.com	2020-11-05	4141 Barcelona Rd SW	A2	Albuquerque	87121	2020-11-05	2	2	1	2
682	72c468ba-ed1d-44fe-b96e-177bf637bd3f	Gerardo	Lerma Vargas	\N	15053879305	2020-11-05	lermage371@gmail.com	2020-11-05	9301 Volcano Rd NW	101	Albuquerque	87121	2020-11-05	2	2	1	2
786	6e932275-450f-4581-aaaa-0d160554180a	Jazmin	Sanchez Soto	\N	15058182947	2020-11-10	sjazmin49@gmail.com	2020-11-10	11128 Starling Rd Sw	\N	Albuquerque	87121	2020-11-10	2	2	1	2
233	feda3f9b-862e-48ad-ab1b-8aca8d28614d	Lilia	Valenzuela-Muela	\N	15059005509	2020-11-10	liliavalenzuela.muela@gmail.com	2020-11-10	6001 Moon St. NE	\N	Albuquerque	87111	2020-11-10	2	2	1	2
508	cbfbf985-0fa2-4576-a773-a3f71e0eb927	Shania	Krawic	\N	15055066070	2020-11-10	shaniakrawic@gmail.com	2020-11-10	5218 Powers Way Rd SW	\N	Albuquerque	87121	2020-11-10	2	2	1	2
314	9aa839fb-524f-43d3-adf6-d794e6ad2573	Meredith	Schuh	\N	15058002264	2020-11-10	schuhhomes@gmail.com	2020-11-10	20553 State Highway 148	\N	Pickering	64476	2020-11-10	2	2	27	2
421	4ae5554c-2bb6-4627-b577-b291e867b0e2	Noraima	Ornelas	\N	15053071105	2020-11-10	noraima.ornelas@gmail.com	2020-11-10	220 General Somerville NE	\N	Albuquerque	87123	2020-11-10	2	2	1	2
847	ad48c73d-19d5-4a32-9f55-50113b87a0c9	Naomi	Perez	\N	15054330662	2020-11-10	naomi.perez@du.edu	2020-11-10	4141 Barcelona Rd SW	D1	Albuquerque	87121	2020-11-10	2	2	1	2
700	28ba8f96-406a-4a90-a305-6c5e03f1a924	Jaylene	Pereyra Hernandez	\N	15053853924	2020-08-04	jaylenepereyra@gmail.com	2020-11-10	2324 don andres rd sw	\N	Albuquerque	87105	2020-11-10	2	2	1	2
617	3b2b5cac-3c8e-43ad-9a51-7e414ad0c63f	Angelica	Hernández	\N	15052212638	\N	abbyhernandez415@gmail.com	2020-11-10	3610 Sylvia Place SW	\N	Albuquerque	87105	2020-11-10	2	2	1	\N
513	2ee71140-d6a2-4e0f-8e3f-c860d2fca202	Stephanie	Michel	\N	15052270710	2020-11-11	steph.michelle135@gmail.com	2020-11-11	\N	\N	\N	\N	\N	2	\N	\N	2
903	b5fc0e8d-9537-42d9-a565-f7bd08bd149d	Luis	Lopez Varela	\N	15056105135	2020-11-11	lfabianlopez2002@gmail.com	2020-11-11	12 Salida del Sol	\N	Los Lunas	87031	2020-11-11	2	2	1	2
581	bff08f61-7656-4844-8be0-778fcc3d7e67	Anthony	Ulibarri	\N	15053401964	2020-11-11	anthonyulibarri@gmail.com	2020-11-11	3313 Kirkview Dr SW	\N	Albuquerque	87121	2020-11-11	2	2	1	2
430	d64809d0-d18a-41d5-9fed-c4681aa0ce6a	Nuvia	Ramirez	\N	15053280280	2020-11-11	niramirez0280@gmail.com	2020-11-11	217 Chama St Ne	2	Albuquerque	87108	2020-11-11	2	2	1	2
213	142ad279-380e-4c12-ad54-2d91b038ae2b	Yadira	Talamantes	\N	15058180481	2020-11-11	yadira_talamantes@yahoo.com	2020-11-11	4301 Blake RD SW	24	Albuquerque	87121	2020-11-11	2	2	1	2
455	93fb8f40-8ee2-4038-bbae-e07ef63be102	Chrislynn	Hernandez	\N	15053286937	2020-11-11	chrislynnhernandez@yahoo.com	2020-11-11	2400 Desertwood Dr SW	\N	Albuquerque	87121	2020-11-11	2	2	1	2
610	9619b47c-dbd4-4cf8-a310-de38fea95377	Ailyn	Godina	\N	15053795745	2020-11-12	ailyngodina@yahoo.com	2020-11-12	1325 Ojo Sarco St SW	\N	Albuquerque	87121	2020-11-12	2	2	1	2
426	4ca4dd3e-c330-4b2b-98af-7c929103b4b8	Anai	Pulido	\N	15054592557	2020-08-06	anaipulido@rocketmail.com	2020-11-12	2101 Rosendo García Sw RD	\N	Albuquerque	87105	2020-11-12	2	2	1	2
490	842e25d0-e2b5-49d3-b68f-0a35d43d598f	Edith	Bustillos	\N	15053191667	2020-07-29	edittt64@gmail.com	2020-11-16	3209 Condershire Dr sw	\N	Albuquerque	87121	2020-11-16	2	2	1	2
477	f765a128-e396-49b6-b183-02af136b441f	Maribel	Rodriguez	\N	15054482266	2020-12-01	maribelrod725@gmail.com	2020-12-01	7401 San Pedro dr NE	78	Albuquerque	87109	2020-12-01	2	2	1	2
769	9c08cbe3-402d-49c2-83e8-754b34907ff1	Maribel	Montes Mendoza	\N	15056048437	2020-08-06	maribelmontez@gmail.com	2020-12-03	4015 Glenn DR SE	\N	Albuquerque	87105	2020-12-03	2	2	1	2
536	9e5c383a-2e0f-43a7-8749-6a823ab10faa	George	Caldera	\N	15055827544	2020-12-03	Georgecaldera25@yahoo.com	2020-12-03	1 central ave nw	\N	Albuquerque	87114	2020-12-03	2	2	1	2
626	b323b388-2b0a-454f-9d0b-4568f6301db7	Melissa	Michel	\N	15055046794	2020-12-03	Melissaabril1998@gmail.com	2020-12-03	\N	\N	\N	\N	\N	2	\N	\N	2
611	c74f93e5-d95e-44e0-9efa-7ea7c897371f	Alondra	Granados-Díaz	\N	15057176028	2020-12-09	Granadosalondra7@gmail.com	2020-12-09	445 S Dobson Rd	2036	Mesa	85202	2020-12-09	2	2	4	2
484	01ba48ff-0f04-44df-8df5-e49f0506be37	Gema	Tarango	\N	15055832685	2020-12-09	gtarango@southvalleyacademy.org	2020-12-09	127 48th st SW	\N	Albuquerque	87105	2020-12-09	2	2	1	2
749	42657e37-5a54-4ef6-8404-29db91299607	Genesis	Gordiano	\N	17142090595	\N	Gordiano.genesis80@gmail.com	2020-12-09	4204 Molino Ct SW	\N	Albuquerque	87121	2020-12-09	2	2	1	\N
755	4a1a8c11-3bc9-47a4-a5e0-1bb00db1929c	Teresa	Lechuga-Kanapilly	\N	15053531202	2020-12-09	Teresalechuga19@gmail.com	2020-12-09	6674 w 86th pl	\N	Los Angeles	90045	2020-12-09	2	2	6	2
355	0c971387-8068-4390-b272-ede80e4bfe10	Manuel	Romero	\N	15054154427	2020-11-11	mcromero92@msn.com	2020-11-11	500 Dolores Dr. SW	\N	Albuquerque	87121	2020-12-10	2	2	1	2
258	c79b8f2d-7038-44bc-8fb1-f597db187e92	Andrea	Perez	\N	15053154451	2020-12-10	Dre7099@gmail.com	2020-12-10	7926 110th ave SE	\N	Newcastle	98056	2020-12-10	2	2	48	2
830	0421a843-0b82-4442-be21-948d495ffafb	Jaqueline	Ibarra	\N	15057206959	2020-12-10	Jibarranm@gmail.com	2020-12-10	5740 Donna Alberta Dr SW	\N	Albuquerque	87121	2020-12-10	2	2	1	2
544	741e9ba4-f196-48b5-8af6-efc180af9ade	Luis	Estrada-Reyes	\N	15055146146	2020-12-10	estradaluis431@gmail.com	2020-12-10	4404 Camino Bello SW	\N	Albuquerque	87121	2020-12-10	2	2	1	2
\.


--
-- Name: alumni_tracker_app_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_person_id_seq', 942, true);


--
-- Data for Name: alumni_tracker_app_preferencedomain; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_preferencedomain (id, domain) FROM stdin;
1	alumni_tracker
\.


--
-- Name: alumni_tracker_app_preferencedomain_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_preferencedomain_id_seq', 1, true);


--
-- Data for Name: alumni_tracker_app_preferencedomainpreference; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_preferencedomainpreference (id, preference, domain_id) FROM stdin;
1	overdue_checkins	1
\.


--
-- Name: alumni_tracker_app_preferencedomainpreference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_preferencedomainpreference_id_seq', 1, true);


--
-- Data for Name: alumni_tracker_app_student; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_student (person_id, stars_id) FROM stdin;
\.


--
-- Data for Name: alumni_tracker_app_studentcredithistory; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_studentcredithistory (id, credit_opportunity, credit_earned, grad_contrib, accru_adjust, orc_epoch_id, orc_gac_course_id, orc_gmac_course_id, orc_membership_id, student_id) FROM stdin;
\.


--
-- Name: alumni_tracker_app_studentcredithistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_studentcredithistory_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_studentenrollmenttrack; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_studentenrollmenttrack (membership_role_id, stint_serial, attempted_credits, earned_credits, grad_contrib_credits, total_attempted_credits, total_earned_credits, total_grad_contrib_credits, track_attempted_credits, track_earned_credits, track_grad_contrib_credits, entry_age_years, entry_age_months, lapsed_prior_weeks, start_advent_week_offset, stop_advent_week_offset, enrollment_week_length, timeline_total_weeks, track_timeline_total_weeks, timeline_prescribed_credit_volume, ontrack_proportion, projected_grad_fsy_id, start_fsy_id, stop_fsy_id) FROM stdin;
\.


--
-- Data for Name: alumni_tracker_app_studentidentifiers; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_studentidentifiers (id, identifier, capacity_id, student_id) FROM stdin;
\.


--
-- Name: alumni_tracker_app_studentidentifiers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_studentidentifiers_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_studenttransitivedemos; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_studenttransitivedemos (id, current_as_of, gender, date_of_birth, hispanic, african_american, asian, caucasian, native_american, pacific_islander, ell_current, has_children, special_ed_current, raw_mailing_street, raw_mailing_city, raw_mailing_zip, geocode_lat, geocode_long, home_language_id, raw_mailing_state_id, student_id) FROM stdin;
\.


--
-- Name: alumni_tracker_app_studenttransitivedemos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_studenttransitivedemos_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_userprofile; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_userprofile (id, auth_token_relay, person_id, user_id) FROM stdin;
1	t	1	2
2	f	2	3
3	f	187	4
4	f	189	6
5	f	188	5
6	f	190	7
\.


--
-- Name: alumni_tracker_app_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_userprofile_id_seq', 6, true);


--
-- Data for Name: alumni_tracker_app_userprofilepreference; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_userprofilepreference (id, value, preference_id, user_profile_id) FROM stdin;
1	{"checkin_delta": 0, "severence_delta_max": 10, "severence_delta_min": 3}	1	6
\.


--
-- Name: alumni_tracker_app_userprofilepreference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_userprofilepreference_id_seq', 1, true);


--
-- Data for Name: alumni_tracker_app_usstate; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.alumni_tracker_app_usstate (id, name, abbreviation) FROM stdin;
1	New Mexico	NM
2	Alabama	AL
3	Alaska	AK
4	Arizona	AZ
5	Arkansas	AR
6	California	CA
7	Colorado	CO
8	Connecticut	CT
9	Delaware	DE
10	District of Columbia	DC
11	Florida	FL
12	Georgia	GA
13	Hawaii	HI
14	Idaho	ID
15	Illinois	IL
16	Indiana	IN
17	Iowa	IA
18	Kansas	KS
19	Kentucky	KY
20	Louisiana	LA
21	Maine	ME
22	Maryland	MD
23	Massachusetts	MA
24	Michigan	MI
25	Minnesota	MN
26	Mississippi	MS
27	Missouri	MO
28	Montana	MT
29	Nebraska	NE
30	Nevada	NV
31	New Hampshire	NH
32	New Jersey	NJ
33	New York	NY
34	North Carolina	NC
35	North Dakota	ND
36	Ohio	OH
37	Oklahoma	OK
38	Oregon	OR
39	Pennsylvania	PA
40	Rhode Island	RI
41	South Carolina	SC
42	South Dakota	SD
43	Tennessee	TN
44	Texas	TX
45	Utah	UT
46	Vermont	VT
47	Virginia	VA
48	Washington	WA
49	West Virginia	WV
50	Wisconsin	WI
51	Wyoming	WY
\.


--
-- Name: alumni_tracker_app_usstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.alumni_tracker_app_usstate_id_seq', 51, true);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add Token	7	add_token
26	Can change Token	7	change_token
27	Can delete Token	7	delete_token
28	Can view Token	7	view_token
29	Can add alumnus	8	add_alumnus
30	Can change alumnus	8	change_alumnus
31	Can delete alumnus	8	delete_alumnus
32	Can view alumnus	8	view_alumnus
33	Can add alumnus checkin	9	add_alumnuscheckin
34	Can change alumnus checkin	9	change_alumnuscheckin
35	Can delete alumnus checkin	9	delete_alumnuscheckin
36	Can view alumnus checkin	9	view_alumnuscheckin
37	Can add alumnus checkin employment	10	add_alumnuscheckinemployment
38	Can change alumnus checkin employment	10	change_alumnuscheckinemployment
39	Can delete alumnus checkin employment	10	delete_alumnuscheckinemployment
40	Can view alumnus checkin employment	10	view_alumnuscheckinemployment
41	Can add alumnus checkin employment employment benefit	11	add_alumnuscheckinemploymentemploymentbenefit
42	Can change alumnus checkin employment employment benefit	11	change_alumnuscheckinemploymentemploymentbenefit
43	Can delete alumnus checkin employment employment benefit	11	delete_alumnuscheckinemploymentemploymentbenefit
44	Can view alumnus checkin employment employment benefit	11	view_alumnuscheckinemploymentemploymentbenefit
45	Can add alumnus checkin employment tag	12	add_alumnuscheckinemploymenttag
46	Can change alumnus checkin employment tag	12	change_alumnuscheckinemploymenttag
47	Can delete alumnus checkin employment tag	12	delete_alumnuscheckinemploymenttag
48	Can view alumnus checkin employment tag	12	view_alumnuscheckinemploymenttag
49	Can add alumnus checkin enrollment	13	add_alumnuscheckinenrollment
50	Can change alumnus checkin enrollment	13	change_alumnuscheckinenrollment
51	Can delete alumnus checkin enrollment	13	delete_alumnuscheckinenrollment
52	Can view alumnus checkin enrollment	13	view_alumnuscheckinenrollment
53	Can add alumnus checkin enrollment tag	14	add_alumnuscheckinenrollmenttag
54	Can change alumnus checkin enrollment tag	14	change_alumnuscheckinenrollmenttag
55	Can delete alumnus checkin enrollment tag	14	delete_alumnuscheckinenrollmenttag
56	Can view alumnus checkin enrollment tag	14	view_alumnuscheckinenrollmenttag
57	Can add alumnus credential	15	add_alumnuscredential
58	Can change alumnus credential	15	change_alumnuscredential
59	Can delete alumnus credential	15	delete_alumnuscredential
60	Can view alumnus credential	15	view_alumnuscredential
61	Can add checkin bookmark	16	add_checkinbookmark
62	Can change checkin bookmark	16	change_checkinbookmark
63	Can delete checkin bookmark	16	delete_checkinbookmark
64	Can view checkin bookmark	16	view_checkinbookmark
65	Can add checkin employment tag	17	add_checkinemploymenttag
66	Can change checkin employment tag	17	change_checkinemploymenttag
67	Can delete checkin employment tag	17	delete_checkinemploymenttag
68	Can view checkin employment tag	17	view_checkinemploymenttag
69	Can add checkin employment taxonomy	18	add_checkinemploymenttaxonomy
70	Can change checkin employment taxonomy	18	change_checkinemploymenttaxonomy
71	Can delete checkin employment taxonomy	18	delete_checkinemploymenttaxonomy
72	Can view checkin employment taxonomy	18	view_checkinemploymenttaxonomy
73	Can add checkin enrollment tag	19	add_checkinenrollmenttag
74	Can change checkin enrollment tag	19	change_checkinenrollmenttag
75	Can delete checkin enrollment tag	19	delete_checkinenrollmenttag
76	Can view checkin enrollment tag	19	view_checkinenrollmenttag
77	Can add checkin enrollment taxonomy	20	add_checkinenrollmenttaxonomy
78	Can change checkin enrollment taxonomy	20	change_checkinenrollmenttaxonomy
79	Can delete checkin enrollment taxonomy	20	delete_checkinenrollmenttaxonomy
80	Can view checkin enrollment taxonomy	20	view_checkinenrollmenttaxonomy
81	Can add credential	21	add_credential
82	Can change credential	21	change_credential
83	Can delete credential	21	delete_credential
84	Can view credential	21	view_credential
85	Can add data dashboard	22	add_datadashboard
86	Can change data dashboard	22	change_datadashboard
87	Can delete data dashboard	22	delete_datadashboard
88	Can view data dashboard	22	view_datadashboard
89	Can add data dashboard data sheet	23	add_datadashboarddatasheet
90	Can change data dashboard data sheet	23	change_datadashboarddatasheet
91	Can delete data dashboard data sheet	23	delete_datadashboarddatasheet
92	Can view data dashboard data sheet	23	view_datadashboarddatasheet
93	Can add data sheet	24	add_datasheet
94	Can change data sheet	24	change_datasheet
95	Can delete data sheet	24	delete_datasheet
96	Can view data sheet	24	view_datasheet
97	Can add fiscal school year	25	add_fiscalschoolyear
98	Can change fiscal school year	25	change_fiscalschoolyear
99	Can delete fiscal school year	25	delete_fiscalschoolyear
100	Can view fiscal school year	25	view_fiscalschoolyear
101	Can add language	26	add_language
102	Can change language	26	change_language
103	Can delete language	26	delete_language
104	Can view language	26	view_language
105	Can add meta academic course content area	27	add_metaacademiccoursecontentarea
106	Can change meta academic course content area	27	change_metaacademiccoursecontentarea
107	Can delete meta academic course content area	27	delete_metaacademiccoursecontentarea
108	Can view meta academic course content area	27	view_metaacademiccoursecontentarea
109	Can add meta credential type	28	add_metacredentialtype
110	Can change meta credential type	28	change_metacredentialtype
111	Can delete meta credential type	28	delete_metacredentialtype
112	Can view meta credential type	28	view_metacredentialtype
113	Can add meta employment benefit	29	add_metaemploymentbenefit
114	Can change meta employment benefit	29	change_metaemploymentbenefit
115	Can delete meta employment benefit	29	delete_metaemploymentbenefit
116	Can view meta employment benefit	29	view_metaemploymentbenefit
117	Can add meta employment extent	30	add_metaemploymentextent
118	Can change meta employment extent	30	change_metaemploymentextent
119	Can delete meta employment extent	30	delete_metaemploymentextent
120	Can view meta employment extent	30	view_metaemploymentextent
121	Can add meta employment position	31	add_metaemploymentposition
122	Can change meta employment position	31	change_metaemploymentposition
123	Can delete meta employment position	31	delete_metaemploymentposition
124	Can view meta employment position	31	view_metaemploymentposition
125	Can add meta enrollment extent	32	add_metaenrollmentextent
126	Can change meta enrollment extent	32	change_metaenrollmentextent
127	Can delete meta enrollment extent	32	delete_metaenrollmentextent
128	Can view meta enrollment extent	32	view_metaenrollmentextent
129	Can add (meta) Organization Group Type	33	add_metaorganizationgrouptype
130	Can change (meta) Organization Group Type	33	change_metaorganizationgrouptype
131	Can delete (meta) Organization Group Type	33	delete_metaorganizationgrouptype
132	Can view (meta) Organization Group Type	33	view_metaorganizationgrouptype
133	Can add (meta) Org. Membership -> Entrance	34	add_metaorganizationmembershiporganizationrolecapacitymemberentrance
134	Can change (meta) Org. Membership -> Entrance	34	change_metaorganizationmembershiporganizationrolecapacitymemberentrance
135	Can delete (meta) Org. Membership -> Entrance	34	delete_metaorganizationmembershiporganizationrolecapacitymemberentrance
136	Can view (meta) Org. Membership -> Entrance	34	view_metaorganizationmembershiporganizationrolecapacitymemberentrance
137	Can add (meta) Org. Role Capacity Membership Role	35	add_metaorganizationmembershiporganizationrolecapacitymemberrole
138	Can change (meta) Org. Role Capacity Membership Role	35	change_metaorganizationmembershiporganizationrolecapacitymemberrole
139	Can delete (meta) Org. Role Capacity Membership Role	35	delete_metaorganizationmembershiporganizationrolecapacitymemberrole
140	Can view (meta) Org. Role Capacity Membership Role	35	view_metaorganizationmembershiporganizationrolecapacitymemberrole
141	Can add meta organization membership organization role capacity member role perspective	36	add_metaorganizationmembershiporganizationrolecapacitymemberroleperspective
142	Can change meta organization membership organization role capacity member role perspective	36	change_metaorganizationmembershiporganizationrolecapacitymemberroleperspective
143	Can delete meta organization membership organization role capacity member role perspective	36	delete_metaorganizationmembershiporganizationrolecapacitymemberroleperspective
144	Can view meta organization membership organization role capacity member role perspective	36	view_metaorganizationmembershiporganizationrolecapacitymemberroleperspective
145	Can add meta organization membership organization role capacity member severence	37	add_metaorganizationmembershiporganizationrolecapacitymemberseverence
146	Can change meta organization membership organization role capacity member severence	37	change_metaorganizationmembershiporganizationrolecapacitymemberseverence
147	Can delete meta organization membership organization role capacity member severence	37	delete_metaorganizationmembershiporganizationrolecapacitymemberseverence
148	Can view meta organization membership organization role capacity member severence	37	view_metaorganizationmembershiporganizationrolecapacitymemberseverence
149	Can add (meta) Org. Role	38	add_metaorganizationrole
150	Can change (meta) Org. Role	38	change_metaorganizationrole
151	Can delete (meta) Org. Role	38	delete_metaorganizationrole
152	Can view (meta) Org. Role	38	view_metaorganizationrole
153	Can add (meta) Org. Role Capacity	39	add_metaorganizationrolecapacity
154	Can change (meta) Org. Role Capacity	39	change_metaorganizationrolecapacity
155	Can delete (meta) Org. Role Capacity	39	delete_metaorganizationrolecapacity
156	Can view (meta) Org. Role Capacity	39	view_metaorganizationrolecapacity
157	Can add meta organization role capacity epoch	40	add_metaorganizationrolecapacityepoch
158	Can change meta organization role capacity epoch	40	change_metaorganizationrolecapacityepoch
159	Can delete meta organization role capacity epoch	40	delete_metaorganizationrolecapacityepoch
160	Can view meta organization role capacity epoch	40	view_metaorganizationrolecapacityepoch
161	Can add meta organization role capacity relationship perspective	41	add_metaorganizationrolecapacityrelationshipperspective
162	Can change meta organization role capacity relationship perspective	41	change_metaorganizationrolecapacityrelationshipperspective
163	Can delete meta organization role capacity relationship perspective	41	delete_metaorganizationrolecapacityrelationshipperspective
164	Can view meta organization role capacity relationship perspective	41	view_metaorganizationrolecapacityrelationshipperspective
165	Can add Organization	42	add_organization
166	Can change Organization	42	change_organization
167	Can delete Organization	42	delete_organization
168	Can view Organization	42	view_organization
169	Can add Organization Role	43	add_organizationrole
170	Can change Organization Role	43	change_organizationrole
171	Can delete Organization Role	43	delete_organizationrole
172	Can view Organization Role	43	view_organizationrole
173	Can add Organization Role Capacity	44	add_organizationrolecapacity
174	Can change Organization Role Capacity	44	change_organizationrolecapacity
175	Can delete Organization Role Capacity	44	delete_organizationrolecapacity
176	Can view Organization Role Capacity	44	view_organizationrolecapacity
177	Can add organization role capacity epoch	45	add_organizationrolecapacityepoch
178	Can change organization role capacity epoch	45	change_organizationrolecapacityepoch
179	Can delete organization role capacity epoch	45	delete_organizationrolecapacityepoch
180	Can view organization role capacity epoch	45	view_organizationrolecapacityepoch
181	Can add organization role capacity fsy day	46	add_organizationrolecapacityfsyday
182	Can change organization role capacity fsy day	46	change_organizationrolecapacityfsyday
183	Can delete organization role capacity fsy day	46	delete_organizationrolecapacityfsyday
184	Can view organization role capacity fsy day	46	view_organizationrolecapacityfsyday
185	Can add Organization Role Capacity Group	47	add_organizationrolecapacitygroup
186	Can change Organization Role Capacity Group	47	change_organizationrolecapacitygroup
187	Can delete Organization Role Capacity Group	47	delete_organizationrolecapacitygroup
188	Can view Organization Role Capacity Group	47	view_organizationrolecapacitygroup
189	Can add organization role capacity group academic course	48	add_organizationrolecapacitygroupacademiccourse
190	Can change organization role capacity group academic course	48	change_organizationrolecapacitygroupacademiccourse
191	Can delete organization role capacity group academic course	48	delete_organizationrolecapacitygroupacademiccourse
192	Can view organization role capacity group academic course	48	view_organizationrolecapacitygroupacademiccourse
193	Can add organization role capacity group membership	49	add_organizationrolecapacitygroupmembership
194	Can change organization role capacity group membership	49	change_organizationrolecapacitygroupmembership
195	Can delete organization role capacity group membership	49	delete_organizationrolecapacitygroupmembership
196	Can view organization role capacity group membership	49	view_organizationrolecapacitygroupmembership
197	Can add organization role capacity group membership academic course	50	add_organizationrolecapacitygroupmembershipacademiccourse
198	Can change organization role capacity group membership academic course	50	change_organizationrolecapacitygroupmembershipacademiccourse
199	Can delete organization role capacity group membership academic course	50	delete_organizationrolecapacitygroupmembershipacademiccourse
200	Can view organization role capacity group membership academic course	50	view_organizationrolecapacitygroupmembershipacademiccourse
201	Can add organization role capacity membership	51	add_organizationrolecapacitymembership
202	Can change organization role capacity membership	51	change_organizationrolecapacitymembership
203	Can delete organization role capacity membership	51	delete_organizationrolecapacitymembership
204	Can view organization role capacity membership	51	view_organizationrolecapacitymembership
205	Can add organization role capacity membership role	52	add_organizationrolecapacitymembershiprole
206	Can change organization role capacity membership role	52	change_organizationrolecapacitymembershiprole
207	Can delete organization role capacity membership role	52	delete_organizationrolecapacitymembershiprole
208	Can view organization role capacity membership role	52	view_organizationrolecapacitymembershiprole
209	Can add Org. Role Cap. Member Roles Enum	53	add_organizationrolecapacitymembershiproleenum
210	Can change Org. Role Cap. Member Roles Enum	53	change_organizationrolecapacitymembershiproleenum
211	Can delete Org. Role Cap. Member Roles Enum	53	delete_organizationrolecapacitymembershiproleenum
212	Can view Org. Role Cap. Member Roles Enum	53	view_organizationrolecapacitymembershiproleenum
213	Can add organization role capacity taxonomy	54	add_organizationrolecapacitytaxonomy
214	Can change organization role capacity taxonomy	54	change_organizationrolecapacitytaxonomy
215	Can delete organization role capacity taxonomy	54	delete_organizationrolecapacitytaxonomy
216	Can view organization role capacity taxonomy	54	view_organizationrolecapacitytaxonomy
217	Can add organization role capacity taxonomy term	55	add_organizationrolecapacitytaxonomyterm
218	Can change organization role capacity taxonomy term	55	change_organizationrolecapacitytaxonomyterm
219	Can delete organization role capacity taxonomy term	55	delete_organizationrolecapacitytaxonomyterm
220	Can view organization role capacity taxonomy term	55	view_organizationrolecapacitytaxonomyterm
221	Can add performance measure	56	add_performancemeasure
222	Can change performance measure	56	change_performancemeasure
223	Can delete performance measure	56	delete_performancemeasure
224	Can view performance measure	56	view_performancemeasure
225	Can add person	57	add_person
226	Can change person	57	change_person
227	Can delete person	57	delete_person
228	Can view person	57	view_person
229	Can add preference domain	58	add_preferencedomain
230	Can change preference domain	58	change_preferencedomain
231	Can delete preference domain	58	delete_preferencedomain
232	Can view preference domain	58	view_preferencedomain
233	Can add preference domain preference	59	add_preferencedomainpreference
234	Can change preference domain preference	59	change_preferencedomainpreference
235	Can delete preference domain preference	59	delete_preferencedomainpreference
236	Can view preference domain preference	59	view_preferencedomainpreference
237	Can add user profile	60	add_userprofile
238	Can change user profile	60	change_userprofile
239	Can delete user profile	60	delete_userprofile
240	Can view user profile	60	view_userprofile
241	Can add us state	61	add_usstate
242	Can change us state	61	change_usstate
243	Can delete us state	61	delete_usstate
244	Can view us state	61	view_usstate
245	Can add alumnus latest checkin severences	62	add_alumnuslatestcheckinseverences
246	Can change alumnus latest checkin severences	62	change_alumnuslatestcheckinseverences
247	Can delete alumnus latest checkin severences	62	delete_alumnuslatestcheckinseverences
248	Can view alumnus latest checkin severences	62	view_alumnuslatestcheckinseverences
249	Can add student	63	add_student
250	Can change student	63	change_student
251	Can delete student	63	delete_student
252	Can view student	63	view_student
253	Can add student enrollment track	64	add_studentenrollmenttrack
254	Can change student enrollment track	64	change_studentenrollmenttrack
255	Can delete student enrollment track	64	delete_studentenrollmenttrack
256	Can view student enrollment track	64	view_studentenrollmenttrack
257	Can add user profile preference	65	add_userprofilepreference
258	Can change user profile preference	65	change_userprofilepreference
259	Can delete user profile preference	65	delete_userprofilepreference
260	Can view user profile preference	65	view_userprofilepreference
261	Can add student transitive demos	66	add_studenttransitivedemos
262	Can change student transitive demos	66	change_studenttransitivedemos
263	Can delete student transitive demos	66	delete_studenttransitivedemos
264	Can view student transitive demos	66	view_studenttransitivedemos
265	Can add student identifiers	67	add_studentidentifiers
266	Can change student identifiers	67	change_studentidentifiers
267	Can delete student identifiers	67	delete_studentidentifiers
268	Can view student identifiers	67	view_studentidentifiers
269	Can add student credit history	68	add_studentcredithistory
270	Can change student credit history	68	change_studentcredithistory
271	Can delete student credit history	68	delete_studentcredithistory
272	Can view student credit history	68	view_studentcredithistory
273	Can add performance measure dashboard	69	add_performancemeasuredashboard
274	Can change performance measure dashboard	69	change_performancemeasuredashboard
275	Can delete performance measure dashboard	69	delete_performancemeasuredashboard
276	Can view performance measure dashboard	69	view_performancemeasuredashboard
277	Can add organization role capacity user	70	add_organizationrolecapacityuser
278	Can change organization role capacity user	70	change_organizationrolecapacityuser
279	Can delete organization role capacity user	70	delete_organizationrolecapacityuser
280	Can view organization role capacity user	70	view_organizationrolecapacityuser
281	Can add organization role capacity term	71	add_organizationrolecapacityterm
282	Can change organization role capacity term	71	change_organizationrolecapacityterm
283	Can delete organization role capacity term	71	delete_organizationrolecapacityterm
284	Can view organization role capacity term	71	view_organizationrolecapacityterm
285	Can add organization role capacity relationship	72	add_organizationrolecapacityrelationship
286	Can change organization role capacity relationship	72	change_organizationrolecapacityrelationship
287	Can delete organization role capacity relationship	72	delete_organizationrolecapacityrelationship
288	Can view organization role capacity relationship	72	view_organizationrolecapacityrelationship
289	Can add organization role capacity membership role enum dashboard	73	add_organizationrolecapacitymembershiproleenumdashboard
290	Can change organization role capacity membership role enum dashboard	73	change_organizationrolecapacitymembershiproleenumdashboard
291	Can delete organization role capacity membership role enum dashboard	73	delete_organizationrolecapacitymembershiproleenumdashboard
292	Can view organization role capacity membership role enum dashboard	73	view_organizationrolecapacitymembershiproleenumdashboard
293	Can add organization role capacity membership relationship	74	add_organizationrolecapacitymembershiprelationship
294	Can change organization role capacity membership relationship	74	change_organizationrolecapacitymembershiprelationship
295	Can delete organization role capacity membership relationship	74	delete_organizationrolecapacitymembershiprelationship
296	Can view organization role capacity membership relationship	74	view_organizationrolecapacitymembershiprelationship
297	Can add organization role capacity group membership academic course content areas	75	add_organizationrolecapacitygroupmembershipacademiccoursecontentareas
298	Can change organization role capacity group membership academic course content areas	75	change_organizationrolecapacitygroupmembershipacademiccoursecontentareas
299	Can delete organization role capacity group membership academic course content areas	75	delete_organizationrolecapacitygroupmembershipacademiccoursecontentareas
300	Can view organization role capacity group membership academic course content areas	75	view_organizationrolecapacitygroupmembershipacademiccoursecontentareas
301	Can add organization role capacity group academic course content areas	76	add_organizationrolecapacitygroupacademiccoursecontentareas
302	Can change organization role capacity group academic course content areas	76	change_organizationrolecapacitygroupacademiccoursecontentareas
303	Can delete organization role capacity group academic course content areas	76	delete_organizationrolecapacitygroupacademiccoursecontentareas
304	Can view organization role capacity group academic course content areas	76	view_organizationrolecapacitygroupacademiccoursecontentareas
305	Can add organization role capacity checkin enrollment taxonomy	77	add_organizationrolecapacitycheckinenrollmenttaxonomy
306	Can change organization role capacity checkin enrollment taxonomy	77	change_organizationrolecapacitycheckinenrollmenttaxonomy
307	Can delete organization role capacity checkin enrollment taxonomy	77	delete_organizationrolecapacitycheckinenrollmenttaxonomy
308	Can view organization role capacity checkin enrollment taxonomy	77	view_organizationrolecapacitycheckinenrollmenttaxonomy
309	Can add organization role capacity checkin employment taxonomy	78	add_organizationrolecapacitycheckinemploymenttaxonomy
310	Can change organization role capacity checkin employment taxonomy	78	change_organizationrolecapacitycheckinemploymenttaxonomy
311	Can delete organization role capacity checkin employment taxonomy	78	delete_organizationrolecapacitycheckinemploymenttaxonomy
312	Can view organization role capacity checkin employment taxonomy	78	view_organizationrolecapacitycheckinemploymenttaxonomy
313	Can add meta organization role capacity alumnus severence	79	add_metaorganizationrolecapacityalumnusseverence
314	Can change meta organization role capacity alumnus severence	79	change_metaorganizationrolecapacityalumnusseverence
315	Can delete meta organization role capacity alumnus severence	79	delete_metaorganizationrolecapacityalumnusseverence
316	Can view meta organization role capacity alumnus severence	79	view_metaorganizationrolecapacityalumnusseverence
317	Can add checkin common good taxonomy	80	add_checkincommongoodtaxonomy
318	Can change checkin common good taxonomy	80	change_checkincommongoodtaxonomy
319	Can delete checkin common good taxonomy	80	delete_checkincommongoodtaxonomy
320	Can view checkin common good taxonomy	80	view_checkincommongoodtaxonomy
321	Can add checkin common good tag	81	add_checkincommongoodtag
322	Can change checkin common good tag	81	change_checkincommongoodtag
323	Can delete checkin common good tag	81	delete_checkincommongoodtag
324	Can view checkin common good tag	81	view_checkincommongoodtag
325	Can add alumnus checkin common good tag	82	add_alumnuscheckincommongoodtag
326	Can change alumnus checkin common good tag	82	change_alumnuscheckincommongoodtag
327	Can delete alumnus checkin common good tag	82	delete_alumnuscheckincommongoodtag
328	Can view alumnus checkin common good tag	82	view_alumnuscheckincommongoodtag
329	Can add organization role capacity checkin common good taxonomy	83	add_organizationrolecapacitycheckincommongoodtaxonomy
330	Can change organization role capacity checkin common good taxonomy	83	change_organizationrolecapacitycheckincommongoodtaxonomy
331	Can delete organization role capacity checkin common good taxonomy	83	delete_organizationrolecapacitycheckincommongoodtaxonomy
332	Can view organization role capacity checkin common good taxonomy	83	view_organizationrolecapacitycheckincommongoodtaxonomy
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 332, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$150000$iuf9nwDyL1iA$xhSKrY3plgAonGpcaSTjBR8vLcn7ZXl/n1I2r2UILIo=	\N	f	alumni_tracker_keyrelay				f	t	2020-05-21 03:31:22+00
4	pbkdf2_sha256$150000$vdRkLmHgVl5S$HoNJ3IwPif1CRfiIfjfF0pcbWwzR06fSnY7dphLAEGA=	\N	f	kmelendez@southvalleyacademy.org	Karla	Melendez	kmelendez@southvalleyacademy.org	f	t	2020-05-22 02:46:21+00
5	pbkdf2_sha256$150000$JzPvvZxqanFd$XS6InsnWpuVCyN2/WTyMpBUq5DU2Jb8pxLnAcmAyMvc=	\N	f	jradoslovich@southvalleyacademy.org	Julie	Radoslovich	jradoslovich@southvalleyacademy.org	f	t	2020-05-22 02:52:51+00
6	pbkdf2_sha256$150000$Pfd4JMCCDqoC$vcVoYgkvwlUu4VLFKayxsz4K4OTOR+blLMT2osWoE30=	\N	f	sroberts@southvalleyacademy.org	Shelly	Roberts	sroberts@southvalleyacademy.org	f	t	2020-05-22 02:54:04+00
3	pbkdf2_sha256$150000$X9bv18awg52u$BrCoPoB/MPbELihXDQdG0d0T8Wao7RBWA6zSJH4b9YE=	\N	f	acastillo@southvalleyacademy.org	Arturo	Castillo	acastillo@southvalleyacademy.org	f	t	2020-05-21 03:51:06+00
7	pbkdf2_sha256$150000$45pNrTAaRHPr$BzHmHaaE35jD9HsARFDIKUFcbStZLDTUFEVY6MSeFbU=	\N	f	FFEAdmin	FFEAdmin	FFE	data@futurefocusededucation.org	f	t	2020-05-22 03:12:52+00
1	pbkdf2_sha256$150000$gHQVOWJ5yvBx$CDRkjeY6r2GmJvxHGKgk5HvByujRGQJGVDWGnWN3W1Y=	2020-05-25 17:18:23.244806+00	t	alumni_tracker			alumni@southvalleyacademy.org	t	t	2020-05-21 02:30:31+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 7, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
8e645a818b8dbc6ed8458b2ba4a03cc3a3f0b01f	2020-05-21 03:41:27.583795+00	2
a4885e5d529711f1655612a47b46bfa8f915af4e	2020-05-21 03:52:09.814923+00	3
4317e953a135c64118d9108f66f81b072c08da99	2020-05-22 02:58:08.048944+00	5
ec96fb1b472b57637b4c8a4752364393389243fd	2020-05-22 02:58:17.355588+00	4
015b594aede05779289864400435941806d41c31	2020-05-22 02:58:24.349737+00	6
cf3c8c119735d91f16662847f31c991d05eac4ef	2020-05-22 03:14:57.134578+00	7
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-05-21 02:59:07.309444+00	1	alumni_tracker	2	[{"changed": {"fields": ["email"]}}]	4	1
2	2020-05-21 03:17:48.384267+00	1	Credential Awarder	1	[{"added": {}}]	39	1
3	2020-05-21 03:17:56.298382+00	2	Employer	1	[{"added": {}}]	39	1
4	2020-05-21 03:18:09.269476+00	3	Internship Facilitator	1	[{"added": {}}]	39	1
5	2020-05-21 03:18:16.899519+00	4	Internship Provider	1	[{"added": {}}]	39	1
6	2020-05-21 03:18:25.759425+00	5	Education Policy Institute	1	[{"added": {}}]	39	1
7	2020-05-21 03:18:32.62527+00	6	High School	1	[{"added": {}}]	39	1
8	2020-05-21 03:19:30.424488+00	1	Internship Program Staff <- Internship Facilitator	1	[{"added": {}}]	35	1
9	2020-05-21 03:19:40.061056+00	2	Student <- High School	1	[{"added": {}}]	35	1
10	2020-05-21 03:19:50.467514+00	3	Dual Enrollment Coach <- High School	1	[{"added": {}}]	35	1
11	2020-05-21 03:19:57.723444+00	4	Registrar <- High School	1	[{"added": {}}]	35	1
12	2020-05-21 03:20:13.08862+00	5	Socail Worker <- High School	1	[{"added": {}}]	35	1
13	2020-05-21 03:20:20.267875+00	6	Staff <- High School	1	[{"added": {}}]	35	1
14	2020-05-21 03:20:30.270626+00	7	School Leader <- High School	1	[{"added": {}}]	35	1
15	2020-05-21 03:20:39.615565+00	8	Executive Director <- High School	1	[{"added": {}}]	35	1
16	2020-05-21 03:23:21.773636+00	1	Employer	1	[{"added": {}}]	38	1
17	2020-05-21 03:23:29.953173+00	2	Internship Provider	1	[{"added": {}}]	38	1
18	2020-05-21 03:23:44.897923+00	3	State Education Department	1	[{"added": {}}]	38	1
19	2020-05-21 03:23:52.326917+00	4	Non Profit	1	[{"added": {}}]	38	1
20	2020-05-21 03:23:57.372647+00	5	School	1	[{"added": {}}]	38	1
21	2020-05-21 03:24:18.10447+00	1	Public School District	1	[{"added": {}}]	33	1
22	2020-05-21 03:24:26.905438+00	2	State Public Schools	1	[{"added": {}}]	33	1
23	2020-05-21 03:24:32.995317+00	3	School Network	1	[{"added": {}}]	33	1
24	2020-05-21 03:27:49.415983+00	1	South Valley Academy	1	[{"added": {}}]	42	1
25	2020-05-21 03:28:44.712961+00	1	South Valley Academy > School	1	[{"added": {}}]	43	1
26	2020-05-21 03:30:02.141918+00	1	South Valley Academy > School > High School	1	[{"added": {}}]	44	1
27	2020-05-21 03:31:22.532769+00	2	alumni_tracker_keyrelay	1	[{"added": {}}]	4	1
28	2020-05-21 03:35:16.143098+00	2	alumni_tracker_keyrelay	2	[]	4	1
29	2020-05-21 03:41:05.910565+00	1	UserProfile object (1)	1	[{"added": {}}]	60	1
30	2020-05-21 03:41:27.586639+00	8e645a818b8dbc6ed8458b2ba4a03cc3a3f0b01f	8e645a818b8dbc6ed8458b2ba4a03cc3a3f0b01f	1	[{"added": {}}]	7	1
31	2020-05-21 03:51:07.109745+00	3	data@futurefocusededucation.org	1	[{"added": {}}]	4	1
32	2020-05-21 03:51:28.297011+00	3	data@futurefocusededucation.org	2	[{"changed": {"fields": ["first_name", "last_name", "email"]}}]	4	1
33	2020-05-21 03:51:56.656293+00	2	UserProfile object (2)	1	[{"added": {}}]	60	1
34	2020-05-21 03:52:09.815584+00	a4885e5d529711f1655612a47b46bfa8f915af4e	a4885e5d529711f1655612a47b46bfa8f915af4e	1	[{"added": {}}]	7	1
35	2020-05-21 04:05:23.576362+00	1	alumni_tracker	2	[{"changed": {"fields": ["email"]}}]	4	1
36	2020-05-21 04:12:32.425481+00	1	Arturo Castillo - > South Valley Academy > School > High School	1	[{"added": {}}]	51	1
37	2020-05-21 04:15:32.541841+00	1	South Valley Academy > School > High School > School Leader <- High School	1	[{"added": {}}]	53	1
38	2020-05-21 04:16:26.204389+00	1	Arturo Castillo - > South Valley Academy > School > High School -> School Leader <- High School	1	[{"added": {}}]	52	1
39	2020-05-22 02:46:21.705653+00	4	kmelendez@southvalleyacademy.org	1	[{"added": {}}]	4	1
40	2020-05-22 02:46:50.794296+00	3	UserProfile object (3)	1	[{"added": {}}]	60	1
41	2020-05-22 02:48:45.053148+00	2	Karla Melendez - > South Valley Academy > School > High School	1	[{"added": {}}]	51	1
42	2020-05-22 02:50:24.757581+00	2	Karla Melendez - > South Valley Academy > School > High School -> School Leader <- High School	1	[{"added": {}}]	52	1
43	2020-05-22 02:52:18.874183+00	4	kmelendez@southvalleyacademy.org	2	[{"changed": {"fields": ["first_name", "last_name", "email"]}}]	4	1
44	2020-05-22 02:52:51.18035+00	5	jradoslovich@southvalleyacademy.org	1	[{"added": {}}]	4	1
45	2020-05-22 02:53:23.212166+00	5	jradoslovich@southvalleyacademy.org	2	[{"changed": {"fields": ["first_name", "last_name", "email"]}}]	4	1
46	2020-05-22 02:54:05.005189+00	6	sroberts@southvalleyacademy.org	1	[{"added": {}}]	4	1
47	2020-05-22 02:54:17.65048+00	6	sroberts@southvalleyacademy.org	2	[{"changed": {"fields": ["first_name", "last_name", "email"]}}]	4	1
48	2020-05-22 02:55:02.633074+00	4	UserProfile object (4)	1	[{"added": {}}]	60	1
49	2020-05-22 02:55:19.698654+00	5	UserProfile object (5)	1	[{"added": {}}]	60	1
50	2020-05-22 02:55:51.120175+00	3	Shelly Roberts - > South Valley Academy > School > High School	1	[{"added": {}}]	51	1
51	2020-05-22 02:56:08.947799+00	4	Julie Radoslovich - > South Valley Academy > School > High School	1	[{"added": {}}]	51	1
52	2020-05-22 02:56:44.952522+00	3	Shelly Roberts - > South Valley Academy > School > High School -> School Leader <- High School	1	[{"added": {}}]	52	1
53	2020-05-22 02:56:54.317777+00	4	Julie Radoslovich - > South Valley Academy > School > High School -> School Leader <- High School	1	[{"added": {}}]	52	1
54	2020-05-22 02:58:08.049599+00	4317e953a135c64118d9108f66f81b072c08da99	4317e953a135c64118d9108f66f81b072c08da99	1	[{"added": {}}]	7	1
55	2020-05-22 02:58:17.356367+00	ec96fb1b472b57637b4c8a4752364393389243fd	ec96fb1b472b57637b4c8a4752364393389243fd	1	[{"added": {}}]	7	1
56	2020-05-22 02:58:24.350398+00	015b594aede05779289864400435941806d41c31	015b594aede05779289864400435941806d41c31	1	[{"added": {}}]	7	1
57	2020-05-22 03:12:04.132594+00	3	acastillo@southvalleyacademy.org	2	[{"changed": {"fields": ["username"]}}]	4	1
58	2020-05-22 03:12:52.20615+00	7	FFEAdmin	1	[{"added": {}}]	4	1
59	2020-05-22 03:13:17.190543+00	7	FFEAdmin	2	[{"changed": {"fields": ["first_name", "last_name", "email"]}}]	4	1
60	2020-05-22 03:14:43.184328+00	6	UserProfile object (6)	1	[{"added": {}}]	60	1
61	2020-05-22 03:14:57.135277+00	cf3c8c119735d91f16662847f31c991d05eac4ef	cf3c8c119735d91f16662847f31c991d05eac4ef	1	[{"added": {}}]	7	1
62	2020-05-22 03:16:11.848018+00	5	FFE Admin - > South Valley Academy > School > High School	1	[{"added": {}}]	51	1
63	2020-05-22 03:16:30.301287+00	5	FFE Admin - > South Valley Academy > School > High School -> School Leader <- High School	1	[{"added": {}}]	52	1
64	2020-05-22 03:25:54.155978+00	2	United States Navy	1	[{"added": {}}]	42	1
65	2020-05-22 03:26:20.334765+00	2	United States Navy > Employer	1	[{"added": {}}]	43	1
66	2020-05-22 03:26:32.659678+00	2	United States Navy > Employer > Employer	1	[{"added": {}}]	44	1
67	2020-05-25 20:41:06.239855+00	3	Central New Mexico Community College	1	[{"added": {}}]	42	1
68	2020-05-25 20:41:24.003772+00	3	Central New Mexico Community College > School	1	[{"added": {}}]	43	1
69	2020-05-25 20:41:36.81555+00	3	Central New Mexico Community College > School > Credential Awarder	1	[{"added": {}}]	44	1
70	2020-05-25 20:48:24.13062+00	3	Central New Mexico Community College	3		42	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 70, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	authtoken	token
8	alumni_tracker_app	alumnus
9	alumni_tracker_app	alumnuscheckin
10	alumni_tracker_app	alumnuscheckinemployment
11	alumni_tracker_app	alumnuscheckinemploymentemploymentbenefit
12	alumni_tracker_app	alumnuscheckinemploymenttag
13	alumni_tracker_app	alumnuscheckinenrollment
14	alumni_tracker_app	alumnuscheckinenrollmenttag
15	alumni_tracker_app	alumnuscredential
16	alumni_tracker_app	checkinbookmark
17	alumni_tracker_app	checkinemploymenttag
18	alumni_tracker_app	checkinemploymenttaxonomy
19	alumni_tracker_app	checkinenrollmenttag
20	alumni_tracker_app	checkinenrollmenttaxonomy
21	alumni_tracker_app	credential
22	alumni_tracker_app	datadashboard
23	alumni_tracker_app	datadashboarddatasheet
24	alumni_tracker_app	datasheet
25	alumni_tracker_app	fiscalschoolyear
26	alumni_tracker_app	language
27	alumni_tracker_app	metaacademiccoursecontentarea
28	alumni_tracker_app	metacredentialtype
29	alumni_tracker_app	metaemploymentbenefit
30	alumni_tracker_app	metaemploymentextent
31	alumni_tracker_app	metaemploymentposition
32	alumni_tracker_app	metaenrollmentextent
33	alumni_tracker_app	metaorganizationgrouptype
34	alumni_tracker_app	metaorganizationmembershiporganizationrolecapacitymemberentrance
35	alumni_tracker_app	metaorganizationmembershiporganizationrolecapacitymemberrole
36	alumni_tracker_app	metaorganizationmembershiporganizationrolecapacitymemberroleperspective
37	alumni_tracker_app	metaorganizationmembershiporganizationrolecapacitymemberseverence
38	alumni_tracker_app	metaorganizationrole
39	alumni_tracker_app	metaorganizationrolecapacity
40	alumni_tracker_app	metaorganizationrolecapacityepoch
41	alumni_tracker_app	metaorganizationrolecapacityrelationshipperspective
42	alumni_tracker_app	organization
43	alumni_tracker_app	organizationrole
44	alumni_tracker_app	organizationrolecapacity
45	alumni_tracker_app	organizationrolecapacityepoch
46	alumni_tracker_app	organizationrolecapacityfsyday
47	alumni_tracker_app	organizationrolecapacitygroup
48	alumni_tracker_app	organizationrolecapacitygroupacademiccourse
49	alumni_tracker_app	organizationrolecapacitygroupmembership
50	alumni_tracker_app	organizationrolecapacitygroupmembershipacademiccourse
51	alumni_tracker_app	organizationrolecapacitymembership
52	alumni_tracker_app	organizationrolecapacitymembershiprole
53	alumni_tracker_app	organizationrolecapacitymembershiproleenum
54	alumni_tracker_app	organizationrolecapacitytaxonomy
55	alumni_tracker_app	organizationrolecapacitytaxonomyterm
56	alumni_tracker_app	performancemeasure
57	alumni_tracker_app	person
58	alumni_tracker_app	preferencedomain
59	alumni_tracker_app	preferencedomainpreference
60	alumni_tracker_app	userprofile
61	alumni_tracker_app	usstate
62	alumni_tracker_app	alumnuslatestcheckinseverences
63	alumni_tracker_app	student
64	alumni_tracker_app	studentenrollmenttrack
65	alumni_tracker_app	userprofilepreference
66	alumni_tracker_app	studenttransitivedemos
67	alumni_tracker_app	studentidentifiers
68	alumni_tracker_app	studentcredithistory
69	alumni_tracker_app	performancemeasuredashboard
70	alumni_tracker_app	organizationrolecapacityuser
71	alumni_tracker_app	organizationrolecapacityterm
72	alumni_tracker_app	organizationrolecapacityrelationship
73	alumni_tracker_app	organizationrolecapacitymembershiproleenumdashboard
74	alumni_tracker_app	organizationrolecapacitymembershiprelationship
75	alumni_tracker_app	organizationrolecapacitygroupmembershipacademiccoursecontentareas
76	alumni_tracker_app	organizationrolecapacitygroupacademiccoursecontentareas
77	alumni_tracker_app	organizationrolecapacitycheckinenrollmenttaxonomy
78	alumni_tracker_app	organizationrolecapacitycheckinemploymenttaxonomy
79	alumni_tracker_app	metaorganizationrolecapacityalumnusseverence
80	alumni_tracker_app	checkincommongoodtaxonomy
81	alumni_tracker_app	checkincommongoodtag
82	alumni_tracker_app	alumnuscheckincommongoodtag
83	alumni_tracker_app	organizationrolecapacitycheckincommongoodtaxonomy
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 83, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-05-21 02:29:10.673218+00
2	auth	0001_initial	2020-05-21 02:29:10.714265+00
3	admin	0001_initial	2020-05-21 02:29:10.762395+00
4	admin	0002_logentry_remove_auto_add	2020-05-21 02:29:10.779316+00
5	admin	0003_logentry_add_action_flag_choices	2020-05-21 02:29:10.792151+00
6	alumni_tracker_app	0001_initial	2020-05-21 02:29:16.772413+00
7	contenttypes	0002_remove_content_type_name	2020-05-21 02:29:17.291395+00
8	auth	0002_alter_permission_name_max_length	2020-05-21 02:29:17.303803+00
9	auth	0003_alter_user_email_max_length	2020-05-21 02:29:17.322216+00
10	auth	0004_alter_user_username_opts	2020-05-21 02:29:17.340154+00
11	auth	0005_alter_user_last_login_null	2020-05-21 02:29:17.361205+00
12	auth	0006_require_contenttypes_0002	2020-05-21 02:29:17.364201+00
13	auth	0007_alter_validators_add_error_messages	2020-05-21 02:29:17.381314+00
14	auth	0008_alter_user_username_max_length	2020-05-21 02:29:17.403497+00
15	auth	0009_alter_user_last_name_max_length	2020-05-21 02:29:17.419976+00
16	auth	0010_alter_group_name_max_length	2020-05-21 02:29:17.437287+00
17	auth	0011_update_proxy_permissions	2020-05-21 02:29:17.524545+00
18	authtoken	0001_initial	2020-05-21 02:29:17.544814+00
19	authtoken	0002_auto_20160226_1747	2020-05-21 02:29:17.620118+00
20	sessions	0001_initial	2020-05-21 02:29:17.631926+00
21	alumni_tracker_app	0002_auto_20200522_2152	2020-06-01 03:57:50.40594+00
22	alumni_tracker_app	0003_auto_20200531_1342	2020-06-01 03:57:50.539205+00
23	alumni_tracker_app	0004_auto_20200910_0050	2020-09-10 06:50:29.277099+00
24	alumni_tracker_app	0004_auto_20200909_0045	2020-12-16 04:52:27.821728+00
25	alumni_tracker_app	0005_auto_20201215_2137	2020-12-16 04:52:27.915563+00
26	alumni_tracker_app	0006_auto_20201215_2140	2020-12-16 04:52:27.943922+00
27	alumni_tracker_app	0007_merge_20201215_2152	2020-12-16 04:52:27.947136+00
28	alumni_tracker_app	0007_alumnuscheckin_military	2020-12-18 16:12:05.735648+00
29	alumni_tracker_app	0008_merge_20201218_0911	2020-12-18 16:12:05.742208+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sva_dba
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 29, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: sva_dba
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
dtlm3sgxotkv62aexhz8micd8590es8p	Njc1NzgzNzhmYmJlODc0ZTdkODA1Y2U4MTFlMjY2MGY2OTA3NThhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZTg4NTM0ZGEzYWQyYWRiYWY3YzgxZmFmZDRmZWYzMDEyYTM3NWNlIn0=	2020-06-04 02:41:24.405649+00
9r5tyqibyb2r8hot1g9e9culohdo5bh1	Njc1NzgzNzhmYmJlODc0ZTdkODA1Y2U4MTFlMjY2MGY2OTA3NThhYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZTg4NTM0ZGEzYWQyYWRiYWY3YzgxZmFmZDRmZWYzMDEyYTM3NWNlIn0=	2020-06-08 17:18:23.248808+00
\.


--
-- Name: alumni_tracker_app_alumnus alumni_tracker_app_alumnus_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnus
    ADD CONSTRAINT alumni_tracker_app_alumnus_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_alumnuscheckin alumni_tracker_app_alumnuscheckin_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckin
    ADD CONSTRAINT alumni_tracker_app_alumnuscheckin_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_alumnuscheckincommongoodtag alumni_tracker_app_alumnuscheckincommongoodtag_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckincommongoodtag
    ADD CONSTRAINT alumni_tracker_app_alumnuscheckincommongoodtag_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_alumnuscheckinemployment alumni_tracker_app_alumnuscheckinemployment_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemployment
    ADD CONSTRAINT alumni_tracker_app_alumnuscheckinemployment_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit alumni_tracker_app_alumnuscheckinemploymentemploymentbenef_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit
    ADD CONSTRAINT alumni_tracker_app_alumnuscheckinemploymentemploymentbenef_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_alumnuscheckinemploymenttag alumni_tracker_app_alumnuscheckinemploymenttag_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemploymenttag
    ADD CONSTRAINT alumni_tracker_app_alumnuscheckinemploymenttag_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment alumni_tracker_app_alumnuscheckinenrollment_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollment
    ADD CONSTRAINT alumni_tracker_app_alumnuscheckinenrollment_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_alumnuscheckinenrollmenttag alumni_tracker_app_alumnuscheckinenrollmenttag_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollmenttag
    ADD CONSTRAINT alumni_tracker_app_alumnuscheckinenrollmenttag_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_alumnuscredential alumni_tracker_app_alumnuscredential_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscredential
    ADD CONSTRAINT alumni_tracker_app_alumnuscredential_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_checkinbookmark alumni_tracker_app_checkinbookmark_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinbookmark
    ADD CONSTRAINT alumni_tracker_app_checkinbookmark_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_checkincommongoodtag alumni_tracker_app_checkincommongoodtag_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkincommongoodtag
    ADD CONSTRAINT alumni_tracker_app_checkincommongoodtag_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_checkincommongoodtaxonomy alumni_tracker_app_checkincommongoodtaxonomy_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkincommongoodtaxonomy
    ADD CONSTRAINT alumni_tracker_app_checkincommongoodtaxonomy_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_checkincommongoodtaxonomy alumni_tracker_app_checkincommongoodtaxonomy_taxonomy_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkincommongoodtaxonomy
    ADD CONSTRAINT alumni_tracker_app_checkincommongoodtaxonomy_taxonomy_key UNIQUE (taxonomy);


--
-- Name: alumni_tracker_app_checkinemploymenttag alumni_tracker_app_checkinemploymenttag_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinemploymenttag
    ADD CONSTRAINT alumni_tracker_app_checkinemploymenttag_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_checkinemploymenttaxonomy alumni_tracker_app_checkinemploymenttaxonomy_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinemploymenttaxonomy
    ADD CONSTRAINT alumni_tracker_app_checkinemploymenttaxonomy_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_checkinemploymenttaxonomy alumni_tracker_app_checkinemploymenttaxonomy_taxonomy_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinemploymenttaxonomy
    ADD CONSTRAINT alumni_tracker_app_checkinemploymenttaxonomy_taxonomy_key UNIQUE (taxonomy);


--
-- Name: alumni_tracker_app_checkinenrollmenttag alumni_tracker_app_checkinenrollmenttag_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinenrollmenttag
    ADD CONSTRAINT alumni_tracker_app_checkinenrollmenttag_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_checkinenrollmenttaxonomy alumni_tracker_app_checkinenrollmenttaxonomy_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinenrollmenttaxonomy
    ADD CONSTRAINT alumni_tracker_app_checkinenrollmenttaxonomy_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_checkinenrollmenttaxonomy alumni_tracker_app_checkinenrollmenttaxonomy_taxonomy_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinenrollmenttaxonomy
    ADD CONSTRAINT alumni_tracker_app_checkinenrollmenttaxonomy_taxonomy_key UNIQUE (taxonomy);


--
-- Name: alumni_tracker_app_credential alumni_tracker_app_credential_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_credential
    ADD CONSTRAINT alumni_tracker_app_credential_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_datadashboard alumni_tracker_app_datadashboard_drive_file_id_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_datadashboard
    ADD CONSTRAINT alumni_tracker_app_datadashboard_drive_file_id_key UNIQUE (drive_file_id);


--
-- Name: alumni_tracker_app_datadashboard alumni_tracker_app_datadashboard_name_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_datadashboard
    ADD CONSTRAINT alumni_tracker_app_datadashboard_name_key UNIQUE (name);


--
-- Name: alumni_tracker_app_datadashboard alumni_tracker_app_datadashboard_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_datadashboard
    ADD CONSTRAINT alumni_tracker_app_datadashboard_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_datadashboard alumni_tracker_app_datadashboard_url_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_datadashboard
    ADD CONSTRAINT alumni_tracker_app_datadashboard_url_key UNIQUE (url);


--
-- Name: alumni_tracker_app_datadashboarddatasheet alumni_tracker_app_datadashboarddatasheet_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_datadashboarddatasheet
    ADD CONSTRAINT alumni_tracker_app_datadashboarddatasheet_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_datasheet alumni_tracker_app_datasheet_drive_file_id_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_datasheet
    ADD CONSTRAINT alumni_tracker_app_datasheet_drive_file_id_key UNIQUE (drive_file_id);


--
-- Name: alumni_tracker_app_datasheet alumni_tracker_app_datasheet_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_datasheet
    ADD CONSTRAINT alumni_tracker_app_datasheet_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_fiscalschoolyear alumni_tracker_app_fiscalschoolyear_long_name_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_fiscalschoolyear
    ADD CONSTRAINT alumni_tracker_app_fiscalschoolyear_long_name_key UNIQUE (long_name);


--
-- Name: alumni_tracker_app_fiscalschoolyear alumni_tracker_app_fiscalschoolyear_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_fiscalschoolyear
    ADD CONSTRAINT alumni_tracker_app_fiscalschoolyear_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_fiscalschoolyear alumni_tracker_app_fiscalschoolyear_short_name_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_fiscalschoolyear
    ADD CONSTRAINT alumni_tracker_app_fiscalschoolyear_short_name_key UNIQUE (short_name);


--
-- Name: alumni_tracker_app_fiscalschoolyear alumni_tracker_app_fiscalschoolyear_year_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_fiscalschoolyear
    ADD CONSTRAINT alumni_tracker_app_fiscalschoolyear_year_key UNIQUE (year);


--
-- Name: alumni_tracker_app_language alumni_tracker_app_language_name_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_language
    ADD CONSTRAINT alumni_tracker_app_language_name_key UNIQUE (name);


--
-- Name: alumni_tracker_app_language alumni_tracker_app_language_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_language
    ADD CONSTRAINT alumni_tracker_app_language_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaacademiccoursecontentarea alumni_tracker_app_metaacademiccoursecontentar_content_area_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaacademiccoursecontentarea
    ADD CONSTRAINT alumni_tracker_app_metaacademiccoursecontentar_content_area_key UNIQUE (content_area);


--
-- Name: alumni_tracker_app_metaacademiccoursecontentarea alumni_tracker_app_metaacademiccoursecontentarea_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaacademiccoursecontentarea
    ADD CONSTRAINT alumni_tracker_app_metaacademiccoursecontentarea_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metacredentialtype alumni_tracker_app_metacredentialtype_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metacredentialtype
    ADD CONSTRAINT alumni_tracker_app_metacredentialtype_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metacredentialtype alumni_tracker_app_metacredentialtype_type_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metacredentialtype
    ADD CONSTRAINT alumni_tracker_app_metacredentialtype_type_key UNIQUE (type);


--
-- Name: alumni_tracker_app_metaemploymentbenefit alumni_tracker_app_metaemploymentbenefit_benefit_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaemploymentbenefit
    ADD CONSTRAINT alumni_tracker_app_metaemploymentbenefit_benefit_key UNIQUE (benefit);


--
-- Name: alumni_tracker_app_metaemploymentbenefit alumni_tracker_app_metaemploymentbenefit_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaemploymentbenefit
    ADD CONSTRAINT alumni_tracker_app_metaemploymentbenefit_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaemploymentextent alumni_tracker_app_metaemploymentextent_extent_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaemploymentextent
    ADD CONSTRAINT alumni_tracker_app_metaemploymentextent_extent_key UNIQUE (extent);


--
-- Name: alumni_tracker_app_metaemploymentextent alumni_tracker_app_metaemploymentextent_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaemploymentextent
    ADD CONSTRAINT alumni_tracker_app_metaemploymentextent_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaemploymentposition alumni_tracker_app_metaemploymentposition_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaemploymentposition
    ADD CONSTRAINT alumni_tracker_app_metaemploymentposition_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaemploymentposition alumni_tracker_app_metaemploymentposition_position_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaemploymentposition
    ADD CONSTRAINT alumni_tracker_app_metaemploymentposition_position_key UNIQUE ("position");


--
-- Name: alumni_tracker_app_metaenrollmentextent alumni_tracker_app_metaenrollmentextent_extent_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaenrollmentextent
    ADD CONSTRAINT alumni_tracker_app_metaenrollmentextent_extent_key UNIQUE (extent);


--
-- Name: alumni_tracker_app_metaenrollmentextent alumni_tracker_app_metaenrollmentextent_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaenrollmentextent
    ADD CONSTRAINT alumni_tracker_app_metaenrollmentextent_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaorganizationgrouptype alumni_tracker_app_metaorganizationgrouptype_group_type_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationgrouptype
    ADD CONSTRAINT alumni_tracker_app_metaorganizationgrouptype_group_type_key UNIQUE (group_type);


--
-- Name: alumni_tracker_app_metaorganizationgrouptype alumni_tracker_app_metaorganizationgrouptype_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationgrouptype
    ADD CONSTRAINT alumni_tracker_app_metaorganizationgrouptype_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationro5728 alumni_tracker_app_metaorganizationmembershiporganization_pkey1; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationro5728
    ADD CONSTRAINT alumni_tracker_app_metaorganizationmembershiporganization_pkey1 PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationroceaf alumni_tracker_app_metaorganizationmembershiporganization_pkey2; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationroceaf
    ADD CONSTRAINT alumni_tracker_app_metaorganizationmembershiporganization_pkey2 PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationro0b6e alumni_tracker_app_metaorganizationmembershiporganization_pkey3; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationro0b6e
    ADD CONSTRAINT alumni_tracker_app_metaorganizationmembershiporganization_pkey3 PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationroacdd alumni_tracker_app_metaorganizationmembershiporganizationr_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationroacdd
    ADD CONSTRAINT alumni_tracker_app_metaorganizationmembershiporganizationr_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaorganizationrole alumni_tracker_app_metaorganizationrole_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrole
    ADD CONSTRAINT alumni_tracker_app_metaorganizationrole_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaorganizationrole alumni_tracker_app_metaorganizationrole_role_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrole
    ADD CONSTRAINT alumni_tracker_app_metaorganizationrole_role_key UNIQUE (role);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacity alumni_tracker_app_metaorganizationrolecapacity_capacity_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacity
    ADD CONSTRAINT alumni_tracker_app_metaorganizationrolecapacity_capacity_key UNIQUE (capacity);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacity alumni_tracker_app_metaorganizationrolecapacity_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacity
    ADD CONSTRAINT alumni_tracker_app_metaorganizationrolecapacity_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityalumnusseverence alumni_tracker_app_metaorganizationrolecapacityalumnusseve_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityalumnusseverence
    ADD CONSTRAINT alumni_tracker_app_metaorganizationrolecapacityalumnusseve_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityepoch alumni_tracker_app_metaorganizationrolecapacityepoch_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityepoch
    ADD CONSTRAINT alumni_tracker_app_metaorganizationrolecapacityepoch_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityrelationship3375 alumni_tracker_app_metaorganizationrolecapacityrelationshi_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityrelationship3375
    ADD CONSTRAINT alumni_tracker_app_metaorganizationrolecapacityrelationshi_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organization alumni_tracker_app_organization_name_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organization
    ADD CONSTRAINT alumni_tracker_app_organization_name_key UNIQUE (name);


--
-- Name: alumni_tracker_app_organization alumni_tracker_app_organization_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organization
    ADD CONSTRAINT alumni_tracker_app_organization_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrole alumni_tracker_app_organizationrole_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrole
    ADD CONSTRAINT alumni_tracker_app_organizationrole_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacity alumni_tracker_app_organizationrolecapacity_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacity
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacity_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckincommongoo6791 alumni_tracker_app_organizationrolecapacitycheckincommongo_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckincommongoo6791
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitycheckincommongo_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinemploymena215 alumni_tracker_app_organizationrolecapacitycheckinemployme_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckinemploymena215
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitycheckinemployme_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e alumni_tracker_app_organizationrolecapacitycheckinenrollme_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitycheckinenrollme_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacityepoch alumni_tracker_app_organizationrolecapacityepoch_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityepoch
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacityepoch_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacityfsyday alumni_tracker_app_organizationrolecapacityfsyday_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityfsyday
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacityfsyday_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroup alumni_tracker_app_organizationrolecapacitygroup_name_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroup
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitygroup_name_key UNIQUE (name);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroup alumni_tracker_app_organizationrolecapacitygroup_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroup
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitygroup_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3 alumni_tracker_app_organizationrolecapacitygroupacademicc_pkey1; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitygroupacademicc_pkey1 PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademiccourse alumni_tracker_app_organizationrolecapacitygroupacademicco_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupacademiccourse
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitygroupacademicco_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad alumni_tracker_app_organizationrolecapacitygroupmembershi_pkey1; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitygroupmembershi_pkey1 PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa4723 alumni_tracker_app_organizationrolecapacitygroupmembershi_pkey2; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa4723
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitygroupmembershi_pkey2 PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembership alumni_tracker_app_organizationrolecapacitygroupmembership_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembership
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitygroupmembership_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembership alumni_tracker_app_organizationrolecapacitymembership_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembership
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitymembership_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprelatid708 alumni_tracker_app_organizationrolecapacitymembershiprelat_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitymembershiprelat_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprole alumni_tracker_app_organizationrolecapacitymembershiprole_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprole
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitymembershiprole_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiproleeneed9 alumni_tracker_app_organizationrolecapacitymembershiprole_pkey1; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiproleeneed9
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitymembershiprole_pkey1 PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiproleenum alumni_tracker_app_organizationrolecapacitymembershiprolee_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiproleenum
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitymembershiprolee_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacityrelationship alumni_tracker_app_organizationrolecapacityrelationship_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityrelationship
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacityrelationship_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomy alumni_tracker_app_organizationrolecapacitytaxonomy_name_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitytaxonomy
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitytaxonomy_name_key UNIQUE (name);


--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomy alumni_tracker_app_organizationrolecapacitytaxonomy_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitytaxonomy
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitytaxonomy_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomyterm alumni_tracker_app_organizationrolecapacitytaxonomyterm_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitytaxonomyterm
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitytaxonomyterm_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacityterm alumni_tracker_app_organizationrolecapacityterm_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityterm
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacityterm_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacityuser alumni_tracker_app_organizationrolecapacityuser_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityuser
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacityuser_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_performancemeasure alumni_tracker_app_performancemeasure_abbreviation_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_performancemeasure
    ADD CONSTRAINT alumni_tracker_app_performancemeasure_abbreviation_key UNIQUE (abbreviation);


--
-- Name: alumni_tracker_app_performancemeasure alumni_tracker_app_performancemeasure_name_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_performancemeasure
    ADD CONSTRAINT alumni_tracker_app_performancemeasure_name_key UNIQUE (name);


--
-- Name: alumni_tracker_app_performancemeasure alumni_tracker_app_performancemeasure_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_performancemeasure
    ADD CONSTRAINT alumni_tracker_app_performancemeasure_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_performancemeasuredashboard alumni_tracker_app_performancemeasuredashboard_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_performancemeasuredashboard
    ADD CONSTRAINT alumni_tracker_app_performancemeasuredashboard_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_person alumni_tracker_app_person_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_person
    ADD CONSTRAINT alumni_tracker_app_person_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_preferencedomain alumni_tracker_app_preferencedomain_domain_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_preferencedomain
    ADD CONSTRAINT alumni_tracker_app_preferencedomain_domain_key UNIQUE (domain);


--
-- Name: alumni_tracker_app_preferencedomain alumni_tracker_app_preferencedomain_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_preferencedomain
    ADD CONSTRAINT alumni_tracker_app_preferencedomain_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_preferencedomainpreference alumni_tracker_app_preferencedomainpreference_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_preferencedomainpreference
    ADD CONSTRAINT alumni_tracker_app_preferencedomainpreference_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_preferencedomainpreference alumni_tracker_app_preferencedomainpreference_preference_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_preferencedomainpreference
    ADD CONSTRAINT alumni_tracker_app_preferencedomainpreference_preference_key UNIQUE (preference);


--
-- Name: alumni_tracker_app_student alumni_tracker_app_student_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_student
    ADD CONSTRAINT alumni_tracker_app_student_pkey PRIMARY KEY (person_id);


--
-- Name: alumni_tracker_app_studentcredithistory alumni_tracker_app_studentcredithistory_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_studentcredithistory
    ADD CONSTRAINT alumni_tracker_app_studentcredithistory_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_studentenrollmenttrack alumni_tracker_app_studentenrollmenttrack_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_studentenrollmenttrack
    ADD CONSTRAINT alumni_tracker_app_studentenrollmenttrack_pkey PRIMARY KEY (membership_role_id);


--
-- Name: alumni_tracker_app_studentidentifiers alumni_tracker_app_studentidentifiers_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_studentidentifiers
    ADD CONSTRAINT alumni_tracker_app_studentidentifiers_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_studenttransitivedemos alumni_tracker_app_studenttransitivedemos_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_studenttransitivedemos
    ADD CONSTRAINT alumni_tracker_app_studenttransitivedemos_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_userprofile alumni_tracker_app_userprofile_person_id_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_userprofile
    ADD CONSTRAINT alumni_tracker_app_userprofile_person_id_key UNIQUE (person_id);


--
-- Name: alumni_tracker_app_userprofile alumni_tracker_app_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_userprofile
    ADD CONSTRAINT alumni_tracker_app_userprofile_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_userprofile alumni_tracker_app_userprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_userprofile
    ADD CONSTRAINT alumni_tracker_app_userprofile_user_id_key UNIQUE (user_id);


--
-- Name: alumni_tracker_app_userprofilepreference alumni_tracker_app_userprofilepreference_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_userprofilepreference
    ADD CONSTRAINT alumni_tracker_app_userprofilepreference_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_usstate alumni_tracker_app_usstate_abbreviation_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_usstate
    ADD CONSTRAINT alumni_tracker_app_usstate_abbreviation_key UNIQUE (abbreviation);


--
-- Name: alumni_tracker_app_usstate alumni_tracker_app_usstate_name_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_usstate
    ADD CONSTRAINT alumni_tracker_app_usstate_name_key UNIQUE (name);


--
-- Name: alumni_tracker_app_usstate alumni_tracker_app_usstate_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_usstate
    ADD CONSTRAINT alumni_tracker_app_usstate_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: alumni_tracker_app_alumnuscheckinemployment ci_emp_lineage; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemployment
    ADD CONSTRAINT ci_emp_lineage UNIQUE (alumnus_checkin_id, continued_in_id, continuation_of_id);


--
-- Name: alumni_tracker_app_alumnuscheckinemployment ci_emp_singular; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemployment
    ADD CONSTRAINT ci_emp_singular UNIQUE (alumnus_checkin_id, employer_id);


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment ci_enr_lineage; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollment
    ADD CONSTRAINT ci_enr_lineage UNIQUE (alumnus_checkin_id, continued_in_id, continuation_of_id);


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment ci_enr_singular; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollment
    ADD CONSTRAINT ci_enr_singular UNIQUE (alumnus_checkin_id, credential_awarder_id, credential_goal_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: alumni_tracker_app_alumnus unique_alumnus; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnus
    ADD CONSTRAINT unique_alumnus UNIQUE (person_id, organization_role_capacity_id, severence_id, severence_date);


--
-- Name: alumni_tracker_app_alumnuscredential unique_alumnus_credential; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscredential
    ADD CONSTRAINT unique_alumnus_credential UNIQUE (alumnus_person_id, credential_id, earned_on);


--
-- Name: alumni_tracker_app_alumnuscheckincommongoodtag unique_ci_cg_tag; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckincommongoodtag
    ADD CONSTRAINT unique_ci_cg_tag UNIQUE (checkin_id, tag_id);


--
-- Name: alumni_tracker_app_checkincommongoodtag unique_ci_cg_tax_tag; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkincommongoodtag
    ADD CONSTRAINT unique_ci_cg_tax_tag UNIQUE (taxonomy_id, tag);


--
-- Name: alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit unique_ci_emp_ben; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit
    ADD CONSTRAINT unique_ci_emp_ben UNIQUE (checkin_employment_id, benefit_id);


--
-- Name: alumni_tracker_app_alumnuscheckinemploymenttag unique_ci_emp_tag; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemploymenttag
    ADD CONSTRAINT unique_ci_emp_tag UNIQUE (checkin_employment_id, tag_id);


--
-- Name: alumni_tracker_app_checkinemploymenttag unique_ci_emp_tax_tag; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinemploymenttag
    ADD CONSTRAINT unique_ci_emp_tax_tag UNIQUE (taxonomy_id, tag);


--
-- Name: alumni_tracker_app_alumnuscheckinenrollmenttag unique_ci_enr_tag; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollmenttag
    ADD CONSTRAINT unique_ci_enr_tag UNIQUE (checkin_enrollment_id, tag_id);


--
-- Name: alumni_tracker_app_checkinenrollmenttag unique_ci_enr_tax_tag; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinenrollmenttag
    ADD CONSTRAINT unique_ci_enr_tax_tag UNIQUE (taxonomy_id, tag);


--
-- Name: alumni_tracker_app_credential unique_credential; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_credential
    ADD CONSTRAINT unique_credential UNIQUE (type_id, awarder_id, focus);


--
-- Name: alumni_tracker_app_datadashboarddatasheet unique_data_dashboard_sheet; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_datadashboarddatasheet
    ADD CONSTRAINT unique_data_dashboard_sheet UNIQUE (dashboard_id, sheet_id);


--
-- Name: alumni_tracker_app_preferencedomainpreference unique_domain_preference; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_preferencedomainpreference
    ADD CONSTRAINT unique_domain_preference UNIQUE (domain_id, preference);


--
-- Name: alumni_tracker_app_fiscalschoolyear unique_fsy_year_short_name_long_name; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_fiscalschoolyear
    ADD CONSTRAINT unique_fsy_year_short_name_long_name UNIQUE (year, short_name, long_name);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationroacdd unique_meta_org_mem_org_role_cap_ent; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationroacdd
    ADD CONSTRAINT unique_meta_org_mem_org_role_cap_ent UNIQUE (entrance, role_capacity_id, abbreviation);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationro5728 unique_meta_org_mem_org_role_cap_mem_role; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationro5728
    ADD CONSTRAINT unique_meta_org_mem_org_role_cap_mem_role UNIQUE (member_role, capacity_id);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationroceaf unique_meta_org_mem_org_role_cap_mem_role_per; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationroceaf
    ADD CONSTRAINT unique_meta_org_mem_org_role_cap_mem_role_per UNIQUE (role_id, perspective);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationro0b6e unique_meta_org_mem_org_role_cap_sev; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationro0b6e
    ADD CONSTRAINT unique_meta_org_mem_org_role_cap_sev UNIQUE (severence, role_capacity_id, abbreviation);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityalumnusseverence unique_meta_org_role_cap_alumnus_sev; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityalumnusseverence
    ADD CONSTRAINT unique_meta_org_role_cap_alumnus_sev UNIQUE (severence, abbreviation, role_capacity_id);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityepoch unique_meta_org_role_cap_ann_epo; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityepoch
    ADD CONSTRAINT unique_meta_org_role_cap_ann_epo UNIQUE (capacity_id, epoch);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityrelationship3375 unique_meta_org_role_cap_rel_per; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityrelationship3375
    ADD CONSTRAINT unique_meta_org_role_cap_rel_per UNIQUE (capacity_id, perspective);


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e unique_ocr_ci_enr_tax; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e
    ADD CONSTRAINT unique_ocr_ci_enr_tax UNIQUE (organization_role_capacity_id, taxonomy_id);


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckincommongoo6791 unique_orc_ci_cg_tag; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckincommongoo6791
    ADD CONSTRAINT unique_orc_ci_cg_tag UNIQUE (organization_role_capacity_id, taxonomy_id);


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinemploymena215 unique_orc_ci_emp_tax; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckinemploymena215
    ADD CONSTRAINT unique_orc_ci_emp_tax UNIQUE (organization_role_capacity_id, taxonomy_id);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademiccourse unique_orc_gac; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupacademiccourse
    ADD CONSTRAINT unique_orc_gac UNIQUE (group_id, name, abbreviation, code);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3 unique_orc_gac_ca; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3
    ADD CONSTRAINT unique_orc_gac_ca UNIQUE (course_id, content_area_id);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa4723 unique_orc_gmac_ca; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa4723
    ADD CONSTRAINT unique_orc_gmac_ca UNIQUE (course_id, content_area_id);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad unique_orc_mgac; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad
    ADD CONSTRAINT unique_orc_mgac UNIQUE (group_membership_id, orc_gac_alias_id, name, abbreviation, code);


--
-- Name: alumni_tracker_app_organizationrole unique_org_role; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrole
    ADD CONSTRAINT unique_org_role UNIQUE (organization_id, role_id);


--
-- Name: alumni_tracker_app_organizationrolecapacityfsyday unique_org_role_cap_fsy_day; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityfsyday
    ADD CONSTRAINT unique_org_role_cap_fsy_day UNIQUE (capacity_id, fsy_id, fsy_seq, calendar_date);


--
-- Name: alumni_tracker_app_organizationrolecapacityepoch unique_org_role_cap_fsy_epo; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityepoch
    ADD CONSTRAINT unique_org_role_cap_fsy_epo UNIQUE (capacity_id, epoch_id, start_fsy_id, start_fsy_day_id, stop_fsy_id, stop_fsy_day_id);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroup unique_org_role_cap_group; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroup
    ADD CONSTRAINT unique_org_role_cap_group UNIQUE (name, group_type_id);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembership unique_org_role_cap_group_member; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembership
    ADD CONSTRAINT unique_org_role_cap_group_member UNIQUE (group_id, role_capacity_id);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiproleeneed9 unique_org_role_cap_mem_role_enum_dash; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiproleeneed9
    ADD CONSTRAINT unique_org_role_cap_mem_role_enum_dash UNIQUE (enumed_role_id, dashboard_id);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprelatid708 unique_org_role_cap_member_rel; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708
    ADD CONSTRAINT unique_org_role_cap_member_rel UNIQUE (source_membership_id, perspective_id, target_membership_id);


--
-- Name: alumni_tracker_app_organizationrolecapacityrelationship unique_org_role_cap_rel; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityrelationship
    ADD CONSTRAINT unique_org_role_cap_rel UNIQUE (source_capacity_id, perspective_id, target_capacity_id);


--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomyterm unique_org_role_cap_tax_term; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitytaxonomyterm
    ADD CONSTRAINT unique_org_role_cap_tax_term UNIQUE (taxonomy_id, term);


--
-- Name: alumni_tracker_app_organizationrolecapacityuser unique_org_role_cap_user; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityuser
    ADD CONSTRAINT unique_org_role_cap_user UNIQUE (role_capacity_id, user_id);


--
-- Name: alumni_tracker_app_organizationrolecapacity unique_org_role_capacity; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacity
    ADD CONSTRAINT unique_org_role_capacity UNIQUE (organization_role_id, role_capacity_id);


--
-- Name: alumni_tracker_app_performancemeasuredashboard unique_perf_meas_dash; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_performancemeasuredashboard
    ADD CONSTRAINT unique_perf_meas_dash UNIQUE (performance_measure_id, dashboard_id);


--
-- Name: alumni_tracker_app_person unique_person; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_person
    ADD CONSTRAINT unique_person UNIQUE (first_name, last_name, id_mask);


--
-- Name: alumni_tracker_app_studentidentifiers unique_student_org_role_cap_identifier; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_studentidentifiers
    ADD CONSTRAINT unique_student_org_role_cap_identifier UNIQUE (student_id, capacity_id, identifier);


--
-- Name: alumni_tracker_app_userprofilepreference unique_user_profile_preference; Type: CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_userprofilepreference
    ADD CONSTRAINT unique_user_profile_preference UNIQUE (preference_id, user_profile_id);


--
-- Name: alumni_tracker_app_alumnus_alumnus_checkin_id_925f5c7d; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnus_alumnus_checkin_id_925f5c7d ON public.alumni_tracker_app_alumnuscheckinemployment USING btree (alumnus_checkin_id);


--
-- Name: alumni_tracker_app_alumnus_alumnus_checkin_id_f404e3e4; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnus_alumnus_checkin_id_f404e3e4 ON public.alumni_tracker_app_alumnuscheckinenrollment USING btree (alumnus_checkin_id);


--
-- Name: alumni_tracker_app_alumnus_benefit_id_5d20939d; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnus_benefit_id_5d20939d ON public.alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit USING btree (benefit_id);


--
-- Name: alumni_tracker_app_alumnus_checkin_employment_id_464f3c5b; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnus_checkin_employment_id_464f3c5b ON public.alumni_tracker_app_alumnuscheckinemploymenttag USING btree (checkin_employment_id);


--
-- Name: alumni_tracker_app_alumnus_checkin_employment_id_f18631b4; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnus_checkin_employment_id_f18631b4 ON public.alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit USING btree (checkin_employment_id);


--
-- Name: alumni_tracker_app_alumnus_checkin_enrollment_id_6360affe; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnus_checkin_enrollment_id_6360affe ON public.alumni_tracker_app_alumnuscheckinenrollmenttag USING btree (checkin_enrollment_id);


--
-- Name: alumni_tracker_app_alumnus_checkin_id_52a5dd1a; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnus_checkin_id_52a5dd1a ON public.alumni_tracker_app_alumnuscheckincommongoodtag USING btree (checkin_id);


--
-- Name: alumni_tracker_app_alumnus_continuation_of_id_25e53170; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnus_continuation_of_id_25e53170 ON public.alumni_tracker_app_alumnuscheckinemployment USING btree (continuation_of_id);


--
-- Name: alumni_tracker_app_alumnus_continuation_of_id_6c67a76e; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnus_continuation_of_id_6c67a76e ON public.alumni_tracker_app_alumnuscheckinenrollment USING btree (continuation_of_id);


--
-- Name: alumni_tracker_app_alumnus_continued_in_id_309a369c; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnus_continued_in_id_309a369c ON public.alumni_tracker_app_alumnuscheckinenrollment USING btree (continued_in_id);


--
-- Name: alumni_tracker_app_alumnus_continued_in_id_5a7ebd5b; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnus_continued_in_id_5a7ebd5b ON public.alumni_tracker_app_alumnuscheckinemployment USING btree (continued_in_id);


--
-- Name: alumni_tracker_app_alumnus_credential_awarder_id_f29f6179; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnus_credential_awarder_id_f29f6179 ON public.alumni_tracker_app_alumnuscheckinenrollment USING btree (credential_awarder_id);


--
-- Name: alumni_tracker_app_alumnus_credential_goal_id_0a8da218; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnus_credential_goal_id_0a8da218 ON public.alumni_tracker_app_alumnuscheckinenrollment USING btree (credential_goal_id);


--
-- Name: alumni_tracker_app_alumnus_employer_id_096196da; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnus_employer_id_096196da ON public.alumni_tracker_app_alumnuscheckinemployment USING btree (employer_id);


--
-- Name: alumni_tracker_app_alumnus_organization_role_capacity_5c70a451; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnus_organization_role_capacity_5c70a451 ON public.alumni_tracker_app_alumnus USING btree (organization_role_capacity_id);


--
-- Name: alumni_tracker_app_alumnus_person_id_0050d589; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnus_person_id_0050d589 ON public.alumni_tracker_app_alumnus USING btree (person_id);


--
-- Name: alumni_tracker_app_alumnus_position_id_48d98b95; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnus_position_id_48d98b95 ON public.alumni_tracker_app_alumnuscheckinemployment USING btree (position_id);


--
-- Name: alumni_tracker_app_alumnus_severence_id_1c9c6c6e; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnus_severence_id_1c9c6c6e ON public.alumni_tracker_app_alumnus USING btree (severence_id);


--
-- Name: alumni_tracker_app_alumnus_study_state_id_240374a4; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnus_study_state_id_240374a4 ON public.alumni_tracker_app_alumnuscheckinenrollment USING btree (study_state_id);


--
-- Name: alumni_tracker_app_alumnus_work_state_id_c9ab505d; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnus_work_state_id_c9ab505d ON public.alumni_tracker_app_alumnuscheckinemployment USING btree (work_state_id);


--
-- Name: alumni_tracker_app_alumnuscheckin_alumnus_person_id_b5db4ee1; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnuscheckin_alumnus_person_id_b5db4ee1 ON public.alumni_tracker_app_alumnuscheckin USING btree (alumnus_person_id);


--
-- Name: alumni_tracker_app_alumnuscheckin_conducted_by_id_3cdbc056; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnuscheckin_conducted_by_id_3cdbc056 ON public.alumni_tracker_app_alumnuscheckin USING btree (conducted_by_id);


--
-- Name: alumni_tracker_app_alumnuscheckin_last_updated_by_id_ba3ef25d; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnuscheckin_last_updated_by_id_ba3ef25d ON public.alumni_tracker_app_alumnuscheckin USING btree (last_updated_by_id);


--
-- Name: alumni_tracker_app_alumnuscheckincommongoodtag_tag_id_447b8d24; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnuscheckincommongoodtag_tag_id_447b8d24 ON public.alumni_tracker_app_alumnuscheckincommongoodtag USING btree (tag_id);


--
-- Name: alumni_tracker_app_alumnuscheckinemployment_extent_id_112c1863; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnuscheckinemployment_extent_id_112c1863 ON public.alumni_tracker_app_alumnuscheckinemployment USING btree (extent_id);


--
-- Name: alumni_tracker_app_alumnuscheckinemploymenttag_tag_id_1e4fad4a; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnuscheckinemploymenttag_tag_id_1e4fad4a ON public.alumni_tracker_app_alumnuscheckinemploymenttag USING btree (tag_id);


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment_extent_id_ddc01256; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnuscheckinenrollment_extent_id_ddc01256 ON public.alumni_tracker_app_alumnuscheckinenrollment USING btree (extent_id);


--
-- Name: alumni_tracker_app_alumnuscheckinenrollmenttag_tag_id_9bd10b4e; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnuscheckinenrollmenttag_tag_id_9bd10b4e ON public.alumni_tracker_app_alumnuscheckinenrollmenttag USING btree (tag_id);


--
-- Name: alumni_tracker_app_alumnuscredential_alumnus_person_id_fb584cf9; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnuscredential_alumnus_person_id_fb584cf9 ON public.alumni_tracker_app_alumnuscredential USING btree (alumnus_person_id);


--
-- Name: alumni_tracker_app_alumnuscredential_credential_id_33491c67; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_alumnuscredential_credential_id_33491c67 ON public.alumni_tracker_app_alumnuscredential USING btree (credential_id);


--
-- Name: alumni_tracker_app_check_taxonomy_041d5455_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_check_taxonomy_041d5455_like ON public.alumni_tracker_app_checkinenrollmenttaxonomy USING btree (taxonomy varchar_pattern_ops);


--
-- Name: alumni_tracker_app_check_taxonomy_874fae18_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_check_taxonomy_874fae18_like ON public.alumni_tracker_app_checkinemploymenttaxonomy USING btree (taxonomy varchar_pattern_ops);


--
-- Name: alumni_tracker_app_check_taxonomy_f1a79eb0_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_check_taxonomy_f1a79eb0_like ON public.alumni_tracker_app_checkincommongoodtaxonomy USING btree (taxonomy varchar_pattern_ops);


--
-- Name: alumni_tracker_app_checkinbookmark_checkin_id_890b9407; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_checkinbookmark_checkin_id_890b9407 ON public.alumni_tracker_app_checkinbookmark USING btree (checkin_id);


--
-- Name: alumni_tracker_app_checkinbookmark_user_profile_id_2bdfb432; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_checkinbookmark_user_profile_id_2bdfb432 ON public.alumni_tracker_app_checkinbookmark USING btree (user_profile_id);


--
-- Name: alumni_tracker_app_checkincommongoodtag_taxonomy_id_6354795a; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_checkincommongoodtag_taxonomy_id_6354795a ON public.alumni_tracker_app_checkincommongoodtag USING btree (taxonomy_id);


--
-- Name: alumni_tracker_app_checkinemploymenttag_taxonomy_id_0b43299c; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_checkinemploymenttag_taxonomy_id_0b43299c ON public.alumni_tracker_app_checkinemploymenttag USING btree (taxonomy_id);


--
-- Name: alumni_tracker_app_checkinenrollmenttag_taxonomy_id_6576e32f; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_checkinenrollmenttag_taxonomy_id_6576e32f ON public.alumni_tracker_app_checkinenrollmenttag USING btree (taxonomy_id);


--
-- Name: alumni_tracker_app_credential_awarder_id_f96a753c; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_credential_awarder_id_f96a753c ON public.alumni_tracker_app_credential USING btree (awarder_id);


--
-- Name: alumni_tracker_app_credential_type_id_55950be8; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_credential_type_id_55950be8 ON public.alumni_tracker_app_credential USING btree (type_id);


--
-- Name: alumni_tracker_app_datadashboard_drive_file_id_2318b605_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_datadashboard_drive_file_id_2318b605_like ON public.alumni_tracker_app_datadashboard USING btree (drive_file_id varchar_pattern_ops);


--
-- Name: alumni_tracker_app_datadashboard_name_beb784b6_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_datadashboard_name_beb784b6_like ON public.alumni_tracker_app_datadashboard USING btree (name varchar_pattern_ops);


--
-- Name: alumni_tracker_app_datadashboard_url_d1fe3d05_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_datadashboard_url_d1fe3d05_like ON public.alumni_tracker_app_datadashboard USING btree (url varchar_pattern_ops);


--
-- Name: alumni_tracker_app_datadashboarddatasheet_dashboard_id_97db7bcf; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_datadashboarddatasheet_dashboard_id_97db7bcf ON public.alumni_tracker_app_datadashboarddatasheet USING btree (dashboard_id);


--
-- Name: alumni_tracker_app_datadashboarddatasheet_sheet_id_af5ff178; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_datadashboarddatasheet_sheet_id_af5ff178 ON public.alumni_tracker_app_datadashboarddatasheet USING btree (sheet_id);


--
-- Name: alumni_tracker_app_datasheet_drive_file_id_0d1fe37e_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_datasheet_drive_file_id_0d1fe37e_like ON public.alumni_tracker_app_datasheet USING btree (drive_file_id varchar_pattern_ops);


--
-- Name: alumni_tracker_app_fiscalschoolyear_long_name_88d5d746_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_fiscalschoolyear_long_name_88d5d746_like ON public.alumni_tracker_app_fiscalschoolyear USING btree (long_name varchar_pattern_ops);


--
-- Name: alumni_tracker_app_fiscalschoolyear_short_name_2e0b3f13_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_fiscalschoolyear_short_name_2e0b3f13_like ON public.alumni_tracker_app_fiscalschoolyear USING btree (short_name varchar_pattern_ops);


--
-- Name: alumni_tracker_app_language_name_01d88779_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_language_name_01d88779_like ON public.alumni_tracker_app_language USING btree (name varchar_pattern_ops);


--
-- Name: alumni_tracker_app_metaa_content_area_27b446f8_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_metaa_content_area_27b446f8_like ON public.alumni_tracker_app_metaacademiccoursecontentarea USING btree (content_area varchar_pattern_ops);


--
-- Name: alumni_tracker_app_metacredentialtype_type_d80670cc_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_metacredentialtype_type_d80670cc_like ON public.alumni_tracker_app_metacredentialtype USING btree (type varchar_pattern_ops);


--
-- Name: alumni_tracker_app_metae_position_71ecbe9a_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_metae_position_71ecbe9a_like ON public.alumni_tracker_app_metaemploymentposition USING btree ("position" varchar_pattern_ops);


--
-- Name: alumni_tracker_app_metaemploymentbenefit_benefit_f0cc6fe7_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_metaemploymentbenefit_benefit_f0cc6fe7_like ON public.alumni_tracker_app_metaemploymentbenefit USING btree (benefit varchar_pattern_ops);


--
-- Name: alumni_tracker_app_metaemploymentextent_extent_580dc13a_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_metaemploymentextent_extent_580dc13a_like ON public.alumni_tracker_app_metaemploymentextent USING btree (extent varchar_pattern_ops);


--
-- Name: alumni_tracker_app_metaenrollmentextent_extent_592361c7_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_metaenrollmentextent_extent_592361c7_like ON public.alumni_tracker_app_metaenrollmentextent USING btree (extent varchar_pattern_ops);


--
-- Name: alumni_tracker_app_metao_capacity_01ea79c0_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_metao_capacity_01ea79c0_like ON public.alumni_tracker_app_metaorganizationrolecapacity USING btree (capacity varchar_pattern_ops);


--
-- Name: alumni_tracker_app_metao_group_type_2eaf1eb0_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_metao_group_type_2eaf1eb0_like ON public.alumni_tracker_app_metaorganizationgrouptype USING btree (group_type varchar_pattern_ops);


--
-- Name: alumni_tracker_app_metaorg_capacity_id_7b12631b; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_metaorg_capacity_id_7b12631b ON public.alumni_tracker_app_metaorganizationrolecapacityrelationship3375 USING btree (capacity_id);


--
-- Name: alumni_tracker_app_metaorg_capacity_id_b6df9f85; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_metaorg_capacity_id_b6df9f85 ON public.alumni_tracker_app_metaorganizationmembershiporganizationro5728 USING btree (capacity_id);


--
-- Name: alumni_tracker_app_metaorg_capacity_id_ffd93319; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_metaorg_capacity_id_ffd93319 ON public.alumni_tracker_app_metaorganizationrolecapacityepoch USING btree (capacity_id);


--
-- Name: alumni_tracker_app_metaorg_role_capacity_id_083a4102; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_metaorg_role_capacity_id_083a4102 ON public.alumni_tracker_app_metaorganizationmembershiporganizationroacdd USING btree (role_capacity_id);


--
-- Name: alumni_tracker_app_metaorg_role_capacity_id_9b471041; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_metaorg_role_capacity_id_9b471041 ON public.alumni_tracker_app_metaorganizationmembershiporganizationro0b6e USING btree (role_capacity_id);


--
-- Name: alumni_tracker_app_metaorg_role_capacity_id_b565d210; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_metaorg_role_capacity_id_b565d210 ON public.alumni_tracker_app_metaorganizationrolecapacityalumnusseverence USING btree (role_capacity_id);


--
-- Name: alumni_tracker_app_metaorg_role_id_6bd079ba; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_metaorg_role_id_6bd079ba ON public.alumni_tracker_app_metaorganizationmembershiporganizationroceaf USING btree (role_id);


--
-- Name: alumni_tracker_app_metaorganizationrole_role_8f2b36db_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_metaorganizationrole_role_8f2b36db_like ON public.alumni_tracker_app_metaorganizationrole USING btree (role varchar_pattern_ops);


--
-- Name: alumni_tracker_app_organ_name_0f4ef765_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organ_name_0f4ef765_like ON public.alumni_tracker_app_organizationrolecapacitytaxonomy USING btree (name varchar_pattern_ops);


--
-- Name: alumni_tracker_app_organ_name_a3e3389a_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organ_name_a3e3389a_like ON public.alumni_tracker_app_organizationrolecapacitygroup USING btree (name varchar_pattern_ops);


--
-- Name: alumni_tracker_app_organiz_capacity_id_071c3569; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_capacity_id_071c3569 ON public.alumni_tracker_app_organizationrolecapacityfsyday USING btree (capacity_id);


--
-- Name: alumni_tracker_app_organiz_capacity_id_85e6f310; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_capacity_id_85e6f310 ON public.alumni_tracker_app_organizationrolecapacityterm USING btree (capacity_id);


--
-- Name: alumni_tracker_app_organiz_capacity_id_cb2814f3; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_capacity_id_cb2814f3 ON public.alumni_tracker_app_organizationrolecapacitymembershiproleenum USING btree (capacity_id);


--
-- Name: alumni_tracker_app_organiz_capacity_id_cd3e2cf9; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_capacity_id_cd3e2cf9 ON public.alumni_tracker_app_organizationrolecapacityepoch USING btree (capacity_id);


--
-- Name: alumni_tracker_app_organiz_content_area_id_a22a0df9; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_content_area_id_a22a0df9 ON public.alumni_tracker_app_organizationrolecapacitygroupmembershipa4723 USING btree (content_area_id);


--
-- Name: alumni_tracker_app_organiz_content_area_id_e545746e; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_content_area_id_e545746e ON public.alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3 USING btree (content_area_id);


--
-- Name: alumni_tracker_app_organiz_course_id_5013d96e; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_course_id_5013d96e ON public.alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3 USING btree (course_id);


--
-- Name: alumni_tracker_app_organiz_course_id_ad893dbf; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_course_id_ad893dbf ON public.alumni_tracker_app_organizationrolecapacitygroupmembershipa4723 USING btree (course_id);


--
-- Name: alumni_tracker_app_organiz_dashboard_id_cd1e57e5; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_dashboard_id_cd1e57e5 ON public.alumni_tracker_app_organizationrolecapacitymembershiproleeneed9 USING btree (dashboard_id);


--
-- Name: alumni_tracker_app_organiz_entrance_id_cb9125a8; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_entrance_id_cb9125a8 ON public.alumni_tracker_app_organizationrolecapacitymembershiprole USING btree (entrance_id);


--
-- Name: alumni_tracker_app_organiz_enumed_role_id_038f86ca; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_enumed_role_id_038f86ca ON public.alumni_tracker_app_organizationrolecapacitymembershiproleeneed9 USING btree (enumed_role_id);


--
-- Name: alumni_tracker_app_organiz_enumed_role_id_df0c31bd; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_enumed_role_id_df0c31bd ON public.alumni_tracker_app_organizationrolecapacitymembershiprole USING btree (enumed_role_id);


--
-- Name: alumni_tracker_app_organiz_epoch_id_8221d3ee; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_epoch_id_8221d3ee ON public.alumni_tracker_app_organizationrolecapacityepoch USING btree (epoch_id);


--
-- Name: alumni_tracker_app_organiz_fsy_id_c6b6db72; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_fsy_id_c6b6db72 ON public.alumni_tracker_app_organizationrolecapacityfsyday USING btree (fsy_id);


--
-- Name: alumni_tracker_app_organiz_group_id_2a5bb89e; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_group_id_2a5bb89e ON public.alumni_tracker_app_organizationrolecapacitygroupmembership USING btree (group_id);


--
-- Name: alumni_tracker_app_organiz_group_id_666fbbb7; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_group_id_666fbbb7 ON public.alumni_tracker_app_organizationrolecapacitygroupacademiccourse USING btree (group_id);


--
-- Name: alumni_tracker_app_organiz_group_membership_id_b0ef58a6; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_group_membership_id_b0ef58a6 ON public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad USING btree (group_membership_id);


--
-- Name: alumni_tracker_app_organiz_group_type_id_7b2db0db; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_group_type_id_7b2db0db ON public.alumni_tracker_app_organizationrolecapacitygroup USING btree (group_type_id);


--
-- Name: alumni_tracker_app_organiz_membership_id_0022b77d; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_membership_id_0022b77d ON public.alumni_tracker_app_organizationrolecapacitymembershiprole USING btree (membership_id);


--
-- Name: alumni_tracker_app_organiz_orc_gac_alias_id_1a18880d; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_orc_gac_alias_id_1a18880d ON public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad USING btree (orc_gac_alias_id);


--
-- Name: alumni_tracker_app_organiz_organization_role_capacity_18cdfb5a; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_organization_role_capacity_18cdfb5a ON public.alumni_tracker_app_organizationrolecapacitycheckincommongoo6791 USING btree (organization_role_capacity_id);


--
-- Name: alumni_tracker_app_organiz_organization_role_capacity_5f3a5a25; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_organization_role_capacity_5f3a5a25 ON public.alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e USING btree (organization_role_capacity_id);


--
-- Name: alumni_tracker_app_organiz_organization_role_capacity_884ce6aa; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_organization_role_capacity_884ce6aa ON public.alumni_tracker_app_organizationrolecapacitycheckinemploymena215 USING btree (organization_role_capacity_id);


--
-- Name: alumni_tracker_app_organiz_organization_role_capacity_db06788b; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_organization_role_capacity_db06788b ON public.alumni_tracker_app_organizationrolecapacitymembership USING btree (organization_role_capacity_id);


--
-- Name: alumni_tracker_app_organiz_organization_role_id_f7c3a325; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_organization_role_id_f7c3a325 ON public.alumni_tracker_app_organizationrolecapacity USING btree (organization_role_id);


--
-- Name: alumni_tracker_app_organiz_person_id_acc64336; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_person_id_acc64336 ON public.alumni_tracker_app_organizationrolecapacitymembership USING btree (person_id);


--
-- Name: alumni_tracker_app_organiz_perspective_id_40d6e89f; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_perspective_id_40d6e89f ON public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708 USING btree (perspective_id);


--
-- Name: alumni_tracker_app_organiz_perspective_id_d5f93817; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_perspective_id_d5f93817 ON public.alumni_tracker_app_organizationrolecapacityrelationship USING btree (perspective_id);


--
-- Name: alumni_tracker_app_organiz_role_capacity_id_19d81734; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_role_capacity_id_19d81734 ON public.alumni_tracker_app_organizationrolecapacityuser USING btree (role_capacity_id);


--
-- Name: alumni_tracker_app_organiz_role_capacity_id_b1bab5f5; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_role_capacity_id_b1bab5f5 ON public.alumni_tracker_app_organizationrolecapacity USING btree (role_capacity_id);


--
-- Name: alumni_tracker_app_organiz_role_capacity_id_c400bb95; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_role_capacity_id_c400bb95 ON public.alumni_tracker_app_organizationrolecapacitygroupmembership USING btree (role_capacity_id);


--
-- Name: alumni_tracker_app_organiz_role_id_6f28db56; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_role_id_6f28db56 ON public.alumni_tracker_app_organizationrolecapacitymembershiproleenum USING btree (role_id);


--
-- Name: alumni_tracker_app_organiz_severence_id_2d37f561; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_severence_id_2d37f561 ON public.alumni_tracker_app_organizationrolecapacitymembershiprole USING btree (severence_id);


--
-- Name: alumni_tracker_app_organiz_source_capacity_id_f4473173; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_source_capacity_id_f4473173 ON public.alumni_tracker_app_organizationrolecapacityrelationship USING btree (source_capacity_id);


--
-- Name: alumni_tracker_app_organiz_source_membership_id_b438b3d3; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_source_membership_id_b438b3d3 ON public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708 USING btree (source_membership_id);


--
-- Name: alumni_tracker_app_organiz_start_fsy_day_id_55cfe29a; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_start_fsy_day_id_55cfe29a ON public.alumni_tracker_app_organizationrolecapacityepoch USING btree (start_fsy_day_id);


--
-- Name: alumni_tracker_app_organiz_start_fsy_day_id_e4dffe76; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_start_fsy_day_id_e4dffe76 ON public.alumni_tracker_app_organizationrolecapacitymembershiprole USING btree (start_fsy_day_id);


--
-- Name: alumni_tracker_app_organiz_start_fsy_id_004efd82; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_start_fsy_id_004efd82 ON public.alumni_tracker_app_organizationrolecapacityepoch USING btree (start_fsy_id);


--
-- Name: alumni_tracker_app_organiz_stop_fsy_day_id_15570b0d; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_stop_fsy_day_id_15570b0d ON public.alumni_tracker_app_organizationrolecapacitymembershiprole USING btree (stop_fsy_day_id);


--
-- Name: alumni_tracker_app_organiz_stop_fsy_day_id_32f0dd2c; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_stop_fsy_day_id_32f0dd2c ON public.alumni_tracker_app_organizationrolecapacityepoch USING btree (stop_fsy_day_id);


--
-- Name: alumni_tracker_app_organiz_stop_fsy_id_b736cf51; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_stop_fsy_id_b736cf51 ON public.alumni_tracker_app_organizationrolecapacityepoch USING btree (stop_fsy_id);


--
-- Name: alumni_tracker_app_organiz_target_capacity_id_f3086977; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_target_capacity_id_f3086977 ON public.alumni_tracker_app_organizationrolecapacityrelationship USING btree (target_capacity_id);


--
-- Name: alumni_tracker_app_organiz_target_membership_id_37fe24a7; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_target_membership_id_37fe24a7 ON public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708 USING btree (target_membership_id);


--
-- Name: alumni_tracker_app_organiz_taxonomy_id_0b088737; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_taxonomy_id_0b088737 ON public.alumni_tracker_app_organizationrolecapacitycheckincommongoo6791 USING btree (taxonomy_id);


--
-- Name: alumni_tracker_app_organiz_taxonomy_id_472531d4; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_taxonomy_id_472531d4 ON public.alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e USING btree (taxonomy_id);


--
-- Name: alumni_tracker_app_organiz_taxonomy_id_86bfb498; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_taxonomy_id_86bfb498 ON public.alumni_tracker_app_organizationrolecapacitytaxonomyterm USING btree (taxonomy_id);


--
-- Name: alumni_tracker_app_organiz_taxonomy_id_cfe276ec; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_taxonomy_id_cfe276ec ON public.alumni_tracker_app_organizationrolecapacitycheckinemploymena215 USING btree (taxonomy_id);


--
-- Name: alumni_tracker_app_organiz_term_id_b87095a0; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_term_id_b87095a0 ON public.alumni_tracker_app_organizationrolecapacityterm USING btree (term_id);


--
-- Name: alumni_tracker_app_organiz_user_id_031eb3e0; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organiz_user_id_031eb3e0 ON public.alumni_tracker_app_organizationrolecapacityuser USING btree (user_id);


--
-- Name: alumni_tracker_app_organization_name_35df60b7_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organization_name_35df60b7_like ON public.alumni_tracker_app_organization USING btree (name varchar_pattern_ops);


--
-- Name: alumni_tracker_app_organizationrole_organization_id_6f4ddd11; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organizationrole_organization_id_6f4ddd11 ON public.alumni_tracker_app_organizationrole USING btree (organization_id);


--
-- Name: alumni_tracker_app_organizationrole_role_id_f2661605; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_organizationrole_role_id_f2661605 ON public.alumni_tracker_app_organizationrole USING btree (role_id);


--
-- Name: alumni_tracker_app_perfo_abbreviation_521f3dd7_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_perfo_abbreviation_521f3dd7_like ON public.alumni_tracker_app_performancemeasure USING btree (abbreviation varchar_pattern_ops);


--
-- Name: alumni_tracker_app_perform_dashboard_id_7e88b24b; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_perform_dashboard_id_7e88b24b ON public.alumni_tracker_app_performancemeasuredashboard USING btree (dashboard_id);


--
-- Name: alumni_tracker_app_perform_performance_measure_id_0eb5d441; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_perform_performance_measure_id_0eb5d441 ON public.alumni_tracker_app_performancemeasuredashboard USING btree (performance_measure_id);


--
-- Name: alumni_tracker_app_performancemeasure_name_b6d28d7c_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_performancemeasure_name_b6d28d7c_like ON public.alumni_tracker_app_performancemeasure USING btree (name varchar_pattern_ops);


--
-- Name: alumni_tracker_app_person_email_last_updated_by_id_be5ffa65; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_person_email_last_updated_by_id_be5ffa65 ON public.alumni_tracker_app_person USING btree (email_last_updated_by_id);


--
-- Name: alumni_tracker_app_person_mailing_last_updated_by_id_7d703ac3; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_person_mailing_last_updated_by_id_7d703ac3 ON public.alumni_tracker_app_person USING btree (mailing_last_updated_by_id);


--
-- Name: alumni_tracker_app_person_mailing_state_id_7d2bd003; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_person_mailing_state_id_7d2bd003 ON public.alumni_tracker_app_person USING btree (mailing_state_id);


--
-- Name: alumni_tracker_app_person_phone_last_updated_by_id_d349d5b6; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_person_phone_last_updated_by_id_d349d5b6 ON public.alumni_tracker_app_person USING btree (phone_last_updated_by_id);


--
-- Name: alumni_tracker_app_prefe_preference_79912ad3_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_prefe_preference_79912ad3_like ON public.alumni_tracker_app_preferencedomainpreference USING btree (preference varchar_pattern_ops);


--
-- Name: alumni_tracker_app_prefere_domain_id_8f791062; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_prefere_domain_id_8f791062 ON public.alumni_tracker_app_preferencedomainpreference USING btree (domain_id);


--
-- Name: alumni_tracker_app_preferencedomain_domain_50f3cf6f_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_preferencedomain_domain_50f3cf6f_like ON public.alumni_tracker_app_preferencedomain USING btree (domain varchar_pattern_ops);


--
-- Name: alumni_tracker_app_student_home_language_id_0a7e3fa0; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_student_home_language_id_0a7e3fa0 ON public.alumni_tracker_app_studenttransitivedemos USING btree (home_language_id);


--
-- Name: alumni_tracker_app_student_orc_gac_course_id_226bd112; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_student_orc_gac_course_id_226bd112 ON public.alumni_tracker_app_studentcredithistory USING btree (orc_gac_course_id);


--
-- Name: alumni_tracker_app_student_orc_gmac_course_id_fa4eabd4; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_student_orc_gmac_course_id_fa4eabd4 ON public.alumni_tracker_app_studentcredithistory USING btree (orc_gmac_course_id);


--
-- Name: alumni_tracker_app_student_orc_membership_id_83f2d826; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_student_orc_membership_id_83f2d826 ON public.alumni_tracker_app_studentcredithistory USING btree (orc_membership_id);


--
-- Name: alumni_tracker_app_student_projected_grad_fsy_id_b32cf699; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_student_projected_grad_fsy_id_b32cf699 ON public.alumni_tracker_app_studentenrollmenttrack USING btree (projected_grad_fsy_id);


--
-- Name: alumni_tracker_app_student_raw_mailing_state_id_9f15e730; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_student_raw_mailing_state_id_9f15e730 ON public.alumni_tracker_app_studenttransitivedemos USING btree (raw_mailing_state_id);


--
-- Name: alumni_tracker_app_studentcredithistory_orc_epoch_id_47cb984c; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_studentcredithistory_orc_epoch_id_47cb984c ON public.alumni_tracker_app_studentcredithistory USING btree (orc_epoch_id);


--
-- Name: alumni_tracker_app_studentcredithistory_student_id_2f4e2f0b; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_studentcredithistory_student_id_2f4e2f0b ON public.alumni_tracker_app_studentcredithistory USING btree (student_id);


--
-- Name: alumni_tracker_app_studentenrollmenttrack_start_fsy_id_51308180; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_studentenrollmenttrack_start_fsy_id_51308180 ON public.alumni_tracker_app_studentenrollmenttrack USING btree (start_fsy_id);


--
-- Name: alumni_tracker_app_studentenrollmenttrack_stop_fsy_id_16ca12f7; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_studentenrollmenttrack_stop_fsy_id_16ca12f7 ON public.alumni_tracker_app_studentenrollmenttrack USING btree (stop_fsy_id);


--
-- Name: alumni_tracker_app_studentidentifiers_capacity_id_e99f1ed1; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_studentidentifiers_capacity_id_e99f1ed1 ON public.alumni_tracker_app_studentidentifiers USING btree (capacity_id);


--
-- Name: alumni_tracker_app_studentidentifiers_student_id_83d3a159; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_studentidentifiers_student_id_83d3a159 ON public.alumni_tracker_app_studentidentifiers USING btree (student_id);


--
-- Name: alumni_tracker_app_studenttransitivedemos_student_id_eb4123d4; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_studenttransitivedemos_student_id_eb4123d4 ON public.alumni_tracker_app_studenttransitivedemos USING btree (student_id);


--
-- Name: alumni_tracker_app_userpro_user_profile_id_c643bc59; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_userpro_user_profile_id_c643bc59 ON public.alumni_tracker_app_userprofilepreference USING btree (user_profile_id);


--
-- Name: alumni_tracker_app_userprofilepreference_preference_id_04c25c83; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_userprofilepreference_preference_id_04c25c83 ON public.alumni_tracker_app_userprofilepreference USING btree (preference_id);


--
-- Name: alumni_tracker_app_usstate_abbreviation_ccd2ab30_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_usstate_abbreviation_ccd2ab30_like ON public.alumni_tracker_app_usstate USING btree (abbreviation varchar_pattern_ops);


--
-- Name: alumni_tracker_app_usstate_name_a3855855_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX alumni_tracker_app_usstate_name_a3855855_like ON public.alumni_tracker_app_usstate USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: sva_dba
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: alumni_tracker_app_alumnuscheckinemployment alumni_tracker_app_a_alumnus_checkin_id_925f5c7d_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemployment
    ADD CONSTRAINT alumni_tracker_app_a_alumnus_checkin_id_925f5c7d_fk_alumni_tr FOREIGN KEY (alumnus_checkin_id) REFERENCES public.alumni_tracker_app_alumnuscheckin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment alumni_tracker_app_a_alumnus_checkin_id_f404e3e4_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollment
    ADD CONSTRAINT alumni_tracker_app_a_alumnus_checkin_id_f404e3e4_fk_alumni_tr FOREIGN KEY (alumnus_checkin_id) REFERENCES public.alumni_tracker_app_alumnuscheckin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckin alumni_tracker_app_a_alumnus_person_id_b5db4ee1_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckin
    ADD CONSTRAINT alumni_tracker_app_a_alumnus_person_id_b5db4ee1_fk_alumni_tr FOREIGN KEY (alumnus_person_id) REFERENCES public.alumni_tracker_app_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscredential alumni_tracker_app_a_alumnus_person_id_fb584cf9_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscredential
    ADD CONSTRAINT alumni_tracker_app_a_alumnus_person_id_fb584cf9_fk_alumni_tr FOREIGN KEY (alumnus_person_id) REFERENCES public.alumni_tracker_app_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit alumni_tracker_app_a_benefit_id_5d20939d_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit
    ADD CONSTRAINT alumni_tracker_app_a_benefit_id_5d20939d_fk_alumni_tr FOREIGN KEY (benefit_id) REFERENCES public.alumni_tracker_app_metaemploymentbenefit(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinemploymenttag alumni_tracker_app_a_checkin_employment_i_464f3c5b_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemploymenttag
    ADD CONSTRAINT alumni_tracker_app_a_checkin_employment_i_464f3c5b_fk_alumni_tr FOREIGN KEY (checkin_employment_id) REFERENCES public.alumni_tracker_app_alumnuscheckinemployment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit alumni_tracker_app_a_checkin_employment_i_f18631b4_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit
    ADD CONSTRAINT alumni_tracker_app_a_checkin_employment_i_f18631b4_fk_alumni_tr FOREIGN KEY (checkin_employment_id) REFERENCES public.alumni_tracker_app_alumnuscheckinemployment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinenrollmenttag alumni_tracker_app_a_checkin_enrollment_i_6360affe_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollmenttag
    ADD CONSTRAINT alumni_tracker_app_a_checkin_enrollment_i_6360affe_fk_alumni_tr FOREIGN KEY (checkin_enrollment_id) REFERENCES public.alumni_tracker_app_alumnuscheckinenrollment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckincommongoodtag alumni_tracker_app_a_checkin_id_52a5dd1a_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckincommongoodtag
    ADD CONSTRAINT alumni_tracker_app_a_checkin_id_52a5dd1a_fk_alumni_tr FOREIGN KEY (checkin_id) REFERENCES public.alumni_tracker_app_alumnuscheckin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckin alumni_tracker_app_a_conducted_by_id_3cdbc056_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckin
    ADD CONSTRAINT alumni_tracker_app_a_conducted_by_id_3cdbc056_fk_alumni_tr FOREIGN KEY (conducted_by_id) REFERENCES public.alumni_tracker_app_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinemployment alumni_tracker_app_a_continuation_of_id_25e53170_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemployment
    ADD CONSTRAINT alumni_tracker_app_a_continuation_of_id_25e53170_fk_alumni_tr FOREIGN KEY (continuation_of_id) REFERENCES public.alumni_tracker_app_alumnuscheckinemployment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment alumni_tracker_app_a_continuation_of_id_6c67a76e_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollment
    ADD CONSTRAINT alumni_tracker_app_a_continuation_of_id_6c67a76e_fk_alumni_tr FOREIGN KEY (continuation_of_id) REFERENCES public.alumni_tracker_app_alumnuscheckinenrollment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment alumni_tracker_app_a_continued_in_id_309a369c_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollment
    ADD CONSTRAINT alumni_tracker_app_a_continued_in_id_309a369c_fk_alumni_tr FOREIGN KEY (continued_in_id) REFERENCES public.alumni_tracker_app_alumnuscheckinenrollment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinemployment alumni_tracker_app_a_continued_in_id_5a7ebd5b_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemployment
    ADD CONSTRAINT alumni_tracker_app_a_continued_in_id_5a7ebd5b_fk_alumni_tr FOREIGN KEY (continued_in_id) REFERENCES public.alumni_tracker_app_alumnuscheckinemployment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment alumni_tracker_app_a_credential_awarder_i_f29f6179_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollment
    ADD CONSTRAINT alumni_tracker_app_a_credential_awarder_i_f29f6179_fk_alumni_tr FOREIGN KEY (credential_awarder_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment alumni_tracker_app_a_credential_goal_id_0a8da218_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollment
    ADD CONSTRAINT alumni_tracker_app_a_credential_goal_id_0a8da218_fk_alumni_tr FOREIGN KEY (credential_goal_id) REFERENCES public.alumni_tracker_app_credential(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscredential alumni_tracker_app_a_credential_id_33491c67_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscredential
    ADD CONSTRAINT alumni_tracker_app_a_credential_id_33491c67_fk_alumni_tr FOREIGN KEY (credential_id) REFERENCES public.alumni_tracker_app_credential(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinemployment alumni_tracker_app_a_employer_id_096196da_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemployment
    ADD CONSTRAINT alumni_tracker_app_a_employer_id_096196da_fk_alumni_tr FOREIGN KEY (employer_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinemployment alumni_tracker_app_a_extent_id_112c1863_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemployment
    ADD CONSTRAINT alumni_tracker_app_a_extent_id_112c1863_fk_alumni_tr FOREIGN KEY (extent_id) REFERENCES public.alumni_tracker_app_metaemploymentextent(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment alumni_tracker_app_a_extent_id_ddc01256_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollment
    ADD CONSTRAINT alumni_tracker_app_a_extent_id_ddc01256_fk_alumni_tr FOREIGN KEY (extent_id) REFERENCES public.alumni_tracker_app_metaenrollmentextent(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckin alumni_tracker_app_a_last_updated_by_id_ba3ef25d_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckin
    ADD CONSTRAINT alumni_tracker_app_a_last_updated_by_id_ba3ef25d_fk_alumni_tr FOREIGN KEY (last_updated_by_id) REFERENCES public.alumni_tracker_app_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnus alumni_tracker_app_a_organization_role_ca_5c70a451_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnus
    ADD CONSTRAINT alumni_tracker_app_a_organization_role_ca_5c70a451_fk_alumni_tr FOREIGN KEY (organization_role_capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnus alumni_tracker_app_a_person_id_0050d589_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnus
    ADD CONSTRAINT alumni_tracker_app_a_person_id_0050d589_fk_alumni_tr FOREIGN KEY (person_id) REFERENCES public.alumni_tracker_app_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinemployment alumni_tracker_app_a_position_id_48d98b95_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemployment
    ADD CONSTRAINT alumni_tracker_app_a_position_id_48d98b95_fk_alumni_tr FOREIGN KEY (position_id) REFERENCES public.alumni_tracker_app_metaemploymentposition(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnus alumni_tracker_app_a_severence_id_1c9c6c6e_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnus
    ADD CONSTRAINT alumni_tracker_app_a_severence_id_1c9c6c6e_fk_alumni_tr FOREIGN KEY (severence_id) REFERENCES public.alumni_tracker_app_metaorganizationrolecapacityalumnusseverence(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment alumni_tracker_app_a_study_state_id_240374a4_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollment
    ADD CONSTRAINT alumni_tracker_app_a_study_state_id_240374a4_fk_alumni_tr FOREIGN KEY (study_state_id) REFERENCES public.alumni_tracker_app_usstate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinemploymenttag alumni_tracker_app_a_tag_id_1e4fad4a_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemploymenttag
    ADD CONSTRAINT alumni_tracker_app_a_tag_id_1e4fad4a_fk_alumni_tr FOREIGN KEY (tag_id) REFERENCES public.alumni_tracker_app_checkinemploymenttag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckincommongoodtag alumni_tracker_app_a_tag_id_447b8d24_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckincommongoodtag
    ADD CONSTRAINT alumni_tracker_app_a_tag_id_447b8d24_fk_alumni_tr FOREIGN KEY (tag_id) REFERENCES public.alumni_tracker_app_checkincommongoodtag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinenrollmenttag alumni_tracker_app_a_tag_id_9bd10b4e_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollmenttag
    ADD CONSTRAINT alumni_tracker_app_a_tag_id_9bd10b4e_fk_alumni_tr FOREIGN KEY (tag_id) REFERENCES public.alumni_tracker_app_checkinenrollmenttag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinemployment alumni_tracker_app_a_work_state_id_c9ab505d_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemployment
    ADD CONSTRAINT alumni_tracker_app_a_work_state_id_c9ab505d_fk_alumni_tr FOREIGN KEY (work_state_id) REFERENCES public.alumni_tracker_app_usstate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_credential alumni_tracker_app_c_awarder_id_f96a753c_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_credential
    ADD CONSTRAINT alumni_tracker_app_c_awarder_id_f96a753c_fk_alumni_tr FOREIGN KEY (awarder_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_checkinbookmark alumni_tracker_app_c_checkin_id_890b9407_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinbookmark
    ADD CONSTRAINT alumni_tracker_app_c_checkin_id_890b9407_fk_alumni_tr FOREIGN KEY (checkin_id) REFERENCES public.alumni_tracker_app_alumnuscheckin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_checkinemploymenttag alumni_tracker_app_c_taxonomy_id_0b43299c_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinemploymenttag
    ADD CONSTRAINT alumni_tracker_app_c_taxonomy_id_0b43299c_fk_alumni_tr FOREIGN KEY (taxonomy_id) REFERENCES public.alumni_tracker_app_checkinemploymenttaxonomy(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_checkincommongoodtag alumni_tracker_app_c_taxonomy_id_6354795a_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkincommongoodtag
    ADD CONSTRAINT alumni_tracker_app_c_taxonomy_id_6354795a_fk_alumni_tr FOREIGN KEY (taxonomy_id) REFERENCES public.alumni_tracker_app_checkincommongoodtaxonomy(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_checkinenrollmenttag alumni_tracker_app_c_taxonomy_id_6576e32f_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinenrollmenttag
    ADD CONSTRAINT alumni_tracker_app_c_taxonomy_id_6576e32f_fk_alumni_tr FOREIGN KEY (taxonomy_id) REFERENCES public.alumni_tracker_app_checkinenrollmenttaxonomy(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_credential alumni_tracker_app_c_type_id_55950be8_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_credential
    ADD CONSTRAINT alumni_tracker_app_c_type_id_55950be8_fk_alumni_tr FOREIGN KEY (type_id) REFERENCES public.alumni_tracker_app_metacredentialtype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_checkinbookmark alumni_tracker_app_c_user_profile_id_2bdfb432_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinbookmark
    ADD CONSTRAINT alumni_tracker_app_c_user_profile_id_2bdfb432_fk_alumni_tr FOREIGN KEY (user_profile_id) REFERENCES public.alumni_tracker_app_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_datadashboarddatasheet alumni_tracker_app_d_dashboard_id_97db7bcf_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_datadashboarddatasheet
    ADD CONSTRAINT alumni_tracker_app_d_dashboard_id_97db7bcf_fk_alumni_tr FOREIGN KEY (dashboard_id) REFERENCES public.alumni_tracker_app_datadashboard(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_datadashboarddatasheet alumni_tracker_app_d_sheet_id_af5ff178_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_datadashboarddatasheet
    ADD CONSTRAINT alumni_tracker_app_d_sheet_id_af5ff178_fk_alumni_tr FOREIGN KEY (sheet_id) REFERENCES public.alumni_tracker_app_datasheet(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityrelationship3375 alumni_tracker_app_m_capacity_id_7b12631b_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityrelationship3375
    ADD CONSTRAINT alumni_tracker_app_m_capacity_id_7b12631b_fk_alumni_tr FOREIGN KEY (capacity_id) REFERENCES public.alumni_tracker_app_metaorganizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationro5728 alumni_tracker_app_m_capacity_id_b6df9f85_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationro5728
    ADD CONSTRAINT alumni_tracker_app_m_capacity_id_b6df9f85_fk_alumni_tr FOREIGN KEY (capacity_id) REFERENCES public.alumni_tracker_app_metaorganizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityepoch alumni_tracker_app_m_capacity_id_ffd93319_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityepoch
    ADD CONSTRAINT alumni_tracker_app_m_capacity_id_ffd93319_fk_alumni_tr FOREIGN KEY (capacity_id) REFERENCES public.alumni_tracker_app_metaorganizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationroacdd alumni_tracker_app_m_role_capacity_id_083a4102_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationroacdd
    ADD CONSTRAINT alumni_tracker_app_m_role_capacity_id_083a4102_fk_alumni_tr FOREIGN KEY (role_capacity_id) REFERENCES public.alumni_tracker_app_metaorganizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationro0b6e alumni_tracker_app_m_role_capacity_id_9b471041_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationro0b6e
    ADD CONSTRAINT alumni_tracker_app_m_role_capacity_id_9b471041_fk_alumni_tr FOREIGN KEY (role_capacity_id) REFERENCES public.alumni_tracker_app_metaorganizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityalumnusseverence alumni_tracker_app_m_role_capacity_id_b565d210_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityalumnusseverence
    ADD CONSTRAINT alumni_tracker_app_m_role_capacity_id_b565d210_fk_alumni_tr FOREIGN KEY (role_capacity_id) REFERENCES public.alumni_tracker_app_metaorganizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationroceaf alumni_tracker_app_m_role_id_6bd079ba_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationroceaf
    ADD CONSTRAINT alumni_tracker_app_m_role_id_6bd079ba_fk_alumni_tr FOREIGN KEY (role_id) REFERENCES public.alumni_tracker_app_metaorganizationmembershiporganizationro5728(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityfsyday alumni_tracker_app_o_capacity_id_071c3569_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityfsyday
    ADD CONSTRAINT alumni_tracker_app_o_capacity_id_071c3569_fk_alumni_tr FOREIGN KEY (capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityterm alumni_tracker_app_o_capacity_id_85e6f310_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityterm
    ADD CONSTRAINT alumni_tracker_app_o_capacity_id_85e6f310_fk_alumni_tr FOREIGN KEY (capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiproleenum alumni_tracker_app_o_capacity_id_cb2814f3_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiproleenum
    ADD CONSTRAINT alumni_tracker_app_o_capacity_id_cb2814f3_fk_alumni_tr FOREIGN KEY (capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityepoch alumni_tracker_app_o_capacity_id_cd3e2cf9_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityepoch
    ADD CONSTRAINT alumni_tracker_app_o_capacity_id_cd3e2cf9_fk_alumni_tr FOREIGN KEY (capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa4723 alumni_tracker_app_o_content_area_id_a22a0df9_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa4723
    ADD CONSTRAINT alumni_tracker_app_o_content_area_id_a22a0df9_fk_alumni_tr FOREIGN KEY (content_area_id) REFERENCES public.alumni_tracker_app_metaacademiccoursecontentarea(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3 alumni_tracker_app_o_content_area_id_e545746e_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3
    ADD CONSTRAINT alumni_tracker_app_o_content_area_id_e545746e_fk_alumni_tr FOREIGN KEY (content_area_id) REFERENCES public.alumni_tracker_app_metaacademiccoursecontentarea(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3 alumni_tracker_app_o_course_id_5013d96e_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3
    ADD CONSTRAINT alumni_tracker_app_o_course_id_5013d96e_fk_alumni_tr FOREIGN KEY (course_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitygroupacademiccourse(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa4723 alumni_tracker_app_o_course_id_ad893dbf_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa4723
    ADD CONSTRAINT alumni_tracker_app_o_course_id_ad893dbf_fk_alumni_tr FOREIGN KEY (course_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiproleeneed9 alumni_tracker_app_o_dashboard_id_cd1e57e5_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiproleeneed9
    ADD CONSTRAINT alumni_tracker_app_o_dashboard_id_cd1e57e5_fk_alumni_tr FOREIGN KEY (dashboard_id) REFERENCES public.alumni_tracker_app_datadashboard(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprole alumni_tracker_app_o_entrance_id_cb9125a8_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprole
    ADD CONSTRAINT alumni_tracker_app_o_entrance_id_cb9125a8_fk_alumni_tr FOREIGN KEY (entrance_id) REFERENCES public.alumni_tracker_app_metaorganizationmembershiporganizationroacdd(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiproleeneed9 alumni_tracker_app_o_enumed_role_id_038f86ca_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiproleeneed9
    ADD CONSTRAINT alumni_tracker_app_o_enumed_role_id_038f86ca_fk_alumni_tr FOREIGN KEY (enumed_role_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitymembershiproleenum(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprole alumni_tracker_app_o_enumed_role_id_df0c31bd_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprole
    ADD CONSTRAINT alumni_tracker_app_o_enumed_role_id_df0c31bd_fk_alumni_tr FOREIGN KEY (enumed_role_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitymembershiproleenum(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityepoch alumni_tracker_app_o_epoch_id_8221d3ee_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityepoch
    ADD CONSTRAINT alumni_tracker_app_o_epoch_id_8221d3ee_fk_alumni_tr FOREIGN KEY (epoch_id) REFERENCES public.alumni_tracker_app_metaorganizationrolecapacityepoch(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityfsyday alumni_tracker_app_o_fsy_id_c6b6db72_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityfsyday
    ADD CONSTRAINT alumni_tracker_app_o_fsy_id_c6b6db72_fk_alumni_tr FOREIGN KEY (fsy_id) REFERENCES public.alumni_tracker_app_fiscalschoolyear(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembership alumni_tracker_app_o_group_id_2a5bb89e_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembership
    ADD CONSTRAINT alumni_tracker_app_o_group_id_2a5bb89e_fk_alumni_tr FOREIGN KEY (group_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitygroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademiccourse alumni_tracker_app_o_group_id_666fbbb7_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupacademiccourse
    ADD CONSTRAINT alumni_tracker_app_o_group_id_666fbbb7_fk_alumni_tr FOREIGN KEY (group_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitygroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad alumni_tracker_app_o_group_membership_id_b0ef58a6_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad
    ADD CONSTRAINT alumni_tracker_app_o_group_membership_id_b0ef58a6_fk_alumni_tr FOREIGN KEY (group_membership_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitygroupmembership(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroup alumni_tracker_app_o_group_type_id_7b2db0db_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroup
    ADD CONSTRAINT alumni_tracker_app_o_group_type_id_7b2db0db_fk_alumni_tr FOREIGN KEY (group_type_id) REFERENCES public.alumni_tracker_app_metaorganizationgrouptype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprole alumni_tracker_app_o_membership_id_0022b77d_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprole
    ADD CONSTRAINT alumni_tracker_app_o_membership_id_0022b77d_fk_alumni_tr FOREIGN KEY (membership_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitymembership(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad alumni_tracker_app_o_orc_gac_alias_id_1a18880d_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad
    ADD CONSTRAINT alumni_tracker_app_o_orc_gac_alias_id_1a18880d_fk_alumni_tr FOREIGN KEY (orc_gac_alias_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitygroupacademiccourse(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrole alumni_tracker_app_o_organization_id_6f4ddd11_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrole
    ADD CONSTRAINT alumni_tracker_app_o_organization_id_6f4ddd11_fk_alumni_tr FOREIGN KEY (organization_id) REFERENCES public.alumni_tracker_app_organization(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckincommongoo6791 alumni_tracker_app_o_organization_role_ca_18cdfb5a_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckincommongoo6791
    ADD CONSTRAINT alumni_tracker_app_o_organization_role_ca_18cdfb5a_fk_alumni_tr FOREIGN KEY (organization_role_capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e alumni_tracker_app_o_organization_role_ca_5f3a5a25_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e
    ADD CONSTRAINT alumni_tracker_app_o_organization_role_ca_5f3a5a25_fk_alumni_tr FOREIGN KEY (organization_role_capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinemploymena215 alumni_tracker_app_o_organization_role_ca_884ce6aa_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckinemploymena215
    ADD CONSTRAINT alumni_tracker_app_o_organization_role_ca_884ce6aa_fk_alumni_tr FOREIGN KEY (organization_role_capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembership alumni_tracker_app_o_organization_role_ca_db06788b_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembership
    ADD CONSTRAINT alumni_tracker_app_o_organization_role_ca_db06788b_fk_alumni_tr FOREIGN KEY (organization_role_capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacity alumni_tracker_app_o_organization_role_id_f7c3a325_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacity
    ADD CONSTRAINT alumni_tracker_app_o_organization_role_id_f7c3a325_fk_alumni_tr FOREIGN KEY (organization_role_id) REFERENCES public.alumni_tracker_app_organizationrole(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembership alumni_tracker_app_o_person_id_acc64336_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembership
    ADD CONSTRAINT alumni_tracker_app_o_person_id_acc64336_fk_alumni_tr FOREIGN KEY (person_id) REFERENCES public.alumni_tracker_app_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprelatid708 alumni_tracker_app_o_perspective_id_40d6e89f_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708
    ADD CONSTRAINT alumni_tracker_app_o_perspective_id_40d6e89f_fk_alumni_tr FOREIGN KEY (perspective_id) REFERENCES public.alumni_tracker_app_metaorganizationmembershiporganizationroceaf(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityrelationship alumni_tracker_app_o_perspective_id_d5f93817_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityrelationship
    ADD CONSTRAINT alumni_tracker_app_o_perspective_id_d5f93817_fk_alumni_tr FOREIGN KEY (perspective_id) REFERENCES public.alumni_tracker_app_metaorganizationrolecapacityrelationship3375(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityuser alumni_tracker_app_o_role_capacity_id_19d81734_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityuser
    ADD CONSTRAINT alumni_tracker_app_o_role_capacity_id_19d81734_fk_alumni_tr FOREIGN KEY (role_capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacity alumni_tracker_app_o_role_capacity_id_b1bab5f5_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacity
    ADD CONSTRAINT alumni_tracker_app_o_role_capacity_id_b1bab5f5_fk_alumni_tr FOREIGN KEY (role_capacity_id) REFERENCES public.alumni_tracker_app_metaorganizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembership alumni_tracker_app_o_role_capacity_id_c400bb95_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembership
    ADD CONSTRAINT alumni_tracker_app_o_role_capacity_id_c400bb95_fk_alumni_tr FOREIGN KEY (role_capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiproleenum alumni_tracker_app_o_role_id_6f28db56_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiproleenum
    ADD CONSTRAINT alumni_tracker_app_o_role_id_6f28db56_fk_alumni_tr FOREIGN KEY (role_id) REFERENCES public.alumni_tracker_app_metaorganizationmembershiporganizationro5728(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrole alumni_tracker_app_o_role_id_f2661605_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrole
    ADD CONSTRAINT alumni_tracker_app_o_role_id_f2661605_fk_alumni_tr FOREIGN KEY (role_id) REFERENCES public.alumni_tracker_app_metaorganizationrole(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprole alumni_tracker_app_o_severence_id_2d37f561_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprole
    ADD CONSTRAINT alumni_tracker_app_o_severence_id_2d37f561_fk_alumni_tr FOREIGN KEY (severence_id) REFERENCES public.alumni_tracker_app_metaorganizationmembershiporganizationro0b6e(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityrelationship alumni_tracker_app_o_source_capacity_id_f4473173_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityrelationship
    ADD CONSTRAINT alumni_tracker_app_o_source_capacity_id_f4473173_fk_alumni_tr FOREIGN KEY (source_capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprelatid708 alumni_tracker_app_o_source_membership_id_b438b3d3_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708
    ADD CONSTRAINT alumni_tracker_app_o_source_membership_id_b438b3d3_fk_alumni_tr FOREIGN KEY (source_membership_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitymembership(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityepoch alumni_tracker_app_o_start_fsy_day_id_55cfe29a_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityepoch
    ADD CONSTRAINT alumni_tracker_app_o_start_fsy_day_id_55cfe29a_fk_alumni_tr FOREIGN KEY (start_fsy_day_id) REFERENCES public.alumni_tracker_app_organizationrolecapacityfsyday(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprole alumni_tracker_app_o_start_fsy_day_id_e4dffe76_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprole
    ADD CONSTRAINT alumni_tracker_app_o_start_fsy_day_id_e4dffe76_fk_alumni_tr FOREIGN KEY (start_fsy_day_id) REFERENCES public.alumni_tracker_app_organizationrolecapacityfsyday(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityepoch alumni_tracker_app_o_start_fsy_id_004efd82_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityepoch
    ADD CONSTRAINT alumni_tracker_app_o_start_fsy_id_004efd82_fk_alumni_tr FOREIGN KEY (start_fsy_id) REFERENCES public.alumni_tracker_app_fiscalschoolyear(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprole alumni_tracker_app_o_stop_fsy_day_id_15570b0d_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprole
    ADD CONSTRAINT alumni_tracker_app_o_stop_fsy_day_id_15570b0d_fk_alumni_tr FOREIGN KEY (stop_fsy_day_id) REFERENCES public.alumni_tracker_app_organizationrolecapacityfsyday(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityepoch alumni_tracker_app_o_stop_fsy_day_id_32f0dd2c_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityepoch
    ADD CONSTRAINT alumni_tracker_app_o_stop_fsy_day_id_32f0dd2c_fk_alumni_tr FOREIGN KEY (stop_fsy_day_id) REFERENCES public.alumni_tracker_app_organizationrolecapacityfsyday(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityepoch alumni_tracker_app_o_stop_fsy_id_b736cf51_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityepoch
    ADD CONSTRAINT alumni_tracker_app_o_stop_fsy_id_b736cf51_fk_alumni_tr FOREIGN KEY (stop_fsy_id) REFERENCES public.alumni_tracker_app_fiscalschoolyear(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityrelationship alumni_tracker_app_o_target_capacity_id_f3086977_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityrelationship
    ADD CONSTRAINT alumni_tracker_app_o_target_capacity_id_f3086977_fk_alumni_tr FOREIGN KEY (target_capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprelatid708 alumni_tracker_app_o_target_membership_id_37fe24a7_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708
    ADD CONSTRAINT alumni_tracker_app_o_target_membership_id_37fe24a7_fk_alumni_tr FOREIGN KEY (target_membership_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitymembership(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckincommongoo6791 alumni_tracker_app_o_taxonomy_id_0b088737_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckincommongoo6791
    ADD CONSTRAINT alumni_tracker_app_o_taxonomy_id_0b088737_fk_alumni_tr FOREIGN KEY (taxonomy_id) REFERENCES public.alumni_tracker_app_checkincommongoodtaxonomy(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e alumni_tracker_app_o_taxonomy_id_472531d4_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e
    ADD CONSTRAINT alumni_tracker_app_o_taxonomy_id_472531d4_fk_alumni_tr FOREIGN KEY (taxonomy_id) REFERENCES public.alumni_tracker_app_checkinenrollmenttaxonomy(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomyterm alumni_tracker_app_o_taxonomy_id_86bfb498_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitytaxonomyterm
    ADD CONSTRAINT alumni_tracker_app_o_taxonomy_id_86bfb498_fk_alumni_tr FOREIGN KEY (taxonomy_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitytaxonomy(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinemploymena215 alumni_tracker_app_o_taxonomy_id_cfe276ec_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckinemploymena215
    ADD CONSTRAINT alumni_tracker_app_o_taxonomy_id_cfe276ec_fk_alumni_tr FOREIGN KEY (taxonomy_id) REFERENCES public.alumni_tracker_app_checkinemploymenttaxonomy(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityterm alumni_tracker_app_o_term_id_b87095a0_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityterm
    ADD CONSTRAINT alumni_tracker_app_o_term_id_b87095a0_fk_alumni_tr FOREIGN KEY (term_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitytaxonomyterm(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityuser alumni_tracker_app_o_user_id_031eb3e0_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityuser
    ADD CONSTRAINT alumni_tracker_app_o_user_id_031eb3e0_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_performancemeasuredashboard alumni_tracker_app_p_dashboard_id_7e88b24b_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_performancemeasuredashboard
    ADD CONSTRAINT alumni_tracker_app_p_dashboard_id_7e88b24b_fk_alumni_tr FOREIGN KEY (dashboard_id) REFERENCES public.alumni_tracker_app_datadashboard(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_preferencedomainpreference alumni_tracker_app_p_domain_id_8f791062_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_preferencedomainpreference
    ADD CONSTRAINT alumni_tracker_app_p_domain_id_8f791062_fk_alumni_tr FOREIGN KEY (domain_id) REFERENCES public.alumni_tracker_app_preferencedomain(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_person alumni_tracker_app_p_email_last_updated_b_be5ffa65_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_person
    ADD CONSTRAINT alumni_tracker_app_p_email_last_updated_b_be5ffa65_fk_alumni_tr FOREIGN KEY (email_last_updated_by_id) REFERENCES public.alumni_tracker_app_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_person alumni_tracker_app_p_mailing_last_updated_7d703ac3_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_person
    ADD CONSTRAINT alumni_tracker_app_p_mailing_last_updated_7d703ac3_fk_alumni_tr FOREIGN KEY (mailing_last_updated_by_id) REFERENCES public.alumni_tracker_app_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_person alumni_tracker_app_p_mailing_state_id_7d2bd003_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_person
    ADD CONSTRAINT alumni_tracker_app_p_mailing_state_id_7d2bd003_fk_alumni_tr FOREIGN KEY (mailing_state_id) REFERENCES public.alumni_tracker_app_usstate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_performancemeasuredashboard alumni_tracker_app_p_performance_measure__0eb5d441_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_performancemeasuredashboard
    ADD CONSTRAINT alumni_tracker_app_p_performance_measure__0eb5d441_fk_alumni_tr FOREIGN KEY (performance_measure_id) REFERENCES public.alumni_tracker_app_performancemeasure(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_person alumni_tracker_app_p_phone_last_updated_b_d349d5b6_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_person
    ADD CONSTRAINT alumni_tracker_app_p_phone_last_updated_b_d349d5b6_fk_alumni_tr FOREIGN KEY (phone_last_updated_by_id) REFERENCES public.alumni_tracker_app_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studentidentifiers alumni_tracker_app_s_capacity_id_e99f1ed1_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_studentidentifiers
    ADD CONSTRAINT alumni_tracker_app_s_capacity_id_e99f1ed1_fk_alumni_tr FOREIGN KEY (capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studenttransitivedemos alumni_tracker_app_s_home_language_id_0a7e3fa0_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_studenttransitivedemos
    ADD CONSTRAINT alumni_tracker_app_s_home_language_id_0a7e3fa0_fk_alumni_tr FOREIGN KEY (home_language_id) REFERENCES public.alumni_tracker_app_language(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studentenrollmenttrack alumni_tracker_app_s_membership_role_id_56acc6c0_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_studentenrollmenttrack
    ADD CONSTRAINT alumni_tracker_app_s_membership_role_id_56acc6c0_fk_alumni_tr FOREIGN KEY (membership_role_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitymembershiprole(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studentcredithistory alumni_tracker_app_s_orc_epoch_id_47cb984c_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_studentcredithistory
    ADD CONSTRAINT alumni_tracker_app_s_orc_epoch_id_47cb984c_fk_alumni_tr FOREIGN KEY (orc_epoch_id) REFERENCES public.alumni_tracker_app_organizationrolecapacityepoch(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studentcredithistory alumni_tracker_app_s_orc_gac_course_id_226bd112_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_studentcredithistory
    ADD CONSTRAINT alumni_tracker_app_s_orc_gac_course_id_226bd112_fk_alumni_tr FOREIGN KEY (orc_gac_course_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitygroupacademiccourse(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studentcredithistory alumni_tracker_app_s_orc_gmac_course_id_fa4eabd4_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_studentcredithistory
    ADD CONSTRAINT alumni_tracker_app_s_orc_gmac_course_id_fa4eabd4_fk_alumni_tr FOREIGN KEY (orc_gmac_course_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studentcredithistory alumni_tracker_app_s_orc_membership_id_83f2d826_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_studentcredithistory
    ADD CONSTRAINT alumni_tracker_app_s_orc_membership_id_83f2d826_fk_alumni_tr FOREIGN KEY (orc_membership_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitymembershiprole(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_student alumni_tracker_app_s_person_id_6c11f0f0_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_student
    ADD CONSTRAINT alumni_tracker_app_s_person_id_6c11f0f0_fk_alumni_tr FOREIGN KEY (person_id) REFERENCES public.alumni_tracker_app_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studentenrollmenttrack alumni_tracker_app_s_projected_grad_fsy_i_b32cf699_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_studentenrollmenttrack
    ADD CONSTRAINT alumni_tracker_app_s_projected_grad_fsy_i_b32cf699_fk_alumni_tr FOREIGN KEY (projected_grad_fsy_id) REFERENCES public.alumni_tracker_app_fiscalschoolyear(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studenttransitivedemos alumni_tracker_app_s_raw_mailing_state_id_9f15e730_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_studenttransitivedemos
    ADD CONSTRAINT alumni_tracker_app_s_raw_mailing_state_id_9f15e730_fk_alumni_tr FOREIGN KEY (raw_mailing_state_id) REFERENCES public.alumni_tracker_app_usstate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studentenrollmenttrack alumni_tracker_app_s_start_fsy_id_51308180_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_studentenrollmenttrack
    ADD CONSTRAINT alumni_tracker_app_s_start_fsy_id_51308180_fk_alumni_tr FOREIGN KEY (start_fsy_id) REFERENCES public.alumni_tracker_app_fiscalschoolyear(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studentenrollmenttrack alumni_tracker_app_s_stop_fsy_id_16ca12f7_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_studentenrollmenttrack
    ADD CONSTRAINT alumni_tracker_app_s_stop_fsy_id_16ca12f7_fk_alumni_tr FOREIGN KEY (stop_fsy_id) REFERENCES public.alumni_tracker_app_fiscalschoolyear(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studentcredithistory alumni_tracker_app_s_student_id_2f4e2f0b_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_studentcredithistory
    ADD CONSTRAINT alumni_tracker_app_s_student_id_2f4e2f0b_fk_alumni_tr FOREIGN KEY (student_id) REFERENCES public.alumni_tracker_app_student(person_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studentidentifiers alumni_tracker_app_s_student_id_83d3a159_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_studentidentifiers
    ADD CONSTRAINT alumni_tracker_app_s_student_id_83d3a159_fk_alumni_tr FOREIGN KEY (student_id) REFERENCES public.alumni_tracker_app_student(person_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studenttransitivedemos alumni_tracker_app_s_student_id_eb4123d4_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_studenttransitivedemos
    ADD CONSTRAINT alumni_tracker_app_s_student_id_eb4123d4_fk_alumni_tr FOREIGN KEY (student_id) REFERENCES public.alumni_tracker_app_student(person_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_userprofile alumni_tracker_app_u_person_id_e8e2778d_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_userprofile
    ADD CONSTRAINT alumni_tracker_app_u_person_id_e8e2778d_fk_alumni_tr FOREIGN KEY (person_id) REFERENCES public.alumni_tracker_app_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_userprofilepreference alumni_tracker_app_u_preference_id_04c25c83_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_userprofilepreference
    ADD CONSTRAINT alumni_tracker_app_u_preference_id_04c25c83_fk_alumni_tr FOREIGN KEY (preference_id) REFERENCES public.alumni_tracker_app_preferencedomainpreference(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_userprofilepreference alumni_tracker_app_u_user_profile_id_c643bc59_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_userprofilepreference
    ADD CONSTRAINT alumni_tracker_app_u_user_profile_id_c643bc59_fk_alumni_tr FOREIGN KEY (user_profile_id) REFERENCES public.alumni_tracker_app_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_userprofile alumni_tracker_app_userprofile_user_id_cd274a02_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.alumni_tracker_app_userprofile
    ADD CONSTRAINT alumni_tracker_app_userprofile_user_id_cd274a02_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sva_dba
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

