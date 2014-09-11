--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: tblfilter; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE tblfilter (
    fldindex bigint NOT NULL,
    fldfeld character varying(160) NOT NULL,
    fldwert character varying(160) NOT NULL,
    fldmaske character varying(160) NOT NULL,
    fldname character varying(160) NOT NULL
);


ALTER TABLE public.tblfilter OWNER TO root;

--
-- Name: tblfilter_fldindex_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE tblfilter_fldindex_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tblfilter_fldindex_seq OWNER TO root;

--
-- Name: tblfilter_fldindex_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE tblfilter_fldindex_seq OWNED BY tblfilter.fldindex;


--
-- Name: tblfunc_fldindex_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE tblfunc_fldindex_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tblfunc_fldindex_seq OWNER TO root;

--
-- Name: tblfunc; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE tblfunc (
    fldindex bigint DEFAULT nextval('tblfunc_fldindex_seq'::regclass) NOT NULL,
    fldbez character varying(500) NOT NULL,
    fldphp character varying(1000) NOT NULL,
    fldmenuid bigint NOT NULL,
    fldtyp character varying(20) NOT NULL,
    fldtarget character varying(100) NOT NULL,
    fldparam character varying(200) NOT NULL,
    fldaktiv character varying(10) NOT NULL,
    fldname character varying(400) NOT NULL,
    fldtimestamp timestamp without time zone DEFAULT now() NOT NULL,
    fldid_version bigint DEFAULT 0 NOT NULL,
    fldversion character varying(10) NOT NULL
);


ALTER TABLE public.tblfunc OWNER TO root;

--
-- Name: tblktobanken; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE tblktobanken (
    fldindex integer NOT NULL,
    fldbez character varying(50),
    fldart character varying(20),
    fldcalc character varying(4),
    fldaktiv character varying(1)
);


ALTER TABLE public.tblktobanken OWNER TO root;

--
-- Name: tblktobanken_fldindex_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE tblktobanken_fldindex_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tblktobanken_fldindex_seq OWNER TO root;

--
-- Name: tblktobanken_fldindex_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE tblktobanken_fldindex_seq OWNED BY tblktobanken.fldindex;


--
-- Name: tblktotyp; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE tblktotyp (
    fldindex integer NOT NULL,
    fldtyp character varying(50),
    fldbez character varying(200)
);


ALTER TABLE public.tblktotyp OWNER TO root;

--
-- Name: tblktotyp_fldindex_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE tblktotyp_fldindex_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tblktotyp_fldindex_seq OWNER TO root;

--
-- Name: tblktotyp_fldindex_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE tblktotyp_fldindex_seq OWNED BY tblktotyp.fldindex;


--
-- Name: tblmarkers_fldindex_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE tblmarkers_fldindex_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tblmarkers_fldindex_seq OWNER TO root;

--
-- Name: tblmarkers; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE tblmarkers (
    fldindex bigint DEFAULT nextval('tblmarkers_fldindex_seq'::regclass) NOT NULL,
    fldname character varying(500) NOT NULL,
    fldaddress character varying(500) NOT NULL,
    fldlat double precision NOT NULL,
    fldlng double precision NOT NULL,
    fldtype character varying(20) NOT NULL
);


ALTER TABLE public.tblmarkers OWNER TO root;

--
-- Name: tblmenu_liste_fldindex_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE tblmenu_liste_fldindex_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tblmenu_liste_fldindex_seq OWNER TO root;

--
-- Name: tblmenu_liste; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE tblmenu_liste (
    fldindex double precision DEFAULT nextval('tblmenu_liste_fldindex_seq'::regclass) NOT NULL,
    fldmenu character varying(500) NOT NULL,
    fldtblwebadr character(250) DEFAULT NULL::bpchar,
    fldsort character(5) DEFAULT NULL::bpchar,
    "fldGroup" character(20) DEFAULT NULL::bpchar,
    fldview character varying(2) DEFAULT 'J'::character varying NOT NULL,
    fldid_modul integer NOT NULL,
    fldparent character varying(500) NOT NULL,
    fldversion character varying(10) DEFAULT '0303'::character varying NOT NULL,
    fldtyp character varying(100) NOT NULL,
    fldname character varying(400) NOT NULL,
    fldtimestamp timestamp without time zone DEFAULT now() NOT NULL,
    fldid_publictyp bigint NOT NULL,
    fldhelplink character varying(1000) NOT NULL,
    fldtarget character varying(20) NOT NULL,
    fldid_menuprojekt bigint NOT NULL,
    fldart character varying(20) NOT NULL
);


ALTER TABLE public.tblmenu_liste OWNER TO root;

--
-- Name: tblmenu_modul_fldindex_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE tblmenu_modul_fldindex_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tblmenu_modul_fldindex_seq OWNER TO root;

--
-- Name: tblmenu_modul; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE tblmenu_modul (
    fldindex bigint DEFAULT nextval('tblmenu_modul_fldindex_seq'::regclass) NOT NULL,
    fldbez character varying(500) NOT NULL,
    fldwebadr character varying(500) NOT NULL,
    fldlang character varying(8) NOT NULL,
    fldversion character varying(10) NOT NULL,
    fldtimestamp timestamp without time zone DEFAULT now() NOT NULL,
    fldsource character varying(4096) NOT NULL,
    fldid_publictyp bigint NOT NULL
);


ALTER TABLE public.tblmenu_modul OWNER TO root;

--
-- Name: tblmenu_projekt_fldindex_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE tblmenu_projekt_fldindex_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tblmenu_projekt_fldindex_seq OWNER TO root;

--
-- Name: tblmenu_projekt; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE tblmenu_projekt (
    fldindex bigint DEFAULT nextval('tblmenu_projekt_fldindex_seq'::regclass) NOT NULL,
    fldbez character varying(500) NOT NULL,
    fldaktiv character varying(2) NOT NULL
);


ALTER TABLE public.tblmenu_projekt OWNER TO root;

--
-- Name: tblmenu_typ; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE tblmenu_typ (
    fldindex bigint NOT NULL,
    "fldBez" character varying(100) NOT NULL
);


ALTER TABLE public.tblmenu_typ OWNER TO root;

--
-- Name: tblpublictyp; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE tblpublictyp (
    fldindex bigint NOT NULL,
    fldbez character varying(500) NOT NULL
);


ALTER TABLE public.tblpublictyp OWNER TO root;

--
-- Name: tblschulart_fldindex_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE tblschulart_fldindex_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tblschulart_fldindex_seq OWNER TO root;

--
-- Name: tblschulart; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE tblschulart (
    fldindex bigint DEFAULT nextval('tblschulart_fldindex_seq'::regclass) NOT NULL,
    fldbez character varying(200) NOT NULL
);


ALTER TABLE public.tblschulart OWNER TO root;

--
-- Name: tblschulen_fldindex_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE tblschulen_fldindex_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tblschulen_fldindex_seq OWNER TO root;

--
-- Name: tblschulen; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE tblschulen (
    fldindex bigint DEFAULT nextval('tblschulen_fldindex_seq'::regclass) NOT NULL,
    fldstadtbezirk character varying(80) NOT NULL,
    fldstadtteil character varying(80) NOT NULL,
    fldadresse character varying(100) NOT NULL,
    fldpostzustellbezirk character varying(10) NOT NULL,
    fldschulart character varying(150) NOT NULL,
    fldschultyp character varying(100) NOT NULL,
    fldname character varying(200) NOT NULL,
    fldstadt character varying(200) NOT NULL,
    fldxkoor double precision NOT NULL,
    fldykoor double precision NOT NULL,
    fldlink character varying(500) NOT NULL
);


ALTER TABLE public.tblschulen OWNER TO root;

--
-- Name: tblschultyp_fldindex_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE tblschultyp_fldindex_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tblschultyp_fldindex_seq OWNER TO root;

--
-- Name: tblschultyp; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE tblschultyp (
    fldindex bigint DEFAULT nextval('tblschultyp_fldindex_seq'::regclass) NOT NULL,
    fldbez character varying(100) NOT NULL
);


ALTER TABLE public.tblschultyp OWNER TO root;

--
-- Name: tblsel; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE tblsel (
    fldindex bigint NOT NULL,
    fldbez character varying(2) NOT NULL
);


ALTER TABLE public.tblsel OWNER TO root;

--
-- Name: tblspielgeraete; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE tblspielgeraete (
    fldindex bigint NOT NULL,
    fldbez character varying(500) NOT NULL,
    fldid_spielplatz bigint NOT NULL
);


ALTER TABLE public.tblspielgeraete OWNER TO root;

--
-- Name: tblstadtbezirk_fldindex_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE tblstadtbezirk_fldindex_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tblstadtbezirk_fldindex_seq OWNER TO root;

--
-- Name: tblstadtbezirk; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE tblstadtbezirk (
    fldindex bigint DEFAULT nextval('tblstadtbezirk_fldindex_seq'::regclass) NOT NULL,
    fldbez character varying(200) NOT NULL
);


ALTER TABLE public.tblstadtbezirk OWNER TO root;

--
-- Name: tblstadtteil_fldindex_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE tblstadtteil_fldindex_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tblstadtteil_fldindex_seq OWNER TO root;

--
-- Name: tblstadtteil; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE tblstadtteil (
    fldindex bigint DEFAULT nextval('tblstadtteil_fldindex_seq'::regclass) NOT NULL,
    fldbez character varying(200) NOT NULL
);


ALTER TABLE public.tblstadtteil OWNER TO root;

--
-- Name: tbltermine_grp; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE tbltermine_grp (
    fldindex bigint NOT NULL,
    fldbez character varying(500) NOT NULL,
    fldfarbe character varying(20) NOT NULL
);


ALTER TABLE public.tbltermine_grp OWNER TO root;

--
-- Name: tbltermine_liste; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE tbltermine_liste (
    fldindex bigint NOT NULL,
    fldbez character varying(500) NOT NULL,
    fldkurz character varying(200) NOT NULL,
    fldvondatum date NOT NULL,
    fldvonuhrzeit time without time zone NOT NULL,
    fldbisdatum date NOT NULL,
    fldbisuhrzeit time without time zone NOT NULL,
    fldid_terminegrp bigint NOT NULL,
    fldfarbe character varying(20) NOT NULL,
    fldid_terminserie bigint NOT NULL,
    fldtermintyp character varying(100) NOT NULL,
    fldlink character varying(1000) NOT NULL
);


ALTER TABLE public.tbltermine_liste OWNER TO root;

--
-- Name: tbltermine_serie; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE tbltermine_serie (
    fldindex bigint NOT NULL,
    fldbez character varying(500) NOT NULL,
    fldfarbe character varying(20) NOT NULL,
    fldimagepfad character varying(500) NOT NULL,
    fldsel character varying(2) DEFAULT 'J'::character varying NOT NULL
);


ALTER TABLE public.tbltermine_serie OWNER TO root;

--
-- Name: tbltranslate; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE tbltranslate (
    fldindex bigint NOT NULL,
    fldlang character varying(10) NOT NULL,
    fldbez character varying(500) NOT NULL,
    fldname character varying(400) NOT NULL
);


