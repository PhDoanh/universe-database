--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    is_new boolean,
    has_life boolean,
    age_in_millions_of_years integer NOT NULL,
    temperature_in_kelvin integer,
    distance_from_earth numeric(4,3)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    is_new boolean,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    temperature_in_kelvin integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    temperature_in_kelvin integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    is_new boolean,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    temperature_in_kelvin integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    is_new boolean,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    temperature_in_kelvin integer
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_sun_id_seq OWNED BY public.sun.sun_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', NULL, true, false, 10000, NULL, 2.375);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', NULL, false, false, 5000, NULL, 1.234);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', NULL, false, true, 5500, NULL, 6.696);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', NULL, true, false, 10000, NULL, 2.375);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', NULL, false, false, 5000, NULL, 1.234);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', NULL, false, true, 70000, NULL, 3.600);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', NULL, true, true, 100000, 350, 1);
INSERT INTO public.moon VALUES (2, 'moon2', NULL, true, true, 100000, 350, 1);
INSERT INTO public.moon VALUES (3, 'moon3', NULL, false, true, 100000, 350, 2);
INSERT INTO public.moon VALUES (4, 'moon4', NULL, false, false, 100000, 350, 2);
INSERT INTO public.moon VALUES (5, 'moon5', NULL, false, false, 100000, 350, 2);
INSERT INTO public.moon VALUES (6, 'moon6', NULL, true, true, 100000, 350, 3);
INSERT INTO public.moon VALUES (7, 'moon7', NULL, true, false, 100000, 350, 4);
INSERT INTO public.moon VALUES (8, 'moon8', NULL, false, true, 100000, 350, 4);
INSERT INTO public.moon VALUES (9, 'moon9', NULL, true, true, 100000, 350, 4);
INSERT INTO public.moon VALUES (10, 'moon10', NULL, false, false, 100000, 350, 4);
INSERT INTO public.moon VALUES (11, 'moon11', NULL, false, false, 100000, 350, 5);
INSERT INTO public.moon VALUES (12, 'moon12', NULL, false, false, 100000, 350, 6);
INSERT INTO public.moon VALUES (13, 'moon13', NULL, true, true, 100000, 350, 7);
INSERT INTO public.moon VALUES (14, 'moon14', NULL, false, true, 100000, 350, 8);
INSERT INTO public.moon VALUES (15, 'moon15', NULL, false, false, 100000, 350, 9);
INSERT INTO public.moon VALUES (16, 'moon16', NULL, false, true, 100000, 350, 8);
INSERT INTO public.moon VALUES (17, 'moon17', NULL, false, true, 100000, 350, 9);
INSERT INTO public.moon VALUES (18, 'moon18', NULL, false, true, 100000, 350, 10);
INSERT INTO public.moon VALUES (19, 'moon19', NULL, false, true, 100000, 350, 11);
INSERT INTO public.moon VALUES (20, 'moon20', NULL, false, true, 100000, 350, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', NULL, true, true, 10000, 3000, 1);
INSERT INTO public.planet VALUES (2, 'planet2', NULL, true, false, 25000, 5000, 1);
INSERT INTO public.planet VALUES (3, 'planet3', NULL, false, true, 30000, 3000, 1);
INSERT INTO public.planet VALUES (4, 'planet4', NULL, false, true, 70000, 3000, 2);
INSERT INTO public.planet VALUES (5, 'planet5', NULL, true, false, 86000, 3000, 2);
INSERT INTO public.planet VALUES (6, 'planet6', NULL, false, true, 9000, 3000, 2);
INSERT INTO public.planet VALUES (7, 'planet7', NULL, true, true, 120000, 3000, 2);
INSERT INTO public.planet VALUES (8, 'planet8', NULL, true, false, 103000, 3000, 3);
INSERT INTO public.planet VALUES (9, 'planet9', NULL, true, false, 1000, 3000, 4);
INSERT INTO public.planet VALUES (10, 'planet10', NULL, true, true, 500, 3000, 4);
INSERT INTO public.planet VALUES (11, 'planet11', NULL, true, true, 11000, 3000, 5);
INSERT INTO public.planet VALUES (12, 'planet12', NULL, true, true, 10000, 3000, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', NULL, true, true, 35000, 3500, 1);
INSERT INTO public.star VALUES (2, 'star2', NULL, true, true, 50000, 7500, 2);
INSERT INTO public.star VALUES (3, 'star3', NULL, true, true, 35000, 8500, 3);
INSERT INTO public.star VALUES (4, 'star4', NULL, false, false, 75000, 5500, 4);
INSERT INTO public.star VALUES (5, 'star5', NULL, false, true, 35000, 3500, 5);
INSERT INTO public.star VALUES (6, 'star6', NULL, true, false, 1000, 4500, 6);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'sun1', NULL, false, true, 1000000, 5000000);
INSERT INTO public.sun VALUES (2, 'sun2', NULL, true, true, 100000000, 100000000);
INSERT INTO public.sun VALUES (3, 'sun3', NULL, false, true, 80000, 5430000);
INSERT INTO public.sun VALUES (4, 'sun4', NULL, false, true, 70000000, 2000000);
INSERT INTO public.sun VALUES (5, 'sun5', NULL, true, true, 5000000, 5000000);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 5, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: sun sun_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_name_key UNIQUE (name);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

