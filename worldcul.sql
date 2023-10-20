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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (191, 2018, 'Final', 705, 706, 4, 2);
INSERT INTO public.games VALUES (192, 2018, 'Third Place', 707, 708, 2, 0);
INSERT INTO public.games VALUES (193, 2018, 'Semi-Final', 706, 708, 2, 1);
INSERT INTO public.games VALUES (194, 2018, 'Semi-Final', 705, 707, 1, 0);
INSERT INTO public.games VALUES (195, 2018, 'Quarter-Final', 706, 709, 3, 2);
INSERT INTO public.games VALUES (196, 2018, 'Quarter-Final', 708, 710, 2, 0);
INSERT INTO public.games VALUES (197, 2018, 'Quarter-Final', 707, 711, 2, 1);
INSERT INTO public.games VALUES (198, 2018, 'Quarter-Final', 705, 712, 2, 0);
INSERT INTO public.games VALUES (199, 2018, 'Eighth-Final', 708, 713, 2, 1);
INSERT INTO public.games VALUES (200, 2018, 'Eighth-Final', 710, 714, 1, 0);
INSERT INTO public.games VALUES (201, 2018, 'Eighth-Final', 707, 715, 3, 2);
INSERT INTO public.games VALUES (202, 2018, 'Eighth-Final', 711, 716, 2, 0);
INSERT INTO public.games VALUES (203, 2018, 'Eighth-Final', 706, 717, 2, 1);
INSERT INTO public.games VALUES (204, 2018, 'Eighth-Final', 709, 718, 2, 1);
INSERT INTO public.games VALUES (205, 2018, 'Eighth-Final', 712, 719, 2, 1);
INSERT INTO public.games VALUES (206, 2018, 'Eighth-Final', 705, 720, 4, 3);
INSERT INTO public.games VALUES (207, 2014, 'Final', 721, 720, 1, 0);
INSERT INTO public.games VALUES (208, 2014, 'Third Place', 722, 711, 3, 0);
INSERT INTO public.games VALUES (209, 2014, 'Semi-Final', 720, 722, 1, 0);
INSERT INTO public.games VALUES (210, 2014, 'Semi-Final', 721, 711, 7, 1);
INSERT INTO public.games VALUES (211, 2014, 'Quarter-Final', 722, 723, 1, 0);
INSERT INTO public.games VALUES (212, 2014, 'Quarter-Final', 720, 707, 1, 0);
INSERT INTO public.games VALUES (213, 2014, 'Quarter-Final', 711, 713, 2, 1);
INSERT INTO public.games VALUES (214, 2014, 'Quarter-Final', 721, 705, 1, 0);
INSERT INTO public.games VALUES (215, 2014, 'Eighth-Final', 711, 724, 2, 1);
INSERT INTO public.games VALUES (216, 2014, 'Eighth-Final', 713, 712, 2, 0);
INSERT INTO public.games VALUES (217, 2014, 'Eighth-Final', 705, 725, 2, 0);
INSERT INTO public.games VALUES (218, 2014, 'Eighth-Final', 721, 726, 2, 1);
INSERT INTO public.games VALUES (219, 2014, 'Eighth-Final', 722, 716, 2, 1);
INSERT INTO public.games VALUES (220, 2014, 'Eighth-Final', 723, 727, 2, 1);
INSERT INTO public.games VALUES (221, 2014, 'Eighth-Final', 720, 714, 1, 0);
INSERT INTO public.games VALUES (222, 2014, 'Eighth-Final', 707, 728, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (705, 'France');
INSERT INTO public.teams VALUES (706, 'Croatia');
INSERT INTO public.teams VALUES (707, 'Belgium');
INSERT INTO public.teams VALUES (708, 'England');
INSERT INTO public.teams VALUES (709, 'Russia');
INSERT INTO public.teams VALUES (710, 'Sweden');
INSERT INTO public.teams VALUES (711, 'Brazil');
INSERT INTO public.teams VALUES (712, 'Uruguay');
INSERT INTO public.teams VALUES (713, 'Colombia');
INSERT INTO public.teams VALUES (714, 'Switzerland');
INSERT INTO public.teams VALUES (715, 'Japan');
INSERT INTO public.teams VALUES (716, 'Mexico');
INSERT INTO public.teams VALUES (717, 'Denmark');
INSERT INTO public.teams VALUES (718, 'Spain');
INSERT INTO public.teams VALUES (719, 'Portugal');
INSERT INTO public.teams VALUES (720, 'Argentina');
INSERT INTO public.teams VALUES (721, 'Germany');
INSERT INTO public.teams VALUES (722, 'Netherlands');
INSERT INTO public.teams VALUES (723, 'Costa Rica');
INSERT INTO public.teams VALUES (724, 'Chile');
INSERT INTO public.teams VALUES (725, 'Nigeria');
INSERT INTO public.teams VALUES (726, 'Algeria');
INSERT INTO public.teams VALUES (727, 'Greece');
INSERT INTO public.teams VALUES (728, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 222, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 728, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