ALTER TABLE public.tbltranslate OWNER TO root;

--
-- Name: tblversion_fldindex_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE tblversion_fldindex_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tblversion_fldindex_seq OWNER TO root;

--
-- Name: tblversion; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE tblversion (
    fldindex bigint DEFAULT nextval('tblversion_fldindex_seq'::regclass) NOT NULL,
    fldbez character varying(500) NOT NULL,
    fldkurz character varying(10) NOT NULL,
    flddatum date NOT NULL
);


ALTER TABLE public.tblversion OWNER TO root;

--
-- Name: fldindex; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY tblfilter ALTER COLUMN fldindex SET DEFAULT nextval('tblfilter_fldindex_seq'::regclass);


--
-- Name: fldindex; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY tblktobanken ALTER COLUMN fldindex SET DEFAULT nextval('tblktobanken_fldindex_seq'::regclass);


--
-- Name: fldindex; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY tblktotyp ALTER COLUMN fldindex SET DEFAULT nextval('tblktotyp_fldindex_seq'::regclass);


--
-- Data for Name: tblfilter; Type: TABLE DATA; Schema: public; Owner: root
--

COPY tblfilter (fldindex, fldfeld, fldwert, fldmaske, fldname) FROM stdin;
7	fldschultyp	(ohne)	SHOWTAB	schultyp
8	fldschulart	Grundschule	SHOWTAB	schulart
9	fldstadtbezirk	Nippes	SHOWTAB	schulbezirk
1	fldview	(ohne)	SHOWTAB	Anzeige
2	fldparent	(ohne)	SHOWTAB	parent
3	fldid_menuprojekt	(ohne)	SHOWTAB	menuprojekt
4	fldversion	(ohne)	SHOWTAB	version
5	fldmenu		SHOWTAB	suchen
6	fldbez		SHOWTAB	suchen
10	fldmenuid	(ohne)	SHOWTAB	parent
\.


--
-- Name: tblfilter_fldindex_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('tblfilter_fldindex_seq', 10, true);


--
-- Data for Name: tblfunc; Type: TABLE DATA; Schema: public; Owner: root
--

COPY tblfunc (fldindex, fldbez, fldphp, fldmenuid, fldtyp, fldtarget, fldparam, fldaktiv, fldname, fldtimestamp, fldid_version, fldversion) FROM stdin;
2	Import	import.php	5	MENU			J		2014-09-08 17:43:37.907929	0	1003
3	Distinct	distinct.php	6	MENU			J		2014-09-08 18:34:59.206493	0	1003
4	Distinct	distinct.php	7	MENU			J		2014-09-09 18:53:00.537864	0	1003
5	Distinct	distinct.php	8	MENU			J		2014-09-10 09:01:18.6553	0	1003
6	Distinct	distinct.php	11	MENU			J		2014-09-10 17:48:21.471596	0	1003
\.


--
-- Name: tblfunc_fldindex_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('tblfunc_fldindex_seq', 6, true);


--
-- Data for Name: tblktobanken; Type: TABLE DATA; Schema: public; Owner: root
--

COPY tblktobanken (fldindex, fldbez, fldart, fldcalc, fldaktiv) FROM stdin;
\.


--
-- Name: tblktobanken_fldindex_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('tblktobanken_fldindex_seq', 1, false);


--
-- Data for Name: tblktotyp; Type: TABLE DATA; Schema: public; Owner: root
--

COPY tblktotyp (fldindex, fldtyp, fldbez) FROM stdin;
1	SQL-IMPORT	SQL-Import
\.


--
-- Name: tblktotyp_fldindex_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('tblktotyp_fldindex_seq', 1, true);


--
-- Data for Name: tblmarkers; Type: TABLE DATA; Schema: public; Owner: root
--

COPY tblmarkers (fldindex, fldname, fldaddress, fldlat, fldlng, fldtype) FROM stdin;
\.


--
-- Name: tblmarkers_fldindex_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('tblmarkers_fldindex_seq', 1, false);


--
-- Data for Name: tblmenu_liste; Type: TABLE DATA; Schema: public; Owner: root
--

COPY tblmenu_liste (fldindex, fldmenu, fldtblwebadr, fldsort, "fldGroup", fldview, fldid_modul, fldparent, fldversion, fldtyp, fldname, fldtimestamp, fldid_publictyp, fldhelplink, fldtarget, fldid_menuprojekt, fldart) FROM stdin;
11	Stadtbezirk	                                                                                                                                                                                                                                                          	     	\N	J	11	5	1003			2014-09-10 17:45:06.200718	3			1	MENU
10	Schulmap	                                                                                                                                                                                                                                                          	003  	\N	J	10	0	1003			2014-09-08 18:41:24.425686	3			1	MENU
2	Administration	                                                                                                                                                                                                                                                          	999  	\N	J	2	0	1003			2014-09-05 07:28:04.340437	3			1	USERMENU
3	Versionen	                                                                                                                                                                                                                                                          	     	\N	J	3	2	1003			2014-09-05 23:06:14.286732	3			1	MENU
6	Schultyp	                                                                                                                                                                                                                                                          	     	\N	J	6	5	1003			2014-09-08 07:58:23.5504	3			1	MENU
4	Module	                                                                                                                                                                                                                                                          	     	\N	J	4	2	1003			2014-09-08 07:33:58.302063	3			1	MENU
7	Schulart	                                                                                                                                                                                                                                                          	     	\N	J	7	5	1003			2014-09-08 07:58:57.17128	3			1	MENU
8	Stadtteil	                                                                                                                                                                                                                                                          	     	\N	J	8	5	1003			2014-09-08 08:00:09.316508	3			1	MENU
1	Home	                                                                                                                                                                                                                                                          	001  	\N	J	1	0	1003			2014-09-04 07:46:27.591672	3			1	MENU
5	Schulen	                                                                                                                                                                                                                                                          	002  	\N	J	5	0	1003			2014-09-08 07:51:13.457294	3			1	MENU
9	Funktionen	                                                                                                                                                                                                                                                          	     	\N	J	9	2	1003			2014-09-08 08:15:16.776828	3			1	MENU
\.


--
-- Name: tblmenu_liste_fldindex_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('tblmenu_liste_fldindex_seq', 11, true);


--
-- Data for Name: tblmenu_modul; Type: TABLE DATA; Schema: public; Owner: root
--

COPY tblmenu_modul (fldindex, fldbez, fldwebadr, fldlang, fldversion, fldtimestamp, fldsource, fldid_publictyp) FROM stdin;
5	Schulen	classes/showtab.php?menu=schulen	de	1003	2014-09-08 07:50:24.283819		3
6	Schultyp	classes/showtab.php?menu=schultyp	de	1003	2014-09-08 08:03:27.50607		3
7	Schulart	classes/showtab.php?menu=schulart	de	1003	2014-09-08 08:03:52.355619		3
8	Stadtteil	classes/showtab.php?menu=stadtteil	de	1003	2014-09-08 08:04:15.069232		3
1	Home_opendata	classes/welcome_opendataapp.php	de	1003	2014-09-04 07:44:06.527991		3
2	Admin	classes/showtab.php?menu=admin	de	1003	2014-09-05 07:30:20.973092		3
3	Versionen	classes/showtab.php?menu=version	de	1003	2014-09-05 23:34:11.54964		3
4	Module	classes/showtab.php?menu=modul	de	1003	2014-09-08 07:36:18.245543		3
9	Funktionen	classes/showtab.php?menu=func	de	1003	2014-09-08 08:14:39.919841		3
11	Stadtbezirk	classes/showtab.php?menu=stadtbezirk	de	1003	2014-09-10 17:43:58.103762		3
10	Schulmap	classes/googlemap.php?menu=schulmap	de	1003	2014-09-08 18:40:39.781192		3
\.


--
-- Name: tblmenu_modul_fldindex_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('tblmenu_modul_fldindex_seq', 11, true);


--
-- Data for Name: tblmenu_projekt; Type: TABLE DATA; Schema: public; Owner: root
--

COPY tblmenu_projekt (fldindex, fldbez, fldaktiv) FROM stdin;
1	Schulen	J
\.


--
-- Name: tblmenu_projekt_fldindex_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('tblmenu_projekt_fldindex_seq', 1, false);


--
-- Data for Name: tblmenu_typ; Type: TABLE DATA; Schema: public; Owner: root
--

COPY tblmenu_typ (fldindex, "fldBez") FROM stdin;
\.


--
-- Data for Name: tblpublictyp; Type: TABLE DATA; Schema: public; Owner: root
--

COPY tblpublictyp (fldindex, fldbez) FROM stdin;
3	PUBLIC
\.


--
-- Data for Name: tblschulart; Type: TABLE DATA; Schema: public; Owner: root
--

COPY tblschulart (fldindex, fldbez) FROM stdin;
1	Grundschule
2	Berufskolleg
3	Freie Waldorfschule
4	Hauptschule
5	2. Bildungsweg
6	Realschule
7	Förderschule
8	Gymnasium
9	Gesamtschule
\.


--
-- Name: tblschulart_fldindex_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('tblschulart_fldindex_seq', 9, true);


--
-- Data for Name: tblschulen; Type: TABLE DATA; Schema: public; Owner: root
--

