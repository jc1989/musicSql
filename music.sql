--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

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
-- Name: albums; Type: TABLE; Schema: public; Owner: jdcannedy
--

CREATE TABLE public.albums (
    album_id integer NOT NULL,
    album_name text,
    album_release_date text
);


ALTER TABLE public.albums OWNER TO jdcannedy;

--
-- Name: albums_album_id_seq; Type: SEQUENCE; Schema: public; Owner: jdcannedy
--

CREATE SEQUENCE public.albums_album_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.albums_album_id_seq OWNER TO jdcannedy;

--
-- Name: albums_album_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jdcannedy
--

ALTER SEQUENCE public.albums_album_id_seq OWNED BY public.albums.album_id;


--
-- Name: artists; Type: TABLE; Schema: public; Owner: jdcannedy
--

CREATE TABLE public.artists (
    artist_id integer NOT NULL,
    artist_name text
);


ALTER TABLE public.artists OWNER TO jdcannedy;

--
-- Name: artists_artist_id_seq; Type: SEQUENCE; Schema: public; Owner: jdcannedy
--

CREATE SEQUENCE public.artists_artist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artists_artist_id_seq OWNER TO jdcannedy;

--
-- Name: artists_artist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jdcannedy
--

ALTER SEQUENCE public.artists_artist_id_seq OWNED BY public.artists.artist_id;


--
-- Name: song_writers; Type: TABLE; Schema: public; Owner: jdcannedy
--

CREATE TABLE public.song_writers (
    song_writer_id integer NOT NULL,
    song_writer_name text
);


ALTER TABLE public.song_writers OWNER TO jdcannedy;

--
-- Name: song_writers_song_writer_id_seq; Type: SEQUENCE; Schema: public; Owner: jdcannedy
--

CREATE SEQUENCE public.song_writers_song_writer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.song_writers_song_writer_id_seq OWNER TO jdcannedy;

--
-- Name: song_writers_song_writer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jdcannedy
--

ALTER SEQUENCE public.song_writers_song_writer_id_seq OWNED BY public.song_writers.song_writer_id;


--
-- Name: songs; Type: TABLE; Schema: public; Owner: jdcannedy
--

CREATE TABLE public.songs (
    song_id integer NOT NULL,
    song_name text,
    song_release_date text
);


ALTER TABLE public.songs OWNER TO jdcannedy;

--
-- Name: songs_song_id_seq; Type: SEQUENCE; Schema: public; Owner: jdcannedy
--

CREATE SEQUENCE public.songs_song_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.songs_song_id_seq OWNER TO jdcannedy;

--
-- Name: songs_song_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jdcannedy
--

ALTER SEQUENCE public.songs_song_id_seq OWNED BY public.songs.song_id;


--
-- Name: tracks; Type: TABLE; Schema: public; Owner: jdcannedy
--

CREATE TABLE public.tracks (
    track_id integer NOT NULL,
    track_number text,
    track_length text
);


ALTER TABLE public.tracks OWNER TO jdcannedy;

--
-- Name: tracks_track_id_seq; Type: SEQUENCE; Schema: public; Owner: jdcannedy
--

CREATE SEQUENCE public.tracks_track_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tracks_track_id_seq OWNER TO jdcannedy;

--
-- Name: tracks_track_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jdcannedy
--

ALTER SEQUENCE public.tracks_track_id_seq OWNED BY public.tracks.track_id;


--
-- Name: albums album_id; Type: DEFAULT; Schema: public; Owner: jdcannedy
--

ALTER TABLE ONLY public.albums ALTER COLUMN album_id SET DEFAULT nextval('public.albums_album_id_seq'::regclass);


--
-- Name: artists artist_id; Type: DEFAULT; Schema: public; Owner: jdcannedy
--

ALTER TABLE ONLY public.artists ALTER COLUMN artist_id SET DEFAULT nextval('public.artists_artist_id_seq'::regclass);


