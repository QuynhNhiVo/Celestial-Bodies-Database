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
-- Name: celestial; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial (
    celestial_id integer NOT NULL,
    name character varying(30) NOT NULL,
    total integer
);


ALTER TABLE public.celestial OWNER TO freecodecamp;

--
-- Name: celestial_celestial_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_celestial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_celestial_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_celestial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_celestial_id_seq OWNED BY public.celestial.celestial_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_types text,
    distance_from_earth integer,
    apparent_magnitude numeric
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
    designation text,
    mass integer,
    moon_types text,
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
    planet_types text,
    year_of_discovery integer,
    discovery_method text,
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
    light_year integer,
    is_extreme boolean,
    dwarf text,
    is_hottest boolean,
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
-- Name: celestial celestial_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial ALTER COLUMN celestial_id SET DEFAULT nextval('public.celestial_celestial_id_seq'::regclass);


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
-- Data for Name: celestial; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial VALUES (1, 'galaxy', 6);
INSERT INTO public.celestial VALUES (2, 'star', 7);
INSERT INTO public.celestial VALUES (3, 'planet', 15);
INSERT INTO public.celestial VALUES (4, 'moon', 20);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'SA', 3, 3.44);
INSERT INTO public.galaxy VALUES (2, 'NGC 7130', 'SA', 200, 12.1);
INSERT INTO public.galaxy VALUES (3, 'NGC 2276', 'SBA', 120, 11.8);
INSERT INTO public.galaxy VALUES (4, 'Little Sombrero', 'SA', 40, 11.6);
INSERT INTO public.galaxy VALUES (5, 'Milky Way', 'SB', 2, NULL);
INSERT INTO public.galaxy VALUES (6, 'Tadpole', 'SB', 420, 14.4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ananke', 'Jupiter XII', NULL, 'Jupiter', 1);
INSERT INTO public.moon VALUES (2, 'Nessus', '7066', NULL, 'Centaur', 2);
INSERT INTO public.moon VALUES (3, 'Larissa', 'Neptune VII', 4, 'Neptune', 3);
INSERT INTO public.moon VALUES (4, 'Janus', 'Saturn X', 2, 'Saturn', 4);
INSERT INTO public.moon VALUES (5, 'Despina', 'Neptune V', NULL, 'Neptune', 3);
INSERT INTO public.moon VALUES (6, 'Portia', 'Ueanus XII', NULL, 'Uranus', 5);
INSERT INTO public.moon VALUES (7, 'Epimetheus', 'Saturn XI', 1, 'Saturn', 4);
INSERT INTO public.moon VALUES (8, 'Nix', 'Pluto II', 45, 'PLuto', 6);
INSERT INTO public.moon VALUES (9, 'Hydra', 'Pluto III', 48, 'Pluto', 6);
INSERT INTO public.moon VALUES (10, 'Siarnaq', 'Saturn XXIX', NULL, 'Saturn', 4);
INSERT INTO public.moon VALUES (11, 'Callirrhoe', 'Jupiter XVII', NULL, 'Jupiter', 1);
INSERT INTO public.moon VALUES (12, 'Daphnis', 'Saturn XXXV', 0, 'Saturn', 4);
INSERT INTO public.moon VALUES (13, 'Carpo', 'Jupiter XLVI', NULL, 'Jupiter', 1);
INSERT INTO public.moon VALUES (14, 'Namaka', 'Haumea II', 2, 'Haumea', 7);
INSERT INTO public.moon VALUES (15, 'Bienor', '54598', NULL, 'Centaur', 2);
INSERT INTO public.moon VALUES (16, 'S/2015', 'Makemake I', NULL, 'Makemake I', 8);
INSERT INTO public.moon VALUES (17, 'Hippocamp', 'Neptune XIV', NULL, 'Neptune', 3);
INSERT INTO public.moon VALUES (18, 'Sinope', 'Jupiter IX', NULL, 'Jupiter', 1);
INSERT INTO public.moon VALUES (19, 'Okyrhoe', '52872', NULL, 'Centaur', 2);
INSERT INTO public.moon VALUES (20, 'Helene', 'Saturn XII', NULL, 'Saturn', 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Jupiter', 'Giant', 1976, NULL, 7);
INSERT INTO public.planet VALUES (2, 'Centaur', 'Giant', 1977, NULL, 4);
INSERT INTO public.planet VALUES (3, 'Neptune', 'Ice Giant', 1846, NULL, 5);
INSERT INTO public.planet VALUES (4, 'Saturn', 'Giant', 1610, NULL, 2);
INSERT INTO public.planet VALUES (5, 'Uranus', 'Giant', 1781, NULL, 3);
INSERT INTO public.planet VALUES (6, 'Pluto', 'Dwarf', 1930, NULL, 6);
INSERT INTO public.planet VALUES (7, 'Haumea', 'Dwarf', 2004, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Makemake I', 'Dwarf', 2005, NULL, 2);
INSERT INTO public.planet VALUES (9, 'Dulcinea', 'Hoe Neptune', 2004, 'Radial', 1);
INSERT INTO public.planet VALUES (10, 'Hypatia', 'Gas Giant', 2002, 'Radial', 2);
INSERT INTO public.planet VALUES (11, 'Saffar', 'Hot Neptune', 1996, 'radial', 3);
INSERT INTO public.planet VALUES (12, 'Tadmor', NULL, 2003, ' radial', 4);
INSERT INTO public.planet VALUES (13, 'Bendida', 'Hot Neptune', 2010, 'Transit', 5);
INSERT INTO public.planet VALUES (14, 'Dagon', NULL, 2008, 'Transit', 6);
INSERT INTO public.planet VALUES (15, 'Negoiu', 'Hot Jupiter', 2006, 'Transit', 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Mu Arae', 50, NULL, NULL, true, 5);
INSERT INTO public.star VALUES (2, 'Iota Draconis', 101, NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES (3, 'Upsilon Andromedae', 44, false, 'Red', false, 1);
INSERT INTO public.star VALUES (4, 'Gamma Cephei', 45, false, 'Red', false, 3);
INSERT INTO public.star VALUES (5, 'WASP-21', 850, NULL, NULL, true, 4);
INSERT INTO public.star VALUES (6, 'Fomalhaut', 25, false, 'Red', false, 2);
INSERT INTO public.star VALUES (7, 'XO-1', 536, NULL, NULL, false, 5);


--
-- Name: celestial_celestial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_celestial_id_seq', 4, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: celestial celestial_celestial_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial
    ADD CONSTRAINT celestial_celestial_id_key UNIQUE (celestial_id);


--
-- Name: celestial celestial_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial
    ADD CONSTRAINT celestial_pkey PRIMARY KEY (celestial_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