COPY tblschulen (fldindex, fldstadtbezirk, fldstadtteil, fldadresse, fldpostzustellbezirk, fldschulart, fldschultyp, fldname, fldstadt, fldxkoor, fldykoor, fldlink) FROM stdin;
1	Nippes	Niehl	Halfengasse 25	50735	Grundschule	allgemeinbildend	Halfengasse	Köln	50.9926978600443022	6.96096480128650974	
2	Innenstadt	Neustadt/Süd	Pfälzer Str. 30	50677	Grundschule	allgemeinbildend	Pfälzer Str.	Köln	50.9259078326793997	6.94352138596164004	
3	Porz	Poll	Poller Hauptstr. 61	51105	Grundschule	allgemeinbildend	Poller Hauptstr.	Köln	50.9119504734755992	6.99260682186332971	
4	Kalk	Ostheim	Hardtgenbuscher Kirchweg 100	51107	Realschule	allgemeinbildend	Albert-Schweitzer-Schule	Köln	50.9270962689766975	7.04867838308275996	
5	Mülheim	Höhenhaus	Thymianweg 1	51061	Förderschule	allgemeinbildend	Thymianweg	Köln	50.9801414931648011	7.03121787495834027	
6	Nippes	Riehl	Garthestr. 20	50735	Grundschule	allgemeinbildend	Otfried-Preußler-Schule	Köln	50.9656026286006991	6.97551602364926993	
7	Lindenthal	Lindenthal	Freiligrathstr. 60	50935	Grundschule	allgemeinbildend	Hans-Christian-Andersen	Köln	50.9225864946738014	6.90229556914207976	
8	Lindenthal	Sülz	Berrenrather Str. 488	50937	Realschule	allgemeinbildend	Elsa-Brändström-Schule	Köln	50.9076901592827014	6.91322945961996993	
9	Lindenthal	Lindenthal	Gronewaldstr. 1	50931	Förderschule	allgemeinbildend	Johann-Joseph-Gronewald-Schule	Köln	50.9333369984053022	6.91873363207804992	
10	Porz	Zündorf	Irisweg 2	51143	Grundschule	allgemeinbildend	Irisweg	Köln	50.8721608350797965	7.05690560625459007	
11	Rodenkirchen	Godorf	Kuckucksweg 4	50997	Realschule	allgemeinbildend	Johannes-Gutenberg-Schule	Köln	50.8519867871856022	6.97206369842249973	
12	Mülheim	Holweide	Buschfeldstr. 46	51067	Grundschule	allgemeinbildend	Berthold-Otto-Schule	Köln	50.9704604763098033	7.03987814231258024	
13	Innenstadt	Deutz	Thusneldastr. 15	50679	Gymnasium	allgemeinbildend	Thusneldastr.	Köln	50.935193213834502	6.98131681943332971	
14	Ehrenfeld	Neuehrenfeld	Ottostr. 87	50823	Gymnasium	allgemeinbildend	Albertus-Magnus-Gymnasium	Köln	50.9578734328069984	6.92759909127171003	
15	Lindenthal	Lindenthal	Bachemer Str. 69	50931	Grundschule	allgemeinbildend	Bachemer Str.	Köln	50.9289968288115986	6.91879587396391038	
16	Mülheim	Mülheim	Tiefentalstr. 66	51063	Hauptschule	allgemeinbildend	Tiefentalstr.	Köln	50.9753018694419993	7.00946573791683036	
17	Kalk	Rath/Heumar	Forststr. 20	51107	Grundschule	allgemeinbildend	Forststr.	Köln	50.9167927953321993	7.08404589439223997	
18	Mülheim	Höhenhaus	Von-Bodelschwingh-Str. 24	51061	Grundschule	allgemeinbildend	Von-Bodelschwingh-Str.	Köln	50.986012323167003	7.02473528592777985	
19	Mülheim	Buchforst	Kopernikusstr. 40	51065	Grundschule	allgemeinbildend	Kopernikusstr.	Köln	50.9496531428063975	7.00966910998006032	
20	Chorweiler	Heimersdorf	Lebensbaumweg 51	50767	Grundschule	allgemeinbildend	Anna-Langohr-Schule	Köln	51.0097384323576009	6.90235052443153041	
21	Chorweiler	Pesch	Schulstr. 16	50767	Grundschule	allgemeinbildend	Erich-Ohser-Schule	Köln	50.9968320435202003	6.87182525758449003	
22	Rodenkirchen	Raderberg	Annastr. 63	50968	Grundschule	allgemeinbildend	Annastr.	Köln	50.9045752477620965	6.95982664161587028	
23	Kalk	Kalk	Falckensteinstr. 34	51103	Hauptschule	allgemeinbildend	Adolph-Kolping-Schule	Köln	50.9444813603710003	7.0062911711686402	
24	Mülheim	Mülheim	Lassallestr. 59	51065	Realschule	allgemeinbildend	Lassallestr.	Köln	50.958790968325502	7.00776667465907988	
25	Kalk	Brück	Diesterwegstr. 69	51109	Grundschule	allgemeinbildend	Diesterwegstr.	Köln	50.9479415376021976	7.07651884920568985	
26	Lindenthal	Müngersdorf	Alter Militärring 96	50933	Realschule	allgemeinbildend	Ernst-Simons-Schule	Köln	50.9447904190030982	6.87746815858695015	
27	Mülheim	Dellbrück	Dellbrücker Hauptstr. 16	51069	Grundschule	allgemeinbildend	Dellbrücker Hauptstr.	Köln	50.9729479711393978	7.07583400128450979	
28	Ehrenfeld	Ehrenfeld	Borsigstr. 13	50825	Grundschule	allgemeinbildend	Astrid-Lindgren-Grundschule	Köln	50.9571382560413966	6.90662247010449004	
29	Rodenkirchen	Bayenthal	Cäsarstr. 21	50968	Grundschule	allgemeinbildend	Franziskus-Schule	Köln	50.9072967445381011	6.96646228777072984	
30	Rodenkirchen	Rodenkirchen	Sürther Str. 191	50999	Gesamtschule	allgemeinbildend	Gesamtschule Rodenkirchen	Köln	50.8764247718050981	7.00552382508404037	
31	Lindenthal	Weiden	Ostlandstr. 39	50858	Gymnasium	allgemeinbildend	Georg-Büchner-Gymnasium	Köln	50.9345590727314033	6.83850837808119039	
32	Rodenkirchen	Zollstock	Rosenzweigweg 3	50969	Förderschule	allgemeinbildend	Mildred-Scheel-Schule	Köln	50.9084669871283992	6.94412134011952986	
33	Porz	Westhoven	Stresemannstr. 15	51149	Förderschule	allgemeinbildend	Finkenberg-Schule	Köln	50.8998848243958975	7.02237839141192044	
34	Mülheim	Mülheim	Ferdinandstr. 43	51063	Hauptschule	allgemeinbildend	Montessori-Hauptschule	Köln	50.9475472967392022	6.98960460413105	
35	Nippes	Bilderstöckchen	Osterather Str. 13	50739	Grundschule	allgemeinbildend	Osterather Str.	Köln	50.9585098262140974	6.93745446393969978	
36	Mülheim	Stammheim	Ricarda-Huch-Str. 60	51061	Grundschule	allgemeinbildend	Ricarda-Huch Str.	Köln	50.9838522163796029	6.99036600490109006	
37	Rodenkirchen	Zollstock	Rosenzweigweg 3	50969	Grundschule	allgemeinbildend	Rosenzweigweg	Köln	50.9081216440765019	6.94410127451399006	
38	Nippes	Bilderstöckchen	Escher Str. 217	50739	Berufskolleg	berufsbildend	Berufskolleg Joseph-DuMont	Köln	50.9653359274037001	6.93066887770659967	
39	Lindenthal	Sülz	Berrenrather Str. 352	50937	Grundschule	allgemeinbildend	Manderscheider Platz.	Köln	50.9151691454241018	6.92119464787803995	
40	Innenstadt	Neustadt/Nord	Balthasarstr. 87	50670	Grundschule	allgemeinbildend	Balthasarstr.	Köln	50.9534250537164013	6.96003993334343996	
41	Ehrenfeld	Vogelsang	Kolkrabenweg 8	50829	Förderschule	allgemeinbildend	Kolkrabenschule	Köln	50.9649362685753005	6.87773780416052993	
42	Ehrenfeld	Neuehrenfeld	Nußbaumerstr. 254	50825	Grundschule	allgemeinbildend	Nußbaumer Str.	Köln	50.9584702787129018	6.9219999504078098	
43	Chorweiler	Seeberg	Riphahnstr. 40	50769	Grundschule	allgemeinbildend	Riphanstr.	Köln	51.0198507532736016	6.90171600529586993	
44	Kalk	Kalk	Kapitelstr. 24	51103	Grundschule	allgemeinbildend	Grüneberg-Schule	Köln	50.9398987238905008	7.00427260630952997	
45	Mülheim	Höhenhaus	Honschaftsstr. 312	51061	Grundschule	allgemeinbildend	Honschaftsstr.	Köln	50.9828062900714016	7.03251845063090997	
46	Nippes	Nippes	Auguststr. 1	50733	Förderschule	allgemeinbildend	Schule Auguststr.	Köln	50.9600410142016997	6.95155211021961961	
47	Nippes	Nippes	Bülowstr. 90	50733	Hauptschule	allgemeinbildend	Bülowstr.	Köln	50.9700030013273988	6.95648194987917012	
48	Chorweiler	Worringen	An den Kaulen 62	50769	Grundschule	allgemeinbildend	An den Kaulen	Köln	51.0681299935302988	6.85779189950290036	
49	Porz	Eil	Bonner Str. 40	51145	Hauptschule	allgemeinbildend	Kopernikus-Schule	Köln	50.8881391885321008	7.07116348328240019	
50	Lindenthal	Weiden	Schulstr. 2	50859	Grundschule	allgemeinbildend	Clarenhofschule	Köln	50.9377742864763974	6.82875154308359988	
51	Porz	Grengel	Mörikeweg 2	51147	Förderschule	allgemeinbildend	Eduard-Mörike-Schule	Köln	50.8746623314345001	7.09903229109974987	
52	Ehrenfeld	Bocklemünd/Mengenich	Görlinger-Zentrum 45	50829	Grundschule	allgemeinbildend	Görlinger-Zentrum	Köln	50.9801435585194014	6.86996320943779981	
53	Chorweiler	Esch/Auweiler	Martinusstr. 28	50765	Grundschule	allgemeinbildend	Konrad-Adenauer-Schule	Köln	51.0104494091031029	6.85402618355058024	
54	Chorweiler	Worringen	An den Kaulen 62	50769	Grundschule	allgemeinbildend	An den Kaulen	Köln	51.0682265057405971	6.85788171070559027	
55	Ehrenfeld	Ehrenfeld	Everhardstr. 60	50823	Grundschule	allgemeinbildend	Everhardstr.	Köln	50.9493470816533005	6.92878814603844972	
56	Nippes	Bilderstöckchen	Reutlinger Str. 49	50739	Hauptschule	allgemeinbildend	Reutlingerstr.	Köln	50.9686486956788016	6.93231421125341019	
57	Porz	Porz	Humboldtstr. 2	51145	Gymnasium	allgemeinbildend	Stadtgymnasium Porz	Köln	50.8823984301038976	7.07199436099909029	
58	Nippes	Weidenpesch	Neusser Str. 605	50737	Grundschule	allgemeinbildend	Florianschule	Köln	50.9826659381201992	6.94668536536574965	
59	Porz	Finkenberg	Stresemannstr. 38	51149	Gesamtschule	allgemeinbildend	Liese-Meitner-Gesamtschule	Köln	50.8991709807099966	7.0630046961877202	
60	Ehrenfeld	Vogelsang	Kolkrabenweg 8	50829	Förderschule	allgemeinbildend	Kolkrabenweg	Köln	50.9650706895315011	6.87800852982871991	
61	Lindenthal	Müngersdorf	Alter Militärring 96	50933	Förderschule	allgemeinbildend	Anna-Freud-Schule	Köln	50.9452304551918971	6.87594695471478978	
62	Rodenkirchen	Bayenthal	Schillerstr. 98	50968	Gymnasium	allgemeinbildend	Irmgardis-Gymnasium	Köln	50.9046110959075975	6.96840070704029024	
63	Lindenthal	Lövenich	Kölner Str. 37	50859	Grundschule	allgemeinbildend	Johanniter-Schule	Köln	50.946888598733203	6.83431242638955005	
64	Innenstadt	Altstadt/Süd	Heinrichstr. 51	50676	Berufskolleg	berufsbildend	Berufskolleg Richard-Riemerschmid-Schule	Köln	50.9274433789430034	6.95225387148072027	
65	Mülheim	Dünnwald	Am Portzenacker 1	51069	Grundschule	allgemeinbildend	Am Portzenacker	Köln	51.0011058841924978	7.0286364982655698	
66	Porz	Wahn	Albert-Schweitzer-Str. 8	51147	Realschule	allgemeinbildend	Otto-Lilienthal-Schule	Köln	50.8645732466010969	7.08829334111780973	
67	Ehrenfeld	Ossendorf	Wilhelm-Schreiber-Str. 56	50827	Grundschule	allgemeinbildend	Wilhelm-Schreiber Str.	Köln	50.9713180865897968	6.90100305781308965	
68	Chorweiler	Seeberg	Balsaminenweg 52	50769	Grundschule	allgemeinbildend	Sankt-Martin-Schule	Köln	51.0176040068475984	6.91455689747018987	
69	Kalk	Merheim	Fußfallstr. 55	51109	Grundschule	allgemeinbildend	Fußfallstr.	Köln	50.9491688243067031	7.04592869713806014	
70	Ehrenfeld	Ehrenfeld	Gravenreuthstr. 10	50823	Realschule	allgemeinbildend	Geschwister-Scholl-Schule	Köln	50.9526410948707991	6.92137377764191974	
71	Mülheim	Flittard	Am Feldrain 10	51061	Förderschule	allgemeinbildend	Heinrich-Welsch-Schule	Köln	50.9975984097725998	6.97936923732414982	
72	Porz	Langel	Hinter der Kirche 3	51143	Grundschule	allgemeinbildend	Hinter der Kirche	Köln	50.8452236900338974	7.0052790634145401	
73	Innenstadt	Deutz	Judenkirchhofsweg 6	50679	2. Bildungsweg	allgemeinbildend	Köln-Kolleg	Köln	50.9270777149458027	6.98131764949360978	
74	Mülheim	Mülheim	Langemaß 21	51063	Grundschule	allgemeinbildend	Langemaß	Köln	50.9692878296035019	7.00876085357027989	
75	Kalk	Brück	Petersenstr. 7	51109	Realschule	allgemeinbildend	Käthe-Kollwitz-Schule	Köln	50.9477722306011032	7.07655207755053972	
76	Nippes	Longerich	Altonaer Str. 32	50737	Grundschule	allgemeinbildend	Altonaer Str.	Köln	50.9957135336548006	6.92416949970240037	
77	Mülheim	Buchheim	Kattowitzer Str. 52	51065	Gymnasium	allgemeinbildend	Johann-Gottfried-Herder-Gymnasium	Köln	50.9518207637127034	7.02182194022890016	
78	Kalk	Vingst	Heßhofstr. 45	51107	Grundschule	allgemeinbildend	Heßhofstr.	Köln	50.9311366443152025	7.02382904682430986	
79	Innenstadt	Deutz	Gotenring 5	50679	Grundschule	allgemeinbildend	Gotenring	Köln	50.9362791337918992	6.9784896891300896	
80	Nippes	Longerich	Ossietzkystr. 2	50737	Förderschule	allgemeinbildend	Ossietzkystr.	Köln	50.9897178408304015	6.92093545955022993	
81	Kalk	Ostheim	Zehnthofstr. 22	51107	Grundschule	allgemeinbildend	James-Krüss-Schule	Köln	50.9306800568141966	7.04221856682253033	
82	Kalk	Humboldt/Gremberg	Lohmarer Str. 11	51105	Grundschule	allgemeinbildend	Lohmarer Str.	Köln	50.9289324629505984	7.00495791157791992	
83	Porz	Grengel	Friedensstr. 41	51147	Grundschule	allgemeinbildend	Peter-Petersen-Schule	Köln	50.8754759830796033	7.10105165548089001	
84	Porz	Wahnheide	Neue Heide 25	51147	Grundschule	allgemeinbildend	Heideschule	Köln	50.8612911040100997	7.09927609019736039	
85	Lindenthal	Lindenthal	Lindenburger Allee 38	50931	Grundschule	allgemeinbildend	Lindenburger Allee	Köln	50.9271176167137014	6.91595975752066039	
86	Lindenthal	Lindenthal	Brucknerstr. 15	50931	Gymnasium	allgemeinbildend	Liebfrauenschule 	Köln	50.9341314176512014	6.91786103444313039	
87	Kalk	Kalk	Kapitelstr. 24	51103	Grundschule	allgemeinbildend	Kapitelstr.	Köln	50.9400068867152029	7.00425971391667002	
88	Mülheim	Holweide	Burgwiesenstr. 125	51067	Gesamtschule	allgemeinbildend	Gesamtschule Holweide	Köln	50.9614724689391991	7.03883158549872956	
89	Chorweiler	Lindweiler	Soldiner Str. 68	50767	Grundschule	allgemeinbildend	Soldinerstr.	Köln	51.0063271425529976	6.88677949038890969	
90	Kalk	Vingst	Lustheider Str. 43	51103	Grundschule	allgemeinbildend	Lustheider Str.	Köln	50.9360608493605014	7.02675378654739013	
91	Ehrenfeld	Bickendorf	Erlenweg 16	50827	Grundschule	allgemeinbildend	Erlenweg	Köln	50.9648175478257031	6.89398442586749027	
92	Mülheim	Dellbrück	Dellbrücker Mauspfad 200	51069	Realschule	allgemeinbildend	Dellbrücker Mauspfad	Köln	50.9703208943347974	7.06761434280172018	
93	Innenstadt	Deutz	Gotenring 5	50679	Grundschule	allgemeinbildend	Gotenring	Köln	50.9360269419711003	6.97880548481516971	
94	Lindenthal	Widdersdorf	Im Kamp 14	50859	Grundschule	allgemeinbildend	Pater-Delp-Schule	Köln	50.9670322407693988	6.83140773513559019	
95	Ehrenfeld	Bickendorf	Rochusstr. 145	50827	Hauptschule	allgemeinbildend	Montessori-Hauptschule	Köln	50.9633703629707995	6.90455581085952019	
96	Kalk	Brück	Olpener Str. 930	51109	Grundschule	allgemeinbildend	Olpener Str.	Köln	50.9449427379488995	7.0786932177067996	
97	Innenstadt	Neustadt/Süd	Loreleystr. 3	50677	Freie Waldorfschule	allgemeinbildend	Michaeli-Schule	Köln	50.9196545123353985	6.95212821633096034	
98	Innenstadt	Neustadt/Nord	Bernhard-Letterhaus-Str. 17	50670	Gesamtschule	allgemeinbildend	Freie Schule Köln	Köln	50.9553268010297984	6.95156935362788975	
99	Innenstadt	Altstadt/Süd	Weberstr. 29	50676	Förderschule	allgemeinbildend	Severin-Schule	Köln	50.9305659474471	6.95856275870668028	
100	Innenstadt	Neustadt/Nord	Hansaring 56	50670	Gymnasium	allgemeinbildend	Hansa-Gymnasium	Köln	50.9480852009073004	6.9507644073199204	
101	Rodenkirchen	Immendorf	Godorfer Str. 29	50997	Grundschule	allgemeinbildend	Freiherr-vom-Stein-Schule	Köln	50.8565813804247995	6.96282158416982	
102	Chorweiler	Chorweiler	Weichselring 6	50765	Freie Waldorfschule	allgemeinbildend	Freie Waldorfschule	Köln	51.0298717724295017	6.89475020451900988	
103	Mülheim	Mülheim	Danzierstr. 146	51063	Realschule	allgemeinbildend	Johann-Bendel-Schule	Köln	50.9590089287829997	7.00107539902871956	
104	Chorweiler	Pesch	Schulstr. 18	50767	Gymnasium	allgemeinbildend	Schulstr.	Köln	50.9980798175556984	6.8718512173141697	
105	Lindenthal	Sülz	Berrenrather Str. 179	50937	Grundschule	allgemeinbildend	Berrenratherstr.	Köln	50.9197446006605006	6.92786842311133988	
106	Lindenthal	Müngersdorf	Belvederestr. 149	50933	Förderschule	allgemeinbildend	Belvederestr.	Köln	50.9475899505249004	6.87067432930760003	
107	Porz	Zündorf	Schmittgasse 66	51143	Grundschule	allgemeinbildend	Schmittgasse	Köln	50.8660676170886035	7.04549166411884986	
108	Kalk	Kalk	Vietorstr. 38	51103	Förderschule	allgemeinbildend	Schule Der Kleine Prinz	Köln	50.9389839823974029	6.99943394670856023	
109	Nippes	Longerich	Longericher Hauptstr. 83	50739	Grundschule	allgemeinbildend	Longericher Hauptstr.	Köln	50.9963462014585005	6.90457592359326977	
110	Rodenkirchen	Rodenkirchen	Ringelnatzstr. 12	50996	Hauptschule	allgemeinbildend	Ringelnatzstr.	Köln	50.8889969562615008	7.00111375335666963	
111	Rodenkirchen	Rodenkirchen	Mainstr. 75	50996	Grundschule	allgemeinbildend	Grüngürtelschule	Köln	50.8838495598248031	7.00262606175450042	
112	Chorweiler	Seeberg	Karl-Marx-Allee 3	50769	Hauptschule	allgemeinbildend	Gustav-Heinemann-Schule	Köln	51.0235952613136021	6.90643193873343986	
113	Mülheim	Mülheim	Ferdinandstr. 43	51063	Grundschule	allgemeinbildend	Montessori-Grundschule	Köln	50.9472077677265034	6.98942464042946021	
114	Rodenkirchen	Godorf	Godorfer Hauptstr. 73	50997	Grundschule	allgemeinbildend	Godorfer Hauptstr.	Köln	50.8490775834276008	6.9744586511801101	
115	Chorweiler	Heimersdorf	Volkhovener Weg 140	50767	Hauptschule	allgemeinbildend	Ursula-Kuhr-Schule	Köln	51.0082899653940984	6.89826386952200998	
116	Innenstadt	Neustadt/Nord	Blumenthalstr. 10	50670	Förderschule	allgemeinbildend	Blumenthalstr.	Köln	50.9549185543284011	6.95923956118350961	
117	Innenstadt	Neustadt/Nord	Antwerpener Str. 19	50672	Grundschule	allgemeinbildend	Antwerpener Str.	Köln	50.9401324226219003	6.93595559365961023	
118	Nippes	Nippes	Bülowstr. 90	50733	Grundschule	allgemeinbildend	Marternus-Grundschule	Köln	50.970122003275101	6.95646204326013962	
119	Rodenkirchen	Bayenthal	Bonner Str. 271	50968	Berufskolleg	berufsbildend	Berufskolleg f. Wirtschaft/Marketing	Köln	50.9081271810253	6.96397460999637019	
120	Innenstadt	Neustadt/Süd	Sachsenring 79	50677	Berufskolleg	berufsbildend	Berufskolleg des Erzbistums Sachsenring	Köln	50.9249956035484033	6.94859832964440027	
121	Innenstadt	Neustadt/Süd	Hardefuststr. 1	50677	Berufskolleg	berufsbildend	Berufskolleg EWS-Berufskolleg	Köln	50.9243556046506995	6.94901327218808973	
122	Rodenkirchen	Rodenkirchen	Pfarrer-te-Reh-Str. 5	50999	Berufskolleg	berufsbildend	Berufskolleg Michaelshoven	Köln	50.8779376834633013	6.99861955234861988	
123	Lindenthal	Lindenthal	Frangenheimstr. 6	50931	Berufskolleg	berufsbildend	Berufskolleg Fachschule des Möbelhandel	Köln	50.9325755585887023	6.91817976731069972	
124	Rodenkirchen	Marienburg	Bayenthalgürtel 6	50968	Berufskolleg	berufsbildend	Berufskolleg Höhere Fachschule f. Augenoptik	Köln	50.9065630179447979	6.97606334168142972	
125	Chorweiler	Esch/Auweiler	Gartenstr. 11	50765	Berufskolleg	berufsbildend	Berufskolleg für Floristik	Köln	51.0017174644518008	6.84993206067723026	
126	Ehrenfeld	Ehrenfeld	Vogelsanger Str. 295	50825	Berufskolleg	berufsbildend	Berufskolleg Rhein. Akademie 	Köln	50.9520657339794028	6.89978848809126966	
127	Rodenkirchen	Raderberg	Bischofsweg 48	50969	Berufskolleg	berufsbildend	Berufskolleg Berufskolleg f. Medien	Köln	50.9155606588902003	6.95084018152804006	
128	Mülheim	Mülheim	Luzerner Weg 72	51063	Berufskolleg	berufsbildend	Berufskolleg Berufsfeld Sozialwesen	Köln	50.9862206356401018	7.0083562141846496	
129	Lindenthal	Müngersdorf	Widdersdorfer Str. 401	50933	Berufskolleg	berufsbildend	Berufskolleg für Gestaltung	Köln	50.9469520345276976	6.88720127652123004	
130	Innenstadt	Altstadt/Nord	Dagobertstr. 79	50668	Grundschule	allgemeinbildend	Célestin-Freinet-Schule	Köln	50.9483428083606	6.96277438727685993	
131	Ehrenfeld	Bocklemünd/Mengenich	Tollerstr. 16	50829	Gesamtschule	allgemeinbildend	Max-Ernst-Gesamtschule	Köln	50.9787124999367975	6.87084639450219026	
132	Innenstadt	Altstadt/Süd	Georgsplatz 10	50676	Gymnasium	allgemeinbildend	Kaiserin-Augusta-Schule	Köln	50.9314768877521971	6.95845802039951966	
133	Innenstadt	Altstadt/Nord	Machabäerstr. 47	50668	Gymnasium	allgemeinbildend	Ursulinenschule	Köln	50.9467466858031983	6.96057933804971007	
134	Innenstadt	Neustadt/Nord	Gilbachstr. 20	50672	Grundschule	allgemeinbildend	Montessori-Grundschule	Köln	50.9453970040538024	6.93874272608456977	
135	Innenstadt	Neustadt/Süd	Loreleystr. 3	50677	Grundschule	allgemeinbildend	Lorelystr.	Köln	50.9195305417528985	6.95175450614423962	
136	Innenstadt	Altstadt/Nord	Dagobertstr. 79	50668	2. Bildungsweg	allgemeinbildend	Abendrealschule	Köln	50.9484482764757018	6.96210660906671031	
137	Innenstadt	Neustadt/Süd	Zugweg 42	50677	Grundschule	allgemeinbildend	Zugweg	Köln	50.9181280230469966	6.95677759064681034	
138	Innenstadt	Neustadt/Nord	Vogelsanger Str. 1	50672	Gymnasium	allgemeinbildend	Gymnasium Kreuzgasse	Köln	50.9408965379885998	6.92679538035851028	
139	Innenstadt	Altstadt/Süd	Severinswall 40	50678	Realschule	allgemeinbildend	Theo-Burauen-Schule	Köln	50.9231547108731988	6.9652768537717602	
140	Innenstadt	Altstadt/Nord	Machabäerstr. 47	50668	Realschule	allgemeinbildend	Ursulinenschule (Realschule)	Köln	50.9467483209989993	6.96028225654016008	
141	Innenstadt	Altstadt/Nord	Alte Wallgasse 10	50672	Gymnasium	allgemeinbildend	Königin-Luise-Schule 	Köln	50.9393237826104013	6.94363054716438022	
142	Innenstadt	Altstadt/Süd	Kartäuserwall 40	50676	Gymnasium	allgemeinbildend	Humboldt Gymnasium	Köln	50.9267561845850025	6.94878378717347989	
143	Lindenthal	Sülz	Redwitzstr. 80	50937	Förderschule	allgemeinbildend	Redwitzstr.	Köln	50.9222059966634006	6.92347994615354967	
144	Chorweiler	Volkhoven/Weiler	Fühlinger Weg 4	50765	Gymnasium	allgemeinbildend	Heinrich-Mann-Gymnasium	Köln	51.0181075291878017	6.88312646403564976	
145	Porz	Poll	Auf dem Sandberg 120	51105	Förderschule	allgemeinbildend	Auf dem Sandberg	Köln	50.9160131512877001	6.99555897729985965	
146	Rodenkirchen	Rondorf	Adlerstr. 13	50997	Grundschule	allgemeinbildend	Anne-Frank-Schule	Köln	50.8766062766012013	6.96352885995615001	
147	Ehrenfeld	Ehrenfeld	Lindenbornstr. 15	50823	Grundschule	allgemeinbildend	Lindenbornstr.	Köln	50.9457340295926997	6.91430618355057991	
148	Porz	Ensen	Hohe Str. 77	51149	Grundschule	allgemeinbildend	Hohestr.	Köln	50.8969054844097997	7.02961852686738009	
149	Nippes	Niehl	Nesselrodestr. 15	50735	Grundschule	allgemeinbildend	Nesselrodestr.	Köln	50.9774983576887024	6.9642381235806603	
150	Lindenthal	Klettenberg	Stenzelbergstr. 3	50939	Grundschule	allgemeinbildend	Stenzelbergstr.	Köln	50.9108027856606	6.92991589896034021	
151	Ehrenfeld	Neuehrenfeld	Baadenberger Str. 111	50825	Hauptschule	allgemeinbildend	Baadenbergerstr.	Köln	50.9645494111460025	6.91853879360732993	
152	Chorweiler	Roggendorf/Thenhoven	Gutnickstr. 37	50769	Grundschule	allgemeinbildend	Gutnickstr.	Köln	51.0449904976392972	6.84700002158329024	
153	Lindenthal	Weiden	Ostlandstr. 39	50858	Hauptschule	allgemeinbildend	Martin-Luther-King-Schule	Köln	50.9345715295169015	6.83817585806345019	
154	Lindenthal	Sülz	Euskirchener Str. 50	50935	Realschule	allgemeinbildend	Theodor-Heuss-Schule	Köln	50.9177939526124987	6.91573465035842982	
155	Kalk	Ostheim	Zehnthofstr. 22	51107	Grundschule	allgemeinbildend	Zehnthofstr.	Köln	50.9305720167118992	7.04216693310516018	
156	Porz	Porz	Hauptstr. 432	51143	Grundschule	allgemeinbildend	Hauptstr.	Köln	50.8871356847924972	7.0564284628224696	
157	Rodenkirchen	Meschenich	Kettelerstr. 14	50997	Grundschule	allgemeinbildend	Kettelerschule	Köln	50.8595349350124977	6.93173469640160977	
158	Lindenthal	Junkersdorf	Kirchweg 138	50858	Grundschule	allgemeinbildend	Ildefons-Herwegen-Schule	Köln	50.9325462785134988	6.85727626416376967	
159	Nippes	Nippes	Gellertstr. 4	50733	Grundschule	allgemeinbildend	Mathilde-von-Mevissen	Köln	50.9628303895315966	6.95772886242555	
160	Innenstadt	Deutz	Im Hasental 41	50679	Realschule	allgemeinbildend	Im Hasental	Köln	50.9291673136890992	6.97980649279042975	
161	Ehrenfeld	Ehrenfeld	Platenstr. 7	50825	Grundschule	allgemeinbildend	Michael-Ende-Schule	Köln	50.9531223554283983	6.91395710380642026	
162	Kalk	Ostheim	Hardtgenbuscher Kirchweg 100	51107	Gymnasium	allgemeinbildend	Heinrich-Heine-Gymnasium	Köln	50.9270957174467966	7.04822961039934981	
163	Rodenkirchen	Raderthal	Raderthalgürtel 3	50968	Gesamtschule	allgemeinbildend	Europaschule	Köln	50.9022293375557027	6.95046611565000028	
164	Nippes	Mauenheim	Nibelungenstr. 50	50739	Grundschule	allgemeinbildend	Nibelungenstr.	Köln	50.9745171497127032	6.94310199843445996	
165	Mülheim	Holweide	Neufelder Str. 2	51067	Grundschule	allgemeinbildend	Neufelderstr.	Köln	50.969803311041403	7.05454032834865963	
166	Chorweiler	Lindweiler	Soldiner Str. 68	50767	Förderschule	allgemeinbildend	Hermann-Gmeiner-Schule	Köln	51.0061303193598974	6.88709374663252039	
167	Mülheim	Holweide	Friedlandstr. 5	51067	Grundschule	allgemeinbildend	Friedlandstr.	Köln	50.9698598639177973	7.04074940036833041	
168	Mülheim	Buchheim	An St.Theresia 1	51067	Grundschule	allgemeinbildend	An St. Theresia	Köln	50.9640952014183028	7.02449263898409981	
169	Rodenkirchen	Rodenkirchen	Sürther Str. 55	50996	Gymnasium	allgemeinbildend	Gymnasium Rodenkirchen	Köln	50.8876078605279005	6.99873902936665981	
170	Kalk	Humboldt/Gremberg	Westerwaldstr. 90	51105	Grundschule	allgemeinbildend	Westerwaldstr.	Köln	50.9288087441909028	6.99557577646795981	
171	Mülheim	Buchheim	Alte Wipperfürther Str. 49	51065	Grundschule	allgemeinbildend	Alte Wipperführter-Str.	Köln	50.9559371278783999	7.01604987796901991	
172	Lindenthal	Klettenberg	Lohrbergstr. 46	50939	Grundschule	allgemeinbildend	Lohrbergstr.	Köln	50.910275975056301	6.92311717998905962	
173	Mülheim	Flittard	Am Feldrain 10	51061	Grundschule	allgemeinbildend	Am Feldrain	Köln	50.9976173178051013	6.97949413952640008	
174	Lindenthal	Sülz	Leybergstr. 1	50939	Gymnasium	allgemeinbildend	Hildegard-von-Bingen-Schule	Köln	50.916950279509301	6.9329733273305596	
175	Lindenthal	Sülz	Nikolausstr. 55	50937	Gymnasium	allgemeinbildend	Schiller-Gymnasium	Köln	50.9234279202851994	6.92955854635203039	
176	Nippes	Bilderstöckchen	Alzeyer Str. 12	50739	Grundschule	allgemeinbildend	Alzeyer Str.	Köln	50.9706964538790004	6.92844518214786032	
177	Ehrenfeld	Ehrenfeld	Lindenbornstr. 15	50823	Grundschule	allgemeinbildend	Vincenz-Statz-Schule	Köln	50.9456776532178992	6.91428501348130986	
178	Lindenthal	Weiden	Breslauer Str. 11	50858	Grundschule	allgemeinbildend	Albert-Schweitzer-Schule	Köln	50.936205152606	6.84486887903261998	
179	Chorweiler	Merkenich	Spoerkelhof 7	50769	Grundschule	allgemeinbildend	Spoerkelhof	Köln	51.0270139027753018	6.95330730426440979	http://spoerkelhof-koeln.de/
180	Nippes	Nippes	Niehler Kirchweg 120	50733	Realschule	allgemeinbildend	Edith-Stein-Schule	Köln	50.9712763708692975	6.95489618527186959	
181	Nippes	Bilderstöckchen	Escher Str. 247	50739	Gymnasium	allgemeinbildend	Dreikönigs-Gymnasium	Köln	50.9670780017170983	6.92881887563005971	
182	Innenstadt	Altstadt/Süd	Trierer Str. 8	50676	Grundschule	allgemeinbildend	Triererstr.	Köln	50.927871209589803	6.94667132902826978	
183	Innenstadt	Altstadt/Nord	Gereonsmühlengasse 4	50670	2. Bildungsweg	allgemeinbildend	Abendgymnasium	Köln	50.9449069433095971	6.94854382824561956	
184	Innenstadt	Neustadt/Süd	Mainzer Str. 30	50678	Grundschule	allgemeinbildend	Mainzerstr.	Köln	50.9196894384269996	6.96396813369739043	
185	Nippes	Longerich	Altonaer Str. 32	50737	Grundschule	allgemeinbildend	Marienschule	Köln	50.9960664594308	6.92498561576269012	
186	Mülheim	Dellbrück	Dellbrücker Mauspfad 198	51069	Hauptschule	allgemeinbildend	Heinrich-Schieffer-Hauptschule	Köln	50.9700112362453979	7.06847611671460996	
187	Lindenthal	Sülz	Nikolausstr. 51	50937	Gymnasium	allgemeinbildend	Elisabeth-von-Thüringen-Schule	Köln	50.9238601359828991	6.92919623661545003	
188	Mülheim	Stammheim	Diependahlstr. 12	51061	Grundschule	allgemeinbildend	Diependahlstr.	Köln	50.9867637211440012	6.98735557498940008	
189	Kalk	Höhenberg	Adalbertstr. 17	51103	Gesamtschule	allgemeinbildend	Katharina-Henoth-Schule	Köln	50.9380142233379019	7.02861048653201959	
190	Porz	Finkenberg	Konrad-Adenauer-Str. 20	51149	Grundschule	allgemeinbildend	Konrad-Adenauer Str.	Köln	50.8960229900042975	7.06545559679736002	
191	Mülheim	Mülheim	Fürstenbergstr. 26	51065	Realschule	allgemeinbildend	Elly-Heuss-Knapp-Schule	Köln	50.9590271023823007	7.00682070544977975	
192	Porz	Wahn	Adolph-Kolping-Str. 41	51147	Grundschule	allgemeinbildend	Adolph-Kolping-Str.	Köln	50.8593725571562985	7.09026490555933986	
193	Lindenthal	Müngersdorf	Wendelinstr. 64	50933	Grundschule	allgemeinbildend	Müngersdorf	Köln	50.9412822189779035	6.88016031857969956	
194	Ehrenfeld	Bocklemünd/Mengenich	Mengenicher Str. 28	50829	Grundschule	allgemeinbildend	Mengenicher Str.	Köln	50.9757613615809007	6.86268998928905027	
195	Porz	Poll	Am Altenberger Kreuz 14	51105	Grundschule	allgemeinbildend	Janusz-Korczak-Schule	Köln	50.9188386454127979	6.98950915874195999	
196	Innenstadt	Deutz	Eitorfer Str. 18	50679	Berufskolleg	berufsbildend	Berufskolleg Hans-Böckler	Köln	50.9352461591573018	6.98462538501112995	
197	Innenstadt	Deutz	Eitorfer Str. 16	50679	Berufskolleg	berufsbildend	Berufskolleg Nicolaus-August-Otto	Köln	50.9356780313424977	6.9836844754944396	
198	Innenstadt	Deutz	Eumeniusstr. 4	50679	Berufskolleg	berufsbildend	Berufskolleg Deutzer Freiheit	Köln	50.9359657001285981	6.98030764561262984	
199	Innenstadt	Altstadt/Süd	Ulrichgasse 1	50678	Berufskolleg	berufsbildend	Berufskolleg Ulrepforte	Köln	50.9257846679867967	6.95288137187248978	
200	Nippes	Nippes	Niehler Kirchweg 118	50733	Berufskolleg	berufsbildend	Berufskolleg Barbara-von-Sell	Köln	50.9707396411639024	6.95444311258110037	
201	Innenstadt	Neustadt/Süd	Lindenstr. 78	50674	Berufskolleg	berufsbildend	Berufskolleg an der Lindenstraße	Köln	50.9328649045171034	6.93366885174880032	
202	Innenstadt	Deutz	Eitorfer Str. 18	50679	Berufskolleg	berufsbildend	Berufskolleg Werner-von-Siemens	Köln	50.9350202503863017	6.98554189685208993	
203	Innenstadt	Altstadt/Süd	Humboldtstr. 41	50676	Berufskolleg	berufsbildend	Berufskolleg Humboldtstr.	Köln	50.9326723084218997	6.94185141419283003	
204	Innenstadt	Neustadt/Süd	Zugweg 48	50677	Berufskolleg	berufsbildend	Berufskolleg Südstadt	Köln	50.9178307084999986	6.9556632579839297	
205	Ehrenfeld	Ehrenfeld	Weinsbergstr. 72	50823	Berufskolleg	berufsbildend	Berufskolleg Ehrenfeld	Köln	50.9410488470279006	6.92337830058774006	
206	Mülheim	Buchheim	Modemannstr. 25	51065	Berufskolleg	berufsbildend	Berufskolleg Erich-Gutenberg	Köln	50.9512314276285991	7.01977638210810984	
207	Kalk	Humboldt/Gremberg	Westerwaldstr. 92	51105	Berufskolleg	berufsbildend	Berufskolleg Georg-Simon-Ohm-Schule	Köln	50.9273248697896008	6.99608145955518967	
208	Innenstadt	Altstadt/Süd	Kartäuserwall 30	50676	Berufskolleg	berufsbildend	Berufskolleg Kartäuserwall	Köln	50.9254115403484988	6.95210811231932979	
209	Porz	Porz	Hauptstr. 426	51143	Berufskolleg	berufsbildend	Berufskolleg Haupstr.	Köln	50.8861830779292035	7.05661637835580979	
210	Rodenkirchen	Zollstock	Brüggener Str. 1	50969	Berufskolleg	berufsbildend	Berufskolleg Alfred-Müller-Armack	Köln	50.9049633095970009	6.93808938815080989	
211	Mülheim	Mülheim	Düsseldorfer Str. 13	51063	Gymnasium	allgemeinbildend	Rhein-Gymnasium	Köln	50.9692774382064968	7.00205746313791	
212	Kalk	Vingst	Heßhofstr. 45	51107	Grundschule	allgemeinbildend	Heinzelmännchen-Schule	Köln	50.9308389898363032	7.02408694933250999	
213	Mülheim	Buchheim	Arnsberger Str. 11	51065	Gymnasium	allgemeinbildend	Privatgymnasium Dialog	Köln	50.954125467647799	7.01470115099492997	
214	Mülheim	Dellbrück	Thurner Str. 23	51069	Grundschule	allgemeinbildend	Thurner Str.	Köln	50.9753264532992034	7.07724791159015965	
215	Lindenthal	Lindenthal	Lindenburger Allee 38	50931	Förderschule	allgemeinbildend	Johann-Christoph-Winters	Köln	50.9272451180206005	6.91610449974210972	
216	Mülheim	Buchheim	Alte Wipperfürther Str. 49	51065	Grundschule	allgemeinbildend	Sankt-Mauritius-Schule	Köln	50.9561841668245989	7.01584192096594972	
217	Lindenthal	Braunsfeld	Geilenkircher Str. 52	50933	Grundschule	allgemeinbildend	Geilenkircher Str.	Köln	50.941734702070697	6.89685971534879005	
218	Rodenkirchen	Sürth	Sürther Hauptstr. 149	50999	Grundschule	allgemeinbildend	Brüder-Grimm-Schule	Köln	50.8661544726969979	7.01267421757170961	
219	Porz	Gremberghoven	Breitenbachstr. 2	51149	Grundschule	allgemeinbildend	Friedrich-List-Schule	Köln	50.9016475694735036	7.05607679084543982	
220	Innenstadt	Neustadt/Nord	Gladbacher Wall 5	50670	Gesamtschule	allgemeinbildend	Francesco-Petrarca	Köln	50.9530232613946978	6.94838165672445029	
221	Innenstadt	Neustadt/Süd	Lochnerstr. 13	50674	Grundschule	allgemeinbildend	Stephan-Lochner-Schule	Köln	50.9300173758951971	6.9355186141871803	
222	Nippes	Nippes	Blücherstr. 15	50733	Gymnasium	allgemeinbildend	Leonardo-da-Vinci-Gymnasium	Köln	50.966660222982803	6.95582674862265993	
223	Ehrenfeld	Neuehrenfeld	Ottostr. 85	50674	Grundschule	allgemeinbildend	Lauder-Morijah-Schule	Köln	50.9566575993291977	6.92629037121319957	
224	Rodenkirchen	Bayenthal	Cäsarstr. 21	50968	Grundschule	allgemeinbildend	Maria-Sybilla-Merian-Schule	Köln	50.9077213894946965	6.96687615099154023	
225	Lindenthal	Braunsfeld	Stolberger Str. 311	50933	Grundschule	allgemeinbildend	BilinGO-Bilinguale Grundschule 	Köln	50.9417918390166022	6.89343055543803018	
226	Ehrenfeld	Vogelsang	Wasseramselweg 11	50829	Grundschule	allgemeinbildend	Aktive Schule Köln	Köln	50.9505678813711995	6.87784963379924985	
227	Lindenthal	Widdersdorf	Neue Sandkaul 29	50859	Grundschule	allgemeinbildend	Internationale Friedensschule	Köln	50.962706362161903	6.83899412185604039	
228	Rodenkirchen	Zollstock	Bernkasteler Str. 9	50969	Grundschule	allgemeinbildend	Sankt-Nikolaus-Schule	Köln	50.9077489821529028	6.93933444046191017	
229	Lindenthal	Lindenthal	Clarenbachstr. 5	50931	Grundschule	allgemeinbildend	Kölner Domsingschule	Köln	50.9357188337743025	6.91568765096520988	
230	Rodenkirchen	Hahnwald	An der Wachsfabrik 25	50996	Gesamtschule	allgemeinbildend	Offene Schule Köln	Köln	50.8692439554805986	6.99918684783600042	
231	Ehrenfeld	Vogelsang	Wasseramselweg 11	50829	Hauptschule	allgemeinbildend	Aktive Schule Köln	Köln	50.9510824645130995	6.8782740567909002	
232	Chorweiler	Blumenberg	Ernstbergstr. 2	50765	Grundschule	allgemeinbildend	Ernstbergstr.	Köln	51.0395678232638019	6.88224764800926003	
233	Chorweiler	Chorweiler	Merianstr. 7	50765	Grundschule	allgemeinbildend	Merianstr.	Köln	51.0268526036192966	6.89884514318494979	
234	Mülheim	Höhenhaus	Am Rosenmaar 3	51061	Grundschule	allgemeinbildend	Rosenmaarschule	Köln	50.9934677987548	7.03736137924969007	
235	Mülheim	Mülheim	Genovevastr. 72	51063	2. Bildungsweg	allgemeinbildend	Tages-u. Abendrealschule (TAS)	Köln	50.965059080369798	7.00780342573064008	
236	Lindenthal	Widdersdorf	Neue Sandkaul 29	50859	Gymnasium	allgemeinbildend	Internationale Friedensschule	Köln	50.9630276317732012	6.83862244978268041	
237	Innenstadt	Neustadt/Nord	Bernhard-Letterhaus-Str. 17	50670	Grundschule	allgemeinbildend	Nikolaus-Groß-Schule	Köln	50.9556276743689978	6.95188918946572976	
238	Ehrenfeld	Ossendorf	Am Pistorhof 11	50827	Grundschule	allgemeinbildend	Montessori-Grundschule	Köln	50.9649690007804992	6.90938849292107982	
239	Porz	Wahn	Nachtigallenstr. 19	51147	Gymnasium	allgemeinbildend	Maximilian-Kolbe-Gymnasium	Köln	50.8635758621318033	7.09002577933755962	
240	Porz	Zündorf	Heerstr. 7	51143	Hauptschule	allgemeinbildend	Johann-Amos-Comenius-Schule	Köln	50.8671066813354003	7.05514766938931981	
241	Innenstadt	Altstadt/Süd	Zwirnerstr. 15	50678	Grundschule	allgemeinbildend	Zwirnerstr.	Köln	50.9249693366487008	6.96220327452768029	
242	Innenstadt	Altstadt/Süd	Severinstr. 241	50676	Gymnasium	allgemeinbildend	Friedrich-Wilhelm-Gymnasium	Köln	50.9305933806279967	6.95611737485542037	
243	Innenstadt	Deutz	Alter Mühlenweg 2	51065	Förderschule	allgemeinbildend	Alter Mühlenweg	Köln	50.9273247892799006	6.98046087072192023	
244	Lindenthal	Widdersdorf	Neue Sandkaul 23	50859	Grundschule	allgemeinbildend	Olympia-Schule	Köln	50.9643571892505989	6.83728655051114043	
245	Ehrenfeld	Neuehrenfeld	Overbeckstr. 71	50823	Grundschule	allgemeinbildend	Overbeckstr.	Köln	50.955628739627798	6.92770979560699018	
246	Nippes	Niehl	Castroper Str. 7	50735	Gymnasium	allgemeinbildend	Erich-Kästner-Gymnasium	Köln	50.9733279330987017	6.96410059976185014	
247	Porz	Zündorf	Heerstr. 7	51143	Realschule	allgemeinbildend	Wilhelm-Busch-Realschule	Köln	50.8671049624567004	7.05537747546954019	
248	Porz	Porz	Humboldtstr. 81	51145	Grundschule	allgemeinbildend	Don-Bosco-Schule	Köln	50.8874727085146006	7.07019401456505037	
249	Ehrenfeld	Bickendorf	Rochusstr. 80	50827	Förderschule	allgemeinbildend	Lindweiler Hof	Köln	50.960648312896403	6.9031414541813696	
250	Nippes	Longerich	Paul-Humburg-Str. 13	50737	Gesamtschule	allgemeinbildend	Gesamtschule Nippes	Köln	50.9933329720285968	6.92104649971097974	
251	Mülheim	Buchheim	Arnsberger Str. 11	51065	Realschule	allgemeinbildend	Privatrealschule Dialog	Köln	50.9540654671303983	7.0148125903014904	
252	Lindenthal	Sülz	Mommsenstr. 5	50935	Grundschule	allgemeinbildend	Mommsenstr.	Köln	50.9177880556821023	6.9132732544730997	
253	Ehrenfeld	Vogelsang	Vogelsanger Str. 453	50829	Grundschule	allgemeinbildend	Vogelsanger Str.	Köln	50.9555143363186005	6.8802154503628401	
254	Ehrenfeld	Vogelsang	Vogelsanger Str. 453	50829	Grundschule	allgemeinbildend	Kardinal-Frings-Schule	Köln	50.9550080743146978	6.88033602379647036	
255	Kalk	Neubrück	Andreas-Hermes-Str. 2	51109	Grundschule	allgemeinbildend	Andreas-Hermes Str.	Köln	50.9378215940673016	7.06140382309827963	
256	Mülheim	Mülheim	Rendsburger Platz 1	51065	Hauptschule	allgemeinbildend	Rendsburger Platz	Köln	50.9562429077008971	7.00261554069375958	
257	Rodenkirchen	Rodenkirchen	Mainstr. 75	50996	Grundschule	allgemeinbildend	Ernst-Moritz-Arndt-Schule	Köln	50.8836229004027985	7.00292302528521038	
258	Mülheim	Mülheim	Horststr. 1	51063	Grundschule	allgemeinbildend	Horststr.	Köln	50.9579994853908005	6.99848745910527015	
259	Kalk	Höhenberg	Weimarer Str. 28	51103	Grundschule	allgemeinbildend	Weimarer Str.	Köln	50.9450920489742032	7.02172058959945034	
260	Nippes	Riehl	Garthestr. 20	50735	Grundschule	allgemeinbildend	Garthestr.	Köln	50.9655474267413027	6.97549536395417036	
261	Mülheim	Dünnwald	Leuchterstr. 25	51069	Grundschule	allgemeinbildend	Leuchterstr.	Köln	50.9972124292682025	7.03833595381771993	
262	Ehrenfeld	Neuehrenfeld	Baadenberger Str. 111	50825	Grundschule	allgemeinbildend	Baadenbergerstr.	Köln	50.9648040570482976	6.91872403511487999	
263	Mülheim	Höhenhaus	Im Weidenbruch 214	51061	Gesamtschule	allgemeinbildend	Willy-Brandt-Gesamtschule	Köln	50.9839343486154988	7.04405999997176036	
264	Mülheim	Holweide	Neufelder Str. 32	51067	Förderschule	allgemeinbildend	Hilde-Domin-Schule	Köln	50.9662568998684975	7.05574675577720978	
265	Porz	Porz	Planckstr. 14	51145	Realschule	allgemeinbildend	Max-Planck-Realschule	Köln	50.8872500883275976	7.06854135506698	
266	Lindenthal	Müngersdorf	Belvederestr. 149	50933	Förderschule	allgemeinbildend	Belvederestr. Hauptschule	Köln	50.9474388931998021	6.87025755941570004	
267	Porz	Wahnheide	Sportplatzstr. 82	51147	Förderschule	allgemeinbildend	Pestalozzi-Schule	Köln	50.8650242995538022	7.10208303744571978	
268	Ehrenfeld	Bickendorf	Erlenweg 16	50827	Grundschule	allgemeinbildend	Erlenweg	Köln	50.9651881627006986	6.89365715751822972	
269	Kalk	Rath/Heumar	Volberger Weg 17	51107	Grundschule	allgemeinbildend	Volberger Weg	Köln	50.9255896412275035	7.09022253518659973	
270	Porz	Zündorf	Heerstr. 7	51143	Gymnasium	allgemeinbildend	Lessing-Gymnasium	Köln	50.8671065848501982	7.05494964221056975	
271	Mülheim	Mülheim	Genovevastr. 58	51063	Gymnasium	allgemeinbildend	Genoveva-Gymnasium	Köln	50.964323045913801	7.00791674565725042	
272	Mülheim	Mülheim	Graf-Adolf-Str. 59	51065	Gymnasium	allgemeinbildend	Hölderlin-Gymnasium	Köln	50.9572566299913987	7.00631302150697977	
273	Ehrenfeld	Ehrenfeld	Leyendeckerstr. 20	50825	Förderschule	allgemeinbildend	Wilhelm-Leyendecker-Schule	Köln	50.9553661063508017	6.91187341282777989	
274	Lindenthal	Lindenthal	Freiligrathstr. 60	50935	Grundschule	allgemeinbildend	Freiligrathstr.	Köln	50.9225605091514026	6.90244752922929994	
275	Nippes	Nippes	Neusser Str. 421	50733	Realschule	allgemeinbildend	Peter-Ustinov-Schule	Köln	50.9715929576846989	6.95107726417384963	
276	Kalk	Kalk	Kantstr. 3	51103	Gymnasium	allgemeinbildend	Kaiserin-Theophanu-Schule	Köln	50.9373082207232031	7.00779112863872022	
277	Porz	Urbach	Kupfergasse 5	51145	Grundschule	allgemeinbildend	Kupfergasse	Köln	50.8794865809807035	7.08141859946536023	
278	Kalk	Kalk	Martin-Köllen-Str. 1	51103	Förderschule	allgemeinbildend	Martin-Köllen-Str.	Köln	50.9375622629196982	7.01203866412020993	
279	Porz	Eil	Schulstr. 23	51145	Grundschule	allgemeinbildend	Unter Birken	Köln	50.8931491932582034	7.07936520839904038	
280	Mülheim	Dünnwald	Berliner Str. 975	51069	Förderschule	allgemeinbildend	Berliner Str.	Köln	51.001972458849302	7.0409465374194502	
281	Lindenthal	Lindenthal	Biggestr. 2	50931	Gymnasium	allgemeinbildend	Apostel-Gymnasium	Köln	50.9324345046182003	6.91567589742251965	
282	Nippes	Nippes	Steinbergerstr. 40	50733	Grundschule	allgemeinbildend	Steinbergerstr.	Köln	50.9616519969411996	6.95001656437754001	
283	Chorweiler	Chorweiler	Merianstr. 11	50765	Gesamtschule	allgemeinbildend	Heinrich-Böll-Schule	Köln	51.0262328833928009	6.9000716797506696	
284	Nippes	Bilderstöckchen	Alzeyer Str. 12	50739	Grundschule	allgemeinbildend	Lukas-Schule	Köln	50.9707497560514966	6.92844567600498973	
285	Ehrenfeld	Neuehrenfeld	Dechenstr. 1	50825	Realschule	allgemeinbildend	Eichendorff-Schule	Köln	50.9586469658035028	6.91624067124580044	
286	Kalk	Höhenberg	Nürnberger Str. 10	51103	Hauptschule	allgemeinbildend	Nürnberger Str.	Köln	50.9389051708526992	7.02365400695924968	
287	Ehrenfeld	Bickendorf	Rochusstr. 145	50827	Gymnasium	allgemeinbildend	Montessori-Gymnasium	Köln	50.9634465351673995	6.90336769360778035	
288	Kalk	Neubrück	Helene-Weber-Platz 3	51109	Hauptschule	allgemeinbildend	Kurt-Tucholsky-Schule	Köln	50.9349907298693978	7.05837745578539977	
289	Mülheim	Mülheim	Mülheimer Freiheit 99	51063	Grundschule	allgemeinbildend	Mülheimer Freiheit	Köln	50.9667886153238996	6.99989313804873969	
290	Chorweiler	Heimersdorf	Lebensbaumweg 51	50767	Grundschule	allgemeinbildend	Lebensbaumweg	Köln	51.0097848494195034	6.90231138657425003	
291	Chorweiler	Seeberg	Karl-Marx-Allee 43	50769	Realschule	allgemeinbildend	Henry-Ford-Realschule	Köln	51.0203202686966009	6.90967668800490031	
292	Rodenkirchen	Weiß	Zum Hedelsberg 13	50999	Grundschule	allgemeinbildend	Albert-Schweitzer-Schule 	Köln	50.8743813850351003	7.02635957318515025	
293	Kalk	Neubrück	Europaring 51	51109	Grundschule	allgemeinbildend	Europaring	Köln	50.9325999379191003	7.05682749886090033	
294	Innenstadt	Deutz	Schaurtestr. 1	50679	Gymnasium	allgemeinbildend	Schauertestr.	Köln	50.9337709791192026	6.97631568411850989	
295	Ehrenfeld	Vogelsang	Kolkrabenweg 65	50829	Realschule	allgemeinbildend	Bertha-von-Suttner-Schule	Köln	50.9629129812775972	6.87752129739286033	
296	Lindenthal	Sülz	Zülpicher Str. 194	50937	Förderschule	allgemeinbildend	Sülzgürtel	Köln	50.924517287245699	6.92770913320924997	
297	Innenstadt	Altstadt/Nord	Niederichstr. 1	50668	Realschule	allgemeinbildend	Realschule am Rhein	Köln	50.9483751680065993	6.96282913102471035	
298	Innenstadt	Altstadt/Süd	Großer Griechenmarkt 76	50676	Hauptschule	allgemeinbildend	Gr. Griechenmarkt	Köln	50.9323042320636006	6.95067090249620012	
299	Innenstadt	Altstadt/Süd	Marienplatz 2	50676	Förderschule	allgemeinbildend	Paul-Maar-Schule	Köln	50.9338590819553971	6.9569548389695397	
300	Innenstadt	Altstadt/Süd	Frankstr. 26	50676	Gesamtschule	allgemeinbildend	Gesamtschule Innenstadt	Köln	50.9323559269712973	6.94435976804844035	
301	Mülheim	Mülheim	Ferdinandstr. 43	51063	Gesamtschule	allgemeinbildend	Gesamtschule Mülheim	Köln	50.9475472967392022	6.98960460413105	
\.


