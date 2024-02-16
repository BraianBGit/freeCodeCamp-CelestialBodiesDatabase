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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    area numeric(6,1),
    ammount_of_stars integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: living_being; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.living_being (
    living_being_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer
);


ALTER TABLE public.living_being OWNER TO freecodecamp;

--
-- Name: living_being_being_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.living_being_being_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.living_being_being_id_seq OWNER TO freecodecamp;

--
-- Name: living_being_being_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.living_being_being_id_seq OWNED BY public.living_being.living_being_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30),
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    size numeric(6,1),
    rotation_speed numeric(6,1)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30),
    planet_id integer NOT NULL,
    has_water boolean,
    has_oxygen boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30),
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(6,1),
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: living_being living_being_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.living_being ALTER COLUMN living_being_id SET DEFAULT nextval('public.living_being_being_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromeda', 1, 'Nice galaxy', 23.1, 20);
INSERT INTO public.galaxy VALUES ('Milky Way', 2, 'Nice 2 galaxy', 24.1, 22);
INSERT INTO public.galaxy VALUES ('Black eye', 3, 'Nice 3 galaxy', 25.1, 22);
INSERT INTO public.galaxy VALUES ('Sunflower', 4, 'Nice galaxy', 23.1, 20);
INSERT INTO public.galaxy VALUES ('Whirpool', 5, 'Nice 2 galaxy', 24.1, 22);
INSERT INTO public.galaxy VALUES ('Tadpole', 6, 'Nice 4 galaxy', 25.1, 24);


--
-- Data for Name: living_being; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.living_being VALUES (1, 'John', 20);
INSERT INTO public.living_being VALUES (2, 'Ana', 18);
INSERT INTO public.living_being VALUES (3, 'Glen', 25);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon 1', 1, 1, 20.1, 30.2);
INSERT INTO public.moon VALUES ('moon 2', 2, 1, 20.1, 30.2);
INSERT INTO public.moon VALUES ('moon 3', 3, 2, 20.1, 30.2);
INSERT INTO public.moon VALUES ('moon 4', 4, 1, 20.1, 30.2);
INSERT INTO public.moon VALUES ('moon 5', 5, 1, 20.1, 30.2);
INSERT INTO public.moon VALUES ('moon 6', 6, 2, 20.1, 30.2);
INSERT INTO public.moon VALUES ('moon 7', 7, 1, 20.1, 30.2);
INSERT INTO public.moon VALUES ('moon 8', 8, 1, 20.1, 30.2);
INSERT INTO public.moon VALUES ('moon 9', 9, 2, 20.1, 30.2);
INSERT INTO public.moon VALUES ('moon 10', 10, 1, 20.1, 30.2);
INSERT INTO public.moon VALUES ('moon 11', 11, 1, 20.1, 30.2);
INSERT INTO public.moon VALUES ('moon 12', 12, 2, 20.1, 30.2);
INSERT INTO public.moon VALUES ('moon 13', 13, 1, 20.1, 30.2);
INSERT INTO public.moon VALUES ('moon 14', 14, 1, 20.1, 30.2);
INSERT INTO public.moon VALUES ('moon 15', 15, 2, 20.1, 30.2);
INSERT INTO public.moon VALUES ('moon 16', 16, 1, 20.1, 30.2);
INSERT INTO public.moon VALUES ('moon 17', 17, 2, 20.1, 30.2);
INSERT INTO public.moon VALUES ('moon 18', 18, 1, 20.1, 30.2);
INSERT INTO public.moon VALUES ('moon 19', 19, 1, 20.1, 30.2);
INSERT INTO public.moon VALUES ('moon 20', 20, 2, 20.1, 30.2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('planet 1', 1, true, true, 1);
INSERT INTO public.planet VALUES ('planet 2', 2, true, true, 1);
INSERT INTO public.planet VALUES ('planet 3', 3, true, true, 1);
INSERT INTO public.planet VALUES ('planet 4', 4, true, true, 1);
INSERT INTO public.planet VALUES ('planet 5', 5, true, true, 2);
INSERT INTO public.planet VALUES ('planet 6', 6, true, true, 3);
INSERT INTO public.planet VALUES ('planet 7', 7, true, true, 3);
INSERT INTO public.planet VALUES ('planet 8', 8, true, true, 3);
INSERT INTO public.planet VALUES ('planet 9', 9, true, true, 3);
INSERT INTO public.planet VALUES ('planet 10', 10, true, true, 4);
INSERT INTO public.planet VALUES ('planet 11', 11, true, true, 4);
INSERT INTO public.planet VALUES ('planet 12', 12, true, true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 1, 200, 300.1, 'Nice star');
INSERT INTO public.star VALUES ('Lynx', 2, 1, 200, 300.1, 'Nice 2 star');
INSERT INTO public.star VALUES ('Lynx 2', 3, 2, 200, 300.1, 'Nice 3 star');
INSERT INTO public.star VALUES ('Lynx 3', 4, 3, 200, 300.1, 'Nice 4 star');
INSERT INTO public.star VALUES ('Crux', 5, 3, 200, 300.1, 'Nice 5 star');
INSERT INTO public.star VALUES ('Cancer', 6, 3, 200, 300.1, 'Nice 6 star');


--
-- Name: living_being_being_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.living_being_being_id_seq', 3, true);


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
-- Name: living_being living_being_being_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.living_being
    ADD CONSTRAINT living_being_being_id_key UNIQUE (living_being_id);


--
-- Name: living_being living_being_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.living_being
    ADD CONSTRAINT living_being_pkey PRIMARY KEY (living_being_id);


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

