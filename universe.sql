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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    brightest_star character varying(30),
    meaning character varying(30)
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    galaxy_types character varying(30),
    diameter_in_ly integer,
    distance_in_ly integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_satellite numeric,
    diameter_in_km integer,
    is_spherical boolean,
    age_in_billions_years integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    has_water boolean,
    diameter_in_km numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_earth_ly integer,
    temperature_in_k integer,
    planet_id integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Andromeda', 'Alpheratz', 'Greek princess');
INSERT INTO public.constellation VALUES (2, 'Canes Venatici', 'Cor Caroli', 'Hunting dogs of Bootes');
INSERT INTO public.constellation VALUES (3, 'Carina', 'Canopus', 'Keel of the Argo');
INSERT INTO public.constellation VALUES (4, 'Orion', 'Rigel', 'Hunter,son of poseidon');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Galaxy that includes our solar system', 'spiral', 0, 100000);
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', 'Satellite galaxy of the milky way', 'magellanic spiral', 14000, 158000);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'Visible to the unaided eye and appearing as a milky blur', 'spiral', 220000, 25000000);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Smallest spiral galaxy in the local group', 'spiral', 60000, 273000000);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Interacting grand-design spiral galaxy', 'spiral', 71000, 31000000);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'Constellation of Ursa major', 'spiral', 17000000, 21000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'The Moon', 384400, 3475, true, 5, 1);
INSERT INTO public.moon VALUES (1, 'Deimos', 23.460, 12, false, 5, 4);
INSERT INTO public.moon VALUES (3, 'Phobos', 6000, 23, false, 5, 4);
INSERT INTO public.moon VALUES (4, 'Charon', 19640, 1, true, NULL, 9);
INSERT INTO public.moon VALUES (5, 'Hydra', 64738, 51, false, 4, 9);
INSERT INTO public.moon VALUES (6, 'Kerberos', 60000, 12, true, 4, 9);
INSERT INTO public.moon VALUES (7, 'Nix', 48696, 50, false, 4, 9);
INSERT INTO public.moon VALUES (8, 'Styx', 632000, 16, false, 4, 9);
INSERT INTO public.moon VALUES (9, 'Proteus', 117647, 420, true, 5, 8);
INSERT INTO public.moon VALUES (10, 'Larissa', 48800, 194, false, 5, 8);
INSERT INTO public.moon VALUES (11, 'Triton', 354800, 2700, false, 6, 8);
INSERT INTO public.moon VALUES (12, 'Despina', 27700, 150, false, 6, 8);
INSERT INTO public.moon VALUES (13, 'Ariel', 190900, 1158, true, 1, 7);
INSERT INTO public.moon VALUES (14, 'Oberon', 582600, 1523, true, 1, 7);
INSERT INTO public.moon VALUES (15, 'Titania', 435840, 1578, true, 1, 7);
INSERT INTO public.moon VALUES (16, 'Umbriel', 266000, 1200, true, 2, 7);
INSERT INTO public.moon VALUES (17, 'Callisto', 6283000, 4821, true, 5, 5);
INSERT INTO public.moon VALUES (18, 'IO', 6283000, 3643, true, 5, 5);
INSERT INTO public.moon VALUES (19, 'Enceladus', 238000, 504, false, 1, 6);
INSERT INTO public.moon VALUES (20, 'Titan', 1200000, 5149, true, 4, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, true, 12.760);
INSERT INTO public.planet VALUES (2, 'Mercury', false, true, 4.878);
INSERT INTO public.planet VALUES (3, 'Venus', false, false, 12.104);
INSERT INTO public.planet VALUES (4, 'Mars', false, true, 6.787);
INSERT INTO public.planet VALUES (6, 'Saturn', false, true, 120.500);
INSERT INTO public.planet VALUES (7, 'Uranus', false, true, 51.120);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, false, 139.822);
INSERT INTO public.planet VALUES (8, 'Neptune', false, true, 49.530);
INSERT INTO public.planet VALUES (9, 'Pluto', false, true, 2.301);
INSERT INTO public.planet VALUES (10, 'Ceres', true, true, 946);
INSERT INTO public.planet VALUES (11, 'Eris', false, true, 2.325);
INSERT INTO public.planet VALUES (12, 'Makemake', false, false, 1.430);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 148800000, 5778, 1, 1);
INSERT INTO public.star VALUES (2, 'The Sun', 148800000, 5778, 2, 1);
INSERT INTO public.star VALUES (3, 'Lyuten star', 12, 3150, NULL, 1);
INSERT INTO public.star VALUES (4, 'Orion', 1344, 40000, NULL, 1);
INSERT INTO public.star VALUES (5, 'Alpha Andromedae', 97, 13000, NULL, 3);
INSERT INTO public.star VALUES (6, 'Alpha Trianguli', 391, 6288, NULL, 4);


--
-- Name: constellation constellation_brightest_star_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_brightest_star_key UNIQUE (brightest_star);


--
-- Name: constellation constellation_meaning_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_meaning_key UNIQUE (meaning);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (star_id);


--
-- Name: moon moon_fk_satellite_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fk_satellite_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_cfk_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_cfk_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_fk_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fk_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