--
-- Name: tblschulen_fldindex_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('tblschulen_fldindex_seq', 301, true);


--
-- Data for Name: tblschultyp; Type: TABLE DATA; Schema: public; Owner: root
--

COPY tblschultyp (fldindex, fldbez) FROM stdin;
1	allgemeinbildend
2	berufsbildend
\.


--
-- Name: tblschultyp_fldindex_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('tblschultyp_fldindex_seq', 2, true);


--
-- Data for Name: tblsel; Type: TABLE DATA; Schema: public; Owner: root
--

COPY tblsel (fldindex, fldbez) FROM stdin;
\.


--
-- Data for Name: tblspielgeraete; Type: TABLE DATA; Schema: public; Owner: root
--

COPY tblspielgeraete (fldindex, fldbez, fldid_spielplatz) FROM stdin;
\.


--
-- Data for Name: tblstadtbezirk; Type: TABLE DATA; Schema: public; Owner: root
--

COPY tblstadtbezirk (fldindex, fldbez) FROM stdin;
1	Lindenthal
2	Kalk
3	Innenstadt
4	Porz
5	Mülheim
6	Rodenkirchen
7	Chorweiler
8	Nippes
9	Ehrenfeld
\.


--
-- Name: tblstadtbezirk_fldindex_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('tblstadtbezirk_fldindex_seq', 9, true);


