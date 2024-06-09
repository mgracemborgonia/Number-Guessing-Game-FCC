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
    number_of_guesses integer NOT NULL,
    secret_number integer NOT NULL,
    user_id integer NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 822, 16);
INSERT INTO public.games VALUES (2, 1, 183, 16);
INSERT INTO public.games VALUES (3, 1, 476, 17);
INSERT INTO public.games VALUES (4, 1, 909, 17);
INSERT INTO public.games VALUES (5, 1, 27, 16);
INSERT INTO public.games VALUES (6, 2, 669, 16);
INSERT INTO public.games VALUES (7, 1, 157, 16);
INSERT INTO public.games VALUES (8, 1, 121, 18);
INSERT INTO public.games VALUES (9, 1, 658, 18);
INSERT INTO public.games VALUES (10, 1, 560, 19);
INSERT INTO public.games VALUES (11, 1, 387, 19);
INSERT INTO public.games VALUES (12, 1, 427, 18);
INSERT INTO public.games VALUES (13, 2, 338, 18);
INSERT INTO public.games VALUES (14, 1, 701, 18);
INSERT INTO public.games VALUES (15, 1, 826, 20);
INSERT INTO public.games VALUES (16, 1, 149, 20);
INSERT INTO public.games VALUES (17, 1, 530, 21);
INSERT INTO public.games VALUES (18, 1, 363, 21);
INSERT INTO public.games VALUES (19, 1, 802, 20);
INSERT INTO public.games VALUES (20, 2, 43, 20);
INSERT INTO public.games VALUES (21, 1, 394, 20);
INSERT INTO public.games VALUES (22, 610, 609, 22);
INSERT INTO public.games VALUES (23, 210, 209, 22);
INSERT INTO public.games VALUES (24, 961, 960, 23);
INSERT INTO public.games VALUES (25, 647, 646, 23);
INSERT INTO public.games VALUES (26, 567, 564, 22);
INSERT INTO public.games VALUES (27, 693, 691, 22);
INSERT INTO public.games VALUES (28, 835, 834, 22);
INSERT INTO public.games VALUES (29, 680, 678, 24);
INSERT INTO public.games VALUES (30, 198, 196, 24);
INSERT INTO public.games VALUES (31, 879, 877, 25);
INSERT INTO public.games VALUES (32, 793, 791, 25);
INSERT INTO public.games VALUES (33, 927, 923, 24);
INSERT INTO public.games VALUES (34, 895, 892, 24);
INSERT INTO public.games VALUES (35, 194, 192, 24);
INSERT INTO public.games VALUES (36, 738, 737, 28);
INSERT INTO public.games VALUES (37, 144, 143, 28);
INSERT INTO public.games VALUES (38, 498, 497, 29);
INSERT INTO public.games VALUES (39, 386, 385, 29);
INSERT INTO public.games VALUES (40, 156, 153, 28);
INSERT INTO public.games VALUES (41, 856, 854, 28);
INSERT INTO public.games VALUES (42, 11, 10, 28);
INSERT INTO public.games VALUES (43, 527, 526, 30);
INSERT INTO public.games VALUES (44, 600, 599, 30);
INSERT INTO public.games VALUES (45, 761, 760, 31);
INSERT INTO public.games VALUES (46, 692, 691, 31);
INSERT INTO public.games VALUES (47, 323, 320, 30);
INSERT INTO public.games VALUES (48, 408, 406, 30);
INSERT INTO public.games VALUES (49, 480, 479, 30);
INSERT INTO public.games VALUES (50, 74, 73, 32);
INSERT INTO public.games VALUES (51, 689, 688, 32);
INSERT INTO public.games VALUES (52, 270, 269, 33);
INSERT INTO public.games VALUES (53, 479, 478, 33);
INSERT INTO public.games VALUES (54, 792, 789, 32);
INSERT INTO public.games VALUES (55, 677, 675, 32);
INSERT INTO public.games VALUES (56, 818, 817, 32);
INSERT INTO public.games VALUES (57, 592, 591, 34);
INSERT INTO public.games VALUES (58, 143, 142, 34);
INSERT INTO public.games VALUES (59, 170, 169, 35);
INSERT INTO public.games VALUES (60, 944, 943, 35);
INSERT INTO public.games VALUES (61, 726, 723, 34);
INSERT INTO public.games VALUES (62, 967, 965, 34);
INSERT INTO public.games VALUES (63, 342, 341, 34);
INSERT INTO public.games VALUES (64, 73, 72, 36);
INSERT INTO public.games VALUES (65, 890, 889, 36);
INSERT INTO public.games VALUES (66, 802, 801, 37);
INSERT INTO public.games VALUES (67, 837, 836, 37);
INSERT INTO public.games VALUES (68, 533, 530, 36);
INSERT INTO public.games VALUES (69, 375, 373, 36);
INSERT INTO public.games VALUES (70, 172, 171, 36);
INSERT INTO public.games VALUES (71, 342, 341, 38);
INSERT INTO public.games VALUES (72, 632, 631, 38);
INSERT INTO public.games VALUES (73, 299, 298, 39);
INSERT INTO public.games VALUES (74, 68, 67, 39);
INSERT INTO public.games VALUES (75, 219, 216, 38);
INSERT INTO public.games VALUES (76, 340, 338, 38);
INSERT INTO public.games VALUES (77, 339, 338, 38);
INSERT INTO public.games VALUES (78, 815, 814, 40);
INSERT INTO public.games VALUES (79, 696, 695, 40);
INSERT INTO public.games VALUES (80, 96, 95, 41);
INSERT INTO public.games VALUES (81, 405, 404, 41);
INSERT INTO public.games VALUES (82, 641, 638, 40);
INSERT INTO public.games VALUES (83, 337, 335, 40);
INSERT INTO public.games VALUES (84, 366, 365, 40);
INSERT INTO public.games VALUES (85, 23, 831, 42);
INSERT INTO public.games VALUES (86, 516, 515, 43);
INSERT INTO public.games VALUES (87, 882, 881, 43);
INSERT INTO public.games VALUES (88, 829, 828, 44);
INSERT INTO public.games VALUES (89, 234, 233, 44);
INSERT INTO public.games VALUES (90, 200, 197, 43);
INSERT INTO public.games VALUES (91, 163, 161, 43);
INSERT INTO public.games VALUES (92, 110, 109, 43);
INSERT INTO public.games VALUES (93, 843, 842, 45);
INSERT INTO public.games VALUES (94, 692, 691, 45);
INSERT INTO public.games VALUES (95, 630, 629, 46);
INSERT INTO public.games VALUES (96, 369, 368, 46);
INSERT INTO public.games VALUES (97, 44, 41, 45);
INSERT INTO public.games VALUES (98, 981, 979, 45);
INSERT INTO public.games VALUES (99, 797, 796, 45);
INSERT INTO public.games VALUES (100, 440, 439, 47);
INSERT INTO public.games VALUES (101, 67, 66, 47);
INSERT INTO public.games VALUES (102, 373, 372, 48);
INSERT INTO public.games VALUES (103, 52, 51, 48);
INSERT INTO public.games VALUES (104, 578, 575, 47);
INSERT INTO public.games VALUES (105, 100, 98, 47);
INSERT INTO public.games VALUES (106, 210, 209, 47);
INSERT INTO public.games VALUES (107, 575, 574, 49);
INSERT INTO public.games VALUES (108, 526, 525, 49);
INSERT INTO public.games VALUES (109, 200, 199, 50);
INSERT INTO public.games VALUES (110, 56, 55, 50);
INSERT INTO public.games VALUES (111, 969, 966, 49);
INSERT INTO public.games VALUES (112, 300, 298, 49);
INSERT INTO public.games VALUES (113, 988, 987, 49);
INSERT INTO public.games VALUES (114, 404, 403, 51);
INSERT INTO public.games VALUES (115, 99, 98, 51);
INSERT INTO public.games VALUES (116, 617, 616, 52);
INSERT INTO public.games VALUES (117, 880, 879, 52);
INSERT INTO public.games VALUES (118, 419, 416, 51);
INSERT INTO public.games VALUES (119, 762, 760, 51);
INSERT INTO public.games VALUES (120, 443, 442, 51);
INSERT INTO public.games VALUES (121, 873, 872, 55);
INSERT INTO public.games VALUES (122, 650, 649, 55);
INSERT INTO public.games VALUES (123, 468, 467, 56);
INSERT INTO public.games VALUES (124, 518, 517, 56);
INSERT INTO public.games VALUES (125, 347, 344, 55);
INSERT INTO public.games VALUES (126, 589, 587, 55);
INSERT INTO public.games VALUES (127, 9, 8, 55);
INSERT INTO public.games VALUES (128, 13, 492, 42);
INSERT INTO public.games VALUES (129, 310, 309, 57);
INSERT INTO public.games VALUES (130, 499, 498, 57);
INSERT INTO public.games VALUES (131, 879, 878, 58);
INSERT INTO public.games VALUES (132, 239, 238, 58);
INSERT INTO public.games VALUES (133, 684, 681, 57);
INSERT INTO public.games VALUES (134, 856, 854, 57);
INSERT INTO public.games VALUES (135, 876, 875, 57);
INSERT INTO public.games VALUES (136, 850, 849, 59);
INSERT INTO public.games VALUES (137, 523, 522, 59);
INSERT INTO public.games VALUES (138, 275, 274, 60);
INSERT INTO public.games VALUES (139, 30, 29, 60);
INSERT INTO public.games VALUES (140, 964, 961, 59);
INSERT INTO public.games VALUES (141, 182, 180, 59);
INSERT INTO public.games VALUES (142, 109, 108, 59);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1717918496480');
INSERT INTO public.users VALUES (2, 'user_1717918496479');
INSERT INTO public.users VALUES (3, 'user_1717918572647');
INSERT INTO public.users VALUES (4, 'user_1717918572646');
INSERT INTO public.users VALUES (5, 'user_1717918616378');
INSERT INTO public.users VALUES (6, 'user_1717918616377');
INSERT INTO public.users VALUES (7, 'user_1717918887772');
INSERT INTO public.users VALUES (8, 'user_1717918887771');
INSERT INTO public.users VALUES (9, 'user_1717918948853');
INSERT INTO public.users VALUES (10, 'user_1717918948852');
INSERT INTO public.users VALUES (11, 'user_1717918992996');
INSERT INTO public.users VALUES (12, 'user_1717918992995');
INSERT INTO public.users VALUES (13, 'Mary');
INSERT INTO public.users VALUES (14, 'user_1717919463192');
INSERT INTO public.users VALUES (15, 'user_1717919463191');
INSERT INTO public.users VALUES (16, 'user_1717919814761');
INSERT INTO public.users VALUES (17, 'user_1717919814760');
INSERT INTO public.users VALUES (18, 'user_1717919840895');
INSERT INTO public.users VALUES (19, 'user_1717919840894');
INSERT INTO public.users VALUES (20, 'user_1717919892430');
INSERT INTO public.users VALUES (21, 'user_1717919892429');
INSERT INTO public.users VALUES (22, 'user_1717919949566');
INSERT INTO public.users VALUES (23, 'user_1717919949565');
INSERT INTO public.users VALUES (24, 'user_1717919963625');
INSERT INTO public.users VALUES (25, 'user_1717919963624');
INSERT INTO public.users VALUES (26, 'user_1717920068686');
INSERT INTO public.users VALUES (27, 'user_1717920068685');
INSERT INTO public.users VALUES (28, 'user_1717920093044');
INSERT INTO public.users VALUES (29, 'user_1717920093043');
INSERT INTO public.users VALUES (30, 'user_1717920136092');
INSERT INTO public.users VALUES (31, 'user_1717920136091');
INSERT INTO public.users VALUES (32, 'user_1717920166187');
INSERT INTO public.users VALUES (33, 'user_1717920166186');
INSERT INTO public.users VALUES (34, 'user_1717920182002');
INSERT INTO public.users VALUES (35, 'user_1717920182001');
INSERT INTO public.users VALUES (36, 'user_1717920201471');
INSERT INTO public.users VALUES (37, 'user_1717920201470');
INSERT INTO public.users VALUES (38, 'user_1717920229921');
INSERT INTO public.users VALUES (39, 'user_1717920229920');
INSERT INTO public.users VALUES (40, 'user_1717920280271');
INSERT INTO public.users VALUES (41, 'user_1717920280270');
INSERT INTO public.users VALUES (42, 'Grace');
INSERT INTO public.users VALUES (43, 'user_1717920403034');
INSERT INTO public.users VALUES (44, 'user_1717920403033');
INSERT INTO public.users VALUES (45, 'user_1717920466706');
INSERT INTO public.users VALUES (46, 'user_1717920466705');
INSERT INTO public.users VALUES (47, 'user_1717920549335');
INSERT INTO public.users VALUES (48, 'user_1717920549334');
INSERT INTO public.users VALUES (49, 'user_1717920596005');
INSERT INTO public.users VALUES (50, 'user_1717920596004');
INSERT INTO public.users VALUES (51, 'user_1717920610550');
INSERT INTO public.users VALUES (52, 'user_1717920610549');
INSERT INTO public.users VALUES (53, 'user_1717920737343');
INSERT INTO public.users VALUES (54, 'user_1717920737342');
INSERT INTO public.users VALUES (55, 'user_1717920861854');
INSERT INTO public.users VALUES (56, 'user_1717920861853');
INSERT INTO public.users VALUES (57, 'user_1717920970167');
INSERT INTO public.users VALUES (58, 'user_1717920970166');
INSERT INTO public.users VALUES (59, 'user_1717921018714');
INSERT INTO public.users VALUES (60, 'user_1717921018713');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 142, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 60, true);


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
