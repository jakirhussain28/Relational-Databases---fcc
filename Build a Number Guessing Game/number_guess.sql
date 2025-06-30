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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer,
    guesses integer NOT NULL,
    played_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 617, '2025-06-30 08:16:16.067704');
INSERT INTO public.games VALUES (2, 1, 492, '2025-06-30 08:16:16.217839');
INSERT INTO public.games VALUES (3, 2, 845, '2025-06-30 08:16:16.413207');
INSERT INTO public.games VALUES (4, 2, 976, '2025-06-30 08:16:16.602689');
INSERT INTO public.games VALUES (5, 1, 410, '2025-06-30 08:16:16.729235');
INSERT INTO public.games VALUES (6, 1, 232, '2025-06-30 08:16:16.840478');
INSERT INTO public.games VALUES (7, 1, 434, '2025-06-30 08:16:16.964845');
INSERT INTO public.games VALUES (8, 3, 607, '2025-06-30 08:19:44.027168');
INSERT INTO public.games VALUES (9, 3, 40, '2025-06-30 08:19:44.108813');
INSERT INTO public.games VALUES (10, 4, 616, '2025-06-30 08:19:44.235956');
INSERT INTO public.games VALUES (11, 4, 225, '2025-06-30 08:19:44.328724');
INSERT INTO public.games VALUES (12, 3, 430, '2025-06-30 08:19:44.439373');
INSERT INTO public.games VALUES (13, 3, 647, '2025-06-30 08:19:44.571242');
INSERT INTO public.games VALUES (14, 3, 436, '2025-06-30 08:19:44.679899');
INSERT INTO public.games VALUES (15, 5, 499, '2025-06-30 08:20:48.354107');
INSERT INTO public.games VALUES (16, 5, 943, '2025-06-30 08:20:48.535402');
INSERT INTO public.games VALUES (17, 6, 675, '2025-06-30 08:20:48.72555');
INSERT INTO public.games VALUES (18, 6, 81, '2025-06-30 08:20:48.818202');
INSERT INTO public.games VALUES (19, 5, 260, '2025-06-30 08:20:48.914357');
INSERT INTO public.games VALUES (20, 5, 138, '2025-06-30 08:20:49.006024');
INSERT INTO public.games VALUES (21, 5, 701, '2025-06-30 08:20:49.144958');
INSERT INTO public.games VALUES (22, 8, 888, '2025-06-30 08:22:30.298321');
INSERT INTO public.games VALUES (23, 8, 509, '2025-06-30 08:22:30.442099');
INSERT INTO public.games VALUES (24, 9, 447, '2025-06-30 08:22:30.592621');
INSERT INTO public.games VALUES (25, 9, 959, '2025-06-30 08:22:30.769745');
INSERT INTO public.games VALUES (26, 8, 896, '2025-06-30 08:22:30.949583');
INSERT INTO public.games VALUES (27, 8, 884, '2025-06-30 08:22:31.133608');
INSERT INTO public.games VALUES (28, 8, 383, '2025-06-30 08:22:31.260981');
INSERT INTO public.games VALUES (29, 7, 17, '2025-06-30 08:24:58.414654');
INSERT INTO public.games VALUES (30, 10, 757, '2025-06-30 08:25:06.438698');
INSERT INTO public.games VALUES (31, 10, 772, '2025-06-30 08:25:06.600859');
INSERT INTO public.games VALUES (32, 11, 724, '2025-06-30 08:25:06.758575');
INSERT INTO public.games VALUES (33, 11, 589, '2025-06-30 08:25:06.890078');
INSERT INTO public.games VALUES (34, 10, 574, '2025-06-30 08:25:07.019543');
INSERT INTO public.games VALUES (35, 10, 338, '2025-06-30 08:25:07.123533');
INSERT INTO public.games VALUES (36, 10, 551, '2025-06-30 08:25:07.242014');
INSERT INTO public.games VALUES (37, 7, 10, '2025-06-30 08:27:14.247248');
INSERT INTO public.games VALUES (38, 12, 10, '2025-06-30 08:28:27.774658');
INSERT INTO public.games VALUES (39, 13, 368, '2025-06-30 08:28:37.883879');
INSERT INTO public.games VALUES (40, 13, 911, '2025-06-30 08:28:38.049374');
INSERT INTO public.games VALUES (41, 14, 499, '2025-06-30 08:28:38.19767');
INSERT INTO public.games VALUES (42, 14, 889, '2025-06-30 08:28:38.391035');
INSERT INTO public.games VALUES (43, 13, 840, '2025-06-30 08:28:38.561911');
INSERT INTO public.games VALUES (44, 13, 196, '2025-06-30 08:28:38.667955');
INSERT INTO public.games VALUES (45, 13, 664, '2025-06-30 08:28:38.826822');
INSERT INTO public.games VALUES (46, 12, 10, '2025-06-30 08:30:28.195527');
INSERT INTO public.games VALUES (47, 15, 18, '2025-06-30 08:30:47.326288');
INSERT INTO public.games VALUES (48, 15, 68, '2025-06-30 08:30:47.463938');
INSERT INTO public.games VALUES (49, 16, 351, '2025-06-30 08:30:47.663095');
INSERT INTO public.games VALUES (50, 16, 605, '2025-06-30 08:30:47.875563');
INSERT INTO public.games VALUES (51, 15, 762, '2025-06-30 08:30:48.12443');
INSERT INTO public.games VALUES (52, 15, 429, '2025-06-30 08:30:48.310179');
INSERT INTO public.games VALUES (53, 15, 959, '2025-06-30 08:30:48.560753');
INSERT INTO public.games VALUES (54, 17, 972, '2025-06-30 08:31:06.025757');
INSERT INTO public.games VALUES (55, 17, 871, '2025-06-30 08:31:06.152429');
INSERT INTO public.games VALUES (56, 18, 102, '2025-06-30 08:31:06.251573');
INSERT INTO public.games VALUES (57, 18, 864, '2025-06-30 08:31:06.413199');
INSERT INTO public.games VALUES (58, 17, 705, '2025-06-30 08:31:06.561476');
INSERT INTO public.games VALUES (59, 17, 657, '2025-06-30 08:31:06.704444');
INSERT INTO public.games VALUES (60, 17, 860, '2025-06-30 08:31:06.857892');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1751271375896');
INSERT INTO public.users VALUES (2, 'user_1751271375895');
INSERT INTO public.users VALUES (3, 'user_1751271583877');
INSERT INTO public.users VALUES (4, 'user_1751271583876');
INSERT INTO public.users VALUES (5, 'user_1751271648199');
INSERT INTO public.users VALUES (6, 'user_1751271648198');
INSERT INTO public.users VALUES (7, 'jakir');
INSERT INTO public.users VALUES (8, 'user_1751271750109');
INSERT INTO public.users VALUES (9, 'user_1751271750108');
INSERT INTO public.users VALUES (10, 'user_1751271906285');
INSERT INTO public.users VALUES (11, 'user_1751271906284');
INSERT INTO public.users VALUES (12, 'hussain');
INSERT INTO public.users VALUES (13, 'user_1751272117720');
INSERT INTO public.users VALUES (14, 'user_1751272117719');
INSERT INTO public.users VALUES (15, 'user_1751272247171');
INSERT INTO public.users VALUES (16, 'user_1751272247170');
INSERT INTO public.users VALUES (17, 'user_1751272265841');
INSERT INTO public.users VALUES (18, 'user_1751272265840');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 60, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 18, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