--
-- Data for Name: tblstadtteil; Type: TABLE DATA; Schema: public; Owner: root
--

COPY tblstadtteil (fldindex, fldbez) FROM stdin;
1	Altstadt/Nord
2	Niehl
3	Gremberghoven
4	Holweide
5	Merheim
6	Widdersdorf
7	Müngersdorf
8	Bayenthal
9	Zollstock
10	Longerich
11	Bocklemünd/Mengenich
12	Ostheim
13	Neustadt/Süd
14	Brück
15	Weiß
16	Klettenberg
17	Neuehrenfeld
18	Porz
19	Braunsfeld
20	Rath/Heumar
21	Bickendorf
22	Heimersdorf
23	Worringen
24	Zündorf
25	Urbach
26	Weiden
27	Ossendorf
28	Westhoven
29	Hahnwald
30	Esch/Auweiler
31	Lindweiler
32	Sürth
33	Dünnwald
34	Langel
35	Finkenberg
36	Wahnheide
37	Pesch
38	Buchforst
39	Buchheim
40	Vingst
41	Stammheim
42	Raderberg
43	Merkenich
44	Neustadt/Nord
45	Marienburg
46	Mauenheim
47	Rodenkirchen
48	Vogelsang
49	Nippes
50	Grengel
51	Neubrück
52	Kalk
53	Humboldt/Gremberg
54	Ensen
55	Flittard
56	Chorweiler
57	Poll
58	Eil
59	Bilderstöckchen
60	Höhenberg
61	Roggendorf/Thenhoven
62	Godorf
63	Meschenich
64	Dellbrück
65	Lövenich
66	Ehrenfeld
67	Wahn
68	Altstadt/Süd
69	Weidenpesch
70	Immendorf
71	Lindenthal
72	Volkhoven/Weiler
73	Höhenhaus
74	Junkersdorf
75	Deutz
76	Rondorf
77	Blumenberg
78	Sülz
79	Seeberg
80	Mülheim
81	Riehl
82	Raderthal
\.


