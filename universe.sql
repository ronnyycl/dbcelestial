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
-- Name: constellations; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellations (
    constellations_id integer NOT NULL,
    name character varying(20),
    visible boolean NOT NULL,
    spanish_name character varying(20)
);


ALTER TABLE public.constellations OWNER TO freecodecamp;

--
-- Name: constellations_constellations_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellations_constellations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellations_constellations_id_seq OWNER TO freecodecamp;

--
-- Name: constellations_constellations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellations_constellations_id_seq OWNED BY public.constellations.constellations_id;


--
-- Name: constellations_id_constellations_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellations_id_constellations_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellations_id_constellations_seq OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type character varying(30),
    group_in character varying(20),
    notes character varying(50),
    million_light_years numeric(4,2)
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
    diameter_km numeric(8,2),
    satelite_distance integer,
    planet_id integer,
    galaxy_id integer
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
    orbiratory_distance integer,
    equatorial_radius integer,
    surface_gravity numeric(4,2),
    day_length character varying(50),
    length_year character varying(50),
    atmospheric_composition character varying(100),
    description text,
    inhabited boolean,
    galaxy_id integer
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
    magnitude numeric(4,2),
    distance_light_years numeric(6,2),
    size character varying(30),
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
-- Name: constellations constellations_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations ALTER COLUMN constellations_id SET DEFAULT nextval('public.constellations_constellations_id_seq'::regclass);


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
-- Data for Name: constellations; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellations VALUES (1, 'Andronmeda', true, 'Andrómeda');
INSERT INTO public.constellations VALUES (2, 'Antilia', true, 'La Máquina Neumatica');
INSERT INTO public.constellations VALUES (3, 'Apus', false, 'El Ave del Paraíso');
INSERT INTO public.constellations VALUES (4, 'Aquairus', false, 'Acuario');
INSERT INTO public.constellations VALUES (5, 'Aquila', true, 'El Águila');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 'SBbc', 'Grupo Local', 'Galaxia que alberga la tierra', 0.00);
INSERT INTO public.galaxy VALUES (2, 'Enanada del Can Mayor', 'Irr', 'Grupo Local', 'Satelite de la Via Lactea', 0.03);
INSERT INTO public.galaxy VALUES (3, 'Enana de Carina', 'dE3', 'Grupo Local', 'Satelite de la Via Lactea', 0.82);
INSERT INTO public.galaxy VALUES (4, 'Enana Elíptica de Sagitario', 'dSph/E7', 'Grupo Local', 'Satelite de la Via Lactea', 0.08);
INSERT INTO public.galaxy VALUES (5, 'NGC 185', 'dE3 pec', 'Grupo Local', 'Satelite de Andromeda', 2.01);
INSERT INTO public.galaxy VALUES (6, 'Andrómeda II', 'dE0', 'Grupo Local', 'Satelite de Andromeda', 2.13);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3474.80, 356565, 3, 1);
INSERT INTO public.moon VALUES (4, 'Metis', 43.00, NULL, 5, 1);
INSERT INTO public.moon VALUES (5, 'Adastea', 16.40, NULL, 5, 1);
INSERT INTO public.moon VALUES (6, 'Amaltea', 167.00, NULL, 5, 1);
INSERT INTO public.moon VALUES (7, 'Tebe', 98.60, NULL, 5, 1);
INSERT INTO public.moon VALUES (8, 'Io', 3642.90, NULL, 5, 1);
INSERT INTO public.moon VALUES (2, 'Fobos', 22.20, 9377, 4, 1);
INSERT INTO public.moon VALUES (3, 'Deimos', 12.60, 23460, 4, 1);
INSERT INTO public.moon VALUES (9, 'S/2009 S1', 0.30, 117000, 6, 1);
INSERT INTO public.moon VALUES (10, 'Pan', 20.00, 135460, 6, 1);
INSERT INTO public.moon VALUES (11, 'Dafne', 6.50, 192500, 6, 1);
INSERT INTO public.moon VALUES (12, 'Atlas', 30.20, 165254, 6, 1);
INSERT INTO public.moon VALUES (13, 'Prometeo', 86.20, 201011, 6, 1);
INSERT INTO public.moon VALUES (14, 'Pandora', 81.40, 65120, 6, 1);
INSERT INTO public.moon VALUES (15, 'Epimeteo', 116.20, 89999, 6, 1);
INSERT INTO public.moon VALUES (16, 'Cordelia', 40.20, 111889, 7, 1);
INSERT INTO public.moon VALUES (17, 'Ofelia', 42.80, 19923, 7, 1);
INSERT INTO public.moon VALUES (18, 'Bianca', 51.40, 632692, 7, 1);
INSERT INTO public.moon VALUES (19, 'Cresida', 79.60, 151523, 7, 1);
INSERT INTO public.moon VALUES (20, 'Julieta', 93.60, 202020, 7, 1);
INSERT INTO public.moon VALUES (21, 'Porcia', 136.00, 14141520, 7, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 57909227, 2439, 3.70, '58,6 earth days', '87,87 earth days', 'Oxigeno, Sodio, Hidrogeno, Helio y Potasio', 'Posee las temperaturas mas extremas del sistema solar, 430°C al día y -180°C en la noche', false, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 108209475, 6051, 8.87, '116 days and 18 earth hours', '225 earth days', 'Dioxido de Carbono y Nitrogeno', 'Alcanza las temperaturas de 475°C como para derretir el plomo', false, NULL);
INSERT INTO public.planet VALUES (3, 'Tierra', 149598262, 6371, 9.80, '23 hours and 56 minutes', '365 days, 6 hours and 9.76 minutes', 'Oxígeno y Nitrógeno', 'El unico planeta que hasta los momentos esta poblado por seres vivos', true, NULL);
INSERT INTO public.planet VALUES (4, 'Marte', 227943824, 3389, 3.71, '24 hours and 37 minutes', '687 earth days', 'Dióxido de Carbono, Nitrógeno y Argón', 'Marte no es un planeta claido, es seco rocoso, inhóspito y frío. Posee agua congelada pero no en la superficie', false, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 778340821, 69911, 24.79, '9 hours and 56 minutes', '12 earth years', 'Hidrógeno y Helio', 'El planeta mas grande del sistema solar', false, NULL);
INSERT INTO public.planet VALUES (6, 'Saturno', 1426666422, 58238, 10.40, '10 hours and 34 minutes', '29 earth years', 'Hidrógeno y Helio', 'Uno de los otros grandes planetas del sistema s solar y destaca por sus anillos pareciendo ser un cementerio de lunas', false, NULL);
INSERT INTO public.planet VALUES (7, 'Urano', 28706581, 25362, 8.87, '17 hours and  14 minutes', '84 earth years', 'Hidrógeno, Helio y Metano', 'Gigante helado, compuesto por una especie de hielo, amoníaco y metano', false, NULL);
INSERT INTO public.planet VALUES (8, 'Neptuno', 449839641, 24622, 11.15, '16 hours and 6 minutes', '165 earth years', 'Hidrógeno, Helio y  Metano', 'El primer planeta descubierto por calculos matematicos, ya que no es visto a simplevista desde la tierra', false, NULL);
INSERT INTO public.planet VALUES (9, 'Bronco', 125255, 22544, 8.90, '3 earth days', '95 years', 'Dioxido de Carbono', 'PLaneta no existente', false, 1);
INSERT INTO public.planet VALUES (10, 'Draco', 125255, 22544, 8.90, '65 earth days', '100 years', 'Dioxido de Carbono', 'PLaneta no existente', false, 1);
INSERT INTO public.planet VALUES (11, 'Rectvo', 125255, 22544, 8.90, '65 earth days', '100 years', 'Dioxido de Carbono', 'PLaneta no existente', false, 1);
INSERT INTO public.planet VALUES (12, 'Volvo', 125255, 22544, 8.90, '65 earth days', '100 years', 'Dioxido de Carbono', 'PLaneta no existente', false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Antares', 1.09, 50.00, 'Supergigante roja', 1);
INSERT INTO public.star VALUES (2, 'Shaula', 1.62, 57.00, 'Subgigante Azul', 1);
INSERT INTO public.star VALUES (3, 'Canopus', 0.72, 309.80, 'Supergigante blanco-amarilla', 1);
INSERT INTO public.star VALUES (4, 'Beta Carinae', 1.70, 110.00, 'Subgigante blanca', 1);
INSERT INTO public.star VALUES (5, 'Alnilam', 1.70, 1.34, 'Supergigante azul', 1);
INSERT INTO public.star VALUES (6, 'Alnitak', 1.70, 700.00, 'Supergigante azul', 1);


--
-- Name: constellations_constellations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellations_constellations_id_seq', 5, true);


--
-- Name: constellations_id_constellations_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellations_id_constellations_seq', 10000, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constellations constellations_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_name_key UNIQUE (name);


--
-- Name: constellations constellations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_pkey PRIMARY KEY (constellations_id);


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
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key1 UNIQUE (name);


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
-- Name: planet planet_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key1 UNIQUE (name);


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
-- Name: star star_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key1 UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

