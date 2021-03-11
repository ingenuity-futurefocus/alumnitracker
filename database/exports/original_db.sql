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
-- Name: alumni_tracker_app_alumnus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_alumnus (
    id integer NOT NULL,
    severence_date date,
    organization_role_capacity_id integer NOT NULL,
    person_id integer NOT NULL,
    severence_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_alumnus OWNER TO postgres;

--
-- Name: alumni_tracker_app_alumnus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_alumnus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_alumnus_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_alumnus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_alumnus_id_seq OWNED BY public.alumni_tracker_app_alumnus.id;


--
-- Name: alumni_tracker_app_alumnuscheckin; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.alumni_tracker_app_alumnuscheckin OWNER TO postgres;

--
-- Name: alumni_tracker_app_alumnuscheckin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_alumnuscheckin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_alumnuscheckin_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_alumnuscheckin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_alumnuscheckin_id_seq OWNED BY public.alumni_tracker_app_alumnuscheckin.id;


--
-- Name: alumni_tracker_app_alumnuscheckincommongoodtag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_alumnuscheckincommongoodtag (
    id integer NOT NULL,
    checkin_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_alumnuscheckincommongoodtag OWNER TO postgres;

--
-- Name: alumni_tracker_app_alumnuscheckincommongoodtag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_alumnuscheckincommongoodtag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_alumnuscheckincommongoodtag_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_alumnuscheckincommongoodtag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_alumnuscheckincommongoodtag_id_seq OWNED BY public.alumni_tracker_app_alumnuscheckincommongoodtag.id;


--
-- Name: alumni_tracker_app_alumnuscheckinemployment; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.alumni_tracker_app_alumnuscheckinemployment OWNER TO postgres;

--
-- Name: alumni_tracker_app_alumnuscheckinemployment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_alumnuscheckinemployment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_alumnuscheckinemployment_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_alumnuscheckinemployment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_alumnuscheckinemployment_id_seq OWNED BY public.alumni_tracker_app_alumnuscheckinemployment.id;


--
-- Name: alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit (
    id integer NOT NULL,
    benefit_id integer NOT NULL,
    checkin_employment_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit OWNER TO postgres;

--
-- Name: alumni_tracker_app_alumnuscheckinemploymentemploymentben_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_alumnuscheckinemploymentemploymentben_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_alumnuscheckinemploymentemploymentben_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_alumnuscheckinemploymentemploymentben_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_alumnuscheckinemploymentemploymentben_id_seq OWNED BY public.alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit.id;


--
-- Name: alumni_tracker_app_alumnuscheckinemploymenttag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_alumnuscheckinemploymenttag (
    id integer NOT NULL,
    checkin_employment_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_alumnuscheckinemploymenttag OWNER TO postgres;

--
-- Name: alumni_tracker_app_alumnuscheckinemploymenttag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_alumnuscheckinemploymenttag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_alumnuscheckinemploymenttag_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_alumnuscheckinemploymenttag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_alumnuscheckinemploymenttag_id_seq OWNED BY public.alumni_tracker_app_alumnuscheckinemploymenttag.id;


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.alumni_tracker_app_alumnuscheckinenrollment OWNER TO postgres;

--
-- Name: alumni_tracker_app_alumnuscheckinenrollment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_alumnuscheckinenrollment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_alumnuscheckinenrollment_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_alumnuscheckinenrollment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_alumnuscheckinenrollment_id_seq OWNED BY public.alumni_tracker_app_alumnuscheckinenrollment.id;


--
-- Name: alumni_tracker_app_alumnuscheckinenrollmenttag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_alumnuscheckinenrollmenttag (
    id integer NOT NULL,
    checkin_enrollment_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_alumnuscheckinenrollmenttag OWNER TO postgres;

--
-- Name: alumni_tracker_app_alumnuscheckinenrollmenttag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_alumnuscheckinenrollmenttag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_alumnuscheckinenrollmenttag_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_alumnuscheckinenrollmenttag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_alumnuscheckinenrollmenttag_id_seq OWNED BY public.alumni_tracker_app_alumnuscheckinenrollmenttag.id;


--
-- Name: alumni_tracker_app_alumnuscredential; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_alumnuscredential (
    id integer NOT NULL,
    earned_on date NOT NULL,
    alumnus_person_id integer NOT NULL,
    credential_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_alumnuscredential OWNER TO postgres;

--
-- Name: alumni_tracker_app_alumnuscredential_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_alumnuscredential_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_alumnuscredential_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_alumnuscredential_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_alumnuscredential_id_seq OWNED BY public.alumni_tracker_app_alumnuscredential.id;


--
-- Name: alumni_tracker_app_checkinbookmark; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_checkinbookmark (
    id integer NOT NULL,
    created date NOT NULL,
    notes text,
    checkin_id integer NOT NULL,
    user_profile_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_checkinbookmark OWNER TO postgres;

--
-- Name: alumni_tracker_app_checkinbookmark_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_checkinbookmark_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_checkinbookmark_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_checkinbookmark_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_checkinbookmark_id_seq OWNED BY public.alumni_tracker_app_checkinbookmark.id;


--
-- Name: alumni_tracker_app_checkincommongoodtag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_checkincommongoodtag (
    id integer NOT NULL,
    tag character varying(100) NOT NULL,
    taxonomy_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_checkincommongoodtag OWNER TO postgres;

--
-- Name: alumni_tracker_app_checkincommongoodtag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_checkincommongoodtag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_checkincommongoodtag_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_checkincommongoodtag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_checkincommongoodtag_id_seq OWNED BY public.alumni_tracker_app_checkincommongoodtag.id;


--
-- Name: alumni_tracker_app_checkincommongoodtaxonomy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_checkincommongoodtaxonomy (
    id integer NOT NULL,
    taxonomy character varying(100) NOT NULL
);


ALTER TABLE public.alumni_tracker_app_checkincommongoodtaxonomy OWNER TO postgres;

--
-- Name: alumni_tracker_app_checkincommongoodtaxonomy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_checkincommongoodtaxonomy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_checkincommongoodtaxonomy_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_checkincommongoodtaxonomy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_checkincommongoodtaxonomy_id_seq OWNED BY public.alumni_tracker_app_checkincommongoodtaxonomy.id;


--
-- Name: alumni_tracker_app_checkinemploymenttag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_checkinemploymenttag (
    id integer NOT NULL,
    tag character varying(100) NOT NULL,
    taxonomy_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_checkinemploymenttag OWNER TO postgres;

--
-- Name: alumni_tracker_app_checkinemploymenttag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_checkinemploymenttag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_checkinemploymenttag_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_checkinemploymenttag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_checkinemploymenttag_id_seq OWNED BY public.alumni_tracker_app_checkinemploymenttag.id;


--
-- Name: alumni_tracker_app_checkinemploymenttaxonomy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_checkinemploymenttaxonomy (
    id integer NOT NULL,
    taxonomy character varying(100) NOT NULL
);


ALTER TABLE public.alumni_tracker_app_checkinemploymenttaxonomy OWNER TO postgres;

--
-- Name: alumni_tracker_app_checkinemploymenttaxonomy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_checkinemploymenttaxonomy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_checkinemploymenttaxonomy_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_checkinemploymenttaxonomy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_checkinemploymenttaxonomy_id_seq OWNED BY public.alumni_tracker_app_checkinemploymenttaxonomy.id;


--
-- Name: alumni_tracker_app_checkinenrollmenttag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_checkinenrollmenttag (
    id integer NOT NULL,
    tag character varying(100) NOT NULL,
    taxonomy_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_checkinenrollmenttag OWNER TO postgres;

--
-- Name: alumni_tracker_app_checkinenrollmenttag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_checkinenrollmenttag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_checkinenrollmenttag_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_checkinenrollmenttag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_checkinenrollmenttag_id_seq OWNED BY public.alumni_tracker_app_checkinenrollmenttag.id;


--
-- Name: alumni_tracker_app_checkinenrollmenttaxonomy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_checkinenrollmenttaxonomy (
    id integer NOT NULL,
    taxonomy character varying(100) NOT NULL
);


ALTER TABLE public.alumni_tracker_app_checkinenrollmenttaxonomy OWNER TO postgres;

--
-- Name: alumni_tracker_app_checkinenrollmenttaxonomy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_checkinenrollmenttaxonomy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_checkinenrollmenttaxonomy_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_checkinenrollmenttaxonomy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_checkinenrollmenttaxonomy_id_seq OWNED BY public.alumni_tracker_app_checkinenrollmenttaxonomy.id;


--
-- Name: alumni_tracker_app_credential; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_credential (
    id integer NOT NULL,
    focus character varying(100) NOT NULL,
    awarder_id integer NOT NULL,
    type_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_credential OWNER TO postgres;

--
-- Name: alumni_tracker_app_credential_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_credential_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_credential_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_credential_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_credential_id_seq OWNED BY public.alumni_tracker_app_credential.id;


--
-- Name: alumni_tracker_app_datadashboard; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_datadashboard (
    id integer NOT NULL,
    drive_file_id character varying(100) NOT NULL,
    url character varying(255) NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.alumni_tracker_app_datadashboard OWNER TO postgres;

--
-- Name: alumni_tracker_app_datadashboard_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_datadashboard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_datadashboard_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_datadashboard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_datadashboard_id_seq OWNED BY public.alumni_tracker_app_datadashboard.id;


--
-- Name: alumni_tracker_app_datadashboarddatasheet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_datadashboarddatasheet (
    id integer NOT NULL,
    dashboard_id integer NOT NULL,
    sheet_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_datadashboarddatasheet OWNER TO postgres;

--
-- Name: alumni_tracker_app_datadashboarddatasheet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_datadashboarddatasheet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_datadashboarddatasheet_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_datadashboarddatasheet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_datadashboarddatasheet_id_seq OWNED BY public.alumni_tracker_app_datadashboarddatasheet.id;


--
-- Name: alumni_tracker_app_datasheet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_datasheet (
    id integer NOT NULL,
    drive_file_id character varying(100) NOT NULL
);


ALTER TABLE public.alumni_tracker_app_datasheet OWNER TO postgres;

--
-- Name: alumni_tracker_app_datasheet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_datasheet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_datasheet_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_datasheet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_datasheet_id_seq OWNED BY public.alumni_tracker_app_datasheet.id;


--
-- Name: alumni_tracker_app_fiscalschoolyear; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_fiscalschoolyear (
    id integer NOT NULL,
    year integer NOT NULL,
    short_name character varying(4) NOT NULL,
    long_name character varying(7) NOT NULL,
    CONSTRAINT alumni_tracker_app_fiscalschoolyear_year_check CHECK ((year >= 0))
);


ALTER TABLE public.alumni_tracker_app_fiscalschoolyear OWNER TO postgres;

--
-- Name: alumni_tracker_app_fiscalschoolyear_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_fiscalschoolyear_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_fiscalschoolyear_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_fiscalschoolyear_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_fiscalschoolyear_id_seq OWNED BY public.alumni_tracker_app_fiscalschoolyear.id;


--
-- Name: alumni_tracker_app_language; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_language (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.alumni_tracker_app_language OWNER TO postgres;

--
-- Name: alumni_tracker_app_language_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_language_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_language_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_language_id_seq OWNED BY public.alumni_tracker_app_language.id;


--
-- Name: alumni_tracker_app_metaacademiccoursecontentarea; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_metaacademiccoursecontentarea (
    id integer NOT NULL,
    content_area character varying(100) NOT NULL,
    seminal boolean NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaacademiccoursecontentarea OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaacademiccoursecontentarea_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_metaacademiccoursecontentarea_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaacademiccoursecontentarea_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaacademiccoursecontentarea_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_metaacademiccoursecontentarea_id_seq OWNED BY public.alumni_tracker_app_metaacademiccoursecontentarea.id;


--
-- Name: alumni_tracker_app_metacredentialtype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_metacredentialtype (
    id integer NOT NULL,
    type character varying(100) NOT NULL,
    seminal boolean NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metacredentialtype OWNER TO postgres;

--
-- Name: alumni_tracker_app_metacredentialtype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_metacredentialtype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metacredentialtype_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_metacredentialtype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_metacredentialtype_id_seq OWNED BY public.alumni_tracker_app_metacredentialtype.id;


--
-- Name: alumni_tracker_app_metaemploymentbenefit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_metaemploymentbenefit (
    id integer NOT NULL,
    benefit character varying(100) NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaemploymentbenefit OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaemploymentbenefit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_metaemploymentbenefit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaemploymentbenefit_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaemploymentbenefit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_metaemploymentbenefit_id_seq OWNED BY public.alumni_tracker_app_metaemploymentbenefit.id;


--
-- Name: alumni_tracker_app_metaemploymentextent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_metaemploymentextent (
    id integer NOT NULL,
    extent character varying(100) NOT NULL,
    seminal boolean NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaemploymentextent OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaemploymentextent_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_metaemploymentextent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaemploymentextent_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaemploymentextent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_metaemploymentextent_id_seq OWNED BY public.alumni_tracker_app_metaemploymentextent.id;


--
-- Name: alumni_tracker_app_metaemploymentposition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_metaemploymentposition (
    id integer NOT NULL,
    "position" character varying(100) NOT NULL,
    seminal boolean NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaemploymentposition OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaemploymentposition_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_metaemploymentposition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaemploymentposition_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaemploymentposition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_metaemploymentposition_id_seq OWNED BY public.alumni_tracker_app_metaemploymentposition.id;


--
-- Name: alumni_tracker_app_metaenrollmentextent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_metaenrollmentextent (
    id integer NOT NULL,
    extent character varying(100) NOT NULL,
    seminal boolean NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaenrollmentextent OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaenrollmentextent_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_metaenrollmentextent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaenrollmentextent_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaenrollmentextent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_metaenrollmentextent_id_seq OWNED BY public.alumni_tracker_app_metaenrollmentextent.id;


--
-- Name: alumni_tracker_app_metaorganizationgrouptype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_metaorganizationgrouptype (
    id integer NOT NULL,
    group_type character varying(100) NOT NULL,
    seminal boolean NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaorganizationgrouptype OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaorganizationgrouptype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_metaorganizationgrouptype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaorganizationgrouptype_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaorganizationgrouptype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_metaorganizationgrouptype_id_seq OWNED BY public.alumni_tracker_app_metaorganizationgrouptype.id;


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationro5728; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_metaorganizationmembershiporganizationro5728 (
    id integer NOT NULL,
    member_role character varying(100) NOT NULL,
    seminal boolean NOT NULL,
    capacity_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaorganizationmembershiporganizationro5728 OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizati_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq1 OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizati_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq1 OWNED BY public.alumni_tracker_app_metaorganizationmembershiporganizationro5728.id;


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationroceaf; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_metaorganizationmembershiporganizationroceaf (
    id integer NOT NULL,
    perspective character varying(100) NOT NULL,
    seminal boolean NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaorganizationmembershiporganizationroceaf OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizati_id_seq2; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq2 OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizati_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq2 OWNED BY public.alumni_tracker_app_metaorganizationmembershiporganizationroceaf.id;


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationro0b6e; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_metaorganizationmembershiporganizationro0b6e (
    id integer NOT NULL,
    severence character varying(100) NOT NULL,
    abbreviation character varying(25),
    seminal boolean NOT NULL,
    role_capacity_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaorganizationmembershiporganizationro0b6e OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizati_id_seq3; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq3
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq3 OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizati_id_seq3; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq3 OWNED BY public.alumni_tracker_app_metaorganizationmembershiporganizationro0b6e.id;


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationroacdd; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_metaorganizationmembershiporganizationroacdd (
    id integer NOT NULL,
    entrance character varying(100) NOT NULL,
    abbreviation character varying(25),
    seminal boolean NOT NULL,
    role_capacity_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaorganizationmembershiporganizationroacdd OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizatio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_metaorganizationmembershiporganizatio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaorganizationmembershiporganizatio_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizatio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_metaorganizationmembershiporganizatio_id_seq OWNED BY public.alumni_tracker_app_metaorganizationmembershiporganizationroacdd.id;


--
-- Name: alumni_tracker_app_metaorganizationrole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_metaorganizationrole (
    id integer NOT NULL,
    role character varying(100) NOT NULL,
    seminal boolean NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaorganizationrole OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaorganizationrole_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_metaorganizationrole_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaorganizationrole_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaorganizationrole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_metaorganizationrole_id_seq OWNED BY public.alumni_tracker_app_metaorganizationrole.id;


--
-- Name: alumni_tracker_app_metaorganizationrolecapacity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_metaorganizationrolecapacity (
    id integer NOT NULL,
    capacity character varying(100) NOT NULL,
    seminal boolean NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaorganizationrolecapacity OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaorganizationrolecapacity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_metaorganizationrolecapacity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaorganizationrolecapacity_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaorganizationrolecapacity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_metaorganizationrolecapacity_id_seq OWNED BY public.alumni_tracker_app_metaorganizationrolecapacity.id;


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityalumnusseverence; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_metaorganizationrolecapacityalumnusseverence (
    id integer NOT NULL,
    severence character varying(100) NOT NULL,
    abbreviation character varying(25),
    role_capacity_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaorganizationrolecapacityalumnusseverence OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaorganizationrolecapacityalumnusse_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_metaorganizationrolecapacityalumnusse_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaorganizationrolecapacityalumnusse_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaorganizationrolecapacityalumnusse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_metaorganizationrolecapacityalumnusse_id_seq OWNED BY public.alumni_tracker_app_metaorganizationrolecapacityalumnusseverence.id;


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityepoch; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_metaorganizationrolecapacityepoch (
    id integer NOT NULL,
    epoch character varying(50) NOT NULL,
    week_length integer NOT NULL,
    seminal boolean NOT NULL,
    capacity_id integer NOT NULL,
    CONSTRAINT alumni_tracker_app_metaorganizationrolecapaci_week_length_check CHECK ((week_length >= 0))
);


ALTER TABLE public.alumni_tracker_app_metaorganizationrolecapacityepoch OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaorganizationrolecapacityepoch_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_metaorganizationrolecapacityepoch_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaorganizationrolecapacityepoch_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaorganizationrolecapacityepoch_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_metaorganizationrolecapacityepoch_id_seq OWNED BY public.alumni_tracker_app_metaorganizationrolecapacityepoch.id;


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityrelationship3375; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_metaorganizationrolecapacityrelationship3375 (
    id integer NOT NULL,
    perspective character varying(100) NOT NULL,
    seminal boolean NOT NULL,
    capacity_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_metaorganizationrolecapacityrelationship3375 OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaorganizationrolecapacityrelations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_metaorganizationrolecapacityrelations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_metaorganizationrolecapacityrelations_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_metaorganizationrolecapacityrelations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_metaorganizationrolecapacityrelations_id_seq OWNED BY public.alumni_tracker_app_metaorganizationrolecapacityrelationship3375.id;


--
-- Name: alumni_tracker_app_organization; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_organization (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    image_url character varying(100)
);


ALTER TABLE public.alumni_tracker_app_organization OWNER TO postgres;

--
-- Name: alumni_tracker_app_organization_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organization_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organization_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_organization_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organization_id_seq OWNED BY public.alumni_tracker_app_organization.id;


--
-- Name: alumni_tracker_app_organizationrole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_organizationrole (
    id integer NOT NULL,
    image_url character varying(100),
    organization_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrole OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrole_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrole_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrole_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrole_id_seq OWNED BY public.alumni_tracker_app_organizationrole.id;


--
-- Name: alumni_tracker_app_organizationrolecapacity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacity (
    id integer NOT NULL,
    image_url character varying(100),
    organization_role_id integer NOT NULL,
    role_capacity_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacity OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacity_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacity_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacity.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckincommongoo6791; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitycheckincommongoo6791 (
    id integer NOT NULL,
    organization_role_capacity_id integer NOT NULL,
    taxonomy_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitycheckincommongoo6791 OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitycheckincommon_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitycheckincommon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitycheckincommon_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitycheckincommon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitycheckincommon_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacitycheckincommongoo6791.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinemploymena215; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitycheckinemploymena215 (
    id integer NOT NULL,
    organization_role_capacity_id integer NOT NULL,
    taxonomy_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitycheckinemploymena215 OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinemploy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitycheckinemploy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitycheckinemploy_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinemploy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitycheckinemploy_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacitycheckinemploymena215.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e (
    id integer NOT NULL,
    organization_role_capacity_id integer NOT NULL,
    taxonomy_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinenroll_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitycheckinenroll_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitycheckinenroll_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinenroll_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitycheckinenroll_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e.id;


--
-- Name: alumni_tracker_app_organizationrolecapacityepoch; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.alumni_tracker_app_organizationrolecapacityepoch OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacityepoch_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacityepoch_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacityepoch_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacityepoch_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacityepoch_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacityepoch.id;


--
-- Name: alumni_tracker_app_organizationrolecapacityfsyday; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.alumni_tracker_app_organizationrolecapacityfsyday OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacityfsyday_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacityfsyday_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacityfsyday_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacityfsyday_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacityfsyday_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacityfsyday.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitygroup (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    group_type_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroup OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroup_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroup_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroup_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacitygroup.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3 (
    id integer NOT NULL,
    content_area_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3 OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademi_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroupacademi_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroupacademi_id_seq1 OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademi_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroupacademi_id_seq1 OWNED BY public.alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademiccourse; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitygroupacademiccourse (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    abbreviation character varying(100) NOT NULL,
    code character varying(25) NOT NULL,
    max_accru_credits numeric(3,2),
    group_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroupacademiccourse OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademic_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroupacademic_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroupacademic_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroupacademic_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacitygroupacademiccourse.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq1 OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq1 OWNED BY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa4723; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitygroupmembershipa4723 (
    id integer NOT NULL,
    content_area_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroupmembershipa4723 OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq2; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq2 OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq2 OWNED BY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa4723.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembership; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitygroupmembership (
    id integer NOT NULL,
    group_id integer NOT NULL,
    role_capacity_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroupmembership OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembersh_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroupmembersh_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitygroupmembersh_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembersh_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitygroupmembersh_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacitygroupmembership.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembership; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitymembership (
    id integer NOT NULL,
    organization_role_capacity_id integer NOT NULL,
    person_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitymembership OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitymembership_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitymembership_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitymembership_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitymembership_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitymembership_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacitymembership.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprelatid708; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708 (
    id integer NOT NULL,
    perspective_id integer NOT NULL,
    source_membership_id integer NOT NULL,
    target_membership_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708 OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitymembershiprel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitymembershiprel_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitymembershiprel_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiproleenum; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitymembershiproleenum (
    id integer NOT NULL,
    capacity_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitymembershiproleenum OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitymembershipro_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitymembershipro_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitymembershipro_id_seq1 OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitymembershipro_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitymembershipro_id_seq1 OWNED BY public.alumni_tracker_app_organizationrolecapacitymembershiproleenum.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiproleeneed9; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitymembershiproleeneed9 (
    id integer NOT NULL,
    dashboard_id integer NOT NULL,
    enumed_role_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitymembershiproleeneed9 OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitymembershipro_id_seq2; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitymembershipro_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitymembershipro_id_seq2 OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitymembershipro_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitymembershipro_id_seq2 OWNED BY public.alumni_tracker_app_organizationrolecapacitymembershiproleeneed9.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprole; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitymembershiprole OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprol_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitymembershiprol_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitymembershiprol_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitymembershiprol_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacitymembershiprole.id;


--
-- Name: alumni_tracker_app_organizationrolecapacityrelationship; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacityrelationship (
    id integer NOT NULL,
    perspective_id integer NOT NULL,
    source_capacity_id integer NOT NULL,
    target_capacity_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacityrelationship OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacityrelationship_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacityrelationship_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacityrelationship_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacityrelationship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacityrelationship_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacityrelationship.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitytaxonomy (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    seminal boolean NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitytaxonomy OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitytaxonomy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitytaxonomy_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitytaxonomy_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacitytaxonomy.id;


--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomyterm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacitytaxonomyterm (
    id integer NOT NULL,
    term character varying(100) NOT NULL,
    taxonomy_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitytaxonomyterm OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomyterm_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacitytaxonomyterm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacitytaxonomyterm_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomyterm_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacitytaxonomyterm_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacitytaxonomyterm.id;


--
-- Name: alumni_tracker_app_organizationrolecapacityterm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacityterm (
    id integer NOT NULL,
    capacity_id integer NOT NULL,
    term_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacityterm OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacityterm_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacityterm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacityterm_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacityterm_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacityterm_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacityterm.id;


--
-- Name: alumni_tracker_app_organizationrolecapacityuser; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_organizationrolecapacityuser (
    id integer NOT NULL,
    role_capacity_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_organizationrolecapacityuser OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacityuser_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_organizationrolecapacityuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_organizationrolecapacityuser_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_organizationrolecapacityuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_organizationrolecapacityuser_id_seq OWNED BY public.alumni_tracker_app_organizationrolecapacityuser.id;


--
-- Name: alumni_tracker_app_performancemeasure; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_performancemeasure (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    abbreviation character varying(10) NOT NULL
);


ALTER TABLE public.alumni_tracker_app_performancemeasure OWNER TO postgres;

--
-- Name: alumni_tracker_app_performancemeasure_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_performancemeasure_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_performancemeasure_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_performancemeasure_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_performancemeasure_id_seq OWNED BY public.alumni_tracker_app_performancemeasure.id;


--
-- Name: alumni_tracker_app_performancemeasuredashboard; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_performancemeasuredashboard (
    id integer NOT NULL,
    dashboard_id integer NOT NULL,
    performance_measure_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_performancemeasuredashboard OWNER TO postgres;

--
-- Name: alumni_tracker_app_performancemeasuredashboard_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_performancemeasuredashboard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_performancemeasuredashboard_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_performancemeasuredashboard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_performancemeasuredashboard_id_seq OWNED BY public.alumni_tracker_app_performancemeasuredashboard.id;


--
-- Name: alumni_tracker_app_person; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.alumni_tracker_app_person OWNER TO postgres;

--
-- Name: alumni_tracker_app_person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_person_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_person_id_seq OWNED BY public.alumni_tracker_app_person.id;


--
-- Name: alumni_tracker_app_preferencedomain; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_preferencedomain (
    id integer NOT NULL,
    domain character varying(100) NOT NULL
);


ALTER TABLE public.alumni_tracker_app_preferencedomain OWNER TO postgres;

--
-- Name: alumni_tracker_app_preferencedomain_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_preferencedomain_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_preferencedomain_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_preferencedomain_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_preferencedomain_id_seq OWNED BY public.alumni_tracker_app_preferencedomain.id;


--
-- Name: alumni_tracker_app_preferencedomainpreference; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_preferencedomainpreference (
    id integer NOT NULL,
    preference character varying(100) NOT NULL,
    domain_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_preferencedomainpreference OWNER TO postgres;

--
-- Name: alumni_tracker_app_preferencedomainpreference_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_preferencedomainpreference_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_preferencedomainpreference_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_preferencedomainpreference_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_preferencedomainpreference_id_seq OWNED BY public.alumni_tracker_app_preferencedomainpreference.id;


--
-- Name: alumni_tracker_app_student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_student (
    person_id integer NOT NULL,
    stars_id integer,
    CONSTRAINT alumni_tracker_app_student_stars_id_check CHECK ((stars_id >= 0))
);


ALTER TABLE public.alumni_tracker_app_student OWNER TO postgres;

--
-- Name: alumni_tracker_app_studentcredithistory; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.alumni_tracker_app_studentcredithistory OWNER TO postgres;

--
-- Name: alumni_tracker_app_studentcredithistory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_studentcredithistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_studentcredithistory_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_studentcredithistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_studentcredithistory_id_seq OWNED BY public.alumni_tracker_app_studentcredithistory.id;


--
-- Name: alumni_tracker_app_studentenrollmenttrack; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.alumni_tracker_app_studentenrollmenttrack OWNER TO postgres;

--
-- Name: alumni_tracker_app_studentidentifiers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_studentidentifiers (
    id integer NOT NULL,
    identifier character varying(100) NOT NULL,
    capacity_id integer NOT NULL,
    student_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_studentidentifiers OWNER TO postgres;

--
-- Name: alumni_tracker_app_studentidentifiers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_studentidentifiers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_studentidentifiers_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_studentidentifiers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_studentidentifiers_id_seq OWNED BY public.alumni_tracker_app_studentidentifiers.id;


--
-- Name: alumni_tracker_app_studenttransitivedemos; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.alumni_tracker_app_studenttransitivedemos OWNER TO postgres;

--
-- Name: alumni_tracker_app_studenttransitivedemos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_studenttransitivedemos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_studenttransitivedemos_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_studenttransitivedemos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_studenttransitivedemos_id_seq OWNED BY public.alumni_tracker_app_studenttransitivedemos.id;


--
-- Name: alumni_tracker_app_userprofile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_userprofile (
    id integer NOT NULL,
    auth_token_relay boolean NOT NULL,
    person_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_userprofile OWNER TO postgres;

--
-- Name: alumni_tracker_app_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_userprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_userprofile_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_userprofile_id_seq OWNED BY public.alumni_tracker_app_userprofile.id;


--
-- Name: alumni_tracker_app_userprofilepreference; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_userprofilepreference (
    id integer NOT NULL,
    value jsonb NOT NULL,
    preference_id integer NOT NULL,
    user_profile_id integer NOT NULL
);


ALTER TABLE public.alumni_tracker_app_userprofilepreference OWNER TO postgres;

--
-- Name: alumni_tracker_app_userprofilepreference_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_userprofilepreference_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_userprofilepreference_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_userprofilepreference_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_userprofilepreference_id_seq OWNED BY public.alumni_tracker_app_userprofilepreference.id;


--
-- Name: alumni_tracker_app_usstate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumni_tracker_app_usstate (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    abbreviation character varying(2) NOT NULL
);


ALTER TABLE public.alumni_tracker_app_usstate OWNER TO postgres;

--
-- Name: alumni_tracker_app_usstate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alumni_tracker_app_usstate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alumni_tracker_app_usstate_id_seq OWNER TO postgres;

--
-- Name: alumni_tracker_app_usstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alumni_tracker_app_usstate_id_seq OWNED BY public.alumni_tracker_app_usstate.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO postgres;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: v_alumnus_ci_at_a_glance; Type: VIEW; Schema: public; Owner: postgres
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


ALTER TABLE public.v_alumnus_ci_at_a_glance OWNER TO postgres;

--
-- Name: v_alumnus_ci_common_good; Type: VIEW; Schema: public; Owner: postgres
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


ALTER TABLE public.v_alumnus_ci_common_good OWNER TO postgres;

--
-- Name: v_alumnus_ci_employment; Type: VIEW; Schema: public; Owner: postgres
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


ALTER TABLE public.v_alumnus_ci_employment OWNER TO postgres;

--
-- Name: v_alumnus_latest_checkin_severence_dates; Type: VIEW; Schema: public; Owner: postgres
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


ALTER TABLE public.v_alumnus_latest_checkin_severence_dates OWNER TO postgres;

--
-- Name: v_sva_alumni_grad_classes; Type: VIEW; Schema: public; Owner: postgres
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


ALTER TABLE public.v_sva_alumni_grad_classes OWNER TO postgres;

--
-- Name: alumni_tracker_app_alumnus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnus ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_alumnus_id_seq'::regclass);


--
-- Name: alumni_tracker_app_alumnuscheckin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckin ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_alumnuscheckin_id_seq'::regclass);


--
-- Name: alumni_tracker_app_alumnuscheckincommongoodtag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckincommongoodtag ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_alumnuscheckincommongoodtag_id_seq'::regclass);


--
-- Name: alumni_tracker_app_alumnuscheckinemployment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemployment ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_alumnuscheckinemployment_id_seq'::regclass);


--
-- Name: alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_alumnuscheckinemploymentemploymentben_id_seq'::regclass);


--
-- Name: alumni_tracker_app_alumnuscheckinemploymenttag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemploymenttag ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_alumnuscheckinemploymenttag_id_seq'::regclass);


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollment ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_alumnuscheckinenrollment_id_seq'::regclass);


--
-- Name: alumni_tracker_app_alumnuscheckinenrollmenttag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollmenttag ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_alumnuscheckinenrollmenttag_id_seq'::regclass);


--
-- Name: alumni_tracker_app_alumnuscredential id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscredential ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_alumnuscredential_id_seq'::regclass);


--
-- Name: alumni_tracker_app_checkinbookmark id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinbookmark ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_checkinbookmark_id_seq'::regclass);


--
-- Name: alumni_tracker_app_checkincommongoodtag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkincommongoodtag ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_checkincommongoodtag_id_seq'::regclass);


--
-- Name: alumni_tracker_app_checkincommongoodtaxonomy id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkincommongoodtaxonomy ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_checkincommongoodtaxonomy_id_seq'::regclass);


--
-- Name: alumni_tracker_app_checkinemploymenttag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinemploymenttag ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_checkinemploymenttag_id_seq'::regclass);


--
-- Name: alumni_tracker_app_checkinemploymenttaxonomy id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinemploymenttaxonomy ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_checkinemploymenttaxonomy_id_seq'::regclass);


--
-- Name: alumni_tracker_app_checkinenrollmenttag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinenrollmenttag ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_checkinenrollmenttag_id_seq'::regclass);


--
-- Name: alumni_tracker_app_checkinenrollmenttaxonomy id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinenrollmenttaxonomy ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_checkinenrollmenttaxonomy_id_seq'::regclass);


--
-- Name: alumni_tracker_app_credential id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_credential ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_credential_id_seq'::regclass);


--
-- Name: alumni_tracker_app_datadashboard id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_datadashboard ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_datadashboard_id_seq'::regclass);


--
-- Name: alumni_tracker_app_datadashboarddatasheet id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_datadashboarddatasheet ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_datadashboarddatasheet_id_seq'::regclass);


--
-- Name: alumni_tracker_app_datasheet id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_datasheet ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_datasheet_id_seq'::regclass);


--
-- Name: alumni_tracker_app_fiscalschoolyear id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_fiscalschoolyear ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_fiscalschoolyear_id_seq'::regclass);


--
-- Name: alumni_tracker_app_language id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_language ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_language_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaacademiccoursecontentarea id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaacademiccoursecontentarea ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaacademiccoursecontentarea_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metacredentialtype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metacredentialtype ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metacredentialtype_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaemploymentbenefit id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaemploymentbenefit ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaemploymentbenefit_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaemploymentextent id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaemploymentextent ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaemploymentextent_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaemploymentposition id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaemploymentposition ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaemploymentposition_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaenrollmentextent id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaenrollmentextent ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaenrollmentextent_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaorganizationgrouptype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationgrouptype ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaorganizationgrouptype_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationro0b6e id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationro0b6e ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq3'::regclass);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationro5728 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationro5728 ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq1'::regclass);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationroacdd id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationroacdd ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaorganizationmembershiporganizatio_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationroceaf id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationroceaf ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq2'::regclass);


--
-- Name: alumni_tracker_app_metaorganizationrole id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrole ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaorganizationrole_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacity id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacity ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaorganizationrolecapacity_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityalumnusseverence id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityalumnusseverence ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaorganizationrolecapacityalumnusse_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityepoch id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityepoch ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaorganizationrolecapacityepoch_id_seq'::regclass);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityrelationship3375 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityrelationship3375 ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_metaorganizationrolecapacityrelations_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organization id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organization ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organization_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrole id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrole ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrole_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacity id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacity ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacity_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckincommongoo6791 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckincommongoo6791 ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitycheckincommon_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinemploymena215 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckinemploymena215 ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitycheckinemploy_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitycheckinenroll_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacityepoch id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityepoch ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacityepoch_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacityfsyday id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityfsyday ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacityfsyday_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroup id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroup ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitygroup_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3 ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitygroupacademi_id_seq1'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademiccourse id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupacademiccourse ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitygroupacademic_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembership id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembership ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitygroupmembersh_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa4723 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa4723 ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq2'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq1'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembership id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembership ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitymembership_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprelatid708 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708 ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitymembershiprel_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprole id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprole ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitymembershiprol_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiproleeneed9 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiproleeneed9 ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitymembershipro_id_seq2'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiproleenum id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiproleenum ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitymembershipro_id_seq1'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacityrelationship id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityrelationship ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacityrelationship_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomy id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitytaxonomy ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitytaxonomy_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomyterm id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitytaxonomyterm ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacitytaxonomyterm_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacityterm id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityterm ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacityterm_id_seq'::regclass);


--
-- Name: alumni_tracker_app_organizationrolecapacityuser id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityuser ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_organizationrolecapacityuser_id_seq'::regclass);


--
-- Name: alumni_tracker_app_performancemeasure id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_performancemeasure ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_performancemeasure_id_seq'::regclass);


--
-- Name: alumni_tracker_app_performancemeasuredashboard id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_performancemeasuredashboard ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_performancemeasuredashboard_id_seq'::regclass);


--
-- Name: alumni_tracker_app_person id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_person ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_person_id_seq'::regclass);


--
-- Name: alumni_tracker_app_preferencedomain id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_preferencedomain ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_preferencedomain_id_seq'::regclass);


--
-- Name: alumni_tracker_app_preferencedomainpreference id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_preferencedomainpreference ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_preferencedomainpreference_id_seq'::regclass);


--
-- Name: alumni_tracker_app_studentcredithistory id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_studentcredithistory ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_studentcredithistory_id_seq'::regclass);


--
-- Name: alumni_tracker_app_studentidentifiers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_studentidentifiers ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_studentidentifiers_id_seq'::regclass);


--
-- Name: alumni_tracker_app_studenttransitivedemos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_studenttransitivedemos ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_studenttransitivedemos_id_seq'::regclass);


--
-- Name: alumni_tracker_app_userprofile id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_userprofile ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_userprofile_id_seq'::regclass);


--
-- Name: alumni_tracker_app_userprofilepreference id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_userprofilepreference ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_userprofilepreference_id_seq'::regclass);


--
-- Name: alumni_tracker_app_usstate id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_usstate ALTER COLUMN id SET DEFAULT nextval('public.alumni_tracker_app_usstate_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: alumni_tracker_app_alumnus; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- Name: alumni_tracker_app_alumnus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_alumnus_id_seq', 933, true);


--
-- Data for Name: alumni_tracker_app_alumnuscheckin; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_alumnuscheckin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_alumnuscheckin_id_seq', 564, true);


--
-- Data for Name: alumni_tracker_app_alumnuscheckincommongoodtag; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: alumni_tracker_app_alumnuscheckincommongoodtag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_alumnuscheckincommongoodtag_id_seq', 96, true);


--
-- Data for Name: alumni_tracker_app_alumnuscheckinemployment; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: alumni_tracker_app_alumnuscheckinemployment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_alumnuscheckinemployment_id_seq', 15, true);


--
-- Name: alumni_tracker_app_alumnuscheckinemploymentemploymentben_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_alumnuscheckinemploymentemploymentben_id_seq', 25, true);


--
-- Data for Name: alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: alumni_tracker_app_alumnuscheckinemploymenttag; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_alumnuscheckinemploymenttag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_alumnuscheckinemploymenttag_id_seq', 8, true);


--
-- Data for Name: alumni_tracker_app_alumnuscheckinenrollment; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_alumnuscheckinenrollment_id_seq', 525, true);


--
-- Data for Name: alumni_tracker_app_alumnuscheckinenrollmenttag; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_alumnuscheckinenrollmenttag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_alumnuscheckinenrollmenttag_id_seq', 6, true);


--
-- Data for Name: alumni_tracker_app_alumnuscredential; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_alumnuscredential_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_alumnuscredential_id_seq', 362, true);


--
-- Data for Name: alumni_tracker_app_checkinbookmark; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Name: alumni_tracker_app_checkinbookmark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_checkinbookmark_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_checkincommongoodtag; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Name: alumni_tracker_app_checkincommongoodtag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_checkincommongoodtag_id_seq', 9, true);


--
-- Data for Name: alumni_tracker_app_checkincommongoodtaxonomy; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Name: alumni_tracker_app_checkincommongoodtaxonomy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_checkincommongoodtaxonomy_id_seq', 1, true);


--
-- Data for Name: alumni_tracker_app_checkinemploymenttag; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Name: alumni_tracker_app_checkinemploymenttag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_checkinemploymenttag_id_seq', 56, true);


--
-- Data for Name: alumni_tracker_app_checkinemploymenttaxonomy; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_checkinemploymenttaxonomy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_checkinemploymenttaxonomy_id_seq', 1, true);


--
-- Data for Name: alumni_tracker_app_checkinenrollmenttag; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Name: alumni_tracker_app_checkinenrollmenttag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_checkinenrollmenttag_id_seq', 56, true);


--
-- Data for Name: alumni_tracker_app_checkinenrollmenttaxonomy; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Name: alumni_tracker_app_checkinenrollmenttaxonomy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_checkinenrollmenttaxonomy_id_seq', 1, true);


--
-- Data for Name: alumni_tracker_app_credential; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_credential_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_credential_id_seq', 501, true);


--
-- Data for Name: alumni_tracker_app_datadashboard; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_datadashboard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_datadashboard_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_datadashboarddatasheet; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Name: alumni_tracker_app_datadashboarddatasheet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_datadashboarddatasheet_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_datasheet; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: alumni_tracker_app_datasheet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_datasheet_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_fiscalschoolyear; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_fiscalschoolyear_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_fiscalschoolyear_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_language; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: alumni_tracker_app_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_language_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_metaacademiccoursecontentarea; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: alumni_tracker_app_metaacademiccoursecontentarea_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaacademiccoursecontentarea_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_metacredentialtype; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_metacredentialtype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metacredentialtype_id_seq', 7, true);


--
-- Data for Name: alumni_tracker_app_metaemploymentbenefit; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_metaemploymentbenefit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaemploymentbenefit_id_seq', 4, true);


--
-- Data for Name: alumni_tracker_app_metaemploymentextent; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_metaemploymentextent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaemploymentextent_id_seq', 3, true);


--
-- Data for Name: alumni_tracker_app_metaemploymentposition; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_metaemploymentposition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaemploymentposition_id_seq', 6, true);


--
-- Data for Name: alumni_tracker_app_metaenrollmentextent; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_metaenrollmentextent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaenrollmentextent_id_seq', 2, true);


--
-- Data for Name: alumni_tracker_app_metaorganizationgrouptype; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: alumni_tracker_app_metaorganizationgrouptype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaorganizationgrouptype_id_seq', 3, true);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizati_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq1', 8, true);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizati_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq2', 1, false);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizati_id_seq3; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaorganizationmembershiporganizati_id_seq3', 1, false);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizatio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaorganizationmembershiporganizatio_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_metaorganizationmembershiporganizationro0b6e; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Data for Name: alumni_tracker_app_metaorganizationmembershiporganizationro5728; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: alumni_tracker_app_metaorganizationmembershiporganizationroacdd; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: alumni_tracker_app_metaorganizationmembershiporganizationroceaf; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: alumni_tracker_app_metaorganizationrole; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_metaorganizationrole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaorganizationrole_id_seq', 5, true);


--
-- Data for Name: alumni_tracker_app_metaorganizationrolecapacity; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: alumni_tracker_app_metaorganizationrolecapacity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaorganizationrolecapacity_id_seq', 6, true);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityalumnusse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaorganizationrolecapacityalumnusse_id_seq', 1, true);


--
-- Data for Name: alumni_tracker_app_metaorganizationrolecapacityalumnusseverence; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: alumni_tracker_app_metaorganizationrolecapacityepoch; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityepoch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaorganizationrolecapacityepoch_id_seq', 1, false);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityrelations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_metaorganizationrolecapacityrelations_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_metaorganizationrolecapacityrelationship3375; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: alumni_tracker_app_organization; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_organization_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organization_id_seq', 74, true);


--
-- Data for Name: alumni_tracker_app_organizationrole; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_organizationrole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrole_id_seq', 75, true);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacity; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_organizationrolecapacity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacity_id_seq', 75, true);


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckincommon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitycheckincommon_id_seq', 1, true);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitycheckincommongoo6791; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinemploy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitycheckinemploy_id_seq', 1, true);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitycheckinemploymena215; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinenroll_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitycheckinenroll_id_seq', 1, true);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Data for Name: alumni_tracker_app_organizationrolecapacityepoch; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_organizationrolecapacityepoch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacityepoch_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacityfsyday; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_organizationrolecapacityfsyday_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacityfsyday_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitygroup; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_organizationrolecapacitygroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitygroup_id_seq', 1, false);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademi_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitygroupacademi_id_seq1', 1, false);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitygroupacademic_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitygroupacademiccourse; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq1', 1, false);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitygroupmembers_id_seq2', 1, false);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembersh_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitygroupmembersh_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitygroupmembership; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Data for Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa4723; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Data for Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Data for Name: alumni_tracker_app_organizationrolecapacitymembership; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_organizationrolecapacitymembership_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitymembership_id_seq', 5, true);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitymembershiprel_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitymembershiprelatid708; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Name: alumni_tracker_app_organizationrolecapacitymembershipro_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitymembershipro_id_seq1', 1, true);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershipro_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitymembershipro_id_seq2', 1, false);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitymembershiprol_id_seq', 5, true);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitymembershiprole; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitymembershiproleeneed9; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitymembershiproleenum; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: alumni_tracker_app_organizationrolecapacityrelationship; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_organizationrolecapacityrelationship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacityrelationship_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitytaxonomy; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitytaxonomy_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacitytaxonomyterm; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomyterm_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacitytaxonomyterm_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacityterm; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_organizationrolecapacityterm_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacityterm_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_organizationrolecapacityuser; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- Name: alumni_tracker_app_organizationrolecapacityuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_organizationrolecapacityuser_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_performancemeasure; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: alumni_tracker_app_performancemeasure_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_performancemeasure_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_performancemeasuredashboard; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_performancemeasuredashboard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_performancemeasuredashboard_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_person; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: alumni_tracker_app_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_person_id_seq', 942, true);


--
-- Data for Name: alumni_tracker_app_preferencedomain; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: alumni_tracker_app_preferencedomain_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_preferencedomain_id_seq', 1, true);


--
-- Data for Name: alumni_tracker_app_preferencedomainpreference; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: alumni_tracker_app_preferencedomainpreference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_preferencedomainpreference_id_seq', 1, true);


--
-- Data for Name: alumni_tracker_app_student; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: alumni_tracker_app_studentcredithistory; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_studentcredithistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_studentcredithistory_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_studentenrollmenttrack; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: alumni_tracker_app_studentidentifiers; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_studentidentifiers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_studentidentifiers_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_studenttransitivedemos; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_studenttransitivedemos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_studenttransitivedemos_id_seq', 1, false);


--
-- Data for Name: alumni_tracker_app_userprofile; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: alumni_tracker_app_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_userprofile_id_seq', 6, true);


--
-- Data for Name: alumni_tracker_app_userprofilepreference; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Name: alumni_tracker_app_userprofilepreference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_userprofilepreference_id_seq', 1, true);


--
-- Data for Name: alumni_tracker_app_usstate; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Name: alumni_tracker_app_usstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alumni_tracker_app_usstate_id_seq', 51, true);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 332, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 7, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 70, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 83, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 29, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: alumni_tracker_app_alumnus alumni_tracker_app_alumnus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnus
    ADD CONSTRAINT alumni_tracker_app_alumnus_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_alumnuscheckin alumni_tracker_app_alumnuscheckin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckin
    ADD CONSTRAINT alumni_tracker_app_alumnuscheckin_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_alumnuscheckincommongoodtag alumni_tracker_app_alumnuscheckincommongoodtag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckincommongoodtag
    ADD CONSTRAINT alumni_tracker_app_alumnuscheckincommongoodtag_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_alumnuscheckinemployment alumni_tracker_app_alumnuscheckinemployment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemployment
    ADD CONSTRAINT alumni_tracker_app_alumnuscheckinemployment_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit alumni_tracker_app_alumnuscheckinemploymentemploymentbenef_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit
    ADD CONSTRAINT alumni_tracker_app_alumnuscheckinemploymentemploymentbenef_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_alumnuscheckinemploymenttag alumni_tracker_app_alumnuscheckinemploymenttag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemploymenttag
    ADD CONSTRAINT alumni_tracker_app_alumnuscheckinemploymenttag_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment alumni_tracker_app_alumnuscheckinenrollment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollment
    ADD CONSTRAINT alumni_tracker_app_alumnuscheckinenrollment_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_alumnuscheckinenrollmenttag alumni_tracker_app_alumnuscheckinenrollmenttag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollmenttag
    ADD CONSTRAINT alumni_tracker_app_alumnuscheckinenrollmenttag_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_alumnuscredential alumni_tracker_app_alumnuscredential_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscredential
    ADD CONSTRAINT alumni_tracker_app_alumnuscredential_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_checkinbookmark alumni_tracker_app_checkinbookmark_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinbookmark
    ADD CONSTRAINT alumni_tracker_app_checkinbookmark_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_checkincommongoodtag alumni_tracker_app_checkincommongoodtag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkincommongoodtag
    ADD CONSTRAINT alumni_tracker_app_checkincommongoodtag_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_checkincommongoodtaxonomy alumni_tracker_app_checkincommongoodtaxonomy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkincommongoodtaxonomy
    ADD CONSTRAINT alumni_tracker_app_checkincommongoodtaxonomy_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_checkincommongoodtaxonomy alumni_tracker_app_checkincommongoodtaxonomy_taxonomy_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkincommongoodtaxonomy
    ADD CONSTRAINT alumni_tracker_app_checkincommongoodtaxonomy_taxonomy_key UNIQUE (taxonomy);


--
-- Name: alumni_tracker_app_checkinemploymenttag alumni_tracker_app_checkinemploymenttag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinemploymenttag
    ADD CONSTRAINT alumni_tracker_app_checkinemploymenttag_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_checkinemploymenttaxonomy alumni_tracker_app_checkinemploymenttaxonomy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinemploymenttaxonomy
    ADD CONSTRAINT alumni_tracker_app_checkinemploymenttaxonomy_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_checkinemploymenttaxonomy alumni_tracker_app_checkinemploymenttaxonomy_taxonomy_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinemploymenttaxonomy
    ADD CONSTRAINT alumni_tracker_app_checkinemploymenttaxonomy_taxonomy_key UNIQUE (taxonomy);


--
-- Name: alumni_tracker_app_checkinenrollmenttag alumni_tracker_app_checkinenrollmenttag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinenrollmenttag
    ADD CONSTRAINT alumni_tracker_app_checkinenrollmenttag_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_checkinenrollmenttaxonomy alumni_tracker_app_checkinenrollmenttaxonomy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinenrollmenttaxonomy
    ADD CONSTRAINT alumni_tracker_app_checkinenrollmenttaxonomy_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_checkinenrollmenttaxonomy alumni_tracker_app_checkinenrollmenttaxonomy_taxonomy_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinenrollmenttaxonomy
    ADD CONSTRAINT alumni_tracker_app_checkinenrollmenttaxonomy_taxonomy_key UNIQUE (taxonomy);


--
-- Name: alumni_tracker_app_credential alumni_tracker_app_credential_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_credential
    ADD CONSTRAINT alumni_tracker_app_credential_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_datadashboard alumni_tracker_app_datadashboard_drive_file_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_datadashboard
    ADD CONSTRAINT alumni_tracker_app_datadashboard_drive_file_id_key UNIQUE (drive_file_id);


--
-- Name: alumni_tracker_app_datadashboard alumni_tracker_app_datadashboard_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_datadashboard
    ADD CONSTRAINT alumni_tracker_app_datadashboard_name_key UNIQUE (name);


--
-- Name: alumni_tracker_app_datadashboard alumni_tracker_app_datadashboard_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_datadashboard
    ADD CONSTRAINT alumni_tracker_app_datadashboard_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_datadashboard alumni_tracker_app_datadashboard_url_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_datadashboard
    ADD CONSTRAINT alumni_tracker_app_datadashboard_url_key UNIQUE (url);


--
-- Name: alumni_tracker_app_datadashboarddatasheet alumni_tracker_app_datadashboarddatasheet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_datadashboarddatasheet
    ADD CONSTRAINT alumni_tracker_app_datadashboarddatasheet_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_datasheet alumni_tracker_app_datasheet_drive_file_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_datasheet
    ADD CONSTRAINT alumni_tracker_app_datasheet_drive_file_id_key UNIQUE (drive_file_id);


--
-- Name: alumni_tracker_app_datasheet alumni_tracker_app_datasheet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_datasheet
    ADD CONSTRAINT alumni_tracker_app_datasheet_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_fiscalschoolyear alumni_tracker_app_fiscalschoolyear_long_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_fiscalschoolyear
    ADD CONSTRAINT alumni_tracker_app_fiscalschoolyear_long_name_key UNIQUE (long_name);


--
-- Name: alumni_tracker_app_fiscalschoolyear alumni_tracker_app_fiscalschoolyear_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_fiscalschoolyear
    ADD CONSTRAINT alumni_tracker_app_fiscalschoolyear_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_fiscalschoolyear alumni_tracker_app_fiscalschoolyear_short_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_fiscalschoolyear
    ADD CONSTRAINT alumni_tracker_app_fiscalschoolyear_short_name_key UNIQUE (short_name);


--
-- Name: alumni_tracker_app_fiscalschoolyear alumni_tracker_app_fiscalschoolyear_year_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_fiscalschoolyear
    ADD CONSTRAINT alumni_tracker_app_fiscalschoolyear_year_key UNIQUE (year);


--
-- Name: alumni_tracker_app_language alumni_tracker_app_language_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_language
    ADD CONSTRAINT alumni_tracker_app_language_name_key UNIQUE (name);


--
-- Name: alumni_tracker_app_language alumni_tracker_app_language_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_language
    ADD CONSTRAINT alumni_tracker_app_language_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaacademiccoursecontentarea alumni_tracker_app_metaacademiccoursecontentar_content_area_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaacademiccoursecontentarea
    ADD CONSTRAINT alumni_tracker_app_metaacademiccoursecontentar_content_area_key UNIQUE (content_area);


--
-- Name: alumni_tracker_app_metaacademiccoursecontentarea alumni_tracker_app_metaacademiccoursecontentarea_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaacademiccoursecontentarea
    ADD CONSTRAINT alumni_tracker_app_metaacademiccoursecontentarea_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metacredentialtype alumni_tracker_app_metacredentialtype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metacredentialtype
    ADD CONSTRAINT alumni_tracker_app_metacredentialtype_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metacredentialtype alumni_tracker_app_metacredentialtype_type_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metacredentialtype
    ADD CONSTRAINT alumni_tracker_app_metacredentialtype_type_key UNIQUE (type);


--
-- Name: alumni_tracker_app_metaemploymentbenefit alumni_tracker_app_metaemploymentbenefit_benefit_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaemploymentbenefit
    ADD CONSTRAINT alumni_tracker_app_metaemploymentbenefit_benefit_key UNIQUE (benefit);


--
-- Name: alumni_tracker_app_metaemploymentbenefit alumni_tracker_app_metaemploymentbenefit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaemploymentbenefit
    ADD CONSTRAINT alumni_tracker_app_metaemploymentbenefit_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaemploymentextent alumni_tracker_app_metaemploymentextent_extent_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaemploymentextent
    ADD CONSTRAINT alumni_tracker_app_metaemploymentextent_extent_key UNIQUE (extent);


--
-- Name: alumni_tracker_app_metaemploymentextent alumni_tracker_app_metaemploymentextent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaemploymentextent
    ADD CONSTRAINT alumni_tracker_app_metaemploymentextent_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaemploymentposition alumni_tracker_app_metaemploymentposition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaemploymentposition
    ADD CONSTRAINT alumni_tracker_app_metaemploymentposition_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaemploymentposition alumni_tracker_app_metaemploymentposition_position_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaemploymentposition
    ADD CONSTRAINT alumni_tracker_app_metaemploymentposition_position_key UNIQUE ("position");


--
-- Name: alumni_tracker_app_metaenrollmentextent alumni_tracker_app_metaenrollmentextent_extent_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaenrollmentextent
    ADD CONSTRAINT alumni_tracker_app_metaenrollmentextent_extent_key UNIQUE (extent);


--
-- Name: alumni_tracker_app_metaenrollmentextent alumni_tracker_app_metaenrollmentextent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaenrollmentextent
    ADD CONSTRAINT alumni_tracker_app_metaenrollmentextent_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaorganizationgrouptype alumni_tracker_app_metaorganizationgrouptype_group_type_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationgrouptype
    ADD CONSTRAINT alumni_tracker_app_metaorganizationgrouptype_group_type_key UNIQUE (group_type);


--
-- Name: alumni_tracker_app_metaorganizationgrouptype alumni_tracker_app_metaorganizationgrouptype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationgrouptype
    ADD CONSTRAINT alumni_tracker_app_metaorganizationgrouptype_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationro5728 alumni_tracker_app_metaorganizationmembershiporganization_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationro5728
    ADD CONSTRAINT alumni_tracker_app_metaorganizationmembershiporganization_pkey1 PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationroceaf alumni_tracker_app_metaorganizationmembershiporganization_pkey2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationroceaf
    ADD CONSTRAINT alumni_tracker_app_metaorganizationmembershiporganization_pkey2 PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationro0b6e alumni_tracker_app_metaorganizationmembershiporganization_pkey3; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationro0b6e
    ADD CONSTRAINT alumni_tracker_app_metaorganizationmembershiporganization_pkey3 PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationroacdd alumni_tracker_app_metaorganizationmembershiporganizationr_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationroacdd
    ADD CONSTRAINT alumni_tracker_app_metaorganizationmembershiporganizationr_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaorganizationrole alumni_tracker_app_metaorganizationrole_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrole
    ADD CONSTRAINT alumni_tracker_app_metaorganizationrole_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaorganizationrole alumni_tracker_app_metaorganizationrole_role_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrole
    ADD CONSTRAINT alumni_tracker_app_metaorganizationrole_role_key UNIQUE (role);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacity alumni_tracker_app_metaorganizationrolecapacity_capacity_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacity
    ADD CONSTRAINT alumni_tracker_app_metaorganizationrolecapacity_capacity_key UNIQUE (capacity);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacity alumni_tracker_app_metaorganizationrolecapacity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacity
    ADD CONSTRAINT alumni_tracker_app_metaorganizationrolecapacity_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityalumnusseverence alumni_tracker_app_metaorganizationrolecapacityalumnusseve_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityalumnusseverence
    ADD CONSTRAINT alumni_tracker_app_metaorganizationrolecapacityalumnusseve_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityepoch alumni_tracker_app_metaorganizationrolecapacityepoch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityepoch
    ADD CONSTRAINT alumni_tracker_app_metaorganizationrolecapacityepoch_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityrelationship3375 alumni_tracker_app_metaorganizationrolecapacityrelationshi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityrelationship3375
    ADD CONSTRAINT alumni_tracker_app_metaorganizationrolecapacityrelationshi_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organization alumni_tracker_app_organization_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organization
    ADD CONSTRAINT alumni_tracker_app_organization_name_key UNIQUE (name);


--
-- Name: alumni_tracker_app_organization alumni_tracker_app_organization_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organization
    ADD CONSTRAINT alumni_tracker_app_organization_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrole alumni_tracker_app_organizationrole_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrole
    ADD CONSTRAINT alumni_tracker_app_organizationrole_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacity alumni_tracker_app_organizationrolecapacity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacity
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacity_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckincommongoo6791 alumni_tracker_app_organizationrolecapacitycheckincommongo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckincommongoo6791
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitycheckincommongo_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinemploymena215 alumni_tracker_app_organizationrolecapacitycheckinemployme_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckinemploymena215
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitycheckinemployme_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e alumni_tracker_app_organizationrolecapacitycheckinenrollme_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitycheckinenrollme_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacityepoch alumni_tracker_app_organizationrolecapacityepoch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityepoch
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacityepoch_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacityfsyday alumni_tracker_app_organizationrolecapacityfsyday_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityfsyday
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacityfsyday_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroup alumni_tracker_app_organizationrolecapacitygroup_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroup
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitygroup_name_key UNIQUE (name);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroup alumni_tracker_app_organizationrolecapacitygroup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroup
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitygroup_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3 alumni_tracker_app_organizationrolecapacitygroupacademicc_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitygroupacademicc_pkey1 PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademiccourse alumni_tracker_app_organizationrolecapacitygroupacademicco_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupacademiccourse
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitygroupacademicco_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad alumni_tracker_app_organizationrolecapacitygroupmembershi_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitygroupmembershi_pkey1 PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa4723 alumni_tracker_app_organizationrolecapacitygroupmembershi_pkey2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa4723
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitygroupmembershi_pkey2 PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembership alumni_tracker_app_organizationrolecapacitygroupmembership_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembership
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitygroupmembership_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembership alumni_tracker_app_organizationrolecapacitymembership_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembership
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitymembership_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprelatid708 alumni_tracker_app_organizationrolecapacitymembershiprelat_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitymembershiprelat_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprole alumni_tracker_app_organizationrolecapacitymembershiprole_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprole
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitymembershiprole_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiproleeneed9 alumni_tracker_app_organizationrolecapacitymembershiprole_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiproleeneed9
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitymembershiprole_pkey1 PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiproleenum alumni_tracker_app_organizationrolecapacitymembershiprolee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiproleenum
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitymembershiprolee_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacityrelationship alumni_tracker_app_organizationrolecapacityrelationship_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityrelationship
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacityrelationship_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomy alumni_tracker_app_organizationrolecapacitytaxonomy_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitytaxonomy
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitytaxonomy_name_key UNIQUE (name);


--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomy alumni_tracker_app_organizationrolecapacitytaxonomy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitytaxonomy
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitytaxonomy_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomyterm alumni_tracker_app_organizationrolecapacitytaxonomyterm_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitytaxonomyterm
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacitytaxonomyterm_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacityterm alumni_tracker_app_organizationrolecapacityterm_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityterm
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacityterm_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_organizationrolecapacityuser alumni_tracker_app_organizationrolecapacityuser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityuser
    ADD CONSTRAINT alumni_tracker_app_organizationrolecapacityuser_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_performancemeasure alumni_tracker_app_performancemeasure_abbreviation_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_performancemeasure
    ADD CONSTRAINT alumni_tracker_app_performancemeasure_abbreviation_key UNIQUE (abbreviation);


--
-- Name: alumni_tracker_app_performancemeasure alumni_tracker_app_performancemeasure_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_performancemeasure
    ADD CONSTRAINT alumni_tracker_app_performancemeasure_name_key UNIQUE (name);


--
-- Name: alumni_tracker_app_performancemeasure alumni_tracker_app_performancemeasure_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_performancemeasure
    ADD CONSTRAINT alumni_tracker_app_performancemeasure_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_performancemeasuredashboard alumni_tracker_app_performancemeasuredashboard_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_performancemeasuredashboard
    ADD CONSTRAINT alumni_tracker_app_performancemeasuredashboard_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_person alumni_tracker_app_person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_person
    ADD CONSTRAINT alumni_tracker_app_person_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_preferencedomain alumni_tracker_app_preferencedomain_domain_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_preferencedomain
    ADD CONSTRAINT alumni_tracker_app_preferencedomain_domain_key UNIQUE (domain);


--
-- Name: alumni_tracker_app_preferencedomain alumni_tracker_app_preferencedomain_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_preferencedomain
    ADD CONSTRAINT alumni_tracker_app_preferencedomain_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_preferencedomainpreference alumni_tracker_app_preferencedomainpreference_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_preferencedomainpreference
    ADD CONSTRAINT alumni_tracker_app_preferencedomainpreference_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_preferencedomainpreference alumni_tracker_app_preferencedomainpreference_preference_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_preferencedomainpreference
    ADD CONSTRAINT alumni_tracker_app_preferencedomainpreference_preference_key UNIQUE (preference);


--
-- Name: alumni_tracker_app_student alumni_tracker_app_student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_student
    ADD CONSTRAINT alumni_tracker_app_student_pkey PRIMARY KEY (person_id);


--
-- Name: alumni_tracker_app_studentcredithistory alumni_tracker_app_studentcredithistory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_studentcredithistory
    ADD CONSTRAINT alumni_tracker_app_studentcredithistory_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_studentenrollmenttrack alumni_tracker_app_studentenrollmenttrack_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_studentenrollmenttrack
    ADD CONSTRAINT alumni_tracker_app_studentenrollmenttrack_pkey PRIMARY KEY (membership_role_id);


--
-- Name: alumni_tracker_app_studentidentifiers alumni_tracker_app_studentidentifiers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_studentidentifiers
    ADD CONSTRAINT alumni_tracker_app_studentidentifiers_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_studenttransitivedemos alumni_tracker_app_studenttransitivedemos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_studenttransitivedemos
    ADD CONSTRAINT alumni_tracker_app_studenttransitivedemos_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_userprofile alumni_tracker_app_userprofile_person_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_userprofile
    ADD CONSTRAINT alumni_tracker_app_userprofile_person_id_key UNIQUE (person_id);


--
-- Name: alumni_tracker_app_userprofile alumni_tracker_app_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_userprofile
    ADD CONSTRAINT alumni_tracker_app_userprofile_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_userprofile alumni_tracker_app_userprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_userprofile
    ADD CONSTRAINT alumni_tracker_app_userprofile_user_id_key UNIQUE (user_id);


--
-- Name: alumni_tracker_app_userprofilepreference alumni_tracker_app_userprofilepreference_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_userprofilepreference
    ADD CONSTRAINT alumni_tracker_app_userprofilepreference_pkey PRIMARY KEY (id);


--
-- Name: alumni_tracker_app_usstate alumni_tracker_app_usstate_abbreviation_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_usstate
    ADD CONSTRAINT alumni_tracker_app_usstate_abbreviation_key UNIQUE (abbreviation);


--
-- Name: alumni_tracker_app_usstate alumni_tracker_app_usstate_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_usstate
    ADD CONSTRAINT alumni_tracker_app_usstate_name_key UNIQUE (name);


--
-- Name: alumni_tracker_app_usstate alumni_tracker_app_usstate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_usstate
    ADD CONSTRAINT alumni_tracker_app_usstate_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: alumni_tracker_app_alumnuscheckinemployment ci_emp_lineage; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemployment
    ADD CONSTRAINT ci_emp_lineage UNIQUE (alumnus_checkin_id, continued_in_id, continuation_of_id);


--
-- Name: alumni_tracker_app_alumnuscheckinemployment ci_emp_singular; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemployment
    ADD CONSTRAINT ci_emp_singular UNIQUE (alumnus_checkin_id, employer_id);


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment ci_enr_lineage; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollment
    ADD CONSTRAINT ci_enr_lineage UNIQUE (alumnus_checkin_id, continued_in_id, continuation_of_id);


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment ci_enr_singular; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollment
    ADD CONSTRAINT ci_enr_singular UNIQUE (alumnus_checkin_id, credential_awarder_id, credential_goal_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: alumni_tracker_app_alumnus unique_alumnus; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnus
    ADD CONSTRAINT unique_alumnus UNIQUE (person_id, organization_role_capacity_id, severence_id, severence_date);


--
-- Name: alumni_tracker_app_alumnuscredential unique_alumnus_credential; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscredential
    ADD CONSTRAINT unique_alumnus_credential UNIQUE (alumnus_person_id, credential_id, earned_on);


--
-- Name: alumni_tracker_app_alumnuscheckincommongoodtag unique_ci_cg_tag; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckincommongoodtag
    ADD CONSTRAINT unique_ci_cg_tag UNIQUE (checkin_id, tag_id);


--
-- Name: alumni_tracker_app_checkincommongoodtag unique_ci_cg_tax_tag; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkincommongoodtag
    ADD CONSTRAINT unique_ci_cg_tax_tag UNIQUE (taxonomy_id, tag);


--
-- Name: alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit unique_ci_emp_ben; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit
    ADD CONSTRAINT unique_ci_emp_ben UNIQUE (checkin_employment_id, benefit_id);


--
-- Name: alumni_tracker_app_alumnuscheckinemploymenttag unique_ci_emp_tag; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemploymenttag
    ADD CONSTRAINT unique_ci_emp_tag UNIQUE (checkin_employment_id, tag_id);


--
-- Name: alumni_tracker_app_checkinemploymenttag unique_ci_emp_tax_tag; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinemploymenttag
    ADD CONSTRAINT unique_ci_emp_tax_tag UNIQUE (taxonomy_id, tag);


--
-- Name: alumni_tracker_app_alumnuscheckinenrollmenttag unique_ci_enr_tag; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollmenttag
    ADD CONSTRAINT unique_ci_enr_tag UNIQUE (checkin_enrollment_id, tag_id);


--
-- Name: alumni_tracker_app_checkinenrollmenttag unique_ci_enr_tax_tag; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinenrollmenttag
    ADD CONSTRAINT unique_ci_enr_tax_tag UNIQUE (taxonomy_id, tag);


--
-- Name: alumni_tracker_app_credential unique_credential; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_credential
    ADD CONSTRAINT unique_credential UNIQUE (type_id, awarder_id, focus);


--
-- Name: alumni_tracker_app_datadashboarddatasheet unique_data_dashboard_sheet; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_datadashboarddatasheet
    ADD CONSTRAINT unique_data_dashboard_sheet UNIQUE (dashboard_id, sheet_id);


--
-- Name: alumni_tracker_app_preferencedomainpreference unique_domain_preference; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_preferencedomainpreference
    ADD CONSTRAINT unique_domain_preference UNIQUE (domain_id, preference);


--
-- Name: alumni_tracker_app_fiscalschoolyear unique_fsy_year_short_name_long_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_fiscalschoolyear
    ADD CONSTRAINT unique_fsy_year_short_name_long_name UNIQUE (year, short_name, long_name);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationroacdd unique_meta_org_mem_org_role_cap_ent; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationroacdd
    ADD CONSTRAINT unique_meta_org_mem_org_role_cap_ent UNIQUE (entrance, role_capacity_id, abbreviation);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationro5728 unique_meta_org_mem_org_role_cap_mem_role; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationro5728
    ADD CONSTRAINT unique_meta_org_mem_org_role_cap_mem_role UNIQUE (member_role, capacity_id);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationroceaf unique_meta_org_mem_org_role_cap_mem_role_per; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationroceaf
    ADD CONSTRAINT unique_meta_org_mem_org_role_cap_mem_role_per UNIQUE (role_id, perspective);


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationro0b6e unique_meta_org_mem_org_role_cap_sev; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationro0b6e
    ADD CONSTRAINT unique_meta_org_mem_org_role_cap_sev UNIQUE (severence, role_capacity_id, abbreviation);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityalumnusseverence unique_meta_org_role_cap_alumnus_sev; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityalumnusseverence
    ADD CONSTRAINT unique_meta_org_role_cap_alumnus_sev UNIQUE (severence, abbreviation, role_capacity_id);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityepoch unique_meta_org_role_cap_ann_epo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityepoch
    ADD CONSTRAINT unique_meta_org_role_cap_ann_epo UNIQUE (capacity_id, epoch);


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityrelationship3375 unique_meta_org_role_cap_rel_per; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityrelationship3375
    ADD CONSTRAINT unique_meta_org_role_cap_rel_per UNIQUE (capacity_id, perspective);


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e unique_ocr_ci_enr_tax; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e
    ADD CONSTRAINT unique_ocr_ci_enr_tax UNIQUE (organization_role_capacity_id, taxonomy_id);


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckincommongoo6791 unique_orc_ci_cg_tag; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckincommongoo6791
    ADD CONSTRAINT unique_orc_ci_cg_tag UNIQUE (organization_role_capacity_id, taxonomy_id);


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinemploymena215 unique_orc_ci_emp_tax; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckinemploymena215
    ADD CONSTRAINT unique_orc_ci_emp_tax UNIQUE (organization_role_capacity_id, taxonomy_id);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademiccourse unique_orc_gac; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupacademiccourse
    ADD CONSTRAINT unique_orc_gac UNIQUE (group_id, name, abbreviation, code);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3 unique_orc_gac_ca; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3
    ADD CONSTRAINT unique_orc_gac_ca UNIQUE (course_id, content_area_id);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa4723 unique_orc_gmac_ca; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa4723
    ADD CONSTRAINT unique_orc_gmac_ca UNIQUE (course_id, content_area_id);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad unique_orc_mgac; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad
    ADD CONSTRAINT unique_orc_mgac UNIQUE (group_membership_id, orc_gac_alias_id, name, abbreviation, code);


--
-- Name: alumni_tracker_app_organizationrole unique_org_role; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrole
    ADD CONSTRAINT unique_org_role UNIQUE (organization_id, role_id);


--
-- Name: alumni_tracker_app_organizationrolecapacityfsyday unique_org_role_cap_fsy_day; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityfsyday
    ADD CONSTRAINT unique_org_role_cap_fsy_day UNIQUE (capacity_id, fsy_id, fsy_seq, calendar_date);


--
-- Name: alumni_tracker_app_organizationrolecapacityepoch unique_org_role_cap_fsy_epo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityepoch
    ADD CONSTRAINT unique_org_role_cap_fsy_epo UNIQUE (capacity_id, epoch_id, start_fsy_id, start_fsy_day_id, stop_fsy_id, stop_fsy_day_id);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroup unique_org_role_cap_group; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroup
    ADD CONSTRAINT unique_org_role_cap_group UNIQUE (name, group_type_id);


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembership unique_org_role_cap_group_member; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembership
    ADD CONSTRAINT unique_org_role_cap_group_member UNIQUE (group_id, role_capacity_id);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiproleeneed9 unique_org_role_cap_mem_role_enum_dash; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiproleeneed9
    ADD CONSTRAINT unique_org_role_cap_mem_role_enum_dash UNIQUE (enumed_role_id, dashboard_id);


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprelatid708 unique_org_role_cap_member_rel; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708
    ADD CONSTRAINT unique_org_role_cap_member_rel UNIQUE (source_membership_id, perspective_id, target_membership_id);


--
-- Name: alumni_tracker_app_organizationrolecapacityrelationship unique_org_role_cap_rel; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityrelationship
    ADD CONSTRAINT unique_org_role_cap_rel UNIQUE (source_capacity_id, perspective_id, target_capacity_id);


--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomyterm unique_org_role_cap_tax_term; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitytaxonomyterm
    ADD CONSTRAINT unique_org_role_cap_tax_term UNIQUE (taxonomy_id, term);


--
-- Name: alumni_tracker_app_organizationrolecapacityuser unique_org_role_cap_user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityuser
    ADD CONSTRAINT unique_org_role_cap_user UNIQUE (role_capacity_id, user_id);


--
-- Name: alumni_tracker_app_organizationrolecapacity unique_org_role_capacity; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacity
    ADD CONSTRAINT unique_org_role_capacity UNIQUE (organization_role_id, role_capacity_id);


--
-- Name: alumni_tracker_app_performancemeasuredashboard unique_perf_meas_dash; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_performancemeasuredashboard
    ADD CONSTRAINT unique_perf_meas_dash UNIQUE (performance_measure_id, dashboard_id);


--
-- Name: alumni_tracker_app_person unique_person; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_person
    ADD CONSTRAINT unique_person UNIQUE (first_name, last_name, id_mask);


--
-- Name: alumni_tracker_app_studentidentifiers unique_student_org_role_cap_identifier; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_studentidentifiers
    ADD CONSTRAINT unique_student_org_role_cap_identifier UNIQUE (student_id, capacity_id, identifier);


--
-- Name: alumni_tracker_app_userprofilepreference unique_user_profile_preference; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_userprofilepreference
    ADD CONSTRAINT unique_user_profile_preference UNIQUE (preference_id, user_profile_id);


--
-- Name: alumni_tracker_app_alumnus_alumnus_checkin_id_925f5c7d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnus_alumnus_checkin_id_925f5c7d ON public.alumni_tracker_app_alumnuscheckinemployment USING btree (alumnus_checkin_id);


--
-- Name: alumni_tracker_app_alumnus_alumnus_checkin_id_f404e3e4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnus_alumnus_checkin_id_f404e3e4 ON public.alumni_tracker_app_alumnuscheckinenrollment USING btree (alumnus_checkin_id);


--
-- Name: alumni_tracker_app_alumnus_benefit_id_5d20939d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnus_benefit_id_5d20939d ON public.alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit USING btree (benefit_id);


--
-- Name: alumni_tracker_app_alumnus_checkin_employment_id_464f3c5b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnus_checkin_employment_id_464f3c5b ON public.alumni_tracker_app_alumnuscheckinemploymenttag USING btree (checkin_employment_id);


--
-- Name: alumni_tracker_app_alumnus_checkin_employment_id_f18631b4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnus_checkin_employment_id_f18631b4 ON public.alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit USING btree (checkin_employment_id);


--
-- Name: alumni_tracker_app_alumnus_checkin_enrollment_id_6360affe; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnus_checkin_enrollment_id_6360affe ON public.alumni_tracker_app_alumnuscheckinenrollmenttag USING btree (checkin_enrollment_id);


--
-- Name: alumni_tracker_app_alumnus_checkin_id_52a5dd1a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnus_checkin_id_52a5dd1a ON public.alumni_tracker_app_alumnuscheckincommongoodtag USING btree (checkin_id);


--
-- Name: alumni_tracker_app_alumnus_continuation_of_id_25e53170; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnus_continuation_of_id_25e53170 ON public.alumni_tracker_app_alumnuscheckinemployment USING btree (continuation_of_id);


--
-- Name: alumni_tracker_app_alumnus_continuation_of_id_6c67a76e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnus_continuation_of_id_6c67a76e ON public.alumni_tracker_app_alumnuscheckinenrollment USING btree (continuation_of_id);


--
-- Name: alumni_tracker_app_alumnus_continued_in_id_309a369c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnus_continued_in_id_309a369c ON public.alumni_tracker_app_alumnuscheckinenrollment USING btree (continued_in_id);


--
-- Name: alumni_tracker_app_alumnus_continued_in_id_5a7ebd5b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnus_continued_in_id_5a7ebd5b ON public.alumni_tracker_app_alumnuscheckinemployment USING btree (continued_in_id);


--
-- Name: alumni_tracker_app_alumnus_credential_awarder_id_f29f6179; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnus_credential_awarder_id_f29f6179 ON public.alumni_tracker_app_alumnuscheckinenrollment USING btree (credential_awarder_id);


--
-- Name: alumni_tracker_app_alumnus_credential_goal_id_0a8da218; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnus_credential_goal_id_0a8da218 ON public.alumni_tracker_app_alumnuscheckinenrollment USING btree (credential_goal_id);


--
-- Name: alumni_tracker_app_alumnus_employer_id_096196da; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnus_employer_id_096196da ON public.alumni_tracker_app_alumnuscheckinemployment USING btree (employer_id);


--
-- Name: alumni_tracker_app_alumnus_organization_role_capacity_5c70a451; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnus_organization_role_capacity_5c70a451 ON public.alumni_tracker_app_alumnus USING btree (organization_role_capacity_id);


--
-- Name: alumni_tracker_app_alumnus_person_id_0050d589; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnus_person_id_0050d589 ON public.alumni_tracker_app_alumnus USING btree (person_id);


--
-- Name: alumni_tracker_app_alumnus_position_id_48d98b95; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnus_position_id_48d98b95 ON public.alumni_tracker_app_alumnuscheckinemployment USING btree (position_id);


--
-- Name: alumni_tracker_app_alumnus_severence_id_1c9c6c6e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnus_severence_id_1c9c6c6e ON public.alumni_tracker_app_alumnus USING btree (severence_id);


--
-- Name: alumni_tracker_app_alumnus_study_state_id_240374a4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnus_study_state_id_240374a4 ON public.alumni_tracker_app_alumnuscheckinenrollment USING btree (study_state_id);


--
-- Name: alumni_tracker_app_alumnus_work_state_id_c9ab505d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnus_work_state_id_c9ab505d ON public.alumni_tracker_app_alumnuscheckinemployment USING btree (work_state_id);


--
-- Name: alumni_tracker_app_alumnuscheckin_alumnus_person_id_b5db4ee1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnuscheckin_alumnus_person_id_b5db4ee1 ON public.alumni_tracker_app_alumnuscheckin USING btree (alumnus_person_id);


--
-- Name: alumni_tracker_app_alumnuscheckin_conducted_by_id_3cdbc056; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnuscheckin_conducted_by_id_3cdbc056 ON public.alumni_tracker_app_alumnuscheckin USING btree (conducted_by_id);


--
-- Name: alumni_tracker_app_alumnuscheckin_last_updated_by_id_ba3ef25d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnuscheckin_last_updated_by_id_ba3ef25d ON public.alumni_tracker_app_alumnuscheckin USING btree (last_updated_by_id);


--
-- Name: alumni_tracker_app_alumnuscheckincommongoodtag_tag_id_447b8d24; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnuscheckincommongoodtag_tag_id_447b8d24 ON public.alumni_tracker_app_alumnuscheckincommongoodtag USING btree (tag_id);


--
-- Name: alumni_tracker_app_alumnuscheckinemployment_extent_id_112c1863; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnuscheckinemployment_extent_id_112c1863 ON public.alumni_tracker_app_alumnuscheckinemployment USING btree (extent_id);


--
-- Name: alumni_tracker_app_alumnuscheckinemploymenttag_tag_id_1e4fad4a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnuscheckinemploymenttag_tag_id_1e4fad4a ON public.alumni_tracker_app_alumnuscheckinemploymenttag USING btree (tag_id);


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment_extent_id_ddc01256; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnuscheckinenrollment_extent_id_ddc01256 ON public.alumni_tracker_app_alumnuscheckinenrollment USING btree (extent_id);


--
-- Name: alumni_tracker_app_alumnuscheckinenrollmenttag_tag_id_9bd10b4e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnuscheckinenrollmenttag_tag_id_9bd10b4e ON public.alumni_tracker_app_alumnuscheckinenrollmenttag USING btree (tag_id);


--
-- Name: alumni_tracker_app_alumnuscredential_alumnus_person_id_fb584cf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnuscredential_alumnus_person_id_fb584cf9 ON public.alumni_tracker_app_alumnuscredential USING btree (alumnus_person_id);


--
-- Name: alumni_tracker_app_alumnuscredential_credential_id_33491c67; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_alumnuscredential_credential_id_33491c67 ON public.alumni_tracker_app_alumnuscredential USING btree (credential_id);


--
-- Name: alumni_tracker_app_check_taxonomy_041d5455_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_check_taxonomy_041d5455_like ON public.alumni_tracker_app_checkinenrollmenttaxonomy USING btree (taxonomy varchar_pattern_ops);


--
-- Name: alumni_tracker_app_check_taxonomy_874fae18_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_check_taxonomy_874fae18_like ON public.alumni_tracker_app_checkinemploymenttaxonomy USING btree (taxonomy varchar_pattern_ops);


--
-- Name: alumni_tracker_app_check_taxonomy_f1a79eb0_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_check_taxonomy_f1a79eb0_like ON public.alumni_tracker_app_checkincommongoodtaxonomy USING btree (taxonomy varchar_pattern_ops);


--
-- Name: alumni_tracker_app_checkinbookmark_checkin_id_890b9407; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_checkinbookmark_checkin_id_890b9407 ON public.alumni_tracker_app_checkinbookmark USING btree (checkin_id);


--
-- Name: alumni_tracker_app_checkinbookmark_user_profile_id_2bdfb432; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_checkinbookmark_user_profile_id_2bdfb432 ON public.alumni_tracker_app_checkinbookmark USING btree (user_profile_id);


--
-- Name: alumni_tracker_app_checkincommongoodtag_taxonomy_id_6354795a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_checkincommongoodtag_taxonomy_id_6354795a ON public.alumni_tracker_app_checkincommongoodtag USING btree (taxonomy_id);


--
-- Name: alumni_tracker_app_checkinemploymenttag_taxonomy_id_0b43299c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_checkinemploymenttag_taxonomy_id_0b43299c ON public.alumni_tracker_app_checkinemploymenttag USING btree (taxonomy_id);


--
-- Name: alumni_tracker_app_checkinenrollmenttag_taxonomy_id_6576e32f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_checkinenrollmenttag_taxonomy_id_6576e32f ON public.alumni_tracker_app_checkinenrollmenttag USING btree (taxonomy_id);


--
-- Name: alumni_tracker_app_credential_awarder_id_f96a753c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_credential_awarder_id_f96a753c ON public.alumni_tracker_app_credential USING btree (awarder_id);


--
-- Name: alumni_tracker_app_credential_type_id_55950be8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_credential_type_id_55950be8 ON public.alumni_tracker_app_credential USING btree (type_id);


--
-- Name: alumni_tracker_app_datadashboard_drive_file_id_2318b605_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_datadashboard_drive_file_id_2318b605_like ON public.alumni_tracker_app_datadashboard USING btree (drive_file_id varchar_pattern_ops);


--
-- Name: alumni_tracker_app_datadashboard_name_beb784b6_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_datadashboard_name_beb784b6_like ON public.alumni_tracker_app_datadashboard USING btree (name varchar_pattern_ops);


--
-- Name: alumni_tracker_app_datadashboard_url_d1fe3d05_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_datadashboard_url_d1fe3d05_like ON public.alumni_tracker_app_datadashboard USING btree (url varchar_pattern_ops);


--
-- Name: alumni_tracker_app_datadashboarddatasheet_dashboard_id_97db7bcf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_datadashboarddatasheet_dashboard_id_97db7bcf ON public.alumni_tracker_app_datadashboarddatasheet USING btree (dashboard_id);


--
-- Name: alumni_tracker_app_datadashboarddatasheet_sheet_id_af5ff178; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_datadashboarddatasheet_sheet_id_af5ff178 ON public.alumni_tracker_app_datadashboarddatasheet USING btree (sheet_id);


--
-- Name: alumni_tracker_app_datasheet_drive_file_id_0d1fe37e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_datasheet_drive_file_id_0d1fe37e_like ON public.alumni_tracker_app_datasheet USING btree (drive_file_id varchar_pattern_ops);


--
-- Name: alumni_tracker_app_fiscalschoolyear_long_name_88d5d746_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_fiscalschoolyear_long_name_88d5d746_like ON public.alumni_tracker_app_fiscalschoolyear USING btree (long_name varchar_pattern_ops);


--
-- Name: alumni_tracker_app_fiscalschoolyear_short_name_2e0b3f13_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_fiscalschoolyear_short_name_2e0b3f13_like ON public.alumni_tracker_app_fiscalschoolyear USING btree (short_name varchar_pattern_ops);


--
-- Name: alumni_tracker_app_language_name_01d88779_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_language_name_01d88779_like ON public.alumni_tracker_app_language USING btree (name varchar_pattern_ops);


--
-- Name: alumni_tracker_app_metaa_content_area_27b446f8_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_metaa_content_area_27b446f8_like ON public.alumni_tracker_app_metaacademiccoursecontentarea USING btree (content_area varchar_pattern_ops);


--
-- Name: alumni_tracker_app_metacredentialtype_type_d80670cc_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_metacredentialtype_type_d80670cc_like ON public.alumni_tracker_app_metacredentialtype USING btree (type varchar_pattern_ops);


--
-- Name: alumni_tracker_app_metae_position_71ecbe9a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_metae_position_71ecbe9a_like ON public.alumni_tracker_app_metaemploymentposition USING btree ("position" varchar_pattern_ops);


--
-- Name: alumni_tracker_app_metaemploymentbenefit_benefit_f0cc6fe7_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_metaemploymentbenefit_benefit_f0cc6fe7_like ON public.alumni_tracker_app_metaemploymentbenefit USING btree (benefit varchar_pattern_ops);


--
-- Name: alumni_tracker_app_metaemploymentextent_extent_580dc13a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_metaemploymentextent_extent_580dc13a_like ON public.alumni_tracker_app_metaemploymentextent USING btree (extent varchar_pattern_ops);


--
-- Name: alumni_tracker_app_metaenrollmentextent_extent_592361c7_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_metaenrollmentextent_extent_592361c7_like ON public.alumni_tracker_app_metaenrollmentextent USING btree (extent varchar_pattern_ops);


--
-- Name: alumni_tracker_app_metao_capacity_01ea79c0_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_metao_capacity_01ea79c0_like ON public.alumni_tracker_app_metaorganizationrolecapacity USING btree (capacity varchar_pattern_ops);


--
-- Name: alumni_tracker_app_metao_group_type_2eaf1eb0_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_metao_group_type_2eaf1eb0_like ON public.alumni_tracker_app_metaorganizationgrouptype USING btree (group_type varchar_pattern_ops);


--
-- Name: alumni_tracker_app_metaorg_capacity_id_7b12631b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_metaorg_capacity_id_7b12631b ON public.alumni_tracker_app_metaorganizationrolecapacityrelationship3375 USING btree (capacity_id);


--
-- Name: alumni_tracker_app_metaorg_capacity_id_b6df9f85; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_metaorg_capacity_id_b6df9f85 ON public.alumni_tracker_app_metaorganizationmembershiporganizationro5728 USING btree (capacity_id);


--
-- Name: alumni_tracker_app_metaorg_capacity_id_ffd93319; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_metaorg_capacity_id_ffd93319 ON public.alumni_tracker_app_metaorganizationrolecapacityepoch USING btree (capacity_id);


--
-- Name: alumni_tracker_app_metaorg_role_capacity_id_083a4102; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_metaorg_role_capacity_id_083a4102 ON public.alumni_tracker_app_metaorganizationmembershiporganizationroacdd USING btree (role_capacity_id);


--
-- Name: alumni_tracker_app_metaorg_role_capacity_id_9b471041; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_metaorg_role_capacity_id_9b471041 ON public.alumni_tracker_app_metaorganizationmembershiporganizationro0b6e USING btree (role_capacity_id);


--
-- Name: alumni_tracker_app_metaorg_role_capacity_id_b565d210; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_metaorg_role_capacity_id_b565d210 ON public.alumni_tracker_app_metaorganizationrolecapacityalumnusseverence USING btree (role_capacity_id);


--
-- Name: alumni_tracker_app_metaorg_role_id_6bd079ba; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_metaorg_role_id_6bd079ba ON public.alumni_tracker_app_metaorganizationmembershiporganizationroceaf USING btree (role_id);


--
-- Name: alumni_tracker_app_metaorganizationrole_role_8f2b36db_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_metaorganizationrole_role_8f2b36db_like ON public.alumni_tracker_app_metaorganizationrole USING btree (role varchar_pattern_ops);


--
-- Name: alumni_tracker_app_organ_name_0f4ef765_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organ_name_0f4ef765_like ON public.alumni_tracker_app_organizationrolecapacitytaxonomy USING btree (name varchar_pattern_ops);


--
-- Name: alumni_tracker_app_organ_name_a3e3389a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organ_name_a3e3389a_like ON public.alumni_tracker_app_organizationrolecapacitygroup USING btree (name varchar_pattern_ops);


--
-- Name: alumni_tracker_app_organiz_capacity_id_071c3569; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_capacity_id_071c3569 ON public.alumni_tracker_app_organizationrolecapacityfsyday USING btree (capacity_id);


--
-- Name: alumni_tracker_app_organiz_capacity_id_85e6f310; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_capacity_id_85e6f310 ON public.alumni_tracker_app_organizationrolecapacityterm USING btree (capacity_id);


--
-- Name: alumni_tracker_app_organiz_capacity_id_cb2814f3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_capacity_id_cb2814f3 ON public.alumni_tracker_app_organizationrolecapacitymembershiproleenum USING btree (capacity_id);


--
-- Name: alumni_tracker_app_organiz_capacity_id_cd3e2cf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_capacity_id_cd3e2cf9 ON public.alumni_tracker_app_organizationrolecapacityepoch USING btree (capacity_id);


--
-- Name: alumni_tracker_app_organiz_content_area_id_a22a0df9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_content_area_id_a22a0df9 ON public.alumni_tracker_app_organizationrolecapacitygroupmembershipa4723 USING btree (content_area_id);


--
-- Name: alumni_tracker_app_organiz_content_area_id_e545746e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_content_area_id_e545746e ON public.alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3 USING btree (content_area_id);


--
-- Name: alumni_tracker_app_organiz_course_id_5013d96e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_course_id_5013d96e ON public.alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3 USING btree (course_id);


--
-- Name: alumni_tracker_app_organiz_course_id_ad893dbf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_course_id_ad893dbf ON public.alumni_tracker_app_organizationrolecapacitygroupmembershipa4723 USING btree (course_id);


--
-- Name: alumni_tracker_app_organiz_dashboard_id_cd1e57e5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_dashboard_id_cd1e57e5 ON public.alumni_tracker_app_organizationrolecapacitymembershiproleeneed9 USING btree (dashboard_id);


--
-- Name: alumni_tracker_app_organiz_entrance_id_cb9125a8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_entrance_id_cb9125a8 ON public.alumni_tracker_app_organizationrolecapacitymembershiprole USING btree (entrance_id);


--
-- Name: alumni_tracker_app_organiz_enumed_role_id_038f86ca; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_enumed_role_id_038f86ca ON public.alumni_tracker_app_organizationrolecapacitymembershiproleeneed9 USING btree (enumed_role_id);


--
-- Name: alumni_tracker_app_organiz_enumed_role_id_df0c31bd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_enumed_role_id_df0c31bd ON public.alumni_tracker_app_organizationrolecapacitymembershiprole USING btree (enumed_role_id);


--
-- Name: alumni_tracker_app_organiz_epoch_id_8221d3ee; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_epoch_id_8221d3ee ON public.alumni_tracker_app_organizationrolecapacityepoch USING btree (epoch_id);


--
-- Name: alumni_tracker_app_organiz_fsy_id_c6b6db72; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_fsy_id_c6b6db72 ON public.alumni_tracker_app_organizationrolecapacityfsyday USING btree (fsy_id);


--
-- Name: alumni_tracker_app_organiz_group_id_2a5bb89e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_group_id_2a5bb89e ON public.alumni_tracker_app_organizationrolecapacitygroupmembership USING btree (group_id);


--
-- Name: alumni_tracker_app_organiz_group_id_666fbbb7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_group_id_666fbbb7 ON public.alumni_tracker_app_organizationrolecapacitygroupacademiccourse USING btree (group_id);


--
-- Name: alumni_tracker_app_organiz_group_membership_id_b0ef58a6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_group_membership_id_b0ef58a6 ON public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad USING btree (group_membership_id);


--
-- Name: alumni_tracker_app_organiz_group_type_id_7b2db0db; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_group_type_id_7b2db0db ON public.alumni_tracker_app_organizationrolecapacitygroup USING btree (group_type_id);


--
-- Name: alumni_tracker_app_organiz_membership_id_0022b77d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_membership_id_0022b77d ON public.alumni_tracker_app_organizationrolecapacitymembershiprole USING btree (membership_id);


--
-- Name: alumni_tracker_app_organiz_orc_gac_alias_id_1a18880d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_orc_gac_alias_id_1a18880d ON public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad USING btree (orc_gac_alias_id);


--
-- Name: alumni_tracker_app_organiz_organization_role_capacity_18cdfb5a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_organization_role_capacity_18cdfb5a ON public.alumni_tracker_app_organizationrolecapacitycheckincommongoo6791 USING btree (organization_role_capacity_id);


--
-- Name: alumni_tracker_app_organiz_organization_role_capacity_5f3a5a25; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_organization_role_capacity_5f3a5a25 ON public.alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e USING btree (organization_role_capacity_id);


--
-- Name: alumni_tracker_app_organiz_organization_role_capacity_884ce6aa; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_organization_role_capacity_884ce6aa ON public.alumni_tracker_app_organizationrolecapacitycheckinemploymena215 USING btree (organization_role_capacity_id);


--
-- Name: alumni_tracker_app_organiz_organization_role_capacity_db06788b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_organization_role_capacity_db06788b ON public.alumni_tracker_app_organizationrolecapacitymembership USING btree (organization_role_capacity_id);


--
-- Name: alumni_tracker_app_organiz_organization_role_id_f7c3a325; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_organization_role_id_f7c3a325 ON public.alumni_tracker_app_organizationrolecapacity USING btree (organization_role_id);


--
-- Name: alumni_tracker_app_organiz_person_id_acc64336; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_person_id_acc64336 ON public.alumni_tracker_app_organizationrolecapacitymembership USING btree (person_id);


--
-- Name: alumni_tracker_app_organiz_perspective_id_40d6e89f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_perspective_id_40d6e89f ON public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708 USING btree (perspective_id);


--
-- Name: alumni_tracker_app_organiz_perspective_id_d5f93817; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_perspective_id_d5f93817 ON public.alumni_tracker_app_organizationrolecapacityrelationship USING btree (perspective_id);


--
-- Name: alumni_tracker_app_organiz_role_capacity_id_19d81734; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_role_capacity_id_19d81734 ON public.alumni_tracker_app_organizationrolecapacityuser USING btree (role_capacity_id);


--
-- Name: alumni_tracker_app_organiz_role_capacity_id_b1bab5f5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_role_capacity_id_b1bab5f5 ON public.alumni_tracker_app_organizationrolecapacity USING btree (role_capacity_id);


--
-- Name: alumni_tracker_app_organiz_role_capacity_id_c400bb95; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_role_capacity_id_c400bb95 ON public.alumni_tracker_app_organizationrolecapacitygroupmembership USING btree (role_capacity_id);


--
-- Name: alumni_tracker_app_organiz_role_id_6f28db56; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_role_id_6f28db56 ON public.alumni_tracker_app_organizationrolecapacitymembershiproleenum USING btree (role_id);


--
-- Name: alumni_tracker_app_organiz_severence_id_2d37f561; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_severence_id_2d37f561 ON public.alumni_tracker_app_organizationrolecapacitymembershiprole USING btree (severence_id);


--
-- Name: alumni_tracker_app_organiz_source_capacity_id_f4473173; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_source_capacity_id_f4473173 ON public.alumni_tracker_app_organizationrolecapacityrelationship USING btree (source_capacity_id);


--
-- Name: alumni_tracker_app_organiz_source_membership_id_b438b3d3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_source_membership_id_b438b3d3 ON public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708 USING btree (source_membership_id);


--
-- Name: alumni_tracker_app_organiz_start_fsy_day_id_55cfe29a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_start_fsy_day_id_55cfe29a ON public.alumni_tracker_app_organizationrolecapacityepoch USING btree (start_fsy_day_id);


--
-- Name: alumni_tracker_app_organiz_start_fsy_day_id_e4dffe76; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_start_fsy_day_id_e4dffe76 ON public.alumni_tracker_app_organizationrolecapacitymembershiprole USING btree (start_fsy_day_id);


--
-- Name: alumni_tracker_app_organiz_start_fsy_id_004efd82; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_start_fsy_id_004efd82 ON public.alumni_tracker_app_organizationrolecapacityepoch USING btree (start_fsy_id);


--
-- Name: alumni_tracker_app_organiz_stop_fsy_day_id_15570b0d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_stop_fsy_day_id_15570b0d ON public.alumni_tracker_app_organizationrolecapacitymembershiprole USING btree (stop_fsy_day_id);


--
-- Name: alumni_tracker_app_organiz_stop_fsy_day_id_32f0dd2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_stop_fsy_day_id_32f0dd2c ON public.alumni_tracker_app_organizationrolecapacityepoch USING btree (stop_fsy_day_id);


--
-- Name: alumni_tracker_app_organiz_stop_fsy_id_b736cf51; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_stop_fsy_id_b736cf51 ON public.alumni_tracker_app_organizationrolecapacityepoch USING btree (stop_fsy_id);


--
-- Name: alumni_tracker_app_organiz_target_capacity_id_f3086977; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_target_capacity_id_f3086977 ON public.alumni_tracker_app_organizationrolecapacityrelationship USING btree (target_capacity_id);


--
-- Name: alumni_tracker_app_organiz_target_membership_id_37fe24a7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_target_membership_id_37fe24a7 ON public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708 USING btree (target_membership_id);


--
-- Name: alumni_tracker_app_organiz_taxonomy_id_0b088737; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_taxonomy_id_0b088737 ON public.alumni_tracker_app_organizationrolecapacitycheckincommongoo6791 USING btree (taxonomy_id);


--
-- Name: alumni_tracker_app_organiz_taxonomy_id_472531d4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_taxonomy_id_472531d4 ON public.alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e USING btree (taxonomy_id);


--
-- Name: alumni_tracker_app_organiz_taxonomy_id_86bfb498; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_taxonomy_id_86bfb498 ON public.alumni_tracker_app_organizationrolecapacitytaxonomyterm USING btree (taxonomy_id);


--
-- Name: alumni_tracker_app_organiz_taxonomy_id_cfe276ec; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_taxonomy_id_cfe276ec ON public.alumni_tracker_app_organizationrolecapacitycheckinemploymena215 USING btree (taxonomy_id);


--
-- Name: alumni_tracker_app_organiz_term_id_b87095a0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_term_id_b87095a0 ON public.alumni_tracker_app_organizationrolecapacityterm USING btree (term_id);


--
-- Name: alumni_tracker_app_organiz_user_id_031eb3e0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organiz_user_id_031eb3e0 ON public.alumni_tracker_app_organizationrolecapacityuser USING btree (user_id);


--
-- Name: alumni_tracker_app_organization_name_35df60b7_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organization_name_35df60b7_like ON public.alumni_tracker_app_organization USING btree (name varchar_pattern_ops);


--
-- Name: alumni_tracker_app_organizationrole_organization_id_6f4ddd11; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organizationrole_organization_id_6f4ddd11 ON public.alumni_tracker_app_organizationrole USING btree (organization_id);


--
-- Name: alumni_tracker_app_organizationrole_role_id_f2661605; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_organizationrole_role_id_f2661605 ON public.alumni_tracker_app_organizationrole USING btree (role_id);


--
-- Name: alumni_tracker_app_perfo_abbreviation_521f3dd7_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_perfo_abbreviation_521f3dd7_like ON public.alumni_tracker_app_performancemeasure USING btree (abbreviation varchar_pattern_ops);


--
-- Name: alumni_tracker_app_perform_dashboard_id_7e88b24b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_perform_dashboard_id_7e88b24b ON public.alumni_tracker_app_performancemeasuredashboard USING btree (dashboard_id);


--
-- Name: alumni_tracker_app_perform_performance_measure_id_0eb5d441; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_perform_performance_measure_id_0eb5d441 ON public.alumni_tracker_app_performancemeasuredashboard USING btree (performance_measure_id);


--
-- Name: alumni_tracker_app_performancemeasure_name_b6d28d7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_performancemeasure_name_b6d28d7c_like ON public.alumni_tracker_app_performancemeasure USING btree (name varchar_pattern_ops);


--
-- Name: alumni_tracker_app_person_email_last_updated_by_id_be5ffa65; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_person_email_last_updated_by_id_be5ffa65 ON public.alumni_tracker_app_person USING btree (email_last_updated_by_id);


--
-- Name: alumni_tracker_app_person_mailing_last_updated_by_id_7d703ac3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_person_mailing_last_updated_by_id_7d703ac3 ON public.alumni_tracker_app_person USING btree (mailing_last_updated_by_id);


--
-- Name: alumni_tracker_app_person_mailing_state_id_7d2bd003; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_person_mailing_state_id_7d2bd003 ON public.alumni_tracker_app_person USING btree (mailing_state_id);


--
-- Name: alumni_tracker_app_person_phone_last_updated_by_id_d349d5b6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_person_phone_last_updated_by_id_d349d5b6 ON public.alumni_tracker_app_person USING btree (phone_last_updated_by_id);


--
-- Name: alumni_tracker_app_prefe_preference_79912ad3_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_prefe_preference_79912ad3_like ON public.alumni_tracker_app_preferencedomainpreference USING btree (preference varchar_pattern_ops);


--
-- Name: alumni_tracker_app_prefere_domain_id_8f791062; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_prefere_domain_id_8f791062 ON public.alumni_tracker_app_preferencedomainpreference USING btree (domain_id);


--
-- Name: alumni_tracker_app_preferencedomain_domain_50f3cf6f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_preferencedomain_domain_50f3cf6f_like ON public.alumni_tracker_app_preferencedomain USING btree (domain varchar_pattern_ops);


--
-- Name: alumni_tracker_app_student_home_language_id_0a7e3fa0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_student_home_language_id_0a7e3fa0 ON public.alumni_tracker_app_studenttransitivedemos USING btree (home_language_id);


--
-- Name: alumni_tracker_app_student_orc_gac_course_id_226bd112; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_student_orc_gac_course_id_226bd112 ON public.alumni_tracker_app_studentcredithistory USING btree (orc_gac_course_id);


--
-- Name: alumni_tracker_app_student_orc_gmac_course_id_fa4eabd4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_student_orc_gmac_course_id_fa4eabd4 ON public.alumni_tracker_app_studentcredithistory USING btree (orc_gmac_course_id);


--
-- Name: alumni_tracker_app_student_orc_membership_id_83f2d826; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_student_orc_membership_id_83f2d826 ON public.alumni_tracker_app_studentcredithistory USING btree (orc_membership_id);


--
-- Name: alumni_tracker_app_student_projected_grad_fsy_id_b32cf699; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_student_projected_grad_fsy_id_b32cf699 ON public.alumni_tracker_app_studentenrollmenttrack USING btree (projected_grad_fsy_id);


--
-- Name: alumni_tracker_app_student_raw_mailing_state_id_9f15e730; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_student_raw_mailing_state_id_9f15e730 ON public.alumni_tracker_app_studenttransitivedemos USING btree (raw_mailing_state_id);


--
-- Name: alumni_tracker_app_studentcredithistory_orc_epoch_id_47cb984c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_studentcredithistory_orc_epoch_id_47cb984c ON public.alumni_tracker_app_studentcredithistory USING btree (orc_epoch_id);


--
-- Name: alumni_tracker_app_studentcredithistory_student_id_2f4e2f0b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_studentcredithistory_student_id_2f4e2f0b ON public.alumni_tracker_app_studentcredithistory USING btree (student_id);


--
-- Name: alumni_tracker_app_studentenrollmenttrack_start_fsy_id_51308180; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_studentenrollmenttrack_start_fsy_id_51308180 ON public.alumni_tracker_app_studentenrollmenttrack USING btree (start_fsy_id);


--
-- Name: alumni_tracker_app_studentenrollmenttrack_stop_fsy_id_16ca12f7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_studentenrollmenttrack_stop_fsy_id_16ca12f7 ON public.alumni_tracker_app_studentenrollmenttrack USING btree (stop_fsy_id);


--
-- Name: alumni_tracker_app_studentidentifiers_capacity_id_e99f1ed1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_studentidentifiers_capacity_id_e99f1ed1 ON public.alumni_tracker_app_studentidentifiers USING btree (capacity_id);


--
-- Name: alumni_tracker_app_studentidentifiers_student_id_83d3a159; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_studentidentifiers_student_id_83d3a159 ON public.alumni_tracker_app_studentidentifiers USING btree (student_id);


--
-- Name: alumni_tracker_app_studenttransitivedemos_student_id_eb4123d4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_studenttransitivedemos_student_id_eb4123d4 ON public.alumni_tracker_app_studenttransitivedemos USING btree (student_id);


--
-- Name: alumni_tracker_app_userpro_user_profile_id_c643bc59; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_userpro_user_profile_id_c643bc59 ON public.alumni_tracker_app_userprofilepreference USING btree (user_profile_id);


--
-- Name: alumni_tracker_app_userprofilepreference_preference_id_04c25c83; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_userprofilepreference_preference_id_04c25c83 ON public.alumni_tracker_app_userprofilepreference USING btree (preference_id);


--
-- Name: alumni_tracker_app_usstate_abbreviation_ccd2ab30_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_usstate_abbreviation_ccd2ab30_like ON public.alumni_tracker_app_usstate USING btree (abbreviation varchar_pattern_ops);


--
-- Name: alumni_tracker_app_usstate_name_a3855855_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX alumni_tracker_app_usstate_name_a3855855_like ON public.alumni_tracker_app_usstate USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: alumni_tracker_app_alumnuscheckinemployment alumni_tracker_app_a_alumnus_checkin_id_925f5c7d_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemployment
    ADD CONSTRAINT alumni_tracker_app_a_alumnus_checkin_id_925f5c7d_fk_alumni_tr FOREIGN KEY (alumnus_checkin_id) REFERENCES public.alumni_tracker_app_alumnuscheckin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment alumni_tracker_app_a_alumnus_checkin_id_f404e3e4_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollment
    ADD CONSTRAINT alumni_tracker_app_a_alumnus_checkin_id_f404e3e4_fk_alumni_tr FOREIGN KEY (alumnus_checkin_id) REFERENCES public.alumni_tracker_app_alumnuscheckin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckin alumni_tracker_app_a_alumnus_person_id_b5db4ee1_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckin
    ADD CONSTRAINT alumni_tracker_app_a_alumnus_person_id_b5db4ee1_fk_alumni_tr FOREIGN KEY (alumnus_person_id) REFERENCES public.alumni_tracker_app_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscredential alumni_tracker_app_a_alumnus_person_id_fb584cf9_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscredential
    ADD CONSTRAINT alumni_tracker_app_a_alumnus_person_id_fb584cf9_fk_alumni_tr FOREIGN KEY (alumnus_person_id) REFERENCES public.alumni_tracker_app_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit alumni_tracker_app_a_benefit_id_5d20939d_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit
    ADD CONSTRAINT alumni_tracker_app_a_benefit_id_5d20939d_fk_alumni_tr FOREIGN KEY (benefit_id) REFERENCES public.alumni_tracker_app_metaemploymentbenefit(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinemploymenttag alumni_tracker_app_a_checkin_employment_i_464f3c5b_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemploymenttag
    ADD CONSTRAINT alumni_tracker_app_a_checkin_employment_i_464f3c5b_fk_alumni_tr FOREIGN KEY (checkin_employment_id) REFERENCES public.alumni_tracker_app_alumnuscheckinemployment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit alumni_tracker_app_a_checkin_employment_i_f18631b4_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemploymentemploymentbenefit
    ADD CONSTRAINT alumni_tracker_app_a_checkin_employment_i_f18631b4_fk_alumni_tr FOREIGN KEY (checkin_employment_id) REFERENCES public.alumni_tracker_app_alumnuscheckinemployment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinenrollmenttag alumni_tracker_app_a_checkin_enrollment_i_6360affe_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollmenttag
    ADD CONSTRAINT alumni_tracker_app_a_checkin_enrollment_i_6360affe_fk_alumni_tr FOREIGN KEY (checkin_enrollment_id) REFERENCES public.alumni_tracker_app_alumnuscheckinenrollment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckincommongoodtag alumni_tracker_app_a_checkin_id_52a5dd1a_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckincommongoodtag
    ADD CONSTRAINT alumni_tracker_app_a_checkin_id_52a5dd1a_fk_alumni_tr FOREIGN KEY (checkin_id) REFERENCES public.alumni_tracker_app_alumnuscheckin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckin alumni_tracker_app_a_conducted_by_id_3cdbc056_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckin
    ADD CONSTRAINT alumni_tracker_app_a_conducted_by_id_3cdbc056_fk_alumni_tr FOREIGN KEY (conducted_by_id) REFERENCES public.alumni_tracker_app_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinemployment alumni_tracker_app_a_continuation_of_id_25e53170_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemployment
    ADD CONSTRAINT alumni_tracker_app_a_continuation_of_id_25e53170_fk_alumni_tr FOREIGN KEY (continuation_of_id) REFERENCES public.alumni_tracker_app_alumnuscheckinemployment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment alumni_tracker_app_a_continuation_of_id_6c67a76e_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollment
    ADD CONSTRAINT alumni_tracker_app_a_continuation_of_id_6c67a76e_fk_alumni_tr FOREIGN KEY (continuation_of_id) REFERENCES public.alumni_tracker_app_alumnuscheckinenrollment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment alumni_tracker_app_a_continued_in_id_309a369c_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollment
    ADD CONSTRAINT alumni_tracker_app_a_continued_in_id_309a369c_fk_alumni_tr FOREIGN KEY (continued_in_id) REFERENCES public.alumni_tracker_app_alumnuscheckinenrollment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinemployment alumni_tracker_app_a_continued_in_id_5a7ebd5b_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemployment
    ADD CONSTRAINT alumni_tracker_app_a_continued_in_id_5a7ebd5b_fk_alumni_tr FOREIGN KEY (continued_in_id) REFERENCES public.alumni_tracker_app_alumnuscheckinemployment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment alumni_tracker_app_a_credential_awarder_i_f29f6179_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollment
    ADD CONSTRAINT alumni_tracker_app_a_credential_awarder_i_f29f6179_fk_alumni_tr FOREIGN KEY (credential_awarder_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment alumni_tracker_app_a_credential_goal_id_0a8da218_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollment
    ADD CONSTRAINT alumni_tracker_app_a_credential_goal_id_0a8da218_fk_alumni_tr FOREIGN KEY (credential_goal_id) REFERENCES public.alumni_tracker_app_credential(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscredential alumni_tracker_app_a_credential_id_33491c67_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscredential
    ADD CONSTRAINT alumni_tracker_app_a_credential_id_33491c67_fk_alumni_tr FOREIGN KEY (credential_id) REFERENCES public.alumni_tracker_app_credential(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinemployment alumni_tracker_app_a_employer_id_096196da_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemployment
    ADD CONSTRAINT alumni_tracker_app_a_employer_id_096196da_fk_alumni_tr FOREIGN KEY (employer_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinemployment alumni_tracker_app_a_extent_id_112c1863_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemployment
    ADD CONSTRAINT alumni_tracker_app_a_extent_id_112c1863_fk_alumni_tr FOREIGN KEY (extent_id) REFERENCES public.alumni_tracker_app_metaemploymentextent(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment alumni_tracker_app_a_extent_id_ddc01256_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollment
    ADD CONSTRAINT alumni_tracker_app_a_extent_id_ddc01256_fk_alumni_tr FOREIGN KEY (extent_id) REFERENCES public.alumni_tracker_app_metaenrollmentextent(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckin alumni_tracker_app_a_last_updated_by_id_ba3ef25d_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckin
    ADD CONSTRAINT alumni_tracker_app_a_last_updated_by_id_ba3ef25d_fk_alumni_tr FOREIGN KEY (last_updated_by_id) REFERENCES public.alumni_tracker_app_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnus alumni_tracker_app_a_organization_role_ca_5c70a451_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnus
    ADD CONSTRAINT alumni_tracker_app_a_organization_role_ca_5c70a451_fk_alumni_tr FOREIGN KEY (organization_role_capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnus alumni_tracker_app_a_person_id_0050d589_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnus
    ADD CONSTRAINT alumni_tracker_app_a_person_id_0050d589_fk_alumni_tr FOREIGN KEY (person_id) REFERENCES public.alumni_tracker_app_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinemployment alumni_tracker_app_a_position_id_48d98b95_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemployment
    ADD CONSTRAINT alumni_tracker_app_a_position_id_48d98b95_fk_alumni_tr FOREIGN KEY (position_id) REFERENCES public.alumni_tracker_app_metaemploymentposition(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnus alumni_tracker_app_a_severence_id_1c9c6c6e_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnus
    ADD CONSTRAINT alumni_tracker_app_a_severence_id_1c9c6c6e_fk_alumni_tr FOREIGN KEY (severence_id) REFERENCES public.alumni_tracker_app_metaorganizationrolecapacityalumnusseverence(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinenrollment alumni_tracker_app_a_study_state_id_240374a4_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollment
    ADD CONSTRAINT alumni_tracker_app_a_study_state_id_240374a4_fk_alumni_tr FOREIGN KEY (study_state_id) REFERENCES public.alumni_tracker_app_usstate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinemploymenttag alumni_tracker_app_a_tag_id_1e4fad4a_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemploymenttag
    ADD CONSTRAINT alumni_tracker_app_a_tag_id_1e4fad4a_fk_alumni_tr FOREIGN KEY (tag_id) REFERENCES public.alumni_tracker_app_checkinemploymenttag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckincommongoodtag alumni_tracker_app_a_tag_id_447b8d24_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckincommongoodtag
    ADD CONSTRAINT alumni_tracker_app_a_tag_id_447b8d24_fk_alumni_tr FOREIGN KEY (tag_id) REFERENCES public.alumni_tracker_app_checkincommongoodtag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinenrollmenttag alumni_tracker_app_a_tag_id_9bd10b4e_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinenrollmenttag
    ADD CONSTRAINT alumni_tracker_app_a_tag_id_9bd10b4e_fk_alumni_tr FOREIGN KEY (tag_id) REFERENCES public.alumni_tracker_app_checkinenrollmenttag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_alumnuscheckinemployment alumni_tracker_app_a_work_state_id_c9ab505d_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_alumnuscheckinemployment
    ADD CONSTRAINT alumni_tracker_app_a_work_state_id_c9ab505d_fk_alumni_tr FOREIGN KEY (work_state_id) REFERENCES public.alumni_tracker_app_usstate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_credential alumni_tracker_app_c_awarder_id_f96a753c_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_credential
    ADD CONSTRAINT alumni_tracker_app_c_awarder_id_f96a753c_fk_alumni_tr FOREIGN KEY (awarder_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_checkinbookmark alumni_tracker_app_c_checkin_id_890b9407_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinbookmark
    ADD CONSTRAINT alumni_tracker_app_c_checkin_id_890b9407_fk_alumni_tr FOREIGN KEY (checkin_id) REFERENCES public.alumni_tracker_app_alumnuscheckin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_checkinemploymenttag alumni_tracker_app_c_taxonomy_id_0b43299c_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinemploymenttag
    ADD CONSTRAINT alumni_tracker_app_c_taxonomy_id_0b43299c_fk_alumni_tr FOREIGN KEY (taxonomy_id) REFERENCES public.alumni_tracker_app_checkinemploymenttaxonomy(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_checkincommongoodtag alumni_tracker_app_c_taxonomy_id_6354795a_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkincommongoodtag
    ADD CONSTRAINT alumni_tracker_app_c_taxonomy_id_6354795a_fk_alumni_tr FOREIGN KEY (taxonomy_id) REFERENCES public.alumni_tracker_app_checkincommongoodtaxonomy(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_checkinenrollmenttag alumni_tracker_app_c_taxonomy_id_6576e32f_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinenrollmenttag
    ADD CONSTRAINT alumni_tracker_app_c_taxonomy_id_6576e32f_fk_alumni_tr FOREIGN KEY (taxonomy_id) REFERENCES public.alumni_tracker_app_checkinenrollmenttaxonomy(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_credential alumni_tracker_app_c_type_id_55950be8_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_credential
    ADD CONSTRAINT alumni_tracker_app_c_type_id_55950be8_fk_alumni_tr FOREIGN KEY (type_id) REFERENCES public.alumni_tracker_app_metacredentialtype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_checkinbookmark alumni_tracker_app_c_user_profile_id_2bdfb432_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_checkinbookmark
    ADD CONSTRAINT alumni_tracker_app_c_user_profile_id_2bdfb432_fk_alumni_tr FOREIGN KEY (user_profile_id) REFERENCES public.alumni_tracker_app_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_datadashboarddatasheet alumni_tracker_app_d_dashboard_id_97db7bcf_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_datadashboarddatasheet
    ADD CONSTRAINT alumni_tracker_app_d_dashboard_id_97db7bcf_fk_alumni_tr FOREIGN KEY (dashboard_id) REFERENCES public.alumni_tracker_app_datadashboard(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_datadashboarddatasheet alumni_tracker_app_d_sheet_id_af5ff178_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_datadashboarddatasheet
    ADD CONSTRAINT alumni_tracker_app_d_sheet_id_af5ff178_fk_alumni_tr FOREIGN KEY (sheet_id) REFERENCES public.alumni_tracker_app_datasheet(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityrelationship3375 alumni_tracker_app_m_capacity_id_7b12631b_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityrelationship3375
    ADD CONSTRAINT alumni_tracker_app_m_capacity_id_7b12631b_fk_alumni_tr FOREIGN KEY (capacity_id) REFERENCES public.alumni_tracker_app_metaorganizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationro5728 alumni_tracker_app_m_capacity_id_b6df9f85_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationro5728
    ADD CONSTRAINT alumni_tracker_app_m_capacity_id_b6df9f85_fk_alumni_tr FOREIGN KEY (capacity_id) REFERENCES public.alumni_tracker_app_metaorganizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityepoch alumni_tracker_app_m_capacity_id_ffd93319_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityepoch
    ADD CONSTRAINT alumni_tracker_app_m_capacity_id_ffd93319_fk_alumni_tr FOREIGN KEY (capacity_id) REFERENCES public.alumni_tracker_app_metaorganizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationroacdd alumni_tracker_app_m_role_capacity_id_083a4102_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationroacdd
    ADD CONSTRAINT alumni_tracker_app_m_role_capacity_id_083a4102_fk_alumni_tr FOREIGN KEY (role_capacity_id) REFERENCES public.alumni_tracker_app_metaorganizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationro0b6e alumni_tracker_app_m_role_capacity_id_9b471041_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationro0b6e
    ADD CONSTRAINT alumni_tracker_app_m_role_capacity_id_9b471041_fk_alumni_tr FOREIGN KEY (role_capacity_id) REFERENCES public.alumni_tracker_app_metaorganizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_metaorganizationrolecapacityalumnusseverence alumni_tracker_app_m_role_capacity_id_b565d210_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationrolecapacityalumnusseverence
    ADD CONSTRAINT alumni_tracker_app_m_role_capacity_id_b565d210_fk_alumni_tr FOREIGN KEY (role_capacity_id) REFERENCES public.alumni_tracker_app_metaorganizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_metaorganizationmembershiporganizationroceaf alumni_tracker_app_m_role_id_6bd079ba_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_metaorganizationmembershiporganizationroceaf
    ADD CONSTRAINT alumni_tracker_app_m_role_id_6bd079ba_fk_alumni_tr FOREIGN KEY (role_id) REFERENCES public.alumni_tracker_app_metaorganizationmembershiporganizationro5728(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityfsyday alumni_tracker_app_o_capacity_id_071c3569_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityfsyday
    ADD CONSTRAINT alumni_tracker_app_o_capacity_id_071c3569_fk_alumni_tr FOREIGN KEY (capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityterm alumni_tracker_app_o_capacity_id_85e6f310_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityterm
    ADD CONSTRAINT alumni_tracker_app_o_capacity_id_85e6f310_fk_alumni_tr FOREIGN KEY (capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiproleenum alumni_tracker_app_o_capacity_id_cb2814f3_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiproleenum
    ADD CONSTRAINT alumni_tracker_app_o_capacity_id_cb2814f3_fk_alumni_tr FOREIGN KEY (capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityepoch alumni_tracker_app_o_capacity_id_cd3e2cf9_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityepoch
    ADD CONSTRAINT alumni_tracker_app_o_capacity_id_cd3e2cf9_fk_alumni_tr FOREIGN KEY (capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa4723 alumni_tracker_app_o_content_area_id_a22a0df9_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa4723
    ADD CONSTRAINT alumni_tracker_app_o_content_area_id_a22a0df9_fk_alumni_tr FOREIGN KEY (content_area_id) REFERENCES public.alumni_tracker_app_metaacademiccoursecontentarea(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3 alumni_tracker_app_o_content_area_id_e545746e_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3
    ADD CONSTRAINT alumni_tracker_app_o_content_area_id_e545746e_fk_alumni_tr FOREIGN KEY (content_area_id) REFERENCES public.alumni_tracker_app_metaacademiccoursecontentarea(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3 alumni_tracker_app_o_course_id_5013d96e_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupacademiccou66f3
    ADD CONSTRAINT alumni_tracker_app_o_course_id_5013d96e_fk_alumni_tr FOREIGN KEY (course_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitygroupacademiccourse(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa4723 alumni_tracker_app_o_course_id_ad893dbf_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa4723
    ADD CONSTRAINT alumni_tracker_app_o_course_id_ad893dbf_fk_alumni_tr FOREIGN KEY (course_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiproleeneed9 alumni_tracker_app_o_dashboard_id_cd1e57e5_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiproleeneed9
    ADD CONSTRAINT alumni_tracker_app_o_dashboard_id_cd1e57e5_fk_alumni_tr FOREIGN KEY (dashboard_id) REFERENCES public.alumni_tracker_app_datadashboard(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprole alumni_tracker_app_o_entrance_id_cb9125a8_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprole
    ADD CONSTRAINT alumni_tracker_app_o_entrance_id_cb9125a8_fk_alumni_tr FOREIGN KEY (entrance_id) REFERENCES public.alumni_tracker_app_metaorganizationmembershiporganizationroacdd(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiproleeneed9 alumni_tracker_app_o_enumed_role_id_038f86ca_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiproleeneed9
    ADD CONSTRAINT alumni_tracker_app_o_enumed_role_id_038f86ca_fk_alumni_tr FOREIGN KEY (enumed_role_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitymembershiproleenum(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprole alumni_tracker_app_o_enumed_role_id_df0c31bd_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprole
    ADD CONSTRAINT alumni_tracker_app_o_enumed_role_id_df0c31bd_fk_alumni_tr FOREIGN KEY (enumed_role_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitymembershiproleenum(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityepoch alumni_tracker_app_o_epoch_id_8221d3ee_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityepoch
    ADD CONSTRAINT alumni_tracker_app_o_epoch_id_8221d3ee_fk_alumni_tr FOREIGN KEY (epoch_id) REFERENCES public.alumni_tracker_app_metaorganizationrolecapacityepoch(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityfsyday alumni_tracker_app_o_fsy_id_c6b6db72_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityfsyday
    ADD CONSTRAINT alumni_tracker_app_o_fsy_id_c6b6db72_fk_alumni_tr FOREIGN KEY (fsy_id) REFERENCES public.alumni_tracker_app_fiscalschoolyear(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembership alumni_tracker_app_o_group_id_2a5bb89e_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembership
    ADD CONSTRAINT alumni_tracker_app_o_group_id_2a5bb89e_fk_alumni_tr FOREIGN KEY (group_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitygroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupacademiccourse alumni_tracker_app_o_group_id_666fbbb7_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupacademiccourse
    ADD CONSTRAINT alumni_tracker_app_o_group_id_666fbbb7_fk_alumni_tr FOREIGN KEY (group_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitygroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad alumni_tracker_app_o_group_membership_id_b0ef58a6_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad
    ADD CONSTRAINT alumni_tracker_app_o_group_membership_id_b0ef58a6_fk_alumni_tr FOREIGN KEY (group_membership_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitygroupmembership(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroup alumni_tracker_app_o_group_type_id_7b2db0db_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroup
    ADD CONSTRAINT alumni_tracker_app_o_group_type_id_7b2db0db_fk_alumni_tr FOREIGN KEY (group_type_id) REFERENCES public.alumni_tracker_app_metaorganizationgrouptype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprole alumni_tracker_app_o_membership_id_0022b77d_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprole
    ADD CONSTRAINT alumni_tracker_app_o_membership_id_0022b77d_fk_alumni_tr FOREIGN KEY (membership_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitymembership(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad alumni_tracker_app_o_orc_gac_alias_id_1a18880d_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad
    ADD CONSTRAINT alumni_tracker_app_o_orc_gac_alias_id_1a18880d_fk_alumni_tr FOREIGN KEY (orc_gac_alias_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitygroupacademiccourse(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrole alumni_tracker_app_o_organization_id_6f4ddd11_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrole
    ADD CONSTRAINT alumni_tracker_app_o_organization_id_6f4ddd11_fk_alumni_tr FOREIGN KEY (organization_id) REFERENCES public.alumni_tracker_app_organization(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckincommongoo6791 alumni_tracker_app_o_organization_role_ca_18cdfb5a_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckincommongoo6791
    ADD CONSTRAINT alumni_tracker_app_o_organization_role_ca_18cdfb5a_fk_alumni_tr FOREIGN KEY (organization_role_capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e alumni_tracker_app_o_organization_role_ca_5f3a5a25_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e
    ADD CONSTRAINT alumni_tracker_app_o_organization_role_ca_5f3a5a25_fk_alumni_tr FOREIGN KEY (organization_role_capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinemploymena215 alumni_tracker_app_o_organization_role_ca_884ce6aa_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckinemploymena215
    ADD CONSTRAINT alumni_tracker_app_o_organization_role_ca_884ce6aa_fk_alumni_tr FOREIGN KEY (organization_role_capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembership alumni_tracker_app_o_organization_role_ca_db06788b_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembership
    ADD CONSTRAINT alumni_tracker_app_o_organization_role_ca_db06788b_fk_alumni_tr FOREIGN KEY (organization_role_capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacity alumni_tracker_app_o_organization_role_id_f7c3a325_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacity
    ADD CONSTRAINT alumni_tracker_app_o_organization_role_id_f7c3a325_fk_alumni_tr FOREIGN KEY (organization_role_id) REFERENCES public.alumni_tracker_app_organizationrole(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembership alumni_tracker_app_o_person_id_acc64336_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembership
    ADD CONSTRAINT alumni_tracker_app_o_person_id_acc64336_fk_alumni_tr FOREIGN KEY (person_id) REFERENCES public.alumni_tracker_app_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprelatid708 alumni_tracker_app_o_perspective_id_40d6e89f_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708
    ADD CONSTRAINT alumni_tracker_app_o_perspective_id_40d6e89f_fk_alumni_tr FOREIGN KEY (perspective_id) REFERENCES public.alumni_tracker_app_metaorganizationmembershiporganizationroceaf(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityrelationship alumni_tracker_app_o_perspective_id_d5f93817_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityrelationship
    ADD CONSTRAINT alumni_tracker_app_o_perspective_id_d5f93817_fk_alumni_tr FOREIGN KEY (perspective_id) REFERENCES public.alumni_tracker_app_metaorganizationrolecapacityrelationship3375(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityuser alumni_tracker_app_o_role_capacity_id_19d81734_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityuser
    ADD CONSTRAINT alumni_tracker_app_o_role_capacity_id_19d81734_fk_alumni_tr FOREIGN KEY (role_capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacity alumni_tracker_app_o_role_capacity_id_b1bab5f5_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacity
    ADD CONSTRAINT alumni_tracker_app_o_role_capacity_id_b1bab5f5_fk_alumni_tr FOREIGN KEY (role_capacity_id) REFERENCES public.alumni_tracker_app_metaorganizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitygroupmembership alumni_tracker_app_o_role_capacity_id_c400bb95_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitygroupmembership
    ADD CONSTRAINT alumni_tracker_app_o_role_capacity_id_c400bb95_fk_alumni_tr FOREIGN KEY (role_capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiproleenum alumni_tracker_app_o_role_id_6f28db56_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiproleenum
    ADD CONSTRAINT alumni_tracker_app_o_role_id_6f28db56_fk_alumni_tr FOREIGN KEY (role_id) REFERENCES public.alumni_tracker_app_metaorganizationmembershiporganizationro5728(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrole alumni_tracker_app_o_role_id_f2661605_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrole
    ADD CONSTRAINT alumni_tracker_app_o_role_id_f2661605_fk_alumni_tr FOREIGN KEY (role_id) REFERENCES public.alumni_tracker_app_metaorganizationrole(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprole alumni_tracker_app_o_severence_id_2d37f561_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprole
    ADD CONSTRAINT alumni_tracker_app_o_severence_id_2d37f561_fk_alumni_tr FOREIGN KEY (severence_id) REFERENCES public.alumni_tracker_app_metaorganizationmembershiporganizationro0b6e(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityrelationship alumni_tracker_app_o_source_capacity_id_f4473173_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityrelationship
    ADD CONSTRAINT alumni_tracker_app_o_source_capacity_id_f4473173_fk_alumni_tr FOREIGN KEY (source_capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprelatid708 alumni_tracker_app_o_source_membership_id_b438b3d3_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708
    ADD CONSTRAINT alumni_tracker_app_o_source_membership_id_b438b3d3_fk_alumni_tr FOREIGN KEY (source_membership_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitymembership(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityepoch alumni_tracker_app_o_start_fsy_day_id_55cfe29a_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityepoch
    ADD CONSTRAINT alumni_tracker_app_o_start_fsy_day_id_55cfe29a_fk_alumni_tr FOREIGN KEY (start_fsy_day_id) REFERENCES public.alumni_tracker_app_organizationrolecapacityfsyday(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprole alumni_tracker_app_o_start_fsy_day_id_e4dffe76_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprole
    ADD CONSTRAINT alumni_tracker_app_o_start_fsy_day_id_e4dffe76_fk_alumni_tr FOREIGN KEY (start_fsy_day_id) REFERENCES public.alumni_tracker_app_organizationrolecapacityfsyday(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityepoch alumni_tracker_app_o_start_fsy_id_004efd82_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityepoch
    ADD CONSTRAINT alumni_tracker_app_o_start_fsy_id_004efd82_fk_alumni_tr FOREIGN KEY (start_fsy_id) REFERENCES public.alumni_tracker_app_fiscalschoolyear(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprole alumni_tracker_app_o_stop_fsy_day_id_15570b0d_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprole
    ADD CONSTRAINT alumni_tracker_app_o_stop_fsy_day_id_15570b0d_fk_alumni_tr FOREIGN KEY (stop_fsy_day_id) REFERENCES public.alumni_tracker_app_organizationrolecapacityfsyday(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityepoch alumni_tracker_app_o_stop_fsy_day_id_32f0dd2c_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityepoch
    ADD CONSTRAINT alumni_tracker_app_o_stop_fsy_day_id_32f0dd2c_fk_alumni_tr FOREIGN KEY (stop_fsy_day_id) REFERENCES public.alumni_tracker_app_organizationrolecapacityfsyday(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityepoch alumni_tracker_app_o_stop_fsy_id_b736cf51_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityepoch
    ADD CONSTRAINT alumni_tracker_app_o_stop_fsy_id_b736cf51_fk_alumni_tr FOREIGN KEY (stop_fsy_id) REFERENCES public.alumni_tracker_app_fiscalschoolyear(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityrelationship alumni_tracker_app_o_target_capacity_id_f3086977_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityrelationship
    ADD CONSTRAINT alumni_tracker_app_o_target_capacity_id_f3086977_fk_alumni_tr FOREIGN KEY (target_capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitymembershiprelatid708 alumni_tracker_app_o_target_membership_id_37fe24a7_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitymembershiprelatid708
    ADD CONSTRAINT alumni_tracker_app_o_target_membership_id_37fe24a7_fk_alumni_tr FOREIGN KEY (target_membership_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitymembership(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckincommongoo6791 alumni_tracker_app_o_taxonomy_id_0b088737_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckincommongoo6791
    ADD CONSTRAINT alumni_tracker_app_o_taxonomy_id_0b088737_fk_alumni_tr FOREIGN KEY (taxonomy_id) REFERENCES public.alumni_tracker_app_checkincommongoodtaxonomy(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e alumni_tracker_app_o_taxonomy_id_472531d4_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckinenrollmen775e
    ADD CONSTRAINT alumni_tracker_app_o_taxonomy_id_472531d4_fk_alumni_tr FOREIGN KEY (taxonomy_id) REFERENCES public.alumni_tracker_app_checkinenrollmenttaxonomy(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitytaxonomyterm alumni_tracker_app_o_taxonomy_id_86bfb498_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitytaxonomyterm
    ADD CONSTRAINT alumni_tracker_app_o_taxonomy_id_86bfb498_fk_alumni_tr FOREIGN KEY (taxonomy_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitytaxonomy(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacitycheckinemploymena215 alumni_tracker_app_o_taxonomy_id_cfe276ec_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacitycheckinemploymena215
    ADD CONSTRAINT alumni_tracker_app_o_taxonomy_id_cfe276ec_fk_alumni_tr FOREIGN KEY (taxonomy_id) REFERENCES public.alumni_tracker_app_checkinemploymenttaxonomy(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityterm alumni_tracker_app_o_term_id_b87095a0_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityterm
    ADD CONSTRAINT alumni_tracker_app_o_term_id_b87095a0_fk_alumni_tr FOREIGN KEY (term_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitytaxonomyterm(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_organizationrolecapacityuser alumni_tracker_app_o_user_id_031eb3e0_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_organizationrolecapacityuser
    ADD CONSTRAINT alumni_tracker_app_o_user_id_031eb3e0_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_performancemeasuredashboard alumni_tracker_app_p_dashboard_id_7e88b24b_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_performancemeasuredashboard
    ADD CONSTRAINT alumni_tracker_app_p_dashboard_id_7e88b24b_fk_alumni_tr FOREIGN KEY (dashboard_id) REFERENCES public.alumni_tracker_app_datadashboard(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_preferencedomainpreference alumni_tracker_app_p_domain_id_8f791062_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_preferencedomainpreference
    ADD CONSTRAINT alumni_tracker_app_p_domain_id_8f791062_fk_alumni_tr FOREIGN KEY (domain_id) REFERENCES public.alumni_tracker_app_preferencedomain(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_person alumni_tracker_app_p_email_last_updated_b_be5ffa65_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_person
    ADD CONSTRAINT alumni_tracker_app_p_email_last_updated_b_be5ffa65_fk_alumni_tr FOREIGN KEY (email_last_updated_by_id) REFERENCES public.alumni_tracker_app_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_person alumni_tracker_app_p_mailing_last_updated_7d703ac3_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_person
    ADD CONSTRAINT alumni_tracker_app_p_mailing_last_updated_7d703ac3_fk_alumni_tr FOREIGN KEY (mailing_last_updated_by_id) REFERENCES public.alumni_tracker_app_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_person alumni_tracker_app_p_mailing_state_id_7d2bd003_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_person
    ADD CONSTRAINT alumni_tracker_app_p_mailing_state_id_7d2bd003_fk_alumni_tr FOREIGN KEY (mailing_state_id) REFERENCES public.alumni_tracker_app_usstate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_performancemeasuredashboard alumni_tracker_app_p_performance_measure__0eb5d441_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_performancemeasuredashboard
    ADD CONSTRAINT alumni_tracker_app_p_performance_measure__0eb5d441_fk_alumni_tr FOREIGN KEY (performance_measure_id) REFERENCES public.alumni_tracker_app_performancemeasure(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_person alumni_tracker_app_p_phone_last_updated_b_d349d5b6_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_person
    ADD CONSTRAINT alumni_tracker_app_p_phone_last_updated_b_d349d5b6_fk_alumni_tr FOREIGN KEY (phone_last_updated_by_id) REFERENCES public.alumni_tracker_app_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studentidentifiers alumni_tracker_app_s_capacity_id_e99f1ed1_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_studentidentifiers
    ADD CONSTRAINT alumni_tracker_app_s_capacity_id_e99f1ed1_fk_alumni_tr FOREIGN KEY (capacity_id) REFERENCES public.alumni_tracker_app_organizationrolecapacity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studenttransitivedemos alumni_tracker_app_s_home_language_id_0a7e3fa0_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_studenttransitivedemos
    ADD CONSTRAINT alumni_tracker_app_s_home_language_id_0a7e3fa0_fk_alumni_tr FOREIGN KEY (home_language_id) REFERENCES public.alumni_tracker_app_language(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studentenrollmenttrack alumni_tracker_app_s_membership_role_id_56acc6c0_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_studentenrollmenttrack
    ADD CONSTRAINT alumni_tracker_app_s_membership_role_id_56acc6c0_fk_alumni_tr FOREIGN KEY (membership_role_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitymembershiprole(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studentcredithistory alumni_tracker_app_s_orc_epoch_id_47cb984c_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_studentcredithistory
    ADD CONSTRAINT alumni_tracker_app_s_orc_epoch_id_47cb984c_fk_alumni_tr FOREIGN KEY (orc_epoch_id) REFERENCES public.alumni_tracker_app_organizationrolecapacityepoch(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studentcredithistory alumni_tracker_app_s_orc_gac_course_id_226bd112_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_studentcredithistory
    ADD CONSTRAINT alumni_tracker_app_s_orc_gac_course_id_226bd112_fk_alumni_tr FOREIGN KEY (orc_gac_course_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitygroupacademiccourse(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studentcredithistory alumni_tracker_app_s_orc_gmac_course_id_fa4eabd4_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_studentcredithistory
    ADD CONSTRAINT alumni_tracker_app_s_orc_gmac_course_id_fa4eabd4_fk_alumni_tr FOREIGN KEY (orc_gmac_course_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitygroupmembershipa5fad(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studentcredithistory alumni_tracker_app_s_orc_membership_id_83f2d826_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_studentcredithistory
    ADD CONSTRAINT alumni_tracker_app_s_orc_membership_id_83f2d826_fk_alumni_tr FOREIGN KEY (orc_membership_id) REFERENCES public.alumni_tracker_app_organizationrolecapacitymembershiprole(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_student alumni_tracker_app_s_person_id_6c11f0f0_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_student
    ADD CONSTRAINT alumni_tracker_app_s_person_id_6c11f0f0_fk_alumni_tr FOREIGN KEY (person_id) REFERENCES public.alumni_tracker_app_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studentenrollmenttrack alumni_tracker_app_s_projected_grad_fsy_i_b32cf699_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_studentenrollmenttrack
    ADD CONSTRAINT alumni_tracker_app_s_projected_grad_fsy_i_b32cf699_fk_alumni_tr FOREIGN KEY (projected_grad_fsy_id) REFERENCES public.alumni_tracker_app_fiscalschoolyear(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studenttransitivedemos alumni_tracker_app_s_raw_mailing_state_id_9f15e730_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_studenttransitivedemos
    ADD CONSTRAINT alumni_tracker_app_s_raw_mailing_state_id_9f15e730_fk_alumni_tr FOREIGN KEY (raw_mailing_state_id) REFERENCES public.alumni_tracker_app_usstate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studentenrollmenttrack alumni_tracker_app_s_start_fsy_id_51308180_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_studentenrollmenttrack
    ADD CONSTRAINT alumni_tracker_app_s_start_fsy_id_51308180_fk_alumni_tr FOREIGN KEY (start_fsy_id) REFERENCES public.alumni_tracker_app_fiscalschoolyear(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studentenrollmenttrack alumni_tracker_app_s_stop_fsy_id_16ca12f7_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_studentenrollmenttrack
    ADD CONSTRAINT alumni_tracker_app_s_stop_fsy_id_16ca12f7_fk_alumni_tr FOREIGN KEY (stop_fsy_id) REFERENCES public.alumni_tracker_app_fiscalschoolyear(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studentcredithistory alumni_tracker_app_s_student_id_2f4e2f0b_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_studentcredithistory
    ADD CONSTRAINT alumni_tracker_app_s_student_id_2f4e2f0b_fk_alumni_tr FOREIGN KEY (student_id) REFERENCES public.alumni_tracker_app_student(person_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studentidentifiers alumni_tracker_app_s_student_id_83d3a159_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_studentidentifiers
    ADD CONSTRAINT alumni_tracker_app_s_student_id_83d3a159_fk_alumni_tr FOREIGN KEY (student_id) REFERENCES public.alumni_tracker_app_student(person_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_studenttransitivedemos alumni_tracker_app_s_student_id_eb4123d4_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_studenttransitivedemos
    ADD CONSTRAINT alumni_tracker_app_s_student_id_eb4123d4_fk_alumni_tr FOREIGN KEY (student_id) REFERENCES public.alumni_tracker_app_student(person_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_userprofile alumni_tracker_app_u_person_id_e8e2778d_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_userprofile
    ADD CONSTRAINT alumni_tracker_app_u_person_id_e8e2778d_fk_alumni_tr FOREIGN KEY (person_id) REFERENCES public.alumni_tracker_app_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_userprofilepreference alumni_tracker_app_u_preference_id_04c25c83_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_userprofilepreference
    ADD CONSTRAINT alumni_tracker_app_u_preference_id_04c25c83_fk_alumni_tr FOREIGN KEY (preference_id) REFERENCES public.alumni_tracker_app_preferencedomainpreference(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_userprofilepreference alumni_tracker_app_u_user_profile_id_c643bc59_fk_alumni_tr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_userprofilepreference
    ADD CONSTRAINT alumni_tracker_app_u_user_profile_id_c643bc59_fk_alumni_tr FOREIGN KEY (user_profile_id) REFERENCES public.alumni_tracker_app_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: alumni_tracker_app_userprofile alumni_tracker_app_userprofile_user_id_cd274a02_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumni_tracker_app_userprofile
    ADD CONSTRAINT alumni_tracker_app_userprofile_user_id_cd274a02_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