--
-- Name: tblstadtteil_fldindex_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('tblstadtteil_fldindex_seq', 82, true);


--
-- Data for Name: tbltermine_grp; Type: TABLE DATA; Schema: public; Owner: root
--

COPY tbltermine_grp (fldindex, fldbez, fldfarbe) FROM stdin;
\.


--
-- Data for Name: tbltermine_liste; Type: TABLE DATA; Schema: public; Owner: root
--

COPY tbltermine_liste (fldindex, fldbez, fldkurz, fldvondatum, fldvonuhrzeit, fldbisdatum, fldbisuhrzeit, fldid_terminegrp, fldfarbe, fldid_terminserie, fldtermintyp, fldlink) FROM stdin;
\.


--
-- Data for Name: tbltermine_serie; Type: TABLE DATA; Schema: public; Owner: root
--

COPY tbltermine_serie (fldindex, fldbez, fldfarbe, fldimagepfad, fldsel) FROM stdin;
\.


--
-- Data for Name: tbltranslate; Type: TABLE DATA; Schema: public; Owner: root
--

COPY tbltranslate (fldindex, fldlang, fldbez, fldname) FROM stdin;
\.


--
-- Data for Name: tblversion; Type: TABLE DATA; Schema: public; Owner: root
--

COPY tblversion (fldindex, fldbez, fldkurz, flddatum) FROM stdin;
1	1.003	1003	2014-09-05
\.