--
-- Name: song_writers song_writer_id; Type: DEFAULT; Schema: public; Owner: jdcannedy
--

ALTER TABLE ONLY public.song_writers ALTER COLUMN song_writer_id SET DEFAULT nextval('public.song_writers_song_writer_id_seq'::regclass);


--
-- Name: songs song_id; Type: DEFAULT; Schema: public; Owner: jdcannedy
--

ALTER TABLE ONLY public.songs ALTER COLUMN song_id SET DEFAULT nextval('public.songs_song_id_seq'::regclass);


--
-- Name: tracks track_id; Type: DEFAULT; Schema: public; Owner: jdcannedy
--

ALTER TABLE ONLY public.tracks ALTER COLUMN track_id SET DEFAULT nextval('public.tracks_track_id_seq'::regclass);


--
-- Data for Name: albums; Type: TABLE DATA; Schema: public; Owner: jdcannedy
--

COPY public.albums (album_id, album_name, album_release_date) FROM stdin;
1	Sound & Fury	2019
2	High Top Mountain	2013
3	Aenima	1996
4	Lateralus	2001
\.


--
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: jdcannedy
--

COPY public.artists (artist_id, artist_name) FROM stdin;
1	Sturgill Simpson
2	Tool
\.


--
-- Data for Name: song_writers; Type: TABLE DATA; Schema: public; Owner: jdcannedy
--

COPY public.song_writers (song_writer_id, song_writer_name) FROM stdin;
1	Sturgill Simpson
2	Maynard, James Keenan
\.


--
-- Data for Name: songs; Type: TABLE DATA; Schema: public; Owner: jdcannedy
--

COPY public.songs (song_id, song_name, song_release_date) FROM stdin;
1	Ronin	2019
2	Best Clockmaker on Mars	2019
3	Fourty Six and 2	2001
4	Schism	1996
\.


--
-- Data for Name: tracks; Type: TABLE DATA; Schema: public; Owner: jdcannedy
--

COPY public.tracks (track_id, track_number, track_length) FROM stdin;
1	1	3:48
2	6	3:55
3	5	6:02
4	5	6:46
\.


--
-- Name: albums_album_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jdcannedy
--

SELECT pg_catalog.setval('public.albums_album_id_seq', 1, false);


--
-- Name: artists_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jdcannedy
--

SELECT pg_catalog.setval('public.artists_artist_id_seq', 1, false);


--
-- Name: song_writers_song_writer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jdcannedy
--

SELECT pg_catalog.setval('public.song_writers_song_writer_id_seq', 1, false);


--
-- Name: songs_song_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jdcannedy
--

SELECT pg_catalog.setval('public.songs_song_id_seq', 1, false);


--
-- Name: tracks_track_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jdcannedy
--

SELECT pg_catalog.setval('public.tracks_track_id_seq', 1, false);


--
-- Name: albums albums_pkey; Type: CONSTRAINT; Schema: public; Owner: jdcannedy
--

ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (album_id);


--
-- Name: artists artists_pkey; Type: CONSTRAINT; Schema: public; Owner: jdcannedy
--

ALTER TABLE ONLY public.artists
    ADD CONSTRAINT artists_pkey PRIMARY KEY (artist_id);


--
-- Name: song_writers song_writers_pkey; Type: CONSTRAINT; Schema: public; Owner: jdcannedy
--

ALTER TABLE ONLY public.song_writers
    ADD CONSTRAINT song_writers_pkey PRIMARY KEY (song_writer_id);


--
-- Name: songs songs_pkey; Type: CONSTRAINT; Schema: public; Owner: jdcannedy
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT songs_pkey PRIMARY KEY (song_id);


--
-- Name: tracks tracks_pkey; Type: CONSTRAINT; Schema: public; Owner: jdcannedy
--

ALTER TABLE ONLY public.tracks
    ADD CONSTRAINT tracks_pkey PRIMARY KEY (track_id);


--
-- PostgreSQL database dump complete
--

