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
    weight_in_ton integer,
    habitants_number integer,
    hydrogen_percentage numeric(2,1),
    description text,
    liveable boolean
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
    weight_in_ton integer,
    habitants_number integer,
    hydrogen_percentage numeric(2,1),
    description text,
    liveable boolean,
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
    weight_in_ton integer,
    habitants_number integer,
    hydrogen_percentage numeric(2,1),
    description text,
    liveable boolean,
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
    weight_in_ton integer,
    habitants_number integer,
    hydrogen_percentage numeric(2,1),
    description text,
    liveable boolean,
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
-- Name: test; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.test (
    test_id integer NOT NULL,
    name character varying(30) NOT NULL,
    weight integer,
    liveable integer
);


ALTER TABLE public.test OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.test_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_test_id_seq OWNER TO freecodecamp;

--
-- Name: test_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.test_test_id_seq OWNED BY public.test.test_id;


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
-- Name: test test_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test ALTER COLUMN test_id SET DEFAULT nextval('public.test_test_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'lorem', 1245, 849, 9.2, 'description...', false);
INSERT INTO public.galaxy VALUES (2, 'lorem', 1245, 849, 9.2, 'description...', false);
INSERT INTO public.galaxy VALUES (3, 'lorem', 1245, 849, 9.2, 'description...', false);
INSERT INTO public.galaxy VALUES (4, 'lorem', 1245, 849, 9.2, 'description...', false);
INSERT INTO public.galaxy VALUES (5, 'lorem', 1245, 849, 9.2, 'description...', false);
INSERT INTO public.galaxy VALUES (6, 'lorem', 1245, 849, 9.2, 'description...', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'lorem', 1245, 849, 9.2, 'description...', false, 7);
INSERT INTO public.moon VALUES (2, 'lorem', 1245, 849, 9.2, 'description...', false, 7);
INSERT INTO public.moon VALUES (3, 'lorem', 1245, 849, 9.2, 'description...', false, 7);
INSERT INTO public.moon VALUES (4, 'lorem', 1245, 849, 9.2, 'description...', false, 7);
INSERT INTO public.moon VALUES (5, 'lorem', 1245, 849, 9.2, 'description...', false, 7);
INSERT INTO public.moon VALUES (6, 'lorem', 1245, 849, 9.2, 'description...', false, 7);
INSERT INTO public.moon VALUES (7, 'lorem', 1245, 849, 9.2, 'description...', false, 7);
INSERT INTO public.moon VALUES (8, 'lorem', 1245, 849, 9.2, 'description...', false, 7);
INSERT INTO public.moon VALUES (9, 'lorem', 1245, 849, 9.2, 'description...', false, 7);
INSERT INTO public.moon VALUES (10, 'lorem', 1245, 849, 9.2, 'description...', false, 7);
INSERT INTO public.moon VALUES (11, 'lorem', 1245, 849, 9.2, 'description...', false, 7);
INSERT INTO public.moon VALUES (12, 'lorem', 1245, 849, 9.2, 'description...', false, 7);
INSERT INTO public.moon VALUES (13, 'lorem', 1245, 849, 9.2, 'description...', false, 7);
INSERT INTO public.moon VALUES (14, 'lorem', 1245, 849, 9.2, 'description...', false, 7);
INSERT INTO public.moon VALUES (15, 'lorem', 1245, 849, 9.2, 'description...', false, 7);
INSERT INTO public.moon VALUES (16, 'lorem', 1245, 849, 9.2, 'description...', false, 7);
INSERT INTO public.moon VALUES (17, 'lorem', 1245, 849, 9.2, 'description...', false, 7);
INSERT INTO public.moon VALUES (18, 'lorem', 1245, 849, 9.2, 'description...', false, 7);
INSERT INTO public.moon VALUES (19, 'lorem', 1245, 849, 9.2, 'description...', false, 7);
INSERT INTO public.moon VALUES (20, 'lorem', 1245, 849, 9.2, 'description...', false, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'lorem', 1245, 849, 9.2, 'description...', false, 1);
INSERT INTO public.planet VALUES (2, 'lorem', 1245, 849, 9.2, 'description...', false, 2);
INSERT INTO public.planet VALUES (3, 'lorem', 1245, 849, 9.2, 'description...', false, 2);
INSERT INTO public.planet VALUES (4, 'lorem', 1245, 849, 9.2, 'description...', false, 2);
INSERT INTO public.planet VALUES (5, 'lorem', 1245, 849, 9.2, 'description...', false, 3);
INSERT INTO public.planet VALUES (6, 'lorem', 1245, 849, 9.2, 'description...', false, 4);
INSERT INTO public.planet VALUES (8, 'lorem', 1245, 849, 9.2, 'description...', false, 5);
INSERT INTO public.planet VALUES (9, 'lorem', 1245, 849, 9.2, 'description...', false, 5);
INSERT INTO public.planet VALUES (10, 'lorem', 1245, 849, 9.2, 'description...', false, 6);
INSERT INTO public.planet VALUES (11, 'lorem', 1245, 849, 9.2, 'description...', false, 6);
INSERT INTO public.planet VALUES (12, 'lorem', 1245, 849, 9.2, 'description...', false, 6);
INSERT INTO public.planet VALUES (7, 'lorem', 1245, 849, 9.2, 'description...', false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 'lorem', 1245, 849, 9.2, 'description...', false, 1);
INSERT INTO public.star VALUES (6, 'lorem', 1245, 849, 9.2, 'description...', false, 1);
INSERT INTO public.star VALUES (5, 'lorem', 1245, 849, 9.2, 'description...', false, 1);
INSERT INTO public.star VALUES (4, 'lorem', 1245, 849, 9.2, 'description...', false, 1);
INSERT INTO public.star VALUES (3, 'lorem', 1245, 849, 9.2, 'description...', false, 1);
INSERT INTO public.star VALUES (2, 'lorem', 1245, 849, 9.2, 'description...', false, 1);
INSERT INTO public.star VALUES (1, 'lorem', 1245, 849, 9.2, 'description...', false, 1);


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.test VALUES (1, 'lorem', 1245, 84);
INSERT INTO public.test VALUES (2, 'lorem', 1245, 84);
INSERT INTO public.test VALUES (3, 'lorem', 1245, 84);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 57, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: test_test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.test_test_id_seq', 3, true);


--
-- Name: test fk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT fk UNIQUE (test_id);


--
-- Name: galaxy fk_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_galaxy UNIQUE (galaxy_id);


--
-- Name: moon fk_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon UNIQUE (moon_id);


--
-- Name: planet fk_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet UNIQUE (planet_id);


--
-- Name: star fk_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star UNIQUE (star_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (test_id);


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