--
-- Name: tblversion_fldindex_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('tblversion_fldindex_seq', 1, true);


--
-- Name: tblfilter_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY tblfilter
    ADD CONSTRAINT tblfilter_pkey PRIMARY KEY (fldindex);


--
-- Name: tblfunc_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY tblfunc
    ADD CONSTRAINT tblfunc_pkey PRIMARY KEY (fldindex);


--
-- Name: tblktobanken_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY tblktobanken
    ADD CONSTRAINT tblktobanken_pkey PRIMARY KEY (fldindex);


--
-- Name: tblktotyp_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY tblktotyp
    ADD CONSTRAINT tblktotyp_pkey PRIMARY KEY (fldindex);


--
-- Name: tblmarkers_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY tblmarkers
    ADD CONSTRAINT tblmarkers_pkey PRIMARY KEY (fldindex);


--
-- Name: tblmenu_liste_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY tblmenu_liste
    ADD CONSTRAINT tblmenu_liste_pkey PRIMARY KEY (fldindex);


--
-- Name: tblmenu_modul_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY tblmenu_modul
    ADD CONSTRAINT tblmenu_modul_pkey PRIMARY KEY (fldindex);


--
-- Name: tblmenu_projekt_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY tblmenu_projekt
    ADD CONSTRAINT tblmenu_projekt_pkey PRIMARY KEY (fldindex);


