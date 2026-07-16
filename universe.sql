--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    has_life boolean,
    is_spherical boolean,
    name character varying(20) NOT NULL,
    earth_id integer NOT NULL
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_serial_no_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_serial_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_serial_no_seq OWNER TO freecodecamp;

--
-- Name: earth_serial_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_serial_no_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    density numeric NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_serial_no_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_serial_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_serial_no_seq OWNER TO freecodecamp;

--
-- Name: galaxy_serial_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_serial_no_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    density numeric NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_serial_no_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_serial_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_serial_no_seq OWNER TO freecodecamp;

--
-- Name: moon_serial_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_serial_no_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    density numeric NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_serial_no_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_serial_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_serial_no_seq OWNER TO freecodecamp;

--
-- Name: planet_serial_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_serial_no_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    density numeric NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_serial_no_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_serial_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_serial_no_seq OWNER TO freecodecamp;

--
-- Name: star_serial_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_serial_no_seq OWNED BY public.star.star_id;


--
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_serial_no_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_serial_no_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_serial_no_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_serial_no_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_serial_no_seq'::regclass);


--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (true, true, 'Earth', 1);
INSERT INTO public.earth VALUES (false, true, 'Mars', 2);
INSERT INTO public.earth VALUES (false, true, 'Venus', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 0.9, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 12000, 0.7, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 13000, 0.82, 'Spiral galaxy', false, true);
INSERT INTO public.galaxy VALUES (6, 'Cigar', 12000, 0.77, 'Starburst galaxy', false, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 13600, 0.9, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Galaxy_3', 10000, 0.8, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4500, 3.3, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 4500, 1.87, 'Moon of Mars', false, true, 10);
INSERT INTO public.moon VALUES (3, 'Deimos', 4500, 1.47, 'Moon of Mars', false, true, 10);
INSERT INTO public.moon VALUES (4, 'Io', 4500, 3.53, 'Moon of Jupiter', false, true, 11);
INSERT INTO public.moon VALUES (5, 'Europa', 4500, 3.01, 'Moon of Jupiter', false, true, 11);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4500, 1.94, 'Largest moon', false, true, 11);
INSERT INTO public.moon VALUES (7, 'Callisto', 4500, 1.83, 'Moon of Jupiter', false, true, 11);
INSERT INTO public.moon VALUES (8, 'Titan', 4500, 1.88, 'Moon of Saturn', false, true, 12);
INSERT INTO public.moon VALUES (9, 'Enceladus', 4500, 1.61, 'Moon of Saturn', false, true, 12);
INSERT INTO public.moon VALUES (10, 'Mimas', 4500, 1.15, 'Moon of Saturn', false, true, 12);
INSERT INTO public.moon VALUES (11, 'Rhea', 4500, 1.24, 'Moon of Saturn', false, true, 12);
INSERT INTO public.moon VALUES (12, 'Dione', 4500, 1.48, 'Moon of Saturn', false, true, 12);
INSERT INTO public.moon VALUES (13, 'Tethys', 4500, 0.98, 'Moon of Saturn', false, true, 12);
INSERT INTO public.moon VALUES (14, 'Titania', 4500, 1.71, 'Moon of Uranus', false, true, 13);
INSERT INTO public.moon VALUES (15, 'Oberon', 4500, 1.63, 'Moon of Uranus', false, true, 13);
INSERT INTO public.moon VALUES (16, 'Miranda', 4500, 1.21, 'Moon of Uranus', false, true, 13);
INSERT INTO public.moon VALUES (17, 'Ariel', 4500, 1.59, 'Moon of Uranus', false, true, 13);
INSERT INTO public.moon VALUES (18, 'Triton', 4500, 2.06, 'Moon of Neptune', false, true, 14);
INSERT INTO public.moon VALUES (19, 'Nereid', 4500, 1.50, 'Moon of Neptune', false, true, 14);
INSERT INTO public.moon VALUES (20, 'Proteus', 4500, 1.30, 'Moon of Neptune', false, true, 14);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4500, 5.5, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Mercury', 4500, 5.43, 'Closest planet', false, true, 1);
INSERT INTO public.planet VALUES (9, 'Venus', 4500, 5.24, 'Hottest planet', false, true, 1);
INSERT INTO public.planet VALUES (10, 'Mars', 4500, 3.93, 'Red planet', false, true, 1);
INSERT INTO public.planet VALUES (11, 'Jupiter', 4500, 1.33, 'Gas giant', false, true, 5);
INSERT INTO public.planet VALUES (12, 'Saturn', 4500, 0.69, 'Ringed planet', false, true, 5);
INSERT INTO public.planet VALUES (13, 'Uranus', 4500, 1.27, 'Ice giant', false, true, 6);
INSERT INTO public.planet VALUES (14, 'Neptune', 4500, 1.64, 'Blue planet', false, true, 6);
INSERT INTO public.planet VALUES (15, 'Kepler-22b', 4000, 2.10, 'Exoplanet', false, true, 7);
INSERT INTO public.planet VALUES (16, 'Proxima b', 4800, 5.10, 'Nearby exoplanet', false, true, 8);
INSERT INTO public.planet VALUES (17, 'Gliese 581g', 7000, 4.80, 'Potentially habitable', false, true, 9);
INSERT INTO public.planet VALUES (18, 'HD 209458 b', 5000, 0.35, 'Hot Jupiter', false, true, 9);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 1.4, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'Sirius', 242, 1.40, 'Brightest star', false, true, 2);
INSERT INTO public.star VALUES (6, 'Rigel', 8, 0.18, 'Blue supergiant', false, true, 3);
INSERT INTO public.star VALUES (7, 'Betelgeuse', 10, 0.01, 'Red supergiant', false, true, 4);
INSERT INTO public.star VALUES (8, 'Vega', 455, 2.36, 'Bright nearby star', false, true, 5);
INSERT INTO public.star VALUES (9, 'Polaris', 70, 0.70, 'North Star', false, true, 6);


--
-- Name: earth_serial_no_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_serial_no_seq', 3, true);


--
-- Name: galaxy_serial_no_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_serial_no_seq', 6, true);


--
-- Name: moon_serial_no_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_serial_no_seq', 20, true);


--
-- Name: planet_serial_no_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_serial_no_seq', 18, true);


--
-- Name: star_serial_no_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_serial_no_seq', 9, true);


--
-- Name: earth earth_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_name_unique UNIQUE (name);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


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
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

