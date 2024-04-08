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
    distance_from_earth_km integer,
    is_from_zodiac boolean,
    description character varying(40)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    magnitude numeric(4,1),
    distance_from_planet_km integer,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    is_spherical boolean,
    curiosities text,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_composition; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_composition (
    planet_id integer NOT NULL,
    materia character varying(30),
    particles text,
    name character varying(30),
    planet_composition_id integer NOT NULL
);


ALTER TABLE public.planet_composition OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age integer,
    temperature numeric(4,1),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Scorpio', 35, true, 'Favorite');
INSERT INTO public.galaxy VALUES (2, 'Osa Menor', 45, false, 'Small');
INSERT INTO public.galaxy VALUES (3, 'Can Mayor', 69, false, 'Big');
INSERT INTO public.galaxy VALUES (4, 'Hercules', 15, false, 'Amazing');
INSERT INTO public.galaxy VALUES (5, 'Orion', 13, false, 'Misterious');
INSERT INTO public.galaxy VALUES (6, 'Cygnus', 76, false, 'Mhee');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Phobos', 11.8, 9380, 1);
INSERT INTO public.moon VALUES (2, 'Himalia', 9.7, 10535, 4);
INSERT INTO public.moon VALUES (3, 'Lysithea', 16.7, 110356, 5);
INSERT INTO public.moon VALUES (4, 'Hyperion', 21.3, 10326, 3);
INSERT INTO public.moon VALUES (5, 'Siarnaq', 6.2, 965, 1);
INSERT INTO public.moon VALUES (6, 'Ymir', 7.2, 32105, 2);
INSERT INTO public.moon VALUES (7, 'Fornjot', 8.6, 153264, 9);
INSERT INTO public.moon VALUES (8, 'Methone', 3.3, 3230, 7);
INSERT INTO public.moon VALUES (9, 'Titania', 25.3, 2564, 6);
INSERT INTO public.moon VALUES (10, 'Galatea', 45.2, 864, 10);
INSERT INTO public.moon VALUES (11, 'Styx', 3.9, 95478, 11);
INSERT INTO public.moon VALUES (12, 'Dysnomia', 6.7, 3562, 12);
INSERT INTO public.moon VALUES (13, 'Weywot', 5.1, 31, 8);
INSERT INTO public.moon VALUES (14, 'MK2', 6.9, 253, 8);
INSERT INTO public.moon VALUES (15, 'sYCORAX', 8.2, 2315, 7);
INSERT INTO public.moon VALUES (16, 'aEGAEON', 35.2, 321, 10);
INSERT INTO public.moon VALUES (17, 'Jarnsaxa', 17.6, 286, 3);
INSERT INTO public.moon VALUES (18, 'Hyrrokkin', 32.5, 569, 6);
INSERT INTO public.moon VALUES (19, 'Tarvos', 12.3, 669854, 8);
INSERT INTO public.moon VALUES (20, 'Rhea', 29.8, 767, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Osiris', true, 'Similar to earth', 1);
INSERT INTO public.planet VALUES (2, 'Kepler', true, 'Maybe has life', 2);
INSERT INTO public.planet VALUES (3, 'Neptuno', true, 'My favorite one', 2);
INSERT INTO public.planet VALUES (4, 'Saturno', true, 'Has rings', 3);
INSERT INTO public.planet VALUES (5, 'Cancri', true, 'Diamond center', 5);
INSERT INTO public.planet VALUES (6, 'PH1', true, 'Has 4 suns', 5);
INSERT INTO public.planet VALUES (7, 'HAT-p', true, 'Rains saphires and rubies', 4);
INSERT INTO public.planet VALUES (8, 'WASP-P', false, 'Egg shaped', 3);
INSERT INTO public.planet VALUES (9, 'J1407', false, '37 rings', 4);
INSERT INTO public.planet VALUES (10, 'TrES-2b', true, 'Darkest visible planet', 5);
INSERT INTO public.planet VALUES (11, 'Psyche 16', true, 'Rains gold', 6);
INSERT INTO public.planet VALUES (12, 'ROXs 42Bb', true, 'Biggest planet', 6);


--
-- Data for Name: planet_composition; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_composition VALUES (1, 'Dark matter', 'Hadrons-Leptons', 'Exo-planet', 1);
INSERT INTO public.planet_composition VALUES (2, 'Dark energy', 'Photons', 'Dwarf-planet', 2);
INSERT INTO public.planet_composition VALUES (3, 'Dark energy', 'Quarks', 'Dwarf-planet', 3);
INSERT INTO public.planet_composition VALUES (4, 'Ordinary matter', 'Hadrons-Leptons', 'Planet', 4);
INSERT INTO public.planet_composition VALUES (5, 'Dark matter', 'Leptons', 'Exo-planet', 5);
INSERT INTO public.planet_composition VALUES (6, 'Dark matter', 'Photons', 'Exo-planet', 6);
INSERT INTO public.planet_composition VALUES (7, 'Dark energy', 'Hadrons-Quarks', 'Dwarf-planet', 7);
INSERT INTO public.planet_composition VALUES (8, 'Dark matter', 'Leptons-Photons', 'Exo-planet', 8);
INSERT INTO public.planet_composition VALUES (9, 'Ordinary matter', 'Photons', 'Planet', 9);
INSERT INTO public.planet_composition VALUES (10, 'Ordinary matter', 'Hadrons', 'Planet', 10);
INSERT INTO public.planet_composition VALUES (11, 'Dark matter', 'Quarks-Leptons', 'Exo-planet', 11);
INSERT INTO public.planet_composition VALUES (12, 'Dark matter', 'Hadrons', 'Exo-planet', 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Antares', 45, 12.3, 1);
INSERT INTO public.star VALUES (2, 'Polaris', 34, 54.2, 2);
INSERT INTO public.star VALUES (3, 'Sirius', 89, 16.3, 3);
INSERT INTO public.star VALUES (4, 'Konephoros', 13, 15.3, 4);
INSERT INTO public.star VALUES (5, 'Riguel', 167, 8.2, 5);
INSERT INTO public.star VALUES (6, 'Deneb', 76, 34.2, 6);


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
-- Name: planet_composition planet_composition_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_composition
    ADD CONSTRAINT planet_composition_pkey PRIMARY KEY (planet_composition_id);


--
-- Name: planet_composition planet_composition_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_composition
    ADD CONSTRAINT planet_composition_planet_id_key UNIQUE (planet_id);


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
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


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