--
-- Name: tblmenu_typ_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY tblmenu_typ
    ADD CONSTRAINT tblmenu_typ_pkey PRIMARY KEY (fldindex);


--
-- Name: tblpublictyp_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY tblpublictyp
    ADD CONSTRAINT tblpublictyp_pkey PRIMARY KEY (fldindex);


--
-- Name: tblschulart_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY tblschulart
    ADD CONSTRAINT tblschulart_pkey PRIMARY KEY (fldindex);


--
-- Name: tblschulbezirk_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY tblstadtbezirk
    ADD CONSTRAINT tblschulbezirk_pkey PRIMARY KEY (fldindex);


--
-- Name: tblschulen_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY tblschulen
    ADD CONSTRAINT tblschulen_pkey PRIMARY KEY (fldindex);


--
-- Name: tblschultyp_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY tblschultyp
    ADD CONSTRAINT tblschultyp_pkey PRIMARY KEY (fldindex);


--
-- Name: tblsel_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY tblsel
    ADD CONSTRAINT tblsel_pkey PRIMARY KEY (fldindex);


--
-- Name: tblspielgeraete_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY tblspielgeraete
    ADD CONSTRAINT tblspielgeraete_pkey PRIMARY KEY (fldindex);


--
-- Name: tblstadtteil_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY tblstadtteil
    ADD CONSTRAINT tblstadtteil_pkey PRIMARY KEY (fldindex);


--
-- Name: tbltermine_grp_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY tbltermine_grp
    ADD CONSTRAINT tbltermine_grp_pkey PRIMARY KEY (fldindex);


--
-- Name: tbltermine_liste_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY tbltermine_liste
    ADD CONSTRAINT tbltermine_liste_pkey PRIMARY KEY (fldindex);


--
-- Name: tbltermine_serie_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY tbltermine_serie
    ADD CONSTRAINT tbltermine_serie_pkey PRIMARY KEY (fldindex);


--
-- Name: tbltranslate_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY tbltranslate
    ADD CONSTRAINT tbltranslate_pkey PRIMARY KEY (fldindex);


--
-- Name: tblversion_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY tblversion
    ADD CONSTRAINT tblversion_pkey PRIMARY KEY (fldindex);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

