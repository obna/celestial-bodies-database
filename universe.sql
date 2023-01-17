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
-- Name: exoplanet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.exoplanet (
    exoplanet_id integer NOT NULL,
    name character varying(30),
    fact character varying(30) NOT NULL
);


ALTER TABLE public.exoplanet OWNER TO freecodecamp;

--
-- Name: exoplanet_exoplanet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.exoplanet_exoplanet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.exoplanet_exoplanet_id_seq OWNER TO freecodecamp;

--
-- Name: exoplanet_exoplanet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.exoplanet_exoplanet_id_seq OWNED BY public.exoplanet.exoplanet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    galaxy_types text,
    mass integer NOT NULL,
    reg_structure boolean
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
    name character varying(30),
    year_discovered integer NOT NULL,
    rotation_period numeric(6,2),
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
    name character varying(30),
    distance_from_earth integer NOT NULL,
    has_rings boolean,
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
    name character varying(30),
    star_types character varying(30),
    mass integer NOT NULL,
    magnitude numeric(8,3),
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
-- Name: exoplanet exoplanet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exoplanet ALTER COLUMN exoplanet_id SET DEFAULT nextval('public.exoplanet_exoplanet_id_seq'::regclass);


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
-- Data for Name: exoplanet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.exoplanet VALUES (1, 'Kepler-186f', 'Rocky');
INSERT INTO public.exoplanet VALUES (2, 'Osiris', 'Seen crossing its star');
INSERT INTO public.exoplanet VALUES (3, 'Kepler-11', 'compact solar system');
INSERT INTO public.exoplanet VALUES (4, 'Kepler-16b', 'Has two stars');
INSERT INTO public.exoplanet VALUES (5, '51 Pegasi b', 'Giant');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Barred Spiral', 1300, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 1230, false);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 'Spiral', 800, false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral', 160, false);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 'Spiral', 50, false);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'Disrupted Barred Spiral', 10, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 0, 27.32, 3);
INSERT INTO public.moon VALUES (2, 'Deimos', 1877, 1.26, 4);
INSERT INTO public.moon VALUES (3, 'Phobos', 1877, 0.32, 4);
INSERT INTO public.moon VALUES (4, 'Ananke', 1951, 631.00, 5);
INSERT INTO public.moon VALUES (5, 'Aoede', 2003, 748.80, 5);
INSERT INTO public.moon VALUES (6, 'Callisto', 1610, 16.69, 5);
INSERT INTO public.moon VALUES (7, 'Cyllene', 2003, 737.80, 5);
INSERT INTO public.moon VALUES (8, 'Europa', 1610, 3.55, 5);
INSERT INTO public.moon VALUES (9, 'Ganymede', 1610, 7.16, 5);
INSERT INTO public.moon VALUES (10, 'Io', 1610, 1.77, 5);
INSERT INTO public.moon VALUES (11, 'Dione', 1684, 2.74, 6);
INSERT INTO public.moon VALUES (12, 'Oberon', 1787, 13.46, 7);
INSERT INTO public.moon VALUES (13, 'Trinculo', 2001, 759.00, 7);
INSERT INTO public.moon VALUES (14, 'Portia', 1986, 0.51, 7);
INSERT INTO public.moon VALUES (15, 'Halimede', 2002, 1874.80, 8);
INSERT INTO public.moon VALUES (16, 'Nix', 2005, 24.86, 9);
INSERT INTO public.moon VALUES (17, 'Styx', 2012, 20.20, 9);
INSERT INTO public.moon VALUES (18, 'Dysnomia', 2005, 14.00, 10);
INSERT INTO public.moon VALUES (20, 'Namaka', 2005, 34.70, 13);
INSERT INTO public.moon VALUES (21, 'Hiiaka', 2005, 49.12, 13);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 57, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 108, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 150, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 228, false, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 779, true, 3);
INSERT INTO public.planet VALUES (6, 'Saturn', 143, true, 3);
INSERT INTO public.planet VALUES (7, 'Uranus', 288, true, 3);
INSERT INTO public.planet VALUES (8, 'Neptune', 450, true, 3);
INSERT INTO public.planet VALUES (9, 'Pluto', 591, false, 4);
INSERT INTO public.planet VALUES (10, 'Eris', 10, false, 5);
INSERT INTO public.planet VALUES (12, 'Ceres', 277, false, 6);
INSERT INTO public.planet VALUES (13, 'Huamea', 6, false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Temi', 'Red Dwarf', 250, 18.246, 1);
INSERT INTO public.star VALUES (2, 'Ogun', 'Blue Supergiant', 256, 19.359, 3);
INSERT INTO public.star VALUES (3, 'Ketekete', 'White Dwarf', 155, 12.970, 2);
INSERT INTO public.star VALUES (4, 'Ebibi', 'Neutron', 151, 12.320, 5);
INSERT INTO public.star VALUES (5, 'Meji', 'Brown Dwarf', 147, 13.090, 4);
INSERT INTO public.star VALUES (6, 'Sanmo', 'Blue Supergiant', 145, 12.950, 6);


--
-- Name: exoplanet_exoplanet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.exoplanet_exoplanet_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: exoplanet exoplanet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exoplanet
    ADD CONSTRAINT exoplanet_name_key UNIQUE (name);


--
-- Name: exoplanet exoplanet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exoplanet
    ADD CONSTRAINT exoplanet_pkey PRIMARY KEY (exoplanet_id);


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

