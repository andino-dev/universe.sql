--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    height integer,
    weight numeric(5,1),
    width integer,
    is_spheric boolean,
    name character varying(30) NOT NULL,
    username text
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
-- Name: last_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.last_table (
    name character varying(30) NOT NULL,
    col_1 integer,
    col_2 integer,
    last_table_id integer NOT NULL
);


ALTER TABLE public.last_table OWNER TO freecodecamp;

--
-- Name: last_table_last_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.last_table_last_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.last_table_last_table_id_seq OWNER TO freecodecamp;

--
-- Name: last_table_last_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.last_table_last_table_id_seq OWNED BY public.last_table.last_table_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    weight numeric(5,1),
    height integer,
    width integer,
    is_moon boolean,
    name character varying(30) NOT NULL,
    username text,
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
    weight numeric(5,1),
    width integer,
    height integer,
    is_planet boolean,
    name character varying(30) NOT NULL,
    username text,
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
    weight numeric(5,1),
    width integer,
    height integer,
    is_star boolean,
    name character varying(30) NOT NULL,
    username text,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: last_table last_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.last_table ALTER COLUMN last_table_id SET DEFAULT nextval('public.last_table_last_table_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, NULL, NULL, 'Andromeda', NULL);
INSERT INTO public.galaxy VALUES (2, NULL, NULL, NULL, NULL, 'Canis Major Dwarf', NULL);
INSERT INTO public.galaxy VALUES (3, NULL, NULL, NULL, NULL, 'Cygnus', NULL);
INSERT INTO public.galaxy VALUES (4, NULL, NULL, NULL, NULL, 'Maffei I', NULL);
INSERT INTO public.galaxy VALUES (5, NULL, NULL, NULL, NULL, 'Maffei II', NULL);
INSERT INTO public.galaxy VALUES (6, NULL, NULL, NULL, NULL, 'Magellanic Clouds', NULL);
INSERT INTO public.galaxy VALUES (7, NULL, NULL, NULL, NULL, 'Galaxie', NULL);


--
-- Data for Name: last_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.last_table VALUES ('Pipps', 2, NULL, 1);
INSERT INTO public.last_table VALUES ('Yoppss', 3, NULL, 2);
INSERT INTO public.last_table VALUES ('kipss', 5, NULL, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, NULL, NULL, NULL, 'lune', NULL, 3);
INSERT INTO public.moon VALUES (2, NULL, NULL, NULL, NULL, 'phobos', NULL, 3);
INSERT INTO public.moon VALUES (3, NULL, NULL, NULL, NULL, 'deimos', NULL, 4);
INSERT INTO public.moon VALUES (4, NULL, NULL, NULL, NULL, 'Ganymede', NULL, 5);
INSERT INTO public.moon VALUES (5, NULL, NULL, NULL, NULL, 'callisto', NULL, 5);
INSERT INTO public.moon VALUES (6, NULL, NULL, NULL, NULL, 'io', NULL, 5);
INSERT INTO public.moon VALUES (7, NULL, NULL, NULL, NULL, 'armalthee', NULL, 5);
INSERT INTO public.moon VALUES (8, NULL, NULL, NULL, NULL, 'himalia', NULL, 5);
INSERT INTO public.moon VALUES (9, NULL, NULL, NULL, NULL, 'thebe', NULL, 5);
INSERT INTO public.moon VALUES (10, NULL, NULL, NULL, NULL, 'sinope', NULL, 5);
INSERT INTO public.moon VALUES (11, NULL, NULL, NULL, NULL, 'pasiphae', NULL, 5);
INSERT INTO public.moon VALUES (12, NULL, NULL, NULL, NULL, 'carme', NULL, 5);
INSERT INTO public.moon VALUES (13, NULL, NULL, NULL, NULL, 'ananke', NULL, 5);
INSERT INTO public.moon VALUES (14, NULL, NULL, NULL, NULL, 'elara', NULL, 5);
INSERT INTO public.moon VALUES (15, NULL, NULL, NULL, NULL, 'lysithea', NULL, 5);
INSERT INTO public.moon VALUES (16, NULL, NULL, NULL, NULL, 'leda', NULL, 5);
INSERT INTO public.moon VALUES (17, NULL, NULL, NULL, NULL, 'adrastee', NULL, 5);
INSERT INTO public.moon VALUES (18, NULL, NULL, NULL, NULL, 'metis', NULL, 5);
INSERT INTO public.moon VALUES (19, NULL, NULL, NULL, NULL, 'titan', NULL, 6);
INSERT INTO public.moon VALUES (20, NULL, NULL, NULL, NULL, 'japet', NULL, 6);
INSERT INTO public.moon VALUES (21, NULL, NULL, NULL, NULL, 'rhea', NULL, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, NULL, NULL, NULL, 'Mercure', NULL, 15);
INSERT INTO public.planet VALUES (2, NULL, NULL, NULL, NULL, 'Venus', NULL, 15);
INSERT INTO public.planet VALUES (3, NULL, NULL, NULL, NULL, 'Terre', NULL, 15);
INSERT INTO public.planet VALUES (4, NULL, NULL, NULL, NULL, 'Mars', NULL, 15);
INSERT INTO public.planet VALUES (5, NULL, NULL, NULL, NULL, 'Jupiter', NULL, 15);
INSERT INTO public.planet VALUES (6, NULL, NULL, NULL, NULL, 'Saturne', NULL, 15);
INSERT INTO public.planet VALUES (7, NULL, NULL, NULL, NULL, 'Uranus', NULL, 15);
INSERT INTO public.planet VALUES (8, NULL, NULL, NULL, NULL, 'Neptune', NULL, 15);
INSERT INTO public.planet VALUES (9, NULL, NULL, NULL, NULL, 'Ceres', NULL, 11);
INSERT INTO public.planet VALUES (10, NULL, NULL, NULL, NULL, 'Pluton', NULL, 11);
INSERT INTO public.planet VALUES (11, NULL, NULL, NULL, NULL, 'Eris', NULL, 11);
INSERT INTO public.planet VALUES (12, NULL, NULL, NULL, NULL, 'Makemake', NULL, 11);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (11, NULL, NULL, NULL, NULL, 'Brown dwarfs', NULL, 7);
INSERT INTO public.star VALUES (12, NULL, NULL, NULL, NULL, 'Red dwarfs', NULL, 7);
INSERT INTO public.star VALUES (13, NULL, NULL, NULL, NULL, 'Yellow dwarfs', NULL, 7);
INSERT INTO public.star VALUES (14, NULL, NULL, NULL, NULL, 'Red giants', NULL, 7);
INSERT INTO public.star VALUES (15, NULL, NULL, NULL, NULL, 'Luminous giants', NULL, 7);
INSERT INTO public.star VALUES (16, NULL, NULL, NULL, NULL, 'Population stars III', NULL, 7);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: last_table_last_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.last_table_last_table_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 16, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: last_table last_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.last_table
    ADD CONSTRAINT last_table_name_key UNIQUE (name);


--
-- Name: last_table last_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.last_table
    ADD CONSTRAINT last_table_pkey PRIMARY KEY (last_table_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--
