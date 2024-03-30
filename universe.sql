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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    description text,
    name character varying(40) NOT NULL
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    has_star boolean,
    type character varying(40)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_galaxy_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_galaxy_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    is_sperichal boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_moon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_moon_seq OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_moon_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    star_id integer NOT NULL,
    distance_from_star_ua numeric,
    radius_in_km integer,
    number_of_moon integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_planet_seq OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_planet_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    has_planet boolean NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_star_seq OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_star_seq OWNED BY public.star.star_id;


--
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_galaxy_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_moon_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_planet_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_star_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'è una costellazione dello zodiaco, comunemente raffigurato come un centauro tendente un arco e una freccia', 'Sagittario');
INSERT INTO public.constellation VALUES (2, 'è una importante costellazione settentrionale', 'Cigno');
INSERT INTO public.constellation VALUES (3, 'è una costellazione tipica dei cieli boreali', 'Orsa Maggiore');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lattea', 'è la galassia a cui appartiene il nostro Sistema solare', true, 'spirale');
INSERT INTO public.galaxy VALUES (2, 'Alfa Centauri', 'è un sistema stellare triplo situato nella costellazione australe del Centauro', true, 'binario');
INSERT INTO public.galaxy VALUES (3, 'Stella Barnard', 'è una nana rossa nella costellazione dell Ofiuiuco', false, 'spetrale');
INSERT INTO public.galaxy VALUES (4, 'WOLF 359', 'è una stella nana rossa di magnitudine 13,53 situata nella costellazione del Leone', false, 'brillamento');
INSERT INTO public.galaxy VALUES (5, 'Lalande', 'è una stella rossa di sequenza principale nella costellazione dell Orsasa Maggiore', false, 'perpendicolare');
INSERT INTO public.galaxy VALUES (6, 'Sirio', 'è una stella bianca della costellazione del Cane Maggiore', true, 'binario');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Fobos', 'satellite di Marte', true, 4);
INSERT INTO public.moon VALUES (2, 'Deimos', 'satellite di Marte', false, 4);
INSERT INTO public.moon VALUES (3, 'Luna', 'satellite della Terra', true, 3);
INSERT INTO public.moon VALUES (4, 'Ganimede', 'satellite di Giove', true, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', 'satellite di Giove', true, 5);
INSERT INTO public.moon VALUES (6, 'Inalia', 'satellite di Giove', true, 5);
INSERT INTO public.moon VALUES (7, 'Tebe', 'satellite di Giove', true, 5);
INSERT INTO public.moon VALUES (8, 'Io', 'satellite di Giove', true, 5);
INSERT INTO public.moon VALUES (9, 'Europa', 'satellite di Giove', true, 5);
INSERT INTO public.moon VALUES (10, 'Titano', 'satellite di Saturno', true, 6);
INSERT INTO public.moon VALUES (11, 'Rea', 'satellite di Saturno', true, 6);
INSERT INTO public.moon VALUES (12, 'Encelado', 'satellite di Saturno', true, 6);
INSERT INTO public.moon VALUES (13, 'Titania', 'satellite di Urano', false, 7);
INSERT INTO public.moon VALUES (14, 'Oberon', 'satellite di Urano', false, 7);
INSERT INTO public.moon VALUES (15, 'Umbriel', 'satellite di Urano', false, 7);
INSERT INTO public.moon VALUES (16, 'Tritone', 'satellite di Nettuno', false, 8);
INSERT INTO public.moon VALUES (17, 'Proteo', 'satellite di Nettuno', false, 8);
INSERT INTO public.moon VALUES (18, 'Nereide', 'satellite di Nettuno', false, 8);
INSERT INTO public.moon VALUES (19, 'Larissa', 'satellite di Nettuno', false, 8);
INSERT INTO public.moon VALUES (20, 'Amaltea', 'satellite di Giove', true, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 'è il pianeta del sistema solare più vicino al Sole', false, 1, 0.39, 2440, 0);
INSERT INTO public.planet VALUES (2, 'Venere', 'è il secondo pianeta del sistema solare in ordine di distanza dal Sole', false, 1, 0.72, 6052, 0);
INSERT INTO public.planet VALUES (3, 'Terra', 'è il terzo pianeta del sistema solare in ordine di distanza dal Sole', true, 1, 1.00, 6371, 1);
INSERT INTO public.planet VALUES (4, 'Marte', ' è il quarto pianeta del sistema solare in ordine di distananza dal Sole', false, 1, 1.52, 3390, 2);
INSERT INTO public.planet VALUES (5, 'Giove', 'è il quinto pianeta del sistema solare in oriinne di distaanza dal Sole', false, 1, 5.2, 69911, 7);
INSERT INTO public.planet VALUES (6, 'Saturno', 'il sesto pianeta del sistema solare', false, 1, 9.54, 58232, 3);
INSERT INTO public.planet VALUES (7, 'Urano', 'il settimo pianeta del sistema solare', false, 1, 19.2, 25362, 3);
INSERT INTO public.planet VALUES (8, 'Nettuno', 'ottavo pianeta del sistema solare', false, 1, 30.06, 24622, 4);
INSERT INTO public.planet VALUES (9, 'Plutone', 'pianeta nano del sistema solare', false, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Proxima A', 'Prima stella di Proxima Centauri', false, 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Proxima B', 'Seconda stella di Proxima Centauri', false, 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Proxima C', 'Terza stella di Proxima Centauri', false, 2, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sole', 'è la stella madre del sistema solare', true);
INSERT INTO public.star VALUES (2, 2, 'Proxima Centauri', 'è una stella nana rossa di classe spettrale M5 Ve', true);
INSERT INTO public.star VALUES (2, 3, 'Alfa Centauri A', 'è una stella nana gialla della costellazione del Centauro', false);
INSERT INTO public.star VALUES (2, 4, 'Alfa Centauri B', 'è una stella nana arancione del sistema stellare di Alfa Centauri', false);
INSERT INTO public.star VALUES (6, 5, 'Sirio A', 'è una stella bianca della costellazione del Cane Maggiore', false);
INSERT INTO public.star VALUES (6, 6, 'Sirio B', 'è una stella nana bianca che orbita intorno a Sirio', false);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 3, true);


--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_galaxy_seq', 6, true);


--
-- Name: moon_id_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_moon_seq', 20, true);


--
-- Name: planet_id_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_planet_seq', 12, true);


--
-- Name: star_id_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_star_seq', 6, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: star name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name UNIQUE (star_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

