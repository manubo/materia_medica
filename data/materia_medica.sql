--
-- PostgreSQL database dump
--

-- Dumped from database version 11.6 (Debian 11.6-1.pgdg90+1)
-- Dumped by pg_dump version 11.6 (Debian 11.6-1.pgdg90+1)

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

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: materia_medica
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO materia_medica;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: materia_medica
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    sorting integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.categories OWNER TO materia_medica;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: materia_medica
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO materia_medica;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: materia_medica
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: entries; Type: TABLE; Schema: public; Owner: materia_medica
--

CREATE TABLE public.entries (
    id bigint NOT NULL,
    remedy_id bigint NOT NULL,
    category_id bigint NOT NULL,
    description text,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.entries OWNER TO materia_medica;

--
-- Name: entries_id_seq; Type: SEQUENCE; Schema: public; Owner: materia_medica
--

CREATE SEQUENCE public.entries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.entries_id_seq OWNER TO materia_medica;

--
-- Name: entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: materia_medica
--

ALTER SEQUENCE public.entries_id_seq OWNED BY public.entries.id;


--
-- Name: remedies; Type: TABLE; Schema: public; Owner: materia_medica
--

CREATE TABLE public.remedies (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    acronym character varying(255),
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.remedies OWNER TO materia_medica;

--
-- Name: remedies_id_seq; Type: SEQUENCE; Schema: public; Owner: materia_medica
--

CREATE SEQUENCE public.remedies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.remedies_id_seq OWNER TO materia_medica;

--
-- Name: remedies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: materia_medica
--

ALTER SEQUENCE public.remedies_id_seq OWNED BY public.remedies.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: materia_medica
--

CREATE TABLE public.schema_migrations (
    version bigint NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.schema_migrations OWNER TO materia_medica;

--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: materia_medica
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: entries id; Type: DEFAULT; Schema: public; Owner: materia_medica
--

ALTER TABLE ONLY public.entries ALTER COLUMN id SET DEFAULT nextval('public.entries_id_seq'::regclass);


--
-- Name: remedies id; Type: DEFAULT; Schema: public; Owner: materia_medica
--

ALTER TABLE ONLY public.remedies ALTER COLUMN id SET DEFAULT nextval('public.remedies_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: materia_medica
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-03-09 09:59:54.472792	2020-03-09 09:59:54.472792
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: materia_medica
--

COPY public.categories (id, name, created_at, updated_at, sorting) FROM stdin;
21	Psora	2020-02-26 19:03:09	2020-02-26 19:03:09	23
23	Syphilis	2020-02-26 19:03:09	2020-02-26 19:03:09	25
22	Sycosis	2020-02-26 19:03:09	2020-02-26 19:03:09	24
16	General	2020-02-26 19:03:09	2020-02-26 19:03:09	18
17	Mind	2020-02-26 19:03:09	2020-02-26 19:03:09	19
18	Body	2020-02-26 19:03:09	2020-02-26 19:03:09	20
19	Children	2020-02-26 19:03:09	2020-02-26 19:03:09	21
10	Rule-Out	2020-02-26 19:03:09	2020-02-26 19:03:09	15
20	DD	2020-02-26 19:03:09	2020-02-26 19:03:09	22
12	Entry point	2020-02-26 19:03:09	2020-02-26 19:03:09	14
11	Key points	2020-02-26 19:03:09	2020-02-26 19:03:09	13
13	Pathologies	2020-02-26 19:03:09	2020-02-26 19:03:09	16
14	Similar Remedies	2020-02-26 19:03:09	2020-02-26 19:03:09	17
7	Sensitivity Body	2020-02-26 19:03:09	2020-02-26 19:03:09	10
4	Thermals	2020-02-26 19:03:09	2020-02-26 19:03:09	1
5	Thirst	2020-02-26 19:03:09	2020-02-26 19:03:09	2
6	Side	2020-02-26 19:03:09	2020-02-26 19:03:09	3
2	Basic Need	2020-02-26 19:03:09	2020-02-26 19:03:09	12
9	Food	2020-02-26 19:03:09	2020-02-26 19:03:09	4
26	Sensitivity Mind	2020-03-01 20:37:15	2020-03-01 20:37:15	11
25	Drinks	2020-03-01 20:36:43	2020-03-01 20:36:43	5
3	Speed	2020-02-26 19:03:09	2020-02-26 19:03:09	6
1	Intro/Extro	2020-02-26 19:03:09	2020-02-26 19:03:09	7
8	Conscientious / Diligent	2020-02-26 19:03:09	2020-02-26 19:03:09	8
27	Group	2020-03-01 20:40:36	2020-03-01 20:40:36	9
\.


--
-- Data for Name: entries; Type: TABLE DATA; Schema: public; Owner: materia_medica
--

COPY public.entries (id, remedy_id, category_id, description, created_at, updated_at) FROM stdin;
2	1	2	<p>Love &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:15
3	1	3	<p>Slow (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:15
5	1	5	<p>Thirsty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:15
6	1	6	<p>Left (Ambr + MM-GL)\n<br />Syk -&gt; right (Sim - 9.12.13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:15
7	1	7	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:15
8	1	8	<p>Non-diligent (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:15
10	1	10	<p>- If there is no creativity (PHL)\n<br />- If the person is not vivacious (PHL)\n<br />- If there is no “Pseudoism" (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:15
11	1	12	<p>- Talkative, gives advice, many friends, hot palms (IE-VJ)\n<br />- God (IE-VJ)\n<br />- Non diligent (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
13	1	16	<p>Chronic sulphur in acute often needs: Acon, Aloe, Calc, Nux-v, Puls.\n<br />- Slow remedy (Viji)\n<br /> \n<br />- Sulph is often the genetic similimum for Arnica-state-patients (also: Calc, Nux-v after antibiotics; Ferr after Chinin, Ign, Cham) (see MM-GL Arn)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
15	1	18	<p>- Curly hair (Ambr)\n<br />- Hot and red hands + feets (MM-VJ+AMSH) (Phos., Lyc., Sep., Bry., Lach.)\n<br />- warm hands (cann-s) (PV-S-10/14)\n<br />- Redness of lips (Ambr)\n<br />- Red discoloration of face (IE-VJ)\n<br />- analgesia (PV-S-10/14)\n<br />- purple discoloration of inflamed parts (PV-S-10/14)\n<br />- vision distorted: objects seems distant (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
16	1	19	<p>- Happy child (Ambr)\n<br />- Langsame Entwicklung (Sim-9.12.13)\n<br />- Wiederkehrende Infektionen (Sim-9.12.13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
17	1	20	<p>Luxurious things (MM-GL, fl-ac):\n<br />  -&gt; Buys new because he lost interest = fl-ac\n<br />  -&gt; To collect things = sulph\n<br />  -&gt; For speed = tub\n<br />  -&gt; For showing how great he is = lyc</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
18	1	21	<p>- Fat (Ambr)\n<br />- Ragged (GL-Z)\n<br />- Philosopher (GL-Z)\n<br />- Theorising (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
19	1	22	<p>- Boaster (GL-Z)\n<br />- Likes to change decor, move sofa...(IE-VJ)\n<br />- Theorizing about god (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
20	1	23	<p>- Bony, thin (Ambr)\n<br />- Theorizing about destruction (MM-GL)\n<br />- Cranky (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
22	2	1	<p>2nd Extro &amp; intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
23	2	2	<p>Love &amp; Support (Ambr-S-10/13, p29)\n<br />Esteem in syc (I-S-01/15, Ambr p 122)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
24	2	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:16
25	2	4	<p>Chilly (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
26	2	5	<p>NOT thirsty (IE-VJ, p 87)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
27	2	6	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:16
28	2	7	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:16
29	2	8	<p>Non-diligent (IE-V, p54, 95)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
30	2	9	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:16
31	2	10	<p>- If there is no desire for physical exercise (PHL)\n<br />- IN ACUTE: if there is desire and interest in work and surroundings (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
32	2	11	<p>1. INDIFFERENCE (IE-VJ)\n<br />2. SARCASM (IE-VJ)\n<br />3. PHYSICAL EXCERCISE AMM (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
33	2	12	<p>- Consolation agg (IE-VJ)\n<br />- Negatively positive (IE-VJ)\n<br />- Becken sieht breit aus (IE-VJ)\n<br />- Indifference to loved ones and family, but anxiety for children (IE-VJ)\n<br />- Anxiety for health (IE-VJ)\n<br />- Patient comes to vivacious to dull (IE-VJ)\n<br />- Symptoms after wrong homeopatic drugs, bad effects of strong vibration or energy (electric shock, sonography, x-ray, MRI...) (IE-VJ)\n<br />- Sep does not like comparison between siblings (I-S-01/15, Ambr p 121)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
34	2	13	<p>BOGER (BO-SK):\n<br />- Venous circulation (GI, Pfortadersystem, weibliche-Beckenorgane)\n<br />- Nerves\n<br />- Skin\n<br />- tickening of of the lung tissue (like tuberculosis) after kidney transplantation (NI-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
35	2	14	<p>BOGER (BO-SK): \n<br />Ergänzend: Nat-m, Phos\n<br />Verwandt: Caust, Gels, Lil-t, Nat-m, Puls\n<br /> \n<br />-&gt; think also of nat-p (cle)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
36	2	16	<p>Sepia officinalis\n<br />Mollusca (Weichtieren), cuttle fish (Tintenfisch) -&gt; sepia octopoda\n<br /> \n<br />REMEDY: \n<br />The dryed ink of the cuttle fish\n<br />The ink contians: calc, mag-c, nat-s, NaCl, Melanin (Internet)\n<br /> \n<br />MIASMA: \n<br />syc-syp remedy (I-S-01/15, Ambr)</p>\n\n<p> \n<br />THINK ABOUT SEP IF:\n<br />-&gt; Symptoms after wrong homeopatic drugs, bad effects of strong vibration or energy (electric shock, sonography, x-ray, MRI...) (IE-VJ)\n<br /> \n<br />REACTION TO HURT:\n<br />-&gt; ACCEPT HURT, DO NOT REACT, RESIGN TO THE FATE (all Magnesia, Sep) (Ambr-S-10/13)\n<br />-&gt; A/F grief, death of near ones. (MM-GL)\n<br />Because of this grief they resign, become indifferent and apathetic but it has to express somewhere, i.e. on the skin (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
57	3	18	<p>Likes warm food (IE-VJ)\n<br /> \n<br />&lt; 16.00\n<br />- Eyes: stringy discharge (PV-S-10/14)\n<br />- analgesia, parts affected (PV-S-10/14)\n<br />- abdomen: sensitive to touch (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
327	19	8	<p>Non-diligent (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
328	19	9	<p>Desire dry food (IE-JV)\n<br />Desire roasted food (Calc-p) (GMM-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
329	19	10	<p>- If he is not a fighter (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
1762	15	21	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:16
38	2	18	<p>- PHYSICAL EXCERCISE AMM (IE-VJ)\n<br />- Likes sport, is good in it (I-Ambr-2015)\n<br /> \n<br />- Stasis inside (MM-GL)\n<br />- Wavelike sensation (MM-GL)\n<br />- hands: discoloration purple (PV-S-10/14)\n<br />- eruptions or rash purple on face - hands: discoloration purple (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
39	2	19	<p>- Have their own way of expression of love, they will not go and hug mother, but touch in a more subtle way (I-S-01/15, Ambr p 122)\n<br />- Generally they are LOVING and AFFECTIONATE children, can look Phos alike (I-S-01/15, Ambr p 122)\n<br />- They can be extroverted like Phos (but Phos has sharper features and more vibrant energy) (I-S-01/15, Ambr p 122)\n<br />- If LOVE and AFFECTION is injured Sep goes into syc mode and will close-up. Sep will not weep, will only weep inside (DD: Phos would weep) (I-S-01/15, Ambr p 122)\n<br />- Suppression of love will bring Sep to sycosis (I-Ambr-2015)\n<br />- Sep does not like comparison between siblings (I-S-01/15, Ambr p 121)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
40	2	20	<p>SEP % CARC: \n<br />Suppressed by dominating parents -&gt; Sep. complains about situation % adapts and moulds itself (MM-GL)</p>\n\n<p> \n<br /> \n<br />SEP % PHOS: \n<br />Beide brauchen Liebe (I-S-01/15, Ambr p 122)\n<br />In syp sind beide gleichgültig, apathisch...</p>\n\n<p>              SEP                    PHOS \n<br />Basic need:   BN love + support  /   BN love                                        (I-S-01/15, Ambr p 121)\n<br />Hurt Love:    Sep will close-up  /   Phos will weep                                 (I-S-01/15, Ambr p 121)\n<br />Psor:         extroverted        /   extro, sharper features, more vibrant energy   (I-S-01/15, Ambr p 121)</p>\n\n<p> \n<br /> \n<br />SEP % IGN\n<br />IGN: lot of esteem, esteem is related to position not comparision (for ex. siblings) (I-S-01/15, Ambr p 122)\n<br />SEP: &lt; comparision (I-S-01/15, Ambr p 122)\n<br /> \n<br />Emotional reaction DD:(Ambr 02/2016)\n<br />- Staph: supressed anger\n<br />- Mag: seems content\n<br />- Sep: resignation</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
41	2	22	<p>- Sarcastic  (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
42	2	23	<p>- Indifferent (Ambr)\n<br />- Apathetic (Ambr)\n<br />- Mürrisch (Ambr)\n<br />- Sad (Ambr)\n<br />- Misantrophy (Ambr)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
43	3	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
44	3	2	<p>Respect (GL)\n<br />image conscious (esteem) (PV-S-10/14)\n<br />esteem affected - feels devalued (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
45	3	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:16
46	3	4	<p>Hot (psor) (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
47	3	5	<p>NOT thirsty (IE-VJ, p 87; MM-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
48	3	6	<p>Right (IE-VJ)\n<br />Right -&gt; Left (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
49	3	7	<p>consolation agg. (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
50	3	8	<p>Conscientious, diligent (IE-VJ)/(PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
51	3	9	<p>Loves warm food (IE-VJ)/(PV-S-10/14)\n<br />desire for sweets (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
52	3	10	<p>- If intelligence and diligence are missing (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
53	3	11	<p>1. ANGRY, HAUGHTY, LOVES POWER, EMOTIONAL (IE-VJ)\n<br />2. CONCENCIOUS AND DILIGENT (IE-VJ)\n<br />3. HARD ON INFERIORS, SOFT ON SUPERIORS (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
54	3	12	<p>- Angry, haughty people that love power in their hands. Like to lead and boss over others (IE-VJ)\n<br />- Stiff and pretencious appearance (IE-VJ)\n<br />- Emotional. Can give away everything if flattered. If someone thanks they weep (IE-VJ)\n<br />- Concencious and diligent in psor, loose it in syc and syp (IE-VJ)\n<br />- Hard on inferior, soft on superior. If they meet a stronger person they become timid and mild (IE-VJ)\n<br />- Mild with strangers, outsiders and very rought with staff (IE-VJ)\n<br />- Money minded and miserly (geizig) (IE-VJ)\n<br />- Hot, thirstless, loves warm food (IE-VJ)\n<br />- Right side, or right -&gt; left (IE-VJ)\n<br /> \n<br />WHEN SHOULD YOU START THINKING OF Lycopodium?\n<br />o\tPeople who never smile\n<br />o\tPeople who look down upon others\n<br />o\tPeople who are very straight forward\n<br />o\tPeople who love power\n<br />o\tPeople who are always complaining and discontented.\n<br />o\tPeople who keep on criticising\n<br />o\tPeople who are contemptuous</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
55	3	16	<p>Lyc is coming from family of ferns. the reproduction is by spores, they are initially very soft, in the environment they become hard, get a hard cover: if they show weakness, everybody can take advantage. (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
116	6	16	<p>Complements: China (chilly) - Plat (hot) - Ip - Cicuta</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
59	3	20	<p>Lyc % Plat: more emotional   / \n<br /> \n<br />Luxurious things (MM-GL, fl-ac):\n<br />  -&gt; Buys new because he lost interest = fl-ac\n<br />  -&gt; To collect things = sulph\n<br />  -&gt; For speed = tub\n<br />  -&gt; For showing how great he is = lyc\n<br /> \n<br />MOULDING (PV-I-01/15):\n<br />Carc: changes in what parents want\n<br />Merc, lyc: to timid to rebel, but not happy with domination. As soon as married (-&gt; have support) they fight father/mother</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
60	3	21	<p>- Consciencious and diligent (IE-VJ)\n<br />- Timid (MM-GL)\n<br />- Fearful (MM-GL)\n<br />- Sincere (MM-GL)\n<br />- Anxious (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
61	3	22	<p>- Not consciencious and diligent (IE-VJ)\n<br />- More dictatorial (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
62	3	23	<p>- Not consciencious and diligent (IE-VJ, Ambr 01/2015))</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
63	4	1	<p>Not so extroverted, secondary extro (PV-S-05/12, p57)\n<br /> \n<br />Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
64	4	2	<p>Love (MM-GL)\n<br />support (PV-S-10/14)\n<br />"it is not a love remedy, it wants company out of insecurity (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
65	4	3	<p>Fast (psor &amp; syp) (MM-GL)\n<br />Slow (syk) (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
66	4	4	<p>Chilly (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
67	4	5	<p>Thirsty (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
68	4	6	<p>Left but also right sided (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
69	4	7	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:16
70	4	8	<p>Non-conscientious (MM-GL)\n<br />Non-diligent (PV-I-S-01/15, p32)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
71	4	9	<p>- Desire cold drinks (IE-VJ)\n<br />- Craving for ice cream (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
74	4	13	<p>PRAFULL VIJAYAKAR:\n<br />- Arterial system, blood vessels (MM-GL)\n<br />- Cartilage and vocal cords (MM-GL)\n<br />- Bones (MM-GL)\n<br />- Collapse (MM-GL)\n<br />- tumours (PV-S-10/14)\n<br />- sarkoma (PV-S-10/14)\n<br />- neurological effects (PV-S-10/14)\n<br />- spinal cord affinity (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
75	4	14	<p>Choc</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
76	4	16	<p>- Fast remedy (Viji)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
78	4	18	<p>- Redness of face (IE-VJ)\n<br />- Sharp features (IE-VJ). Sharp nose, long face, no roundnded features and long eyelashes (MM-GL)\n<br /> \n<br />- Desire for ice cold drinks (IE-VJ)\n<br />- Desire for ice cream (IE-VJ)\n<br /> \n<br />- Covers more the arterial system (MM-GL)\n<br />- Affinity on vocal cords causing paralysis or ulceration (MM-GL)\n<br />- Bad effects of anesthetics (MM-GL)\n<br /> \n<br />- ACTIVE BLEEDER (MM-GL), bright blood, arterial, profuse, gushing and continuous bleeding (PV-S-10/14)\n<br />- senses hyperacute (PV-S-10/14)\n<br />- hands: discoloration purple (PV-S-10/14)\n<br />- vision: images for long retained (Nachbilder) (PV-S-10/14)\n<br />- hearing false (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
79	4	19	<p>- Precocity in children (MM-GL)\n<br />A child has to behave like a child, a child, which is sitting very still, understanding too much, they should be naughty. Precocity is normally sycotic (MM-GL).</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
80	4	20	<p>SEP % PHOS: \n<br />Beide brauchen Liebe (I-S-01/15, Ambr p 122)\n<br />In syp sind beide gleichgültig, apathisch...</p>\n\n<p>              SEP                    PHOS \n<br />Basic need:   BN love + support  /   BN love                                        (I-S-01/15, Ambr p 120)\n<br />Hurt Love:    Sep will close-up  /   Phos will weep                                 (I-S-01/15, Ambr p 120)\n<br />Psor:         extroverted        /   extro, sharper features, more vibrant energy   (I-S-01/15, Ambr p 120)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
81	4	21	<p>- Gives love, takes love (Ambr)\n<br />- Loving, caring (MM-GL)\n<br />- Anticipation (MM-GL)\n<br />- Mild, affectionate (MM-GL)\n<br />- Yelding (MM-GL)\n<br />- Love for nature (MM-GL)\n<br />- Restlessness (MM-GL)\n<br /> \n<br />- Physically lean &amp; thin (MM-GL)\n<br />- Redness of lips (MM-GL)\n<br />- cheerful, loving, friendly and needs people (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
270	16	3	<p>Faster than Bar-c (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
271	16	4	<p>Hot (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
85	5	1	<p>Introverted (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
86	5	2	<p>Love &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
87	5	3	<p>Fast remedy. Sudden onset. (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
88	5	4	<p>Chilly (MM-GL, IE-VJ, p 60)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
89	5	5	<p>Thirsty (IE-VJ, p 60)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
90	5	6	<p>Right (IE-VJ) as well left (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
91	5	7	<p>Noise (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
92	5	8	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:16
93	5	9	<p>Spicy food (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
94	5	10	<p>- If there has no aversion to noise and being disturbed, interrupted (PHL)\n<br />- If intelligence is lacking (Ambr)\n<br />- If not zealous achiever (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
95	5	11	<p>1. ANGRY WHEN OBLIGED TO ANSWER (IE-VJ)\n<br />2. AVERSION TO NOISE, TO BEING DISTURBED (IE-VJ)\n<br />3. AMBITIOUS, ACHIVERS, ZEALOUS (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
96	5	12	<p>- Love for nature and fascinated by it (IE-VJ)\n<br />- Introvert - Morose - Awota (IE-VJ)\n<br />- Aversion to slightest noise, cannot bear to be interrupted or disturbed (IE-VJ)\n<br />- Ambitious, achiever, zealous, angry, ardent (IE-VJ)\n<br />- Desires spicy food, stimulants and alcohol (IE-VJ)\n<br />- Ineffectual urge for stools (IE-VJ)\n<br />- Chronic gastric problems (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
97	5	13	<p>BOGER (BO-SK):\n<br />- Zerebrospinale Achse\n<br />- NERVEN\n<br />- VERDAUUNGSORGANE: MAGEN, LEBER, GEDÄRME\n<br />- ATMUNGSORGANE\n<br />- Brünette Männer\n<br /> \n<br />PRAFUL VIJAYAKAR:\n<br />- Affection of CNS by braking of arteries followed by paralysis (not so drastic syp) (PV-S-2014, p 96) \n<br />- Affected by medication (PV-S-2014)\n<br />- Thick blood (Hb and TC high): discharge thick, menses thick, spitting of blood thick, mucus/slime thick (PV-S-2014)\n<br />- Convulsions (PV-S-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
98	5	14	<p>Aur-s (Sim)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
99	5	16	<p>Psora dominates syphilis (TAN-I-01/2017)\n<br /> \n<br />- Fast remedy, sudden onset (MM-GL)\n<br />- Allopathically spoiled cases (MM-GL)\n<br />- NO SYK symptoms, goes from PSOR -&gt; SYP (MM-GL)\n<br /> \n<br />- Sulph is often the genetic similimum for Arnica-state-patients (also: Calc, Nux-v after antibiotics; Ferr after Chinin, Ign, Cham) (see MM-GL Arn)\n<br /> \n<br />Complements: Nux-v - Graph\n<br />- stable and strong (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
101	5	18	<p>- Tough, thick hair  (MM-GL)\n<br />- Non fastidious distribution of hair on the chest (MM-GL)\n<br /> \n<br />- Aversion to slightest noise (IE-VJ)\n<br />- Aversion beeing disturbed (IE-VJ)\n<br />- Paralysis is instant, fast (Caust = slow paralysis - GMM-VJ)\n<br />- slight touch agg. (PV-S-10/14)\n<br />- abdomen: sensitive to touch (PV-S-10/14)\n<br />- senses hyperacute (PV-S-10/14)\n<br />- vision distorted (PV-S-10/14)\n<br />- hearing for every step (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
102	5	20	<p>Nux-v: not impulsive, very much in control of the situation\n<br />% Hep: is impulsive, beyond control\n<br />% Cham: not impulsive, not impatient\n<br />% Coloc: not impulsive, just angry</p>\n\n<p>Nux-v % Calc: works out of ambition % works a lot out of insecurity\n<br />- Nux-v can be mild and meek like Calc/Puls (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
103	6	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
104	6	2	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:16
105	6	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:16
106	6	4	<p>Chilly (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
107	6	5	<p>Thirsty &amp; NOT thirsty (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
108	6	6	<p>Left and right (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
109	6	7	<p>Intolerance to noise and light (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
110	6	8	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:16
111	6	9	<p>Desires fruits (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
112	6	10	<p>- If weakness and irritability are missing (PHL)\n<br />- If the patient has not a desire for fruits (PHL)\n<br />- If there is no bleeding tendency (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
113	6	11	<p>1. HAUGHTY BUT TIMID (IE-VJ)\n<br />2. EVERYTHING TROUBLES HER, TORMENTED FEELING, THEREFORE FROWN ON THE FACE (IE-VJ)\n<br />3. INTOLERANCE TO NOISE AND LIGHT (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
114	6	12	<p>- They are like chilly Plat (Ip (MM-GL)) but they are too timid to express it (IE-VJ)\n<br />- They feel everything torments them (IE-VJ)\n<br />- Friends, father and mother everyone torments them (IE-VJ)\n<br />- Strictly follows stars and astrology, they feel stars torment them (IE-VJ)\n<br />- Fear of eating certain food, in fear of getting pain or diarrhea (IE-VJ)\n<br />- Weakness after loss of fluids as in diarrhea or excess hemorrhage or menorrhagia (IE-VJ)\n<br />- Sensitive to bright light and noise (IE-VJ)\n<br />- Hemorrhagic tendency (IE-VJ)\n<br />- Affection of liver - tendency (IE-VJ)\n<br />- Blackish discoloration - tendency (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
115	6	13	<p>PRAFULL VIJAYAKAR:\n<br />- Affection of liver - tendency (IE-VJ)\n<br />- Hemorrhagic tendency, bleeding tendency (IE-VJ)\n<br /> \n<br />BOGER (BO-SK):\n<br />- BLUT\n<br />- KREISLAUF\n<br />- SEKRETIONEN: VERDAUUNGSORGANE, LEBER\n<br />- MILZ\n<br />- Nerven</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
272	16	5	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:16
428	25	1	<p>Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
118	6	18	<p>- Blackish discoloration - tendency (IE-VJ)\n<br />- Pale with headaches (MM-GL)\n<br /> \n<br />- Sensitive to bright light and noise (IE-VJ)\n<br /> \n<br />- Desires fruits (IE-VJ)\n<br /> \n<br />- Weakness after loss of fluids as in diarrhea or excess hemorrhage or menorrhagia (IE-VJ)\n<br />- Bleeding tendency (MM-GL)\n<br />- Affection of liver - tendency (IE-VJ)\n<br />- Periodicity (MM-GL)\n<br />- slight touch agg. (PV-S-10/14)\n<br />- vision: sparks (PV-S-10/14)\n<br />- frown with the nose upwards (when feels tormented and troubled) (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
119	6	20	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:16
121	7	1	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:16
122	7	2	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:16
123	7	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:16
124	7	4	<p>Hot (MM-GL)\n<br />and chilly (Sim, Urs)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
125	7	5	<p>Thirsty (Z-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
126	7	6	<p>Eher LX</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
127	7	7	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:16
128	7	8	<p>Conscientious (PV-I-01/15), Diligent (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
129	7	9	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:16
130	7	10	<p>- If fear of getting hurt physical is missing, fear of injury (PHL)\n<br />- Confirmation-Symptom in children: Bangs hands or forearms on the table (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
131	7	11	<p>1. ANGRY (IE-VJ, p 54)\n<br />2. FEAR OF HIS BODY BEIING FRAGILE (IE-VJ, p 54)\n<br />3. &lt; 4.00 AM TO 6.00 AM (IE-VJ, p 54)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
133	7	18	<p>- Thin hair (MM-GL)\n<br />- Delicate but fat, stout children (IE-VJ)\n<br /> \n<br />&lt; 4.00 AM to 6.00 AM (IE-VJ, p 54)\n<br />- hands: discoloration purple (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
134	7	19	<p>- Babies crying starts slow until it finally gets angry (MM-GL)\n<br />- Fear of getting hurt physically (Thuj-children; when angry, they are so obstinate --&gt; they throw and roll themselves on the floor even if they are afraid of injury) (MM-GL)\n<br />- Thuj is more a sad child, Sil is more a happy child (MM-GL)\n<br /> \n<br />- Confirmation-Symptom in children: Bangs hands or forearms on the table (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
135	7	20	<p>Thuja % Med:  Angst um Körper / Angst etwas könnte passieren\n<br />Thuj % Sil: is more a sad child / is more a happy child (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
136	8	1	<p>Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
137	8	2	<p>Respect (Ambr-S-10/13, DD Lach/Med)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
138	8	3	<p>Basic speed = Slow (Ambr-S-10/13)\n<br />When going from syc-&gt; syp the mind can be fast (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
139	8	4	<p>Hot (GL + Ambr)\n<br />Chilly in chronic state (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
140	8	5	<p>Thirsty (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
141	8	6	<p>Left (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
142	8	7	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:16
143	8	8	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:16
144	8	9	<p>Loves sour-sweet food (IE-VJ)\n<br />Loves cold refreshing juices and fruits (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
145	8	10	<p>- If they can bear criticism (PHL)\n<br />- If they don't sleep on the abdomen (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
146	8	11	<p>1. SENSITIVE TO CRITICISM (IE-VJ, p54)\n<br /> 2. IMPATIENT, HURRIED (IE-VJ, p54)\n<br /> 3. ANTICIPATING (IE-VJ, p54)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
147	8	12	<p>- Sensitiv to criticism (IE-VJ)\n<br />- Despair from criticism (IE-VJ)\n<br />- Impatient, hurried (IE-VJ)\n<br />- Anticipating (IE-VJ)\n<br />- Fear of ghosts, dark and unknown (IE-VJ)\n<br />- Always feels that there is someone behind him (IE-VJ)\n<br />- Loves cold refreshing juices (IE-VJ)\n<br />- Loves fruits (IE-VJ)\n<br />- Sleeps on abdomen (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
148	8	14	<p>Lach (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
149	8	16	<p>- Disease in Med is usually developing slowly (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
150	8	17	<p>- Sensitiv to criticism (IE-VJ)\n<br />- Despair from criticism (IE-VJ)\n<br />- Anticipating (IE-VJ)\n<br />- Fear of unknown, dark, future, thieves, ghosts, would prophesize that s.th. bad would happen etc.(MM-GL)\n<br />- Always feels that there is someone behind him (IE-VJ)\n<br />- Impatient, hurried, restlessness (IE-VJ)\n<br />- Loves animals (MM-GL)\n<br />- Aversion to responsibility in adults (MM-GL)\n<br />- Destructiveness (MM-GL)\n<br />- Serrated teeth (MM-GL)\n<br />- Is like a cat pushed in the corner and then suddenly attacking (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
151	8	18	<p>- Short stundted. Round thick nose (MM-GL)\n<br />- Obese, but more hardness like in Calc (MM-GL)\n<br /> \n<br />- Loves cold refreshing juices and fruits (IE-VJ)\n<br />- Loves sour-sweet food (IE-VJ)\n<br /> \n<br />- Sleeps on abdomen (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
273	16	6	<p>Left (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
274	16	7	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
275	16	8	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
429	25	2	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
430	25	3	<p>Fast, quick in acting (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
154	8	21	<p>- Anticipatory Anxiety (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
155	8	22	<p>- Forgetfullness (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
156	9	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
157	9	2	<p>Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
158	9	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
159	9	4	<p>Hot (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
160	9	5	<p>NOT thirsty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
161	9	6	<p>Left (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
162	9	7	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
163	9	8	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
164	9	9	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
165	9	11	<p>1. HAUGHTY AND CONTEMPTUOUS (IE-VJ)\n<br />2. CONVINCED THEY ARE EXCLUSIVE (IE-VJ)\n<br />3. HARD ON INFERIORS AND SOFT WITH SUPERIORS (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
166	9	16	<p>Complements: China (chilly) - Plat (hot) - Ip - Cicuta</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
168	9	18	<p>- Bone necrosis -&gt; Plat-m very good remedy (Farrington, Sil, p 490)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
169	9	20	<p>Plat % Lyc:     / more emotional\n<br />Plat % Arg-n: Plat is convinced she is great % Arg tries to show how great he is</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
170	9	22	<p>- Egotism (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
171	9	23	<p>- Haughty (GL-Z)\n<br />- Casts away (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
172	10	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
173	10	2	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
174	10	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
175	10	4	<p>Chilly (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
176	10	5	<p>NOT thirsty (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
177	10	6	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
178	10	7	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
179	10	8	<p>Non-conscientious (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
180	10	9	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
181	10	10	<p>- If anger is missing (RO-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
182	10	11	<p>1. ANGRY, IRRITABLE AND SENSITIVE (Nux-v) - BUT NO POSITIVITY (IE-VJ)\n<br />2. HAUGHTY LOOKS LIKE Plat (IE-VJ)\n<br />3. SHORTENING OF TENDONS (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
183	10	17	<p>- Introverted (IE-VJ)\n<br />- Timid (IE-VJ)\n<br />- Angry, irritable, sensitive like Nux-v (IE-VJ)\n<br />- Anger is only for a short time (IE-VJ)\n<br />- Anger, but cannot express because of timidity (IE-VJ)\n<br />- SHORTENING of everything: courage, success, happiness and money (MM-GL)\n<br />- Quiet (IE-VJ)\n<br />- Very seroius. Loner, few friends (MM-GL)\n<br />- Mentally shortened. Mind is not too flexible (MM-GL)\n<br />- Discontented. Complaining even if he is better. Like, if he is 60% better, he would say still he has to improve 40% (MM-GL)\n<br />- Anxiety of conscience, as if guilty of a crime (IE-VJ)\n<br />- Sharp nosed, seems to emulate (nachahmen) Plat haughtiness, but we can talk to them. We find them to be keeping away from people because of cowardice (IE-VJ)\n<br />- Hard worker (MM-GL)\n<br />- A/F suppressed anger (MM-GL)\n<br />- Loves music (MM-GL)\n<br />- Often mistakes for Plat as looks haughty and behaves like Plat (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
184	10	18	<p>- Features are sharp (IE-VJ)\n<br />- Lean body (IE-VJ)\n<br /> \n<br />- Shortened Tendons, HAMSTRINGS (Achillessehne). They suffer from cramps and pulls in legs and hamstrings (IE-VJ)\n<br />- Profuse perspiration (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
185	10	20	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
186	11	1	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
187	11	2	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
188	11	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
189	11	4	<p>Kalt</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
190	11	5	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
191	11	6	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
192	11	7	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
193	11	8	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
194	11	9	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
195	11	17	<p>- Timid (MM-GL)</p>\n\n<p>- MANGEL AN SELBSTVERTRAUEN (psor) (U-VJ)\n<br />- Können sich nicht entscheiden (tauchen 3x ein neues Paar Schuhe um) (U-VJ)\n<br /> \n<br />- Wissbegierig (psor) (U-VJ)\n<br />- Concencious ((U-VJ)\n<br />- Wollen es erreichen, zieht es bis am Ende durch (syk)\n<br /> \n<br />- Sind sensibel (U-VJ)\n<br /> \n<br />- DER ANGSTFAKTOR FEHLT (syph) (U-VJ)\n<br /> \n<br />- ÄRGER (U-VJ)\n<br />- Angry and destructive (Ambr-S-10/13, p 44)\n<br /> \n<br />- Mischievous (MM-GL)\n<br />- IMMORAL (U-VJ)\n<br />ZWEISPALT: (U-VJ)\n<br />- Does not bother about consequences (syp) (MM-GL)\n<br />- Sensation of right and wrong is abolished (MM-GL)\n<br />- Belohnungs- und Bestrafungszentrum im Gehirn funktionieren nicht wie sie sollten\n<br /> \n<br /> \n<br />- Flausen im Kopf (U-VJ)\n<br />•\tMacht sich keine Gedanken über die Konsequenzen!\n<br />•\tKinder lernen nicht aus ihren Fehlern. Sie fallen immer wieder beim gleichen um\n<br />•\tWollen es sich beweisen, dass sie es können\n<br />•\tKinder schätzen die Gefahr falsch ein</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
196	11	19	<p>- Flausen im Kopf (U-VJ)\n<br />- Macht sich keine Gedanken über die Konsequenzen! (U-VJ)\n<br />- Kinder lernen nicht aus ihren Fehlern. Sie fallen immer wieder beim gleichen um (U-VJ)\n<br />- Wollen es sich beweisen, dass sie es können (U-VJ)\n<br />- Kinder schätzen die Gefahr falsch ein (U-VJ)\n<br />- Schimpfen nützt nichts bei Anac (U-VJ)\n<br /> \n<br />In children who do not see danger anywhere appear to us as “courageous or fearless”. This apparent fearlessness can be expressed in different forms. (MM-GL)\n<br /> \n<br />I.e. a parent of a child was so enthusiastic and proud, when telling us, that her 4 ½ year old child was so bold, that he had no fears. Whilst walking on the road, if he saw a strong dog, he would go and twist and turn the tail or would just put his whole hand in the dog’s mouth. This child could just run across the road without bothering for the cars, running at fun speed. The child would climb up a cupboard and jump down from seven feet height, not bothering whether he would be injured or not. (MM-GL)\n<br /> \n<br />There was another child who got just her hands burnt, by touching a hot “iron” which in used for pressing the clothes. The next day she again went to touch it, not afraid that her hands receive burns. (MM-GL)\n<br /> \n<br />These children appear fearless and courageous but in fact there is something wrong in their behaviour. They are not having the presence of “Fear-Factor”. Fear-factor is essential for prolonging life. (MM-GL)\n<br /> \n<br />These children appear fearless and courageous but in fact there is something wrong in their behaviour. They are not having the presence of “Fear-Factor”. Fear-factor is essential for prolonging life.The instinct to survive for any organism is based on that there is a danger to life and necessary steps should be taken to avoid what could be destructive to life. In these children, this is missing. Thus they proceed to destruction without inhibition or without any factor to control them. When this happens, there is no control and love for life is lost. This is frank SYPHILITIC or destructive miasm. (MM-GL)\n<br /> \n<br />Loss of fear can be accompanied by loss of discretion.\n<br />LOSS OF DISCRETION: an 8 year old child who tried to cross over from one window to another of the neighbouring room by walking on the parapet outside the window and that too on a 2nd floor apartment was an Anacardium. When asked, why she did so she promptly replied: “I wanted to go to the next room and it was a shorter distance this way”. (MM-GL)</p>\n\n<p> \n<br />Sense of right and wrong is abolished in Anacardium. The right and left side of the brain do not interact, nor do the punishment centres and reward centres interact before this child or adult takes any step as response to a stimulus.\n<br />What is punishable, or this person does not understand what are wrong morals. (MM-GL)\n<br /> \n<br />A child who used to lift the skirt of girls in school did not stop doing so despite being punished, beaten, and reprimanded by schoolteachers and parents. He was not obstinate or defiant. Never did he try to argue with parents. That what they said was wrong, that what he was doing, was right. He accepted the punishment, agreed upon not doing it again but he did it again. This was something beyond his control. The syphilitic out of control is elaborated here very well. (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
276	16	9	<p>Desire for chocolate (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
277	16	11	<p>1. MISPLACED (MM-VJ)\n<br />2. INADAPTABLE / ROUTINIST (MM-VJ)\n<br />3. SHORT STATUE, RECEDING HAIRLINE, ROUND FACE, KNOBBY NOSE (MM-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
198	12	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
199	12	2	<p>Love and Respect remedy (MM-GL, Ambr car 2013)\n<br />Very close to Phos (MM-GL, Ambr car 2013)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
200	12	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
201	12	4	<p>Chilly (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
202	12	5	<p>Thirsty (IE-VJ) or thirstless (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
203	12	6	<p>Right side (PV-S-11/2010)\n<br />and\n<br />Left (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
204	12	7	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
205	12	8	<p>Conscientious, diligent (IE-VJ, p 92)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
206	12	9	<p>Desire for warm foods and drinks (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
207	12	10	<p>- If there is no anticipation with anxiety (PHL)\n<br />- If patient is not litigious, not argumentative (Ambr)\n<br />- If patient is not fastidious (Ambr)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
208	12	11	<p>1. ANTICIPATORY ANXIETY (IE-VJ)\n<br />2. CHILLY WITH THIRST FOR SIPS OF WATER (IE-VJ)\n<br />3. DESIRES WARM FOOD (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
209	12	12	<p>- Fastidiousness (IE-VJ)\n<br />- Critical, censorious (IE-VJ)\n<br />- Litigious (IE-VJ)\n<br />- Restlessness (IE-VJ)\n<br />- Aristocratic (IE-VJ)\n<br />- Soberness is out of aristocracy (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
210	12	13	<p>BOGER (BO-SK):\n<br />- SCHLEIMHÄUTE\n<br />- GM\n<br />- ATMUNG (lunge, resp. Apex)\n<br />- BLUT, HERZ, NERVEN\n<br />- MILZ\n<br />- LYMPHKNOTEN\n<br />- MUSKELN\n<br />- HAUT\n<br />- Seröse Hohlräume</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
211	12	14	<p>Phos (Ars is very close to Phos -&gt; (MM-GL, Ambr car 2013))</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
213	12	18	<p>- Desire for warm foods and drinks (IE-VJ)\n<br /> \n<br />- Anguish with nausea - typical Ars symptom (PV-S-10/2014)(PV-S-10/14)\n<br />- Cardiac problems, patient is in anguish (Angst) and nausea (no eructation or vomiting!) -&gt; Ars good remedy\n<br /> \n<br />- Desire bite into hard things (PV-S-10/2014, p 97)\n<br />- fingernails discoloration purple (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
214	12	19	<p>- Children want on mothers arm (MM-GL)\n<br />- Very particoular, can tell the mother to keep things in place (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
215	12	20	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
216	12	21	<p>- Anticipatory anxiety (PV-S-05/12)\n<br />- Anxiety (MM-GL, Ambr car 2013)\n<br />- Cautious (MM-GL, Ambr car 2013)\n<br />- Very graceful (PV-S-05/12)\n<br />- Sensitive to criticism (MM-GL, Ambr car 2013)\n<br />- Conscientious &amp; Diligent (PV-S-05/12)\n<br />- Fastidious (PV-S-05/12)\n<br /> \n<br />- Lean &amp; Thin (PV-S-05/12)\n<br />- Delicate looking, good looking, neat &amp; clean (PV-S-05/12)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
217	12	22	<p>- Stable (MM-GL, Ambr car 2013)\n<br />- Calculative (MM-GL, Ambr car 2013)\n<br />- No anticipation (PV-S-05/12)\n<br />- Anticipation goes into planning, preplanning of programmes, engagements...(IE-VJ)\n<br />- Dominating &amp; Dictatorial (PV-S-05/12)\n<br />- Haughty (MM-GL, Ambr car 2013)\n<br />- Egotism, self-centered (PV-S-05/12)\n<br />- Cencorious &amp; critical (PV-S-05/12)\n<br />- Sarcastic (PV-S-05/12)\n<br />- Quarrelsome (PV-S-05/12)\n<br />- Avarice (MM-GL, Ambr car 2013)\n<br /> \n<br />- Body - Obese (PV-S-05/12)\n<br />- Linea nasalis (MM-GL, Ambr car 2013)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
218	12	23	<p>- No anticipation (MM-GL, Ambr car 2013)\n<br />- Can be chaotic (U-VJ)\n<br />- Too much fastidiousness (PV-S-05/12) / No fastidiousness (MM-GL, Ambr car 2013)\n<br />- Irritable at trifles (MM-GL, Ambr car 2013)\n<br />- Insulting abusive (MM-GL, Ambr car 2013)\n<br />- Very harsh, abrupt to talk, rough (PV-S-05/12)\n<br />- Self humiliation (MM-GL, Ambr car 2013)\n<br />- Self mutilation (MM-GL, Ambr car 2013)\n<br /> \n<br />- Lean &amp; thin looking, emaciation (PV-S-05/12)\n<br />- Dirty looking (MM-GL, Ambr car 2013)\n<br />- Warmth &lt;&lt; (MM-GL, Ambr car 2013)\n<br />- Offensive discharges (MM-GL, Ambr car 2013)\n<br />- Black discoloration of entire skin (PV-S-05/12)\n<br />- Deep seated eyes (MM-GL, Ambr car 2013)\n<br />- tries to bite another person (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
220	13	1	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
221	13	2	<p>Support &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
222	13	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
223	13	4	<p>Chilly (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
224	13	5	<p>NOT thirsty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
225	13	6	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
226	13	7	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
227	13	8	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
228	13	9	<p>Loves roasted and salty food (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
229	13	12	<p>- Active, restless, travelling, wandering (REP: GM/Wandern/verlangen zu wandern) (MM-GL)\n<br />- Hates consolation, indignation (MM-GL)\n<br />- Mind dull, Mental exertion agg (MM-GL)\n<br />- Thinking of complaints agg (MM-GL)\n<br />- Loves roasted and salty food (MM-GL)\n<br />- Lean people with prominent bones (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
230	13	14	<p>Tub (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
231	13	16	<p>Schnelles Mittel (SI)\n<br />Calc-p is a syp calcarea, don't look for psora in calc-p (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
325	19	6	<p>Right (IE-VJ, p 90)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
326	19	7	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
431	25	4	<p>Hot (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
432	25	5	<p>Thirsty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
233	13	18	<p>- Lean, tall, thin neck, sharp nose, sharp features (MM-GL)\n<br />- People with prominent bones (MM-GL)\n<br /> \n<br />- Loves roasted and salty food (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
235	14	1	<p>Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
236	14	2	<p>Love (PV-S-05/10, p49)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
237	14	3	<p>Quick (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
238	14	4	<p>Hot (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
239	14	5	<p>Thirsty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
240	14	6	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
241	14	7	<p>- Hunger cannot bear (IE-VJ)\n<br />- To rudeness (IE-VJ)\n<br />- To criticism, offended easily (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
242	14	8	<p>Conscientious, diligent (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
243	14	9	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
244	14	10	<p>- If there is no activity with heat (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
245	14	11	<p>1. ACTIVE, RESTLESS, OFFENDED EASILY (IE-VJ)\n<br />2. DILIGENT (IE-VJ)\n<br />3. HUNGER CANNOT BEAR (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
246	14	12	<p>- Thin people with long neck (IE-VJ)\n<br />- Very active and restless (IE-VJ). Likes to travel (MM-GL)\n<br />- Cannot bear hunger (IE-VJ). Hunger &lt;&lt; complaints (IE-VJ)\n<br />- Sensitive to rudeness (IE-VJ)\n<br />- Offended easily (IE-VJ)\n<br />- Diligent and concientious (IE-VJ)\n<br />- Anxious about everything, especially their health (IE-VJ)\n<br />- Timid constitution (IE-VJ)\n<br />- Tremendous heat in the body (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
247	14	13	<p>PRAFULL VIJAYAKAR::\n<br />- Glands (thyroid) (MM-GL)\n<br />- Skin (MM-GL)\n<br />- Respiratory tract (MM-GL)\n<br />- Bones (MM-GL)\n<br /> \n<br />BOGER (BO-SK):\n<br />- DRÜSEN (SCHILDDRÜSE, Hoden, Mesenterial, Mammae)\n<br />- SCHLEIMHÄUTE (KEHLKOPF, Lunge (re. Spitze oder Basis)\n<br />- HERZ. Blutgefässe\n<br />- Haut. Nerven\n<br />- Bindegewebe</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
249	14	18	<p>- Thin people with long neck (IE-VJ)\n<br /> \n<br />- Very active and restless (IE-VJ)\n<br />- Cannot bear hunger (IE-VJ). Hunger &lt;&lt; complaints (IE-VJ)\n<br />- Emaciation though eating well (Tub, Nat-m, Phos, Ars-i, Sanic, Sil) (MM-GL)\n<br />- Metabolism in excess (MM-GL)\n<br />- Tremendous heat in the body (IE-VJ)\n<br />- Excessive fibrin metabolism  (MM-GL)\n<br />- Lot of hardening  (MM-GL)\n<br /> \n<br />AFFECTION OF (MM-GL):\n<br />- Glands (thyroid) (MM-GL)\n<br />- Skin (MM-GL)\n<br />- Respiratory tract (MM-GL)\n<br />- Bones (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
250	14	20	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
251	14	23	<p>- Rage (MM-GL)\n<br />- Impulsive (MM-GL)\n<br />- Impulse to kill (MM-GL)\n<br />Ulcerations, fistula (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
252	15	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
253	15	2	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
254	15	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
255	15	4	<p>Chilly: Ferr, Ferr-ar, Ferr-p (GL-Z)\n<br />Hot: Ferr-i, Ferr-mur (GL-Z)\n<br /> \n<br />Chilly (IE-VJ), Hot (PV-S-05/12)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
256	15	5	<p>Thirstless (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
257	15	6	<p>Left (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
258	15	7	<p>Noise, scratching, odors causing vomiting  (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
259	15	8	<p>Conscientious, diligent (IE-VJ, p 92)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
260	15	9	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
261	15	11	<p>Ferrum metallicum</p>\n\n<p>1. INTOLERANT TO CONTRADICTION (IE-VJ)\n<br />2. SENSITIVE TO NOISE, SCRATCHING, TO ODOURS CAUSING VOMITING (IE-VJ)\n<br />3. LEFT SIDED (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
262	15	12	<p>Ferrum metallicum\n<br />- Reddish discoloration of face (IE-VJ)\n<br />- Don't get angry or don't quarrel - they stick to what they say (IE-VJ)\n<br />- Disputatious, dogmatic but not dictatorial (IE-VJ)\n<br />- Pertinancy (IE-VJ)\n<br />- Structure (everything should be done in a sistematic manner) (IE-VJ)\n<br />- Disciplined (IE-VJ)\n<br />- Susceptible to gastric and bleeding problems (IE-VJ)\n<br />- Soberness is out of firmness and stability despite being sensitive (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
263	15	13	<p>BOGER (BO-SK):\n<br />- Vaso-motoren: Kreislauf, BLUTGEFÄSSE\n<br />- BLUT\n<br />- Milz\n<br />- Verdauung\n<br />- Linker Deltoid</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
264	15	16	<p>- ACTIVE BLEEDER (MM-GL)\n<br /> \n<br />- Sulph is often the genetic similimum for Arnica-state-patients (also: Calc, Nux-v after antibiotics; Ferr after Chinin, Ign, Cham) (see MM-GL Arn)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
266	15	18	<p>- Tough and thick hair (MM-GL)\n<br />- Reddish discoloration of face (IE-VJ)\n<br /> \n<br />- Active bleeder (GL-Z)\n<br />- Susceptible to gastric and bleeding problems (IE-VJ)\n<br /> \n<br />&gt; slow motion (MM-GL)\n<br />&lt; fast motion (MM-GL)\n<br />- vision acute at night in hysterias (PV-S-10/14)\n<br />- hearing: rumpling of paper (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
267	15	20	<p>FERRUM  ARSENICOSUM (ferr-ar)(MM-GL)\n<br />- Chilly (GL-Z)\n<br />- Thirstless\n<br />- Positive, strong\n<br />- Man of principles\n<br />- Duty\n<br /> \n<br />FERRUM  IODATUM (ferr-i)(MM-GL)\n<br />- Hot (GL-Z)\n<br />- Strong rules\n<br />- Sensitive\n<br />- Intelligent\n<br />- Conscientious\n<br />- Active and anxious\n<br />- Very particular, very cautious and careful. Like cleanliness\n<br /> \n<br />FERRUM  MAGNETICUM (ferr-ma)(MM-GL)\n<br />- Walks slowly, dignified like a king\n<br /> \n<br />FERRUM  PHOSPHORICUM (ferr-p)(MM-GL)\n<br />- Chilly (GL-Z)\n<br />- Indifference to reprimands, indifference to external impressions\n<br />- Sharp featured\n<br />- Vomiting tendency</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
268	16	1	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:17
269	16	2	<p>Support (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
279	16	16	<p>Predominantly sycotic miasm -&gt; HYPO SYC (MM-VJ)\n<br />Less of elastin -&gt; physical and mental looseness (MM-VJ)\n<br /> \n<br />Complements: Puls – Bar-s – Kali –s – Lac-c</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
281	16	18	<p>- Short statue (MM-VJ)\n<br />- Receding hairline, round face, knobby nose (MM-VJ)\n<br /> \n<br />- Desire for chocolate (Carc) (IE-VJ)\n<br /> \n<br />- Weak back, back pain (MM-VJ) &lt; sitting erect, standing\n<br />- Relaxation, flabby feeling in hard parts (MM-VJ)\n<br />- Pulse weak on motion, gets palpitation (MM-GL)\n<br /> \n<br />&lt; close rooms (Puls), midnight (Ars) (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
282	16	20	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
283	16	23	<p>- Indiscretion (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
284	17	1	<p>Intro (due to inertness) (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
285	17	2	<p>Love (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
286	17	3	<p>Slow (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
287	17	4	<p>Hot (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
288	17	5	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
289	17	6	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
290	17	7	<p>- Sensitive to rudeness (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
291	17	8	<p>Non-diligent, but social responsibility (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
292	17	9	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
293	17	10	<p>- If they are talkative and interacting (RO-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
294	17	11	<p>1. PATIENT AND CONTENTED (IE-VJ)\n<br />2. SENSITIVE TO RUDENESS, ORPHANED FEELING AND FRIENDLESS (IE-VJ)\n<br />3. &lt; MILK, MORNING (IE-VJ)\n<br />4. LIVER AFFECTION (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
295	17	12	<p>- Patient (IE-VJ)\n<br />- Contented (IE-VJ)\n<br />- Scientific bent of mind (IE-VJ)\n<br />- Palms hot to touch (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
296	17	16	<p>HURT -&gt; ACCEPT HURT, DO NOT REACT, RESIGN TO THE FATE (all Magnesia, Sep) (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
297	17	17	<p>- Introverted - due to inertness (IE-VJ)\n<br />- Introverted - Quiet, sober and graceful (IE-VJ, p 92)\n<br /> \n<br />- Contented and patient (IE-VJ, MM-GL)\n<br />- Dullness, torpor (IE-VJ)\n<br />- Not bothered about the consequences (MM-GL)\n<br /> \n<br />- Feels like orphans (IE-VJ)\n<br />- Sensitive to rudeness (IE-VJ)\n<br /> \n<br />- Friendless (IE-VJ)\n<br />- Scientific bent of mind (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
298	17	18	<p>- Stout built and huge built (MM-GL)\n<br /> \n<br />&lt; Milk agg (MM-GL)\n<br /> \n<br />- Expected pains are missing (MM-GL)\n<br />- Palms hot to touch (IE-VJ)\n<br />- Cramps, jerks (MM-GL)\n<br />- Nerves hypersensitive (IE-VJ)\n<br />- Liver complaints (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
299	17	20	<p>See DD with Mag-p under Mag-p</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
300	18	1	<p>Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
301	18	2	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
302	18	3	<p>Quick mind (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
303	18	4	<p>Hot (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
304	18	5	<p>Thirsty (IE-VJ)\n<br />Acute -&gt; can be NOT thirsty (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
305	18	6	<p>Left (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
306	18	7	<p>SZ unempfindlich</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
307	18	8	<p>Non-conscientious, non-diligent (IE-VJ, p92)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
308	18	9	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
309	18	10	<p>- If there are no acute senses (PHL)\n<br />- If there is no sharp memory (PHL)\n<br />- If the patient is not contented (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
310	18	11	<p>1. TORPOR (IE-VJ)\n<br />2. CONTENTED (IE-VJ)\n<br />3. SLEEP EXCESSIVE CAN NOT BE DISTURBED OR SLIGHTEST NOISE DISTURBS SLEEP (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
312	18	13	<p>BOGER (BO-SK):\n<br />- Mind, senses\n<br />- Nerves: BRAIN, cerebrospinal, "sympathische"\n<br />- Lungs, Respiration\n<br />- Intestinal tract</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
313	18	14	<p>Arn (BO-SK), Nux-m (BO-SK)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
314	18	17	<p>- Extroverted - Loud talker (IE-VJ, p 21)\n<br />- Introverted - Quiet, sober and graceful (IE-VJ, p 92)\n<br /> \n<br />- Extroverted (MM-GL)\n<br />- Good talkers, eloquent, loquacious (IE-VJ)\n<br /> \n<br />- Cool, contented (Mag-m., Mag-s., Mag-c.), never anxious about his condition (IE-VJ)\n<br />- Never complains (IE-VJ)\n<br />- Happy-go-lucky-type, not very serious, cheerful (MM-GL)\n<br /> \n<br />- Quick, very sharp mind but slow in body (IE-VJ) - (Coff., Lach., Phos., Hyos., Cann-i.)\n<br />- Activity with alertness of mind (IE-VJ). Even when drowsy, the mind is alert (MM-GL)\n<br /> \n<br />- Revolting character (MM-GL)\n<br />- Courageous (MM-GL)\n<br /> \n<br />- No haste, no hurry (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
315	18	18	<p>- Sluggishness of body with sharpness of mind (IE-VJ)\n<br />- Senses alert (IE-VJ)\n<br />- Constipated (IE-VJ)\n<br />- Extreme deep sleep (Syc) or sleep excessive or slightest noise disturbs sleep (Syp) (IE-VJ)\n<br />- analgesia, inner parts (PV-S-10/14)\n<br />- senses hyperacute, perverted (PV-S-10/14)\n<br />- fingernails discoloration purple (PV-S-10/14)\n<br />- hands: discoloration purple (PV-S-10/14)\n<br />- tongue purple black (PV-S-10/14)\n<br />- hears clock (Anm.CS-T: übersetzung Glocken?!)) strikes at a distance (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
316	18	20	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
317	18	21	<p>- Quick, fast (GL-Z)\n<br />- Cherfluness (GL-Z)\n<br />- Acuteness of senses (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
318	18	22	<p>- Witty (GL-Z)\n<br />- Gigantic plans and torpor (GL-Z)\n<br />- Extreme deep sleep (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
319	18	23	<p>- Contented (GL-Z)\n<br />- Ecstasy (GL-Z)\n<br />- Fancies (GL-Z)\n<br />- Sleep: by slightest noise disturbed (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
320	19	1	<p>Intro (IE-JV)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
321	19	2	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
322	19	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
323	19	4	<p>Chilly (IE-JV)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
324	19	5	<p>NOT thirsty (IE-JV)\n<br />Yet amel. drinking cold (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
331	19	12	<p>- Ardent, sympathetic, anarchist tendency (IE-VJ, p 57)\n<br />- Hates sunny clear weather / &gt; cloudy weather (IE-VJ, p 57)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
333	19	16	<p>Tiefwirkendes Mittel (SkHZ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
335	19	18	<p>- Desires dry food and roasted food (Calc-p) (MM-GL)\n<br /> \n<br />&gt; cloudy weather (MM-GL)\n<br />&lt; clear or fine weather (MM-GL)\n<br /> \n<br />&gt; Drinking (MM-GL)\n<br />&lt; Eating (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
336	19	20	<p>Merc % Caust: </p>\n\n<p>Strong (metal)                              / timid (minearl)\n<br />Defiant, contrary                           / quarrelsome\n<br />Revolting, refuses submission to authority  / fights against injustice\n<br />Fights for self                             / fights for others\n<br />Intelligent, manipulatiev, wants to win     / Ardently fighting for a cause\n<br />Miasm: syk - syp                            / Syk\n<br /> \n<br />Caust % Verat (PV-I-01/15):\n<br />Cauts: open revolting  / Verat: you will know he is dominating you</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
337	19	22	<p>Accumulation (hypersycosis):\n<br />- glaucoma, right side (GMM-VJ)\n<br />- Hydrocele, right side (GMM-VJ)\n<br />- Warts, esp. fingert tips and near nails (GMM-VJ)\n<br />- Shortening of tendons (GMM-VJ)\n<br />- Contractures of tendons (GMM-VJ)\n<br />- Dostortion of joints (GMM-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
338	19	23	<p>- Slowly appearing paralysis (DD: Nux-v -&gt; paralysis is fast, Plb -&gt; the motor neurons are affected) (GMM-VJ)\n<br />- Paralysis in single part of muscles (GMM-VJ)\n<br />- Weakness, paresis of tendons, muscles, phincters (GMM-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
339	20	1	<p>Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
340	20	2	<p>Support &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
341	20	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
342	20	4	<p>Hot (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
343	20	5	<p>Thirsty</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
344	20	6	<p>Right (AMSH)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
345	20	7	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
346	20	8	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
347	20	9	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
348	20	11	<p>1. COMPLAINTS NOT BE APPRECIATED (MM-VJ)\n<br />2. EGOISTIC, COQUETTISCH (MM-VJ)\n<br />3. ANGRY, QUARRELSOME (MM-VJ)\n<br />4. DO NOT LIKE SPORT, WALKING (MM-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
349	20	12	<p>- &lt; eating after, bathing (MM-VJ)\n<br />- Easy tiring, does not walk (MM-VJ)\n<br />- Easy brain fag (MM-VJ)\n<br />- Weakness after anger (MM-VJ)\n<br />- Yellow discharges (MM-VJ)\n<br />- &gt; Open air (MM-VJ)\n<br />- Nausea &lt; warm room (MM-VJ)\n<br />- Croup only on waking in children (MM-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
350	20	16	<p>Calcium Sulphate = Ca SO4</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
352	20	18	<p>- Long bones (MM-GL)\n<br />- Strong features (MM-GL)\n<br /> \n<br />- Yellow discharges (MM-VJ)\n<br />- Varicose veins (MM-GL)\n<br />- Nausea &lt; warm room (MM-VJ)\n<br />&gt; Open air (MM-VJ)\n<br />&lt; eating after, bathing (MM-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
353	20	19	<p>- Respiratory problems (AMSH)\n<br /> \n<br />- Very timid, very sensitive (MM-VJ)\n<br />- Need mother and family support (MM-VJ)\n<br /> \n<br />- Do not like study (MM-VJ)\n<br />- Black out during exam, at home they know the answers (MM-VJ)\n<br /> \n<br />- Afraid of parents (MM-VJ)\n<br />- Jealous of siblings (MM-VJ)\n<br />- Feel what they do is not appreciated by parents, yet they are attached to them (MM-VJ)\n<br /> \n<br />- Fear -&gt; birds, feathers, cotton fibers, animals, lizards, snakes...(MM-VJ)\n<br />- Cannot bear cruelty (MM-VJ)\n<br />- Obstinate (MM-VJ)\n<br />- Headstrong (MM-VJ)\n<br />- Giggle a lot (MM-VJ)\n<br />- Save money (MM-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
354	20	20	<p>Calc-s % Lyc: stiffness, obstinacy, timidity / </p>\n\n<p>Calc-s % Staph: not able to fight through -&gt;  hot, wants to fight, quarrel but can not because of his timidity  / chilly, not fight because she is sensitive to what people may say, his dignity comes in the way\n<br /> \n<br />Calc-s % Plat: haughty -&gt; attachment to family, softness / no attachment to family\n<br /> \n<br />Carbons % Calcareas (MM-GL):</p>\n\n<p>Not conscientious /  Conscentious\n<br />Unhappy, unfortunate, dejected / Insecuritiy, desire touch \n<br />Stasis, inert, torpor / Slowness\n<br />No excitement for even pleasant things / High, impressionable</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
355	20	21	<p>- Complains he is not appreciated (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
356	20	22	<p>- Aversion to people who do not agree (IE-VJ)\n<br />- Aversion to answer (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
357	20	23	<p>- Hatred of person who do not agree (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
358	21	1	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
359	21	2	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
360	21	3	<p>Temperament not Slow (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
361	21	4	<p>Chilly (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
362	21	5	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
363	21	6	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
364	21	7	<p>Music, Noise (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
365	21	8	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
366	21	9	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
367	21	11	<p>1. SMALL INTELECT (IE-VJ)\n<br />2. HUGE BODY / SMALL HEAD (IE-VJ)\n<br />3. CHILDISH, IMMATURE (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
368	21	16	<p>Secretion of cutaneous gland of a tadpole.\n<br />Mix between Bar-c and Hyos (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
457	27	1	<p>Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
458	27	2	<p>Respect (GL, PV-S-11/10)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
478	28	5	<p>Thirsty (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
370	21	18	<p>- Huge Body, small head (IE-VJ)\n<br />- vision distorted (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
371	21	20	<p>Bufo % Bar-c:\n<br />- body huge, head small / body and head small (IE-VJ)\n<br />- childish, immature / childish, immature (IE-VJ)\n<br />- not moralistic / moralistic (IE-VJ)\n<br />- sexual overactive / no sexual overtures (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
372	22	1	<p>Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
373	22	2	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
374	22	3	<p>Quick, fast (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
375	22	4	<p>Hot (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
376	22	5	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
377	22	6	<p>Right (PV-S-05/12, p57, MM-GL+ Verm)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
378	22	7	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
379	22	8	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
380	22	9	<p>Sour (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
381	22	10	<p>- If the person likes household duties (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
382	22	11	<p>1. LEAN, THIN (IE-VJ)\n<br />2. QUICK, FAST, HURRIED, RESTLESS (IE-VJ)\n<br />3. VERY SENSITIVE (IE-VJ)\n<br />4. WOMAN HATE HOUSEHOLD (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
383	22	13	<p>Viji:\n<br />- congenital heart disease, VSD (Sulph, Sul-i, Merc, Lach) (I-Ambr-2015, p121)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
384	22	16	<p>- Fast remedy (PV-S-05/12, p57)\n<br />- Tief + langwirkend (K)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
386	22	18	<p>- Lean (dünn), thin, tall (IE-VJ)\n<br />- Likes sour pickels, lemonades, refreshing drinks (IE-VJ + K)\n<br /> \n<br />- Big hunger (I-Ambr-2015)\n<br />- Children drink fast (I-Ambr-2015)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
387	22	19	<p>- Abmagerung trozt gutem Appetit (K)\n<br />- Drüsen sind geschwollen (II) und VERHÄRTET (III) (K)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
389	23	1	<p>Extro &amp; 2nd Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
390	23	2	<p>Support &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
391	23	3	<p>Quick, sharp, witty mind (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
392	23	4	<p>Hot (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
393	23	5	<p>Thirsty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
394	23	6	<p>Left (IE-VJ) or \n<br />disease from left -&gt; right (MM-GL)</p>\n\n<p>Left side (psor &amp; syp) (GL-Z)\n<br />Right side (syk) (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
395	23	7	<p>Noise (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
396	23	8	<p>Not conscientious, not diligent  (IE-VJ, p 59)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
397	23	9	<p>Desire for alcohol and indigestible (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
398	23	10	<p>- If there is tolerance to tight clothes (PHL)\n<br />- If not sensible to touch (PHL)\n<br />- If the person has no quick and sharp brain (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
399	23	11	<p>1. INTOLERANCE TIGHT CLOTHES (IE-VJ)\n<br />2. QUICK, SHARP, WITTY MIND (IE-VJ)\n<br />3. SELFISH (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
400	23	12	<p>- Loquatious, lively, vivacious people (MM-GL)\n<br />- People who prophess, have intuition (MM-GL)\n<br />- Talk hasty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
401	23	13	<p>PRAFUL VIJAYAKAR:\n<br />- Cardio-vascular system (PV-I-01/15)\n<br />- Congenital heart disease, VSD (Sulph, Sul-i, Merc, Lach) (I-Ambr-2015, p121)\n<br />- heart disease (PV-S-10/14)\n<br />- tumours (PV-S-10/14)\n<br />- blood (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
402	23	14	<p>Med (Ambr-S-10/13, p 82), Cench (Ambr-S-10/13, p 49)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
403	23	16	<p>Childer with umbelical cord around the neck at birth are 60-70% snake remedies (PV-S-2010)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
459	27	3	<p>Fast (Sim-9.12.13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
460	27	4	<p>Psor = Hot (Marc)\n<br />Syk = Chilly (Marc)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
461	27	5	<p>Thirsty (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
462	27	6	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
463	27	7	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
464	27	8	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:18
1763	15	23	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:18
406	23	19	<p>- In the beginning shyer than Tarent, hide behind the mother. If they feel secure, they become naughty (MM-GL)\n<br />- Child does not even come into the room of doctor (Ambr-S-10/13, p 44)\n<br />- Dependent on mother or father (Ambr-S-10/2013, p83)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
408	23	21	<p>- Sensitivity  (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
409	23	22	<p>- Communicative expansive -&gt; talk, talk, talk (IE-VJ)\n<br />- Timid, reserved, does not talk much (MM-GL)\n<br />- Secretive (MM-GL)\n<br />- Fast brain (MM-GL)\n<br />- Jealous (MM-GL)\n<br />- Full of ideas (GL-Z)\n<br />- Jesting (GL-Z)\n<br />- Witty (GL-Z)\n<br />- Talk bombast, worthless, extravagant, formal, high, to himself when alone, repetition of same phrases, vivacious (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
410	23	23	<p>- Loquacity without control (IE-VJ)\n<br />- Jumping from one subject to the other (IE-VJ)\n<br />- Very fast and quick thought process (IE-VJ)\n<br />- Blackish discoloration (GL-Z)\n<br />- Talk confused, in foreign language, hasty in fever, irrational, prattling, repetition of same phrases, falling asleep, in sleep, violent, wandering (IE-VJ)\n<br />- Mispronounces words, letters (IE-VJ)\n<br />- Misplaces words (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
411	24	1	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
412	24	2	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
413	24	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
414	24	4	<p>Chilly (GL-Z)\n<br />Hot (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
415	24	5	<p>Thirsty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
416	24	6	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
417	24	7	<p>- Pain (IE-VJ)\n<br />- Slightest noise, voices, steps (IE-VJ)\n<br />- Odours (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
418	24	8	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
419	24	9	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
420	24	10	<p>- If there are no upheavals (Aufruhr) of emotions (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
421	24	11	<p>1. SHARP MEMORY (IE-VJ)\n<br />2. MOOD SWINGS (IE-VJ)\n<br />3. ACHIEVERS (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
422	24	12	<p>- Love for nature (IE-VJ)\n<br />- Can become extremely happy suddenly and extremely sad suddenly i.e. sudden moods swings (IE-VJ)\n<br />- Joy, excitement can make them ill as also sympathy (IE-VJ)\n<br />- SENSITIVE TO: pain, slightest noise, odours, voices, steps (IE-VJ)\n<br />- TOO ACTIVE MIND, TOO ACTIVE MEMORY. In sleep the mind is alert, enough to know that someone has come in the room and picked up things from the table. (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
423	24	13	<p>BOGER (SY-BO):\n<br />- NERVEN; Herz\n<br />- KREISLAUF\n<br />- SEXUALORGANE\n<br />- Frauen</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
424	24	17	<p>- Sharp memory (IE-VJ) (Lach, Op, Coff, Phos, Hyos, Cann-i)\n<br />  -&gt; school days remembered very vividly (MM-GL)\n<br />- Fast brain (Op, Phos, Lach, Hyos, Cann-i) (MM-GL)\n<br />- TOO ACTIVE MIND, TOO ACTIVE MEMORY. \n<br />  In sleep the mind is alert enough to know that someone has come in the room and picked up things from the table. (IE-VJ)\n<br /> \n<br />- Achievers (IE-VJ)\n<br /> \n<br />- Hysterical remedy (PV-I-24.1.17)\n<br />- Excited and depressed very easily (MM-GL)\n<br />- Sudden mood swings (IE-VJ)\n<br />  -&gt; Can become extremely happy suddenly and extremely sad suddenly (IE-VJ)\n<br />- Joy, excitement can make them ill, as also sympathy (IE-VJ)\n<br /> \n<br />- Sleepless because of excitement (MM-GL)\n<br /> \n<br />- Love for nature, fascinated by it (IE-VJ, MM-GL)</p>\n\n<p>- Creative (MM-GL) (Arg-n, Phos, Stann, Stann-i, Stram, Sulph)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
425	24	18	<p>- SENSITIVE TO: pain, slightest noise, odours, voices, steps (IE-VJ)\n<br />- Sleeplessness because of excitement (MM-GL)\n<br />- hyperaesthesia (PV-S-10/14)\n<br />- abdomen: sensitive to touch (PV-S-10/14)\n<br />- senses hyperacute (PV-S-10/14)\n<br />- measles purple (PV-S-10/14)\n<br />- vision acute for small objects (PV-S-10/14)\n<br />- hearing for every step (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
426	24	20	<p>Sharp Mind DD:\n<br /> \n<br />Coff: very sharp memory, recollect old things, vivacious (MM-GL)\n<br />Lach: sensitive to touch, no tight clothing, quick, sharp mind (MM-GL)\n<br />Hyos: needs to tease, incite and play antics (MM-GL)\n<br />Cann-i: need for imagination\n<br /> \n<br /> \n<br />Coff % Coff-t (tosta): (MM-GL)</p>\n\n<p> \n<br />Coff-t is a social worker, wants to gain a good name, excited, benevolence. \n<br />When they do something good, they do it with a lot of excitemen  aa\n<br />Coff-t is more syphilitic.\n<br />Coff-t: excited benevolence, very emotional, not ambitious\n<br />Coff: is very ambitious</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
465	27	9	<p>Sour fruits (IE-VJ)\n<br />Stimulants (IE-VJ)\n<br />Cold drinks (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
466	27	11	<p>1. SHOW OFF (IE-VJ)\n<br />2. HAUGHTY AND EGOISTIC (IE-VJ)\n<br />3. HYPERACTIVE (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
467	27	13	<p>PRAFUL VIJAYAKAR:\n<br />- Nervous system (PV-I-01/15)\n<br />- Autismus (PV-S-10/14, p64 case 6)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
468	27	16	<p>Stram ist komplementär zu Verat (Ambr-S-2013)\n<br /> \n<br />Sycosis dominates syphilis in Veratrum (TAN-I-01/2017)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
521	30	9	<p>Desire sour (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
522	30	10	<p>- If there is no compromising and adjusting (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
523	30	11	<p>1. CARES, WORRIES FULL OF (IE-VJ)\n<br />2. ALWAYS ADJUSTING (IE-VJ)\n<br />3. RECOGNISES BUT DOES NOT MOVE (IE-VJ) = recognizes (situation) but cannot move (change situation)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
524	30	13	<p>FARRINGTON:\n<br />- ZNS, Gehirn, Rückenmark\n<br />- Schwäche in der Wirbelsäule</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
797	50	8	<p>Non-diligent (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
434	25	7	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
435	25	8	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
436	25	9	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
438	25	13	<p>PRAFULL VIJAYAKAR:\n<br />- Nerve remedy (I-PV-2015)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
439	25	14	<p>Mosch (MM-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
441	25	18	<p>- analgesia (PV-S-10/14)\n<br />- eruptions or rash purple on face (PV-S-10/14)\n<br />- diplopia (PV-S-10/14)\n<br />- hearing: rumpling of paper (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
442	25	19	<p>- Hyperactive (MM-GL)\n<br />- Children who are constantly active. They tease, incite, try to make you angry, are shameless, mischievous, and at the same time are very naïve, they tell the plain truth  (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
443	25	20	<p>Hyos %: need to tease, incite and play antics (MM-GL)\n<br />Coff: very sharp memory, recollect old things, vivacious (MM-GL)\n<br />Lach: sensitive to touch, no tight clothing, quick, sharp mind (MM-GL)\n<br />Cann-i: need for imagination</p>\n\n<p>Psora: % Stram               % Bell                % Hyos\n<br />         Fearful               Affectionate          Naughty\n<br />         Timid                 Angry                 Sharp brained\n<br />         Angry                                       Prankster (Witzbold)</p>\n\n<p>Hyos % Mosch</p>\n\n<p>Excessive laughter: Hyos could control it but does not want to or not bother to (syk) % is unable to control laughter (syp)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
444	25	21	<p>- Naughty (IE-VJ)\n<br />- Sharp brained (IE-VJ)\n<br />- Prankster (IE-VJ) (Witzbold)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
445	26	1	<p>Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
446	26	2	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
447	26	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
448	26	4	<p>Hot (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
449	26	5	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
450	26	6	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
451	26	7	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
452	26	8	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
453	26	9	<p>Sweets (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
454	26	11	<p>1. EVERY THING IS EXAGGERATED ... (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
456	26	20	<p>Cann-i %: need for imagination (MM-GL)\n<br />Lach: sensitive to touch, no tight clothing, quick, sharp mind (MM-GL)\n<br />Hyos: need to tease, incite and play antics (MM-GL)\n<br />Coff: very sharp memory, recollect old things, vivacious (MM-GL)</p>\n\n<p> \n<br />% Cann-i: fancies, science oriented - in syc fancies pleasant (MM-GL)\n<br /> \n<br />% Cann-s: mind is weak, more sexual fancies, GO, no mental strength (MM-GL)\n<br />loving, maternal, giving (PV-I-01/2017)\n<br /> \n<br />% Cimic: always talking about her house, children, talk bombast and worthless (hysterical) (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
469	27	17	<p>- Extroverted - Loud talker (IE-VJ, p 21)\n<br />- Thinks fast (TAN-I-01/2017)</p>\n\n<p> \n<br />- Show off (talks, dressing-up, habits, hight living) (IE-VJ)\n<br />- go on stage (PV-S-10/14)\n<br />- Talk big (IE-VJ)\n<br />- Haughty, Egoistic (IE-VJ)\n<br />- Dominating, dictatorial (PV-I-01/2015)\n<br />- Veart is the king. Trys to convince the others that he is the king (Viji-S-2010)\n<br />- Veart wird sich nie einer Wahl stellen, weil er Angst hat zu verlieren. Könnte Verlust des guten Namens heissen (Viji-S-2010)\n<br />- Look down upon others (IE-VJ)\n<br /> \n<br />- Money and position are important (IE-VJ)\n<br />- Love grandeur, cars, expensive hotels... (IE-VJ)\n<br />- High standards of living, high society, can not bear his position compromised, branded products... (IE-VJ, p 54)\n<br /> \n<br />- Censorious, critical (IE-VJ)\n<br />- Want to be in power (IE-VJ)\n<br /> \n<br />- Hyperactive (MM-GL)\n<br />- Mischievous (MM-GL)\n<br />- Mocking (IE-VJ, p86)\n<br />- Hysterical (Hot&amp;Thirsty Pred Notiz)\n<br />- Panic attacks, with rage (Ambr-S-10/2013, p8)\n<br />- embarrassment (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
470	27	20	<p>Caust % Verat (PV-I-01/15):\n<br />Caust: open revolting  / Verat: you will know he is dominating you</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
471	27	21	<p>- Lively (MM-GL)\n<br />- Smiling (MM-GL)\n<br />- Loquatious (MM-GL)\n<br />- Affectionate (MM-GL)\n<br />- Industrious (MM-GL)\n<br />Causa: mortification, wounded honour, pecuniary loss, ambition, deceived (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
472	27	22	<p>- Extroverted (GL-Z)\n<br />- Survival from loss of position (MM-GL)\n<br />- Show: great person, king, boasting, extravagance, squanders money, affectation (MM-GL)\n<br />- Squanderer (Vergäuder) (GL-Z)\n<br />- Liar (MM-GL)\n<br />- Feigning sickness (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
473	27	23	<p>- Violent rage (MM-GL)\n<br />- Insanity (MM-GL)\n<br />- Shameless (MM-GL)\n<br />- Slander (Beschimpfen) (GL-Z)\n<br />- Roving about senseless (MM-GL)\n<br />- Recognises no one (MM-GL)\n<br />- Delirium he is christ (MM-GL)\n<br />- Delirium that he is in communication with god (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
474	28	1	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
475	28	2	<p>Safety (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
476	28	3	<p>Fast (MM-GL), quick acting (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
477	28	4	<p>Ambithermal (IE-VJ)\n<br />(Affected by hot and cold)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
480	28	7	<p>Odours (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
481	28	8	<p>Non-Conscientious, Non-Diligent (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
482	28	9	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
484	28	11	<p>1. REBELLIOUS, REVOLTING (IE-VJ, p 53) - There is a Merc type that is not!!! (PV-I-01/2015)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
486	28	13	<p>BOGER (BO-SK):\n<br />- BLUT\n<br />- SCHLEIMHÄUTE\n<br />- DRÜSEN: Wangen, Speichel, Tonsillen, Hals, Lymphatische, Leber, Nieren, Schleim\n<br />- GENITALIEN\n<br />- ZELLGEWEBE\n<br />- GELENKE\n<br />- Knochen, Haut</p>\n\n<p> \n<br />PRAFULL VIJAYAKAR:\n<br />- More psor and syc pathology, more inflammation (Ambr-S-10/13)\n<br />- Ulcerations, destruction of tissues, nerv demyelisation (Ambr-S-10/13)\n<br />- NO FORMATION OF CANCER - If, then in the glands (enlarged lymph nodes) (Ambr-S-10/13)\n<br />- HEART PROBLEMS (PV-I-01/15) (cured a lot of heart problems)\n<br />- Congenital heart disease, VSD (Sulph, Sul-i, Merc, Lach) (I-Ambr-2015, p121)</p>\n\n<p> \n<br />Susceptible systems:\n<br />- psor: digestive system (sudden, profuse diarrheas) (Ambr-S-10/13)\n<br />- syc: cardio vascular mesenchymal lesion -&gt; enlarged heart (Ambr-S-10/13)\n<br />- syp: nervous system, mind (jerks, convulsions, chorea) (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
487	28	16	<p>Neither a metal nor a liquid (Ambr)\n<br />Merc can not from tumors - is not effective with tumors (Ambr)\n<br /> \n<br />Cases stucked up with Staph often work with Merc (PV-I-01/15)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
489	28	18	<p>- Tough and thick hair (MM-GL)\n<br /> \n<br />- Excessive salivation and perspiration ++ (IE-VJ)\n<br />- Thirsty -&gt; desire for cold drinks (MM-GL)\n<br />- Restless, hyperactive (MM-GL)\n<br /> \n<br />&lt; Night (Ambr)\n<br />- slight touch agg. (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
512	29	23	<p>Non-conscientous (Ambr-S-11/2015, p 30)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
513	30	1	<p>2nd Extro &amp; intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
514	30	2	<p>Love (GL) \n<br />Support (PV-S-11/10)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
515	30	3	<p>Slow (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
516	30	4	<p>Chilly (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
517	30	5	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
518	30	6	<p>Left (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
519	30	7	<p>- Motion (IE-VJ)\n<br />- Rudeness (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
520	30	8	<p>Non-conscientious, non-diligent (IE-VJ, p83+92)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
491	28	20	<p>(Ambr-S-10/13)      Merc                         %        Caust</p>\n\n<p>Strong (metal)                                   /       timid (minearl)\n<br />Defiant, contrary                                /       quarrelsome\n<br />Revolting, refuses submission to authority       /       fights against injustice\n<br />Fights for self                                  /       fights for others\n<br />Intelligent, manipulatiev, wants to win          /       Ardently fighting for a cause\n<br />Miasm: syk - syp                                 /       Syk</p>\n\n<p>PATHOLOGY: induration, chron. inflammation       /       Spasm, destruction of nervous-system, bladder, sphincters. \n<br />           chron. growth                                 Rarely destruction on higher level</p>\n\n<p>Merc % Merc-i: angry and very direct, does not care of others % very sensitive (Iod element)\n<br /> \n<br />MOULDING (PV-I-01/15):\n<br />Carc: changes in what parents want\n<br />Merc, lyc: to timid to rebel, but not happy with domination. As soon as married (-&gt; have support) they fight father/mother</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
494	28	23	<p>- REBELLIOUS (Ambr-S-10/13)\n<br />- CHAOS, Directionless, no control (Ambr)\n<br />- Aversion familiy member, loved ones (Ambr-S-10/13)\n<br />- DISGUST -&gt; Nausea (Ambr-S-10/13)\n<br />- Control lost on (Ambr-S-10/13)\n<br />- Memory weak (Ambr)\n<br />- Insanity (Ambr)\n<br />- Moral affection, criminal, desire to kill (Ambr)\n<br /> \n<br />BODY\n<br />- Thin (MM-GL)\n<br /> \n<br />- Nervous system, mind (jerks, convulsion, chorea) (Ambr-S-10/13)\n<br />- Ulcerations, destruction of tissues, nerve-demyelination</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
495	29	1	<p>2nd Extro &amp; intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
496	29	2	<p>Love &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
497	29	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
498	29	4	<p>Hot (IE-VJ) and Chilly (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
499	29	5	<p>Not specific (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
500	29	6	<p>Left (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
501	29	7	<p>- Very sensitive to scolding (PV-I-01/17)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
502	29	8	<p>Diligent, conscientious (IE-VJ, p 91)\n<br /> \n<br />Syp: Non-conscientous (Ambr-S-11/2015, p 30)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
503	29	9	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
504	29	10	<p>- If she has anger to the person that dominated her (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
505	29	11	<p>1. SENSITIVE TO RUDNESS (IE-VJ)\n<br />2. ARTISTIC (IE-VJ)\n<br />3. H/O DOMINATION (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
506	29	12	<p>- Loves nature, pets (IE-VJ)\n<br />- Loves small gifts, show pieces (IE-VJ)\n<br />- Loves soft toys (IE-VJ)\n<br />  -&gt; because they are sensitive to rudeness and they don't want to get hurt (IE-VJ)\n<br />- Soberness, is out of being moulded (geformt) into a sober person by someone or guarded circumstances (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
508	29	18	<p>- Veins prominence all over the body, green colour (I-2015-Viji-Zinc-p)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
509	29	20	<p>Carc % Sep: Suppressed by dominating parents -&gt;  adapts and moulds itself % Sep. complains about situation (MM-GL)\n<br /> \n<br />MOULDING (PV-I-01/15):\n<br />Carc: changes in what parents want\n<br />Merc, lyc: to timid to rebel, but not happy with domination. As soon as married (-&gt; have support) they fight father/mother\n<br /> \n<br />Carc % snakes:\n<br />Carc very sensitive to scolding / snake does not react at the scolding (case PV-I-23.01.2017, Elaps)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
510	29	21	<p>- Anticipation (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
511	29	22	<p>- Beatuy, creative art (MM-GL)\n<br />- Fastidious (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
525	30	17	<p>- Introverted - Timid (IE-VJ)\n<br />- Introverted - Quiet, sober and graceful (IE-VJ, p 92)\n<br /> \n<br />- Timid (IE-VJ)\n<br />- Always adjusting, when emotionally hurt, they go on yielding, covering up, compromising and adjusting because of timidity (IE-VJ)\n<br />- Recognizes (situation) but does not move (change situation) (IE-VJ)\n<br />- If we see a patient, who recognizes or realizes what he has to do but does not work towards it, you can take this rubric (MM-GL)\n<br />REP = MIND/Recognize/everything, but cannot move, in catalepsy (cocc, sang)\n<br /> \n<br />- Sensitive to rudeness (IE-VJ)\n<br /> \n<br />- Anticipatory Anxiety (IE-VJ)\n<br />- Cares, worries full of. Always nursing the sick and will even nurse people who have hurt them (IE-VJ)\n<br />- Anxiety of concience (Syp) (IE-VJ)\n<br /> \n<br />- Dullness (dummheit, dumpfheit) of mind (IE-VJ)\n<br />- Contented - desires nothing (IE-VJ)\n<br /> \n<br />- Discouraged easily (IE-VJ), hopeless (MM-GL)\n<br />- Discontented with self (Syp) (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
526	30	18	<p>- Desires Sour (MM-GL)\n<br /> \n<br />- Sensitive to motion (MM-GL)\n<br />- Sensitive to fast movements, which lead to vertigo (IE-VJ)(They accommodate and accommodate mentally but then the muscles of the eyes cannot adjust therefore they develop vertigo (MM-GL))\n<br /> \n<br />- Cannot sit in merry-go-rounds (Karussell) (IE-VJ)\n<br /> \n<br />- Like paralyzed. Muscles cannot adjust (MM-GL)\n<br />- Analgesia, parts affected (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
527	30	20	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
528	30	23	<p>- Discontented with self (IE-VJ)\n<br />- Anxiety of concience (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
529	31	1	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
530	31	2	<p>Esteem (Ambr-S-11/2015)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
531	31	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
532	31	4	<p>Chilly (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
533	31	5	<p>Thirsty (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
534	31	6	<p>Left (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
535	31	7	<p>Light, noise (cracking paper), talking, voices of people, music (piano), liver sensitive to clothes (Ambr)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
536	31	8	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
537	31	9	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
590	35	2	<p>Support &amp; Respect (GL)\n<br />image conscious (esteem) (NI-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
539	31	13	<p>PRAFUL VIJAYAKAR:\n<br />- Nerve remedy (I-2015-Viji-Zinc-p)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
542	31	18	<p>- Nerve affection and brain affection is predominant (MM-GL)\n<br />- Because of the weak nerves there is constant trembling of legs (MM-GL)\n<br />- Tendency to encephalitis, esp. after suppressed skin eruptions (MM-GL)\n<br />- Liver sensitive to clothes (mens during) (Ambr)\n<br />- Weak neck and back (Ambr)\n<br />- Sensitive to milk (Ambr)\n<br />- discoloration of skin: green (PV-S-10/14)\n<br />- hearing: rumpling of paper (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
543	31	19	<p>- Concentration difficult (MM-GL)\n<br />- Dullness (MM-GL)\n<br />- Restless like Calc-p and Tub (Ambr)\n<br />- Excessive physical stamina (Ambr)\n<br />- Like to race with cars and bikes (Ambr)\n<br />- Sensitive back, testies, penis, vagina (Ambr)\n<br />- Physical sensitivity like NUX-V (Ambr)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
544	31	20	<p>Petr % Zinc: affection of parietal lobe (in syp has a state of confusion) / affection of frontal and temporal lobe (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
545	32	1	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
546	32	2	<p>Safety (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
547	32	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
548	32	4	<p>Hot &amp; Chilly (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
549	32	5	<p>Thirst or Thirsless (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
550	32	6	<p>Left (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
551	32	7	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
552	32	8	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
553	32	9	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:19
554	32	11	<p>- Ulcerative (Ambr)\n<br />- Destructive pathology (Ambr)\n<br />- Severe pathology (Ambr)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
555	32	13	<p>PRAFULL VIJAYAKAR:\n<br />- Syc-syp (Ambr-S-10/13)\n<br />- Deep destruction, ulcerative process (Ambr-S-10/13)\n<br />- Typical are destruction of the platelets (Ambr-S-10/13)\n<br />- Destruction of connctive tissue (Ambr-S-10/13)\n<br />- Eyes: retina, vision, retinitis pigmentosa, retinal detachment, ulceration (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
556	32	16	<p>Chemical formula: HgCL\n<br />Names: Bichloride of mercury; corrosive sublimate</p>\n\n<p>Mercurius dulcis = HgCl \n<br />Names: Calomel</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
557	32	17	<p>See Mercuries\n<br /> \n<br />- They often are quiet people, not outspoken, they don't engage in verbal conflict (Ambr-S-10/13)\n<br />- Have a stable personality, only the pathology reflects the destructivness (Ambr-S-10/13)\n<br />- Revolting (MM-GL)\n<br />- Attacking directly (MM-GL)\n<br />- Extreme impatient and hurried (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
558	32	18	<p>- Metallic voice, like through a metallic tube (syp) (MM-GL)\n<br /> \n<br />- Tenesmus, spasm (MM-GL)\n<br />- Ulcerative, destructive pathology (Ambr)\n<br />- Destruction of connctive tissue (Ambr-S-10/13)\n<br />- Eyes: retina, vision, retinitis pigmentosa, retinal detachment, ulceration (Ambr-S-10/13)\n<br />- dark green stools (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
559	32	20	<p>Merc-c % Merc sol: will have blood, excoriation, deeper destruction as Merc-sol % only to extent of inflammation, stickness (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
560	33	1	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
561	33	2	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
562	33	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
563	33	4	<p>Hot (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
564	33	5	<p>Thirsty or Thirstless (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
565	33	6	<p>Right (Ambr)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
566	33	7	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
567	33	8	<p>Diligent (Ambr-S-10/13)\n<br />Artistic, creative (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
568	33	9	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
569	33	11	<p>- Destructive pathology-&gt; growth / glandular (Ambr)\n<br />- Diligent (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
570	33	13	<p>PRAFUL VIJAYAKAR:\n<br />- Destructive glandular growth pathology (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
571	33	16	<p>Chemical formula: Hg2 I2 (or Hg I)\n<br />Names: Protoiodid of Mercury</p>\n\n<p>Merc-i-r = Hg I2</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
572	33	17	<p>See Mercuries\n<br />- Diligent (Ambr-S-10/13)\n<br />- Artistic, creative (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
573	33	18	<p>- Destructive, Growth/ Glandular pathology right (Ambr)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
574	33	20	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
575	34	1	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
576	34	2	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
577	34	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
578	34	4	<p>Hot (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
579	34	5	<p>Thirsty or thirstless (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
580	34	6	<p>Left (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
581	34	7	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
582	34	8	<p>Diligent (Ambr-S-10/13)\n<br />Businessminded (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
583	34	9	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
584	34	11	<p>- Destructive pathology -&gt; growth / glandular left side (Ambr)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
585	34	13	<p>PRAFUL VIJAYAKAR:\n<br />- Destructive glandular growth pathology (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
586	34	16	<p>Bemerkung = Mercurius bijodatus, Hydrarg. bijodatum rubrum, Quecksilberjodid (vpfl. &lt; D4)</p>\n\n<p>Chemical formula: Hg I2\n<br />Names: Biniodide of mercury</p>\n\n<p>Merc-i-f = Hg2 I2 (or Hg I)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
587	34	17	<p>Siehe Mercuries\n<br />- Diligent (Ambr-S-10/13)\n<br />- Businessminded (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
588	34	20	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
589	35	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
591	35	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
594	35	6	<p>Left and right (IE-VJ, p 90)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
595	35	7	<p>consolation agg. (NI-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
596	35	8	<p>Conscientious (GL-Z), Diligent (IE-VJ, p 83)\n<br /> \n<br />Syp: Non-conscientous (Ambr-S-11/2015, p 30)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
597	35	9	<p>don't like warm food (NI-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
598	35	10	<p>- If intelligence and diligence is lacking (student throughout his life) (PHL)\n<br />- If no anticipatory anxiety (C -&gt; PV-S-11/10, p 24)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
601	35	13	<p>PRAFULL VIJAYAKAR:\n<br />- Lymphatic system (MM-GL)\n<br />- Venous system (MM-GL)\n<br />- Skin (Ambr 2013)\n<br />- Bones (Ambr 2013)\n<br />- GI (Ambr 2013)\n<br />- Connective tissue (Ambr 2013)\n<br /> \n<br />BOGER (BO-SK):\n<br />- Ernährung. KINDER\n<br />- Gewebe: ELASTISCHES, BINDEGEWEBE\n<br />- NERVEN. DRÜSEN\n<br />- RÖHREN: Eustachische Tube, Tränengänge, usw.. Fisteln\n<br />- KNOCHEN. Knorpel\n<br />- Schleimhäute\n<br />- HAUT</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
602	35	14	<p>BOGER (BO-SK):\n<br />- FOLGEMITTEL: calc, hep\n<br />- ERGÄNZEND: fl-ac, phos, thuj\n<br />- VERWANDT: calc, hep, kali-p\n<br />- Lyc: syk-syph (not in psora) (NI-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
603	35	16	<p>- Slow remedy (U)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
605	35	18	<p>- Short, stunted (unterentwickelt) (MM-GL)\n<br />- Thin Hair (MM-GL)\n<br />- Red bloated face (IE-VJ)\n<br /> \n<br />- Desires raw vegetables (IE-VJ)\n<br />- Aversion cooked food and milk (IE-VJ)\n<br /> \n<br />- Heat in head with coldness of palms and soles (thought chilly) (IE-VJ)\n<br />- Perspiration more neck and palm (MM-GL)\n<br />- Rough hands (Alum, Brom, Sil, Calc, Fl-ac, Graph, Petr (with cracks)) (MM-GL)\n<br />- Severe constipation (MM-GL)\n<br />- Sil. covers more of the lymphatic and venous system (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
606	35	20	<p>Sil % Staph: \n<br />conscientious / conscientious and goes on telling people what they are doing (MM-GL)\n<br /> \n<br />Ign % Sil: (MM-GL, Bombay 2012)</p>\n\n<p>Food:       Desire war food, &gt;       / Desire warm food, &lt;\n<br />Interests:  Likes literature         / Likes mathematics, likes counting\n<br />Posture:    Sits stoops (gebeugt)??? / Sits erect \n<br />Position:   is very important for Ign, A/F loss position / is not important (Ambr)\n<br />Performance:                         / very important for Sil -&gt; anxiety performance (Ambr)</p>\n\n<p>Site of pathology is different in Ign and Sil (Ambr).\n<br />Ign = nerves, mind, brooding, hysteria\n<br />Sil = GI, Skin, bones, connective tissue</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
607	35	21	<p>- eruptions (NI-2014)\n<br />- perspiration (NI-2014)\n<br />- coldness(NI-2014)\n<br />- softness (NI-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
608	35	23	<p>Non-conscientous (Ambr-S-11/2015, p 30)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
609	36	1	<p>2nd Extro &amp; intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
610	36	2	<p>Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
611	36	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
612	36	4	<p>Chilly (MM-GL) (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
613	36	5	<p>NOT thirsty (MM-GL)(PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
614	36	6	<p>Right (P-S-11/10, p 28)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
615	36	7	<p>- A/F contradiction (PV-S-11/10)\n<br />- Loss of the postition (PV-S-11/10)\n<br />- Humiliation (PV-S-11/10)\n<br />- Consolation &lt;&lt; (PV-S-11/10)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
616	36	8	<p>Conscientious (GL-Z), diligent (IE-VJ, p 83)\n<br /> \n<br />Syp: Non-conscientous (Ambr-S-11/2015, p 30)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
617	36	9	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
618	36	10	<p>Roule out if person is (MM-GL):\n<br />- rude, aggressive\n<br />- non-conscientious &amp; non-diligent\n<br />- hot\n<br />- expressive about her feelings\n<br />- cannot keep anybody’s secret\n<br />- gossiping\n<br />- shares about her emotions with everyone\n<br />- likes consolation\n<br />- not sensitive, emotionless</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
619	36	11	<p>1. GODD GIRL (IE-VJ)\n<br />2. SITS ERECT (IE-VJ)\n<br />3. A/F HURT (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
620	36	12	<p>- Lean, thin, long face (IE-VJ)\n<br />- A/F loss of position (IE-VJ)\n<br />- A/F grief (PV-S-10/14)\n<br />- Emotional, sad type (IE-VJ)\n<br />- Angry (IE-VJ)\n<br />- Studious (IE-VJ)\n<br />- Sits without support (erect) (IE-VJ)\n<br />  &lt; Contardiction (IE-VJ)\n<br />  &lt; Consolation (IE-VJ)\n<br />- Soberness out of diligence / esteem (IE-VJ)\n<br />- Anxiety comes suddenly at night between 2 and 5 am (IE-VJ)\n<br />- Hungry after fever (IE-VJ)\n<br />- Desires hot food (IE-VJ)\n<br />  &gt; Raw food, hot food (IE-VJ)\n<br /> \n<br />- Often when we think of metals, think also of Ign. (Ambr 02/2016)\n<br />  DD: Ign = esteem, postition is important / Metals = Responsibility, duty, esteem\n<br />- CHANGEABILITY (PV-S-10/14)\n<br />- TOLERANT (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
621	36	13	<p>BOGER (SY-BO):\n<br />- GEMÜT\n<br />- NERVENSYSTEM\n<br />- ZEREBROSPINALE ACHSE\n<br /> \n<br />Prafull Vijayakar:\n<br />- Bones (esteem)(syc) (Ambr 02/2016)\n<br />- no pathology involved (PV-S-10/14)\n<br />- Nerves (Ambr 2013)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
622	36	14	<p>Similar to Naja (Ambr-S-10/13, p 49)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
623	36	16	<p>- Sulph is often the genetic similimum for Arnica-state-patients (also: Calc, Nux-v after antibiotics; Ferr after Chinin, Ign, Cham) (see MM-GL Arn)\n<br />- WANDERING complaints (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
659	38	10	<p>- If the person never suffered from headache (PHL)\n<br /> \n<br />- IN ACUTE: if redness of the face is missing (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
660	38	11	<p>1. GOOD LOOKING, CHARMING (IE-VJ, p 54)\n<br />2. RED CONGESTED FACE (IE-VJ, p 54)\n<br />3. SUDDENNESS, VIOLENT SYMPTOMS (IE-VJ, p 54)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
691	40	1	<p>Extro  (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
692	40	2	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
625	36	18	<p>- Lean, thin, long face (IE-VJ)\n<br />- Desires hot food -&gt; and &gt; (IE-VJ)\n<br />&gt; Raw food (IE-VJ)\n<br />- Hungry after fever (IE-VJ)\n<br /> \n<br />- Spotty pain (MM-GL)\n<br />- eye: movement lids convulsive/spasmodic (PV-S-10/14)\n<br />- hyperaesthesia (PV-S-10/14)\n<br />- senses hyperacute (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
626	36	19	<p>- Wollen die Nr. 1 sein (Simon)\n<br />- In der Schule Streberinnen (Simon)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
627	36	20	<p>Ign % Sil: (MM-GL)</p>\n\n<p>Food:       Desire warm food, &gt;       / Desire warm food, &lt;\n<br />Interests:  Likes literature         / Likes mathematics, likes counting\n<br />Posture:    Sits stoops (gebeugt)??? / Sits erect \n<br />Position:   is very important for Ign, A/F loss position / is not important (Ambr)\n<br />Performance:                         / very important for Sil -&gt; anxiety performance (Ambr)</p>\n\n<p>Site of pathology is different in Ign and Sil (Ambr).\n<br />Ign = nerves, mind, brooding, hysteria\n<br />Sil = GI, Skin, bones, connective tissue \n<br /> \n<br />DD Nat-m - Ign\n<br />is more sentimental / lot of esteem, A/F contradiction, loss of position...</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
628	36	21	<p>- Very very good girls (MM-GL)\n<br />- Very, very diligent (MM-GL)\n<br />- Obedient (MM-GL)\n<br />- They don't laugh much (MM-GL)\n<br />- They don't communicate much (MM-GL)\n<br />- Answers to the point, very sober (MM-GL)\n<br />- They fall ill if somebody in class marked better than her (MM-GL)\n<br />- A/F loss of rank, position (MM-GL)\n<br />- The always come after the results of the exams are out (MM-GL)\n<br /> \n<br />- Lean, thin (MM-GL)\n<br />- Long tapering face (MM-GL)\n<br />- Sensitive eyes (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
629	36	22	<p>- Completely different to psor Ign (MM-GL)\n<br />- Very positive, very courageous (broods against the responsible person) (MM-GL)\n<br />- Sensitivity still remains but now they good person (MM-GL)\n<br />- Grief  (GL-Z)\n<br />- Intellectual (GL-Z)\n<br /> \n<br />- Rounded face, stout with hardly any neck, fat (MM-GL)\n<br />- Psoriasis (MM-GL)\n<br /> \n<br /> \n<br />-&gt; Pathology often bones (Ambr-S-02/2016)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
630	36	23	<p>- Hysterical  (GL-Z) (Ambr-S-02/2016)\n<br />- Crying, weeping, offended easily, A/F grief (MM-GL)\n<br />- Offended easily (MM-GL)\n<br />-  A/F grief (MM-GL)\n<br /> \n<br />- Non-conscientous (Ambr-S-11/2015, p 30)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
631	37	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
632	37	2	<p>Love &amp; Support (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
633	37	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
634	37	4	<p>Changeable (IE-VJ)\n<br />Hot (MM-GL, IE-VJ, p 95)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
635	37	5	<p>Changeable (IE-VJ)\n<br />NOT thirsty (MM-GL)\n<br />Can be very thirsty in syp (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
636	37	6	<p>Left (MM-GL)\n<br />Right (syk) (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
637	37	7	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
638	37	8	<p>Non-conscientious (MM-GL) / non-diligent (IE-VJ, p 83)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
639	37	9	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
640	37	10	<p>- If there is desire for warm food and drinks (IE-VJ)\n<br />- If not weeping type and dependent from others (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
641	37	12	<p>- Changeable modalities and symptoms, even thermals and thirst (IE-VJ)\n<br />- Desires consolation (IE-VJ)\n<br />- Mild, Meek, weeping, child wants mother near (IE-VJ)\n<br />- Diarrhoea from rich food, heavy, fried food (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
642	37	14	<p>If we think of Puls also we think of Camph! (MM-GL)\n<br /> \n<br />Camph (MM-GL), Phos (SkHZ), Nat-m (SkHZ), Sil (SkHZ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
643	37	16	<p>SIGNOR STANGA (04.12.13):\n<br />Hahnemann hat immer Puls Pratensis gebraucht und geprüft.\n<br />Heutzutage ist allerdings die Blume puls pratensis sehr schwierig zu finden, weil es auf den Fäldern fast keine mehr hat.\n<br />Schmidt-Nagel macht nur noch Puls vulgäres, seit ca 15-20 Jahren, fast niemand hat mehr pratensis.\n<br />80-90% von den Homöopathen brauchen vulgaris. Diese wurde aber nie geprüft! Spannend!\n<br /> \n<br />Complements: Puls – Bar-s – Kali –s – Lac-c\n<br />Complements: Calc-m - Puls</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
644	37	17	<p>- Introverted - Timid (IE-VJ)\n<br />- Introverted - AWOTA (angry when obliged to answer) (IE-VJ, p 85)\n<br />- Introverted - sad and melancholic  (IE-VJ, p 95)\n<br /> \n<br />- Yielding (nachgiebig), mild, meek (demütig) (MM-GL)\n<br />- Timid. Weak willed (MM-GL)\n<br />- Dependent on others (Ambr-S-10/13)\n<br />- Weeping type (Ambr-S-10/13)\n<br />- Mischievous (MM-GL)\n<br />- Selfish\n<br />- Hysterical (MM-GL)\n<br />- Sentimental (MM-GL)</p>\n\n<p>- Wants consolation. A crying form of want for sympathy (MM-GL)\n<br />- CHANGEABILITY: never right when symptoms are always the same (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
645	37	18	<p>- Has rarely sharp features. Insecurity is the base of Puls., so it is bound to go into Sycosis. --&gt; Rounded features (MM-GL)\n<br />- Inflammation on the left side, indurations on the right side (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
646	37	20	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
647	37	21	<p>- Mild, yealding, weeping  (GL-Z)\n<br />- Left sided (MM-GL)\n<br />- NOT thirsty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
648	37	22	<p>- Dominating, selfish  (GL-Z)\n<br />- Right sided (MM-GL)\n<br />- Tumours (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
649	37	23	<p>- Can be very thirsty in syp (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
650	38	1	<p>Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
651	38	2	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
652	38	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
653	38	4	<p>Chilly with heat in the body (Cham) (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
654	38	5	<p>NOT thirsty (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
655	38	6	<p>Right (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
656	38	7	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
657	38	8	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
658	38	9	<p>Lemon (IE-VJ)\n<br />Loves lemonades (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
662	38	14	<p>Morph (MM-VJ), Tub (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
663	38	16	<p>- Severity. Violent pains and symptoms (MM-GL)\n<br /> \n<br />Complements: Calc-c - Bell (Sim 24.1.14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
665	38	18	<p>- Good looking, pleasant face, attractive (Phos, Carc, Pall, Choc, Hyos) (IE-VJ)\n<br />- Reddish face, because of congestion (IE-VJ)\n<br /> \n<br />- ACTIVE BLEEDER (MM-GL), bright blood, arterial, profuse, gushing and heat of the mark which bleeds, hot blood, clotty (bleeding stops and goes, the gulsing will pulsate)(PV-S-10/14)\n<br />- Eyes become red and bloodshot  (IE-VJ)\n<br />- Congestive headache (IE-VJ)\n<br />- Throbbing (Herzklopfen) (MM-GL)\n<br />- hyperaesthesia (PV-S-10/14)\n<br />- slight touch agg. (PV-S-10/14)\n<br />- senses hyperacute (PV-S-10/14)\n<br />- measles purple (PV-S-10/14)\n<br />- vision distorted, sparks (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
666	38	19	<p>- Child does not even come into the room of doctor (Ambr-S-10/13, p 44)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
668	38	21	<p>- Affectionate (IE-VJ)\n<br />- Angry (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
669	38	23	<p>- Delirium, mainly sees insects, any insects (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
670	39	1	<p>Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
671	39	2	<p>Support (MM-GL, Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
672	39	3	<p>Fast (IE-VJ)\n<br />Speedy, intense, exalted (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
673	39	4	<p>No thermals because is hysterical remedy (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
674	39	5	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
675	39	6	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:20
676	39	7	<p>- hates bright light (PV-S-10/14)\n<br />- hates sudden darkness (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
677	39	8	<p>Conscientious (PV-I-01/15), Diligent (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
678	39	9	<p>Lemonades (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
679	39	10	<p>- If there is no panic in fearful situation (IE-VJ)\n<br /> \n<br />QUESTIONS:\n<br />- DO you have some objects with you (clinging)? (PV-I-01/15)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
680	39	11	<p>1. PANIC, FEARFUL (IE-VJ, p54)\n<br />2. PRANCKY (Streiche) (IE-VJ, p54)\n<br />3. MAKES VERSES (IE-VJ, p54)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
681	39	12	<p>- Panic (IE-VJ)\n<br />- Fearfull and timid (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
682	39	13	<p>PRADULL VIJAYAKAR\n<br />- Nerve remedy (I-PV-2015)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
683	39	14	<p>Hyos, Bell (MM-VJ), Morph (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
684	39	16	<p>Stram ist komplementär zu Verat (Ambr-S-2013)\n<br />- out of control (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
729	43	13	<p>PRAFUL VIJAYAKAR:\n<br />- Respiratory tract (Ambr-S-10/13, p31)\n<br />- Skin (Ambr-S-10/13, p31)\n<br />- Connective tissue (Ambr-S-10/13, p31)\n<br />- Anger leads to constriction -&gt; Asthma (Ambr-S-10/13, p31)\n<br /> \n<br />-&gt; Does not go into proliferation (PV-I-28.1.17)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
730	43	14	<p>Magn (Ambr)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
731	43	16	<p>HURT -&gt; REGRESSION, BROODING, SELF-REPROACH (all Natriums, calc-m, mur-ac) (Ambr-S-10/13)\n<br />- SAD-INTROVERTED TYPE (Ambr-S-10/13)\n<br />- ANGRY-INTROVERTED TYPE (Ambr-S-10/13)\n<br />- HYSTERICAL TYPE (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
798	50	10	<p>- If there is no bleeding tendency (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
943	62	16	<p>- goes into fright because of shock (PV-S-10/14)\n<br />- very robust type of people (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
686	39	18	<p>- Loves Lemonades (IE-VJ)\n<br /> \n<br />- Hair on the arms (here again the exaggeration) (MM-GL)\n<br />- Senses acute (Op) (MM-GL)\n<br />- analgesia (PV-S-10/14)\n<br />- fingernails discoloration purple (PV-S-10/14)\n<br />- vision distorted (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
687	39	19	<p>- Child does not even come into the room of doctor (Ambr-S-10/13, p 44)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
688	39	20	<p>Psora:   %Stram               % Bell               % Hyos\n<br />         Fearful, Panik        Affectionate         Naughty\n<br />         Timid                 Angry                Sharp brained\n<br />         Angry                                      Prankster\n<br />         Loquatious                                 Quarrelsome</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
689	39	21	<p>- Fearful (IE-VJ\n<br />- Timid (IE-VJ)\n<br />- Angry (IE-VJ)\n<br />- Sensitive to bright light (IE-VJ)\n<br />- Fear of darkness (IE-VJ)\n<br />- Fast speed (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
690	39	23	<p>- Panik (IE-VJ) = fear out of control\n<br />- Delusion: communicating with god (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
1764	15	22	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:21
694	40	4	<p>Chilly (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
696	40	6	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:21
697	40	7	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:21
698	40	8	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:21
699	40	9	<p>Fruits, vor allem sauer, lemon, orange  (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
701	40	12	<p>- Hasty, quick, hurried  (IE-VJ)\n<br />- Hurry in walking, talking, eating  (IE-VJ)\n<br />- Always occupied  (IE-VJ)\n<br />- Symptoms change (Puls)  (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
702	40	13	<p>BOGER (BO-SK):\n<br />- GI\n<br />- Blood\n<br />- Bloodvessels</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
704	40	18	<p>- Desire for fruits and juices (MM-GL)\n<br /> \n<br />- Injury-remedy (like Acet-ac.), leading to ecchymosis (MM-GL)\n<br />- Spotty pain in changing places (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
705	40	20	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:21
706	41	1	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:21
707	41	2	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:21
708	41	4	<p>Chilly (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
709	41	5	<p>Thirsty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
710	41	6	<p>More Left sided (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
711	41	7	<p>Hypersensitive to pain, touch, cold air, people (MM-GL)\n<br />Extremely sensitive to all impressions (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
712	41	10	<p>- If impulsiveness is missing (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
713	41	11	<p>1. IMPULSIVE (IE-VJ, p 53)\n<br />2. ANGRY (IE-VJ, p 53)\n<br />3. HYPERSENSITIVE (IE-VJ, p 53)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
714	41	13	<p>BOGER (BO-SK):\n<br />- NERVEN\n<br />- BINDEGEWEBE\n<br />- SCHLEIMHÄUTE DER ATEMWEGE\n<br />- Beugen\n<br />- DRÜSEN. Nieren\n<br />- Haut\n<br />- Nasenrücken (kali-bi)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
715	41	16	<p>Hepar sulphuris calcareum = CaS (Calcarea sulphurica = Ca SO4)\n<br /> \n<br />Sulphuret of lime, Kalkschwefelleber</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
716	41	17	<p>- Extreme sensitivity to all impressions (MM-GL)\n<br />- Strong willed (MM-GL)\n<br />- Irritable, angry (MM-GL)\n<br />- Mischievous (MM-GL)\n<br />- Impulsive; beyond control (MM-GL)\n<br />- A/F anger and vexation (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
717	41	18	<p>- Though and thick hair (MM-GL)\n<br />- Constriction (MM-GL)\n<br />- throat, abdomen: sensitive to touch (PV-S-10/14)\n<br />- vision acute for small objects (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
719	43	1	<p>2nd Extro &amp; intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
720	43	2	<p>Love &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
721	43	4	<p>Hot (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
722	43	5	<p>Thirsty (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
723	43	6	<p>Left (MM-GL, Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
724	43	7	<p>- Rudeness (Ambr-S-10/13)\n<br />- Criticism (Ambr-S-10/13)\n<br /> \n<br />- Sun (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
725	43	8	<p>Non-conscientious, non-diligent (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
726	43	9	<p>Craves for salt (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
727	43	10	<p>- If the person likes consolation and is extroverted (PHL)\n<br />- If there is no sensitivity (PHL)\n<br />- If there is no headache from the sun or &lt; sun (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
728	43	11	<p>1. OVER SENSITIVNESS, SENSITIVE TO RUDENESS (IE-VJ)\n<br />2. &lt; CONSOLATION / PITY (IE-VJ)\n<br />3. &lt; SUN\n<br />4. ANGER WHEN OBLIGED TO ANSWER, ALOOF (distanziert), LONER (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
733	43	18	<p>- Short, stunted (MM-GL)\n<br />- Long neck (psor) (MM-GL)\n<br /> \n<br />&lt; Sun (IE-VJ) (Magn - Ambr)\n<br />  -&gt; Headache, weakness, diarrhea, skin irritation... (IE-VJ)\n<br /> \n<br />- Vomiting with fever (IE-VJ)\n<br />- Craves salt (IE-VJ)\n<br />- Lower lip scaly or cracked in the middle (IE-VJ)\n<br />- Respiratory tract affection (Ambr-S-11/2015, p31)\n<br />- measles purple (PV-S-10/14)\n<br />- diplopia (PV-S-10/14)\n<br /> \n<br />- Does not go into proliferation (PV-I-01/17)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
766	47	11	<p>1. REACTION TOO MUCH, TOO FORCEFULL (C from IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
767	47	14	<p>Hyos (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
1765	15	19	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:21
735	43	21	<p>- mild, quiet (PV-I-23.1.17)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
736	43	22	<p>- Open, cheerful, vivacious (PV-I-23.1.17)\n<br />- Exclusive in syc due to sensitivness (IE-VJ)\n<br />- Anger (PV-I-23.1.17)\n<br />- Dictatorial (PV-I-23.1.17)\n<br />- Obesity (PV-I-23.1.17)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
737	43	23	<p>- Indifference to women (MM-GL)\n<br />- Indifference to pleasure (MM-GL)\n<br />- Insanity (PV-I-23.1.17)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
738	45	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
739	45	2	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:21
740	45	4	<p>Chilly, with heat in the body (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
741	45	5	<p>Thirsty (IE-VJ, p87)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
742	45	6	<p>Right (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
743	45	11	<p>1. ANGRY, SARCASTIC AND RUDE (IE-VJ)\n<br />2. ANGER, REDNESS OF FACE WITH (IE-VJ)\n<br />3. HATES MUSIC SAD AND ANGRY (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
745	45	16	<p>- Sulph is often the genetic similimum for Arnica-state-patients (also: Calc, Nux-v after antibiotics; Ferr after Chinin, Ign, Cham) (see MM-GL Arn)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
746	45	17	<p>- Introverted - Sarcasm (IE-VJ, p 87)\n<br /> \n<br />- Anger, redness of face with (IE-VJ)\n<br />- Angry and fearful (Ambr-S-10/13, p 44)\n<br />- Easily angered, violent anger, sarcastic, rude and uncivilized behaviour (IE-VJ)\n<br />- Irritable (MM-GL)\n<br />- Very impatient (MM-GL)\n<br />  -&gt; patient insists that the doctor cures him at once (MM-GL)\n<br />  -&gt; every thing goes to slowly (MM-GL)\n<br />- Pain causes anger and impatience (IE-VJ)\n<br />- Adults want continuos help (children want to be carried) (IE-VJ)\n<br />- Don't like attention (MM-GL)\n<br />- Mischievous (MM-GL)\n<br />- Hates music sad and angry (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
747	45	18	<p>- Redness of earlobes and lower eyelid margin are characteristic of Cham. One cheek red and other pale is also characteristic of Cham (IE-VJ)\n<br />- hyperaesthesia (PV-S-10/14)\n<br />- senses hyperacute (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
748	45	19	<p>- Children want to be carried (IE-VJ)\n<br />- Baby cries angry and makes opisthotonus (MM-GL)\n<br />- Kicks the mother (MM-GL)\n<br />- Child does not even come into the room of doctor (Ambr-S-10/13, p 44)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
749	45	20	<p>DD Hep % Cham (MM-GL):</p>\n\n<p>BOTH ARE: Angry, sensitive to noise, people, pain, impatient, chilly, thirsty</p>\n\n<p>DIFFERENCE:\n<br />Cham = Selfish, heartless person (does not care for others), quarrel, make live of others miserable\n<br />Hep = is impulsive! is sensitive, more emotional and has some heart within her. Though she is angry and impulsive, there is some softness inside so that she can adjust and care for others feelings. This sensitivity is making her weep for others; horrible things affect her because there is care for others. She would not make others life miserable.</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
750	46	1	<p>Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
751	46	2	<p>Love (psor) &amp; Respect (syc)(GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
752	46	4	<p>Hot (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
753	46	6	<p>Left (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
754	46	7	<p>- Gets hurt when compared (Ambr)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
755	46	9	<p>Desires for sweets (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
756	46	10	<p>- If there is no anticipatory anxiety (PHL)\n<br />- If there is no impulsiveness (PHL)\n<br />- If there is no haste and restlessness (PHL)\n<br /> \n<br />- Were you compared with your siblings? (comparison to silver always hurts) (Ambr)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
757	46	13	<p>PRAFULL VIJAYAKAR:\n<br />- Syphilitic, destructive pathology (PV-I-01/15, p 147)\n<br />- Neuro-ectoderm (PV-I-01/15, p 147)\n<br />- Nerve remedy (PV-I-01/15, p 147)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
758	46	14	<p>Complementary to Puls and vice versa  (MM-GL)\n<br />In acute like Puls -&gt; mild, wants attention  (MM-GL)\n<br /> \n<br />Stann\n<br /> \n<br />If you see a hot Phos you can think of Arg-n (Ambr)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
759	46	16	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:21
794	50	2	<p>Support &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
795	50	4	<p>Hot (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
796	50	6	<p>Right (IE-VJ)\n<br />From right to left (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
761	46	18	<p>- Ailments from anticipation, goes to the toilet when anxious (MM-GL)\n<br />- Craves for sweets  (MM-GL)\n<br />- abdomen: sensitive to touch (PV-S-10/14)\n<br />- senses perverted (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
762	46	20	<p>Arg-n % Plat:\n<br />Arg tries to show how great he is % Plat is convinced she is great\n<br /> \n<br />DD MED % ARG-N (PV-I-01/15)</p>\n\n<p>MED                                         ARG-N\n<br />Mesodermal tissue, thickening               Syphilitic, destructive pathology, neuro-ectoderm\n<br />Fear of unknown, unseen things              Fear of real things, which can be seen\n<br />Likes sour                                  Likes sweets</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
763	47	1	<p>Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
764	47	4	<p>Chilly (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
765	47	7	<p>Startle by slightest noise (IE-VJ)\n<br />Shiver by slightest draft of air (IE-VJ)\n<br />Cry loud by slightest hurt (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
808	51	6	<p>Right &amp; Left (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
770	47	18	<p>- Slightest noise and they startle as if a bomb explosion has taken place (IE-VJ)\n<br />- Slightest draft of air and they will start shuddering as if they have had an attack of malaria (IE-VJ)\n<br />- Slight hurt and they cry loud (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
771	47	19	<p>- Pampered and spoiled children (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
772	47	20	<p>Mosch % Hyos</p>\n\n<p>Excessive laughter: is unable to control laughter (syp) % Hyos could control it but does not want to or not bother to (syk)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
773	48	1	<p>Extro (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
774	48	4	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:21
775	48	14	<p>Bell (IE-VJ), Stram (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
776	48	16	<p>They are syphilitic (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
777	48	17	<p>- Extroverted - Loud talker (IE-VJ, p 21)\n<br /> \n<br />- Talks as if excited (IE-VJ)\n<br />- A lot of power (expressed in talking and laughing) (Bell) (IE-VJ)\n<br />- Liars and don't have any morals (IE-VJ)\n<br />- Have no feelings and are hard hearted (IE-VJ)\n<br />- They may have criminal disposition (IE-VJ)\n<br />- Violent (MM-GL)\n<br />- Sudden (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
778	48	18	<p>- Dark red face (Bell) (IE-VJ)\n<br />- Have premature old looks (IE-VJ)\n<br />- Constricting (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
779	48	20	<p>Morph % Bell talk excited: (MM-GL)\n<br />talk is like noise % is more on the loving side, talk is like song</p>\n\n<p>Morph % Stram talk excited: (MM-GL)\n<br />attacks % goes into panic because timidity</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
780	49	1	<p>2nd Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
781	49	2	<p>Love &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
782	49	4	<p>Chilly (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
783	49	5	<p>Thirsty (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
784	49	6	<p>Left (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
785	49	8	<p>Conscientious, diligent (IE-VJ, p 92)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
786	49	9	<p>Salt (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
787	49	11	<p>1. OVER SENSITIVNESS, SENSITIVE TO RUDENESS (IE-VJ)\n<br />2. &lt; CONSOLATION / PITY (IE-VJ)\n<br />3. &lt; SUN\n<br />4. ANGER WHEN OBLIGED TO ANSWER, ALOOF (distanziert), LONER (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
788	49	14	<p>Chilly + thirsty + left sided -&gt; Ign, Sil, Ph-ac, Staph</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
789	49	16	<p>Predominantly sycotic (MM-GL)\n<br />HURT -&gt; REGRESSION, BROODING, SELF-REPROACH (all Natriums, calc-m, mur-ac) (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
791	49	18	<p>- Desires bread (Ambr-S-10/13)\n<br />- Intolerance to milk (Ambr-S-10/13)\n<br /> \n<br />&lt; Sun (IE-VJ) -&gt; Headache, weakness, diarrhoea, skin irritation... (IE-VJ)\n<br />- hearing: rumpling of paper (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
792	49	22	<p>- Exclusive in syc due to sensitivness (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
793	50	1	<p>Extro &amp; 2nd Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
799	50	13	<p>PRAFULL VIJAYAKAR:\n<br />- Hemmorhage from all orefices (IE-VJ)\n<br />- Thickening (MM-GL)\n<br />- Swelling (MM-GL)\n<br />- Induration (MM-GL)\n<br />- Nodules (MM-GL)\n<br />- Tumours (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
800	50	16	<p>Right sided Lach (IE-VJ)\n<br />Remedy is syc-syp (MM-GL, Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
801	50	17	<p>- Easy anger with snappish answers (IE-VJ)\n<br />- Quarrelsome, scolding (Beschimpfen) (IE-VJ)\n<br />- Attacks others (Ambr-S-10/13)\n<br /> \n<br />- Confident (MM-GL)\n<br />- Very open and confident (MM-GL)\n<br />- Leadership ability (Ambr-S-10/13)\n<br /> \n<br />- People with sharp business acumen (IE-VJ)\n<br />- Uses mind for business (Ambr-S-10/13)\n<br />- Not so sensitive as Lach, more practical, less emotional (Ambr-S-10/13)\n<br /> \n<br />- Obstinate (IE-VJ)\n<br />- Delusion persecuted by people, suspicious that he is surrounded by enemies (IE-VJ)\n<br />- Loquacious; talks bombast, worthless (MM-GL)\n<br />- Feels that people are troubling him (Ambr-S-10/13)\n<br /> \n<br />- Precocity (MM-GL)\n<br />- Inaptitude for mathematics (MM-GL)\n<br />- Weak memory (MM-GL)\n<br /> \n<br />- A/F anticipation (MM-GL)\n<br />- Aversion to fly (IE-VJ)\n<br />- Aversion to family (IE-VJ)\n<br /> \n<br />- Low morals (Ambr-S-10/13)\n<br />- No anxiety of conscience (Ambr-S-10/13)\n<br /> \n<br />- Slow and torpor (MM-GL)\n<br />- No fancies (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
802	50	18	<p>- Blackish skin of face (IE-VJ)\n<br />- Blood is dark and fluid (IE-VJ)\n<br />- Discharges are dark, thick and stringy due to increased elastin (MM-GL)\n<br />- Hemorrhage from all orifices (IE-VJ)\n<br />- Bloody stools (MM-GL)\n<br />- Weakness from slightest exertion (IE-VJ)\n<br />- It causes gradual destruction of the body (MM-GL)</p>\n\n<p> \n<br />&lt; Hunger (MM-VJ)\n<br /> \n<br />BLEEDER:\n<br />- Faster, more than Lach, bleeding of eyes, bleeding after injury on the right side (Ambr-S-10/13)\n<br />- Throat,abdomen: sensitive to touch (PV-S-10/14)\n<br />- skin: purple around wounds, eruptions (PV-S-10/14)\n<br />- carbuncle purple with vesicles around (PV-S-10/14)\n<br />- dark green stools (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
803	50	20	<p>Lach % Crot-h (Ambr-S-10/13)\n<br />SIDE:  Left / Right\n<br />MIND:  Sharp mind / Mind for business\n<br />MISCE: Sensitive, clairvoyance / Bleeder - Faster, more than Lach, bleeding of eyes, bleeding after injury on the right side</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
805	51	1	<p>Extro &amp; 2nd Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
806	51	2	<p>Support &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
807	51	4	<p>Hot (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
811	51	18	<p>- abdomen: sensitive to touch (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
812	52	1	<p>Extro &amp; 2nd Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
813	52	2	<p>Support &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
814	52	4	<p>Chilly (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
815	52	6	<p>Left (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
816	52	7	<p>- draft of air, smell... (Ambr-S-10/13)\n<br />- mentally sensitive (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
817	52	8	<p>Diligent (Ambr-S-10/13)\n<br />Conscientious (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
819	52	14	<p>Ign (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
820	52	16	<p>- Naja tripudians, das Gift der Kobra, Brillenschlange (Naja) Gehört zur Familie der Giftnattern (Elapidae), Vorkommen in Indien und Sri Lanka\n<br /> \n<br />- Psor-syc, can go to syp (Ambr-S-10/13)</p>\n\n<p> \n<br />NOT A BLEEDER  (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
822	52	18	<p>- Nervous system especially cerebellum and balances system involved (IE-VJ)\n<br />- Autoimmune diseases like MS (self depreciation)  (MM-GL)\n<br />- Breast cancer  (MM-GL)\n<br /> \n<br />&lt; Motion  (MM-GL)\n<br /> \n<br />NOT A BLEEDER  (MM-GL)\n<br />- hands: discoloration purple (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
823	53	1	<p>Extro &amp; 2nd Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
824	53	2	<p>Support &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
825	53	3	<p>Quick - mentally and physically (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
826	53	4	<p>Chilly (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
827	53	5	<p>Thirsty (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
828	53	6	<p>Right &amp; Left (IE-VJ)\n<br />Left to right (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
829	53	9	<p>Desires ice, icy cold things, butter milk, milk (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
830	53	12	<p>- Desires ice or icy cold things, butter milk, milk (IE-VJ)\n<br />- Bluish discoloration of skin (IE-VJ)\n<br />- Loves nature, rain (IE-VJ)\n<br />- Timid, anticipatory (IE-VJ)\n<br />- Side - Left to right (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
831	53	13	<p>PRAFULL VIJAYAKAR:\n<br />- Platelets (Ambr-S-10/13)\n<br /> \n<br />BOGER (BO-SK):\n<br />- BLUT. Nase. Ohren. Hals</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
832	53	14	<p>Crotalus cascavella (PV-I-01/17) (DD: dreams of gods, saints...)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
833	53	16	<p>Commonly known as Painted coral snake (Korallenotter der Gattung Micrurus; Elaps), is a species of venomous elapid snake native to Brazil, Argentine and Paraguay (Wikipedia).</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
895	58	7	<p>- pain (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
896	58	8	<p>Non-conscientious (GL-Z), non-diligent (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
834	53	17	<p>- Timid, anticipatory (IE-VJ)\n<br />- Mild snake (Ambr-S-10/13), least destructive snake (MM-GL)\n<br />- Are very sensitive (PV-I-01/17)\n<br /> \n<br />- Looks like Phos (Phos likes to give and take love). They don't like to be hugged and touched (MM-GL)\n<br />- Feautures of Ars and Phos (Ambr-S-10/13)\n<br />- More for love, fancies, fantasy (DD Crot-h: business minded) (MM-GL)\n<br />- Very affectionate and sweet to talk (lach); but no so much hugging like Phos (Ambr-S-10/13)\n<br /> \n<br />- Speed is quick, mentally and physically (Ambr-S-10/13)\n<br />- Watchful, sharp concentration (MM-GL)\n<br /> \n<br />- Loves travelling (calc-p, tub) (Ambr-S-10/13)\n<br />- Love nature and rain (IE-VJ), desires greens (MM-GL)\n<br />- Like to hide, like to play hide and seek (PV-I-01/17)\n<br /> \n<br />- Likes magnetism (PV-I-01/17)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
835	53	18	<p>- Desires ice or icy cold things, butter milk, milk (IE-VJ)\n<br /> \n<br />- Bluish discoloration of skin (IE-VJ)\n<br />- Coldness of fingers, nose and extremities (Ambr-S-10/13)\n<br />- It works on platelets (MM-GL)\n<br />- blueness or blackness on the legs (PV-S-10/14) - on the hands= Crot-h</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
836	53	20	<p>DD crot-h: blueness/blackness on the hands (PV-S-10/14)\n<br /> \n<br /> \n<br />Carc % snakes:\n<br />Carc very sensitive to scolding / snake does not react at the scolding (case PV-I-23.01.2017, Elaps) \n<br />Carc % snakes:\n<br />Carc very sensitive to scolding / snake does not react at the scolding (case PV-I-23.01.2017, Elaps)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
837	54	1	<p>Extro &amp; 2nd Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
838	54	2	<p>Support &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
839	54	4	<p>Chilly (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
840	54	6	<p>Right &amp; Left (MM-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
841	54	7	<p>Taight clothes, esp around the waist (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
842	54	10	<p>- If the person likes domestic duties (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
843	54	11	<p>Lach &amp; Chilly &amp; Libertinist (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
844	54	14	<p>Lach (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
845	54	16	<p>- Cenchris lebt nahe den Wasserläufen und ist eng mit der Gattung Cenchris piscivarus verwandt, einer Wasserschlangenart. Sie leben in den gemässigten Zonen Nordamerikas. Das Gift ist tödlich (Kent).\n<br /> \n<br />- Sycotic (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
1215	99	12	<p>- Sharp features (IE-VJ)\n<br />- Thin neck (IE-VJ) \n<br />- Responsible (IE-VJ)\n<br />- Foresaken (verlassen) feeling (IE-VJ)\n<br />- Constipation, small round stool (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
847	54	18	<p>- Ovarian problems right sided (MM-GL)\n<br />- Extremely intolerant to tight clothes anywhere, esp. around the waist (MM-GL)\n<br />- Cancer (syp) (MM-GL)\n<br />- black lips, cyanosis (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
848	55	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
849	55	2	<p>Love &amp; Support &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
850	55	4	<p>Chilly (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
851	55	6	<p>Right (IE-VJ, p 90)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
852	55	8	<p>Conscientious, diligent (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
853	55	11	<p>1. DILIGENT AND CONSCIENTIOUS (IE-VJ)\n<br />2. SENSITIVE TO RUDENESS BUT TOO DIGNIFIED TO FIGHT (IE-VJ)\n<br />3. EGOTISM, SENSITIVE TO WHAT PEOPLE WILL SAY ABOUT HIM (Stann) (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
854	55	12	<p>- Conscientious and diligent (IE-VJ)\n<br />- Too dignified to fight (IE-VJ)\n<br />- Sensitive to criticism and rudeness (IE-VJ)\n<br />- Wants people to have good opinion about them (IE-VJ)\n<br />- Talks about themselves in company (IE-VJ)\n<br />- Angry but cannot express it at work or any senior people as a result they come home and hence express it on inanimate objects (IE-VJ)\n<br />- suppressed anger (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
855	55	13	<p>PRAFULL VIJAYAKAR\n<br />- larynx (PV-S-10/14)\n<br /> \n<br />FARRINGTON:\n<br />- Blood\n<br />- Loss of fluids\n<br />- Organs</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
856	55	14	<p>Cham -&gt; the anger remeinds of Cham (Farrington)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
857	55	16	<p>Cases stucked up with Staph often work with Merc (PV-I-01/15)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
859	55	18	<p>- Thick hair (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
860	55	20	<p>Staph is complementary to Coloc. Staph is usefull if coloch does not heal completely (Farrington, Staph, p295)\n<br /> \n<br />IE-VJ:\n<br />              Coloc         %   Staph  \n<br />SENSITIVNESS: Coloc is not     / Staph is a highly sensitive person, sensitive to rudeness, to sad stories, and also to slightest insult \n<br />                                 or indignation, the patient feels humiliated.  \n<br />THIRST:       Thirsty          / Thirstless </p>\n\n<p> \n<br /> \n<br />Staph / Con (Ambr 02/2016)</p>\n\n<p>Staph: suppressed anger \n<br />Con: shows its anger\n<br /> \n<br />Emotional reaction DD:(Ambr 02/2016)\n<br />- Staph: supressed anger\n<br />- Mag: seems content\n<br />- Sep: resignation</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
861	55	21	<p>- Ambitious (MM-GL)\n<br />- Conscientious (MM-GL)\n<br />- Affectionate (MM-GL)\n<br />- Industrious (MM-GL)\n<br />- Sensitive to what others say about her (MM-GL)\n<br />A/F:\n<br />- Mortification (MM-GL)\n<br />- Honor wounded (MM-GL)\n<br />- Position loss of (MM-GL)\n<br />- Anger supressed (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
862	55	22	<p>- Audacity (MM-GL)\n<br />- Amorous (MM-GL)\n<br />- Anger on himself (MM-GL)\n<br />- Contented (MM-GL)\n<br />- Fear of losing self-control (MM-GL)\n<br />- Egotism (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
863	55	23	<p>- Violent rage (MM-GL)\n<br />- Insanity from anger (MM-GL)\n<br />- Fire throws things in (MM-GL)\n<br />- Anger throws things (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
897	58	9	<p>Craves for salt (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
983	66	11	<p>1. AFFECTIONATE, SWEET TALKER, CHEERFUL (IE-VJ)\n<br />2. OPTIMISTIC, PATIENT (IE-VJ)\n<br />3. POLITICAL (SHREWD, ARTISTIC, DIPLOMATIC), POSITIVE (IE-VJ)\n<br />Chilly Platina (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
1216	99	14	<p>Natriums</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
866	56	4	<div>Chilly (IE-VJ)</div>	2020-02-26 19:13:47	2020-03-09 10:18:00
867	56	5	<div>Thirsty (IE-VJ)</div>	2020-02-26 19:13:47	2020-03-09 10:18:00
868	56	6	<div>Right (IE-VJ)</div>	2020-02-26 19:13:47	2020-03-09 10:18:00
865	56	3	<div>Slow (IE-VJ)</div>	2020-02-26 19:13:47	2020-03-09 10:18:00
864	56	2	<div>Support (GL)</div>	2020-02-26 19:13:47	2020-03-09 10:18:00
870	56	11	<div>1. MISPLACED (IE-VJ)&nbsp;<br>2. INADAPTIBLE ROUTINIST (IE-VJ)&nbsp;<br>3. SHOT STATURE, RECEDING HAIR LINE, ROUND FACE, KNOBBY NOSE (IE-VJ)&nbsp;<br>&nbsp;<br>In short:&nbsp;<br>- Chilly&nbsp;<br>- Thirsty&nbsp;<br>- Slow&nbsp;<br>- Misplaced&nbsp;<br>- Right sided</div>	2020-02-26 19:13:47	2020-03-09 10:18:00
869	56	10	<div>- If application and sharpness of mind is present, if they are fast. They may be intelligent, but they are in routine (PHL)&nbsp;<br>- If patient is tall and slim (PHL)</div><div><br>QUESTIONS:&nbsp;<br>- Can you adapt well to new circumstances? -&gt; Bar is ROUTINIST (PV-I-01/15)</div>	2020-02-26 19:13:47	2020-03-09 10:18:00
876	57	1	<p>Intro (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
877	57	2	<p>Love &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
878	57	3	<p>Fast (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
879	57	4	<p>Chilly (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
880	57	5	<p>Thirsty (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
881	57	6	<p>Left (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
882	57	7	<p>- Criticism (IE-VJ)\n<br />- Rudeness (IE-VJ)\n<br />- Startled by noise (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
883	57	8	<p>Conscientious (MM-GL, Natriums Allgemein)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
884	57	9	<p>Salt (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
885	57	11	<p>1. OVER SENSITIVNESS, SENSITIVE TO RUDENESS (IE-VJ)\n<br />2. Likes consolation (unlike Nat-m) (Ambr-S-10/13)\n<br />3. &lt; SUN\n<br />4. ANGER WHEN OBLIGED TO ANSWER, ALOOF (distanziert), LONER (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
886	57	13	<p>PRAFUL VIJAYAKAR: \n<br />- Gastric system (Ambr-S-10/13)\n<br />- Renal system: recurrent UT-infection, renal calculi, recurrent nausea because of renal problems (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
887	57	16	<p>Na2HPO4 12H2O\n<br />From calcined bone (Hering)\n<br /> \n<br />Mixture of anger and affection (Ambr-S-10/13)\n<br />HURT -&gt; REGRESSION, BROODING, SELF-REPROACH (all Natriums, calc-m, mur-ac) (Ambr-S-10/13)\n<br /> \n<br />Similar to sepia (Cle)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
888	57	17	<p>- Introverted - due to over sensitiveness (IE-VJ)\n<br /> \n<br />- Mixture of ANGER and AFFECTION (Ambr-S-10/13)\n<br /> \n<br />- Over sensitivness (IE-VJ)\n<br />- Sensitive to rudeness as well criticism (IE-VJ)\n<br />- Weeping easely (Ambr-S-10/13)\n<br />- Introverted like Natriums but LIKES CONSOLATION (unlike Nat-m), but likes to be ALONE (Ambr-S-10/13)\n<br /> \n<br />- Indifference and apathy in syphilis (like Sep) (Ambr-S-10/13)\n<br /> \n<br />- Easy startled by noise (Ambr-S-10/13)\n<br /> \n<br />- Mental excertion agg; cannot bear mental exertion (Ambr-S-10/13)\n<br /> \n<br />&lt; During menses (general and menthal) (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
889	57	18	<p>- Lean, thin constitution (Ambr-S-10/13)\n<br />- Emaciated, similar to Sep (MM-GL)\n<br /> \n<br />&lt; Sun (IE-VJ) -&gt; Headache, weakness, diarrhoea, skin irritation... (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
890	57	22	<p>- Exclusive in syc due to sensitivness (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
891	58	1	<p>Intro (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
892	58	2	<p>Love &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
893	58	4	<p>Hot (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
894	58	5	<p>Thirsty (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
898	58	11	<p>1. OVER SENSITIVNESS, SENSITIVE TO RUDENESS (IE-VJ)\n<br />2. &lt; CONSOLATION / PITY (IE-VJ)\n<br />3. &lt; SUN\n<br />4. ANGER WHEN OBLIGED TO ANSWER, ALOOF (distanziert), LONER (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
899	58	13	<p>PRAFUL VIJAYAKAR (Ambr-S-10/13)\n<br />- Gastric upsets; yellow stools, indigested parts (Ambr-S-10/13)\n<br />- Liver affection (Lyc) (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
900	58	16	<p>HURT -&gt; REGRESSION, BROODING, SELF-REPROACH (all Natriums, calc-m, mur-ac) (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
901	58	17	<p>- Introverted - due to over sensitiveness (IE-VJ)\n<br /> \n<br />- Creativity of sulph (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
902	58	18	<p>- Sensitive to pain (IE-VJ)\n<br />- Gastric upset with yellow stools (IE-VJ)\n<br />- H/O recurrent jaundice (Lyc) (IE-VJ)\n<br /> \n<br />&lt; Rainy cloudy weather (IE-VJ)\n<br />&lt; Sun (IE-VJ) -&gt; Headache, weakness, diarrhea, skin irritation... (IE-VJ)</p>\n\n<p>- abdomen: sensitive to touch (PV-S-10/14)\n<br />- hearing: rumpling of paper (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
903	58	22	<p>- Exclusive in syc due to sensitivness (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
904	59	1	<p>Intro (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
905	59	2	<p>Love &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
906	59	4	<p>Chilly (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
907	59	5	<p>Thirsty (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
908	59	8	<p>Conscientious (GL-Z) / Diligent (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
909	59	9	<p>Salt (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
910	59	11	<p>1. OVER SENSITIVNESS, SENSITIVE TO RUDENESS (IE-VJ)\n<br />2. &lt; CONSOLATION / PITY (IE-VJ)\n<br />3. &lt; SUN\n<br />4. ANGER WHEN OBLIGED TO ANSWER, ALOOF (distanziert), LONER (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
911	59	13	<p>PRAFUL VIJAYAKAR: (Ambr-S-10/eurol</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
912	59	16	<p>HURT -&gt; REGRESSION, BROODING, SELF-REPROACH (all Natriums, calc-m, mur-ac) (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
1653	202	3	<p>- SLOW KALI!! (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
874	56	18	<div>- Rounded features (IE-VJ)&nbsp;<br>- Knobby nose (IE-VJ)&nbsp;<br>- Occasionally a mixture of rounded and squarish face (IE-VJ)&nbsp;<br>- Slow development (IE-VJ)&nbsp;<br>- Dwarfish or retarded growth (IE-VJ)&nbsp;<br>- Not grown to a normal height and stature (IE-VJ)&nbsp;<br>- Bald early by 20-25 years of age and show a receding hairline from the frontal region (IE-VJ)&nbsp;<br>&nbsp;<br>- Slow or under-functioning of organs (IE-VJ)&nbsp;<br>- Slow progress of disease e.g. slow, indolent, non-healing ulcers (IE-VJ)</div>	2020-02-26 19:13:47	2020-03-09 10:18:00
914	59	18	<p>&lt; Sun (IE-VJ) -&gt; Headache, weakness, diarrhoea, skin irritation... (IE-VJ)</p>\n\n<p> \n<br />- Neurologigal symptoms: e.g. stammering because of neuro problems (Ambr-S-10/13)\n<br />  -&gt; i.e. boy gets hurt (psor) -&gt; fear (syc) -&gt; because of fear they develope stammering</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
915	59	22	<p>- Exclusive in syc due to sensitivness (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
916	60	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
917	60	2	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:22
918	60	4	<p>Chilly or Ambi (IE-VJ)\n<br />Hot (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
919	60	6	<p>Left (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
920	60	7	<p>Sun agg (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
921	60	11	<p>1. SENTIMENTAL (IE-VJ)\n<br />2. SULKY (mürrisch) + IRRITABLE WHEN LOOKED AT (IE-VJ)\n<br />3. SUN AGG (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
923	60	13	<p>FARRINGTON: \n<br />- Heart, circulation -&gt; syncope, collapse\n<br />- Enhanced perspiration\n<br />- GI - Mucosa -&gt; diarrhea, nausea, vomiting\n<br />- Epi\n<br />- Lungs\n<br />- Skin - exanthem, pustulaes\n<br />   Typical ant-c -&gt; callused skin hands and feets (hornige Wucherungen und Schwielenbildung an Händen und Füssen)\n<br /> \n<br />BOGER (BO-SK):\n<br />- Stomach\n<br />- Intestinal Tract\n<br />- Mind\n<br />- Skin\n<br />- Changing sides</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
924	60	14	<p>Ant-c -&gt; more syc and affected by sun (MM-GL)\n<br />Ant-t -&gt; more syp and affected by wet weather (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
925	60	16	<p>Antimonium crudum = Sb2S3 (Antimonsulfid) (Farr)\n<br /> \n<br />Ist ein Mineral und wird als Erz (Antimonsulfid) für die homöopathische Mittel verwendet. \n<br />Im Perdiodensystem ist es in der Stickstoffgruppe, bei den Halbmetallen.</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
927	60	18	<p>- Complain of gastric disturbs (IE-VJ)\n<br />&lt; Sun (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
928	60	19	<p>- Children never bear to be looked at (MM-GL)\n<br />- Sulky (mürrisch) children (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
929	60	20	<p>SKIN:\n<br />- Ant-c: more callused skin hands and feets (Farr)\n<br />- Ant-t: more pustulae (Farr)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
930	61	4	<p>Chilly (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
931	61	13	<p>FARRINGTON: \n<br />- Heart, circulation -&gt; syncope, collapse\n<br />- Enhanced perspiration\n<br />- GI - Mucosa -&gt; diarrhea, nausea, vomiting\n<br />- Epi\n<br />- Lungs\n<br />- Skin - exanthem, pustulaes\n<br />   Typical ant-t -&gt; pustules (Pusteln)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
932	61	14	<p>Ant-t -&gt; more syp and affected by wet weather (MM-GL)\n<br />Ant-c -&gt; more syc and affected by sun (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
933	61	16	<p>Antimonium tartaricum = K(Sb O)C4H4O6 (Farr)\n<br /> \n<br />Antimon + Kalium (Farr)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
934	61	17	<p>- Irritable (MM-GL)\n<br />- Dull and sleepy (MM-GL)\n<br />- Feels weak (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
935	61	18	<p>- Sweat increased (MM-GL)\n<br />- Respiratory tract problems (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
936	62	1	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:22
937	62	4	<p>Chilly (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
938	62	5	<p>- intense thirst (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
939	62	6	<p>Right (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
940	62	7	<p>&lt; Cold wind (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
941	62	13	<p>PRAFULL VIJAYAKAR:\n<br />- Neurological disease (Ambr-S-10/13-p46)\n<br />- Cardio-vascular disease (Ambr-S-10/13-p46)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
942	62	14	<p>- Sulph is complement (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
944	62	17	<p>- Suddenness (MM-GL)\n<br />- Loud talker (MM-GL)\n<br />- Quarrelsome, angry (MM-GL)\n<br />- Fearful. Fear and rage (MM-GL)(PV-S-10/14)\n<br />- restless, angry, irritable (PV-S-10/14)(PV-S-10/14)\n<br />- tossing and turning with intense thirst (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
945	62	18	<p>- ACTIVE BLEEDER (MM-GL)\n<br />- Affected by cold North-West wind (MM-GL)\n<br />&lt; Cold wind (MM-GL)\n<br />- one cheek red, other pale (PV-S-10/14)\n<br />- slight touch agg. (PV-S-10/14)\n<br />- senses hyperacute (PV-S-10/14)\n<br />- measles purple (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
946	62	20	<p>- talkative like Lach (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
947	63	1	<p>Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
948	63	2	<p>Praise (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
949	63	4	<p>Chilly &amp; Hot (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
950	63	11	<p>1. LOQUACITY TO IMPRESS / DRESSES TO IMPRESS (IE-VJ)\n<br />2. LOOKS AND DRESSES LIKE A PRINCESS. DESIRES APPRECIATION AND APPROBATION (IE-VJ)\n<br />3. CANNOT BEAR CRITICISM AND CONSOLATION (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
951	63	12	<p>- Ladies who are good looking, pleasant looking with pleasant behavior (IE-VJ)\n<br />- Looks like a princess, wants to be considered as a princess and projects herself like a princess (IE-VJ)\n<br />- Her efforts are always to get maximum appreciation which is her "need". To hell with my disease, people should appreciate me or rather my  "looks" (IE-VJ)\n<br />- She can't bear criticism, even the slightest. Does not mind not getting well, not feeling well. "Sir, never mind if I don't get back my eyesight after this accident but my face and eye should not look distorted". (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
952	63	13	<p>BOGER (BO-SK):\n<br />- UTERUS\n<br />- RECHTES OVAR\n<br />- Gemüt\n<br />- FLÜCHTIGE SCHMERZEN</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
1036	73	13	<p>BOGER (BO-SK):\n<br />- RÜCKENMARK, Lumbalregion\n<br />- REKTUM\n<br />- Untere EX\n<br />- Schleimhäute\n<br />- Haut</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
1037	73	14	<p>Germ-met (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
1654	202	4	<p>- o\tChilly</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
954	63	20	<p>Pall % Phos: does not like consolation or sympathy, more positive than Phos (metal) / likes consolation or sympathy</p>\n\n<p>Pall % Mang: loves appreciation for looks / loves appreciation for work and deeds</p>\n\n<p>Pall % Stann: is not a performer; wants to be appreciated for her looks; is a princess (MM-GL) / is a performer, wants to do everything perfect</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
956	64	1	<p>Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
957	64	2	<p>Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
958	64	4	<p>Chilly (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
959	64	6	<p>Left (IE-VJ, p 90)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
960	64	8	<p>Non-diligent (IE-VJ, p 83)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
961	64	11	<p>1. LOQUACITY TO IMPRESS (IE-VJ)\n<br />2. ANXIOUS OF FUTURE, CREATIVE, JESTING, PASSIONATE (IE-VJ)\n<br />3. INFLAMMATION OF CARTILAGES OF LARYNX, BACK AND CHEST (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
962	64	12	<p>- Anxious people who are passionate to reach the top. They talk about themselves in company, to project themselves as a good, efficient and successful; and are very sensitive to what people have to say about them (IE-VJ)\n<br />- Creative people, jesting people, insecure about future especially financially ailments from financial loss (IE-VJ)\n<br />- People whose cartilages are weak and get inflamed recurrently causing laryngeal hoarseness, Hawking (Mang) with neck pains and back pains (IE-VJ)\n<br />- Weak voice due to weak chest (IE-VJ)\n<br />- Consolation agg. (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
963	64	14	<p>Arg-n</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
964	64	16	<p>One of the oldest metal known and used by man. In spite of being vastly used, it does not have the same importance that a plat or gold or even silver commands. (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
966	64	18	<p>- LARYNX\n<br />- CARTILAGES\n<br />- CHEST\n<br />- NERVES\n<br />- Affection of cartilages between the bones -&gt; affection of voice with weakness or paralysis (IE-VJ)\n<br />- Inflammation of cartilages of larynx, back and chest (IE-VJ)\n<br />- People whose cartilages are weak and get inflamed recurrently causing laryngeal hoarseness (IE-VJ)\n<br />- Weakness in the voice due to weak chest (IE-VJ)\n<br />- HAWKING (Mang) with neck pains and back pains (IE-VJ)\n<br />- Force and jittery (nervös) nerves as Arg (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
967	64	20	<p>Stann % Pall: is a performer, wants to do everything perfect / is not a performer; wants to be appreciated for her looks; is a princess (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
968	65	1	<p>2nd Extro &amp; intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
969	65	2	<p>Support &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
970	65	4	<p>Chilly (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
971	65	5	<p>Thirsty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
972	65	6	<p>Left (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
973	65	11	<p>1. MENTAL EXERTION AGG\n<br />2. CONSOLATION AGG\n<br />3. OFFENSIVE DISCHARGES</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
974	65	12	<p>- Mental fatigue (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
975	65	16	<p>- slowness/weakness after agitation with irritability and apprehension (NI-2014)\n<br />- weakness only after excitement, all Kalis (NI-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
976	65	17	<p>- It has all the characteristics of Kali like timidity, easy startling from touch, noise frightened easily and shrieking easily (MM-GL)\n<br /> \n<br />- MENTAL EXERTION agg. !! (MM-GL)\n<br />- The Kalis weakness is due to excess use of energy to operate the Sodium-Potassium pump that sends the K+ ions back into the cell. This weakness is exhibited in different tissues depending on the affinity and constitutional type (MM-GL)\n<br />- The brain and nerv cells are so weak that it cannot bear any exertion. Thus a  Kali-p. can fall ill, when it exerts his mind (MM-GL)\n<br /> \n<br />- A/F grief, A/F anger, A/F disappointment in love, A/F shock etc. (MM-GL)\n<br /> \n<br />- Does not like consolation (IE-VJ) (see Phos) (MM-GL)\n<br />- Consolation agg. (MM-GL)\n<br />- Kali-p. gets angry at consolation because consolation is going to make her think and that she can’t afford. Kali-p. is mentally so tired that is has no capacity to think anything good or bad if any consolation is given to her (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
977	65	18	<p>- Restlessness followed by weakness (NI-2014)\n<br /> \n<br />- OFFENSIVENESS OF ALL DISCHARGES (MM-GL)\n<br />- Haemorrhage tendency or actual blood offensive (MM-GL)\n<br />- Expectoration odour offensive (MM-GL)\n<br />- Menses offensive (MM-GL)\n<br />- Lochia offensive, fetid (MM-GL)\n<br />- Leucorrhoea offensive putrid (MM-GL)\n<br />- Urine odour offensive (MM-GL)\n<br />- Stool odour offensive (MM-GL)\n<br />- Ear discharges general offensive, like putrid meat (MM-GL)</p>\n\n<p>- discoloration hands: purple, purple spots on forehand as in lichen planus, psoriasis, scleroderma (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
978	66	1	<p>Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
979	66	2	<p>Love (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
980	66	4	<p>Chilly (IE-VJ)\n<br />No clear termals (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
981	66	8	<p>Not conscientious, not diligent  (IE-VJ, p 59)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
982	66	9	<p>Desires fruits (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1655	202	5	<p>- Thirsty</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
985	66	14	<p>Phos, Carc</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
987	66	18	<p>- Vision acute daytime (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
988	67	1	<p>Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
989	67	2	<p>Love &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
990	67	4	<p>Chilly (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
991	67	6	<p>Crosswise: right upper - left lower (MM-GL)\n<br />Side change, symptoms go opposite side and aggravate (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
992	67	11	<p>1. LOVES TO DO GOOD DEEDS TO OTHERS AND EXPECTS COMPLEMENTS FOR IT (IE-VJ)\n<br />2. FRIENDLY, SMILING (IE-VJ)\n<br />3. FIGHTER, POSITIVE PERSON (IE-VJ)\n<br />HELPFUL + BENEVOLENT + POSITIVE (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
993	67	12	<p>- STRETCHING: people who like to stretch (IE-VJ), but agg. affected parts (MM-GL)\n<br />- SALIVATION: profuse and bitter in paralysis, headache (IE-VJ), nausea ... (MM-GL)\n<br />- LARYNX AFFECTION: recurrent hoarseness of voice (IE-VJ)\n<br />- BRAIN AND NERVE AFFECTIONS (IE-VJ)\n<br />- CHANGEABILTY OF SYMPTOMS: symptoms, sides, moods change. Writing -&gt; becomes smaller, especially in Parkinson's disease, Motor Neuron Disease, Astrocytoma i.e. degenerative affections of brain and nerves (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
994	67	17	<p>- Extroverted - Sweet talkers (IE-VJ, p 21)\n<br />- Extroverted - Self praisers (IE-VJ, p 21)\n<br /> \n<br />- Sweet looking like Phos, Pall, always smiling (IE-VJ)\n<br />- Benevolent (IE-VJ)\n<br />- Fighter, positive (IE-VJ)\n<br />- Do a lot of social work (IE-VJ)\n<br />- Desires appreciation for work (MM-GL) (Arg-n, Sil, Stann, Sulph)\n<br />- Kind-hearted and like to help. Please others by helping (IE-VJ)\n<br />- Anxious that nothing should go wrong when they are doing a good deed (IE-VJ)\n<br />- Love to to good deeds to other and to have praise and compliments for it (IE-VJ)\n<br />- Do not like joyous music (IE-VJ)\n<br />- Love sad music (IE-VJ)\n<br />- People who like to stretch (IE-VJ)\n<br />- Laught involuntarly, weep involuntarly (MM-GL)\n<br />- Clairvoyant, prophetic dreams (MM-GL)\n<br />- Make mistake in talking (he or she) (MM-GL)\n<br />- Make mistakes in talking during vertigo (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
995	67	18	<p>- SALIVATION: profuse and bitter with paralysis, headache...(IE-VJ)\n<br />- LARYNX AFFECTION: recurrent hoarseness of voice (IE-VJ)\n<br />- BRAIN AND NERVE AFFECTIONS (IE-VJ). -&gt; twitching, convulsions, Parkinson's disease. Runs when walking. Involuntary salivation, laughing, weeping (MM-GL)\n<br />- TWITCHING: parts -&gt; eyelid, jaw, forehead, neck, fingers, penis (MM-GL)\n<br />- Have vertigo while drinking water (MM-GL)\n<br />- Hawk constantly (MM-GL)\n<br />- CHANGEABILTY OF SYMPTOMS: (IE-VJ)\n<br />symptoms, sides, moods change. Writing -&gt; becomes smaller, especially in Parkinson's disease, Motor Neuron Disease, Astrocytoma i.e. degenerative affections of brain and nerves (IE-VJ)\n<br />- ALL MODALITIES -&gt; change to opposite:\n<br />Touch agg. \t– Massage amel.\n<br />Warmth amel.\t– and agg.\n<br />Open air agg. \t– and amel.\n<br />Music agg. \t– and amel.</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
996	67	20	<p>Mang % Pall: loves appreciation for work and deeds / loves appreciation for looks</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
997	67	22	<p>People who are benevolent expect appreciation for their work (unlike Palladium looks) people fish for compliments.\n<br />Mang.: \tCan appear like Phos. or Choc. Always smiling, laughing (sycotic), not embittered. Wants to be appreciated for his works, for his deeds. It is a very giving remedy. We need to see, how a remedy grows from one sphere to another. Even we have to think, is it matching for the other spheres.</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
998	68	1	<p>Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
999	68	4	<p>Hot (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1000	68	11	<p>POLITICIANS\n<br />1. VERY FRIENDLY TO EVERY ONE OUT OF INSECURITY (IE-VJ)\n<br />2. ANXIOUS - ALWAYS ABOUT SUCCESS (IE-VJ)\n<br />3. CLOUDY WEATHER AGGRAVATES (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1060	76	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1001	68	12	<p>- Politician's remedy (IE-VJ)\n<br />- Insecurity -&gt; anxious about future success (IE-VJ)\n<br />- Do not want to loose their chair (IE-VJ)\n<br />- Active till the point of exhaustion (IE-VJ)\n<br />- Cannot afford to make anyone an enemy (IE-VJ)\n<br />- Therefore talk to anyone like a good old friend (IE-VJ)\n<br />- They fraternize the whole world and if one person breaks away they get angry on themselves (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1002	68	17	<p>- Extroverted - Sweet talkers (IE-VJ, p 21)\n<br /> \n<br />- Very friendly to every one out of insecurity (IE-VJ)\n<br />- Politician's remedy (IE-VJ)\n<br />- Anxious, always about success (IE-VJ)\n<br />- Insecurity -&gt; anxious about future success (IE-VJ)\n<br />- Do not want to loose their chair (IE-VJ)\n<br />- Active till the point of exhaustion (IE-VJ)\n<br />- Cannot afford to make anyone an enemy (IE-VJ)\n<br />- Therefore talk to anyone like a good old friend (IE-VJ)\n<br />- They fraternize the whole world and if one person breaks away they get angry on themselves (IE-VJ)\n<br />- Cloudy weather agg.(IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1003	68	18	<p>- Redness and heat of face due to excitment during speech (IE-VJ)\n<br />- Tendency to gastric disturbances, diarrhoea or ano-rectal complaints (IE-VJ)\n<br />&lt; hot and cloudy weather (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1004	69	1	<p>Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1005	69	4	<p>Chilly or hot (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1006	69	5	<p>Thirsty (IE-VJ, p 87)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1007	69	10	<p>- If patient does not love music or dancing (PHL)\n<br />- If patient is lethargic and akward (ungeschikt) (PHL)\n<br />- If he can wait (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1008	69	11	<p>1. IMPATIENCE, WANTS THINGS JUST NOW (IE-VJ)\n<br />2. RESTLESS-SHAKES LIMBS, MOVES ABOUT (IE-VJ)\n<br />3. LOVES MUSIC, LOVES TO DANCE (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1105	82	18	<p>- Heaviness of upper eyelids (IE-VJ)\n<br />- slowness because of balance of cerebellar affection (NI-2014)\n<br />- nerves don't obey the will (NI-2014)\n<br />- diplopia (PV-S-10/14)\n<br />- vision: objects seems distant, images for long retained (Nachbilder) (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1106	83	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1107	83	4	<p>Chilly (IE-VJ, p 83)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1009	69	12	<p>- Impatience: they want everything immediately. They want to hurry and want others to be quick as them, if not, they get wild. If they ask for something they want it just now (IE-VJ)\n<br />- Legs shake out of restlessness, moves about from one place to another, cannot sit in one place (IE-VJ)\n<br />- These people love music and they also love to dance (IE-VJ)\n<br />- Children who put their collars in mouth, or chew a towel constantly could be a Tarent (IE-VJ)\n<br />- They are basically timid but because of syp they do not know the consequences and hence become restless, heedless and fearless (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1010	69	13	<p>BOGER (BO-SK):\n<br />- NERVEN\n<br />- HERZ\n<br />- Wirbelsäule\n<br />- ATMUNG\n<br />- Genitalien (weibliche)\n<br />- Rechte Seite</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1011	69	16	<p>Syphilitic (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1013	69	18	<p>- Eating indigestible things, children eat sand (MM-GL)\n<br /> \n<br />- Eyes moving constantly (MM-GL)\n<br />- Cerebral paralysis (MM-GL)\n<br />- Constipated (MM-GL)\n<br />- Legs shake out of restlessness, moves about from one place to another, cannot sit in one place (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1014	69	19	<p>- Children who put their collars in mouth, or chew a towel constantly (IE-VJ), put clothes in the mouth (MM-GL)\n<br />- Eating indigestible things, children eat sand (MM-GL)\n<br />- Children throw themselves backwards on mothers arm and do not care (MM-GL)\n<br />- In the clinic they make terror from the beginning (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1015	69	20	<p>Tarent % Tarent-c: </p>\n\n<p>Restless                              Restless, more of lower extremities\n<br />Timid, fearful                        Fearless\n<br />Passionate, not sympathetic           Compassionate very sympathetic\n<br />Loves fast music, dancing music       Loves soft music, light music, old songs\n<br />Loves dancing                         Dancing is less\n<br />Music amel\n<br />                                      Any swelling is hard like a card board (Clarke)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1016	70	17	<p>- More extreme than Tarent (MM-GL)\n<br />- Extremely restless and impatient, more quick, rough, hard, in a hurry (MM-GL)\n<br />- No fears, courageous (MM-GL)\n<br />- No feelings (MM-GL)\n<br />- Obstinate (MM-GL)\n<br />- Better by smoking (MM-GL)\n<br />- Loves slow and soft music (DD: Tarent -&gt; loud and beat music, Lach -&gt; not specific, love rythmic music) (Ambr-S-10/2013, p47)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1017	70	20	<p>Tarent % Tarent-c: </p>\n\n<p>Restless                              Restless, more of lower extremities\n<br />Timid, fearful                        Fearless\n<br />Passionate, not sympathetic           Compassionate very sympathetic\n<br />Loves fast music, dancing music       Loves soft music, light music, old songs\n<br />Loves dancing                         Dancing is less\n<br />Music amel\n<br />                                      Any swelling is hard like a card board (Clarke)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1018	71	1	<p>Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1019	71	2	<p>Respect (MM-GL)\n<br />-&gt; esteem, narrating how he is the best (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1020	71	4	<p>Chilly (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1021	71	10	<p>- If jerkiness is missing (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1022	71	13	<p>PRAFULL VIJAYAKAR:\n<br />- Nerve remedy (PV-I-S-01/15, p32)\n<br />- Irritation of nerves - not paralysis (PV-I-S-01/15, p32)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1023	71	17	<p>- Extroverted - Self praisers (IE-VJ, p 21)\n<br /> \n<br />- Loud talker (IE-VJ)\n<br />- Talk fast but in jerks (IE-VJ)\n<br />- Praises himself, likes to impress (Plat. feels to be alteady on top, does not need to push himself up) (IE-VJ)\n<br />- Fast (MM-GL)\n<br />- No control, restless (PV-I-S-01/15, p32)\n<br />- Hasty, hurried (PV-I-S-01/15, p32)\n<br />- Awkwardness (PV-I-S-01/15, p32)\n<br />- Likes to dance difficult, dances vehement (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1024	71	18	<p>- NERVES (MM-GL), irritation of nerves (PV-I-S-01/15, p32)\n<br />- Jerking (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1025	72	1	<p>Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1026	72	17	<p>- Extroverted - Self praisers (IE-VJ, p 21)\n<br /> \n<br />- Likes to talk about themselves (IE-VJ)\n<br />- Foolish trait in the conversation (IE-VJ)\n<br />- The talking does not make any sense, but the person seems to think what she is saying means a lot (IE-VJ)\n<br />- Very loquacious talks but no substance (IE-VJ)\n<br />- They keep prattling with vivacity (IE-VJ)\n<br />- The stories are unrealistic (IE-VJ)\n<br />- Talks about his dreams, which are highly ambitious but foolish (IE-VJ)\n<br />- Talk is vivacious and ridiculous (IE-VJ)\n<br />- Haughty (IE-VJ)\n<br />- High ego but foolish (MM-GL)\n<br />- Mocking out of foolish ego (IE-VJ, p86)\n<br />- They are discontented with their surroundings so they aim high (IE-VJ)\n<br />- Affectionate and loving people (IE-VJ)\n<br />- Misplaced anxiety (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1027	73	1	<p>2nd Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1028	73	2	<p>Love &amp; Support &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1029	73	3	<p>Slow: slow thought process (opp. of Lach) (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1030	73	4	<p>Chilly (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1031	73	5	<p>Thirsty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1032	73	6	<p>More left (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1033	73	8	<p>Conscientious and diligent  (IE-VJ, p 59)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1034	73	10	<p>- If metallic qualities are missing (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1035	73	12	<p>- Mild and timid and quiet people - starts talking after questions (MM-GL)\n<br />- Smiling face, contented (MM-GL)\n<br />- A/F hurry (becomes slow and sycotic) looses elasticity (MM-GL)\n<br />- Timidity alternating with assurance (MM-GL)\n<br />- Courageous alternating with fear (MM-GL)\n<br />- Courageous alternating with timidity (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1039	73	18	<p>- Loss of ability to push out stool. Constipation with soft stools (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1040	73	20	<p>% Cann-i: fancies, science oriented - in syc fancies pleasant (MM-GL)\n<br />% Cann-s: mind is weak, more sexual fancies, GO, no mental strength (MM-GL)\n<br />% Cimic: always talking about her house, children, talk bombast and worthless (hysterical) (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1041	73	22	<p>- Quiet, timid, communicative, expansive, talkative (Lach) (MM-GL)\n<br />- Concentration active, with inability for mathematics (MM-GL)\n<br />- Business, money - dreams (MM-GL)\n<br />- Extravagant (MM-GL)\n<br />- Social position, concerned about (MM-GL)\n<br />- Undertakes many things but perseveres in nothing (MM-GL)\n<br />- Slow, hurry with slow execution (MM-GL)\n<br />- Obstinate (MM-GL)\n<br />- Absentminded (MM-GL)\n<br />- Contented (MM-GL)\n<br /> \n<br />- Constipated: soft stools rewhire great straining, sheep dung like (MM-GL)\n<br />- Feeling of cushion on the soles, soles numb (MM-GL)\n<br />- Bran like scales, cracks (MM-GL)\n<br />- Red nose (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1042	74	1	<p>2nd Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1043	74	4	<p>Chilly (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1044	74	5	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1045	74	11	<p>1. CHANGEABILITY OF LOCATION OF SYMPTOMS (IE-VJ)\n<br />2. LOQUACITY, CHANGES SUBJECT (IE-VJ)\n<br />3. INDIFFERENCE TO DOMESTIC DUTIES (IE-VJ)\n<br />4. DULL, CONFUSED, AS HEAVY DARK CLOUD ENVELOPED HER (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1046	74	12	<p>- Changeability of symptoms, changeability of location of symptoms (IE-VJ)\n<br />- Everything starts with rheumatism, changeable pains in joints (IE-VJ)\n<br />- Loquacity, changes subjects, jumps from one topic to another (IE-VJ)\n<br />- Loquacity, unimportant matters about (IE-VJ)\n<br />- Indifference to domestic duties (IE-VJ)\n<br />- Dull, confused, as if heavy dark cloud enveloped her (IE-VJ)\n<br />- Mannish habits of woman (IE-VJ)\n<br />- Sees rat passing on floor (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1047	74	17	<p>- Changeability of symptoms, changeability of location of symptoms (IE-VJ)\n<br />- Hysterical (IE-VJ), histerical sensitivity (MM-GL)\n<br />- Unpredictible (MM-GL)\n<br /> \n<br />- Loquacity, changes subjects, jumps from one topic to another (IE-VJ)\n<br />- Loquacity, unimportant matters about (IE-VJ)\n<br /> \n<br />- Sadness (IE-VJ)\n<br />- Feels neglected and rejected (MM-GL)\n<br />- Very anxious (MM-GL)\n<br />- Indifference to domestic duties (IE-VJ)\n<br /> \n<br />- Dull, confused, as if heavy dark cloud enveloped her (IE-VJ)\n<br /> </p>\n\n<p>- Mannish habits of woman (IE-VJ)\n<br /> \n<br />- Sees rat passing on floor (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1048	74	18	<p>- Everything starts with rheumatism, changeable pains in joints (IE-VJ)\n<br /> \n<br />- Pains erratic, going from here to there (MM-GL)\n<br />- Labour pains are going in all directions instead of going downward --&gt; no delivery (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1049	74	20	<p>% Cann-i: fancies, science oriented - in syc fancies pleasant (MM-GL)\n<br />% Cann-s: mind is weak, more sexual fancies, GO, no mental strength (MM-GL)\n<br />% Cimic: always talking about her house, children, talk bombast and worthless (hysterical) (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1096	82	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1061	76	4	<p>Hot or chilly (not to be ruled out because of thermals) (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1062	76	7	<p>To high pitched songs, music (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1063	76	8	<p>Non-conscientious, non-diligent (IE-VJ, p92)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1064	76	11	<p>1. SOFT SPOKEN (IE-VJ)\n<br />2. EMOTIONS NEED TO BE CONTROLLED BY INTELLECT (IE-VJ)\n<br />3. SENSITIVE TO HIGH PITCHED SONGS, MUSIC (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1065	76	12	<p>- Soft spoken. When hurt, they become sad, melancholic but their intellect overpowers the emotions and they appear very calm, cool, contented, placid and sweet and react as if nothing has happened (IE-VJ)\n<br />- Voices is very soft and low, but hurt and wound inside opens up when they hear very shrill, high pitched songs, music like violin, sitar (IE_VJ)\n<br />- They cannot tolerate bright, sharp hight frequency lights which are harsh (IE-VJ)\n<br />- Can be hot or chilly (not to be ruled out because of thermals) (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1066	76	16	<p>Syco-syphilitic remedy (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1108	83	5	<p>Thirsty (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1109	83	6	<p>Right (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1110	83	8	<p>Non-diligent (IE-VJ, p 83)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1111	83	12	<p>- Anticipation with pain in the abdomen (IE-VJ)\n<br />- Marked leanness (IE-VJ)\n<br />- Affection of nerves, constipation (IE-VJ)\n<br />- Metallic positivity with timidity (IE-VJ)\n<br />- Overpowering sleep when working (IE-VJ)\n<br />- Plb has tremendous anticipation and fear, which other metals don't have (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1112	83	13	<p>Praful Vijiayakar:\n<br />- Affection of nerves (IE-VJ)\n<br />- Constipation (IE-VJ)\n<br /> \n<br />BOGER:\n<br />- Bone marrow, nerves (muscles, abdomen, kidneys, umbelicus)\n<br />- Vessles\n<br />- Blood</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1766	15	10	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:23
1767	15	14	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:23
1068	77	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1069	77	4	<p>CHANGEABLE (MM-GL)\n<br />Chilly, after 5 min hot (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1070	77	12	<p>- If the patient wants fanning because of heat and after some min. wants to switch off because of coldness (IE-VJ)\n<br />- IF he has cold clammy perspiration (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1071	77	13	<p>PRAFULL VIJAYAKAR:\n<br />- Psoriasis</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1072	77	14	<p>When you think of Puls think at Camph (MM-GL)\n<br />Canth (Kent, p391)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1073	77	16	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1074	77	17	<p>- Introverted, thinks for herself and family (MM-GL)\n<br />- Ladies who have responsibility in their family but no metallic qualities (MM-GL)\n<br />- Secure inside the house, outside very unsure (MM-GL)\n<br /> \n<br />- Silent positive person (Ambr-S-11/2015, p18)\n<br />- Positive, at home, outside dicey. No stability (MM-GL)\n<br />- Positive yet wants consolation (MM-GL)\n<br />- Achievers (MM-GL)\n<br /> \n<br />- Does not tolerate domination, silent rebellious, will reject at some point (Ambr-S-11/2015, p18)\n<br />- Cannot face attack (MM-GL)\n<br /> \n<br />- As if everything hold on one point (MM-GL)\n<br />- Changeability ++ (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1075	77	18	<p>- Changeable thermals! (MM-GL)\n<br />- Psoriasis\n<br />- Ladies with psor: queen bee at home but weak outside (MM-GL)\n<br />- excessive perspiration (NI-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1076	78	4	<p>Chilly (IE-VJ, p 55)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1077	78	12	<p>1. TALK HASTY (TAN-I-01/2017)\n<br />2. RICH, FEELS HE IS\n<br />3. PULSE RAPID (140/Min)\n<br />4. BED FEELS HARD, BED HURTS LEG (TAN-I-01/2017)\n<br />5. OFFENSIVE DISCHARGE (TAN-I-01/2017)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1078	78	17	<p>- Talks hasty (TAN-I-01/2017)\n<br />- Loquatious (TAN-I-01/2017)\n<br />- Thoughts are fast, rapid (TAN-I-01/2017)\n<br />- Erroneous idea about body (TAN-I-01/2017)\n<br />- Confusion of identity (TAN-I-01/2017)\n<br />- Cannot tell wether he was awake or asleep (TAN-I-01/2017)\n<br />- Mind fast / body weak (TAN-I-01/2017)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1079	79	17	<p>- Delirium + loquatious during fever (GM/Delirium/Redseligkeit mit) (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1080	80	4	<p>Chilly (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1081	80	5	<p>NOT thirsty (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1082	80	11	<p>1. OPEN HEARTED LOQUACITY (IE-VJ)\n<br />2. AKWARD (IE-VJ)\n<br />3. INTOLERANCE TO CLOTHES ON ABDOMEN (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1083	80	12	<p>- Open hearted loquacity (IE-VJ)\n<br />- Akwardness of hand, tend to drop things. Akwardness - fingers (IE-VJ)\n<br />- Abdomen sensitive to clothes (IE-VJ)\n<br />- They are very quarrelsome (IE-VJ)\n<br />- They are very courageous (IE-VJ)\n<br />- Body gets indented with pressure (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1084	80	17	<p>- Open hearted loquacity (IE-VJ)\n<br />- Naive. Tell the plain truth (MM-GL)\n<br />- They are very quarrelsome (IE-VJ)\n<br />- They are very courageous (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1085	80	18	<p>- Abdomen sensitive to clothes (IE-VJ)\n<br />- Body gets indented with pressure (IE-VJ)\n<br />- abdomen: sensitive to touch (PV-S-10/14)\n<br />- hearing false (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1087	81	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1088	81	2	<p>Support (GL, PV-S-11/10)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1089	81	4	<p>Chilly (IE-VJ, p 83)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1090	81	5	<p>Thirsty (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1091	81	8	<p>Non-diligent (IE-VJ, p 83)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1092	81	10	<p>- If the person is not restless (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1093	81	12	<p>- Obsequious (unterwürfig), offers seat to others and pays excessive undue respect to others, as if he is willing to go out of the way to give you anything (IE-VJ)\n<br />- Mild (IE-VJ)\n<br />- Physical restless without mental anxiety (IE-VJ)\n<br />- &gt; Motion (IE-VJ)\n<br />- Superstitious (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1095	81	18	<p>&gt; Continued motion (IE-VJ, p 82)\n<br />&lt; First motion, rest, rainy weather (IE-VJ, p 82)\n<br />- hands: discoloration purple (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1097	82	4	<p>Hot (in general) (IE-VJ, p82, MM-GL)\n<br />Chilly (in acute) (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1098	82	5	<p>NOT thirsty (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1099	82	6	<p>Right (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1100	82	8	<p>Non-diligent (IE-VJ, p 83)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1101	82	10	<p>- If they are not slow and have no sleepiness (PHL)\n<br /> \n<br />- IN ACUTE: if there is no heaviness of eyelids (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1102	82	11	<p>1. HEAVY EYELIDS (IE-VJ)\n<br />2. DULLNESS (IE-VJ)\n<br />3. SLEEPY BUT CANNOT SLEEP (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1103	82	12	<p>- Tremulous, anticipatory patient (IE-VJ)\n<br />- A/F vexation (Ärger, Verdruss) (IE-VJ)\n<br />- Heaviness of upper eyelids (IE-VJ)\n<br />- Timid (IE-VJ)\n<br />- Looseness, laxness and giddiness (Schwindel) (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1104	82	17	<p>- Introverted - Timid (IE-VJ)\n<br /> \n<br />- Tremulous, anticipatory patient (IE-VJ)\n<br />- A/F vexation (Ärger, Verdruss) (IE-VJ)\n<br />- Looseness, laxness and giddiness (Schwindel) (IE-VJ)\n<br />- Excessive anticipation. Apprehension (MM-GL)\n<br />- Confidence, want of self (MM-GL)\n<br />- Dullness, drowsiness (MM-GL)\n<br />- Sleepy but cannot sleep (MM-GL)\n<br />- Fainting after vexation (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1115	84	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1116	84	2	<p>- LOVE (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1117	84	4	<p>Chilly (MM-GL; IE-VJ, p95; PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1118	84	5	<p>NOT thirsty (IE-VJ; PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1119	84	7	<p>- BOND (any relationship is broken -       he suffers) (PV-S-10/14))</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1120	84	8	<p>Diligent (IE-VJ; p81+83; PV-S-10/14)\n<br />Conscentious (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1121	84	9	<p>Desire for fruit juices and refreshing drinks (IE-VJ; PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1122	84	10	<p>- IN ACUTE: if there is no desire for cold drinks (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1123	84	11	<p>- DROWSINESS, sleepiness, dullness, irritability (PV-S-10/14)\n<br />- CLOUDINESS, CONFUSION of mind (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1125	84	13	<p>Praful Vijayakar:\n<br />- physiological picture (temporary): 1. physiology, 2. biochemistry (PV-S-10/14)\n<br />- chronic picture: 1. mind, 2. body (PV-S-10/14) \n<br /> \n<br />- UTI (urinary-tract-infection) with prostration and weakness (PV-S-10/14)\n<br />- ULCERS AT JOINTS (PV-S-10/14), Ulcers with jagged margins, ragged edges, painless, no redness, indolent, serpiginous (PV-S-10/14)\n<br />- Bones growth fast - affected, caries, necrosis, osteomyelitis, with crumbling and exfoliation (PV-S-10/14)\n<br />- BONES: brittle, crumble necrosis (PV-S-10/14)\n<br />- HEART: cardiac weakness from disappointed love (PV-S-10/14)\n<br />- LUNGS: TB from disappointed love, homesickness, suppressed diarrhea (PV-S-10/14)\n<br />- KIDNEYS: thick white urine, interrupted; flows better when standing (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1126	84	16	<p>Chemical formula: HPO3\n<br /> \n<br />- lot of emotions love, affection (-phos part)(PV-S-10/14)\n<br />- destruction (-acid part) (PV-S-10/14)\n<br />- Contradictory Symptoms: thirstless - loves cold, refreshing drinks/ chilly - sunlight agg./ sentimental - music agg./ sleepness at night with sleepiness during day/ desires acids - acids and sour food cause flatulence (PV-S-10/14)\n<br />- weakness from chronic brain fag (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1202	98	11	<p>1. PATIENT AND CONTENTED (IE-VJ)\n<br />2. SENSITIVE TO RUDENESS, ORPHANED FEELING AND FRIENDLESS (IE-VJ)\n<br />3. &lt;&lt; MILK, MORNING (IE-VJ)\n<br />4. LIVER AFFECTION (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1448	136	5	<p>NOT thirsty (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1127	84	17	<p>- Introverted - Timid (IE-VJ)\n<br />- Introverted - AWOTA (angry when obliged to answer) (IE-VJ, p 85)\n<br />- Introverted - sad and melancholic (IE-VJ, p 95)\n<br /> \n<br />- Angry when obliged to answer (IE-VJ)\n<br />- Irritated but does not express (MM-GL)\n<br />- answers slow, short, incoherent/ reflects long before answering (PV-S-10/14)\n<br /> \n<br />- Diligent (IE-VJ)\n<br /> \n<br />- Sad and indifferent (IE-VJ)\n<br />- Indifference, apathy, sadness (PV-S-10/14)\n<br />- Loves to be alone and brood (IE-VJ)\n<br />- Quiet person. Desires solitude. Desires tranquillity (MM-GL)\n<br />- Resignation (IE-VJ)\n<br />- Affectionate (MM-GL)\n<br /> \n<br />- physiol. effects: exhaustion of mind/ drowsiness, sleepiness, dullness/ cloudy sensorium, confused/, AWOTA - angry when obliged to answer (answers abrupt, short, slow, unintelligible)/ anxiety he will fall ill (PV-S-10/14)\n<br />- Tremendous weakness and prostration (MM-GL)\n<br />- Mental weakness followed by physical weakness (IE-VJ)\n<br />- mind though weak hearing sense goes into imaging that there is a clock in the room (PV-S-10/14)\n<br />- memory weakness, mental fatigue (PV-S-10/14)\n<br />- memory loss for names, even family members (PV-S-10/14)\n<br />- forgets names of family members and remembers other names (PV-S-10/14)\n<br />- STUPOR (PV-S-10/14)\n<br /> \n<br />- domain-oriented (hamer: disturbance in domain - problems in urinary-tract) (PV-S-10/14)\n<br />- Homesick (IE-VJ) - home, lover, business, child, mother, roots (PV-S-10/14)\n<br />- A/F grief, anger, mortification (IE-VJ)\n<br /> \n<br />- Effect of grief on head: CEREBROSPINAL EXHAUSTION - when patients feels heaviness in head extending from forehead to bake-off head and into spine (pic-ac) after mental agony or depression/ sensation something is under the forehead and would like to find out/ hard or heavy ball is in occiput, cannot rise/ violent headache from music (PV-S-10/14)\n<br /> \n<br />- effect on grief on nerves/ vestibular system: Upside-down - due to grief of lost home or lost beloved he becomes light in head, the world of patient turns upside down/ instability of posture when lying in bed- feels legs going up and head tilted down/ feels floating when lying in bed/ feels stomach is balanced up-down/ spasm in throat - anticipation is so increased that he chokes while drinking water if someone is looking at him/ spasms face muscles mouth (eyes)- distortion with any mental distress like insanity - only Ph-ac (PV-S-10/14)\n<br /> \n<br />- muttering, murmering (PV-S-10/14)\n<br />- dreams before midnight pleasant, after midnight frightful (PV-S-10/14)\n<br />- feels that he hear furniture in his room move (PV-S-10/14)\n<br />- guilty conscience after masturbation (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1159	86	11	<p>1. SLOWNESS OF ACTIVITY, SLOWNESS AFTER ACUTE DISEASE (IE-VJ)\n<br />2. MONEY MINDED (IE-VJ)\n<br />3. SARCASM (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1160	86	13	<p>PRAFULL VIJAYAKAR:\n<br />- Skin affection (IE-VJ)\n<br />- Neurological (Ambr-S-10/13)</p>\n\n<p>more sensitive carbon, the only left sided Carbon (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1161	86	14	<p>Puls (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1162	86	16	<p>- SYCO-syp (MM-GL)\n<br />ALLGEMEIN\n<br /> \n<br />Complements: Nux-v - Graph\n<br /> \n<br />Very good explanation in Genetic Materia Medica - PV page 174-184</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1217	99	16	<p>HURT -&gt; ACCEPT HURT, DO NOT REACT, RESIGN TO THE FATE (all Magnesia, Sep) (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1381	128	11	<p>1. OBSTINATE (IE-VJ)\n<br />2. WANDERING DESIRES (IE-VJ)\n<br />3. RELAPSING COMPLAINTS (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1768	15	26	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:24
1129	84	19	<p>- profuse urination, large quantity (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1130	84	20	<p>- Hyper, Bell-p, Stram: injury to nerve, inflammation and pain (PV-S-10/14)\n<br /> \n<br />- Nux-v, Cham: music agg.\n<br />- Sep: round patches in pneumonia, completely thirsts, no desire refreshing things, no emotional disturbance (PV-S-10/14)\n<br />- Arn, Sulph: phantom pains (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1131	84	23	<p>- Music is the enemy: cannot tolerate music, piano sounds (PV-S-10/14)\n<br />- music causes violent headache, pain in ear, neuralgia, pain in teeth (Ther) (PV-S-10/14)\n<br />- cough: hearing music agg. (PV-S-10/14)\n<br />- sadness from music (PV-S-10/14)\n<br />- heat sensation of single parts (PV-S-10/14)\n<br />- throat pit is sensitive:  keeps head and neck straight as slightest bend of neck causes choking, constriction at throat pit, chokes when someone looks at him drinking (PV-S-10/14)\n<br /> \n<br />- internally feels as if there is FUR or soft cloth inside all organs (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1133	85	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1134	85	2	<p>Love &amp; Support &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1135	85	3	<p>Stasis, inert, torpor (MM-GL)\n<br />Slow (IE-VJ, p 87)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1136	85	4	<p>Chilly (IE-VJ)\n<br />Yet wants funning, open air (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1137	85	5	<p>Thirsty (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1138	85	6	<p>Right (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1139	85	8	<p>Non-conscientious, non-diligent (IE-VJ, p92)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1140	85	10	<p>- If the person is fast and active, and the illness is fast and violent (PHL)\n<br />- If the headache is tapping and not dull (PHL)\n<br />- If due to anger or excitement the head gets red (PHL)\n<br />- If there are no liver problems in the history (PHL)\n<br />- If the person wakes up refreshed in the morning (PHL) \n<br />- If there are fresh arterial bleedings (PHL)\n<br /> \n<br />- IN ACUTE: if the person is active (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1141	85	11	<p>1. SLOWNESS OF ACTIVITY, SLOWNESS AFTER ACUTE DISEASE (IE-VJ)\n<br />2. MONEY MINDED (IE-VJ)\n<br />3. SARCASM (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1142	85	12	<p>- Never well since a past injury (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1143	85	13	<p>PRAFULL VIJAYAKAR:\n<br />- Circulatory system (IE-VJ)\n<br />  - Blood vessel, cardio-vascular system, venous problems (Ambr-S-10/13)\n<br />- GI (IE-VJ)\n<br />- Liver affection (IE-VJ) (caused from stasis and weakness causing deficiency in the nutrition of the liver (Ambr-S-10/13))</p>\n\n<p> \n<br />BOGER (BO-SK):\n<br />- SCHLEIMHÄUTE: VERDAUUNGSTRAKT, MAGEN \n<br />- HERZ: VENÖSER KREISLAUF, BLUT\n<br />- HINTERKOPF</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1144	85	16	<p>- sycosis (MM-GL)\n<br />ALLGEMEIN</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1146	85	18	<p>- Can be lean, thin like Phos (Ambr)\n<br /> \n<br />- Body dull (MM-GL)\n<br />- STASIS: circulatory system and GIT system wich causes puffy swelling with liver affections to cause distension with offensiveness (IE-VJ)\n<br />- Wants fanning all the time (IE-VJ)\n<br />- Perspiration (SW) increased (IE-VJ)\n<br />- Abdomen: sensitive to touch (PV-S-10/14)\n<br /> \n<br />- Venous bleeding (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1147	85	20	<p>Carbons % Calcareas (MM-GL):</p>\n\n<p>Not conscientious /  Conscentious\n<br />Unhappy, unfortunate, dejected / Insecuritiy, desire touch \n<br />Stasis, inert, torpor / Slowness\n<br />No excitement for even pleasant things / High, impressionable\n<br /> \n<br />Carb-v % Graph (MM-GL):\n<br />A/F dictatorialness and strong dominance / A/F lack of affection\n<br /> \n<br />DD Clelia:\n<br />Common to all: timid, anticipation, insecure, Slowness, money minded, sarcasm, chilly\n<br />Carb-v                     Graph                       Pet\n<br />right                    / Left                      / right\n<br />Unfortunate feeling      / Fearful, weak willed      / Mild\n<br />Affectionate, not angry  / Sad, weeping, emotional   / Quarrelsome\n<br />Oversensitive            / Changeable                / Offended easily</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1148	85	21	<p>- Obstinate, headstrong (MM-GL)\n<br />- Affectionate (MM-GL)\n<br />- Passionate (MM-GL)\n<br />- Flatterer (MM-GL)\n<br />- Avarice as regards to his family, generosity toward strangers (MM-GL)\n<br />&lt; music (MM-GL)\n<br />- Timidity appearing in public (MM-GL)\n<br />- Embarassment in society (MM-GL)\n<br />- Unfortunate feeling (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1149	85	22	<p>- Never well sice jaundice, major illness (MM-GL)\n<br />- Unfortunate feeling (MM-GL)\n<br />- Business, desire for (MM-GL)\n<br />- A/F debauchery, sexual excess (MM-GL)\n<br />- Dipsomania (MM-GL)\n<br />- Excitement, as if hurried (MM-GL)\n<br />- Extravagance (MM-GL)\n<br />- Exaltation of fancies (MM-GL)\n<br />- Hurry, in occupation (MM-GL)\n<br />- Ideas, abundant (MM-GL)\n<br />- Impatience, impetuous (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1150	85	23	<p>- Forsaken feeling (MM-GL)\n<br />- Despair (MM-GL)\n<br />- Makes verses (MM-GL)\n<br />- Stasis -&gt; indifference, apathy (MM-GL)\n<br />- Answers slowly (MM-GL)\n<br />- Confidence, want of self (MM-GL)\n<br />- Dullness, imbecility (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1151	86	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1152	86	2	<p>Love &amp; Support &amp; Respect (GL)\n<br /> \n<br />Need in childhood: safety (GMM-VJ), p178\n<br />Cannot bear disharmony! (GMM-VJ), p178</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1153	86	3	<p>Stasis, inert, torpor (MM-GL)\n<br />Slow (IE-VJ, p 87)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1154	86	4	<p>Chilly (MM-GL)\n<br />Yet wants fanning, open air (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1155	86	5	<p>Thirsty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1156	86	6	<p>Left (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1157	86	7	<p>- Discords ++, disharmony ++ (GMM-VJ, p184)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1158	86	8	<p>Non-diligent (IE-VJ, p95)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1164	86	18	<p>- Obese (MM-GL)\n<br />- Skin affection with gluey discharges (IE-VJ)\n<br />- Constipation with rounded sticky stool (IE-VJ)\n<br />&lt; Carriage riding (MM-GL)\n<br />- Headache but amel hearing (MM-GL)\n<br />- Hardness of skin (MM-GL)\n<br />- abdomen: sensitive to touch (PV-S-10/14)\n<br />-hearing impaired: riding in carriage (lot of noise from outside) amel.(PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1166	86	23	<p>- Mocking (MM-GL)\n<br />- Sarcasm (MM-GL)\n<br />- Cracked nails and skin (MM-GL)\n<br />- Sphere of action is mainly nervous system and skin (MM-GL)\n<br />- Thirsty for small quantities but with dryness of mouth (MM-GL)\n<br />- All mental symptoms are better by walking in open air (MM-GL)\n<br />- Sensitive to smell of flowers and also aggravated ba smell of flowers (MM-GL)\n<br />&gt; Darkness (MM-GL)\n<br />&lt; Music, but can hear better in noise (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1167	87	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1168	87	2	<p>Love &amp; Support &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1169	87	3	<p>Stasis, inertness, torpor (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1170	87	4	<p>Chilly (IE-VJ)\n<br />Yet wants fanning, open air (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1171	87	5	<p>Thirsty (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1172	87	6	<p>Right (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1173	87	9	<p>Unquenchable thirst for cold water (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1174	87	11	<p>1. SLOWNESS OF ACTIVITY, SLOWNESS AFTER ACUTE DISEASE (IE-VJ)\n<br />2. MONEY MINDED (IE-VJ)\n<br />3. SARCASM (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1175	87	13	<p>PRAFULL VIJAYAKAR:\n<br />- GI affection \n<br />- SKIN affection, muco-cutaneous junctions (IE-VJ) \n<br />- Cracks in the skin (IE-VJ)\n<br />- Neuro-ectodermal affection (Ambr-S-10/13)\n<br />- Brain affection (Ambr-S-10/13 - Fall 7)\n<br />- Injury (Ambr-S-10/13 - Fall 7)\n<br /> \n<br />BOGER (BO-SK):\n<br />- HINTERKOPF\n<br />- HAUT:FALTEN, Kopfhaut, Gesicht, Genitalien\n<br />- Schleimhäute\n<br />- Magen. Gedärme</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1176	87	16	<p>- Quick remedy: symptoms appear suddenly and go suddenly (MM-GL)\n<br />- Syco-syphilitic (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1177	87	17	<p>- Introverted due to timidity and anticipation (IE-VJ)\n<br /> \n<br />- SLOWNESS: slowness of activity, slowness after acute (IE-VJ)\n<br />- Mental symptoms are &lt; by walking in open air (Ambr-S-10/13)\n<br />- Always problems with perception -&gt; hence confusion and delusions (Ambr-S-10/13)\n<br />- Alternating states, dullness alternating with excitement (MM-GL)\n<br />- Anticipation (IE-VJ)\n<br />- Mild yet quarrelsome (IE-VJ)\n<br />- Offended easely, quarrelsome (MM-GL)\n<br />- Sarcasm (IE-VJ)\n<br />- Money minded because of insecurity (MM-GL)\n<br />- Mannish habits of girls (IE-VJ)\n<br />- Don't like to move (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1178	87	18	<p>- Lean, thin, emaciated (MM-GL)\n<br /> \n<br />- Motion sickness (Ambr-S-10/13), nausea from car riding (IE-VJ)\n<br />- A/F riding in carriage, ships (MM-GL)\n<br /> \n<br />- Cracks of skin (IE-VJ)\n<br />- Skin problems (MM-GL)\n<br />- Burning palms and souls (Canth, Sang, Sulph) (MM-GL)\n<br />- Herpes genitalis (MM-GL)\n<br />- GI affections accompanied with skin affections (IE-VJ)\n<br /> \n<br />- Vertigo on rising up, as if intoxicated (MM-GL)\n<br />- Vertigo, nausea (MM-GL)\n<br />- Vestibular organ is affected by stress (MM-GL)\n<br />- Tinnitus, ringing in the ear (MM-GL)\n<br /> \n<br />- Glandular enlargment (MM-GL)\n<br />- Foul smell (MM-GL)\n<br /> \n<br />&lt; before and during thunderstorm (MM-GL)\n<br />&lt; in winter (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1203	98	12	<p>- Fat rounded features (IE-VJ)\n<br />- &lt;&lt; Milk (IE-VJ)\n<br />- Green diarrhea (IE-VJ)\n<br />- Forsaken feeling (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1180	87	21	<p>PSOR ALWAYS WITH SYP TRAITS (Ambr-S-10/13)\n<br /> \n<br />MIND\n<br />- Anxiety for family (Ambr-S-10/13)\n<br /> \n<br />BODY\n<br />- Skin cracks with petrol-like discharges (Ambr-S-10/13)\n<br />- Car sickness, train sickness (Cocc) (Ambr-S-10/13)\n<br />- Intolerable hunger (Ambr-S-10/13)\n<br />- Weak faint feeling after stools (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1181	87	22	<p>MIND\n<br />- SARCASTIC = anger + timidity + fear crowds + cowardice (Ambr-S-10/13)\n<br />- Confidence, want of (Ambr-S-10/13)\n<br />- Day dreaming (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1182	87	23	<p>MIND\n<br />- Affection of intellect and memory (Ambr-S-10/13)\n<br />- Perception is affected. The more syp, the more delusions (Ambr-S-10/13)\n<br />- They see things, that are not actually visible (Ambr-S-10/13)\n<br />- Delusion he has been poisoned (Ambr-S-10/13)\n<br />- Feels he is laying or sitting on a hard surface (Arn / DD: Arn feels the pain because of soreness)(Ambr-S-10/13)\n<br />- Delirium same subject (Ambr-S-10/13)\n<br />- Dreams, same repeated (Ambr-S-10/13)\n<br />- Talks nothing but one subject (arg-n, cann-i, lyc, petr, stram, med, cocaine, lap-a) (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1183	97	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1184	97	2	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1185	97	3	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1186	97	4	<p>Chilly (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1187	97	6	<p>Right (Ambr-S-10/2013)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1335	122	19	<p>- Fear approaching children, cannot bear to have (MM-GL)\n<br />- Aversion to play (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1769	15	25	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:24
1189	97	10	<p>- If anger is missing (RO-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1190	97	11	<p>1. MOROSE (angry + sad + timid) + coward (Ambr-S-10/2013)\n<br />2. SHORTENED TENDENCY (psor is short, syc is too early and too long) (Ambr-S-10/2013)\n<br />3. WATER: enemy of washing and bathing (epistaxis) (Ambr-S-10/2013)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1191	97	12	<p>- Features are rounded (IE-VJ)\n<br />- Built: obese (IE-VJ)\n<br />- Slowness and cautiousness (IE-VJ)\n<br />- Cowardice - short of confidence (IE-VJ)\n<br />- Miser - shortness of hand in spending (IE-VJ)\n<br />- Shortening of tendons (IE-VJ)\n<br />&lt; from: rising from stoop, stertching legs, stretching arms (IE-VJ)\n<br />&lt; 3 am (IE-VJ)\n<br />- Makes verses (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1192	97	13	<p>Prafull Vijayakar:\n<br />- Cardio-vascular diseases (Ambr-S-10/2013)\n<br />- Connective tissue (Ambr-S-10/2013)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1193	97	16	<p>Is between Sep and Nux-v (MM-GL)\n<br />If Nux-v did not work give Amm-c (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1195	97	18	<p>- Features are rounded (IE-VJ)\n<br />- Built: obese (IE-VJ)\n<br /> \n<br />- SHORTENING of tendons (IE-VJ)\n<br />- Pulled hamstring (Ambr-S-10/2013)\n<br />- Patient has to lie with pillow under knees (Ambr-S-10/2013)\n<br />- Back cannot bear to be stretsched (Ambr-S-10/2013)\n<br /> \n<br />- ACRIDITY of ammonia (Ambr-S-10/2013)\n<br />- Pungent sensation in ulcers, cancers, etc.; slow healing ulcers (Ambr-S-10/2013)\n<br />- Acridic, hot, ardhent secretion (raw, acrid) (Ambr-S-10/2013)\n<br /> \n<br />- WATER:\n<br /> - aversion to water - can be syp: water is a basic need of the body (Ambr-S-10/2013)\n<br /> &lt; wet weather, cloudy, humid weather (Ambr-S-10/2013)\n<br /> &lt; thunderstorm (Ambr-S-10/2013)\n<br /> &lt; wet + cold application (Ambr-S-10/2013)\n<br /> &lt; touch of water (Ambr-S-10/2013)\n<br /> \n<br /> - Washing and bathing intolerance of, aversion to bathing (Ambr-S-10/2013)\n<br /> - Bathing causes venous engorgement therfore agg. (Ambr-S-10/2013)\n<br /> - Red spots on face after washing, red face/body after washing (Ambr-S-10/2013)\n<br /> - Nasal bleeding after washing (Ambr-S-10/2013)\n<br /> \n<br />&lt; from: rising from stoop, stertching legs, stretching arms (IE-VJ)\n<br />&lt; 3 am (IE-VJ)\n<br /> \n<br />- Complaints in old age (MM-GL)\n<br />- Pelvic organs, severe pelvic infections, prostatic enlargement, endometriosis (MM-GL)\n<br />- Slowness in cardiovascular system (NI-2014)\n<br /> \n<br />- Congestion but in spots (Ambr-S-10/2013)\n<br />- Stasis of carbon: slow, fat, lazy, timid (Ambr-S-10/2013)\n<br />- Heaviness of all organs (Ambr-S-10/2013)\n<br />- Bleeder -&gt; venous, slow, blackish fluid (not clotted) (Ambr-S-10/2013)\n<br />- End of serious condition -&gt; non reaction (typhoid, diphtheria, measles, meningitis, etc) (Ambr-S-10/2013)\n<br />- Chronic conditions -&gt; makes person slow (CCF-congestive cardiac failure) and stasis of CVS (Ambr-S-10/2013)\n<br />- Fatigue of thighs (Ambr-S-10/2013)\n<br />- Body does not have the power to throw out eruptions (slow, gradually, limited) (Ambr-S-10/2013)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1196	97	20	<p>DD Anger:\n<br />- Staph: anger doesn't come out because of his dignity (Ambr-S-10/2013)\n<br />- Coloc: will only come out on inferiors, only for a short time (psor-syp) (Ambr-S-10/2013)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1197	98	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1198	98	2	<p>Love (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1199	98	4	<p>Chilly (Z-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1200	98	7	<p>- To rudeness (Ambr)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1201	98	8	<p>Non-diligent, but social responsibility (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1204	98	13	<p>PRAFULL VIJAYAKAR:\n<br />- Liver destruction (functional) - but no relation to the blood vessels c</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1205	98	16	<p>HURT -&gt; ACCEPT HURT, DO NOT REACT, RESIGN TO THE FATE (all Magnesia, Sep) (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1206	98	17	<p>- Introverted - due to inertness (IE-VJ)\n<br />- Introverted - Quiet, sober and graceful (IE-VJ, p 92)\n<br /> \n<br />- Maintaines balance i.e. between parents... (PV-I-28.1.17)\n<br />- A/F disharmony in the house (PV-I-28.01.17)\n<br />- Sensitive to rudeness (IE-VJ)\n<br /> \n<br />- Patient and contented (syc) (IE-VJ)\n<br />- Self-sufficient (MM-GL)\n<br /> \n<br />- Forsaken feeling (IE-VJ)\n<br />- Depression, indifference, indolence (MM-GL)\n<br />- Orphaned feeling (IE-VJ)\n<br />- Mental effects after wounds (MM-GL)\n<br /> \n<br />- Anxiety (MM-GL)\n<br />- Painting art (intro) - children who are under a lot of domination end up into art (DD: Sep, Carbon, Natrium, Carc) (Ambr-S-10/13)\n<br /> \n<br /> \n<br />- Friendless (IE-VJ)\n<br />- Dullness, torpor (IE-VJ)\n<br />- Slowness and weak (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1207	98	18	<p>- Fat, rounded features (syc) (IE-VJ)\n<br /> \n<br />- Nerves hypersensitive (IE-VJ)\n<br />- Cramps, jerks (MM-GL)\n<br />- Liver affection (IE-VJ)\n<br />- Green diarrhea (IE-VJ)\n<br /> \n<br />&lt;&lt; Milk, Morning (IE-VJ)\n<br />- Sour discharges, excess of discharges (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1208	98	20	<p>Emotional reaction DD:(Ambr 02/2016)\n<br />- Staph: supressed anger\n<br />- Mag: seems content\n<br />- Sep: resignation\n<br /> \n<br />DD Magn - Nat (Ambr)\n<br />- Sensitivness: rudeness / rudeness + criticism\n<br />- Reaction: indifferende, indolance, content / brooding\n<br />- Pathology: have other sphere of action on pathology part</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1209	99	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1210	99	2	<p>Love (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1211	99	4	<p>Chilly and Hot (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1212	99	8	<p>Non-diligent, but social responsibility (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1213	99	10	<p>- If they are talkative and an interaction is existing (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1214	99	11	<p>1. PATIENT AND CONTENTED (IE-VJ)\n<br />2. SENSITIVE TO RUEDENESS, ORPHANED FEELING AND FRIENDLESS (IE-VJ)\n<br />3. &lt;&lt; MILK, MORNING (IE-VJ)\n<br />4. LIVER AFFECTION (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1336	123	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1219	99	18	<p>- Sharp features (IE-VJ), lean, thin and tall (MM-GL)\n<br />- Thin neck (IE-VJ) \n<br />- Thick hair (MM-GL)\n<br /> \n<br />- Constipation, small round stool (IE-VJ)\n<br />- Cramps, jerks (MM-GL)\n<br />- Nerves hypersensitive (IE-VJ)\n<br />- Liver complaint (MM-GL)\n<br /> \n<br />&lt;&lt; Milk, morning (IE-VJ)\n<br />&lt; by sun (Nat) (Ambr Mod 1)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1220	110	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1221	110	3	<p>Fast, hurried (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1222	110	4	<p>Chilly (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1223	110	5	<p>NOT thirsty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1224	110	12	<p>- People who are unmoved by apologies (IE-VJ)\n<br />- Hatred for the person who has offended (IE-VJ)\n<br />- Revengeful (IE-VJ)\n<br />&gt; Riding in a carriage ameliorates (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1226	110	18	<p>&gt; Riding in a carriage ameliorates (IE-VJ)\n<br />- hearing impaired: riding in carriage (lot of noise from outside) amel.(PV-S-10/14)\n<br />- diplopia (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1227	111	1	<p>Intro (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1228	111	4	<p>More or less hot (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1229	111	5	<p>Thirst is good enough though not very marked to be called thirsty (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1230	111	6	<p>Right (IE-VJ, p 90)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1231	111	13	<p></p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1232	111	14	<p>Hot Sepia but also chilly, not affected by sun or by moon (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1233	111	16	<p>It is perfectly sycotic (IE-VJ)</p>\n\n<p>Syco-syp (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1235	111	18	<p>- Even the bowels do not move (IE-VJ)\n<br />- There is severe constipation with hard stools (IE-VJ)\n<br />- Hardness or swelling of glands (Calc-f, Bar-m, Con, Tarent-c) (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1236	111	20	<p>(MM-GL)                  Granite                                % Marble\n<br />EGO: Haughtiness, contemptuous, Reproaches others,  / Ego, delusion he is king\n<br />     solid rock, unmovable, dominating, dictatorial</p>\n\n<p>MONEY: Indifference to money, status / Desires more riches or luxuries at the cost of                                        others, avarice</p>\n\n<p>EMOTIONS: NO emotions, except anger / </p>\n\n<p>STABILITY: Stable / capriciousness</p>\n\n<p>INTRO/EXTR: Introverted / Introverted (exclusive), communication expanded</p>\n\n<p>ANTICIPATION: No anticipation / Anticipation</p>\n\n<p>CARESSES: Hates Caresses / Likes caresses</p>\n\n<p>MIASM: Syco-Syp / Syc</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1302	119	11	<p>1. A/F ANGER, INDIGNATION AND MORTIFICATION (IE-VJ)\n<br />2. SUPPRESSED ANGER CAUSES NEURALGIA AND SPASM (IE-VJ)\n<br />3. PAINS ARE SPASMODIC AND NOT CONTINUOUS (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1237	112	12	<p>SHORTENED SENSATION (Ambr-S-10/2013):</p>\n\n<p>- never succeeds; business failure; try and try - never succeed\n<br />- Hard working but not succeedeing\n<br />- Narrow minded (Bar); not able to adapt to different situations\n<br />- Answers reluctantly, talk insisposed to\n<br />- Ambition, loss of, fame loss of (A/F)\n<br />- Reserved\n<br />- Will loss of\n<br />- Dreams: business, difficulty in; journey difficulties with; misfortune of; unsuccessful efforts to do various things\n<br /> \n<br /> \n<br />REACTION (Ambr-S-10/2013, p62):</p>\n\n<p>Sadness + anger + timidity = MOROSENESS</p>\n\n<p>Cowardiceness = shortened courage, spineless -&gt; they can not sit errect in a chair</p>\n\n<p>Never smiling, never jesting (RO)</p>\n\n<p>Misanthropic attitude = reserved attitude (syp)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1238	112	14	<p>- Amm-mur\n<br />- Amm-carb\n<br />- Amm-Sulph</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1239	112	18	<p>SHORTENED SENSATION (Ambr-S-10/2013)</p>\n\n<p>- Stretching of muscles and tendons therefore keeps flexed\n<br />- Cannot sit on a chair or bed with limbs hanging down\n<br />- Hanging down of limbs agg\n<br />- Stretch and yawn often</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1240	112	20	<p>Amm % Nux-v:\n<br />LIKE NUX-V: Sensitive, ANGRY, frowning, serious looking\n<br />NUX-V but not Amm: Courage, positivity, sense of achievment</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1241	113	2	<p>Love (Ambr 2013)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1242	113	4	<p>Chilly (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1243	113	5	<p>Thirsty (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1244	113	6	<p>Right (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1245	113	11	<p>- TIMID\n<br />- ANXIOUS\n<br />- SLOW\n<br />- FAT</p>\n\n<p>- MONEY MINDED</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1246	113	13	<p>PRAFULL VIJYAKAR:\n<br />Petr: neuro-ectodermal affections, brain affection (Ambr-S-10/13)\n<br />Carb-v: cardio-vascular venous problems (Ambr-S-10/13)\n<br />Graph: skin, neurological, more sensitive, the only left sided Carbon (Ambr-S-10/13)\n<br />Granite: haughty, chilly or hot, (a stone is not affected by temperature) (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1247	113	14	<p>Carbo-v\n<br />Graph\n<br />Petr\n<br />Granite\n<br />Carboneum sulphuratum</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1248	113	16	<p>All Carbons don't have A/F shock, because they are to slow to react.\n<br />AUSSER: Stront-carb (Metall) (U)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1337	123	2	<p>Support (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1338	123	8	<p>Non-conscientious, non-diligent (IE-VJ, p92)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1339	123	17	<p>- Sensitive to rudeness (IE-VJ, p 92)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1340	124	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1341	124	2	<p>Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1250	113	18	<p>- Although chilly, wants air in motion (ventilator, open windows)(Ambr-S-10/13)\n<br /> \n<br />- Good absorbant = thirsty (Ambr-S-10/13)\n<br /> \n<br />- Slowness or lingering of complaints (e.g. gradually inbresing of blood sugar level) (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1251	114	3	<p>Fast, but over stimulation leads to weakness and sluggishness</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1252	114	4	<p>- Chilly: Kali-ars, Kali-ac?, Kali-c, Kali-m, Kali-p  (MM-GL)\n<br /> \n<br />- Hot: Kali-br, Kali-i,  Kali-s (MM-GL)\n<br /> \n<br />- Chilly or hot: Kali-bi (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1253	114	5	<p>- Thirsty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1254	114	6	<p>- Left (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1255	114	8	<p>Non-diligent (MM-GL)\n<br />Non-conscientious (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1256	114	10	<p>- If anxiety, timidity and excitability is missing (PHL)\n<br />- If a patient is slow, don’t think of a Kali.</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1258	114	18	<p>Short neck\n<br />- Sudden jerky movements (MM-GL)\n<br />- Weak muscles (MM-GL)\n<br />- Sharp 3 am agg. the steroid level falls down at 3 am. (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1259	115	2	<p>- Love (MM-GL)\n<br />- Care (MM-GL)\n<br />- Bonding (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1260	115	8	<p>- Non-diligent, but social responsibilty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1261	115	11	<p>- INERTNESS (VIJI)\n<br />- SENSITIVE TO RUDNESS, TO CRITICISM (VIJI)\n<br />- NEED HARMONY (VIJI)\n<br />- WEHREN SICH NICHT (VIJI)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1262	115	13	<p>PRAFULL VIJAYAKAR:\n<br />- Cramp, jerks  (Ambr-S-10/13)\n<br />- Liver (jaundice, hepatitis, autoimmune hepatitis) (Ambr-S-10/13)\n<br />- Nerves (Ambr-S-10/13)\n<br />- Bones and muscules; also in children (Ambr-S-10/13)\n<br />- Chronic Asthma (Ambr-S-10/13)\n<br />   -&gt; Bronchospasm is triggered when theer is fear of insecurity in the child; often when one or both parents are very dominating (Calc, Mag, Nat)\n<br />   -&gt; If the asthma is very syphilitic you have to look for a more syphilitc remedy</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1263	115	14	<p>Mag-c\n<br />Magn-m\n<br />Magn-s\n<br />Magn-p</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1264	115	16	<p>HURT -&gt; ACCEPT HURT, DO NOT REACT, RESIGN TO THE FATE (all Magnesia, Sep) (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1295	118	17	<p>- Introverted - AWOTA (angry when obliged to answer) (IE-VJ, p 85)\n<br /> \n<br />- People who refuse to answer when the same question is asked twice (AWOTA) (IE-VJ)\n<br />- Angry and Awota (I-PV-2015)\n<br />- Angry like nux-v (NI-2014)\n<br />- Weakness with anger (NI-2014)\n<br />- Hates consolation (MM-GL)\n<br />&lt; Sympathy (MM-GL)\n<br /> \n<br />- Sore feeling, as if bruised (mentally and physically) (IE-VJ; I-PV-2015)\n<br />- Soreness. The injury goes inside like Bell-p (MM-GL)\n<br />- Soft bed is too hard (TAN-I-01/2017), everything which normally would comfort him, he gets sore (I-PV-2015)\n<br />- Pain when lying in bed (soft pillows hurts) (MM-GL)\n<br /> \n<br />- Fear of touch, touch agg (MM-GL)\n<br />- Antagonism with family members or near and dear ones (IE-VJ)\n<br /> \n<br />- Greedy person -&gt; should be in the rubric avarice (MM-GL)\n<br />- A/F financial loss (MM-GL)\n<br />- A/F physical trauma (IE-VJ)\n<br /> \n<br />- Mischievous (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1296	118	18	<p>- slowness because of soreness of body (NI-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1297	119	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1298	119	4	<p>Chilly (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1299	119	5	<p>Thirsty (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1300	119	6	<p>Right (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1342	124	4	<p>Chilly (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1343	124	5	<p>Thirsty (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1344	124	6	<p>Right (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1345	124	8	<p>Conscientious, diligent (IE-VJ, p 92)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1346	124	10	<p>- If there is no anger (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1347	124	11	<p>1. VERY DUTY CONSCIENTIOUS (IE-VJ)\n<br />2. LESS EMOTIONAL - ONLY ANGER IS EXPRESSED (IE-VJ)\n<br />3. RIGHT SIDED (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1770	15	27	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:25
1267	115	20	<p>(Ambr)         Magnesia     %  Natriums \n<br />BASIC NEED:    Love        / Love &amp; Respect\n<br />SENSITIVNESS:  to rudeness / to criticism\n<br />IRRITABILITY:  not so much / sadness and irritability\n<br /> \n<br />Emotional reaction DD:(Ambr 02/2016)\n<br />- Staph: supressed anger\n<br />- Mag: seems content\n<br />- Sep: resignation</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1268	116	2	<p>Safety (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1269	116	4	<p>Hot or chilly (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1270	116	5	<p>Thirsty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1271	116	6	<p>Left &amp; Right (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1272	116	14	<p>Merc-s\n<br />Merc-c\n<br />Merc-i-f\n<br />Merc-i-r\n<br />Merc-dulcis\n<br />Merc-s\n<br />Cinnabaris</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1273	116	16	<p>Three miasmatic (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1274	116	17	<p>- Quick acting, aim oriented acting (MM-GL)\n<br />- Strong willed, positive (MM-GL)\n<br />- Courageous? It is not courageous --&gt; they are terrorists (MM-GL)\n<br />- Revolting character (MM-GL)\n<br />- Timidity first --&gt; aggression as a reaction (MM-GL)\n<br />- Mischievous. Devil character, takes risks to make a show (MM-GL)\n<br />- Indifference to reprimands (MM-GL)\n<br />- Restless (MM-GL)\n<br />- Like dancing, dances difficult and vehement (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1275	116	18	<p>- Though and thick hair (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1276	116	19	<p>- Children mature early in life (precocity) (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1277	117	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1278	117	4	<p>Hot (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1279	117	5	<p>Thirsty or thirstless with dry mouth (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1280	117	6	<p>Right (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1281	117	8	<p>Diligent (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1282	117	9	<p>Craving for hot food (Lyc, Chel) (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1283	117	10	<p>- If there is suddenness (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1284	117	11	<p>1. DRY, UNEMOTIONAL, ANGRY PERSON (IE-VJ)\n<br />2. BUSINESS MINDED, DILIGENT (IE-VJ)\n<br />3. &lt; MOTION / &gt; PRESSURE, HEAT (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1285	117	12	<p>- Dry, unemotional, angry people, who do not lie to answer questions (IE-VJ)\n<br />- AWOTA (angry when obliged to answer) (IE-VJ, p 85)\n<br />&lt; All problems motion agg, therefore lies still, motionless (IE-VJ)\n<br />&gt; pressure, heat application (IE-VJ)\n<br />- Business minded people (IE-VJ)\n<br />- Very diligent (IE-VJ)\n<br />- Right sided (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1287	117	18	<p>- Craving for hot food (Lyc, Chel) (MM-GL)\n<br />- Cannot tolerate heat and summer and sun (MM-GL)\n<br />- Mucous membranes dry (MM-GL)\n<br />- Effects are very painful (MM-GL)\n<br /> \n<br />&lt; All problems motion agg, therefore lies still, motionless (IE-VJ)\n<br />&gt; pressure, heat application (IE-VJ), rest (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1288	118	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1289	118	4	<p>Chilly (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1290	118	5	<p>Thirsty (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1291	118	7	<p>- A/F financial trauma (I-PV-2015)\n<br />- A/F financial embarassment (I-PV-2015)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1292	118	11	<p>1. PEOPLE WHO REFUSE TO ANSWER THE SAME QUESTION TWICE (IE-VJ)\n<br />2. SORENESS OF MIND / SORENESS OF BODY (IE-VJ)\n<br />3. ANTAGONISM WITH FAMILY MEMBERS (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1293	118	12	<p>- People who refuse to answer when the same question is asked twice (AWOTA) (IE-VJ)\n<br />- Sore mind, sore body (IE-VJ)\n<br />- Antagonism with family members or near and dear ones (IE-VJ)\n<br />- A/F financial embarrassment (IE-VJ)\n<br />- A/F physical trauma (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1294	118	16	<p>- Sulph is often the genetic similimum for Arnica-state-patients (also: Calc, Nux-v after antibiotics; Ferr after Chinin, Ign, Cham) (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1301	119	10	<p>- IN ACUTE: if there is no A/F anger, quarrel, vexation (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1509	144	13	<p>PRAFUL VIJAYAKAR:\n<br />- Urinary tract (PV-I-01/15)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1303	119	12	<p>- Psoric anger: Coloc anger never causes destruction or spy diseases. It causes neuralgias or pain in the abdomen (IE-VJ)\n<br />- All pains are better by pressure. Abdominal pains are better by bending double (IE-VJ)\n<br />- Pains come in wave like form. The intensity increases and decreases but never disappears (IE-VJ)\n<br />- The do not liek the same question asked twice (IE-VJ)\n<br />- Anger suppressed within can give rise to violent actions that are not directed towards people i.e. hitting fist on table or on wall or forcefully smashing of shuttle while playing badminton (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1304	119	13	<p>PRAFULL VIJAYAKAR:\n<br />- Neuralgias (IE-VJ)\n<br />- Pain in the abdomen (IE-VJ)\n<br />- Never causes destruction nor syp diseases (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1305	119	16	<p>- Coloc is never syp, there is no destruction. Serious spasm but going away (MM-GL)\n<br />- More for physiological cases (Ambr-S-11/2015, p18)\n<br />- psoro-syphilic remedy (NI-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1348	124	12	<p>- DUTY, RESPONSOBILITY (PV-I-01/15, p 50)\n<br />- Industrious (IE-VJ)\n<br />- Sadness, suicidal (IE-VJ)\n<br />- Disciplined (IE-VJ)\n<br />- Doesn't like travelling - Riding in a car/carriage &lt; (IE-VJ)\n<br />&lt; Evening and night (IE-VJ)\n<br />- Generally obese people (IE-VJ)\n<br />- Soberness is out of discipline and duty consciousness (IE-VJ)\n<br />- Unemotionally caring person (IE-VJ)\n<br /> \n<br />- Hot Aurums -&gt; Aur-i and Aur-s (IE-VJ)\n<br />  - Aur-i -&gt; has quickness and activity of Iodum (IE-VJ)\n<br />  - Aur-s -&gt; has philosophical and creative trait of Sulphur (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1349	124	13	<p>BOGER (BO-SK):\n<br />- GEMÜT. Nerven\n<br />- GEFÄSSSYSTEM\n<br />- HERZ (re)\n<br />- KNOCHEN: NASE, Schädel, Kniescheibe, Gelenke\n<br />- DRÜSEN. Leber</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1307	119	18	<p>- Pains are spasmodic and not continuous (IE-VJ)\n<br />- Pains come in wave like form. The intensity increases and decreases but never disappears (IE-VJ)\n<br /> \n<br />&gt;&gt; All pains are better by pressure. Abdominal pains are better by bending double (IE-VJ)\n<br />- dark green stools (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1308	119	20	<p>(IE-VJ)       Coloc         %   Staph</p>\n\n<p>SENSITIVNESS: Coloc is not / Staph is a highly sensitive person, sensitive to rudeness                             to sad stories, and also to slightest insult or indignati                             on, the patient feels humiliated.  \n<br />THIRST:       Thirsty      / Thirstless</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1309	120	4	<p>Chilly (VJ-IE)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1310	120	5	<p>NOT thirsty (VJ-IE)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1311	120	6	<p>No side affection (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1312	120	7	<p>- Nausea at slightest smell of food (VJ-IE)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1313	120	11	<p>1. DISCONTENTED (VJ-IE)\n<br />2. CONSTANT NAUSEA (VJ-IE)\n<br />3. THINKS HE IS A FAILURE CAUSING HIM TO BE SAD AND ANGRY (VJ-IE)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1314	120	12	<p>- Contemptuous of everything (VJ-IE)\n<br />- Haughty (VJ-IE)\n<br />- Discontented (VJ-IE)\n<br />- Censorious and critical (VJ-IE)\n<br />- Indefinite desires (VJ-IE)\n<br />- Nausea at slightest smell of food (VJ-IE)\n<br />- Bleeding / Hemorrhagic tendency (VJ-IE)\n<br />- CHILLY + THIRSTLESS with clean tongue (VJ-IE)\n<br />- Severe nausea - which is not relieved by vomiting (VJ-IE)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1315	120	14	<p>Plat (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1316	120	16	<p>Complements: China (chilly) - Plat (hot) - Ip - Cicuta</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1317	120	17	<p>- Chilly. Like a cold and shy Platina (MM-GL)\n<br />- Contemptuous of everything (VJ-IE) -&gt; like Plat (MM-GL)\n<br />- Haughty (VJ-IE)\n<br />- Haughty, angry, dominating and chilly (MM-GL)\n<br />- Discontented (VJ-IE). I have done so much for people, how can they not appreciate it (Plat.: haughty and contented) (MM-GL)\n<br />- Does not appreciate persons or things. Hard to please (MM-GL)\n<br />- Censorious and critical (VJ-IE)\n<br />- Irritability (MM-GL)\n<br />- Capriciousness (MM-GL)\n<br />- Mocking (IE-VJ, p86)\n<br />- Sarcastic (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1318	120	18	<p>- Indefinite desires (VJ-IE)\n<br /> \n<br />- CHILLY + THIRSTLESS with clean tongue (VJ-IE) (clean tongue means, the vomiting is not gastric, it is of nervous cause (MM-GL))\n<br />- Nausea at slightest smell of food (VJ-IE)\n<br />- Severe nausea - which is not relieved by vomiting (VJ-IE)\n<br />- Easy vomiting, but nausea is not relieved by vomiting (MM-GL) (Nux-v feels better after vomiting)\n<br /> \n<br />- Bleeding / Hemorrhagic tendency (VJ-IE)\n<br />- ACTIVE BLEEDER (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1319	120	20	<p>IE-VJ:\n<br />         IP             %        Plat\n<br />Contemptuous, haughty  / Contemptuous, haughty\n<br />Discontented           / Contented</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1321	121	4	<p>Chilly or hot (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1322	121	5	<p>Thirsty or NOT thirsty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1323	121	12	<p>- Delusion he is a king (IE-VJ)\n<br />- Desires more riches or luxuries, at the cost of others (IE-VJ)\n<br />- Capricious (IE-VJ)\n<br />- Introverted and Haughty (IE-VJ)\n<br />- Exclusive (IE-VJ)\n<br />- Communicative expansive (IE-VJ)\n<br />- Anticipation (IE-VJ)\n<br />- Likes caresses (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1324	121	14	<p>Plat (MM-GL), Gran (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1325	121	16	<p>Sycotic (MM-GL, DD Gran)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1327	121	20	<p>(MM-GL)                  Granite                                % Marble\n<br />EGO: Haughtiness, contemptuous, Reproaches others,  / Ego, delusion he is king\n<br />     solid rock, unmovable, dominating, dictatorial</p>\n\n<p>MONEY: Indifference to money, status / Desires more riches or luxuries at the cost of                                        others, avarice</p>\n\n<p>EMOTIONS: NO emotions, except anger / </p>\n\n<p>STABILITY: Stable / capriciousness</p>\n\n<p>INTRO/EXTR: Introverted / Introverted (exclusive), communication expanded</p>\n\n<p>ANTICIPATION: No anticipation / Anticipation</p>\n\n<p>CARESSES: Hates Caresses / Likes caresses</p>\n\n<p>MIASM: Syco-Syp / Syc</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1328	122	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1329	122	4	<p>Chilly (Gl-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1330	122	5	<p>Thirsty (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1331	122	6	<p>Left (IE-VJ, p 90)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1332	122	13	<p>PRAFULL VIJAYAKAR:\n<br />- Tendency to encephalitis, esp. after suppressed skin eruptions (MM-GL)\n<br />- Nervous system (PV-I-01/15)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1371	127	10	<p>- If there is genuine attachment to family members, friends... (PHL)\n<br />- If the person gets tired or exhausted easily (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1510	144	16	<p>Slow remedy (MM-GL)\n<br />Related to opium (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1334	122	18	<p>- Tendency to encephalitis, esp. after suppressed skin eruptions (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1351	124	18	<p>- Generally obese people (IE-VJ)\n<br /> \n<br />&lt; Evening and night (IE-VJ)\n<br />- diplopia (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1353	125	1	<p>Intro (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1354	125	4	<p>Hot (expect Nat-c) (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1355	125	5	<p>Thirsty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1356	125	6	<p>Left (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1357	125	7	<p>- Clouds, storms, sun (MM-GL)\n<br />- Rudeness, sad stories (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1358	125	8	<p>Conscientious (except Nat-m) (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1359	125	9	<p>Desire for salt, sweet, fish (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1360	125	10	<p>- If there is no &lt; sun and the person is NOT thirsty (PHL)\n<br />- If there is no sensitivity (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1361	125	11	<p>1. &lt; FROM CONSOLATION AND PITY (MM-GL)\n<br />2. &lt; SUN (MM-GL)\n<br />3. ANGER WHEN OBLIGED TO ANSWER, ALOOF, LONER, SENSITIVE TO RUDENESS (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1362	125	16	<p>HURT -&gt; REGRESSION, BROODING, SELF-REPROACH (all Natriums, calc-m, mur-ac) (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1363	125	17	<p>- Brooding (MM-GL)\n<br />- Introverted (if you stimulate Natrium it goes into the cell) (MM-GL)\n<br />- One to one relationship (MM-GL)\n<br />- Like to have another person in the room (MM-GL)\n<br />- Do not like to be asked how they are (MM-GL)\n<br />- Conscientious (except Nat-m) (MM-GL)\n<br />- Sensitive to rudeness and sad stories (MM-GL)\n<br />- Sentimental (MM-GL)\n<br />- Mildness, anger (MM-GL)\n<br />- They got hurt so much and never cried (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1364	125	18	<p>- Long neck (psor) (MM-GL)\n<br /> \n<br />- Desire for salt, sweet, fish (MM-GL)\n<br /> \n<br />&lt; Sun, clouts, storms (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1365	126	4	<p>Chilly (except Fl-ac and carbolic acid (carb-ac)) (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1366	126	5	<p>NOT thirsty, with desire of refreshing drinks (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1367	126	17	<p>- Weakness, all acids have mentally weakness, before the physical starts (MM-GL)\n<br />- Corrosive (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1368	127	4	<p>Hot (extremely hot) (MM-GL)\n<br />Can appear Ambithermal MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1369	127	5	<p>Thirsty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1370	127	6	<p>Right (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1405	130	2	<p>Support &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1372	127	12	<p>1. EXCESSIVE ENERGY (C)\n<br />2. NO ATTACHMENT TO LOVED ONE (C)\n<br />3. BUOYANCY - CAN ADAPT EASELY (C)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1374	127	18	<p>- Thick (fluoric) neck (MM-GL)\n<br /> \n<br /> \n<br />- Fast growth of hair and nails (MM-GL)\n<br /> \n<br /> \n<br />- Extremely hot, but can adapt extremes of temperature. They may present as Ambithermal - not affected by heat or cold (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1375	127	19	<p>- Go easily to anyone or can walk away with any strangers (MM-GL)\n<br />- Children who can easily stay away from their parents without missing them (Hell, phos, Sep, Acon, Syph) (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1376	127	23	<p>- Indifference. Indifference to loved ones, no attachment, buoyancy (MM-GL)\n<br />- No feelings (MM-GL)\n<br />- Perverted, everything in excess (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1377	128	1	<p>Extro (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1378	128	4	<p>Hot (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1379	128	5	<p>Thirsty (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1380	128	10	<p>- If there is no desire for change or activity (PHL)\n<br />- Tub is mentally fast, the mind wanders about, the body however does not (PHL)\n<br />- Tub is never fast! Wants to move fast, but cannot (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1383	128	13	<p>BOGER (BO-SK):\n<br />- LUNGEN\n<br />- Gemüt\n<br />- Kopf. Hinterkopf\n<br />- Drüsen\n<br />- Kehlkopf</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1384	128	14	<p>Calc-p (MM-GL), bell (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1386	128	18	<p>- Sharp features (IE-VJ)\n<br />- Short, stunted (MM-GL)\n<br />- Appearance of Phos (MM-GL)\n<br /> \n<br />- Love to drink milk (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1387	128	20	<p>- Luxurious things (MM-GL, fl-ac):\n<br />  -&gt; Buys new because he lost interest = fl-ac\n<br />  -&gt; To collect things = sulph\n<br />  -&gt; for speed = tub\n<br />  -&gt; for showing how great he is = lyc</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1388	129	2	<p>Support &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1389	129	4	<p>Chilly (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1390	129	5	<p>Thirsty (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1391	129	6	<p>Right (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1392	129	7	<p>- Criticism (IE-VJ)\n<br />- Rudeness (IE-VJ)\n<br />- Scolding (Beschimpfung)(IE-VJ)\n<br />- Admonition (IE-VJ)\n<br />- Affected by horrible or sad sights, stories, movies (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1393	129	9	<p>Desire for cold and Sweets (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1394	129	10	<p>- If there is no anticipatory anxiety and if there is no slowness (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1395	129	11	<p>1. ANXIOUS, ANTICIPATING, TIMID, INSECURE, FEARFUL\n<br />   ANGER AND EXCLUSIVENESS (SYC) (IE-VJ)\n<br /> \n<br />2. INSECURE (needs cover protection, shell)\n<br />   FAMILY, MONEY (business), SPIRITUALISTIC OR GODLY PROTECTION (IE-VJ)\n<br /> \n<br />3. SENSITIVE: - TO CRITICISM\n<br />(IE-VJ)       - RUDENESS\n<br />              - SCOLDING (Beschimpfung)\n<br />              - ADMONITION\n<br />              - AFFECTED BY HORRIBLE OR SAD SIGHTS, STORIES, MOVIES</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1396	129	13	<p>PRAFUL VIJAYAKAR:\n<br />- Nervous system (spasm legs...)(PV-I-01/15)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1397	129	16	<p>Complements: Calc-c - Bell (Sim 24.1.14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1398	129	17	<p>- Calc. wants cover, wants security (esp. of the mother). \n<br />  That is the reason why it wants magnetism, this is Sycosis (Phos. has lack of energy)(MM-GL)\n<br />- All Calcareas are cowards. That’s why they go into religiousness. They entrust themselves into God (MM-GL)\n<br /> \n<br />SEE ALSO BELOW UNDER PSOR / SYC / SYP</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1399	129	18	<p>- abdomen: sensitive to touch (PV-S-10/14)\n<br />- vision: acute for small objects, images for long retained (Nachbilder) (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1400	129	21	<p>- Anxiety (MM-GL)\n<br />- Anticipation (MM-GL)\n<br />- Wants shell (MM-GL)\n<br />- Sensitive to cruelties and rudeness (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1401	129	22	<p>- Absent mindedness (MM-GL)\n<br />- Fear of poverty (MM-GL)\n<br />- Accumulation of money (MM-GL)\n<br />- Sensitive when hearing of cruelties (MM-GL)\n<br />- Leuko-Phlegmatic temperament (MM-GL)\n<br />- Charitable with expectation of recompense (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1402	129	23	<p>- Will, loss of (MM-GL)\n<br />- Av. to mental work (MM-GL)\n<br />- Suicidal disposition (MM-GL)\n<br />- Strange, crank, opinions and acts, in (MM-GL)\n<br />- Tastelessness in dressing (MM-GL)\n<br />- Slowness or runs about (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1404	130	1	<p>First timid, when stimulated they come out -&gt; extroverted (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1406	130	3	<p>Fast constitution, sudden, easy excitment (MM-GLc\n<br />Fast, but over stimulation leads to weakness and sluggishness (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1407	130	4	<p>Chilly (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1408	130	5	<p>Thirsty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1409	130	6	<p>Left (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1410	130	7	<p>- Easily excitable, physical and mental\n<br />- Hyperirritability</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1411	130	8	<p>Non-conscientious (maybe does not pay the bill), non-diligent (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1412	130	10	<p>- If a patient is slow, don’t think of a Kali</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1413	130	12	<p>1. TIMID (MM-GL)\n<br />2. ANGER (MM-GL)\n<br />3. OVERSENSITIVE (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1414	130	13	<p>Praful Vijiayakar:\n<br />- gastric system (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1415	130	16	<p>Complements: Puls – Bar-s – Kali –s – Lac-c</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1417	130	18	<p>- Short neck (MM-GL)\n<br />- People who have puffy upper eyelids (MM-GL)\n<br />- People who have lax fibers and are fat and obese (MM-GL)\n<br /> \n<br />- Like all Carbons – Eating agg. (while and after eating) (MM-GL)\n<br />- Feel drowsy or sleepy while eating (MM-GL)\n<br /> \n<br />- People who complain of hollowness (Hohlheit) in the body (MM-GL)\n<br />- People who complain of pulsation all over the body esp. toe and\n<br />fingertips (MM-GL)</p>\n\n<p>- Sudden jerky movements\n<br />- discoloration purple: hands, in spots, purple spots on forehand as in lichen planus, psoriasis, scleroderma (PV-S-10/14)\n<br /> \n<br />- Sharp 3 am agg. the steroid level falls down at 3 am\n<br />- Periodicity – Night 3am to 4 am agg. of most the complaints (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1418	131	4	<p>Hot (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1419	131	5	<p>Thirsty or NOT thirsty (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1420	131	10	<p>- IN ACUTE: if there is no rubbing or boring of nose (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1771	16	21	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:26
1424	131	19	<p>- wants to be carried (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1426	132	1	<p>Intro (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1427	132	4	<p>Chilly (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1428	132	10	<p>- If the person is not haughty and childish (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1429	132	12	<p>- Likes to play with soft toys (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1430	132	16	<p>Complements: China (chilly) - Plat (hot) - Ip - Cicuta\n<br />- goes into sycosis very fast (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1432	132	18	<p>- analgesia (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1433	132	20	<p>- Ant-c: sad, melancholic (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1434	133	1	<p>Intro (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1435	133	4	<p>Chilly (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1436	133	10	<p>- If the person is not slim and thin (PHL)\n<br />- If there are no glandular problems (PHL)\n<br />- If the person does not appear older than she is (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1437	133	14	<p>- Con is the quarrelsome Nat-m (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1438	133	16	<p>- Sycotic, syphilitic (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1439	133	17	<p>- Introverted (MM-GL)\n<br />- Anxiety for prolonged continence (MM-GL)\n<br />- Con is the quarrelsome Nat-m. Nat-m does not quarrel, con can quarrel (MM-GL)\n<br />- Can weep in front of others. Weeping aloud (MM-GL)\n<br />- Weeping after slightest emotion. They become sad (MM-GL)\n<br />- Insanity, dresses in his best clothing (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1440	133	20	<p>Con % Nat-m (MM-GL):\n<br />QUARREL: quarrelsome  / does not quarrel\n<br />WEEPING: can weep in front of others / can not weep in front of others</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1442	134	14	<p>Alum (MM-GL)\n<br />Germanium is coming very near to Alum (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1443	134	17	<p>- In syp state they become poetical *Mood, poetical* (MM-GL)\n<br />- Delusion, being smaller (MM-GL)\n<br />- Delusion, being laughed at (MM-GL)\n<br />- Delusion, humiliated (MM-GL)\n<br />- Abrupt (MM-GL)\n<br />- It si a contradictory remedy (MM-GL)\n<br />- Pities herself (MM-GL)\n<br />- Repeats the same thing (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1444	135	17	<p>- Angry and destructive (Ambr-S-10/13, p 44)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1445	136	1	<p>Intro (IE-VJ, p 97)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1446	136	3	<p>Slow (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1447	136	4	<p>Chilly (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1449	136	11	<p>1. INDIFFERENCE TO LOVED ONES, FAMILY &amp; RELATIONS (IE-VJ)\n<br />2. DULLNESS &amp; CONFUSION OF MIND (IE-VJ)\n<br />3. ALL SENSES ARE DULL &amp; BLUNT (IE-VJ)\n<br />4. DESIRES SYMPATHY (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1450	136	12	<p>- Dullness of mind (IE-VJ)\n<br />  -&gt; slow in comprehending (IE-VJ)\n<br />  -&gt; slow in reaction (IE-VJ)\n<br />  -&gt; slow in answering (IE-VJ)\n<br />- Answers slowly, thinks for a long time before answering; answers confusedly (IE-VJ)\n<br />- All senses are blunted (abgestumpft) (IE-VJ)\n<br />- Compassion or sympathy desires but consolation, friendly advice agg (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1451	136	13	<p>BOGER (BO-SK):\n<br />- MIND, BRAIN, Senses \n<br />- Nerves: motor and sensitive \n<br />- Skin: seröse Haut, mucosa \n<br />- Kidneys\n<br />- Muscles. Exudation</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1452	136	14	<p>Bry (BO-SK), Op (BO-SK), Zinc (BO-SK)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1453	136	17	<p>- Introverted - Indifference (IE-VJ, p 97)\n<br /> \n<br />- Indifference to loved one (Sep, Carb-v, Plat, Gran) (IE-VJ, p 97)\n<br />- Dullness of mind (IE-VJ)\n<br />  -&gt; slow in comprehending (IE-VJ)\n<br />  -&gt; slow in reaction (IE-VJ)\n<br />  -&gt; slow in answering (IE-VJ)\n<br />- Answers slowly, thinks for a long time before answering; answers confusedly (IE-VJ)\n<br />- All senses are blunted (abgestumpft) (IE-VJ)\n<br />- Compassion or sympathy desires but consolation, fiendly advice agg (IE-VJ)\n<br />- Lacking of intellect (MM-GL)\n<br />- Slow remedy (MM-GL)\n<br />- Disfunction of the brain -&gt; slow answering (MM-GL)\n<br />- Confusion because of laxness (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1454	136	18	<p>- Looseness of muscles, softening of bones and mind (MM-GL)\n<br />- Dullness because of metabolic incapacity (MM-GL)\n<br />- Cephalopathy (MM-GL)\n<br />- Disfunction of the brain (MM-GL)\n<br />- Slow answering (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1455	137	1	<p>Intro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1456	137	3	<p>Slow, like a carbon (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1457	137	4	<p>Chilly (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1458	137	5	<p>Thirsty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1459	137	6	<p>Right (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1460	137	8	<p>Non-conscientious, non-diligent (IE-VJ, p92)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1461	137	11	<p>1. STRONG RESPONSABILITY; SOCIAL WORKER (IE-VJ)\n<br />2. TIMID, FEARFUL, SLOW (IE-VJ)\n<br />3. SUN AMM (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1462	137	12	<p>- Sun &gt;&gt;; sun is recharger of his energy (IE-VJ)\n<br /> \n<br />- Slow like carbon ((IE-VJ)\n<br />- Right sided carbon (IE-VJ)\n<br />- Timid metal; wants to work, wants to take responsibilities of society, at the same time wants people to know that he is a mamous social worker doing a great job (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1463	137	16	<p>Carbon family</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1464	137	17	<p>- Introverted - Quiet, sober and graceful (IE-VJ, p 92)\n<br /> \n<br />- Very strong, straight (MM-GL)\n<br />- Metal qualities, but soft metal (MM-GL)\n<br />- Timid metal (IE-VJ)\n<br />- Wants to work, wants to take responsibilities of society, at the same time wants people to know that he is a famous social worker doing a great job (IE-VJ)\n<br />- People who take care of their responsibilities (MM-GL)\n<br /> \n<br />- Well behaved. Nice. Mild (MM-GL)\n<br />- Benevolent, helpful (MM-GL)\n<br /> \n<br />- Haughty, impetous (MM-GL)\n<br /> \n<br />- Slow like carbon (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1772	16	22	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:26
1773	16	19	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:26
1466	138	4	<p>Chilly (GL-Z)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1467	138	13	<p>BOGER (BO-SY):\n<br />- Schleimhäute: GI, ZAHNFLEISCH, MAGEN, ABDOMEN, WEIB. GENITALIEN, Uterus\n<br />- Blut. ZÄHNE</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1469	138	18	<p>- Blackish discoloration of teeth (MM-GL)\n<br />- Blackness of external parts (MM-GL)\n<br />- Mucus secretions, offensive, fetid (MM-GL)\n<br />- Excoriation, burning and offensive discharge (MM-GL)\n<br />- Emaciation (MM-GL)\n<br /> \n<br />- Profuse bleeding (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1471	139	2	<p>Support (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1472	139	4	<p>Chilly (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1473	139	5	<p>Thirsty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1474	139	12	<p>- Misplaced want of magnetism, affection and love (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1475	139	17	<p>- Extroverted like Phos (MM-GL)\n<br />- Fearful of dark like Phos (MM-GL)\n<br />- Desires magnetism like Phos (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1476	139	18	<p>- Sharp features like Phos (MM-GL)\n<br /> \n<br />- Loves cold drinks like Phos (MM-GL)\n<br /> \n<br />- BLEEDING TENDENCY like Phos (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1478	140	2	<p>Support (psor) (GL)  \n<br />In sycosis Respect (PV-S-05/10, p49)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1479	140	4	<p>Hot or chilly (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1480	140	9	<p>Crave for sweets (IE-VJ)\n<br />Hate rich food (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1481	140	11	<p>1. SELFISH (IE-VJ)\n<br />2. MONEY MINDED (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1483	140	16	<p>Insecurity (calcarea) &amp; buoyancy (fluor) (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1547	152	17	<p>Personen:\n<br /> \n<br />Ambr = Ambrish Vijayakar\n<br />PV = Prafull Vijayakar\n<br />PJ = Praful Jain (children book)\n<br />TAN = Dr. Tanmay\n<br />K = Kent\n<br /> \n<br />SI = Simon Wegmüller\n<br />MA = Marc Bürgler\n<br />AD = Adrian Schneider\n<br />U = Ursula Frei</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1548	152	18	<p>Reihenfolge Symptome:\n<br />1. Aussehen\n<br /> \n<br />2. Essen\n<br /> \n<br />3. Wetter\n<br /> \n<br />4. Körper Symptome\n<br /> \n<br />5. Pathologiene\n<br /> \n<br />6. Bleeder, general...\n<br /> \n<br />&lt; &gt; Modalitäten</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1549	152	20	<p>Thuj % Med:  xxxxxxx / xxxxxx\n<br /> \n<br />           Merc    / Caust \n<br />SENSITIVE: xxxxxxx / xxxxx\n<br />LW:        xxxxxxx / xxxxx</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1485	140	18	<p>- Face is more squarish, less fleshy, with exostosis prominent (IE-VJ)\n<br /> \n<br />- Carve for sweets (IE-VJ)\n<br />- Hate rich food (IE-VJ)\n<br /> \n<br />They have accumulating mode in the cells \n<br />-&gt; slightest injury to skin, bones, or any internal tissuees will cause their defense to thicken, indurate or deposit fibrin for extra safety (IE-VJ)\n<br />-&gt; this shows the over cautious defense of calc-f due to insecurity about the future (IE-VJ)\n<br /> \n<br />- Callosites (IE-VJ)\n<br />- Corns on the skin (IE-VJ)\n<br />- Exostosis (IE-VJ)\n<br />- Calcaneal spurs in bones (IE-VJ)\n<br />- Fibroids in the uterus (IE-VJ)\n<br />- Keloids at operated locations (IE-VJ)\n<br /> \n<br />In sycosis: hardness, indurations, exostosis, tumours (IE-VJ)\n<br />In syphilis: curvatures, fistulae, caries, cancers (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1486	140	19	<p>- Difficulty in reading and studying, as they grow up they use their brains for business (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1487	140	20	<p>Calc-f % Nux-v: calc-f has fear of poverty % nux-v does not bother about tomorrow (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1489	141	2	<p>Support &amp; Respect (GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1490	141	4	<p>Hot (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1491	141	5	<p>Thirsty (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1492	141	9	<p>Thirsty for stimulants like Coke, Pepsi, Orange, Alcohol</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1494	141	13	<p>PRAFULL VIJAYAKAR:\n<br />- Glandular affections (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1495	141	16	<p>Impatient and restless calcarea (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1531	147	17	<p>- When well very loquatious and jesting (GMM-VJ)\n<br />- Sadness because of health -&gt; leads to cruelty, harsh, rouch, malicious, irritable, hatred to children, ausive insulting to family and children, aversion towards own children.\n<br />- Harshness, rough sadness in (GMM-VJ)\n<br />- Sadness with illness (MM-GL)\n<br />- Sadness/aversion to see her children from sadness (GMM-VJ)\n<br />- Sadness/aversion to see her children from sadness/ children to whom he is devotely attached become burdensome (GMM-VJ)\n<br />- Irritability towards children (GMM-VJ)\n<br /> \n<br />- Routinist (MM-GL)\n<br />- Loud talker (MM-GL)\n<br />- Agg. by mental work (GMM-VJ)\n<br /> \n<br />- Cannot support injustice (GMM-VJ)\n<br />&lt; 5 am (GMM-VJ)\n<br />&gt; Cold, walking in open air (GMM-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1774	16	10	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:27
1775	16	13	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:27
1497	141	18	<p>- Oval shaped face with sharper features (IE-VJ)\n<br />- Thin (because of Iodine element) (IE-VJ)\n<br /> \n<br />- Glandular enlargements (syco-Syp) (IE-VJ)\n<br />- Glandular involvement with emaciation (IE-VJ)\n<br />- Thyroid affections, palpitation, increased appetite (MM-GL)\n<br />- Goitre. Thyroid enlargements about time of puberty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1498	141	19	<p>- Young boys and girls who wear most trendy clothes.\n<br />  -&gt; sycotic miasm \n<br />  They are very careful about how they present themselves \n<br />  Love parfumes\n<br />- When children return from school their restlessness prevents them from sitting at home and compels them to go in open air and move on bicycles, motorbikes, etc. They love cold wind in the face (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1499	141	20	<p>DD Puls % calc-i</p>\n\n<p> - CHANGEABLE like Puls (IE-VJ)\n<br />  - symptoms change\n<br />  - Anxiety comes and goes in paroxysms\n<br />  - Desire for open air, but worse cold draft\n<br />  - Very irresolute </p>\n\n<p>Diff:              Puls      /   Calc-i\n<br />THIRST:  thirstless          /  thirsty (for stimulants like Coke, Pepsi, Orange, Alcohol)\n<br />NEED:    loves consolation   /  loves support</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1501	142	1	<p>Intro (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1502	142	4	<p>Chilly and hot (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1503	142	16	<p>Combining Calcarea qualities with muriaticum qualities (MM-GL)\n<br /> \n<br />Complements: Calc-m - Puls</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1504	142	17	<p>- Reserved, introverted (MM-GL)\n<br />- Attached to the mother (bar-m to the work)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1505	143	17	<p>- Weak willed (MM-GL)\n<br />- Most calc are negative willed, only calc-s can be positive (rubric: courageous) (MM-GL)\n<br />- Anxious (MM-GL)\n<br />- Timid (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1506	143	18	<p>- Thin hair (MM-GL)\n<br /> \n<br />- Craving for eggs (MM-GL)\n<br />- Excessive thirst (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1507	143	19	<p>- Want on mothers arm (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1508	144	10	<p>- If there is no overpowering sleep and the dryness (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1512	144	18	<p>- vision distorted (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1513	144	19	<p>- Spoiled children (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1514	144	21	<p>- faintness and oversensitivity (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1515	144	22	<p>May be only overpowering sleep with thirstless (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1516	144	23	<p>Hysterical fainting (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1517	145	3	<p>Fast pathology (PV-S-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1518	145	4	<p>Hot (PV-S-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1519	145	8	<p>Conscientious, Diligent (PV-S-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1520	145	13	<p>PRAFUL VIJAYAKAR:\n<br />- Syphilitic (PV-S-2014)\n<br />- Fast (PV-S-2014)\n<br />- Affected by medication (Nux-v) (PV-S-2014)\n<br />- Affection of CNS (Nux-v -&gt; breaking arteries in brain, not so syph) (PV-S-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1521	145	16	<p>- affected by medicaments (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1522	145	17	<p>- Conscientious, diligent (PV-S-2014)\n<br />- Very active (PV-S-2014)\n<br />- Offended easely (PV-S-2014)\n<br />- Very particular, tell mother to keep things in place (PV-S-2014, p 98)\n<br />- attracted to pens (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1523	145	18	<p>- Lean, thin (PV-S-2014)\n<br />- dark green stools (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1524	146	17	<p>- Extremely extroverted (MM-GL)\n<br />- Greedy (never contented) (MM-GL)\n<br />- Ambitious (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1525	146	18	<p>&lt; sund -&gt; weakness (MM-GL)\n<br />&lt; 12-16 -&gt; weariness / weakness (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1526	147	4	<p>Hot (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1527	147	7	<p>- startling from noise (GMM-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1528	147	13	<p>KENT:\n<br />- Glands\n<br />- Bones</p>\n\n<p> \n<br />Praful Vijayakar (GMM-VJ):\n<br />- Bones\n<br />- Nerves\n<br />- Glands\n<br />- Tongue\n<br />- Eyes</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1529	147	14	<p>Merc (Kent)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1530	147	16	<p>Is a syphilitic kali (GMM-VJ)\n<br />All kali qualities like, startling and touch agg. but is very unfeeling and hardhearted towards family and children (GMM-VJ)\n<br /> \n<br />Deep remedy, similar to Merc (Kent)\n<br />Kali-i is an antidot of Merc (Kent)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1568	160	3	<p>Slow and gradually (syco-syp) (Ther is fast) (Ambr-S-11/2015, p11)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1569	160	4	<p>Chilly (Ambr-S-11/2015, p11)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1570	160	7	<p>- To noise (siehe unten)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1571	160	13	<p>PRAFUL VIJAYAKAR:\n<br />- Affection of nerves (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1776	16	14	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:27
1533	151	16	<p>Introduced and proved by Bowen 1852 (GS-Hering)\n<br /> \n<br />490 Rep rubrics</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1534	152	1	<p>Intro\n<br />Extro\n<br />2nd extro</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1535	152	2	<p>Love, Support, Respect\n<br />Love &amp; Respect</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1536	152	3	<p>Quick, fertile mind\n<br />Restless\n<br />Slow walking, eating...\n<br />Hurry, hasty</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1537	152	4	<p>Chilly\n<br />Hot\n<br />Ambi\n<br />Chilly (psor) and hot (syp)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1538	152	5	<p>Thirsty\n<br />NOT thirsty\n<br />Thirsty or NOT thirsty</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1539	152	6	<p>Left\n<br />Right\n<br />No side affection</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1540	152	7	<p>- noise, smell, light\n<br />- sun, weather, Neumond, vollmond\n<br />- Tight clothes...\n<br />- Pain...\n<br />- Rudeness, criticism...</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1541	152	8	<p>Conscentious, diligent\n<br />Conscentious, non-diligent\n<br />Non-conscentious, non-diligent</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1542	152	9	<p>Desire for ... salt, sweet, fish...\n<br />Desire hot/cold food...\n<br />Craves for ... chocolate\n<br />Loves fruits...\n<br />Aversion to...</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1543	152	10	<p>- If xxx is not\n<br /> \n<br />- IN ACUTE: if ....</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1544	152	11	<p>1. XXXXXXXXXXXX\n<br />2. XXXXXXXXXXXX\n<br />3. XXXXXXXXXXXX</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1545	152	13	<p>PRAFULL VIJAYAKAR:\n<br />- xxxxx\n<br />- xxxxx\n<br />Im selben Feld! (Shift + Enter)\n<br /> \n<br />BOGER (BO-SK):\n<br />- xxxxx\n<br />- xxxxx</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1546	152	16	<p>QUELLENVERZEICHNISS:\n<br /> \n<br />IE-VJ= Intro / Extro Viji\n<br />MM-GL = Notizen Materia Medica Günter Lutz\n<br />GMM-VJ = Genetic materia medica von Prafull Vijayakar\n<br />GS-Hering = Guding Symptoms Materia Medica von Hering\n<br />Seminare -&gt; Person-S-Datum z.B. Ambr-S-10/13, pxx / PV-S-05/12, pxx / PV-I-01/15 / PV-I-01/17\n<br /> \n<br />BO-SY = Boger Synoptic Keys\n<br />GL = Basic needs Günter Lutz\n<br />GL-Z = Treasures of PV von Günter Lutz\n<br />RO-GL = Roule-out Günter Lutz\n<br />SkHZ = Von Unterlagen von SkHZ\n<br />PHL = Roule-out Liste Predictiv Homeopathy Luzern</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1550	153	1	<p>Extroverted Carbon (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1551	153	16	<p>REP = 5200 rubrics</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1552	153	17	<p>- Extroverted carbon (MM-GL)\n<br />- Idiocy (MM-GL)\n<br />- Mannish habits of girls (MM-GL)\n<br />- Sarcasm (MM-GL)\n<br />- Cracks on lips (MM-GL)\n<br />- Slowness (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1553	156	16	<p>MM Hering\n<br />Provings by: Hahnemann, Hering, Neidhard...</p>\n\n<p>It is a very ancient remedy, originally from the Orient. </p>\n\n<p>Chemische Substanz = HgS ( REd sulphid of mercury)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1554	157	4	<p>Hot (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1555	157	5	<p>Thirstless (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1556	157	16	<p>Thymelaceae / Daphne Mezereum; Spurge-Olive</p>\n\n<p> \n<br />Miasm: Very sycotic (MM-GL)\n<br /> \n<br />Proved by: Hahnemann, Hering, Franz, Caspari, v. Gersdorff, Gross, Hartlaub, Rückert...</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1557	157	17	<p>- Indifferent to everything and everyone (MM-GL)\n<br />- Started when touched (MM-GL)\n<br />- Inside anger and sadness but is covered up (MM-GL)\n<br />- They suppress everything with thick cover of indolence (MM-GL)\n<br />- Craves luxury (MM-GL)\n<br />- Hysteria, hypersensitive (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1558	157	18	<p>- Curly hair can get straight (MM-GL)\n<br /> \n<br />- Sensible to touch, esp. on head (can cause headache) (MM-GL)\n<br />- Wound looks good, but inside full of pus (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1559	159	1	<p>Extro (Ambr-S-11/2015, p10)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1560	159	3	<p>Fast (Ambr-S-11/2015, p11)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1561	159	4	<p>Hot or chilly (Ambr-S-11/2015, p10)\n<br />Hot or chilly (Ambr-S-11/2015, p10)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1562	159	7	<p>- Slightest noise (Ambr-S-11/2015, p10)\n<br />- Shrill sounds, crackling of paper (Ambr-S-11/2015, p10)\n<br />- Sound of bells and clocks (Ambr-S-11/2015, p10)\n<br />- Sound penetrates the hole body, especially teeth (Ambr-S-11/2015, p10)\n<br /> \n<br />- Startels easely, easily excitable (Ambr-S-11/2015, p10)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1563	159	10	<p>- Sensitivity (Ambr-S-11/2015, p10)\n<br />- Closing of eye agg (Ambr-S-11/2015, p10)\n<br />- Touch agg (Ambr-S-11/2015, p10)\n<br />- Warm drinks agg (Ambr-S-11/2015, p10)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1564	159	13	<p>VIJAYAKAR:</p>\n\n<p>- Nerves (Ambr-S-11/2015, p11)\n<br />- Spine (Ambr-S-11/2015, p11)\n<br />- Bone diseases (MM-GL)\n<br />- Hysteria (similar remedies: asar, coff, mosch, nux-m) (Ambr-S-11/2015, p11)\n<br />- Liver, tetany (Clarke) (Ambr-S-11/2015, p11)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1565	159	16	<p>Theridion curassavicum (Orangenspinne), is a spider that lives on orange trees in the caribbean.\n<br />Introduced and proved by Hering, 1832\n<br /> \n<br />Syphilitic remedy\n<br />Hysteria</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1567	159	18	<p>- Extremely sensitive to noise, startling from noise (MM-GL)\n<br />- Starteled easy, easily excitable (Ambr-S-11/2015, p10)\n<br /> \n<br />- Desires bananas, likes sour fruits (oranges) (MM-GL)\n<br /> \n<br />- Predominance of bone diseases (MM-GL)\n<br />- hyperaesthesia (PV-S-10/14)\n<br />- hearing: rumpling of paper,  (PV-S-10/14)\n<br />- sound or noise affecting teeth (PV-S-10/14)\n<br />- large sound penetrates the whole body (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1572	160	16	<p>Haselwurz\n<br /> \n<br />2'468 REP rubrics</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1574	160	18	<p>- Sensitivity same like Ther (not every noise but esp, thrilling sounds) (Ambr-S-11/2015, p11)\n<br />- Sensitive noise to scratching linen, silk or strings (Ambr-S-11/2015, p11)\n<br />- Sensitive to the noise of crackling paper (MM-GL)\n<br />- Starts easily (MM-GL)\n<br />- senses hyperacute (PV-S-10/14)\n<br />- hearing: rumpling of paper, scraping of linen and silk (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1576	162	3	<p>Quick (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1577	162	4	<p>Hot (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1578	162	5	<p>Thirsty (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1579	162	7	<p>- noise (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1580	162	14	<p>Merc (MM-GL)\n<br />similar to Acon -&gt; fear, heart, cough (Kent)\n<br /> \n<br />Spong ist ein tief wirkendes Mittel (Kent)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1581	162	16	<p>Euspongia officinalis, Meeresschwamm\n<br /> \n<br />Tubercular diathesis (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1619	179	18	<p>- Fidgetiness of nerves (Motor Nerves) (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1620	180	18	<p>- analgesia (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1621	181	18	<p>- hyperaesthesia (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1582	162	17	<p>- Timid (MM-GL)\n<br />- Cheerful, but suddenly aggressive and destructive (MM-GL)\n<br />- Defiant (MM-GL)\n<br />- Extremely active and restless (like Iod), hyperactive, quick (MM-GL)\n<br />- Similar like Merc. More active, can get distracted very easily. Spong is not precocious and has no excessive salivation (MM-GL)\n<br />- Don't cry easily (MM-GL)\n<br />- Intelligent (MM-GL)\n<br />- Sharp in brain. Very fast (contains Iod)\n<br />- Anger (MM-GL)\n<br />- Mood changeable, cheerful and anger is Spongia (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1583	162	18	<p>- Cough is as the saw goes through the wood (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1584	162	19	<p>- Good remedy for hyperactive children (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1585	162	20	<p>Merc / Spong (MM-GL)</p>\n\n<p>hyperactive / More active, can get distracted very easily\n<br />precocious / not precoucious\n<br />excessive salivation / no excessive salivation\n<br /> \n<br />DD Spong / Acon / Hep</p>\n\n<p>kommt progredient / plötzlich, noch gleicher Tag\n<br />Angst, furcht / Angst, Furcht\n<br />Krupp vor MItternacht / vor Mitternacht / &lt; am Morgen\n<br />Husten trocken /          / feucht, rasselnd</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1586	163	5	<p>Thirstless (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1587	163	6	<p>Right sided (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1588	163	10	<p>- If there are no UTI problems (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1589	163	16	<p>o\tApis will not destroy nerves --&gt; it is more sycotic --&gt; causing acuumulation ; there is no nerve involvment (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1590	163	17	<p>- Positive (MM-GL)\n<br />- Dictatorial, dominating (MM-GL)\n<br />- Obstinate, headstrong (MM-GL)\n<br />- Discontented and quarreling, complaining (MM-GL)\n<br />- Angry (MM-GL)\n<br />- Selfish, self-centered, jealousy\n<br />- Always laughing and cheerful when inside sad (MM-GL)\n<br />- Apis is another remedy which is internally suffering a lot from wretching  but on the face there will be a smile (MM-GL)\n<br />- angry, excitable, irritable (NI-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1591	163	18	<p>- Desires warm food (MM-GL)\n<br /> \n<br />- Prominence of nose, very sharp featured (MM-GL)\n<br /> \n<br />- Oedema on the face (MM-GL)\n<br />- Urinary tract infection (MM-GL)\n<br />- slight touch agg. (PV-S-10/14)\n<br />- discoloration purple: fingernails, hands (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1592	163	19	<p>- Nervous girls, who let things fall and smtimes laugh silly at mishaps (Jain)\n<br />- Constant whining in children. Weeps without cause (Jain)\n<br />- Child nurses by day, refuses at night (Jain)\n<br />- irritable especially when crossed (Jain)\n<br />- Restless, wants to keep himself busy. Fruitless activity (Jain)\n<br />- Very jelous (Jain)\n<br />- Cheerful (Jain)\n<br />- Desire to break things and laugh over it (Jain)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1593	164	13	<p>PRAFULL VIJAYAKAR:\n<br />- gastric system (Ambr-S-11/2015, p60)\n<br />- cardio-vascular system (Ambr-S-11/2015, p60)\n<br />- chronic or syphilitic cough (I-PV-01/2017)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1594	164	14	<p>Sulph (Ambr-S-11/2015, p60)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1595	164	16	<p>Sanguinaria canadensis\n<br />Fam: Papaveraceae</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1596	164	17	<p>- Angry (Ambr-S-11/2015, p60)\n<br />- Irritable (Ambr-S-11/2015, p60)\n<br /> \n<br />Very similar to Sulph (Ambr-S-11/2015, p60)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1597	164	18	<p>- Any symptom better by eructation (Ambr-S-11/2015, p60)\n<br />- Chronic or syphilitic cough (I-PV-01/2017)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1598	166	11	<p>- weakness with prostration of mind from: mental shock, mental exertion, sexual excess/masturbation/emissions (NI-2014)\n<br />- WEAK (NI-2014)\n<br />- SEX EXCESS/DESIRE (NI-2014)\n<br />- AFFECTS NERVES AND SPINE (NI-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1599	166	16	<p>- weakness with drowsiness(NI-2014)\n<br />- no anger, no grief (NI-2014)\n<br />- WEAK BODY, MIND ACTIVE (NI-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1600	166	17	<p>- prostration of mind, drowsiness, mental exertion, over-study (NI-2014)\n<br />- wants to lie down and sleep (NI-2014)\n<br />- exertion agg (NI-2014)\n<br />- lacks will to undertake (NI-2014)\n<br />- irresolute about trifles (NI-2014)\n<br />- lascivious (but no emotions) (NI-2014)\n<br />libertinism (NI-2014)\n<br />against marriage, but enjoys with many men (NI-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1601	166	18	<p>- inflammation spine (heat, heavy, weak) (NI-2014)\n<br />- burning spine from study (NI-2014)\n<br />- ataxia from sex excess (NI-2014)\n<br />- MS and MND (Motoneuron-disease), tottering gait (NI-2014)\n<br />- neuralgic heaviness legs (NI-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1652	202	1	<p>- Introverted Kali</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1603	167	13	<p>- heart affections (NI-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1604	167	17	<p>- anxiety conscience (NI-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1605	168	16	<p>- stable and strong remedy (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1606	177	3	<p>- slower than cann-i (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1607	177	7	<p>- Very sensitive to rudeness (Ambr)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1608	177	9	<p>- like ice (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1609	177	13	<p>- UTI (Harnwegsinfekte) (PV-S-10/14\n<br />- UTI: recurrent fever (PV-S-10/14)\n<br />- HIV (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1610	177	16	<p>- syco-syph remedy (cann-i psor-syph) (PV-S-10/14)\n<br />- fever gradually more or less, fever dances (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1612	177	18	<p>- walk like going on the high (PV-S-10/14)\n<br />- warm hands (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1613	177	19	<p>- dancing on their toes (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1614	178	16	<p>- only destruction, no growth (gangrene, ulcers, NO CANCER) (PV-S-10/14)\n<br />- general destruction (PV-S-10/14)\n<br />- lean, thin, emaciation (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1615	178	18	<p>- purple spots (PV-S-10/14)\n<br />- fingernails discoloration purple (PV-S-10/14)\n<br />- hands: discoloration purple (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1616	179	4	<p>Hot (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1617	179	13	<p>FARRINGTON:\n<br />- Nervous system\n<br />  -&gt; lowers the reflexes (minders die Reflexerregbarkeit)\n<br />  -&gt; impairs the mind (Versand)\n<br />- Conculsions</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1618	179	17	<p>- Inconstancy like Puls (MM-GL)\n<br />- Weeping at trifles (MM-GL)\n<br />- Indifference and sad when ill (MM-GL)\n<br /> \n<br />- Complaints associated with sexual funtioning and desires (MM-GL)\n<br />- Very quarrelsome (PV-I-01/17)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1622	182	18	<p>- hyperaesthesia (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1623	183	18	<p>- throat: sensitive to touch (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1624	184	18	<p>- senses hyperacute (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1625	185	18	<p>- Urticaria purple (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1626	186	18	<p>- purple discoloration after suppressed eruptions (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1627	187	18	<p>- purple spots (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1628	188	7	<p>- Very sensitive to noise (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1629	188	11	<p>- Great muscle waekness (Kent). Great debility and weakness (MM-GL) \n<br />- First physical debility, then mental. DD Ac-Ph: fist mental then physical debility (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1630	188	17	<p>- Is very restless (Kent)\n<br />- Does not want to speak, he gets angry  (Kent). DD PH-aC: answers slowly because too weak and can not think (Kent)\n<br /> \n<br />- Loud singing (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1631	188	18	<p>- Sharp features (MM-GL)\n<br /> \n<br />- Great weakness of muscles (Kent)\n<br />  -&gt; because of the weakness jaw hangs down, patient slides down in the bed and stool and urine passes involuntarly (Kent)\n<br />- Jaw hanging down (MM-GL)\n<br />- Great debility and weakness (MM-GL)\n<br />- First physical debility, then mental. DD Ac-Ph: fist mental then physical debility (MM-GL), DD Ars: is fearfull and is restless (Kent)\n<br /> \n<br />- Purple scarlatina (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1632	189	18	<p>- fingernails discoloration purple (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1633	190	18	<p>- fingernails discoloration purple (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1634	191	18	<p>- hands: discoloration purple (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1635	192	18	<p>- Vision acute morning (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1636	193	18	<p>- Vision acute in sunlight (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1637	194	18	<p>- vision acute, sees even in the dark (PV-S-10/14)\n<br />- vision distorted: objects seems brighter in dark room (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1638	195	18	<p>- vision: images for long retained (Nachbilder) (PV-S-10/14)\n<br />- hearing: sound seems distant (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1639	196	18	<p>- hearing: rumpling of paper (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1640	197	18	<p>- hearing: direction of sound cannot tell (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1641	198	4	<p>Hot and chilly (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1642	198	16	<p>More syc-syp in perceptions (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1643	198	17	<p>Magnesium part:\n<br />- Slowness and patience (MM-GL)\n<br />- Contented (MM-GL)\n<br /> \n<br />Phosphorus part:\n<br />- Affectionate (MM-GL)\n<br />- Smiling (MM-GL)\n<br /> \n<br />- Performing art (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1644	198	18	<p>- Sharp features, lean, thin and tall (MM-GL)\n<br />- Affecting always the liver (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1645	198	20	<p>Mag-p | Mag-s (MM-GL)\n<br /> \n<br />more lean built | more stout build\n<br />More syc-syp in perceptions | More syc-syp in imagination and fancies\n<br />Chilly | Hot and thirsty\n<br />Performing art | Creative art</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1646	200	4	<p>Chilly or Hot (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1647	200	17	<p>- No mental symptoms, many local and general symptoms (MM-GL)\n<br />- Anxiety only in the mind, does not come out (MM-GL)\n<br />- Talks to himself (MM-GL)\n<br />- Sluggish like Op (MM-GL)\n<br />- Changeability (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1648	200	18	<p>- Very fat and short neckt (MM-GL)\n<br /> \n<br />- Sun agg, moist weather agg (MM-GL)\n<br /> \n<br />- Sticky expectoration (MM-GL)\n<br />- Suddenness of pain, pain in sports (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1649	201	3	<p>- Fast, impatient (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1650	201	4	<p>- Chilly (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1659	1	11	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1660	1	14	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1661	1	26	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1662	1	25	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1663	1	27	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1664	2	21	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1665	2	26	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1666	2	25	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1667	2	27	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1668	3	13	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1669	3	14	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1670	3	26	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1671	3	25	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1672	3	27	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1673	4	11	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1674	4	26	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1675	4	25	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1676	4	27	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1677	5	21	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1678	5	23	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1679	5	22	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1680	5	19	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1681	5	26	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1682	5	25	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1683	5	27	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1684	6	21	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1685	6	23	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1686	6	22	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1687	6	19	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1688	6	14	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1689	6	26	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1690	6	25	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1691	6	27	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1692	7	21	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1693	7	23	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1694	7	22	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1695	7	16	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1696	7	12	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1697	7	13	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1698	7	14	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1699	7	26	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1700	7	25	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1701	7	27	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1702	8	23	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1703	8	13	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1704	8	26	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1705	8	25	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1706	8	27	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1707	9	21	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1708	9	19	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1709	9	10	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1710	9	12	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1711	9	13	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1712	9	14	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1713	9	26	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1714	9	25	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1715	9	27	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1716	10	21	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1717	10	23	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1718	10	22	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1719	10	16	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1720	10	19	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1721	10	12	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1722	10	13	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1723	10	14	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1724	10	26	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1725	10	25	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1726	10	27	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1727	11	21	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1728	11	23	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1729	11	22	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1730	11	16	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1731	11	18	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1732	11	10	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1733	11	12	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1734	11	11	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1735	11	13	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1736	11	14	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1737	11	26	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:28
1738	11	25	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1739	11	27	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1740	12	16	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1741	12	26	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1742	12	25	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1743	12	27	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1744	13	21	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1745	13	23	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1746	13	22	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1747	13	19	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1748	13	10	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1749	13	11	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1751	13	26	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1752	13	25	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1753	13	27	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1754	14	21	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1755	14	22	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1757	14	19	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1758	14	14	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1759	14	26	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1760	14	25	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1761	14	27	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1779	16	27	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1780	17	21	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1781	17	23	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1782	17	22	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1783	17	19	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1784	17	13	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1786	17	26	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1787	17	25	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1788	17	27	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1789	18	16	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1790	18	19	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1792	18	25	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1793	18	27	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1794	19	21	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1795	19	19	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1796	19	14	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1798	19	25	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1799	19	27	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1800	20	10	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1801	20	13	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1802	20	14	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1803	20	26	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1805	20	27	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1806	21	21	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1807	21	23	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1808	21	22	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1809	21	19	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1811	21	12	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1812	21	13	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1813	21	14	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1814	21	26	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1815	21	25	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1817	22	21	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1818	22	23	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1819	22	22	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1820	22	12	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1821	22	14	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1822	22	26	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1824	22	27	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1825	23	26	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1826	23	25	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1827	23	27	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1828	24	21	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1830	24	22	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1831	24	16	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1832	24	19	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1833	24	14	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1834	24	26	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1836	24	27	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1837	25	23	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1838	25	22	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1839	25	16	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1840	25	10	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1841	25	12	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1843	25	25	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1844	25	27	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1845	26	21	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1846	26	23	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1847	26	22	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1849	26	18	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1850	26	19	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1851	26	10	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1852	26	12	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1853	26	13	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1855	26	26	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1856	26	25	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1857	26	27	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1858	27	18	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1859	27	19	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1860	27	10	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1862	27	14	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1863	27	26	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1864	27	25	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1865	27	27	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1866	28	14	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1868	28	25	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1869	28	27	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1870	29	16	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1871	29	19	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1872	29	13	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1874	29	26	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1875	29	25	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1876	29	27	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1877	30	21	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1878	30	22	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1879	30	16	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1881	30	12	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1882	30	14	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1883	30	26	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1884	30	25	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1885	30	27	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1887	31	23	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1888	31	22	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1889	31	10	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1890	31	12	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1891	31	14	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1893	31	25	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1894	31	27	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1895	32	21	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1896	32	23	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1899	32	10	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1900	32	12	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1901	32	14	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1902	32	26	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1903	32	25	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1904	32	27	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1906	33	23	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1907	33	22	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1908	33	19	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1909	33	10	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1910	33	12	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1912	33	26	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1913	33	25	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1914	33	27	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1915	34	21	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1916	34	23	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1918	34	18	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1919	34	19	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1920	34	10	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1921	34	12	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1922	34	14	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1923	34	26	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1925	34	27	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1926	35	22	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1927	35	19	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1928	35	26	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1929	35	25	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1931	36	26	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1932	36	25	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1933	36	27	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1934	37	19	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1935	37	11	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1937	37	26	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1938	37	25	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1939	37	27	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1940	38	22	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1941	38	12	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1942	38	26	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1944	38	27	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1945	39	22	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1946	39	26	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1947	39	25	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1948	39	27	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1950	40	23	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1951	40	22	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1952	40	16	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1953	40	19	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1954	40	10	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1956	40	26	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1957	40	25	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1958	40	27	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1959	41	21	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1960	41	23	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1961	41	22	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1963	41	12	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1964	41	14	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1965	41	9	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1966	41	26	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1967	41	25	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1969	41	8	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1970	41	27	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1971	43	19	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1972	43	12	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1973	43	26	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1975	43	3	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1976	43	27	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1977	45	21	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1978	45	23	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1979	45	22	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1980	45	10	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1982	45	14	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1983	45	7	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1984	45	9	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1985	45	26	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1986	45	25	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1988	45	8	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1989	45	27	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1990	46	21	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1991	46	23	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1992	46	22	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1994	46	12	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1995	46	11	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1996	46	5	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1997	46	26	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1998	46	25	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1999	46	3	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2001	46	27	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2002	47	21	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2003	47	23	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2004	47	22	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2005	47	10	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2007	47	13	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2008	47	5	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2009	47	6	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2010	47	2	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2011	47	9	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2013	47	25	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2014	47	3	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2015	47	8	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2016	47	27	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2019	48	22	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2020	48	19	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2021	48	10	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2022	48	12	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2023	48	11	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2024	48	13	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2026	48	5	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2027	48	6	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2028	48	2	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2029	48	9	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2030	48	26	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2032	48	3	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2033	48	8	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2034	48	27	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2035	49	21	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2036	49	23	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2038	49	10	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2039	49	20	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2040	49	12	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2041	49	13	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2042	49	7	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2043	49	26	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2045	49	3	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2046	49	27	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2047	50	21	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2048	50	23	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2049	50	22	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2051	50	12	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2052	50	11	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2053	50	14	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2054	50	7	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2055	50	5	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2057	50	26	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2058	50	25	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2059	50	3	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2060	50	27	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2061	51	21	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2062	51	23	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2064	51	16	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2065	51	19	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2066	51	10	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2067	51	20	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2068	51	12	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2070	51	13	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2071	51	7	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2072	51	5	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2073	51	9	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2074	51	26	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2076	51	3	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2077	51	8	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2078	51	27	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2079	52	21	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2080	52	23	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2081	52	22	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2083	52	10	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2084	52	20	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2085	52	12	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2086	52	11	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2087	52	5	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2089	52	26	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2090	52	25	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2091	52	3	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2092	52	27	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2093	53	21	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2095	53	22	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2096	53	19	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2097	53	10	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2098	53	11	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2099	53	7	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2100	53	26	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2102	53	8	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2103	53	27	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2104	54	21	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2105	54	23	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2106	54	22	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2108	54	20	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2109	54	12	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2110	54	13	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2111	54	5	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2112	54	9	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2114	54	25	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2115	54	3	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2116	54	8	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2117	54	27	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2118	55	19	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2119	55	10	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2121	55	5	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2122	55	9	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2123	55	26	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2124	55	25	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2125	55	3	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2127	56	21	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2128	56	23	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2129	56	22	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2130	56	19	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2131	56	20	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2133	56	14	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2134	56	7	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2135	56	9	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2136	56	26	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2139	56	8	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2140	56	27	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2141	57	21	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2142	57	23	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2143	57	19	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2144	57	10	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2146	57	12	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2147	57	14	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2148	57	26	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2149	57	25	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2150	57	27	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2152	58	23	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2153	58	19	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2154	58	10	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2155	58	20	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2156	58	12	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2158	58	6	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2159	58	26	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2160	58	25	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2161	58	3	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2162	58	27	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2163	59	21	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2165	59	19	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2166	59	10	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2167	59	20	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2168	59	12	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2169	59	14	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2171	59	6	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2172	59	26	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2173	59	25	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2174	59	3	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2175	59	27	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2177	60	23	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2178	60	22	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2179	60	10	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2180	60	5	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2181	60	9	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2182	60	26	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2184	60	3	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2185	60	8	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2186	60	27	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2187	61	21	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2188	61	23	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2190	61	19	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2191	61	10	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2192	61	20	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2193	61	12	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2194	61	11	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2196	61	5	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2197	61	6	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2198	61	2	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2199	61	9	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2200	61	26	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2201	61	25	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2203	61	1	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2204	61	8	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2205	61	27	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2206	62	21	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2207	62	23	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2209	62	19	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2210	62	10	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2211	62	12	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2212	62	11	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2213	62	2	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2215	62	26	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2216	62	25	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2217	62	3	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2218	62	8	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2219	62	27	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2220	63	21	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2222	63	22	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2223	63	16	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2224	63	18	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2225	63	19	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2226	63	10	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2228	63	7	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2229	63	5	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2230	63	6	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2231	63	9	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2232	63	26	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2234	63	3	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2235	63	8	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2236	63	27	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2237	64	21	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2238	64	23	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2239	64	22	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2241	64	10	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2242	64	13	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2243	64	7	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2244	64	5	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2245	64	9	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2247	64	25	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2248	64	3	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2249	64	27	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2250	65	21	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2251	65	23	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2253	65	19	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2254	65	10	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2255	65	20	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2256	65	13	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2259	65	9	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2260	65	26	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2261	65	25	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2262	65	3	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2263	65	8	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2264	65	27	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2266	66	23	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2267	66	22	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2268	66	16	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2269	66	19	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2270	66	10	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2272	66	13	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2273	66	7	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2274	66	5	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2275	66	6	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2276	66	26	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2278	66	3	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2279	66	27	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2280	67	21	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2281	67	23	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2282	67	16	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2283	67	19	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2285	67	13	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2286	67	14	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2287	67	7	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2288	67	5	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2289	67	9	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2291	67	25	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:32
2292	67	3	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:32
2293	67	8	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:32
2294	67	27	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:32
2295	68	21	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:32
2297	68	22	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:32
2298	68	16	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:32
2299	68	19	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:32
2300	68	10	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:32
2301	68	20	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:32
2302	68	13	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:32
2304	68	7	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:32
2305	68	5	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:32
2306	68	6	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:32
2307	68	2	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:32
2308	68	9	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:32
2310	68	25	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:32
2311	68	3	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:32
2312	68	8	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:32
2313	68	27	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2314	69	21	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2316	69	22	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2317	69	14	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2318	69	7	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2319	69	6	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2320	69	2	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2321	69	9	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2323	69	25	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2324	69	3	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2325	69	8	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2326	69	27	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2327	70	21	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2329	70	22	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2330	70	16	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2331	70	18	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2332	70	19	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2333	70	10	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2335	70	11	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2336	70	13	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2337	70	14	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2338	70	7	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2339	70	4	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2340	70	5	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2342	70	2	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2343	70	9	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2344	70	26	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2345	70	25	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2346	70	3	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2348	70	8	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2349	70	27	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2350	71	21	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2351	71	23	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2352	71	22	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2354	71	19	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2355	71	20	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2356	71	12	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2357	71	11	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2358	71	14	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2359	71	7	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2361	71	6	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2362	71	9	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2363	71	26	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2364	71	25	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2365	71	3	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2367	71	27	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2368	72	21	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2369	72	23	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2370	72	22	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2371	72	16	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2373	72	19	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2374	72	10	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2375	72	20	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2376	72	12	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2377	72	11	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2378	72	13	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2379	72	14	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2380	72	7	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2381	72	4	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2382	72	5	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2383	72	6	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2384	72	2	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2385	72	9	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2386	72	26	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2387	72	25	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2388	72	3	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2389	72	8	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2390	72	27	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2391	73	21	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2392	73	23	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2393	73	16	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2394	73	19	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2395	73	11	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2396	73	7	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2397	73	9	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2398	73	26	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2399	73	25	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2400	73	27	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2401	74	21	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2402	74	23	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2403	74	22	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2404	74	16	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2405	74	19	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2406	74	10	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2407	74	13	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2408	74	14	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2409	74	7	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2410	74	6	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2411	74	2	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2412	74	9	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2413	74	26	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2414	74	25	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2415	74	3	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2416	74	8	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2417	74	27	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2434	76	21	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2435	76	23	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2436	76	22	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2437	76	18	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2438	76	19	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2439	76	10	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2440	76	20	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2441	76	13	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2442	76	14	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2443	76	5	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2444	76	6	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2445	76	2	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2446	76	9	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2447	76	26	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2448	76	25	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2449	76	3	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2450	76	27	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2451	77	21	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2452	77	23	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2453	77	22	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2454	77	19	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2455	77	10	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:33
2456	77	20	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:33
2457	77	11	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:33
2458	77	7	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:33
2459	77	5	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:33
2460	77	6	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2461	77	2	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2462	77	9	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2463	77	26	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2464	77	25	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2465	77	3	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2466	77	8	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2467	77	27	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2468	78	21	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2469	78	23	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2470	78	22	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2471	78	16	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2472	78	18	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2474	78	10	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2475	78	20	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2476	78	11	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2477	78	13	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2478	78	14	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2479	78	7	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2481	78	6	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2482	78	2	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2483	78	9	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2484	78	26	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2485	78	25	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2487	78	1	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2488	78	8	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2489	78	27	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2490	79	21	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2491	79	23	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2493	79	16	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2494	79	18	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2495	79	19	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2496	79	10	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2499	79	11	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2500	79	13	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2501	79	14	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2502	79	7	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2503	79	4	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2504	79	5	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2506	79	2	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2507	79	9	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2508	79	26	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2509	79	25	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2510	79	3	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2512	79	8	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2513	79	27	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2514	80	21	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2515	80	23	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2516	80	22	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2518	80	19	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2519	80	10	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2520	80	20	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2521	80	13	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2522	80	14	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2523	80	7	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2525	80	2	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2526	80	9	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2527	80	26	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2528	80	25	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2529	80	3	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2531	80	8	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2532	80	27	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2533	81	21	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2534	81	23	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2535	81	22	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2537	81	19	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2538	81	20	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2539	81	11	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2540	81	13	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2541	81	14	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2542	81	7	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2544	81	9	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2545	81	26	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2546	81	25	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2547	81	3	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2548	81	27	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2550	82	23	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2551	82	22	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2552	82	16	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2553	82	19	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2554	82	20	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2556	82	14	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2557	82	7	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2558	82	2	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2559	82	9	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2560	82	26	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2561	82	25	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2563	82	27	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2564	83	21	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2565	83	23	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2566	83	22	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2567	83	16	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2569	83	10	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2570	83	20	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2571	83	11	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2572	83	14	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2573	83	7	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2575	83	9	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2576	83	26	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2577	83	25	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2578	83	3	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2579	83	27	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2580	84	21	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2582	84	14	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2583	84	6	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2584	84	26	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2585	84	25	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2586	84	3	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2588	85	19	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2589	85	14	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2590	85	7	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2591	85	9	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2592	85	26	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2594	85	27	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2595	86	21	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2596	86	22	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2597	86	19	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2598	86	10	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2599	86	12	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2601	86	26	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2602	86	25	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:35
2603	86	27	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:35
2604	87	19	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:35
2605	87	10	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:35
2607	87	14	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:35
2608	87	7	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:35
2609	87	26	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:35
2610	87	25	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:35
2611	87	8	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:35
2613	97	21	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:35
2614	97	23	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:35
2615	97	22	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:35
2616	97	19	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:35
2619	97	9	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:35
2620	97	26	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:35
2621	97	25	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2622	97	8	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2623	97	27	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2624	98	21	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2626	98	22	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2627	98	19	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2628	98	10	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2629	98	14	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2630	98	5	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2632	98	9	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2633	98	26	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2634	98	25	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2635	98	3	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2636	98	27	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2638	99	23	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2639	99	22	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2640	99	19	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2641	99	20	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2642	99	13	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2643	99	7	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2645	99	6	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2646	99	9	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2647	99	26	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2648	99	25	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2649	99	3	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2651	110	21	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2652	110	23	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2653	110	22	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2654	110	16	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2655	110	19	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2657	110	20	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2658	110	11	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2659	110	13	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2660	110	14	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2661	110	7	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2662	110	6	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2664	110	9	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2665	110	26	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2666	110	25	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2667	110	8	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2668	110	27	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2670	111	23	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2671	111	22	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2672	111	19	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2673	111	10	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2674	111	12	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2676	111	7	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2677	111	2	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2678	111	9	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2679	111	26	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2680	111	25	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2681	111	3	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2683	111	27	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2684	112	21	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2685	112	23	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2686	112	22	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2687	112	16	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2689	112	19	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2690	112	10	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2691	112	11	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2692	112	13	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2693	112	7	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2695	112	5	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2696	112	6	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2697	112	2	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2698	112	9	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2699	112	26	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2700	112	25	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2702	112	1	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2703	112	8	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2704	112	27	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2705	113	21	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2706	113	23	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2708	113	19	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2709	113	10	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2710	113	20	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2711	113	12	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2712	113	7	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2714	113	26	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2715	113	25	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2716	113	3	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2717	113	1	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2718	113	8	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2719	113	27	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2721	114	23	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2722	114	22	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2723	114	16	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2724	114	19	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2725	114	20	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2727	114	11	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2728	114	13	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2729	114	14	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2730	114	7	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2731	114	2	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2733	114	26	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2734	114	25	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2735	114	1	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2736	114	27	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2739	115	22	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2740	115	19	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2741	115	10	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2742	115	12	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2743	115	7	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2744	115	4	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2746	115	6	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2747	115	9	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2748	115	26	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2749	115	25	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2750	115	3	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2752	115	27	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2753	116	21	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2754	116	23	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2755	116	22	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2756	116	10	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2758	116	12	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2759	116	11	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2760	116	13	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2761	116	7	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2762	116	9	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2763	116	26	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2765	116	3	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2766	116	1	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2767	116	8	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2768	116	27	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2769	117	21	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2771	117	22	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2772	117	16	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2773	117	19	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2774	117	20	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2775	117	13	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2777	117	7	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2778	117	2	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2779	117	26	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2780	117	25	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2781	117	3	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2782	117	27	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2784	118	23	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2785	118	22	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2786	118	19	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2787	118	10	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2788	118	20	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2790	118	14	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2791	118	6	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2792	118	2	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2793	118	9	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2794	118	26	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2796	118	3	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2797	118	8	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2798	118	27	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2799	119	21	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2800	119	23	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2801	119	22	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2803	119	14	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2804	119	7	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2805	119	2	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2806	119	9	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2807	119	26	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2809	119	3	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2810	119	8	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2811	119	27	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2812	120	21	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2813	120	23	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2815	120	19	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2816	120	10	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2817	120	13	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2818	120	2	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2819	120	9	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2820	120	26	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2822	120	3	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2823	120	1	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2824	120	8	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2825	120	27	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2826	121	21	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2828	121	22	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2829	121	18	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2830	121	19	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2831	121	10	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2832	121	11	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2834	121	7	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2835	121	6	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2836	121	2	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2837	121	9	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2838	121	26	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2839	121	25	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2841	121	1	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2842	121	8	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2843	121	27	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2844	122	21	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2845	122	23	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2847	122	16	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2848	122	10	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2849	122	20	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2850	122	12	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2851	122	11	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2853	122	7	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2854	122	2	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2855	122	9	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2856	122	26	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2859	122	8	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2860	122	27	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2861	123	21	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2862	123	23	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2863	123	22	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2864	123	16	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2866	123	19	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2867	123	10	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2868	123	20	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2869	123	12	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2870	123	11	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2872	123	14	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2873	123	7	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2874	123	4	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2875	123	5	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2876	123	6	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2878	123	26	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2879	123	25	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2880	123	3	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2881	123	27	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2882	124	21	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2883	124	23	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2885	124	16	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2886	124	19	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2887	124	14	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2888	124	7	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2889	124	9	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2891	124	25	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2892	124	3	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2893	124	27	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2894	125	21	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2895	125	23	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2897	125	19	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2898	125	20	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2899	125	12	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2900	125	13	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2901	125	14	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2902	125	2	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2904	125	25	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2905	125	3	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2906	125	27	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2907	126	21	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2908	126	23	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2910	126	16	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2911	126	18	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2912	126	19	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2913	126	10	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2914	126	20	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2916	126	11	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2917	126	13	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2918	126	14	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2919	126	7	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2920	126	6	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2921	126	2	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2923	126	26	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2924	126	25	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2925	126	3	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2926	126	1	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2927	126	8	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2929	127	21	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2930	127	22	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2931	127	16	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2932	127	20	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2933	127	11	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2935	127	14	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2936	127	7	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2937	127	2	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2938	127	9	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2939	127	26	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2940	127	25	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2942	127	1	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2943	127	8	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2944	127	27	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2945	128	21	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2946	128	23	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2948	128	16	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2949	128	19	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2950	128	7	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2951	128	6	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2952	128	2	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2954	128	26	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2955	128	25	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2956	128	3	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2957	128	8	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2958	128	27	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2959	129	19	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2961	129	12	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2962	129	14	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2963	129	26	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2964	129	25	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2965	129	3	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2967	129	8	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2968	129	27	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2969	130	21	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2970	130	23	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2971	130	22	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2973	130	20	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2974	130	11	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2975	130	14	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2976	130	9	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2979	130	27	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2980	131	21	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2981	131	23	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2982	131	22	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2983	131	16	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2984	131	18	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2986	131	12	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2987	131	14	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2988	131	7	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2989	131	6	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2990	131	2	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2992	131	26	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2993	131	25	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2994	131	3	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2995	131	1	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2996	131	8	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2998	132	21	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2999	132	23	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
3000	132	22	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
3001	132	19	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
3002	132	11	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
3003	132	13	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
3005	132	7	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
3006	132	5	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3007	132	6	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3008	132	2	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3009	132	9	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3011	132	25	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3012	132	3	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3013	132	8	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3014	132	27	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3015	133	21	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3017	133	22	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3018	133	18	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3019	133	19	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3020	133	12	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3021	133	11	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3022	133	13	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3024	133	5	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3025	133	6	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3026	133	2	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3027	133	9	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3028	133	26	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3030	133	3	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3031	133	8	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3032	133	27	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3033	134	21	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3034	134	23	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3036	134	16	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3037	134	18	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3038	134	19	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3039	134	10	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3040	134	20	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3041	134	12	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3043	134	13	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3044	134	7	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3045	134	4	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3046	134	5	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3047	134	6	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3049	134	9	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3050	134	26	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3051	134	25	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3052	134	3	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3053	134	1	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3055	134	27	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3056	135	21	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3057	135	23	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3058	135	22	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3059	135	16	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3060	135	18	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3062	135	10	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3063	135	20	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3064	135	12	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3065	135	11	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3066	135	13	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3068	135	7	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3069	135	4	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3070	135	5	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3071	135	6	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3072	135	2	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3074	135	26	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3075	135	25	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3076	135	3	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3077	135	1	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3078	135	8	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3079	135	27	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3081	136	23	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3082	136	22	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3083	136	16	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3084	136	19	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3085	136	10	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3087	136	7	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3088	136	6	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3089	136	2	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3090	136	9	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3091	136	26	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3093	136	8	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3094	136	27	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3095	137	21	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3096	137	23	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3099	137	10	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3100	137	20	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3101	137	13	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3102	137	14	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3103	137	7	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3104	137	2	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3106	137	26	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3107	137	25	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3108	137	27	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3109	138	21	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3110	138	23	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3112	138	16	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3113	138	19	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3114	138	10	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3115	138	20	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3116	138	12	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3118	138	14	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3119	138	7	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3120	138	5	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3121	138	6	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3122	138	2	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3123	138	9	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3125	138	25	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3126	138	3	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3127	138	1	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3128	138	8	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3129	138	27	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3131	139	23	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3132	139	22	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3133	139	16	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3134	139	19	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3135	139	10	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3137	139	11	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3138	139	13	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3139	139	14	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3140	139	7	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3141	139	6	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3142	139	9	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3144	139	25	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3145	139	3	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3146	139	1	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3147	139	8	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3149	140	21	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3154	140	14	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3155	140	7	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3156	140	5	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3157	140	6	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3158	140	26	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3159	140	25	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3160	140	3	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3161	140	1	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3162	140	8	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3163	140	27	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3164	141	21	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3165	141	23	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3166	141	22	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3167	141	10	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3168	141	11	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3169	141	14	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3170	141	7	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3171	141	6	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3172	141	26	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3173	141	25	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3174	141	3	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3175	141	1	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3176	141	8	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3177	141	27	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3178	142	21	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3179	142	23	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3180	142	22	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3182	142	19	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3183	142	10	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3184	142	20	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3185	142	12	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3186	142	11	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3188	142	14	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3189	142	7	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3190	142	5	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3191	142	6	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3192	142	2	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3194	142	26	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3195	142	25	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3196	142	3	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3197	142	8	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3198	142	27	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3199	143	21	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3201	143	22	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3202	143	16	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3203	143	10	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3204	143	20	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3205	143	12	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3207	143	13	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3208	143	14	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3209	143	7	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3210	143	4	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3211	143	5	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3213	143	2	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3214	143	9	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3215	143	26	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3216	143	25	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3219	143	8	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3220	143	27	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3221	144	20	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3222	144	12	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3223	144	11	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3224	144	14	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3226	144	4	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3227	144	5	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3228	144	6	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3229	144	2	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3230	144	9	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3232	144	25	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3233	144	3	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3234	144	1	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3235	144	8	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3236	144	27	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3238	145	23	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3239	145	22	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3240	145	19	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3241	145	10	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3242	145	20	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3243	145	12	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3245	145	14	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3246	145	7	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3247	145	5	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3248	145	6	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3249	145	2	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3251	145	26	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3252	145	25	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3253	145	1	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3254	145	27	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3255	146	21	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3257	146	22	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3258	146	16	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3259	146	19	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3260	146	10	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3261	146	20	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3262	146	12	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3264	146	13	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3265	146	14	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3266	146	7	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3267	146	4	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3268	146	5	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3270	146	2	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3271	146	9	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3272	146	26	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3273	146	25	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3274	146	3	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3276	146	8	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3277	146	27	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3278	147	21	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3279	147	23	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3280	147	22	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3281	147	19	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3283	147	20	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3284	147	12	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3285	147	11	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3286	147	5	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3287	147	6	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3289	147	9	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3290	147	26	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3291	147	25	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3292	147	3	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3293	147	1	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3295	147	27	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3296	148	21	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3297	148	23	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3298	148	22	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3299	148	16	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3300	148	17	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3302	148	19	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3303	148	10	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3304	148	20	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3305	148	12	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3306	148	11	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3308	148	14	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3309	148	7	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3310	148	4	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3311	148	5	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3312	148	6	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3314	148	9	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3315	148	26	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3316	148	25	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3317	148	3	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3318	148	1	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3319	148	8	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3321	149	21	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3322	149	23	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3323	149	22	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3324	149	16	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3325	149	17	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3327	149	19	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3328	149	10	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3329	149	20	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3330	149	12	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3331	149	11	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3333	149	14	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3334	149	7	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3335	149	4	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3336	149	5	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3339	149	9	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3340	149	26	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3341	149	25	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3342	149	3	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3343	149	1	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3344	149	8	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3346	150	21	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3347	150	23	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3348	150	22	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3349	150	16	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3350	150	17	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3352	150	19	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3353	150	10	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3354	150	20	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3355	150	12	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3356	150	11	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3358	150	14	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3359	150	7	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3360	150	4	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3361	150	5	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3362	150	6	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3363	150	2	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3365	150	26	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3366	150	25	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3367	150	3	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3368	150	1	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3369	150	8	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3371	151	21	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3372	151	23	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3373	151	22	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3374	151	17	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3375	151	18	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3377	151	10	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3378	151	20	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3379	151	12	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3380	151	11	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3381	151	13	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3382	151	14	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3384	151	4	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3385	151	5	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3386	151	6	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3387	151	2	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3388	151	9	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3390	151	25	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3391	151	3	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3392	151	1	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3393	151	8	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3394	151	27	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3396	152	23	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3397	152	22	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3398	152	19	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3399	152	12	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3400	152	14	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3401	152	26	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3403	152	27	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3404	153	21	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3405	153	23	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3406	153	22	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3407	153	18	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3409	153	10	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3410	153	20	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:40
3411	153	12	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:40
3412	153	11	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:40
3413	153	13	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:40
3415	153	7	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:40
3416	153	4	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:40
3417	153	5	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:40
3418	153	6	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:40
3419	153	2	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:40
3420	153	9	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:40
3422	153	25	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:40
3423	153	3	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3424	153	8	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3425	153	27	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3426	154	21	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3428	154	22	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3429	154	16	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3430	154	17	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3431	154	18	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3432	154	19	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3434	154	20	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3435	154	12	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3436	154	11	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3437	154	13	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3438	154	14	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3439	154	7	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3441	154	5	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3442	154	6	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3443	154	2	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3444	154	9	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3445	154	26	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3447	154	3	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3448	154	1	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3449	154	8	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3450	154	27	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3451	155	21	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3453	155	22	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3454	155	16	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3455	155	17	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3456	155	18	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3459	155	20	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3460	155	12	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3461	155	11	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3462	155	13	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3463	155	14	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3464	155	7	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3466	155	5	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3467	155	6	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3468	155	2	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3469	155	9	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3470	155	26	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3472	155	3	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3473	155	1	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3474	155	8	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3475	155	27	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3476	156	21	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3478	156	22	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3479	156	17	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3480	156	18	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3481	156	19	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3482	156	10	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3483	156	20	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3485	156	11	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3486	156	13	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3487	156	14	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3488	156	7	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3489	156	4	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3491	156	6	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3492	156	2	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3493	156	9	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3494	156	26	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3495	156	25	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3497	156	1	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3498	156	8	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3499	156	27	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3500	157	21	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3501	157	23	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3502	157	22	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3504	157	10	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3505	157	20	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3506	157	12	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3507	157	11	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3508	157	13	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3510	157	7	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3511	157	6	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3512	157	2	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3513	157	9	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3514	157	26	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3516	157	3	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3517	157	1	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3518	157	8	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3519	157	27	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3520	158	21	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3521	158	23	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3523	158	16	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3524	158	17	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3525	158	18	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3526	158	19	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3527	158	10	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3529	158	12	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3530	158	11	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3531	158	13	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3532	158	14	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3533	158	7	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3535	158	5	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3536	158	6	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3537	158	2	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3538	158	9	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3539	158	26	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3540	158	25	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3542	158	1	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3543	158	8	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3544	158	27	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3545	159	21	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3546	159	23	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3548	159	19	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3549	159	20	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3550	159	12	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3551	159	11	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3552	159	14	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3554	159	6	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3555	159	2	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3556	159	9	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3557	159	26	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3558	159	25	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3559	159	8	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3561	160	21	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3562	160	23	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3563	160	22	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3564	160	19	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3565	160	10	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3567	160	12	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3568	160	11	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3569	160	14	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3570	160	5	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:42
3571	160	6	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3573	160	9	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3574	160	26	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3575	160	25	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3576	160	1	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3579	161	21	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3580	161	23	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3581	161	22	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3582	161	16	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3583	161	17	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3584	161	19	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3586	161	20	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3587	161	12	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3588	161	11	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3589	161	13	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3590	161	14	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3592	161	4	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3593	161	5	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3594	161	6	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3595	161	2	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3596	161	9	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3598	161	25	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3599	161	3	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3600	161	1	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3601	161	8	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3602	161	27	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3603	162	21	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3605	162	22	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3606	162	10	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3607	162	12	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3608	162	11	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3609	162	13	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3611	162	2	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3612	162	9	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3613	162	26	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3614	162	25	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3615	162	1	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3617	162	27	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3618	163	21	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3619	163	23	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3620	163	22	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3621	163	20	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3622	163	12	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3624	163	13	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3625	163	14	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3626	163	7	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3627	163	4	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3628	163	2	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3630	163	26	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3631	163	25	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3632	163	3	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3633	163	1	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3634	163	8	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3636	164	21	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3637	164	23	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3638	164	22	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3639	164	19	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3640	164	10	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3641	164	20	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3643	164	11	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3644	164	7	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3645	164	4	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3646	164	5	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3647	164	6	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3649	164	9	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3650	164	26	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3651	164	25	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3652	164	3	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3653	164	1	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3655	164	27	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3656	165	21	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3657	165	23	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3658	165	22	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3659	165	16	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3660	165	17	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3662	165	19	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3663	165	10	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3664	165	20	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3665	165	12	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3666	165	11	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3668	165	14	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3669	165	7	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3670	165	4	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3671	165	5	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3672	165	6	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3674	165	9	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3675	165	26	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3676	165	25	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3677	165	3	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3678	165	1	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3679	165	8	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3681	166	23	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3682	166	22	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3683	166	19	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3684	166	10	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3685	166	20	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3687	166	13	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3688	166	14	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3689	166	7	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3690	166	4	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3691	166	5	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3693	166	2	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3694	166	9	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3695	166	26	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3696	166	25	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3699	166	8	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3700	166	27	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3701	167	21	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3702	167	23	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3703	167	22	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3704	167	16	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3706	167	19	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3707	167	10	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3708	167	20	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3709	167	12	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3710	167	11	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3712	167	7	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3713	167	4	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:43
3714	167	5	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:43
3715	167	6	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:43
3716	167	2	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:43
3718	167	26	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:43
3719	167	25	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:43
3720	167	3	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:43
3721	167	1	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:43
3722	167	8	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:43
3723	167	27	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:43
3725	168	23	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:43
3726	168	22	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:43
3727	168	17	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:43
3728	168	18	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:43
3729	168	19	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:43
3731	168	20	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:43
3732	168	12	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:43
3733	168	11	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:43
3734	168	13	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3735	168	14	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3737	168	4	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3738	168	5	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3739	168	6	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3740	168	2	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3741	168	9	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3742	168	26	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3744	168	3	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3745	168	1	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3746	168	8	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3747	168	27	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3748	169	21	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3750	169	22	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3751	169	16	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3752	169	17	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3753	169	18	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3754	169	19	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3756	169	20	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3757	169	12	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3758	169	11	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3759	169	13	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3760	169	14	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3761	169	7	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3763	169	5	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3764	169	6	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3765	169	2	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3766	169	9	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3767	169	26	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3769	169	3	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3770	169	1	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3771	169	8	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3772	169	27	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3773	170	21	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3775	170	22	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3776	170	16	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3777	170	17	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3778	170	18	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3779	170	19	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3780	170	10	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3782	170	12	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3783	170	11	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3784	170	13	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3785	170	14	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3786	170	7	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3788	170	5	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3789	170	6	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3790	170	2	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3791	170	9	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3792	170	26	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3794	170	3	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3795	170	1	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3796	170	8	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3797	170	27	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3798	171	21	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3799	171	23	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3801	171	16	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3802	171	17	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3803	171	18	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3804	171	19	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3805	171	10	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3807	171	12	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3808	171	11	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3809	171	13	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3810	171	14	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3811	171	7	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3813	171	5	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3814	171	6	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3815	171	2	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3816	171	9	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3819	171	3	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3820	171	1	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3821	171	8	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3822	171	27	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3823	172	21	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3824	172	23	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3826	172	16	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3827	172	17	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3828	172	18	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3829	172	19	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3830	172	10	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3832	172	12	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3833	172	11	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3834	172	13	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3835	172	14	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3836	172	7	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3838	172	5	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3839	172	6	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3840	172	2	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3841	172	9	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3842	172	26	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3843	172	25	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3845	172	1	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3846	172	8	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3847	172	27	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3848	173	21	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3849	173	23	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3851	173	16	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3852	173	17	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3853	173	18	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3854	173	19	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3855	173	10	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3857	173	12	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3858	173	11	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3859	173	13	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3860	173	14	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3861	173	7	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3862	173	4	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3864	173	6	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3865	173	2	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3866	173	9	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3867	173	26	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3868	173	25	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3870	173	1	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3871	173	8	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3872	173	27	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3873	174	21	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3874	174	23	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3876	174	16	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3877	174	17	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3878	174	18	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3879	174	19	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3880	174	10	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3881	174	20	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3883	174	11	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3884	174	13	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3885	174	14	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3886	174	7	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3887	174	4	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3889	174	6	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3890	174	2	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3891	174	9	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3892	174	26	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3893	174	25	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3895	174	1	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3896	174	8	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3897	174	27	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3898	175	21	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3899	175	23	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3900	175	22	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3902	175	17	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3903	175	18	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3904	175	19	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3905	175	10	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3906	175	20	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3908	175	11	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3909	175	13	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3910	175	14	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3911	175	7	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3912	175	4	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3914	175	6	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3915	175	2	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3916	175	9	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3917	175	26	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3918	175	25	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3919	175	3	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3921	175	8	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3922	175	27	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3923	176	21	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3924	176	23	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3925	176	22	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3927	176	17	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3928	176	18	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3929	176	19	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3930	176	10	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3931	176	20	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3933	176	11	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3934	176	13	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3935	176	14	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3936	176	7	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3939	176	6	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3940	176	2	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3941	176	9	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3942	176	26	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3943	176	25	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3944	176	3	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3946	176	8	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3947	176	27	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3948	177	21	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3949	177	23	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3950	177	22	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3952	177	20	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3953	177	12	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3954	177	11	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3955	177	14	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3956	177	4	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3958	177	6	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3959	177	2	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3960	177	26	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3961	177	25	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3962	177	1	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3963	177	8	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3965	178	21	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3966	178	23	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3967	178	22	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3968	178	17	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3969	178	19	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3971	178	20	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3972	178	12	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3973	178	11	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3974	178	13	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3975	178	14	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3977	178	4	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3978	178	5	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3979	178	6	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3980	178	2	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3981	178	9	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
3982	178	26	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
3984	178	3	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
3985	178	1	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
3986	178	8	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
3987	178	27	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
3988	179	21	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
3990	179	22	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
3991	179	16	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
3992	179	19	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
3993	179	10	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
3994	179	20	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
3996	179	11	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
3997	179	14	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
3998	179	7	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
3999	179	5	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4000	179	6	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4001	179	2	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4003	179	26	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4004	179	25	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4005	179	3	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4006	179	1	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4007	179	8	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4009	180	21	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4010	180	23	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4011	180	22	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4012	180	16	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4013	180	17	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4015	180	10	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4016	180	20	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4017	180	12	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4018	180	11	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4019	180	13	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4020	180	14	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4022	180	4	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4023	180	5	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4024	180	6	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4025	180	2	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4026	180	9	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4028	180	25	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4029	180	3	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4030	180	1	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4031	180	8	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4032	180	27	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4034	181	23	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4035	181	22	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4036	181	16	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4037	181	17	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4038	181	19	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4039	181	10	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4041	181	12	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4042	181	11	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4043	181	13	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4044	181	14	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4045	181	7	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4047	181	5	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4048	181	6	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4049	181	2	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4050	181	9	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4051	181	26	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4053	181	3	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4054	181	1	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4055	181	8	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4056	181	27	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4059	182	22	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4060	182	16	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4061	182	17	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4062	182	19	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4063	182	10	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4064	182	20	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4066	182	11	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4067	182	13	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4068	182	14	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4069	182	7	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4070	182	4	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4072	182	6	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4073	182	2	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4074	182	9	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4075	182	26	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4076	182	25	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4078	182	1	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4079	182	8	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4080	182	27	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4081	183	21	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4082	183	23	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4083	183	22	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4085	183	17	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4086	183	19	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4087	183	10	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4088	183	20	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4089	183	12	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4091	183	13	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4092	183	14	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4093	183	7	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4094	183	4	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4095	183	5	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4097	183	2	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4098	183	9	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4099	183	26	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4100	183	25	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4101	183	3	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4102	183	1	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4104	183	27	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4105	184	21	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4106	184	23	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4107	184	22	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4108	184	16	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4110	184	19	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4111	184	10	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4112	184	20	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4113	184	12	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4114	184	11	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4116	184	14	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4117	184	7	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4118	184	4	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4119	184	5	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4120	184	6	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4121	184	2	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4123	184	26	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4124	184	25	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4125	184	3	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4126	184	1	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4127	184	8	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4129	185	21	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4130	185	23	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4131	185	22	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4132	185	16	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4133	185	17	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4135	185	10	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4136	185	20	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4137	185	12	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4138	185	11	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4139	185	13	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4140	185	14	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4142	185	4	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4143	185	5	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4144	185	6	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4145	185	2	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4146	185	9	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4148	185	25	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4149	185	3	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4150	185	1	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4151	185	8	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4152	185	27	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4154	186	23	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4155	186	22	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4156	186	16	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4157	186	17	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4158	186	19	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4159	186	10	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4161	186	12	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4162	186	11	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4163	186	13	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4164	186	14	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4165	186	7	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4167	186	5	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4168	186	6	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4169	186	2	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4170	186	9	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4171	186	26	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4173	186	3	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4174	186	1	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4175	186	8	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4176	186	27	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4179	187	22	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4180	187	16	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4181	187	17	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4182	187	19	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4183	187	10	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4184	187	20	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4186	187	11	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4187	187	13	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4188	187	14	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4189	187	7	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4190	187	4	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4192	187	6	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4193	187	2	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4194	187	9	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4195	187	26	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4196	187	25	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4198	187	1	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4199	187	8	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4200	187	27	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4201	188	21	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4202	188	23	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4203	188	22	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4205	188	19	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4206	188	10	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4207	188	20	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4208	188	12	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4209	188	13	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4211	188	4	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4212	188	5	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4213	188	6	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4214	188	2	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4215	188	9	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4217	188	25	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4218	188	3	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4219	188	1	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4220	188	8	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4221	188	27	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4222	189	21	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4224	189	22	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4225	189	16	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4226	189	17	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4227	189	19	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4228	189	10	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4230	189	12	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4231	189	11	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4232	189	13	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4233	189	14	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4234	189	7	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4236	189	5	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4237	189	6	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4238	189	2	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4239	189	9	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4240	189	26	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4241	189	25	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4243	189	1	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4244	189	8	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4245	189	27	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4246	190	21	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4247	190	23	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4249	190	16	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4250	190	17	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4251	190	19	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4252	190	10	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4253	190	20	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4255	190	11	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4256	190	13	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4257	190	14	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4258	190	7	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4259	190	4	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4260	190	5	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4262	190	2	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4263	190	9	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4264	190	26	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4265	190	25	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4266	190	3	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4268	190	8	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4269	190	27	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4270	191	21	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4271	191	23	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4272	191	22	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4274	191	17	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4275	191	19	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4276	191	10	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4277	191	20	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4278	191	12	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4279	191	11	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4281	191	14	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4282	191	7	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4283	191	4	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4284	191	5	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4285	191	6	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4287	191	9	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4288	191	26	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4289	191	25	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4290	191	3	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4291	191	1	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4293	191	27	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4294	192	21	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4295	192	23	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4296	192	22	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4299	192	19	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4300	192	10	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4301	192	20	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4302	192	12	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4303	192	11	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4304	192	13	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4306	192	7	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4307	192	4	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4308	192	5	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4309	192	6	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4310	192	2	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4312	192	26	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4313	192	25	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4314	192	3	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4315	192	1	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4316	192	8	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4318	193	21	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4319	193	23	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4320	193	22	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4321	193	16	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4322	193	17	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4323	193	19	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4325	193	20	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4326	193	12	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4327	193	11	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4328	193	13	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4329	193	14	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4331	193	4	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4332	193	5	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4333	193	6	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4334	193	2	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4335	193	9	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4337	193	25	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4338	193	3	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4339	193	1	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4340	193	8	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4341	193	27	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4342	194	21	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4344	194	22	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4345	194	16	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4346	194	17	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4347	194	19	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4348	194	10	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4350	194	12	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4351	194	11	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4352	194	13	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4353	194	14	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4354	194	7	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4356	194	5	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4357	194	6	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4358	194	2	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4359	194	9	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4360	194	26	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4361	194	25	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4363	194	1	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4364	194	8	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4365	194	27	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4366	195	21	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4367	195	23	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4369	195	16	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4370	195	17	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4371	195	19	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4372	195	10	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4373	195	20	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4375	195	11	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:47
4376	195	13	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:47
4377	195	14	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:47
4378	195	7	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:47
4379	195	4	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:47
4380	195	5	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:47
4382	195	2	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:47
4383	195	9	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:47
4384	195	26	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:47
4385	195	25	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:47
4386	195	3	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:47
4388	195	8	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:47
4389	195	27	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:47
4390	196	21	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:47
4391	196	23	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:47
4392	196	22	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:47
4394	196	17	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:47
4395	196	19	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4396	196	10	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4397	196	20	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4398	196	12	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4399	196	11	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4401	196	14	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4402	196	7	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4403	196	4	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4404	196	5	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4405	196	6	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4407	196	9	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4408	196	26	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4409	196	25	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4410	196	3	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4411	196	1	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4413	196	27	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4414	197	21	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4415	197	23	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4416	197	22	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4419	197	19	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4420	197	10	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4421	197	20	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4422	197	12	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4423	197	11	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4424	197	13	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4426	197	7	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4427	197	4	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4428	197	5	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4429	197	6	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4430	197	2	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4432	197	26	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4433	197	25	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4434	197	3	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4435	197	1	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4436	197	8	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4438	198	21	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4439	198	23	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4440	198	22	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4441	198	19	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4442	198	10	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4443	198	12	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4445	198	13	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4446	198	14	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4447	198	7	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4448	198	5	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4449	198	6	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4451	198	9	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4452	198	26	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4453	198	25	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4454	198	3	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4455	198	1	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4457	198	27	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4458	199	21	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4459	199	23	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4460	199	22	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4461	199	16	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4462	199	17	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4464	199	19	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4465	199	10	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4466	199	20	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4467	199	12	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4468	199	11	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4470	199	14	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4471	199	7	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4472	199	4	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4473	199	5	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4474	199	6	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4476	199	9	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4477	199	26	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4478	199	25	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4479	199	3	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4480	199	1	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4481	199	8	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4483	200	21	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4484	200	23	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4485	200	22	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4486	200	16	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4487	200	19	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4489	200	20	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4490	200	12	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4491	200	11	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4492	200	13	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4493	200	14	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4495	200	5	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4496	200	6	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4497	200	2	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4498	200	9	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4499	200	26	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4500	200	25	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4502	200	1	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4503	200	8	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4504	200	27	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4505	201	21	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4506	201	23	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4508	201	16	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4509	201	18	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4510	201	19	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4511	201	10	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4512	201	20	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4514	201	11	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4515	201	13	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4516	201	14	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4517	201	7	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4518	201	5	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4519	201	6	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4521	201	9	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4522	201	26	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4523	201	25	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4524	201	1	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4525	201	8	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4527	202	21	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4528	202	23	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:49
4529	202	22	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:49
4530	202	16	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:49
4531	202	19	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:49
4533	202	20	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:49
4534	202	12	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:49
4535	202	11	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:49
4536	202	13	<p></p>	2020-03-09 10:08:34	2020-03-09 10:15:49
1	1	1	<p>Extro (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:15
4	1	4	<p>Hot (IE-VJ)\n<br />or chilly (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:15
9	1	9	<p>Cold drinks, but can not stand it very good (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:15
12	1	13	<p>BOGER (BO-SK):\n<br />- CIRCULATION: venous, portal vein, abdomen \n<br />- DIGESTIVE ORGANS\n<br />- SKIN: seröse Haut, mucosa \n<br />- RECTUM, chest, skin; skin fold \n<br />- Scheitel, Sohlen\n<br />- Joints, glands\n<br /> \n<br />Viji:\n<br />- congenital heart disease, VSD (Sulph, Sul-i, Merc, Lach) (I-Ambr-2015, p121)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
14	1	17	<p>- Extroverted (IE-VJ)\n<br />- Extroverted - Loud talker (IE-VJ, p 21)\n<br />- Extroverted - Self praisers (IE-VJ, p 21)\n<br />- Introverted - Haughty (IE-VJ, p 90)\n<br /> \n<br />- Extroverted, loquacious (MM-GL)\n<br />- Happy go lucky (I-2015-Viji-Zinc-p)\n<br />- Loves to make friends with all group of age (PV-S-05/12, p 57)\n<br />- Egoistic, benign (MM-GL)\n<br /> \n<br />- Boaster (Ambr)\n<br />- Knowledge is borrowed (combination of what he hears and reads) (IE-VJ)\n<br />- Self praiser, showing the big contacts they have (IE-VJ)\n<br />- Desires appreciation for work (MM-GL) (Arg-n, Mang, Sil, Stann)\n<br />- Tries to give advices (IE-VJ)\n<br /> \n<br />- Theorizing and philosophical thoughts (MM-GL + Ambr)\n<br />- Does not end what he begins (IE-VJ)\n<br />- Only theorizing but not putting things in practice. All things he undertakes, he will never complete them. That is Sulph mentality. Sulph do not progress in life. A person tthat progresses in life, can not be a Sulph (I-2015-Viji-Zinc-p) \n<br />- Sulph looses interest in things, does not finish them -&gt; is not an achiever (I-2015-Viji-Zinc-p)\n<br /> \n<br />- Speaks about politics, environment, God (IE-VJ)\n<br />- Spiritual, religious, is not a one faith man (IE-VJ)\n<br /> \n<br />- Good brain (MM-GL), good memory (Ambr)\n<br />- Inquisitive (PV-S-05/12)\n<br /> \n<br />- Non-diligent (MM-GL)\n<br />- Not very particular (MM-GL)\n<br />- Lazy (I-2015-Viji-Zinc-p)\n<br />- Sluggish, slow (IE-VJ)\n<br /> \n<br />- Creative -&gt; scientific or decorative (MM-GL)\n<br />- artistic tendency (NI-2014)\n<br />- Enthusiastic\n<br /> \n<br />- Anxiety about health (do not want to investigate because they could get a bad diagnosis) (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
100	5	17	<p>- Introverted - AWOTA (angry when obliged to answer) (IE-VJ, p 85)\n<br />- Introverted - Sarcasm (IE-VJ, p 87)\n<br />- Introverted - Haughty (IE-VJ, p 90)\n<br /> \n<br />- Positive (IE-VJ, p60), strong willed (MM-GL)\n<br />- Industrious, businessminded, calculator (TAN-I-01/2017)\n<br />- Ambitious, achiever, zealous, angry, ardent (IE-VJ)\n<br />- Is more achiever than boaster (TAN-I-01/2017)\n<br />- A/F deceived ambition (MM-GL)\n<br />- Work hard out of ambition. Workaholic (MM-GL)\n<br /> \n<br />- Intellectual, would not hurt others (MM-GL) / DD Hep -&gt; is impulsive. Nux-v not, he is very much in control of the situation\n<br />- Enthusiastic (MM-GL)\n<br /> \n<br />- ANGRY   (IE-VJ, p 60)\n<br />- Irritable (MM-GL)\n<br />- Angry on contraddiction (PV-I-S-01/15)\n<br />- Cannot bear to be interrupted or disturbed (IE-VJ)\n<br /> \n<br />- Malicious (MM-GL)\n<br />- Mocking (IE-VJ, p86)\n<br />- Fastidious (MM-GL)\n<br />- Ready to take risks to give a show (MM-GL)\n<br />- Complains about his disease, does not want to die (MM-GL)\n<br />- Love for nature and fascinated by it (IE-VJ)\n<br />- very positive, much focused, zealous, aggressive, result oriented (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
1981	45	13	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1987	45	3	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1993	46	19	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2000	46	8	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2006	47	12	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
4538	202	7	<p></p>	2020-03-09 10:08:34	2020-03-09 10:15:49
4540	202	2	<p></p>	2020-03-09 10:08:34	2020-03-09 10:15:49
4541	202	9	<p></p>	2020-03-09 10:08:34	2020-03-09 10:15:49
4542	202	26	<p></p>	2020-03-09 10:08:34	2020-03-09 10:15:49
4543	202	25	<p></p>	2020-03-09 10:08:34	2020-03-09 10:15:49
4544	202	8	<p></p>	2020-03-09 10:08:34	2020-03-09 10:15:49
4545	202	27	<p></p>	2020-03-09 10:08:34	2020-03-09 10:15:49
2426	75	5	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:49
2427	75	6	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:49
2429	75	9	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:49
2431	75	25	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:49
2432	75	3	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:49
1053	75	11	<div><br></div><div>1. EMBARASSED (IE-VJ, p 57)<br>2. TIMID (IE-VJ, p 57)<br>3. INQUISITIVE, ASKING QUESTIONS (IE-VJ, p 57)</div><div><br></div>	2020-02-26 19:13:47	2020-03-09 10:17:42
2433	75	27	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:49
2425	75	7	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:49
2430	75	26	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:49
2428	75	2	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:49
1054	75	13	<div><br></div><div>Farrington:&nbsp;</div><ul><li>Nervous system</li><li>Cramps</li><li>Dizziness</li><li>Nervöse Übererregbarkeit (Kali-br, Nux-v...)</li></ul><div><br></div>	2020-02-26 19:13:47	2020-03-09 10:17:42
2423	75	12	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:49
2421	75	10	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:49
1057	75	18	<div><br></div><div>- A lot of hormonal influence (MM-GL)<br>- Toxaemia during pregnancy. Eclampsia (MM-GL)</div><div><br></div>	2020-02-26 19:13:47	2020-03-09 10:17:42
2424	75	14	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:49
2422	75	20	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:49
2418	75	21	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:49
2420	75	22	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:49
2419	75	23	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:49
1050	75	1	<div><br></div><div>Intro (IE-VJ)</div><div><br></div>	2020-02-26 19:13:47	2020-03-09 10:16:14
1058	75	19	<div><br></div><div>- Embarassment is the main feeling in childhood (MM-GL)</div><div><br></div>	2020-02-26 19:13:47	2020-03-09 10:16:14
37	2	17	<p>- Introverted - Sarcasm (IE-VJ, p 87)\n<br />- Introverted - Indifference (IE-VJ, p 97)\n<br />- Introverted - Sad and melancholic (IE-VJ, p 95)\n<br /> \n<br />- Introverted, quite, reserved (MM-GL)\n<br /> \n<br />- Positive, strong willed (MM-GL) / Negatively positive (IE-VJ)\n<br />- Revolting (IE-VJ, p54)\n<br />- Vivacious, intellectual (MM-GL)\n<br />- Linguistic mind (MM-GL)\n<br />- Industrious (IE-VJ, p 54)\n<br /> \n<br />- Sarcastic  (MM-GL)\n<br />- Sad (MM-GL)\n<br />- Sep does not like comparison between siblings (I-S-01/15, Ambr p 121)\n<br />- Sepia often starts after grief, becoming unhappy (MM-GL)\n<br /> \n<br />- Emotionally dry, not sensitive (MM-GL)\n<br />- Indifference to loved ones and family (Carb-v, Hel, Plat, Gran), but anxiety for children (IE-VJ) --&gt; syc-syp \n<br />- Indifference to domestic duties (MM-GL)\n<br />- Consolation agg (IE-VJ)\n<br /> \n<br />- Wants to give up responsibility (MM-GL)\n<br />- No fears, but wants security (MM-GL)\n<br />- Anxiety for health (IE-VJ)\n<br /> \n<br />- Painting art (intro) - children who are under a lot of domination end up into art (DD: Natrium, Carbon, Magnesia, Carc) (Ambr-S-10/13)\n<br />- Likes dancing, sentimental, slow, perfect  (MM-GL)\n<br /> \n<br />- Sep reacts to rudeness and domination with be complete introvertedness. Looses internal emotion, indifferent. Becomes very sharp and critical. They are not the ones who will complain about the parents (MM-GL)\n<br />- Suppressed by  dominating  parents: (complains  about  situation, Carc. adapts and moulds itself) (MM-GL)\n<br />- hardens when hurt (NI-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
56	3	17	<p>- Introverted - Sarcasm (IE-VJ, p 87)\n<br />- Introverted - Haughty (IE-VJ, p90)\n<br /> \n<br />- Haughty (IE-VJ)\n<br />- Angry (IE-VJ)\n<br />- Angry and fearful (Ambr-S-10/13, p 44)\n<br />- Loves power in their hand (IE-VJ)\n<br />- Stiff (MM-VJ), serious, smiling rarely (MM-GL)\n<br />- Emotional, if someone thanks them for help they weep (IE-VJ)\n<br />- Conscencious and diligent in psor (Ambr)\n<br />- Is not in the rubric anxiety of conscience. He is egoistic, does not care what others do (PV-S_11/10, p43)\n<br />- Obstinate (Ambr)\n<br />- Timid (IE-VJ)\n<br />- Mild with strangers, rough with staff (IE-VJ)\n<br />- Does not face situations (Ambr)\n<br />- Egoist (Ambr)\n<br />- Hard on inferior, soft on superior (Ambr)\n<br />- Likes help (Ambr)\n<br />- Money minded (IE-VJ)\n<br />- Wants a clear diagnosis and follows treatment exactly (MM-GL)\n<br />- coward: goes away, does not confront others (PV-S-10/14)\n<br />- anger after disappointment (PV-S-10/14)\n<br />- anticipatory anxiety (PV-S-10/14)\n<br />- outside hard inside soft (PV-S-10/14)\n<br /> \n<br />DIFFERENT LYCOPODIUMS (nach MM-GL):\n<br />INTELLIGENT + DILIGENT Lycopodium:\n<br />o\tIntellectual\n<br />o\tStudious\n<br />o\tconscientious and diligent\n<br />o\tIndustrious people / children\n<br />o\tWorkaholics / mania for work\n<br />o\tLearning desire for\n<br />o\tStraightforward people\n<br />o\tConscientious about trifles\n<br />o\tAnticipation general\n<br />o\tIrritability trifles at</p>\n\n<p> \n<br />TIMID + QUIET Lycopodium:\n<br />o\tTimidity\n<br />o\tMildness\n<br />o\tYielding disposition\n<br />o\tReserved, quite people/children.\n<br />o\tHorrible things affect them profoundly.\n<br />o\tUnfortunate feels he is\n<br />o\tWeeping when thanked\n<br />o\tSecretive\n<br />o\tGrief\n<br />o\tSits silent\n<br />o\tFrightened easily, frightened trifles at.\n<br />o\tFear, trifles at\n<br /> \n<br />CHARACTERLESS Lycopodium:\n<br />o\tCharacter lack off\n<br />o\tAmorous ambition\n<br />o\tAversion to woman\n<br />o\tAversion to own children\n<br />o\tCursing curses desire to\n<br />o\tDisobedience\n<br />o\tBiting nails\n<br />o\tFancies vivid\n<br />o\tGodless</p>\n\n<p> \n<br />HAUGHTY Lycopodium:\n<br />o\tDominating, dictatorial, dogmatic.\n<br />o\tCensorious, critical, sarcastic\n<br />o\tAnger contradiction from\n<br />o\tContemptuous\n<br />o\tContradict, disposition to\n<br />o\tCompany aversion to\n<br />o\tDefiant\n<br />o\tDiscontented.\n<br />o\tComplaining.\n<br />o\tDisputatious.\n<br />o\tEgoistic.\n<br />o\tPresumptuous\n<br />o\tStiff and pretentious.\n<br />o\tQuarrelsome and scolding.\n<br />o\tReproaches others\n<br />o\tTalk dictatorial.\n<br />o\tRudeness.\n<br />o\tObstinate, headstrong.\n<br />o\tOffended easily.\n<br />o\tSuspicious.\n<br />o\tImpatient.\n<br />o\tPompous, importance feels his.\n<br /> \n<br />EFFEMINATE Lyc.:\n<br />(Puls., Sil., Plat.)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
58	3	19	<p>- Children who never smile (because of big Ego), turns head away from you (MM-GL)\n<br />- At home devil, at school angel (MM-GL)\n<br />- Diligent, make homework by its own (MM-GL)\n<br />- Hurts mother when he dose not like something (U)\n<br />- If mother scolds (schimpfen) him, he will sit with grossed legs and head down - will not look at the mother (Ambr-S-10/13, p 44)\n<br />- Child does not even come into the room of doctor (Ambr-S-10/13, p 44)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
72	4	10	<p>- If there is desire for warm food, drinks and even surroundings (PHL)\n<br />- If the person is not extroverted (PHL)\n<br />- If the person does not like to be touched (PHL)\n<br />- If the person wants to be independent (PHL)\n<br />- If the person sleeps in a dark room (PHL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
73	4	12	<p>UNCOMMON SYP ENTRY POINTS (MM-GL)\n<br />- Fancies (Cann-i more cheerful&amp;lively, conntective tissues; cann-s UTI, Resp tract; op) (MM-GL)\n<br />- Chaotic (MM-GL)\n<br />- Children aversion to (Sep, Verat, Nux-v, Plat) (MM-GL)\n<br />- Watchfullness (Sulph, Sul-i, Stram) (MM-GL)\n<br />- Patience too much (Mang, op) (MM-GL)\n<br />- Singing, humming to himself (Nat-m, Mosch) (MM-GL)\n<br /> \n<br />- Sudden collapse, sudden weakness or prostration (MM-GL)\n<br />- Fainting on fasting, on odours (MM-GL)\n<br />- Distortions - esp.. bones (Fl-ac) (MM-GL)\n<br />- Hair cut agg., esp. in children (MM-GL)\n<br />- Numbness of single parts (MM-GL)\n<br />- Relaxation of muscles (MM-GL)\n<br />- Rest, repose agg.\n<br />- Paralysis general painful (MM-GL)\n<br />- Yawning involuntary &amp; yawning agg. (Lach) (MM-GL)\n<br /> \n<br />- Shrieking children (MM-GL)\n<br />- Development arrested (MM-GL)\n<br />- Emaciation generally - affected parts (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
77	4	17	<p>- Extroverted - Sweet talkers (IE-VJ, p 21)\n<br /> \n<br />- Smiling sweet (IE-VJ)\n<br />- The beauty is radiant as if a sculptor has carved a statue with care (IE-VJ)\n<br /> \n<br />- GIVE LOVE AND TAKE LOVE (IE-VJ)\n<br />- Very affectionate (MM-GL), gives affection and takes affection (PV-S-10/14)\n<br />- want people close, cannot stay alone, want support (PV-S-10/14)\n<br />- Phos grows and tries to make friends with anybody around him. (PV-S-10/14)\n<br /> \n<br />- Observation is sharp. Eyes are quick, sharp and observing everything (IE-VJ)\n<br />- WATCHFULLNESS. Quick brain. Remember exactly (MM-GL)\n<br />- Vivacious (MM-GL)\n<br />- Sharp brain, quick (MM-GL) (Lach, Op, Coff, Phos, Hyos, Cann-i)\n<br /> \n<br />- Magnetism amel. Mesmerizing because of lack of electricity (MM-GL)\n<br />- Magnetism amel because of lack of energy (MM-GL, Calc-c)\n<br />- Desire to magnetized = selfish (PV-S-10/14)\n<br />- Is very timid and wants support. Phos wants support of others through their energy. so he touches and takes energy to survive (I-2015-Viji-zinc-p)\n<br />- When Phos is combined to a metal, it does not need energy from others and will not show affection, also he cares for family (Merc-p, Stann-p, Zinc-p...) (I-2015-Viji-zinc-p)\n<br /> \n<br />- Fear to go into a dark room (IE-VJ), fear being alone at night (MM-GL), fear of darkness (PV-S-10/14)\n<br />- Fear of ghosts (IE-VJ)(PV-S-10/14)\n<br />- Fear of thunderstorm (MM-GL)\n<br />- Fear of touch. Fear of pain. Fear of doctors (MM-GL)\n<br />- A/F fright (MM-GL)\n<br /> \n<br />- Artistic and creative (MM-GL)\n<br />- Love art, colors, painting rather than drawing (IE-VJ)\n<br />- Love bright colors, can never tolerate dull colors (IE-VJ)\n<br />- Dancing, fond of (MM-GL)\n<br />- Likes to travel (Ambr-I-2012)\n<br /> \n<br />- Indifference to loved one (IE-VJ, p 97)\n<br />- Content (MM-GL)\n<br />- very weak and fearful (PV-S-10/14)\n<br />- internal energy is not sufficient and they want and need energy from somebody else (PV-S-10/14)\n<br />- cosmopolitan mind (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
82	4	22	<p>- Extroverted, loquacity (MM-GL)\n<br />- Wants people, wants company (MM-GL)\n<br />- Affectionate &amp; exuberance (MM-GL)\n<br />- Wants magnetism and loves caressing, hugging, kissing (MM-GL)\n<br />- Restlss and plays antics (MM-GL)\n<br />- Mischevious (MM-GL)\n<br />- Tryes to avoid people, aversion to people that have hurt them (Ambr)\n<br /> \n<br />- Physical could be obese (MM-GL)\n<br />- Loves sweets, ice creams...(MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
83	4	23	<p>- Dominating (MM-GL)(PV-S-10/14), dictatorial (Amber, 2013)\n<br />- Talk indisposed to (MM-GL)\n<br />- Misantrophy (Ambr)(PV-S-10/14)\n<br />If he doesn't get enough love from parents, he will look for the love of friends, if they are not loved there or from other people, they become misanthropist (MM-GL).\n<br />- Aversion to loved ones (MM-GL)\n<br />- Hatred (Hass) (MM-GL)\n<br />- Indifferent to family, loved ones (MM-GL)\n<br />- Haughty\n<br />- Fancies (MM-GL)\n<br />- Homosexuality, Effeminate (MM-GL)\n<br /> \n<br />- Apathetic (Ambr)\n<br />- Crabby (mürrisch) (Ambr)\n<br />- Sad (Ambr)\n<br />- censorious and critical (PV-S-10/14)\n<br />- body heat is distributed unequally (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
2012	47	26	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2017	48	21	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
117	6	17	<p>- Introverted - haughty (IE-VJ, p 90)\n<br /> \n<br />- They are like chilly Plat but they are too timid to express it (IE-VJ)\n<br />- Haughty but timid (IE-VJ). Contempt for everything. Ego (MM-GL)\n<br />- Haughty, angry, dominating and chilly (MM-GL)\n<br /> \n<br />- Censorious. Reproaches others. Complains about everything (MM-GL)\n<br />- Hurts others feelings (MM-GL)\n<br /> \n<br />- They feel everything torments them, therefore frown on the face (IE-VJ)\n<br />- Friends, father and mother everyone torments them (IE-VJ)\n<br />- Lamenting (MM-GL)\n<br /> \n<br />- Hypersensitivity. Feels tormented by different things and hindered (MM-GL)\n<br /> \n<br />- Strictly follows stars and astrology, they feel stars torment them (IE-VJ)\n<br />- Fear of eating certain food, in fear of getting pain or diarrhea (IE-VJ)\n<br /> \n<br />- Mocking (IE-VJ, p86)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
132	7	17	<p>- Angry, throws tanturms, becomes cranky (IE-VJ)\n<br /> \n<br />- Fear of his body being fragile (avoiding many things because of many different reasons). Hence becomes cautious (MM-GL)\n<br />- Feels he is frail (PV-I-01/15)\n<br />- Talks and walks cautiously (MM-GL)\n<br />- Fear of getting hurt physically (MM-GL)\n<br /> \n<br />- Very conscientious and diligent, studious (IE-VJ)\n<br />- Good boy, good girl (GL-Z)\n<br /> \n<br />- No anxiety of health (MM-GL)\n<br />- Obstinate (MM-GL)\n<br />- Cuts off relationship like Plat (MM-GL), Nat-m and Verat (Ambr-S-10/13, p32)\n<br /> \n<br />- Shrieking at night from 3 am – 6 am, sometimes the whole night. Before that they might had an episode of diarrhoea, golden-yellow stools (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:16
152	8	19	<p>- Anticipation and anxious children (Ambr-S-10/13)\n<br />- Extremely fearful - fear of unknown, fear someone is behind him and following him (Ambr-S-10/13)\n<br />- Sensitive to criticism; they fall sick after they are criticized in class room (Ign) (Ambr-S-10/13)\n<br />- Anxiety, when time is set; when asked to get up early in the morning, they will get up much too early (Ambr-S-10/13)\n<br />- Love for animals and compassionate towards animals (esp. dogs); a trait on people who were hurt very much in childhood and don't really trust others (carc, aeth) (Ambr-S-10/13)\n<br /> \n<br />- Children are obese and have sensitive back (Ambr-S-10/13)\n<br />- Children who love sour things, not so much sweet (Lach loves sweets) (Ambr-S-10/13)\n<br />- Children who sleep on abdomen, and they have sensitive abdomen, as they cannot tolerate tight belt or trousers around their waist (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
153	8	20	<p>Medo % Thuj -&gt;  Fear something could happen / Fear to be physically hurt (PV-I-01/15, p 146)\n<br /> \n<br />DD LACH % MED (Ambr-S-10/13)</p>\n\n<p>SIMILAR: Dominating, deceitful, sly, malicious &amp; revengeful, anxiety of health, abusive &amp; insulting, awkwardness, censorious &amp; critical, avarice, cares &amp; worries full of, extroverted, hot, thirsty, left sided</p>\n\n<p>DIFFERENT:    Lach  /  Med </p>\n\n<p>JESTING:      Jesting / Not jesting\n<br />INTELLIGENCE: sharp brain / Anticipation, restless, fearful, fear of getting mentally hurt\n<br />PROPHESYING:  inborn (snakes) / after mental hurt\n<br />TIGHT:        intolerance tight clothing, hole body esp. throat / tolerate tight clothes; don't like tight clothing around abdomen \n<br />BASIC NEED:   respect &amp; Support, depend on mother or father / Respect, independent children (Merc)\n<br /> \n<br />DD MED % ARG-N (PV-I-01/15)</p>\n\n<p>MED                                         ARG-N\n<br />Mesodermal tissue, thickening               Syphilitic, destructive pathology, neuro-ectoderm\n<br />Fear of unknown, unseen things              Fear of real things, which can be seen\n<br />Likes sour                                  Likes sweets</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
167	9	17	<p>- Introverted - Haughty (IE-VJ, p 90)\n<br />- Introverted - Indifference (IE-VJ, p 97)\n<br /> \n<br />- Haughty and contemptuous, they are convinced they are exclusive (IE-VJ)\n<br />- Want people to have a good opinion of them (MM-GL)\n<br />- Plat does not like to prove herselve, she is superior, she is not performing (PV-I-01/2017)\n<br /> \n<br />- Looks down upon others (IE-VJ)\n<br />- Hard on inferior, soft on superiors (IE-VJ), dictatorial, dominating (MM-GL)\n<br /> \n<br />- If anyone does not agree with their views they cut off relations (IE-VJ) (Thuj, Nat-m, Verat (Ambr-S-10/13))\n<br />- Cannot tolerate contradiction (IE-VJ)\n<br /> \n<br />- Does not like to have long conversations (IE-VJ)\n<br />- Does not like to do things that lower their position (IE-VJ)\n<br />- Does not cry in public because it lowers her dignity (MM-GL)\n<br /> \n<br />- Indifference to loved one (Sep, Carb-v, Hel, Gran) (IE-VJ, p 97)\n<br /> \n<br />- Taking risks to make a show (MM-GL)\n<br />- Mocking (IE-VJ, p86)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
197	11	20	<p>% ANAC / % BAR-C \n<br />                              Anac        /        Bar-c\n<br />Sense of right and wrong: abolished       / exists, but priorities are wrong \n<br />                  Morals: NO morals       / moralitic, conscientious\n<br />          Respect others: cruel, insolent / NO destruction of morals, or respect to   \n<br />                                            no respect for elders others, but may have \n<br />                                            undue or excess respect or reverence or vene\n<br />                                            ration to one person, God or Cult</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
212	12	17	<p>- Introverted - Timid (IE-VJ)\n<br />- Introverted - AWOTA (angry when obliged to answer) (IE-VJ, p 85)\n<br />- Introverted - Sarcasm (IE-VJ, p 87)\n<br />- Introverted - Quiet, sober and graceful (IE-VJ, p 92)\n<br /> \n<br />- Tremendous graceful, looking aristocratic (IE-VJ)\n<br />- They have a nice, civilized manner of putting things across the table without undue aggression. (MM-GL)\n<br />- Sit on the edge of the chair, slightly croocked (MM-GL); without support on the chair (IE-VJ)\n<br /> \n<br />- Can be mild and timid OR angry and irritable (IE-VJ)\n<br />- Anticipatory anxiety (IE-VJ), restless anxiety, mental restlessness (MM-GL)\n<br />- Anxiety for trifles (IE-VJ)\n<br /> \n<br />- Very censorious and critical (IE-VJ)\n<br />- Disciplined and fastidious, neat, meticulous (MM-GL)\n<br />- Particular (PV-S-10/14)\n<br />- Hair perfectly combed. Fastidious distribution of hair on the chest (MM-GL)\n<br /> \n<br />- Positive, strong willed (MM-GL)\n<br />- They are not fighter (like nux-v), they are always tryers (PV-I-01/2017)\n<br />- Argumentative (IE-VJ)\n<br />- Litigious nature (IE-VJ)\n<br />- Quarrelsome (PV-S-10/14)\n<br /> \n<br />- Ars can never be grateful to inferiors, only to people from whom he is expected to get something -&gt; avarice (MM-GL)\n<br />- The ego does not allow to come out -&gt; concealed anxiety (MM-GL)\n<br />- They will never do social work, they are selfish (MM-GL)\n<br />- Money minded, avarice (MM-GL)\n<br /> \n<br />- Mischievous (MM-GL)\n<br />- Mocking (IE-VJ, p86)\n<br />- Sarcastic (MM-GL)\n<br />- Suddenness (MM-GL)\n<br /> \n<br />- restlessness at night (PV-S-10/14)\n<br />- points out somebody's mistake unnecessarily (PV-S-10/14)\n<br />- the worst boss: he will go on and bite (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
232	13	17	<p>- Active, restless, travelling, wandering (MM-GL)\n<br />- Hyperactivity (Ambr)\n<br />- Like to travel (Ambr)\n<br />- Needs support (MM-GL)\n<br />- Anger (Ambr)\n<br />- Does not like consolation (IE-VJ) (see Phos)\n<br />- Mind dull, Mental exertion agg (MM-GL)\n<br />- Thinking of complaints agg (MM-GL)\n<br />- Never sits without support (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
2018	48	23	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
234	13	20	<p>MM-GL:\n<br />                       Calc-p            %           Bar-c</p>\n\n<p>APPEARANCE: lean, tall, thin neck,       /  Stout, obese and rounded\n<br />            sharp nose, sharp features \n<br />SPEED:      Fast, rapid, restless        /  Slow in movements\n<br />SUPPORT:    Needs support                /  Does not want support\n<br />THIRST:     NOT thirsty                  /  Thirsty</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
248	14	17	<p>- Extroverted - Sweet talkers (IE-VJ, p 21)\n<br /> \n<br />- Very active and restless (IE-VJ). Likes to travel (MM-GL)\n<br />- Timid constitution (IE-VJ)\n<br />- Sympathetic (MM-GL)\n<br />- Benevolence (MM-GL)\n<br />- Sensitive to rudeness (IE-VJ)\n<br />- Offended easily (IE-VJ)\n<br />- Quick, intelligent  (MM-GL)\n<br />- Diligent and conscientious (IE-VJ)\n<br />- Anxious about everything, especially their health (IE-VJ)\n<br />- Destructive impulse  (MM-GL)\n<br />- Whatchfull eyes (PV-S-05/12)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
265	15	17	<p>Ferrrums &amp; Ferr metallicum\n<br /> \n<br />- Introverted - Haughty (IE-VJ, p 90)</p>\n\n<p>- Introverted - Quiet, sober and graceful (IE-VJ, p 92)\n<br /> \n<br />- Strong willed, positive  (MM-GL)\n<br />- Strong, powerful, positive, but one weak point -&gt; senses are acute (MM-GL)\n<br />- Don't get angry or don't quarrel - they stick to what they say (IE-VJ)\n<br />- "I am always right" (MM-GL)\n<br />- Disputatious, dogmatic but not dictatorial (IE-VJ)\n<br />- Ferrums work for principles (MM-GL)\n<br />- Pertinancy (IE-VJ)\n<br />- Structure (everything should be done in a systematic manner) (IE-VJ)\n<br />- Disciplined (IE-VJ)\n<br />- Very diligent, concencious (MM-GL)\n<br />- Soberness is out of firmness and stability despite being sensitive (IE-VJ)\n<br />- You don't feel sorry for them  (MM-GL)\n<br />- Sensitive  (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
278	16	12	<p>- Tall baryta with Sulph like personality (IE-VJ)\n<br />- Left sided Baryta (IE-VJ)\n<br />- Ladies that buy 5 Kg instead of 1 Kg vegetables at the market (IE-VJ)\n<br />- Interest in old historic places, art, creativity (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
280	16	17	<p>- Misplaced (MM-VJ)\n<br />- Inadaptable, routinist (MM-VJ)\n<br />- Interest in art and architecture but no aptitude (IE-VJ)\n<br />- Talkative (MM-VJ)\n<br />- Loss of will (MM-VJ)\n<br />- Very TIMID (MM-VJ)\n<br />- Anxiety and suspiciousness (MM-VJ)\n<br />  -&gt; Reaction – Desires more than she needs (out of insecurity) (MM-GL)\n<br />     MIND - DESIRES - full of desires - more than she needs: Ars. Ars-s-f., Bar-s. Bry., Zinc-p.\n<br />- Word hunting, forgetfulness -&gt; fear of conversation (MM-VJ)\n<br />- Ladies that buy 5 Kg instead of 1 Kg vegetables at the market (IE-VJ)\n<br />- Interest in old historic places, art, creativity (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:17
311	18	12	<p>- Contented, never anxious about his condition (IE-VJ)\n<br />- Never complains (IE-VJ)\n<br />- Even when drowsy, the mind is alert (MM-GL)\n<br />- Acuteness of senses (IE-VJ)\n<br />- Intelligent, easy comprehension, acute memory (MM-GL)\n<br />- Very sharp, quick mind but slow in body (C)\n<br />- Corageous (C)\n<br />- Torpor (IE-VJ)\n<br />- Sleep excessive or slightest noise disturbs sleep (IE-VJ)\n<br />- Good talkers (IE-VJ)\n<br />- Constipation (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
330	19	11	<p>1. ARDENT, SYMPATHETIC, ANARCHIST TENDENCY (IE-VJ, p 57)\n<br />2. DRY FOOD (IE-VJ, p 57)\n<br />3. &lt; FINE WEATHER, &gt; CLOUDY WEATHER (IE-VJ, p 57)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
332	19	13	<p>PRAFUL VIJAYAKAR:\n<br />- Nervous system (PV-I-01/15)\n<br /> \n<br />SkHZ:\n<br />- MS\n<br />- Stottern\n<br />- Husten\n<br />- Atmung</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
334	19	17	<p>- Introverted - Sarcastic (IE-VJ, p 87)\n<br />- Introverted - Haughty (IE-VJ, p 90)\n<br />- In appearance, a Caust never seems to be a fighter. He appears calm, cool and mild, with not much of anger and aggression of Kali-c(GMM-VJ)\n<br /> \n<br />- Positive, strong willed (MM-GL)\n<br />- Rebellious, revolting (PV-I-01/15), anarchist (Mahatma Gandhi) (MM-GL)\n<br />- Quarrelsome (GMM-VJ)\n<br />- Disposition to contradict (MM-GL)\n<br />- Ardent, ready for fight against any injustice (MM-GL)\n<br />- People that are union leaders and idealistic and fight for their ideal (GMM-VJ)\n<br /> \n<br />- Honest and social worker (GL-Z)\n<br />- Benevolent, sympathetic (MM-GL)\n<br /> \n<br />- Likes cloudy weather amel. / agg. in clear or fine weather (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
351	20	17	<p>- Extroverted - Self praisers (IE-VJ, p 21)\n<br /> \n<br />- Timid (AMSH)\n<br /> \n<br />- Is another hot Sulph who likes to talk much, but will not start immediately like a Sulph because of -&gt; timidity of Calc (MM-GL)\n<br />- Boasting ability of Sulph accompanied by neglected feeling of Calc-s (MM-GL)\n<br />- The talk of Calc-s takes a turn to show how efficient he is (MM-GL)\n<br />- He is always lamenting that he has not received credence or appreciation that is actually due to him (MM-GL)\n<br />- Loves appreciation (MM-GL)\n<br /> \n<br />- Needs help, sustain from family (AMSH)\n<br /> \n<br />- Egoistic (MM-GL)\n<br />- Aversion to people, who contradict her (MM-GL)\n<br />- Quarrelsome, angry calcarea (MM-VJ)\n<br />- Only calc which is courageous (MM-GL)\n<br /> \n<br />- Coquettish (MM-VJ)\n<br />- Anxious (AMSH)\n<br />- Delicate people who hate walking and sports (MM-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
369	21	17	<p>- Lacking of intellect, slow learner (MM-GL)\n<br />- Mischievous (MM-GL)\n<br />- Cheerful, giggling (MM-GL)\n<br />- Laughing causeless, childish, easily, over serious matters (MM-GL)\n<br />- Childish, immature (IE-VJ), silly, foolish (MM-GL)\n<br />- Not moralistic (IE-VJ)\n<br />- Deceitful, sly (IE-VJ)\n<br />- Amorous, sexually overactive (IE-VJ)\n<br />- Insanity erotic (Apis, Bar-m, Plat, Verat) (MM-GL)\n<br />- Shameless (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
385	22	17	<p>- Quick, Fast, restless (IE-VJ)\n<br />- Hurried, impatient (MM-GL), immer auf dem Sprung (K)\n<br />- Like speed, they like cars, they don't sit in one place (MM-GL)\n<br />  -&gt; DD Sulph: sulph is sluggish and sitting in one place, sul-i is hurried (MM-GL)\n<br />- Sharp and bright eyes (PV-S-05/12)\n<br /> \n<br />- Sehr reizbar, Stimmung sehr wechselhaft: reizbar od fröhlich (K)\n<br />- Timid (IE-VJ). Bashful (verlegen), shy (MM-GL)\n<br /> \n<br />- Very sensitive (IE-VJ)\n<br />- A/F injury (MM-GL)\n<br /> \n<br />- Naive (MM-GL)\n<br /> \n<br />- WOMAN HATE HOUSEHOLD (Cench) (IE-VJ)\n<br />- Abneigung Gesellschaft (K)\n<br /> \n<br />- Likes arts and creative things (IE-VJ)\n<br /> \n<br />- Anxious, fear something may happen (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
388	22	20	<p>DD: sulph / sulph-i (IE-VJ)\n<br />Sulph is sluggish, slow and not very lean. Sul-i. will be lean, thin and fast and hurried in activity. Iodum element makes them very sensitive to hurt, anxious and restless.\n<br />This is an extremely “Timid” Sulphur with constant fear that s.th. may happen and therefore frightened easily. Unlike Sul-i. &amp; Sul-ac., Sulph. itself never shows that it is frightened though it is fearful. The ego of Sulph. prevents him from showing that he or she is timid or that he is frightened of anything.</p>\n\n<p> \n<br />Sirs birthday lecture 2011, noted by Avtar Mavi\n<br />Sul-i. adds this looks of inquisitiveness: Big eyes, extra hurried in eating, loves fruits, interested more in mechanics of toys and gadgets. They hate domestic duties, even in children. Whatever they are made to play with, they will not do it, rather go for gadgets.</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
404	23	17	<p>- Extroverted &amp; 2nd Extro (IE-VJ)\n<br />- Extroverted - Loud talker (IE-VJ, p 21)\n<br />- Extroverted - Self praisers (IE-VJ, p 21)\n<br />- Introverted - Sarcasm (IE-VJ, p 87)\n<br />- Introverted - Haughty (IE-VJ, p 90)\n<br /> \n<br />- 2nd Extrovert, once they know you they are perfect extroverts (IE-VJ)\n<br />- Extroverted, vivacious, jesting (MM-GL)\n<br />- Timid (MM-VJ), at the beginning suspicious (MM-GL)\n<br /> \n<br />- Quick, sharp brain (MM-GL) (Lach, Op, Coff, Phos, Hyos, Cann-i)\n<br />- Positive (GL-Z)\n<br />- Self praiser (IE-VJ)\n<br />- Talks about himself to get attention and respect (IE-VJ)\n<br /> \n<br />- Manipulating, dominating, dictatorial, strong willed (IE-VJ)\n<br />- Diplomatic, can be soft and sweet to placate someone (A-S-10/13)\n<br />- Hard on inferiors, soft on superiors (IE-VJ)\n<br /> \n<br />- Mocking out of mischief (jesting, making fun) (IE-VJ, p86)\n<br />- Angry and fearful (Ambr-S-10/13, p 44)\n<br />- Not courageous (MM-GL)\n<br />- Cheerful, happy go lucky type (MM-GL)\n<br />- Explorer, keen to learn (MM-GL)\n<br /> \n<br />- Love for juwellery (IE-VJ) - they take it off at night (IE-VJ)\n<br />- Love for exterior decoration (IE-VJ)\n<br /> \n<br />- Sensitive -&gt; Clairvoyance and prophetic (syp) (IE-VJ)\n<br />- Music: not specific, love rhythmic music (DD: Tarent-c -&gt; Loves slow and soft music, Tarent-h -&gt; Loves loud and beat music) (Ambr-S-10/2013, p47)</p>	2020-02-26 19:13:47	2020-03-09 10:15:18
405	23	18	<p>- BLEEDING TENDENCY (IE-VJ), dark blood, venom, disintegrated blood, destruction of blood, oozing (not profuse)(PV-S-10/14)\n<br />- Blackish discoloration of skin (IE-VJ)\n<br />- Ulcers (black margins, bluish) (MM-GL)\n<br />- Burning foot sole at night (MM-GL)\n<br />- Periodicity 14 days (MM-GL)\n<br /> \n<br />&gt; Mens (IE-VJ), &lt; before, beginning of Menses (MM-GL)\n<br />&lt; sleep (IE-VJ)\n<br />&lt; after eating, &lt; drinking / &gt; eating while (MM-GL)</p>\n\n<p>&lt; drinking (MM-GL)\n<br />- slight touch agg. (PV-S-10/14)\n<br />- sensitive to touch: throat, abdomen (PV-S-10/14)\n<br />- skin pale, pale spots (PV-S-10/14)\n<br />- skin purple around wounds or eruptions (PV-S-10/14)\n<br />- carbuncle purple with vesicles around (PV-S-10/14)\n<br />- hands: discoloration purple (PV-S-10/14)\n<br />- sound or noise affecting teeth (PV-S-10/14)\n<br />- large sound penetrates the whole body (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
407	23	20	<p>Quick, sharp brain: Op, Coff, Phos, Hyos, Cann-i (MM-GL)</p>\n\n<p>Lach %: sensitive to touch, no tight clothing, quick, sharp mind (MM-GL)\n<br />Coff: very sharp memory, recollect old things, vivacious (MM-GL)\n<br />Hyos: need to tease, incite and play antics (MM-GL)\n<br />Cann-i: need for imagination</p>\n\n<p> \n<br />DD Lach % Med (Ambr-S-10/13)\n<br />SIMILAR: Dominating, deceitful, sly, malicious &amp; revengeful, anxiety of health, abusive &amp; insulting, awkwardness, censorious &amp; critical, avarice, cares &amp; worries full of, extroverted, hot, thirsty, left sided</p>\n\n<p>DIFFERENT:    Lach  /  Med \n<br />JESTING:      Jesting / Not jesting\n<br />INTELLIGENCE: sharp brain / Anticipation, restless, fearful, fear of getting mentally hurt\n<br />PROPHESYING:  inborn (snakes) / after mental hurt\n<br />TIGHT:        intolerance tight clothing, hole body esp. throat / tolerate tight clothes; don't like tight clothing around abdomen \n<br />BASIC NEED:   respect &amp; Support, depend on mother or father / Respect, independent children (Merc)</p>\n\n<p> \n<br />Lach % Crot-h (Ambr-S-10/13)\n<br />SIDE:  Left / Right\n<br />MIND:  Sharp mind / Mind for business\n<br />MISCE: Sensitive, clairvoyance / Bleeder - Faster, more than Lach, bleeding of eyes, bleeding after injury on the right side</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
433	25	6	<p>Left\n<br />Can also be right sided (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
437	25	11	<p>1. PLAYS PRANKS, MISCHIEVOUS\n<br />2. VERY SHARP MINDED\n<br />3. HYPERACTIVE</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
440	25	17	<p>- Extroverted - Loud talker (IE-VJ, p 21)\n<br /> \n<br />- Friendly, extroverted, talks like a friend, cheerful (IE-VJ)\n<br />- Open hearted loquacity (IE-MM)\n<br />- Talks loud (IE-VJ)\n<br />- Naughty smile (IE-VJ)\n<br /> \n<br />- Very sharp minded (IE-VJ). They will always have the last laugh. You cannot win a verbal battle with these individuals (MM-GL) (Lach, Op, Coff, Phos, Hyos, Cann-i)\n<br />- Very argumentative, quarrelsome (IE-VJ)\n<br />- Provocative, mischievous, malicious, destructive (MM-GL)\n<br />- Will never make a mischiev where somebody will get hurt (DD: Merc, Tarent will hurt) \n<br />- Mocking out of mischief and foolish ego (IE-VJ, p86)\n<br /> \n<br />- Childlike mind (not childisch!) (IE-VJ) -&gt; does not take things seriously\n<br />- He wants everybody to laugh. Even if it is at the costs of others or self (IE-VJ)\n<br />- Laughs off serious things (IE-VJ)\n<br />- Laughs loudly and frequently (IE-VJ)\n<br />- Try to attract attention (IE-VJ)\n<br /> \n<br />- Speaks plain truth out of naivness or foolishness (IE-VJ)\n<br />- He reveals secrets to everyone (IE-VJ)\n<br /> \n<br />- Shameless, no problem exposing naked (IE-VJ)\n<br />- Sexual, lewd, double meaning talking (IE-VJ)\n<br />- Hysterical (Hot&amp;Thirsty Pred Notiz)\n<br />- pleasant fancies (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
455	26	17	<p>- Extroverted - Loud talker (IE-VJ, p 21)\n<br /> \n<br />- Basically timid (IE-VJ)\n<br /> \n<br />- EVERY THING IS EXAGGERATED: laughing, talking, theorizing, fancies, time, distance delusion, sexual desire, thought process, fun making, laughing, jesting, rhythmic capacity, focus on one subject, talks on one subject mostly science (IE-VJ)\n<br />- All the energy goes into exaggeration (IE-VJ)\n<br />- Laughs a lot (IE-VJ)\n<br />- Talks loud, very talkative person, the mind is alway on a high (IE-VJ)\n<br />- Loquacity with exaggeration (MM-GL)\n<br /> \n<br />- Sharp senses and mind (MM-GL)(Lach, Op, Coff, Phos, Hyos, Cann-i)\n<br /> \n<br />- Left brain dominance (PV-I-01/17)\n<br />- Constant theorizing. Talks about science (MM-GL)\n<br />- Phantasy remedy, they are in their own merry world (TAN-I-01/2017)\n<br />- Fancies: projecting themselves as scientist- sense of achievement (PV-S-10/14)\n<br />- Talks about science, i.e. I do a raket to go to the sun.... (PV-I-01/2017)\n<br />- He forgets to complete the sentence (IE-VJ)\n<br /> \n<br />- Mischievous, malicious, destructive (MM-GL)\n<br />- Cheerful (MM-GL)\n<br />- Naïve (MM-GL)\n<br />- Clairvoyance. *Clairvoyance at midnight* (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
479	28	6	<p>Left or Right (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
483	28	10	<p>- If there is no restlessness  (PHL)\n<br />- If there is no defiance (herausfordernd) and no fighting ability  (PHL)\n<br /> \n<br />-&gt; There is no excessive salivation in psor and syp state. If excessive salivation lacks in the syk it is not a Roule-out (U)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
485	28	12	<p>- CHAOTIC (Syp)(Ambr-S-10/13) -&gt; SIEHE FALLBEISPIEL UNTEN\n<br />- Disobedient, rough behaviour (IE-VJ)\n<br />- Always contradict, want to hit back (Ambr-S-10/13)\n<br />- Rebellious, anarchist, revolting against whatever is told (IE-VJ)\n<br />  There is a Merc type that is not!!! (PV-I-01/2015)\n<br />- Swimming against the current, going against the tide (MM-GL)\n<br />- Quarrelsome and argumentative (IE-VJ)\n<br />- Precicious, intelligent but not at all studious (IE-VJ), street smart (Ambr)\n<br />- Hurry, hasty (IE-VJ)\n<br />- Are suppressed for long, want to hit back-but can not (Ambr)\n<br />- Excessive salivation and perspiration (IE-VJ)\n<br /> \n<br />IMPORTANT: NEVER take PRECOCITY as entry point (it is a defence mechanism for Merc pats) (Ambr)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
488	28	17	<p>- Timid first -&gt; aggression as reaction (MM-GL)\n<br /> \n<br />- Suppressed for long - want to hit back, but can't (Ambr-S-10/13)\n<br />- Quiet ladies or girls who look very docile... who have been suppressed by parents or mother-in-law (Ambr-S-10/13)\n<br />- Suppressed ladies who develope heart problems (Ambr-S-10/13)\n<br />- Suppressed ladies who fight for their rights; libertinism (Ambr-S-10/13)\n<br /> \n<br />- Strong willed, positive personalities (MM-GL)\n<br />- Rebellious, anarchist (IE-VJ)\n<br />- Revolting against whatever is told (IE-VJ). Contrary, dispositoin to contradict (Ambr-S-10/13)\n<br />- Rebels against poultice ( rebels against things that would be good for him. Poultice gives a soothing effect, but Merc does not like this, neither physically nor mentally) (Ambr-S-10/13)\n<br />- Swimming against the current, going against the tide (MM-GL)\n<br />- Injustice cannot take (MM-GL)\n<br />- Quarrelsome and argumentative (Kalis)(Ambr-S-10/13)\n<br /> \n<br />- Hurry, hasty, impatiance (IE-VJ). Quick acting (MM-GL)\n<br />- Precocious, intelligent but not at all studious (IE-VJ)\n<br />- Non-Conscientious, Non-Diligent (MM-GL)\n<br /> \n<br />- Dictatorial, disputatious. Fights because they want their will (MM-GL)\n<br />- Striking if things happen against him (MM-GL)\n<br />- Angry and destructive (Ambr-S-10/13, p 44)\n<br />- Will make a mischiev where somebody will get hurt (DD: Tarent; Hyos = would not hurt others) \n<br />- Defiant (herausfordernd) (MM-GL, Ambr-S-10/13)\n<br /> \n<br />- Disobedient, rough behaviour (IE-VJ)\n<br />- Indifference to reprimands (MM-GL)\n<br />- Malicious, mischievous (MM-GL)\n<br />- Devil character, take risks to make a show (MM-GL)\n<br /> \n<br />- Precocity in children (MM-GL)\n<br />- Likes dancing, dances difficult and vehement (MM-GL)\n<br />- CHAOTIC (syp) (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
490	28	19	<p>- Restless, hyperactive and children who do not sit in one place (MM-GL)\n<br />  -&gt; but does not hurt himself, very cautious, because they are precocious and intelligent (not like Tarent, Syp, Mosch) (Ambr-S-10/13)\n<br />  -&gt; if they fall down, the injury can be severe; more often they fall on the forehead (Ambr-S-10/13)\n<br />- As small child they appear very obedient (Ambr-S-10/13)\n<br />- Refuses mother milk (though they love other milk) (Ambr-S-10/13)\n<br />- Does not accept orders (Ambr-S-10/13)\n<br />- Likes to be free, does not like to be hold (Ambr-S-10/13)\n<br />- Likes freedom (Ambr)\n<br />- Hit back to parents with hands when forced to drink or dress against will (Ambr-S-10/13)\n<br />- Are independent starting from day 1 (wants to do everything themselves) (Ambr-S-10/13)\n<br />- Very competitive (Ambr-S-10/13)\n<br />- Say always NO to everything (Ambr-S-10/13)\n<br />- Precocity, mature early in life (MM-GL) -&gt; NEVER TAKE AS ENTRY POINT OR PRESCRIBING POINT! (by merc it is a defence mechanism in childhood!)\n<br />- Become sad during illness, because they can not move or do what they want (Ambr-S-10/13)\n<br />- Show defiant finger at parents (pointing finger like a dictator)\n<br />- Strong headed children, who develop nausea easily during illness (Ambr-S-10/13)\n<br /> \n<br />Ursula:\n<br />Es gibt Merc Kinder die scheu sind und wie Nat-m reinschauen.\n<br />DD: \n<br />Merc ist Eigensinnig und wenn sie was wollen, ziehen sie es durch, man bringt sie nicht weg davon\n<br />Nat-m: zieht es nicht durch</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
492	28	21	<p>- NOT REBELLIOUS in psor. Only in syc and syp (Ambr-S-10/13)\n<br />- SADNESS with....(Ambr-S-10/13)\n<br />  ... diarrhea\n<br />  ... fever, intermittent\n<br />  ... menses\n<br />  ... weakness with\n<br />  ... in sunlight\n<br />- &lt; night (Ambr-S-10/13)\n<br />- Thirst (Ambr-S-10/13)\n<br />- Restlessness (Ambr-S-10/13)\n<br />- Anxiety of losing control (Ambr)\n<br /> \n<br />BODY\n<br />- Thin (MM-GL)\n<br />- Digestive system (sudden, profuse diarrheas) (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
493	28	22	<p>- REBELLIOUS (Ambr-S-10/13)\n<br />- DISCONTENTED with surrounding, friends, family, himself (Hep, Lach, Nit-ac, Merc) (Ambr-S-10/13)\n<br />- Dictatorial, dominating, despotic, wants to control others (Merc, Lach) (Ambr-S-10/13)\n<br />- Disputatious (Ambr-S-10/13)\n<br />- Egotism, self esteem (Ambr-S-10/13)\n<br />- Libertinism (want freedom) (Ambr-S-10/13)\n<br />- Business aptitude for (Ambr-S-10/13)\n<br />- Deceitful, sly, fraudulent (Ambr-S-10/13)\n<br />- Liar (uncontrollable) (Ambr-S-10/13)\n<br />- Boaster, braggart (Ambr-S-10/13)\n<br />- Fear of losing self control (Ambr-S-10/13)\n<br />- Travel, desire to far away, alomst uncontrollable (because they are restless) (Ambr-S-10/13)\n<br /> \n<br />BODY\n<br />- Fat (MM-GL)\n<br /> \n<br />- Recurrent Nausea (Ambr-S-10/13)\n<br />- Cardio vascular mensenchimial lesion - enlarged heart (Ambr-S-10/13)\n<br /> \n<br />NO TUMORS can be cured by Merc!\n<br />IF TUMORS -&gt; GLANDS\n<br />Syc growth cured: cysts, ...</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
507	29	17	<p>- Introverted - Quiet, sober and graceful (IE-VJ, p 92)\n<br /> \n<br />- Sensitive to rudeness (IE-VJ)\n<br />- Very sensitive to scoulding (PV-I-01/2017)\n<br />- H/O domination (IE-VJ)\n<br />- Suppressed by dominating parents: adapts and moulds itself -&gt; Sep. complains about situation (MM-GL)\n<br />- Soberness, is out of being moulded (geformt) into a sober person by someone or guarded circumstances (IE-VJ)\n<br />- Carc. reaction to rudeness, means reaction in psoric condition. It moulds itself, changes itself and never complains about the domination. They will never complain about their situation. You need to investigate very carefully, how his parents manufactured this child (MM-GL)\n<br />- Does not like consolation (IE-VJ)\n<br /> \n<br />- Anticipation (psor) (MM-GL)\n<br /> \n<br />- Loves nature, pets (IE-VJ)\n<br />- Loves small gifts, show pieces (IE-VJ)\n<br />- Loves soft toys (IE-VJ)\n<br />  -&gt; because they are sentisitive to rudness and they don't want to get hurt (IE-VJ)\n<br /> \n<br />- Artistic (IE-VJ), beatuy, creative art (syc) (MM-GL)\n<br />- Creative art (intro) or performing art (extro) -&gt; carc can have both - children who are under a lot of domination end up into art (DD: Sep, Carbon, Magnesia -&gt; only creative art) (Ambr-S-10/13)\n<br />- Fastidious (syc) (MM-GL)</p>\n\n<p> \n<br />- Indifference to loved one (IE-VJ, p 97)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
538	31	11	<p>1. AFFECTION OF NERVES (IE-VJ)\n<br />2. RESTLESS OF LEGS (IE-VJ)\n<br />3. METALLIC POSITIVITY (LEFT SIDED) (IE-VJ)\n<br />4. MIND SYMPT alternates WITH OTHER MIND SYMPT OR PHYSICAL SYMPT. (Ambr)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
540	31	16	<p>NUX-V (body) + BARYTA (mind)\n<br />Angry person like Nux-v and dull intellect as Bar (Ambr)\n<br />- It is a metal but not as strong as Ferr or Cupr (IE-VJ)\n<br />- Sensitive to high potencies (Ambr)\n<br />- It is chemically similar to magnesium (Ambr)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
769	47	17	<p>- Extroverted - Loud talker (IE-VJ, p 21)\n<br /> \n<br />- Exited talk, no sweetness, the voice is cracked and harsh (IE-VJ)\n<br />- They laugh abnormally loud, can not control it (IE-VJ)\n<br />  -&gt; a normal asked question will draw such a loud, funny, laughing response that we g     et embarrassed (IE-VJ)\n<br />- Hysterical (MM-VJ) and angry (MM-GL)\n<br />- Full of power and energy (a motor boat full of energy but no rudder to control directions) (IE-VJ)\n<br />- Little excitement and the pich and tone of the voice becomes loud (IE-VJ)\n<br />- The response to every stimulus is out of proportion (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
2025	48	7	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2031	48	25	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
2037	49	19	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
541	31	17	<p>- No show off, simple people (Ambr)\n<br />- Content (MM-GL)\n<br /> \n<br />- Timid, very sensitive (left sided) (IE-VJ)\n<br />- Horrible stories affect profoundly (Ambr)\n<br />- Heimweh (Ambr)\n<br /> \n<br />- Achiever, silent performer (I-2015-Viji-Zinc-p)\n<br />- Performer like Nux-v (Ambr-S-11/2015)\n<br />- Zinc comes secont but tries to compete (I-2015-Viji-Zinc-p)\n<br />- Wants to perform physically (Ambr)\n<br />- Loves to compete but is not manipulative (Ambr)\n<br /> \n<br />- Irritability alternates with restlessness (IE-VJ)\n<br />- Lot of irritability (IE-VJ)\n<br />- Mag keine Kritik (Ambr)\n<br /> \n<br />- Answers slowly (MM-GL)\n<br />- Patient repeats sentence said to him (IE-VJ)\n<br /> \n<br />- Changeable mood (IE-VJ)</p>\n\n<p>- Patient is very restless, legs move constantly (IE-VJ)\n<br />- Very hurried in eating (IE-VJ)\n<br /> \n<br />- Does not like comparison with siblings (I-2015-Viji-Zinc-p)\n<br /> \n<br />- Religious (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:19
592	35	4	<p>Chilly (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
593	35	5	<p>Thirst (extreme) (MM-GL). </p>\n\n<p>Thirstless but thirsty in the evening (IE-VJ, p81)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
599	35	11	<p>1. MILD, YEALDING, YET OBSTINATE (IE-VJ)\n<br />2. ANTICIPATORY ANXIETY (IE-VJ)\n<br />3. DESIRE TO STUDY, WORK DESPITE ILLNESS (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
600	35	12	<p>- Anticipatory anxiety is when appearing in public, but not anxious in acute illness (IE-VJ)/ (NI-2014)\n<br />- Sensitive (IE-VJ)\n<br />- Red bloated face (IE-VJ)\n<br />- Heat in head with coldness of palms and soles (thought chilly) (IE-VJ)\n<br />- Desires raw vegetables (IE-VJ)\n<br />- Aversion cooked food and milk (IE-VJ)\n<br />- Soberness out of humility (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
604	35	17	<p>- Introverted - Haughty (IE-VJ, p 90)\n<br />- Introverted - Quiet, sober and graceful (IE-VJ, p 92)\n<br /> \n<br />- Introverted (IE-VJ)\n<br />- Timid, weak-willed (MM-GL)/(NI-2014)\n<br />- Mild, yealding yet obstinate (IE-VJ)/(NI-2014)\n<br />- Nice, quiet (MM-GL)\n<br />- Graceful (MM-GL)\n<br />- Soberness out of humility (IE-VJ)\n<br />- Spineless, physically and mentally (MM-GL)\n<br /> \n<br />- Good boys / good girl (MM-GL)\n<br />- Very serious, conscientious (MM-GL)\n<br />- Studious and obedient (MM-GL)\n<br />- Desire to study, work despite illness (IE-VJ)\n<br />- Desires appreciation for work (MM-GL) (Arg-n, Mang. Stann, Sulph)\n<br />- Intelligent (MM-GL)\n<br />- Anticipatory anxiety when appearing in public, but not anxious in acute illness (IE-VJ)\n<br />- Remedy for public nervousness (MM-GL)\n<br /> \n<br />- Esteem (MM-GL)\n<br />- Full of respect: wants respect and gives respect (MM-GL)\n<br />- Wants to be accepted from people, at the same time there is ego (MM-GL)\n<br />- Can be quarrelsome, but out of principle (PV-S_11/10, p24)\n<br /> \n<br />- Does not like consolation (IE-VJ)\n<br />- Sensitive (IE-VJ)\n<br />- Some are effeminate (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
624	36	17	<p>- Introverted - Timid (IE-VJ)\n<br />- Introverted - Sarcastic (IE-VJ, p 87)\n<br />- Introverted - Quiet, sober and graceful (IE-VJ, p 92)\n<br />- Introverted - sad and melancholic  (IE-VJ, p 95)\n<br />- quiet, well-braved good girl (PV-S-10/14)\n<br /> \n<br />- Strong + Sensitive (MM-GL)\n<br /> \n<br />- Wants to be best in class (Simon)\n<br />- Child makes homework on its own, they want to best in class, if not, become sick (MM-GL)\n<br />- A/F loss of position (work, relationship, school...) (IE-VJ)\n<br />- Hurt -&gt; brooding + hysteria (Ambr 2013)\n<br />- Conscientious -&gt; will not skip work. First duty then myself (MM-GL)\n<br />- Studious (IE-VJ)\n<br />- Diligent  (GL-Z)\n<br /> \n<br />- Looking aristocratic (Marc)\n<br />- Sits without support (erect) (IE-VJ)\n<br />- Soberness out of diligence / esteem (IE-VJ)\n<br /> \n<br />&lt; Contardiction (IE-VJ)\n<br />&lt; Hates Consolation (IE-VJ)\n<br /> \n<br />- Strong (PV-I-S-01/15, p32)\n<br />- Nicht nachgiebig (Simon)\n<br /> \n<br />- Appear affectionate, caring (Liebevoll) but important is Esteem (P-S-11/10, p29)\n<br />- Emotionally vulnerable (IE-VJ, p81)\n<br />- Sensitive, sentimental (MM-GL)\n<br />- Emotional (IE-VJ)\n<br />- Sad, brooding, easiliy offended (MM-GL)\n<br />- Mocking (IE-VJ, p86)\n<br />- Angry (IE-VJ)\n<br />- Anxiety comes suddenly at night between 2 and 5 am (IE-VJ)\n<br /> \n<br />Notes S. Wegmüller (MM-GL):\n<br />Ignatia in Sycosis don’t express will and keep suffering and suppressed in Sycosis\n<br />In syphilitic Ignatia is hysterical were controls are lost (in MM this picture is given). Children who are born with laryngious stridor → think of Ign. as the syphilitic spasm gives rise to stridor → then we need to search the Psora which has started in the womb; by starting psoric complaints in the mother like U.T.I or any other psoric physical complaints which are treated with AB → when the child is born with some syphilitic spasmodic complaints like laryngeal stridor or acute dysentery (bloody) or convulsions, one should think of Ign.; child should be lean, thin, active, do not like to be carried (except  by mother), chilly, watchful, touch me not, they don’t like to be consoled which causes further weeping, 2-3month old infants will be attracted be books, pens, newspaper and magazines; Ign. is a independent child\n<br />Ign. is delicate\n<br />Ign. doesn’t support injustice but will not seek consolation, attention</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
661	38	13	<p>PRAFUL VIJAYAKAR:\n<br />- Cardio-vascular system (PV-I-01/15)\n<br />- Physiology sphere, goes into congestion, artherial problems, no destruction e.g. of pigment (TAN-I-01/2017)\n<br /> \n<br />- Never nervous system (PV-I-01/15, p11)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
664	38	17	<p>- Extroverted - Loud talker (IE-VJ, p 21)\n<br />- Extroverted - Sweet talkers (IE-VJ, p 21)\n<br /> \n<br />- Suddenness. Quick. Fast remedy (MM-GL)\n<br /> \n<br />- Extroverted when well / introverted when ill (IE-VJ)\n<br />- Angels when well, devils when sick (MM-GL)\n<br />- Violence. Loud voice (MM-GL)\n<br /> \n<br />- Affectionate and loving (IE-VJ)\n<br />- Flirtuous and coquette (IE-VJ)\n<br />- Lot of power (IE-VJ)\n<br /> \n<br />- Ready to take risk, to give a show (MM-GL)\n<br />- Likes dancing, difficult, vehement dances (MM-GL)\n<br />&lt; jarring (MM-GL)\n<br />- pleasant fancies (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
667	38	20	<p>Psora: %Stram               % Bell                % Hyos\n<br />        Fearful               Affectionate         Naughty\n<br />        Timid                 Angry                Sharp brained\n<br />        Angry                                      Prankster</p>\n\n<p>Bell % Sulph: redness face alters with emotions, vascular redness due to congestion % redness face always there, not dependent from emotions -&gt; redness ist superficial, hast to do with the skin</p>\n\n<p>Bell % Cina: redness face alters with emotions, vascular redness due to congestion % redness only around orifice, mouth, nosetrails, eyes</p>\n\n<p>Bell % Cham: redness face alters with emotions, vascular redness due to congestion / Extroverted when well / Introverted when ill / Angry % at the cheeks and ears/ Angry / Introverted</p>	2020-02-26 19:13:47	2020-03-09 10:15:20
2044	49	25	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2050	50	19	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2056	50	9	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2063	51	22	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2069	51	11	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2075	51	25	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2082	52	19	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2088	52	9	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2094	53	23	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
685	39	17	<p>- Extroverted - Loud talker (IE-VJ, p 21)\n<br />- Introverted - Timid (IE-VJ, p 82)??\n<br /> \n<br />- Timid (IE-VJ)\n<br /> \n<br />- FEARFULL, PANIK (IE-VJ)\n<br />- Fearfull and timid, wants to escape (Ambr-S-10/13)\n<br />- wild fear, panicky, frightfully (PV-S-10/14)\n<br />- Easily frightened to panicky (IE-VJ)\n<br />  -&gt; Darkness they can not bear (IE-VJ)\n<br />- cannot bear tunnels (PV-S-10/14)\n<br />  -&gt; Fear of narrow places (IE-VJ), closed places (IE-VJ, p 82)\n<br />- cannot bear light (PV-S-10/14)\n<br />- Sudden switch off of lights can throw them into panic (IE-VJ)\n<br />- Hysterical (Hot&amp;Thirsty Pred Notiz)\n<br /> \n<br />- Angry (IE-VJ, p82)\n<br />- Full of life (IE-VJ)\n<br />- Jesting (IE-VJ, p82)\n<br />- Loquatious (Hyos) (IE-VJ)\n<br />- Makes jokes (Bell, Hyos) (IE-VJ)\n<br />- Direct remedy, not so diplomatic and manipulative (as snakes) (A-S-10/13)\n<br /> \n<br />- Diligent (GL-Z)\n<br />- Makes poems and verses (IE-VJ)\n<br />- Exaggerates everything (MM-GL)\n<br />- Speaking in a foreign language (MM-GL)\n<br /> \n<br />- Silly, foolish (MM-GL)\n<br />- Mischievous (MM-GL)\n<br />- Immoral (MM-GL)\n<br />- Clinging (MM-GL)\n<br />- CLINGS to mother for support in panic (PV-S-10/14)\n<br /> \n<br />- Likes dancing, dances vehement, difficult (MM-GL)</p>\n\n<p> \n<br />- pleasant fancies (PV-S-10/14)\n<br />- desire to learn (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
693	40	3	<p>Hasty, very fast  (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
695	40	5	<p>NOT thirsty (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
700	40	11	<p>1. HASTY, HURRIED (IE-VJ, p 54)\n<br />2. WALKS FAST, EATS FAST, TALKS FAST (IE-VJ, p 54)\n<br />3. CHANGEABLE SYMPTOMS (IE-VJ, p 54)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
703	40	17	<p>- Is diligent (PV-I-01/2017)\n<br /> \n<br />- Sluggishly active. Hurry in mind, not in body (Cham.) (MM-GL)\n<br />- Impatience in everything (MM-GL)\n<br />- Makes too many things, but completes them. Achievers (TAN-I-01/2017)\n<br /> \n<br />- In extremely hurried people first think of Sul-ac or Tarent (MM-GL)\n<br /> \n<br />- Symptoms change like Puls (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
718	41	20	<p>Impulsive Hep (MM-GL):\n<br />% Cham: is not impulsive, is impatient.\n<br />% Nux-v: is not impulsive, is very much in control of the situation.\n<br />% Coloc: is not impulsive, just angry.</p>\n\n<p>DD Hep % Cham (MM-GL):</p>\n\n<p>= Angry\n<br />= sensitive to noise, people, pain\n<br />= impatient \n<br />= chilly, Thirsty</p>\n\n<p>% Cham = Selfisch, heartless person (does not care for others), quarrel, make live of others miserable\n<br />% Hep = is impulsive! is sensitive, more emotional and has some heart within her. Though she is angry and impulsive, there is some softness inside so that she can adjust and care for others feelings. This sensitivity is making her weep for others; horrible things affect her because there is care for others. She would not make others life miserable.</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
732	43	17	<p>- Introverted - due to over sensitiveness (IE-VJ)\n<br />- Introverted - AWOTA (angry when obliged to answer) (IE-VJ, p 85)\n<br />- Introverted - sad and melancholic (IE-VJ, p 95)\n<br /> \n<br />- Silent, quiet (IE-VJ), reserved (Ambr-S-10/13)\n<br />- Serious and responsible type (Ambr-S-10/13)\n<br />- Very graceful, very aristocratic (MM-GL)\n<br />- Mildness / Anger (MM-GL)\n<br /> \n<br />- OVERSENSITIVE TYPE, horrible stories affect (TV, etc.) (Ambr-S-10/13)\n<br />- Sensitive to rudeness as well criticism (IE-VJ)\n<br />- When hurt they chastise themselves, withdraw inside and cannot forget the "hurt" (IE-VJ)\n<br />- They have become so sensitive and emotional through hurt and criticism - they won't be hut again and give love only to animals (dogs), artistic, painting, sketching. The internal energy has to be expressed, creativity is psor (Ambr-S-10/13)\n<br /> \n<br />- Painting art (intro) - children who are under a lot of domination end up into art (DD: Sep, Carbon, Magnesia, Carc) (Ambr-S-10/13)\n<br />- Nat-m is so sensitive inside, that it needs to have soothing colors for clothes and art / DD: carbons sketch with pencil, only in black and white) (Ambr-S-10/13)\n<br /> \n<br />- "One to one" relationships (IE-VJ)\n<br />- One trusted relation (mother, best friend, animal) (Ambr-S-10/13)\n<br />- Love for animals (Ambr-S-10/13)\n<br />- If there is no possibility for a one-to-one relation Nat-m likes to have soft pets (Ambr-S-10/13)\n<br />- Aloof (distanziert), loner type (IE-VJ), friendless (Ambr-S-10/13)\n<br /> \n<br />- Sentimental, emotional (MM-GL)\n<br />- Homesickness (III)(Ambr-S-10/13)\n<br /> \n<br />- Weep only when alone (IE-VJ)\n<br />&lt; CONSOLATION and pity (IE-VJ)\n<br />- Do not ask for help. Don't like someones help out of pity (IE-VJ)\n<br />- Do not expect or appreciate sympathy from outside people (IE-VJ)\n<br /> \n<br />- Is self sufficient, not insecure!!! (PV-I-28.01.17)\n<br />- Sad, reserved (MM-GL)\n<br />- Sad, melancholic, SULKY type (Ambr-S-10/13)\n<br />- Aversion to guests (IE-VJ)\n<br />- Anger when obliged to answer (Nux-v)(IE-VJ)\n<br /> \n<br />- Indifference to: (Ambr-S-10/13)\n<br />  pleasure\n<br />  joy\n<br />  duties\n<br />  to others\n<br /> \n<br />- Fastidious (MM-GL)\n<br />- Charitable, with the expectation of recompense (Calc, Lyc, Nat-m, Sulph) (MM-GL)\n<br /> \n<br />- Likes dancing (MM-GL)\n<br />- Can be sporty and restless (Ambr-02/2016, Case Asthma)\n<br />- Mannish habits, not feminine (Ambr-S-10/13)\n<br /> \n<br /> \n<br /> \n<br />ANGRY-INTROVERTED TYPE (Ambr-S-10/13)\n<br />- Hatred, malicious, spiteful, vindictive, refengful (appear like Nit-ac, Merc) (Ambr-S-10/13)\n<br />- Angry when obliged to answer (Nux-v) (Ambr-S-10/13)\n<br />- Insolent, impertinent (Verat) (Ambr-S-10/13)\n<br />- Harsh and rough (Nux-v) (Ambr-S-10/13)\n<br />- The anger is not to hurt somebody; it is only a REACTION to the situation (Ambr-S-10/13)\n<br />- After they say sorry for beeing rude (typically Nat-m) (Ambr-S-10/13)\n<br />- They can cut-off relationships like Verat (Ambr-S-10/13) (Thuj, Plat (Clelia))</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
734	43	20	<p>Con % Nat-m (MM-GL):\n<br />QUARREL: quarrelsome  / does not quarrel\n<br />WEEPING: can weep in front of others / can not weep in front of others\n<br /> \n<br />DD Magn - Nat (Ambr)\n<br />- sensitivness: rudeness / rudeness + criticism\n<br />- Reaction: indifferende, indolance, content / brooding\n<br />- Pathology: have other sphere of action on pathology part\n<br /> \n<br />DD Nat-m - Ign (PV-S-11/10)\n<br />is more sentimental / lot of esteem, A/F contradiction, loss of position...</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
744	45	12	<p>- Easily angered, violent anger, sarcastic, rude and uncivilized behaviour (IE-VJ)\n<br />- Anger causes redness of face\n<br />- Pain causes anger and impatience (IE-VJ)\n<br />- Hates music (IE-VJ)\n<br />- Redness of earlobes and lower eyelid margin are characteristic of Cham. One cheek red and other pale is also characteristic of Cham (IE-VJ)\n<br />- Children want to be carried and in adults they want continuos help (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
760	46	17	<p>- Extroverted - Self praisers (IE-VJ, p 21)\n<br /> \n<br />- Anticipatory (IE-VJ)\n<br />- Nervous (MM-VJ), impatient, hasty, urgency (MM-GL)\n<br />- Hurry -&gt; cannot do things fast enough, does everything in a hurry (eating, talking, and walking) (MM-GL)\n<br /> \n<br />- Forceful (IE-VJ)\n<br />- Impulsive (IE-VJ)\n<br /> \n<br />- Show-off - always trying to prove that he is something (MM-GL)\n<br />  -&gt; Have fear of being damned. Feel that a person of their calibre is not being recognized at all and therefore\n<br />tell the world how good they are. (IE-VJ)\n<br />  -&gt; Always tries to show that I am great, I am shining (IE-VJ)\n<br />  -&gt; I can be useful in many things (IE-VJ)\n<br />- It is very close to Aur. It feels left out because Aur and Plat get maximum credit as heavy metals and silver doe not.\n<br />- Plat is convinced that she is great, does not care for anyone's opinion about it (IE-VJ)\n<br />- When they loose their position because of pension they become sick  (MM-GL)\n<br />- Desires appreciation for work (MM-GL) (Mang, Sil, Stann, Sulph)\n<br /> \n<br />- Apprehension (Besorgnis)(MM-GL)\n<br />- Mind is in tomorrow, body is in today (MM-GL)\n<br /> \n<br />- Stubborn, Obstinate, contrary (MM-GL)\n<br />- Creative because they like praise (Pall.)  (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
768	47	16	<p>Moschus ist ein Sekret von den Moschushirschen.\n<br />Gehört zur Ordnung der Paarhufer (Artiodactyla), Vorkommen in China, Tibet und Sibirien.</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
2101	53	25	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2107	54	19	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2113	54	26	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2120	55	7	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
2126	55	27	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:31
790	49	17	<p>- Introverted - due to over sensitiveness (IE-VJ)\n<br />- Introverted - Quiet, sober and graceful (IE-VJ, p 92)\n<br /> \n<br />- Timid, bashful (Ambr-S-10/13)\n<br />- Dignified (IE-VJ)\n<br />- Aloof (distanziert), loner (IE-VJ)\n<br />- Reserved, but strong fighter in grave situation (Ambr-S-10/13)\n<br />- "One to one" relationships (IE-VJ)\n<br />- Misantropy yet dread to be alone (Ambr-S-10/13)\n<br /> \n<br />- Conscientious (IE-VJ)\n<br />- Duty consciuous, industrious (IE-VJ)\n<br />- Discouraged easily (MM-GL)\n<br />- Intolerance to contradiction (IE-VJ)\n<br /> \n<br />- Dullness of brain &lt;&lt; by mental exertion (IE-VJ)\n<br />- Religious (MM-GL)\n<br />- Inaptitude for mathematics (MM-GL)\n<br /> \n<br />- Over sensitiveness (IE-VJ), affected by small things (Ambr-S-10/13)\n<br />- But when it comes to a major problem they can handle the situation very well (Ambr-S-10/13)\n<br />- Sensitive to rudeness as well criticism (IE-VJ)\n<br />&lt; consolation and pity (IE-VJ)\n<br />- When hurt they chastise themselves, withdraw inside and cannot forget the "hurt" (IE-VJ)\n<br />- Weep only when alone (IE-VJ)\n<br />- Do not ask for help. Don't like someones help out of pity (IE-VJ)\n<br />- Do not expect or appreciate sympathy from outside people (IE-VJ)\n<br />&lt; sad music (Ambr-S-10/13)\n<br /> \n<br />- Anger when obliged to answer (IE-VJ)</p>\n\n<p>- Abneigung gegen gewisse Personen (PV-I-01/2017)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
809	51	14	<p>Similar to Elaps (PV-I-01/17)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
810	51	17	<p>- Snake characteristics with clairvoyance (like Lach) (IE-VJ)\n<br />- Fancies exaltation (IE-VJ)\n<br />- Involuntary moaning (IE-VJ)\n<br />- People who see ghosts, spirits or hear them (IE-VJ), or dreams them (god, saints, important person, people you honour) (PV-I-01/17)\n<br />- Spiritual (IE-VJ)\n<br />- Extra senses or perceptions (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
818	52	13	<p>PRAFULL VIJAYAKAR:\n<br />- Nervous system (Parkinson, MS)/ especially cerebellum and balances system involved (IE-VJ, PV-I-01/15)\n<br />- Autoimmune diseases like MS (self depreciation)  (MM-GL)\n<br />- Breast cancer (MM-GL)\n<br />- Heart (Ambr-S-10/13)\n<br /> \n<br />BOGER (BO-SK):\n<br />- Kleinhirn. Medulla\n<br />- NERVEN: HERZ (Mitralklappe). ATMUNG. HALS\n<br />- LINKS -&gt; OVAR, SCHLÄFE, ARM</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
821	52	17	<p>- Timid  (MM-GL)\n<br />  -&gt; It is a cobra, sometimes proud, sometimes timid  (MM-GL)\n<br /> \n<br />- Sad (IE-VJ)\n<br /> \n<br />- Anxious (IE-VJ)\n<br />- Anxiety of conscience (IE-VJ), because of timidity. Fear of failure - self-depreciation (Ambr-S-10/13)\n<br />- Every thing seems wrong  (MM-GL)\n<br />- Delusion he has neglected his duty  (MM-GL)\n<br /> \n<br />- Feels neglected but does not talk to anyone, only broods (IE-VJ)\n<br />- Feels failure, wronged, neglected (IE-VJ)\n<br />- Feels everybody is against him  (MM-GL)\n<br /> \n<br />- Self-deception  (MM-GL)\n<br />- Thinks it is his fault  (MM-GL)\n<br /> \n<br />- Active, activity desire for and fast (MM-GL)\n<br />- Quiet disposition (2nd extroverted), aversion to answer  (MM-GL)\n<br />- Secretive (MM-GL)\n<br />- Censorious, critical (MM-GL), sarcastic (Ambr-S-10/13)\n<br /> \n<br />- Weak mind  (MM-GL). Exerction incapacity for, the more he works whith his mind, the more headache he gets (Kali-p) (Ambr-S-10/13)\n<br /> \n<br />- Graceful (MM-GL)\n<br /> \n<br />- Hight morals (Ambr-S-10/13)\n<br />- Sincere (PV-S-10/14)\n<br /> \n<br />- A/F anticipation (Ambr-S-10/13)\n<br /> \n<br />- Want of confidence (Ambr-S-10/13)\n<br /> \n<br />- Good in mathematics (Ambr-S-10/13)\n<br /> \n<br />- No leadership qualities; more followers (Ambr-S-10/13)\n<br /> \n<br />- Psoric hurt can lead to depression (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:21
846	54	17	<p>- Almost all qualities of Lach (MM-GL)\n<br />- Lot of domination (Ambr-S-10/13)\n<br />- No interest in household work, neglects domestic duties (MM-VJ)\n<br />- Aversion to domestic duties (MM-GL); but like to bake cookies or delicate food (Ambr-S-10/13)\n<br />- Sexually oriented, dreams of sex and being raped (MM-GL)\n<br />- Ladies who wear indecent dresses that expose shamelessly in name of fashion (MM-VJ)\n<br />- Nymphomania (Ambr-S-10/13)\n<br />- Very selfish, very self-centered (MM-VJ)\n<br />- Libertis, like to go against existing social norms, like wearing clothes that are more exposing (MM-GL)\n<br />- Mannish looks (Ambr-S-10/13)\n<br />- Curly hair (MM-GL)\n<br />- Love dancing (MM-GL)\n<br />- dreams about snakes in pregnancy (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
858	55	17	<p>- Introverted - Haughty (IE-VJ, p 90)\n<br /> \n<br />- Conscientious and diligent (IE-VJ)\n<br /> \n<br />- Too dignified to fight (MM-VJ). Suppressed, mortified (MM-GL)\n<br />- Sensitive to criticism and rudeness (IE-VJ)\n<br /> \n<br />- Angry but cannot express it at work or any senior people.\n<br />  -&gt; As a result they come home and hence express it on inanimate objects (IE-VJ)\n<br /> \n<br />- Egotism, sensitive to what people will say about him (Stann) (IE-VJ)\n<br />- Wants people to have good opinion about them (IE-VJ)\n<br />- Self praisers (IE-VJ)\n<br />- Talks about themselves in company (IE-VJ)\n<br /> \n<br />EXAMPLE (MM-GL):\n<br />A Staph. woman in Psora is lean and thin, sensitive, then, as she comes into the house as a daughter in law, she is constantly criticized by the mother in law. She feels hurt, mortified. She suppresses all the anger, then she gets used to that, becoming sycotic. Then finally if she goes into syphilitic. Fear of losing the control.</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
2132	56	13	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2137	56	25	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2138	56	1	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2145	57	20	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2151	58	21	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2157	58	14	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
913	59	17	<p>- Introverted - due to over sensitiveness (IE-VJ)\n<br /> \n<br />- Conscientious (IE-VJ)\n<br />- Duty conscientious (IE-VJ)\n<br />- Sad, melancholic (IE-VJ)\n<br />- Fastidious (IE-VJ)\n<br />- Motherly (IE-VJ)\n<br />- Over sensitivness (IE-VJ)\n<br />- Sensitive to rudeness as well criticism (IE-VJ)\n<br />- Angry and irritable because of sensitivity (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
922	60	12	<p>- Sentimental (IE-VJ) -&gt; in love, wishing a partner (Farr, p55)\n<br />- Sulky (mürrisch), bad mood, irritable especially when looked at (IE-VJ)\n<br />- Make sad verses especially at night or in moonlight (IE-VJ)\n<br /> \n<br />- Sun agg (IE-VJ)\n<br />- Complain of gastric disturbs (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
926	60	17	<p>- Introverted - sad and melancholic  (IE-VJ, p 95)\n<br /> \n<br />- Sentimental (IE-VJ) &amp; romantic (not sad) (MM-GL)\n<br />  -&gt; she will store even the small gifts given by her childhood friends or preserve old greeting cards or preserve even a red ribbon that       was tied to a small gift that she received in her childhood. Their sentiments are attached to all of these things (IE-VJ)\n<br />  -&gt; in love, wishing a partner (Farr, p55)\n<br />- Romantic in the moon light (MM-GL)\n<br />- Sensitive, emotional (MM-GL)\n<br /> \n<br />- Looked at can not bear to be (MM-GL)\n<br />- Sulky (mürrisch), bad mood, irritable especially when looked at (IE-VJ)\n<br />- Misantrophy (MM-GL)\n<br /> \n<br />- Make sad verses especially at night or in moonlight (IE-VJ), about love, never about death (MM-GL)\n<br />- Low intelligence (MM-GL)\n<br /> \n<br />- Brooding (MM-GL)\n<br /> \n<br />- Aversion to company (MM-GL)\n<br />- Aversion to answer (MM-GL)\n<br />- Don't touch me, aversion to be looked at (Ambr-S-11/2015, p 32)\n<br /> \n<br />&lt; consolation (IE-VJ, p 95)</p>	2020-02-26 19:13:47	2020-03-09 10:15:22
953	63	17	<p>- Extroverted - Sweet talkers (IE-VJ, p 21)\n<br />- Extroverted - Self praisers (IE-VJ, p 21)\n<br /> \n<br />- Ladies who are good looking, pleasant looking with pleasant behavior (IE-VJ)\n<br />- Looks like Phos (IE-VJ)\n<br />- Sweet and charming people (IE-VJ)\n<br />- Want appreciation for their looks and appearance (IE-VJ)\n<br />- Looks like a princess, wants to be considered as a princess and projects herself like a princess (IE-VJ)\n<br />- Metal qualities (IE-VJ)\n<br />- More Positive than Phos (metal) (IE-VJ)\n<br />- Ego like Plat but softer. She will never break relations with people (IE-VJ)\n<br />- She will never look down on other people but she wants others to look up to her (IE-VJ)\n<br />- Can NOT tolerate neglecting, criticizing or not praising them (IE-VJ)\n<br />- Sensitive to rudeness, insults or neglect (IE-VJ)\n<br />- Jealousy if another lady looks better or sports better jewelry (IE-VJ)\n<br />- Does not like consolation or sympathy (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
965	64	17	<p>- Extroverted - Self praisers (IE-VJ, p 21)\n<br />- Introverted - Haughty (IE-VJ, p 90)\n<br /> \n<br />- Weak metal -&gt; timid and coward (IE-VJ)\n<br />- Ego despite the weak will (IE-VJ)\n<br />- Positive (being a metal) (IE-VJ)\n<br />- Not haughty, down-to-earth -&gt; mixing with everybody (like sulph) (MM-GL)\n<br /> \n<br />- Very insecure (IE-VJ)\n<br />- Insecure about future especially financially ailments from financial loss (IE-VJ)\n<br /> \n<br />- Anxious people who are passionate to reach the top (IE-VJ)\n<br />- They talk about themselves in company, to project themselves as good, efficient and successful (IE-VJ)\n<br />- Desires appreciation for work (MM-GL) (Arg-n, Mang, Sil, Sulph)\n<br />- Wants to perform; wants to do everything perfect (MM-GL)\n<br />- Concerned and afraid of what people will say about them. Are very sensitive to what people have to say about them (IE-VJ)\n<br />- Smallest criticism give rise to anger (MM-GL)\n<br /> \n<br />- Creative metal (but not artistic, because it's a structure-type) (MM-GL)\n<br /> \n<br />- Jesting people (IE-VJ)\n<br />- Mocking or sarcastic (IE-VJ)\n<br />- Suspicious and irresolute as Puls, but consolation agg (IE-VJ)\n<br /> \n<br />- Consolation agg. (because of ego) (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
984	66	12	<p>- Like a chocolate: these people are a bitter-sweet mixture like a politician (IE-VJ)\n<br />- Sweet in looks, sweet to talk, sweet in nature, they are cheerful, helpful, frank and outspoken (IE-VJ)\n<br />- Positive, patient, optimistic, political (IE-VJ)\n<br />- Love animals, especially dogs and cats (IE-VJ)\n<br />- Very sweet and affectionate, trying to appear to be mild (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
986	66	17	<p>- Extroverted - Sweet talkers (IE-VJ, p 21)\n<br /> \n<br />- Smile is charming and pleasant (IE-VJ)\n<br />- Affectionate, very nice to talk to, sweet speech (MM-GL)\n<br />- Timid (IE-VJ)\n<br />- Positive (IE-VJ)\n<br />- Optimistic\n<br />- They are patient, contented to the extent that they never complain or hurt you (IE-VJ)\n<br />- Communicative expensive. When they talk they go on an can not stop talking (IE-VJ)\n<br />- Egoistic (MM-GL)\n<br />- Very political and diplomatic (IE-VJ) -&gt; because want to please everybody (IE-VJ, p 59)\n<br />- Manipulative (MM-GL). In return for her good deeds wants gifts... Takes advantage of this and gets her demands fulfilled (IE-VJ)\n<br />- Tells the plain truth. She frankly tells what she thinks about other persons without any inhibition (IE-VJ)\n<br />- Mocking out of truth (IE-VJ, p86)\n<br />- Love nature and animals (IE-VJ)\n<br />- Like dancing (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1423	131	17	<p>- When I wanted you were not here, now I don't want you (MM-GL)\n<br />- Caresses aversion to. Don't like to be hugged. (MM-GL)\n<br />- Aversion of being carried (MM-GL)\n<br />- Cranky children. Moaning (MM-GL)\n<br />- Boring with irritation - nagging (MM-GL)\n<br />- Boring in nose, in the ear and with their behavior in your head (MM-GL)\n<br />- cranky, irritating, crying constantly with red lips/mouth/nose/cheeks (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
2164	59	23	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2170	59	7	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
2176	60	21	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:31
1012	69	17	<p>- Extroverted - Sweet talkers (IE-VJ, p 21)\n<br />- Introverted - Sarcasm (IE-VJ, p 87)\n<br /> \n<br />- IMPATIENCE (IE-VJ)\n<br />  -&gt; They want everything immediately. They want to hurry and want others to be quick as them, if not, they get wild. If they ask for some      thing they want it just now (IE-VJ)\n<br /> \n<br />- Timid (MM-GL)\n<br />- They are basically timid but because of syp they do not know the consequences and hence become restless, heedless and fearless (IE-VJ)\n<br />- Heedless (MM-GL)\n<br /> \n<br />- Revolting character (MM-GL)\n<br /> \n<br />- Angry (MM-GL)\n<br />- Angry and destructive (Ambr-S-10/13, p 44)\n<br />- Destructive, immoral (MM-GL)\n<br /> \n<br />- Mocking out of mischief (IE-VJ, p86)\n<br />- Will make a mischiev where somebody will get hurt (DD: Merc; Hyos = would not hurt others) \n<br /> \n<br />- Hysterical (MM-GL)\n<br /> \n<br />- Abrupt, no smoothness, abrupt movements (MM-GL)\n<br />- Loves loud and beat music (DD: Tarent-c -&gt; Loves slow and soft music, Lach -&gt; not specific, love rhythmic music) (Ambr-S-10/2013, p47)\n<br />- Love music, love to dance (IE-VJ), dancing rough, abrupt (MM-GL)\n<br />- Love bright colors (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1038	73	17	<p>- Soft metal (Stann, Plb, Alum) (MM-GL)\n<br /> \n<br />- Mild and timid and quiet people - starts talking after questions (MM-GL)\n<br />- Slow, timid (MM-GL)\n<br />- Slow thought process (IE-VJ, p 59)\n<br />- Due to the slow thought process a confused state arises (IE-VJ)\n<br />- The slow brain can not concentrate, so it can not focus, and speech and communication is prolonged and lengthened  (IE-VJ, p 59)\n<br /> \n<br />- Can not take decisions  (IE-VJ, p 59), they have to ask others for instructions (IE-VJ, p105)\n<br />- Head on somebody else's shoulder. Alum puts the decision on s.b. else's shoulder. Confusion. (MM-GL)\n<br /> \n<br />- Mocking out of truth (IE-VJ, p86)\n<br />- Tells the plain truth because of childishness (Hyos: he is shameless, Bov: is naive) (MM-GL)\n<br /> \n<br />- Conscientious and diligent (IE-VJ)\n<br /> \n<br />- Always smiling (MM-GL)\n<br />- Malleable (MM-GL)\n<br />- Easily convinced from other peoples opinion (MM-GL)\n<br />- Looses his own balance what others think he will accept (MM-GL)?????\n<br />- Negative (MM-GL)\n<br /> \n<br />- Anxiety of conscience (MM-GL)\n<br />- A/F hurry (becomes slow and sycotic) looses elasticity (MM-GL)\n<br /> \n<br />- Timidity alternating with assurance (MM-GL)\n<br />- Courageous alternating with fear (MM-GL)\n<br />- Courageous alternating with timidity (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1067	76	17	<p>- Introverted - Quiet, sober and graceful (IE-VJ, p 92)\n<br /> \n<br />- Soft spoken (IE-VJ)\n<br />- When hurt, they become sad, melancholic but their intellect overpowers the emotions and they appear very calm, cool, contented, placid and sweet and react as if nothing has happened (IE-VJ)\n<br />- Emotional people where the intellect controls the emotions (MM-GL))\n<br />- Voices is very soft and low, but hurt and wound inside opens up when they hear very shrill, high pitched songs, music like violin, sitar (IE_VJ)\n<br />- They cannot tolerate bright, sharp hight frequency lights which are harsh (IE-VJ)\n<br />- Hysterical (MM-GL)\n<br />- Sensitive to rudeness (IE-VJ, p 92)\n<br />- Non- diligent (IE-VJ, p 92)\n<br /> \n<br />Example:\n<br />A boy 4/5 years old suffered from Diabetes and he was very much scared to take his daily injections. His father explained to him: Look you are a strong boy, this is such a small needle, how can it harm you this much. So every day he did this auto suggestion although he was afraid of taking his injection. (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:23
1094	81	17	<p>- Introverted - Timid (IE-VJ)\n<br /> \n<br />- Obsequious (unterwürfig), offers seat to others and pays excessive undue respect to others, as if he is willing to go out of the way to give you anything (IE-VJ)\n<br />- Excessive giving respect, esp. when chilly and timid (MM-GL)\n<br />- Mild (IE-VJ)\n<br />- Physical restless without mental anxiety (IE-VJ)\n<br />- Excessively restless - body (jerky) and mentally (MM-GL)\n<br />- Superstitious (IE-VJ)\n<br />- Respect giving with excessive sensitivity (IE-VJ, p 82)\n<br />- Industrious but not conscientious (MM-GL)\n<br />- Do not care about clothes, like Sulph (MM-GL)\n<br />- Superstitious (MM-GL)\n<br /> \n<br />Meek, timid, very restless but very obsequious, that means giving unnecessarily respect to other people even to younger people. Very good at heart, very giving, loving. Chilly, agg. by wet weather. Any pains worse by rest and they are best with continued motion. (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1113	83	17	<p>- Introverted - Timid (IE-VJ)\n<br /> \n<br />- Metallic positivity with timidity (IE-VJ)\n<br />- Soft metal: wants to go up; but not angry and dominating but timid and apprehensive (MM-GL)\n<br /> \n<br />- Plb has tremendous anticipation and fear, which other metals don't have (MM-GL)\n<br />- Anticipation with pain in the abdomen (IE-VJ)\n<br />- Anticipation, shows the sensitivity -&gt; soft metal (MM-GL)\n<br /> \n<br />- Very sensitive (MM-GL)\n<br />- Emotions predominated by the intellect (MM-GL)\n<br /> \n<br />- Thoughts, errors of perception (MM-GL)\n<br />&lt; Thinking of ailments (MM-GL)\n<br /> \n<br />- Overpowering sleep when working (IE-VJ)\n<br />- Excessive drowsiness while sitting at work; fall asleep (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1114	83	18	<p>- Marked leanness (IE-VJ)\n<br />- Emaciation (Abmagerung), of extensor muscle (MM-GL)\n<br />- Too lean / thin; emaciation is on stomach-side (MM-GL)\n<br /> \n<br />- Affection of nerves (IE-VJ)\n<br /> \n<br />- Constipation (Nerves, paralytic obstipation) (IE-VJ, PV-S-11/10, p 25)\n<br /> \n<br />- ABDOMEN: contraction, convulsive, spasmodic (MM-GL)\n<br />- ABDOMEN: contraction, extending to throat (MM-GL)\n<br />- Every thing that starts from umbilicus think of Plb (MM-GL)\n<br />- Umbilicus region pulled inside (MM-GL)\n<br />- Feeling as if umbelicus pulled inside (MM-GL)\n<br />- Lead poisoning (Bleivergiftung) can draw the umbilicus inward (MM-GL)\n<br /> \n<br />- Strong bones (MM-GL)\n<br />- Big boils on the back of the hand (MM-GL)\n<br />- analgesia (PV-S-10/14)\n<br />- gums purple, thin border (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1124	84	12	<p>- Thistless but loves fruit juice and refreshing things (lemonades...) (IE-VJ)\n<br />- Angry when obliged to answer (IE-VJ)\n<br />- Sad and indifferent (IE-VJ)\n<br />- Homesick (IE-VJ), joint family start breaking or disintegrating, brocken home, divorce after having kids (PV-S-10/14)\n<br />- Desire to be alone (IE-VJ)\n<br />- A/F grief, anger, mortification (IE-VJ), disappointment (MM-GL)\n<br />- Mental weakness followed by physical weakness (IE-VJ)\n<br />- Resignation (IE-VJ)\n<br />- Aversion to dry food (bread, biscuits...)(IE-VJ)\n<br />- pain of leaving the old home (nostalgic memories), give rise to many illnesses (PV-S-10/14)\n<br />- domain indicates rights: homesickness, disappointment in love, upset in business, anger and grief (property) (PV-S-10/14)\n<br />- weak mind: over use of mind/ ailment from HOMESICKNESS/ ailment from DISAPPOINTMENT IN LOVE/ bad news/ business cares/ GRIEF, SORROW, CARES/ ANTICIPATION, ANGER, MORTIFICATION/ HUMILIATION, RUDENESS of others/ MENTALWORK, OVERSTUDY, mental exertion/, FRIGHT, STAGE FRIGHT/ SHOCK/ DEATH of CHILD or LOVED ONE (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1949	40	21	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1955	40	14	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1962	41	19	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1968	41	3	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1974	43	25	<p></p>	2020-03-09 10:08:18	2020-03-09 10:15:30
1128	84	18	<p>- Desire for fruit juices and refreshing drinks (IE-VJ)\n<br />- Aversion to dry food (bread, biscuits...) (IE-VJ)\n<br /> \n<br />- weakness with irritability or sadness (PV-S-10/14)\n<br />- exhaustion and sleepiness (PV-S-10/14)\n<br />- loss of VITAL FLUIDS: excess hemorrhage, menses/ SEXUAL EXCESS, masturbation/ diarrhea, cholera, vomiting/ typhoid (before ulceration)/ injury to nerve, inflammation and pain (PV-S-10/14)\n<br /> \n<br />- pain ribs after brain fag (PV-S-10/14)\n<br />- wounds do not heal (mental and physical) (PV-S-10/14)\n<br />- phantom pains, deep breathing amel. (PV-S-10/14)\n<br />- internally feels as if there is FUR or soft cloth inside all organs (PV-S-10/14)\n<br />- upside-down: head down feet up sensation (PV-S-10/14)\n<br />- vertigo when thinking about something (reflecting) (PV-S-10/14)\n<br />- profuse urination, large quantity with back pain (PV-S-10/14)\n<br />- mouth distorted with mental stress (PV-S-10/14)\n<br />- eyes squint with mental stress (PV-S-10/14)\n<br />- every note of music hurts the patient on face (PV-S-10/14)\n<br />- heavy occiput after grief (PV-S-10/14)\n<br />- analgesia (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1145	85	17	<p>- Introverted due to timidity and anticipation (IE-VJ)\n<br />- Introverted - Sarcasm (IE-VJ, p 87)\n<br />- Introverted - Quiet, sober and graceful (IE-VJ, p 92)\n<br />- Introverted - Indifference (IE-VJ, p 97)\n<br /> \n<br />- Timidity (IE-VJ)\n<br />- Anticipation (MM-GL)\n<br /> \n<br />- SLOWNESS: slowness of activity, slowness after acute (IE-VJ)\n<br /> \n<br />- Never well since a past injury (IE-VJ)\n<br /> \n<br />- Unforunate feeling with indifference to loved once (IE-VJ)\n<br />- Affectionate (MM-GL)\n<br />- Affectionate like Phos (but Phos is fast) (Ambr-S-10/2013)\n<br />- Indifference to loved one (Sep, Hel, Plat, Gran) (IE-VJ, p 97)\n<br /> \n<br />- Offensiveness (MM-GL)\n<br />- Not angry (MM-GL)\n<br />- Sarcasm (IE-VJ)\n<br />- Money minded (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1163	86	17	<p>- Introverted due to timidity and anticipation (IE-VJ)\n<br />- Introverted - Sarcasm (IE-VJ, p 87)\n<br />- Introverted - sad and melancholic (IE-VJ)\n<br /> \n<br />- Timid, fearful, weak willed (MM-GL)\n<br />- Dull, is the brother of Carb-v (MM-GL)\n<br />- SLOWNESS: slowness of activity, slowness after acute (IE-VJ)\n<br />- Sad (IE-VJ), morose, melancholic (MM-GL)\n<br />- Weeping tendency like Puls (IE-VJ)\n<br />- Emotional (MM-GL) \n<br />- Indecisive (MM-GL)\n<br />- Changeable (Puls)(IE-VJ)\n<br />- Can study well in noisy environment (Tarent) (MM-GL)\n<br />- Trifels seem important -&gt; appear fastidious (MM-GL)\n<br />&gt; magnetism (MM-GL)\n<br />&lt; consolation (IE-VJ, p 95)\n<br />- A sensitive wife, who does not get affection and attention from her husband, who is very busy (MM-GL)\n<br />- Money minded (IE-VJ)\n<br />- Sarcasm (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1165	86	20	<p>Carbons % Calcareas (MM-GL):</p>\n\n<p>Not conscientious /  Conscentious\n<br />Unhappy, unfortunate, dejected / Insecuritiy, desire touch \n<br />Stasis, inert, torpor / Slowness\n<br />No excitement for even pleasant things / High, impressionable\n<br /> \n<br />Carb-v % Graph (MM-GL):\n<br />A/F dictatorialness and strong dominance / A/F lack of affection\n<br /> \n<br />DD Clelia:\n<br />Common to all: timid, anticipation, insecure, Slowness, money minded, sarcasm, chilly\n<br />Carb-v                     Graph                       Pet\n<br />right                    / Left                      / right\n<br />Unfortunate feeling      / Fearful, weak willed      / Mild\n<br />Affectionate, not angry  / Sad, weeping, emotional   / Quarrelsome\n<br />Oversensitive            / Changeable                / Offended easily</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1179	87	20	<p>Carbons % Calcareas (MM-GL):</p>\n\n<p>Not conscientious /  Conscentious\n<br />Unhappy, unfortunate, dejected / Insecuritiy, desire touch \n<br />Stasis, inert, torpor / Slowness\n<br />No excitement for even pleasant things / High, impressionable\n<br /> \n<br />DD Clelia:\n<br />COMMON TO ALL: timid, anticipation, insecure, Slowness, money minded, sarcasm, chilly\n<br />DIFFERENCE:  Carb-v                     Graph                       Pet\n<br />             right                    / Left                      / right\n<br />             Unfortunate feeling      / Fearful, weak willed      / Mild\n<br />             Affectionate, not angry  / Sad, weeping, emotional   / Quarrelsome\n<br />             Oversensitive            / Changeable                / Offended easily\n<br /> \n<br />Petr % Zinc: affection of parietal lobe (in syp has a state of confusion) / affection of frontal and temporal lobe (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1188	97	7	<p>- Anger, grief, mortification, humiliation (Ambr-S-10/2013)\n<br />- Rudeness, reprimands, criticism, reproaches (Ambr-S-10/2013)\n<br />- Sad stories, family affairs (Ambr-S-10/2013)\n<br />- Shock (Ambr-S-10/2013)\n<br />- Women of opposite sex (Ambr-S-10/2013)\n<br /> \n<br />- Water: touch, cloudy weather, thunderstorm (Ambr-S-10/2013)\n<br /> \n<br />- Pain (Ambr-S-10/2013)\n<br />- Noise, painful sensi. (Ambr-S-10/2013)\n<br />- Stretching of muscules, tendons, therefore keeps flexed (Ambr-S-10/2013)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1194	97	17	<p>- Introverted (IE-VJ)\n<br />- Has no daring to express himself freely (Ambr-S-10/2013)\n<br />- Timid (IE-VJ)\n<br /> \n<br />- ANGER (Ambr-S-10/2013)\n<br />- Anger does not come out of timidity (Ambr-S-10/2013)\n<br />- Irritable, angry, sensitive like Nux-v (IE-VJ)\n<br />- Frowning (IE-VJ)\n<br /> \n<br />- Serious, never smiling (MM-GL)\n<br /> \n<br /> SHORTNESS:\n<br />- SHORTENING of everything: courage, success, happiness and money (MM-GL)\n<br />- COWARDICE - shortness of confidence (IE-VJ) and courage (Ambr-S-10/2013)\n<br />- Shortness of will (Ambr-S-10/2013)\n<br />- MOROSE: Anger that can not be expressed -&gt; gives rise to RANCOR (a mixed feeling of sadeness, grief, anger, mortification) (Ambr-S-10/2013)\n<br /> \n<br />- Avarice: afraid to spend from fear of poverty (psor); they like luxuries but only if someone gives it as a gift to them, not with their own money, they are not successful enough (Ambr-S-10/2013)\n<br />- Miser - shortness of hand in spending (IE-VJ)\n<br /> \n<br />- Slowness and cautiousness (IE-VJ)\n<br />- Very cautious people, anxiously cautious (MM-GL)\n<br />- Apprehensiveness (Ambr-S-10/2013)\n<br /> \n<br />- Always develops aversion to one person. Rancor (MM-GL)\n<br />- Aversion to family members, female (MM-GL)\n<br /> \n<br />- A/F shock (MM-GL)\n<br />- Sensitive to criticism, intolerant of contradiction but on the other hand very censorious (MM-GL)\n<br />- They don't like cloudy weather (MM-GL)\n<br />- Makes verses (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:24
1218	99	17	<p>- Introverted - due to inertness (IE-VJ)\n<br />- Introverted - Quiet, sober and graceful (IE-VJ, p 92)\n<br /> \n<br />- Patient and contented (IE-VJ), slowness (MM-GL)\n<br />- Sensitive to rudeness (IE-VJ)\n<br />- Orphaned feeling (IE-VJ)\n<br />- Friendless (IE-VJ)\n<br />- Responsible (IE-VJ)\n<br />- Foresaken (verlassen) feeling (IE-VJ)\n<br />- Dullness, torpor (IE-VJ)\n<br />- Suppressed, mortified (often because of parents) (MM-GL)\n<br />- Wakes up, then dull (Kent) (Mag-c, Mag-m) (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1225	110	17	<p>- Introverted - Sarcastic (IE-VJ, p 87)\n<br /> \n<br />- Timid, but very angry person (Ambr-S-11/2015, p18)\n<br />- Friendliest of the friends - worst of the enemies (MM-GL)\n<br /> \n<br />- Rebellious, fighter (Ambr-S-11/2015, p18)\n<br /> \n<br />- Hatred for the person who has offended (IE-VJ)\n<br />- Revengeful (IE-VJ)\n<br />- People who are unmoved by apologies (IE-VJ)\n<br /> \n<br />- Fast, hurried (MM-GL)\n<br />- Impatience, individual (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1234	111	17	<p>- Introverted - Haughty (IE-VJ, p 90)\n<br />- Introverted - Indifference (IE-VJ, p 97)\n<br /> \n<br />- Indolent (IE-VJ)\n<br />- Haughty (IE-VJ), Contemptuous (MM-GL)\n<br />- Dominating, dictatorial (IE-VJ)\n<br />- Hardhearted, cruel, unorthodox (IE-VJ)\n<br />- Reproaches others (it is your fault, you have done a mistake) (MM-GL)\n<br />- Introverted (never communicates) (IE-VJ), silent, talk indisposed to (MM-GL)\n<br />- EMOTIONLESS, not moved by any emotions (IE-VJ), no feelings (MM-GL)\n<br />- He is never moved to tears or joy by anything (IE-VJ)\n<br />- Hard he is, like a rock (MM-GL)\n<br />- "Nothing moves" and everything is hard (IE-VJ)\n<br />- The only emotion that it exhibits is Anger (IE-VJ)\n<br />- Aversion being caressed (MM-GL)\n<br />- Ernst, do not want amusement, no parties (MM-GL)</p>\n\n<p>- They are not much liked by theri family, have very few friends (MM-GL)\n<br />- INDIFFERENCE: to everything, loved ones, pleasure, entertainment (MM-GL)\n<br />- Indifference to loved one (Sep, Carb-v, Hel, Gran) (IE-VJ, p 97)\n<br />- It is perfectly sycotic -&gt; hyper sycosis = extra fibrin synthesis -&gt; makes them tough and their parts hard (IE-VJ)\n<br />- People who like granite in their house (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1249	113	17	<p>Money minded + timid + sarcastic (Ambr-S-10/13)\n<br /> \n<br />- Slowness (mental and physical) (Ambr-S-10/13)\n<br />- Laxness (Ambr-S-10/13)\n<br />- Hardness (Ambr-S-10/13)\n<br />- Stasis and slowness -&gt; mind and body (Ambr-S-10/13)\n<br />                      -&gt; cardio-vacular system (Ambr-S-10/13)\n<br />                      -&gt; gastro-intstinal system (Ambr-S-10/13)\n<br /> \n<br />- Painting art (intro) - children who are under a lot of domination end up into art (DD: Natrium, Sep, Magnesia, Carc) (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1257	114	17	<p>- Extroverted -&gt; if you stimulate Kali it goes out of the cell --&gt; extroverted (MM-GL)\n<br />  except Kali-br and Kali-m (MM-GL)</p>\n\n<p>- First they are timid (inside the cell) but once they are stimulated they come out, extroverted (MM-GL)\n<br />- Easily excitable, physical and mental (MM-GL)\n<br />- Hyperirritability (MM-GL)\n<br /> \n<br />- Timid and aggressive, a strange combination (MM-GL)\n<br /> \n<br />- Timid, anxious, fearful (MM-GL)\n<br />- Timid and easily frightened. Startling. (MM-GL)\n<br /> \n<br />- Anxious (MM-GL)\n<br />- Aggressive anxiousness (MM-GL)\n<br /> \n<br />- Quarrelsome (not Kali-bi.) (MM-GL)\n<br />- Quarrels with bread and butter, Patient has scolded about her doctor very badly, but calls her afterwards very normally (MM-GL) \n<br />- Angry, irritable, aggressive, quarrelsome. (MM-GL)\n<br /> \n<br />- The patient is afraid of the disease and attacks the doctor (MM-GL)\n<br />- When we are apprehensive of the patient, feel of Kali (MM-GL)\n<br /> - Kali will not go away from you but they are demanding (MM-GL)\n<br /> \n<br />- Shrewd business minded (MM-GL)\n<br />- Never worry for children, do things for them only out of duty (MM-GL)\n<br />- Everything against family and pro outsiders (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1265	115	17	<p>- Most important thing is the bond (Ph-ac) (PV-S-10/14)\n<br />- They suffer when any relationship is broken (Ph-ac) (PV-S-10/14)\n<br /> \n<br />- CONTENTED and obedient (Ambr-S-10/13)\n<br />  -&gt; if the child is deamnding any clothes or toys... -&gt; no he is contented with whatever he gets; does not even demand food\n<br />- Inertness (DD bar: is egoistic) (Ambr-S-10/13)\n<br /> \n<br />- Quiet, introverted (talk less, don't volunteer informations) (Ambr-S-10/13)\n<br />- Intelligent and studious (Ambr-S-10/13)\n<br />- Serious looking, smile less (Amm; Alum -&gt; always smiles) (Ambr-S-10/13)\n<br />- Very industrious and responsible (DD Lyc: are more conscientious and right sided) (Ambr-S-10/13)\n<br /> \n<br />- Introverted with outsiders, but at home very jolly and jesting, making jokes (Ambr-S-10/13)\n<br />- Excellent orators and teachers (Ambr-S-10/13)\n<br /> \n<br />- People who have loads of patience (Op., Sep.) (MM-GL)\n<br />- Slowness, patience (MM-GL)\n<br /> \n<br />- Abrupt and snappish, don‘t want to be asked to many questions (Ambr-S-10/13)\n<br />- Growling and grumbling always. They don‘t show any reaction (Ambr-S-10/13)\n<br />- Aversion to answer or irritability when asked twice (Ambr-S-10/13)\n<br />- Sad, morose and lover types (Ambr-S-10/13)\n<br /> \n<br />- Orphaned feeling (MM-GL)\n<br />- Children who go in fancies while reading (Ambr-S-10/13)\n<br />- Chaotic (likes Merc) (Ambr-S-10/13)\n<br /> \n<br />- Children who are obstinate and headstrong, but are suppressed and have respiratory issues, most asthma. Children have eczema in the childhood. Magnesium want integration in the family, they need bonds. When skin eruptions get suppressed they get asthma. (Ambr-S-10/13)\n<br /> \n<br /> \n<br />DREAMS OF MAGNESIUM (AMBR-S-10/13)\n<br />Unsuccessful daily activities\t\t\t\t-&gt; Psora\n<br />Lost in the forest, lost in the crowd (esp. Mag-s.)\t-&gt; Sycosis\n<br />Dead bodies, deaths, mutilating (esp. Mag-m.)\t        -&gt; Syphilis</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1266	115	18	<p>- Sharp features, lean and thin (Ambr-S-10/13)\n<br />- Tough hair (Ambr-S-10/13)\n<br /> \n<br />- milk agg or milk intollerance (Ambr-S-10/13)\n<br />- Liver (MM-GL)\n<br />- morning agg: function of liver is poor; digestion is not correct, a lot of bloating and bilious headaches (usually mild) (MM-GL)\n<br />- Underfunctioning of liver and bilious nature (Ambr-S-10/13)\n<br />- Breakfast agg (Ambr-S-10/13)\n<br />- Because of the bloating they cannot have breakfast in the morning (Ambr-S-10/13)\n<br />- Heavy food agg. (Liver) (Ambr-S-10/13)\n<br />- 1 am, 1 pm agg (Ambr-S-10/13)\n<br /> \n<br />- Electric shock like pains, shuddering, twitching (it has effect on the nerves), weakness (Ambr-S-10/13)\n<br />- Cramps, jerks (Ambr-S-10/13)\n<br />- Nerves (Ambr-S-10/13)\n<br /> \n<br />- Bones (Ambr-S-10/13)\n<br />- Pain of old fractures(Ambr-S-10/13)\n<br />- Bad effects of wound (Mag-c) (Ambr-S-10/13)\n<br /> \n<br />- Sleepy when tries to sleep but cannot (Ambr-S-10/13)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1286	117	17	<p>- Introverted - AWOTA (angry when obliged to answer) (IE-VJ, p 85)\n<br />- Introverted - Sarcasm (IE-VJ, p 87)\n<br /> \n<br />- Dry, unemotional, angry people, who do not like to answer questions (IE-VJ)\n<br />- Dominating, dictatorial (MM-GL)\n<br />- Positive personality, they work hard and are business minded (MM-GL)\n<br />- Business minded people (IE-VJ)\n<br />- Anxious about money, strong desire for security, which they try to find in money and property. Business minded. Serious working (MM-GL)\n<br />- Accumulating because of insecurity of future (MM-GL)\n<br />- Very diligent (IE-VJ), conscientious (MM-GL)\n<br />- Irritable (MM-GL)\n<br />- Anger. Anger from contradiction (MM-GL)\n<br />- Slow onset (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1306	119	17	<p>- Introverted - AWOTA (angry when obliged to answer) (IE-VJ, p 85)\n<br /> \n<br />- A/F anger, indignation and mortification (IE-VJ)\n<br /> \n<br />- Very angry person (Ambr-S-11/2015, p18)\n<br />- Angry at the world, but the anger goes inside, burst out in fits (MM-GL)\n<br />- Anger suppressed within can give rise to violent actions that are not directed towards people i.e. hitting fist on table or on wall or forcefully smashing of shuttle while playing badminton (IE-VJ)\n<br />- Throws things away (MM-GL)\n<br />- Suppressed anger causes neuralgia and spasm (IE-VJ)\n<br /> \n<br />- Constriction of muscles. Anger causes constriction and that is why anger causes severe colic and severe spasm -&gt; headache (MM-GL)\n<br /> \n<br />- Obstinate, headstrong (MM-GL)\n<br />- Reserved (MM-GL)\n<br />- Coloc can not be dull, it will go on and on (MM-GL)\n<br />- Coloc is never syp, there is no destruction. Serious spasm but going away (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:25
1326	121	17	<p>- Introverted - Haughty (IE-VJ, p 162)\n<br /> \n<br />- Introverted and Haughty (IE-VJ). Contemptuous (MM-GL), exclusive (MM-GL, DD Gran)</p>\n\n<p>- Delusion he is a king (IE-VJ). Wants other people to work for him (MM-GL)\n<br />- Desires more riches or luxuries, at the cost of others (IE-VJ)\n<br />- Very avarice (MM-GL)\n<br />- Capricious (IE-VJ)\n<br />- Exclusive (IE-VJ)\n<br />- Communicative expansive (IE-VJ)\n<br />- Lot of Anticipation (IE-VJ)\n<br />- Likes caresses (IE-VJ)\n<br />- Similar to Plat and Gran (MM-GL)\n<br />- Qualities like Gran (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1333	122	17	<p>- Introverted - Haughty (IE-VJ, p 90)\n<br /> \n<br />- Haughty (MM-GL)\n<br />- Dictatorial, domineering, talking with air of command (MM-GL)\n<br />- Pompous important (MM-GL)\n<br />- Like a general, he is not hysterical (he would lead his hole battalion in chaos) (PV-S-10/14)\n<br />- Delusion is a general (behaves like one) (MM-GL)\n<br />- Delusion he is a great person (MM-GL)\n<br />- Quarrelsome (MM-GL)\n<br />- Destructive (MM-GL)\n<br /> \n<br />- Timid, bashful (MM-GL)\n<br />- Fear of approaching him of others (MM-GL)\n<br />- Fear of people, fear of stranger (MM-GL)\n<br /> \n<br />- Rigidity -&gt; does things regularly / DD: fastidious (MM-GL)\n<br />- Mildness alternating with obstinacy (MM-GL)\n<br />- A/F anger, vexation, fright (MM-GL)\n<br />- Aversion to the presence of other people (MM-GL)\n<br />- Malicious, laughing (MM-GL)\n<br />- Slow calculated talk (MM-GL)\n<br />- Mood changeable (MM-GL)\n<br />- Forgetful after fright (MM-GL)\n<br />- Cautious (MM-GL)\n<br />- Anxiety of conscience (MM-GL)\n<br />- Injustice, cannot support (MM-GL)\n<br /> \n<br />&lt; Darkness (MM-GL)\n<br />&gt; Magnetized, mesmerism (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1350	124	17	<p>- Introverted - Quiet, sober and graceful (IE-VJ, p 92)\n<br /> \n<br />- Peformer, achiever (MM-GL)\n<br />- Dictatorial (MM-GL)\n<br />- Contemptuous, of self (MM-GL)\n<br />- Industrious (IE-VJ)\n<br />- Disciplined (IE-VJ)\n<br />- Conscientious, high morals (MM-GL)\n<br />- Unemotionally caring person (IE-VJ). This is what distinguishes Aur from the other caring remedies (IE-VJ)\n<br />- Caring for all (i.e. family) but out of conscientiousness (MM-GL)\n<br />- Soberness is out of discipline and duty consciousness (IE-VJ)\n<br />- Responsibility, even at early age, high morals, everything should be in right principles, people, who are very high positioned (MM-GL)\n<br />- Principled. Strong values (MM-GL)\n<br />- Duty of highest degree. Does not go wrong in timings (MM-GL)\n<br />- Punctual. Fastidiousness. Perfectionist (MM-GL)\n<br />- Is not flexible (is a routinist like Bar but intelligent) (MM-GL)\n<br />- Sadness, suicidal (IE-VJ)\n<br />- Despair (IE-VJ)\n<br />- Failure (MM-GL)\n<br />- Guilty feeling (MM-GL)\n<br />- Religiousness (MM-GL)\n<br />- Less emotional - only anger is expressed (MM-GL)\n<br />- Doesn't like travelling - Riding in a car/carriage &lt; (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1352	124	20	<p>AURUM IODATUM (aur-i):\n<br />- Hot (IE-VJ)\n<br />- Right sided (MM-GL)\n<br />- Quickness and activity of Iodum (IE-VJ)\n<br />- Fastidious (MM-GL)\n<br />- Quiet egoistic. Brooding (MM-GL)\n<br />- Determined (MM-GL)\n<br />- Very conscientious. Diligent. Children who take over the work of the mother when she is ill (MM-GL)</p>\n\n<p> \n<br />AURUM SULPHURATUM (aur-s):\n<br />- Hot (IE-VJ)\n<br />- Which have philosophical and creative trait of Sulphur (IE-VJ)\n<br /> \n<br />AURUM ARSENICUM (aur-ar):\n<br />- Chilly (MM-GL)\n<br />- Thirstless (MM-GL)\n<br />- Right sided (MM-GL)\n<br />- Restless, activity, hurried, excited (MM-GL)\n<br />- Inclined to criticize and find faults (MM-GL)\n<br />- A/F contradiction (MM-GL)\n<br />- Conscientious, anxiety of conscience (MM-GL)\n<br />- Indifference to domestic duties (MM-GL)\n<br />- Indifference to her children (MM-GL)\n<br />- Untidy (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1373	127	17	<p>- EXCESS ENERGY - never gets tired of working (MM-GL) \n<br />  -&gt; Can work for 36 h or more at a stretch. Actually this is a syphilitic or destructive process. The body and the mind is not aware that it is working beyond its capacity and it may be dangerous for his health (Nux-v, Aur, Camph, Merc) (MM-GL)\n<br />  -&gt; excess Energy but cold -&gt; Nux-v, Camph, Merc (MM-GL)\n<br />- Working for long hours without sleep and food, don't feel effect on body/ go on and on and one day they will drop dead (PV-S-10/14)\n<br />- Excessive activity, ability to work, work, work, no second of peace (MM-GL)\n<br />- Never get physically or mentally tired (ask: how many hours you can work non-stop?) (MM-GL) \n<br />- People who don't get jet-lag (MM-GL)\n<br /> \n<br /> \n<br />- BUOYANCY \n<br />   -&gt; Have easy adabtilivity (Arum-d, Cimic, Eucal, Fl-ac, Nux-v, Phys, Sarr, Scut) (MM-GL)\n<br />   -&gt; Happy, not bothered from anything, flowing on the water (PV-S-05/12)\n<br />- Adaptibility easy to all situations. I face all situations - happiness, grief, dangers, shocks with the same composure (MM-GL), have no       jetlag (PV-S-10/14)\n<br />- Contentment (MM-GL)\n<br /> \n<br />- Very intelligent, involuntary memory, sharp brain (syc predominates) (PV-S-10/14)\n<br />- Get bored easily (MM-GL)\n<br />- Need change often. Changes: doctors, cars, wives, friends, business... (MM-GL)\n<br />- People who lose interest in things easily after gratification of their senses (they are achievers who after achieving a post or a position or a possession will not emotionally stick to it. They will lose interest in those things that were of prime importance for them a few days ago) (MM-GL)\n<br />- Job: change despite being successful, they want the gratification of being the conqueror (PV-S-10/14)\n<br /> \n<br />- NO ATTACHMENTS, no sentiments (Hell, Sep, Phos, Acon, Syph) (MM-GL)\n<br />- Indifference to loved ones, but are animated to strangers (MM-GL, IE-VJ, p 97)\n<br />- People who can stay away from family and near and dear ones without remembering them (MM-GL)\n<br />- People who talk about the death of their near or dear relative like wife, child, parent without expression of grief only a week or so after their death (MM-GL)\n<br /> \n<br />- Flirting - people, who have many love affairs (MM-GL)\n<br />- Sexual gratification only after that he is discontented, capricious, goes on changing again (PV-S-10/14)\n<br />- Excess sex-desire (MM-GL)\n<br />- Sexual desire is only in men, in women it's not like this, because they are mannish (MM-GL)\n<br />- Mannish habits of girls (MM-GL)\n<br /> \n<br />- Great love for cars, buys many luxurious thing but no attachment to them (MM-GL)\n<br /> \n<br />- Luxurious things (MM-GL):\n<br />  -&gt; Buys new because he lost interest = fl-ac\n<br />  -&gt; To collect things = sulph\n<br />  -&gt; for speed = tub\n<br />  -&gt; for showing how great he is = lyc</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1382	128	12	<p>- Tub constitution has sharp features (IE-VJ)\n<br />- They will have relapsing complaints (IE-VJ)\n<br />- They are obstinate (IE-VJ)\n<br />- Wandering, desire for (IE-VJ)\n<br />- Loves to drink milk (IE-VJ)\n<br />- Fear of dogs (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1385	128	17	<p>- They are extroverted and have many friends (MM-GL)\n<br />- Quick in mind but not in body (MM-GL)\n<br />- The mind wanders everywhere (MM-GL)\n<br />- Wandering, desire for (IE-VJ)\n<br />- Constantly moving from place to place, mentally (MM-GL)\n<br />- Not a remedy for hyperactive (MM-GL)\n<br />- Revolting character (MM-GL)\n<br />- Loves to go out (MM-GL)\n<br />- They are obstinate (IE-VJ)\n<br />- Near calc-p, bell (MM-GL)\n<br />- Appearance of Phos (MM-GL)\n<br />- Love for all, rebellious and organs affected (nerves &amp; intestine) (MM-GL) ?\n<br />- Fear of dogs (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1416	130	17	<p>- Timid and aggressive, a strange combination (MM-GL)\n<br /> \n<br />- Timid, anxious, fearful. (MM-GL)\n<br />- Timid (Sensitive); startling easily (MM-GL)\n<br /> \n<br />- Anxious; Anxiety about health; patient expects quick results. The tone of talk is complaining (MM-GL)\n<br />- Aggressive anxiousness (MM-GL)\n<br />- The patient is afraid of the disease and attacks the doctor (MM-GL)\n<br />- Kali will not go away from you but they are demanding (MM-GL)\n<br />- When we are apprehensive (besorgt) of the patient, think of Kali (MM-GL)\n<br />- Routinist (MM-GL)\n<br /> \n<br />- Angry, irritable, aggressive, quarrelsome (MM-GL)\n<br />- Quarrelsome (MM-GL)\n<br />- Quarrels with bread and butter, Patient has scolded about her doctor very badly, but calls her afterwards very normally (MM-GL)\n<br /> \n<br />- Impatient, hurried and impetuous (MM-GL)\n<br />- People whose body talks. All the muscles of face and hands express the feelings (MM-GL)\n<br /> \n<br />- People who feels drowsy or sleepy while eating (MM-GL)\n<br /> \n<br />- People who have less attachment and concern for their family but more for their safety (MM-GL)\n<br />- Everything against family and pro outsiders (MM-GL)\n<br />- Never worry for children, do things for them only out of duty (MM-GL)\n<br /> \n<br />- Shrewd (klug) business minded (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1421	131	11	<p>- When I wanted you you were not here, now I don't want you (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1422	131	13	<p>BOGER (BO-SK):\n<br />- Nerven: ZEREBRO-SPINALE, ABDOMEN\n<br />- VERDAUUNGSTRAKT\n<br />- AUGEN\n<br />- Schleimhäute\n<br />- Kinder (linke Seite)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1431	132	17	<p>- Likes to play with soft toys (MM-GL)\n<br />- They want to have something soft in the hand (MM-GL)\n<br />- Like dancing, dances grotesque. Jumpy pumpy (MM-GL)\n<br />- A/F head injury. Tendency for injury of head and spine (MM-GL)\n<br />- Very childish, behave like children, rather than old people (MM-GL)\n<br />- don't want to grow, because the more one grows, the more hurts will come (PV-S-10/14)\n<br />- Obstinate (MM-GL)\n<br />- Misanthropy. Av. to men. Introverted, likes to be alone (MM-GL)\n<br />- sad remedy which is more confined to oneself (PV-S-10/14)\n<br />- Cencorious (MM-GL)\n<br />- gets hurt and makes a shell around him (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1465	137	18	<p>- Sun &gt;&gt;; sun is recharger of his energy (IE-VJ)\n<br />- Symptoms become better in the sun (MM-GL)!!\n<br /> \n<br />- Starting easily (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:26
1468	138	17	<p>- Desires death, from despair (MM-GL)\n<br />- Indifference. Weary of life (MM-GL)\n<br />- Delusion he is well (MM-GL)\n<br />- He says he is well, when very sick (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1482	140	13	<p>PRAFULL VIJAYAKAR:\n<br />-&gt; thickening, induration, accumulation</p>\n\n<p>- Callositis (IE-VJ)\n<br />- Corns on skin (IE-VJ)\n<br />- Exostosis (IE-VJ)\n<br />- Calcaneal spurs in bones (IE-VJ)\n<br />- Fibroids in the uterus (IE-VJ)\n<br />- Keloids at operated locations (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1484	140	17	<p>- This Calc is less attached to home, family and parents (IE-VJ)\n<br />- Money, luxury, cars; every thing revolves around this (befits the fluor element) (IE-VJ)\n<br />- Brain is sharp (in contrary to other calc) (IE-VJ)\n<br />- Easy comprehension (IE-VJ)\n<br />- Concentration is active; esp. when doing BUSINESS and ACCUMULATING MONEY (IE-VJ)\n<br />- INSECURITY: from the fear of coming to want and poverty -&gt; makes them go into business too early (IE-VJ)\n<br />- Fear of poverty (nux-v does not bother about tomorrow) (MM-GL)\n<br />- They rarely pass graduation because the mind is too weak to concentrate on studies (IE-VJ)\n<br />- Their mind thinks only one thing: HOW TO MAKE MONEY (IE-VJ)\n<br />- SELFISHNESS, the brain can be used only for selfish gains (IE-VJ)\n<br />- The insecurity at the genetic level always makes them go in an "accumulating mode" (IE-VJ)\n<br />- Calc-f over cautious defense to thicken is due to insecurity about the future (IE-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1493	141	12	<p>- Hot and desire open air - but sensitive to wind and draft (IE-VJ)\n<br />  -&gt; get headache from riding motorcycle, when exposed to cold draft\n<br />- Females who suffer from thyroid problem during: puberty, menses, pregnancy (IE-VJ)\n<br />- Young boys and girls who wear most trendy clothes.\n<br />  -&gt; sycotic miasm \n<br />  They are very careful about how they present themselves \n<br />  Love parfumes\n<br />- When children return from school their restlessness prevents them from sitting at home and compels them to go in open air and move on bicycles, motorbikes, etc. They love cold wind in the face (IE-VJ)\n<br />- Occupation &lt;&lt; (IE-VJ)\n<br />- Officers or mental workers who complain that their work is hampered because they need to go for urination very frequently especially when they are occupied. The urine they pass is very little (IE-VJ)\n<br />- CHANGEABLE like Puls (IE-VJ)\n<br />  - Symptoms change\n<br />  - Anxiety comes and goes in paroxysms\n<br />  - Desire for open air, but worse cold draft\n<br />  - Very irresolute</p>\n\n<p>  Diff:              Puls      /   Calc-i\n<br />  THIRST:  thirstless          /  thirsty (for stimulants like Coke, Pepsi, Orange, Alcohol)\n<br />  NEED:    loves consolation   /  loves support</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1496	141	17	<p>- Impatinet and restless calcarea (IE-VJ)\n<br />- Mentally restless but physically weak and requires alcohol or stimulants to pep it up (IE-VJ)\n<br />- Hot and desire open air - but sensitive to wind and draft (IE-VJ)\n<br />  -&gt; get headache from riding motorcycle, when exposed to cold draft\n<br />- Females who suffer from thyroid problem during: puberty, menses, pregnancy (IE-VJ)\n<br />- Young boys and girls who wear most trendy clothes.\n<br />  -&gt; sycotic miasm \n<br />  They are very careful about how they present themselves \n<br />  Love parfumes\n<br />- When children return from school their restlessness prevents them from sitting at home and compels them to go in open air and move on bicycles, motorbikes, etc. They love cold wind in the face (IE-VJ)\n<br />- Occupation &lt;&lt; (IE-VJ)\n<br />- Officers or mental workers who complain that their work is hampered because they need to go for urination very frequently especially when they are occupied. The urine they pass is very little (IE-VJ)\n<br />- Officers or mental workers who complain that their work is hampered because they need to go for urination very frequently especially when they are occupied. The urine they pass is very little (IE-VJ)\n<br />- CHANGEABLE like Puls (IE-VJ)\n<br />  - Symptoms change\n<br />  - Anxiety comes and goes in paroxysms\n<br />  - Desire for open air, but worse cold draft\n<br />  - Very irresolute</p>\n\n<p>  Diff:             Puls      /   Calc-i\n<br />  Thirst: thirstless          /  thirsty (for stimulants like Coke, Pepsi, Orange, Alcohol)\n<br />  LOVE:   loves consolation   /  loves support\n<br />- Cheerful, smiling, happy (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1511	144	17	<p>- Excessive drowsiness - Uncontrollable desire to sleep, Unconquerable sleep (MM-GL)</p>\n\n<p>- Weakness (MM-GL)\n<br />- Slightest pain causes fainting, that means hysterical (MM-GL)\n<br />- Oversensitive to all impressions (MM-GL)\n<br />- All five senses: sight, touch, noise, taste and smell (MM-GL)\n<br />- Vanishing of thoughts while talking, forgets names of well known streets (Cann-i., Lach., Med.). Because of weakness of memory there can be vanishing of thoughts and absentmindedness. (MM-GL)\n<br />- Angry like Nux-v. (easily angry) (MM-GL)\n<br />- Inaccurate judgement of distance (MM-GL)\n<br />- Physically and mentally dull, weak and sluggish (MM-GL)\n<br /> \n<br />OVERSENSITIVE (MM-GL):\n<br />2. Faintness (if anybody says: I can faint like anything the first remedy to think is Nux-m.)\n<br />3. Sleepiness. The mind becomes so dull and weak that we have a\n<br />4. Weakness of memory\n<br />5. Great dryness of mouth with no desire to drink (Bry., Puls.). The mouth is so dry that it sticks to the mouth, cotton-like saliva.\n<br />6. Great soreness of the whole body agg. from heat and cold.</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1532	147	18	<p>- BONES: decay of the bones (GMM-VJ)\n<br />- NERVES: it causes spasm, convulsions, jerks (GMM-VJ)\n<br />- GLANDS: atrophy of glands (mammary, testis) (GMM-VJ)\n<br /> \n<br />- TONGUE: \n<br />  - specific action on tongue (GMM-VJ)\n<br />  - Tongue gets pulled inside the throat with severe stinging pain causing the person to suffocate as he is falling asleep (GMM-VJ)\n<br />    -&gt; REP: Fear/death/of pain with/root of tongue and throat of/before going to sleep (GMM-VJ)\n<br />  - Syphilitic affection of tongue and throat (GMM-VJ)\n<br />- EYES:\n<br />  - Paralysis of lateral recti leading to internal squint (GMM-VJ)\n<br />  - REP: nerves abducens nerve (GMM-VJ)\n<br />  - REP: muscles of eyeballs recti (GMM-VJ)\n<br />  - REP: muscles of eyeballs (GMM-VJ)\n<br />  - Optic nerve, amaurosis (GMM-VJ)\n<br />  - Detachment of Retina (GMM-VJ)\n<br /> \n<br />- Startling noise from (REP: Startling/startled noise, from) (GMM-VJ)\n<br />- Violent pain that makes him shriek. The pains may be in the head or knee (GMM-VJ)\n<br />  -&gt; REP: Mind/shrieking, screaming, shouting/pain/limbs in/tigh, knee joint and leg/ while lying down (GMM-VJ)\n<br />- Discharges are bloody green or greenish black (GMM-VJ)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1566	159	17	<p>- Vivacious, talkative, loquacious (MM-GL)\n<br />- Extroverted, nonstop talking with very expressive eyes (Ambr-S-11/2015, p10)\n<br />- Loquacity busy, from one subject to another, bo on and on (Lach, Ther) (Ambr-S-11/2015, p10)\n<br />- Talk to you with protruding or wide open eyes and talk loud (Stram, Kali's, Sul-i, Phos: these remedies are more watchful, Ther is not watchful.)(Ambr-S-11/2015, p10)\n<br />- Talk to you with protruding or wide open eyes and talk loud (Stram, Kali's, Sul-i, Phos: these remedies are more watchful, Ther is not watchful.)\n<br />- Lovable people (MM-GL)\n<br /> \n<br /> \n<br />- Offended easely (Ambr-S-11/2015, p10)\n<br />- Mistake makes in time\n<br />- Distance exaggerated\n<br /> \n<br />- Weakness of memory, mental exertion aggravation — even reading newspaper is difficult; any mental activity is difficult\n<br />- Heedless, in spite of warning they do not care about dangers (MM-GL)\n<br />- Restless (Ambr-S-11/2015, p10)\n<br />- Calculating ability is poor\n<br />- Generally ladies who are busy fruitlessly -- appear too restless (Ambr-S-11/2015, p10)\n<br /> \n<br />- Restless\n<br />- Ladies who do not like house hold work, but like sport activities (Sep, Sul-ac, Cench) (Ambr-S-11/2015, p10)\n<br /> \n<br />- Generally ladies who are busy fruitlessly -- appear too restless\n<br />- Anxiety about health, anxiety chest region, anxiety about heart complaints — goes to state of hysteria; rubric: anxiety hysterical (Ambr-S-11/2015, p10)\n<br />- Ladies who do not like house hold work, but like sport activities (Sep, Sul-ac, Cench) \n<br /> \n<br />- Mistake makes in time (Ambr-S-11/2015, p10)\n<br /> \n<br />- Anxiety about health, anxiety chest region, anxiety about heart complaints — goes to state of hysteria; rubric: anxiety hysterical\n<br />- Distance exaggerated (Ambr-S-11/2015, p10)\n<br />- Weakness of memory, mental exertion aggravation — even reading newspaper is difcult; any mental activity is difcult (Ambr-S-11/2015, p10)\n<br /> \n<br />- Calculating ability is poor (Ambr-S-11/2015, p10)\n<br />- Extreme lack of condence &amp; confusion &amp; irresolution\n<br />- Extreme lack of confidence &amp; confusion &amp; irresolution (Ambr-S-11/2015, p10)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1573	160	17	<p>- Quarrelsome ladies (Chin, Merc, Sep, Kali's) (Ambr-S-11/2015, p11, MM-GL)\n<br />- Discontented and nagging (Ambr-S-11/2015, p11)\n<br />- But excessively ambitious about carrier and achievement (leader, achiever) (Caust) (Ambr-S-11/2015, p11, MM-GL)\n<br />- Haughty (Ambr-S-11/2015, p11)\n<br />- Generally sad and morose (Ambr-S-11/2015, p11)\n<br />- Very serious looking (Ambr-S-11/2015, p11)\n<br />- Quiet and reserved (Ambr-S-11/2015, p11)</p>\n\n<p>- Rising on agg (Ambr-S-11/2015, p11)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1575	161	18	<p>- Puffed up, venous purple faces; they have an appearance of plethora, the face looks\n<br />puffed bloated and dropsically at times. Carb-an, Aur, Carb-v and Puls are also related to this kind of face, but it is a very troublesome face; it shows more or less cardiac disturbance and venous stasis. The venous side of the heart will often be involved or be about to be involved, when you have this kind of face. (Ambr-S-11/2015, p11)\n<br /> \n<br />- Very likely to be thought of in lean persons (body lean but puffed up face) (Ambr-S-11/2015, p11)\n<br /> \n<br />- Extremely nervous, extremely sensitive to pain (Ambr-S-11/2015, p11)\n<br /> \n<br />- Ulcers deep with bluish edges (Ambr-S-11/2015, p11)\n<br />Ulcers with jagged edges\n<br />Ulcers color bluish edges: asaf, kali-s, mang, nit-ac \n<br />Ulcers color black margins: ars, con, LACH, sil, sulph\n<br /> \n<br />- Asaf is full of discharges: catarrhal discharges from ulcers, watery discharges from different places, even watery stool and all these excessive discharges are horribly offensive and ichorous (Ambr-S-11/2015, p11)\n<br /> \n<br />- Inflammation of the bone and periosteum with blueness all around the ulcers (Ambr-S-11/2015, p11)\n<br />- hyperaesthesia (PV-S-10/14)\n<br />- senses hyperacute (PV-S-10/14)</p>	2020-02-26 19:13:47	2020-03-09 10:15:27
1602	166	21	<p>- Ailment from shock, mental exertion       (NI-2014)\n<br />- work fatigue, eye fatigue, Diarrhea after (NI-2014)\n<br />- irritability, irresolution, thoughts                rapid, quick, vanishing, wandering         (NI-2014)\n<br />- SEXUAL: not a must in acute (NI-2014)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1611	177	17	<p>- Right brain dominance (mother side) -&gt; loving, giving, maternal (PV-I-01/17)\n<br /> \n<br />- Very cheerfull girls (Ambr)\n<br />- Always dancing, always playing (Ambr)\n<br />- FANCIES: pleasant, happy, merry fancies (PV-S-10/14)\n<br />- Are in their own world (PV-S-10/14)\n<br />- Talk to their toys (PV-S-10/14)\n<br /> \n<br />- Very sensitive to rudeness. If you sold them all day they will cry (Ambr)\n<br /> \n<br />- Walk like going on the high (PV-S-10/14)\n<br />- Gay (PV-S-10/14)\n<br /> \n<br />- They rhyme (PV-I-01/17)\n<br />- Viji had one child, that talked from the past (before he came to the world) -&gt; very rare symptom, there is no rubric for this. He gave Cann-s (PV-I-01/17)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1651	201	17	<p>- Anxious and quarrelsome (MM-GL)\n<br />- Aggressive way of asking for many small things (MM-GL)\n<br />- Morose, quarrelsome, jealousy (MM-GL)\n<br /> \n<br />- Tremendous anxiety about health, but only his health (MM-GL)\n<br />- Tremendous anxiety about health, sadness, indifference (MM-GL)\n<br /> \n<br />- Alert. Expressive. (MM-GL)\n<br />- Fast, impatient (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1656	202	17	<p>- Chilly &amp; Thirsty &amp; Introverted Kali (MM-GL)\n<br /> \n<br />- It is an indifferent Kali -&gt; indifference to all persons (MM-GL)\n<br />  -&gt; Sits quiet, stiff (MM-GL)\n<br />  -&gt; Aversion to friends (MM-GL)</p>\n\n<p> \n<br />The picture is more or less like Sepia. The patient is indifferent, indolent and sits quiet and stiff, not interacting with people. The person has no interest in work, no interest in doing important things. He neglects important things. (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1657	202	18	<p>- Appetite increased hunger in general, vanishing after drinking water (MM-GL)\n<br />- Water can take the place of food. If the patients is hungry and he drinks water the appetite disappears (MM-GL)\n<br /> \n<br />- Superficial inflammation of the THROAT with cheesy lumps (MM-GL)\n<br />- Superficial inflammation in the CORNEA causing keratitis (MM-GL)\n<br />- Inflammation occurs in BLOOD VESSLES giving rise to blanching effect that is whiteness of parts otherwise red (MM-GL)\n<br />- In Sycosis inflammation turns into INDURATION and arteries can get thrombosed giving rise to heavy leg sensation (MM-GL)</p>	2020-02-26 19:13:47	2020-03-09 10:15:28
1750	13	13	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1756	14	16	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1777	16	26	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1778	16	25	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1785	17	14	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1791	18	26	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1797	19	26	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1804	20	25	<p></p>	2020-03-09 10:08:16	2020-03-09 10:15:29
1810	21	10	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1816	21	27	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1823	22	25	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1829	24	23	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1835	24	25	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1842	25	26	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1848	26	16	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1854	26	14	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1861	27	12	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1867	28	26	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1873	29	14	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1880	30	19	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1886	31	21	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1892	31	26	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:29
1897	32	22	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1898	32	19	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1905	33	21	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1911	33	14	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1917	34	22	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1924	34	25	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1930	35	27	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1936	37	13	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
1943	38	25	<p></p>	2020-03-09 10:08:17	2020-03-09 10:15:30
2183	60	25	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2189	61	22	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2195	61	7	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2202	61	3	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2208	62	22	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2214	62	9	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2221	63	23	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2227	63	14	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2233	63	25	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2240	64	19	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2246	64	26	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2252	65	22	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2257	65	14	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2258	65	7	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2265	66	21	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2271	66	20	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2277	66	25	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2284	67	10	<p></p>	2020-03-09 10:08:19	2020-03-09 10:15:32
2290	67	26	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:32
2296	68	23	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:32
2303	68	14	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:32
2309	68	26	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:32
2315	69	23	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2322	69	26	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2328	70	23	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2334	70	12	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2341	70	6	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2347	70	1	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2353	71	16	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2360	71	5	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2366	71	8	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2372	72	18	<p></p>	2020-03-09 10:08:20	2020-03-09 10:15:33
2473	78	19	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2480	78	5	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2486	78	3	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2492	79	22	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2497	79	20	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2498	79	12	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2505	79	6	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2511	79	1	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2517	80	16	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2524	80	6	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2530	80	1	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2536	81	16	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2543	81	6	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2549	82	21	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2555	82	13	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2562	82	3	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2568	83	19	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2574	83	2	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2581	84	22	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2587	84	27	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2593	85	25	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2600	86	9	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:34
2606	87	12	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:35
2612	87	27	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:35
2617	97	14	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:35
2618	97	5	<p></p>	2020-03-09 10:08:21	2020-03-09 10:15:35
2625	98	23	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2631	98	6	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2637	99	21	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2644	99	5	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2650	99	27	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2656	110	10	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2663	110	2	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2669	111	21	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2675	111	11	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2682	111	8	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2688	112	17	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2694	112	4	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2701	112	3	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2707	113	22	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2713	113	9	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2720	114	21	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2726	114	12	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2732	114	9	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2737	115	21	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2738	115	23	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:35
2745	115	5	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2751	115	1	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2757	116	20	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2764	116	25	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2770	117	23	<p></p>	2020-03-09 10:08:22	2020-03-09 10:15:36
2776	117	14	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2783	118	21	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2789	118	13	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2795	118	25	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2802	119	19	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2808	119	25	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2814	120	22	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2821	120	25	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2827	121	23	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2833	121	13	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2840	121	3	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2846	122	22	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2852	122	14	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2857	122	25	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2858	122	3	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2865	123	18	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2871	123	13	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2877	123	9	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:36
2884	124	22	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2890	124	26	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2896	125	22	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2903	125	26	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2909	126	22	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2915	126	12	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2922	126	9	<p></p>	2020-03-09 10:08:23	2020-03-09 10:15:37
2928	126	27	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2934	127	13	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2941	127	3	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2947	128	22	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2953	128	9	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2960	129	20	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2966	129	1	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2972	130	19	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2977	130	26	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2978	130	25	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2985	131	20	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2991	131	9	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
2997	131	27	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
3004	132	14	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:37
3010	132	26	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3016	133	23	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3023	133	7	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3029	133	25	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3035	134	22	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3042	134	11	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3048	134	2	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3054	134	8	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3061	135	19	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3067	135	14	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3073	135	9	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3080	136	21	<p></p>	2020-03-09 10:08:24	2020-03-09 10:15:38
3086	136	20	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3092	136	25	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3097	137	22	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3098	137	19	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3105	137	9	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3111	138	22	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3117	138	11	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3124	138	26	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3130	139	21	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3136	139	20	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3143	139	26	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:38
3148	139	27	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3150	140	23	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3151	140	22	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3152	140	10	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3153	140	12	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3181	142	18	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3187	142	13	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3193	142	9	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3200	143	23	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3206	143	11	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3212	143	6	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3217	143	3	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3218	143	1	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3225	144	7	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3231	144	26	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3237	145	21	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3244	145	11	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3250	145	9	<p></p>	2020-03-09 10:08:25	2020-03-09 10:15:39
3256	146	23	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3263	146	11	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3269	146	6	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3275	146	1	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3282	147	10	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3288	147	2	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:39
3294	147	8	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3301	148	18	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3307	148	13	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3313	148	2	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3320	148	27	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3326	149	18	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3332	149	13	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3337	149	6	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3338	149	2	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3345	149	27	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3351	150	18	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3357	150	13	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3364	150	9	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3370	150	27	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3376	151	19	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3383	151	7	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3389	151	26	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3395	152	21	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3402	152	25	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3408	153	19	<p></p>	2020-03-09 10:08:26	2020-03-09 10:15:40
3414	153	14	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:40
3421	153	26	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:40
3427	154	23	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3433	154	10	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3440	154	4	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3446	154	25	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3452	155	23	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3457	155	19	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3458	155	10	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3465	155	4	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3471	155	25	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3477	156	23	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3484	156	12	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3490	156	5	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3496	156	3	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3503	157	19	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3509	157	14	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3515	157	25	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3522	158	22	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3528	158	20	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3534	158	4	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3541	158	3	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3547	159	22	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3553	159	5	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3560	159	27	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3566	160	20	<p></p>	2020-03-09 10:08:27	2020-03-09 10:15:41
3572	160	2	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3577	160	8	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3578	160	27	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3585	161	10	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3591	161	7	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3597	161	26	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3604	162	23	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3610	162	6	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3616	162	8	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3623	163	11	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3629	163	9	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3635	163	27	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3642	164	12	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3648	164	2	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3654	164	8	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3661	165	18	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3667	165	13	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3673	165	2	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3680	165	27	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3686	166	12	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3692	166	6	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3697	166	3	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3698	166	1	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3705	167	18	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3711	167	14	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:42
3717	167	9	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:43
3724	168	21	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:43
3730	168	10	<p></p>	2020-03-09 10:08:28	2020-03-09 10:15:43
3736	168	7	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3743	168	25	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3749	169	23	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3755	169	10	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3762	169	4	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3768	169	25	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3774	170	23	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3781	170	20	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3787	170	4	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3793	170	25	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3800	171	22	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3806	171	20	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3812	171	4	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3817	171	26	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3818	171	25	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3825	172	22	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3831	172	20	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3837	172	4	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3844	172	3	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:43
3850	173	22	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3856	173	20	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3863	173	5	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3869	173	3	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3875	174	22	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3882	174	12	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3888	174	5	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3894	174	3	<p></p>	2020-03-09 10:08:29	2020-03-09 10:15:44
3901	175	16	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3907	175	12	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3913	175	5	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3920	175	1	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3926	176	16	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3932	176	12	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3937	176	4	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3938	176	5	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3945	176	1	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3951	177	10	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3957	177	5	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3964	177	27	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3970	178	10	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3976	178	7	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:44
3983	178	25	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
3989	179	23	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
3995	179	12	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4002	179	9	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4008	179	27	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4014	180	19	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4021	180	7	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4027	180	26	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4033	181	21	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4040	181	20	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4046	181	4	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4052	181	25	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4057	182	21	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4058	182	23	<p></p>	2020-03-09 10:08:30	2020-03-09 10:15:45
4065	182	12	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4071	182	5	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4077	182	3	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4084	183	16	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4090	183	11	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4096	183	6	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4103	183	8	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4109	184	17	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4115	184	13	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:45
4122	184	9	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4128	184	27	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4134	185	19	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4141	185	7	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4147	185	26	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4153	186	21	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4160	186	20	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4166	186	4	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4172	186	25	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4177	187	21	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4178	187	23	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4185	187	12	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4191	187	5	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4197	187	3	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4204	188	16	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4210	188	14	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4216	188	26	<p></p>	2020-03-09 10:08:31	2020-03-09 10:15:46
4223	189	23	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4229	189	20	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4235	189	4	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4242	189	3	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4248	190	22	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4254	190	12	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:46
4261	190	6	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4267	190	1	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4273	191	16	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4280	191	13	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4286	191	2	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4292	191	8	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4297	192	16	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4298	192	17	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4305	192	14	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4311	192	9	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4317	192	27	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4324	193	10	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4330	193	7	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4336	193	26	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4343	194	23	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4349	194	20	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4355	194	4	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4362	194	3	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4368	195	22	<p></p>	2020-03-09 10:08:32	2020-03-09 10:15:47
4374	195	12	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:47
4381	195	6	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:47
4387	195	1	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:47
4393	196	16	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:47
4400	196	13	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4406	196	2	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4412	196	8	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4417	197	16	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4418	197	17	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4425	197	14	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4431	197	9	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4437	197	27	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4444	198	11	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4450	198	2	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4456	198	8	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4463	199	18	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4469	199	13	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4475	199	2	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4482	199	27	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4488	200	10	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4494	200	7	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4501	200	3	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4507	201	22	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4513	201	12	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4520	201	2	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4526	201	27	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:48
4532	202	10	<p></p>	2020-03-09 10:08:33	2020-03-09 10:15:49
4537	202	14	<p></p>	2020-03-09 10:08:34	2020-03-09 10:15:49
4539	202	6	<p></p>	2020-03-09 10:08:34	2020-03-09 10:15:49
1051	75	4	<div><br></div><div>Hot (MM-GL, IE-VJ, p 57)</div><div><br></div>	2020-02-26 19:13:47	2020-03-09 10:16:14
1052	75	8	<div><br></div><div><br></div><ol><li>Non-diligent (IE-VJ, p 83)</li><li>test</li></ol><div><br></div><div><br></div>	2020-02-26 19:13:47	2020-03-09 10:16:14
1055	75	16	<div><br></div><div>- It is a secretion of the intestine of the pot wale (physeter macrocephalus), who lives in the indian ocean and calm ocean (HW)<br>- Secretion of whale. The whale is rarely on the surface of the sea (MM-GL).<br>- Mixture of Puls and Gels (MM-GL)<br>- Syphilitic (MM-GL) One of the most deep acting remedies (MM-GL) Farrington: the remedy acts very fast</div><div><br></div>	2020-02-26 19:13:47	2020-03-09 10:17:42
1056	75	17	<div><br></div><div>- Introverted and very reserved out of embarrassment (IE-VJ)<br>- Timid, bashful, anxious, restless, starting (MM-GL)<br>- Shy, bashful -&gt; ego behind (similar to Plat) (MM-GL<br>- A lot of Ego and Esteem (MM-GL)<br>- Very inquisitive (IE-VJ)<br>- Jump from one subject to the another (IE-VJ)<br>- Cannot bear to be looked at (MM-GL)<br>- Wants to be alone (MM-GL)<br>- EMBARASSMENT: -&gt; does not want people to look at him (MM-GL) -&gt; Urination in public impossible (Nat-m) (MM-GL) -&gt; Cannot do anything in front of others (MM-GL) -&gt; When performing alone, he can perform very well but not in presence of others (MM-GL)<br>- excitable, nervous (NI-2014)</div><div><br></div>	2020-02-26 19:13:47	2020-03-09 10:17:42
871	56	12	<div>- Timid, bashful people or children (IE-VJ)&nbsp;<br>- Grown-ups who come with a parent or spouse who does more of the talking (because they are not confident of themselves) (IE-VJ)&nbsp;<br>- People who talk too much or show over-confidence but sound foolish (IE-VJ)&nbsp;<br>- People who do not understand the physician's questions at one stroke and give thoroughly confused or wrong answers (IE-VJ) (give wrong address or number)(MM-GL)&nbsp;<br>- When any amount of instructions or explanations the physician gibes is a waste (IE-VJ)&nbsp;<br>- Patients who repeat the same mistake again and again (IE_VJ)&nbsp;<br>- People who do not understand the importance of important things (IE-VJ). I.e. has cancer and the only thing he is thinking about is a black spot at the skin (MM-GL)&nbsp;<br>- People who are inattentive(unobservant), with weak memory (IE-VJ)&nbsp;<br>- People who do fixed jobs for years (IE_VJ)&nbsp;<br>- People who are fixed in their routine and do not have the adaptability to change (IE-VJ)&nbsp;<br>- People who cannot use modern gadgets because they cannot understand anything new and hence have no confidence to do so (IE-VJ)&nbsp;<br>- People who have no creativity (IE-VJ)&nbsp;<br>- People who have everything Misplaced, i.e. MISPLACED understanding of seriousness, attachments, affection, obstinacy, actions, opinions and behavior not related to age (IE-VJ)&nbsp;<br>- Slowness of every thing (IE-VJ)&nbsp;<br>&nbsp;<br>- When we see people who have not grown to a normal height and stature (IE-VJ)&nbsp;<br>- Those who bald early by 20-25 years of age and show a receding hairline from the frontal region (IE-VJ)&nbsp;<br>- Rounded features, knobby nose, occasionally a mixture of rounded and squarish face (IE-VJ)&nbsp;<br>- misplaced anxiety (PV-S-10/14)</div>	2020-02-26 19:13:47	2020-03-09 10:18:00
872	56	16	<div>- SLOWNESS of everything (IE-VJ)&nbsp;<br>Alum, Carbons, Nat, Bar&nbsp;<br>Tub (internally restless – have not the strength to do so – only mentally fast – body is too weak → he drives fast or is watching fast sports (Op., Cann-i., Kali-bi. -&gt; only slow Kali; fat, thick neck, more sycotic, less syphilitic (other Kalis are fast))</div><div>&nbsp;- Development (IE-VJ) (delayed walking)(MM-GL)&nbsp;<br>&nbsp;- Slow or under-functioning of organs&nbsp;<br>&nbsp;- Dwarfish or retarded growth&nbsp;<br>&nbsp;- In understanding and reacting&nbsp;<br>&nbsp;- Progress of disease e.g. slow, indolent, non-healing ulcers&nbsp;<br>&nbsp;<br>Sycotic (MM-GL)&nbsp;<br>Sycosis - Shallow</div>	2020-02-26 19:13:47	2020-03-09 10:18:00
873	56	17	<div>- Timid, bashful people or children (IE-VJ)&nbsp;<br>- Grown-ups who come with a parent or spouse who does more of the talking (because they are not confident of themselves) (IE-VJ)&nbsp;<br>- People who talk too much or show over-confidence but sound foolish (IE-VJ)&nbsp;<br>- People who do not understand the physician's questions at one stroke and give thoroughly confused or wrong answers (IE-VJ)&nbsp;<br>- When any amount of instructions or explanations the physician gibes is a waste (IE-VJ)&nbsp;<br>- Patients who repeat the same mistake again and again (IE_VJ)&nbsp;<br>- People who do not understand the importance of important things (IE-VJ)&nbsp;<br>- People who are inattentive(unobservant), with weak memory (IE-VJ)&nbsp;<br>- People who do fixed jobs for years (IE_VJ)&nbsp;<br>- People who are fixed in their routine and do not have the adaptability to change (IE-VJ) -&gt; (aversion to change: Kali – come out of timidity) (MM-GL)&nbsp;<br>- People who cannot use modern gadgets because they cannot understand anything new and hence have no confidence to do so (IE-VJ) -&gt; (they always feel or are convinced that they are incapable (MM-GL))&nbsp;<br>- People who have no creativity (IE-VJ). They can do art but it comes not out of their mind – they follow instructions of others (MM-GL)&nbsp;<br>- People who have everything Misplaced, i.e. MISPLACED understanding of seriousness, attachments, affection, obstinacy, actions, opinions and behavior not related to age (IE-VJ)&nbsp;<br>- Slowness of everything (IE-VJ)&nbsp;<br>- Weak-willed (MM-GL)&nbsp;<br>- Mischevious (MM-GL)&nbsp;<br>- Short of intelligence. Misplaced fear and anxiety and misplaced opinions (MM-GL)&nbsp;<br>- Indiscretion (MM-GL)&nbsp;<br>- Misadventures (MM-GL)&nbsp;<br>- Lack of thinking power (but can be intellectual). The message has not reached the brain. Everything is too short (MM-GL)&nbsp;<br>- Silly, foolish. Not bothered about consequences (MM-GL)&nbsp;<br>&nbsp;<br>MISPLACED:&nbsp;<br>- Anxiety – fears (no marriage because sister had pain in first intercourse)(MM-GL)&nbsp;<br>- Attachment – Affections (MM-GL)&nbsp;<br>- Courage – confidence (does not understand the consequences – e.g. handle electric gadgets without switch off before, child is jumping from 2nd floor, but Bar-c. is proud of this son) (MM-GL)&nbsp;<br>- Actions (MM-GL)&nbsp;<br>- Opinions (MM-GL)&nbsp;<br>- Understanding of seriousness (MM-GL)&nbsp;<br>- Bahaviours not related to age (lady behaves like a young girl) (MM-GL)&nbsp;<br>- Looks - young look old or old look young (MM-GL)&nbsp;<br>- Suspicious (MM-GL)</div>	2020-02-26 19:13:47	2020-03-09 10:18:00
\.


--
-- Data for Name: remedies; Type: TABLE DATA; Schema: public; Owner: materia_medica
--

COPY public.remedies (id, name, acronym, created_at, updated_at) FROM stdin;
1	Sulphur	sulph	2020-02-26 19:02:42	2020-02-26 19:02:42
2	Sepia officinalis	sep	2020-02-26 19:02:42	2020-02-26 19:02:42
3	Lycopodium clavatum	lyc	2020-02-26 19:02:42	2020-02-26 19:02:42
4	Phosphorus	phos	2020-02-26 19:02:42	2020-02-26 19:02:42
5	Nux vomica	nux-v	2020-02-26 19:02:42	2020-02-26 19:02:42
6	China officinalis	chin	2020-02-26 19:02:42	2020-02-26 19:02:42
7	Thuja occidentalis	thuj	2020-02-26 19:02:42	2020-02-26 19:02:42
8	Medorrhinum	med	2020-02-26 19:02:42	2020-02-26 19:02:42
9	Platinum metallicum	plat	2020-02-26 19:02:42	2020-02-26 19:02:42
10	Ammonium muriaticum	am-m	2020-02-26 19:02:42	2020-02-26 19:02:42
11	Anacardium orientale - TO DO	anac	2020-02-26 19:02:42	2020-02-26 19:02:42
12	Arsenicum album	ars	2020-02-26 19:02:42	2020-02-26 19:02:42
13	Calcarea phosphorica	calc-p	2020-02-26 19:02:42	2020-02-26 19:02:42
14	Iodium	iod	2020-02-26 19:02:42	2020-02-26 19:02:42
15	Ferrums	ferr	2020-02-26 19:02:42	2020-02-26 19:02:42
16	Baryta sulphurica	bar-s	2020-02-26 19:02:42	2020-02-26 19:02:42
17	Magnesium sulphuricum	mag-s	2020-02-26 19:02:42	2020-02-26 19:02:42
18	Opium	op	2020-02-26 19:02:42	2020-02-26 19:02:42
19	Causticum	caust	2020-02-26 19:02:42	2020-02-26 19:02:42
20	Calcarea sulphurica	calc-s	2020-02-26 19:02:42	2020-02-26 19:02:42
21	Bufo rana	bufo	2020-02-26 19:02:42	2020-02-26 19:02:42
22	Sulphur iodatum	sul-i	2020-02-26 19:02:42	2020-02-26 19:02:42
23	Lachesis muta	lach	2020-02-26 19:02:42	2020-02-26 19:02:42
24	Coffea	coff	2020-02-26 19:02:42	2020-02-26 19:02:42
25	Hyoscyamus niger	hyos	2020-02-26 19:02:42	2020-02-26 19:02:42
26	Cannabis indica	cann-i	2020-02-26 19:02:42	2020-02-26 19:02:42
27	Veratrum album	verat	2020-02-26 19:02:42	2020-02-26 19:02:42
28	Mercurius solubilis	merc	2020-02-26 19:02:42	2020-02-26 19:02:42
29	Carcinosinum	carc	2020-02-26 19:02:42	2020-02-26 19:02:42
30	Cocculus indicus	cocc	2020-02-26 19:02:42	2020-02-26 19:02:42
31	Zincum metallicum	zinc	2020-02-26 19:02:42	2020-02-26 19:02:42
32	Mercurius corrosivus	merc-c	2020-02-26 19:02:42	2020-02-26 19:02:42
33	Mercurius iodatus flavus	merc-i-f	2020-02-26 19:02:42	2020-02-26 19:02:42
34	Mercurius iodatus ruber	merc-i-r	2020-02-26 19:02:42	2020-02-26 19:02:42
35	Silicea	sil	2020-02-26 19:02:42	2020-02-26 19:02:42
36	Ignatia amara	ign	2020-02-26 19:02:42	2020-02-26 19:02:42
37	Pulsatilla pratensis/vulgaris	Puls	2020-02-26 19:02:42	2020-02-26 19:02:42
38	Belladonna	bell	2020-02-26 19:02:42	2020-02-26 19:02:42
39	Stramonium	stram	2020-02-26 19:02:42	2020-02-26 19:02:42
40	Sulphuricum acidum	sul-ac	2020-02-26 19:02:42	2020-02-26 19:02:42
41	Hepar sulphur	hep	2020-02-26 19:02:42	2020-02-26 19:02:42
43	Natrium muriaticum	nat-m	2020-02-26 19:02:42	2020-02-26 19:02:42
45	Chamomilla	cham	2020-02-26 19:02:42	2020-02-26 19:02:42
46	Argentum nitricum	arg-n	2020-02-26 19:02:42	2020-02-26 19:02:42
47	Moschus	mosch	2020-02-26 19:02:42	2020-02-26 19:02:42
48	Morphinum	morph	2020-02-26 19:02:42	2020-02-26 19:02:42
49	Natrium carbonicum	nat-c	2020-02-26 19:02:42	2020-02-26 19:02:42
50	Crotalus horridus	crot-h	2020-02-26 19:02:42	2020-02-26 19:02:42
51	Crotalus cascavella	crot-c	2020-02-26 19:02:42	2020-02-26 19:02:42
52	Naja tripudians	naja	2020-02-26 19:02:42	2020-02-26 19:02:42
53	Elaps corallinus	elaps	2020-02-26 19:02:42	2020-02-26 19:02:42
54	Cenchris contortrix	cench	2020-02-26 19:02:42	2020-02-26 19:02:42
55	Staphisagria	staph	2020-02-26 19:02:42	2020-02-26 19:02:42
56	Baryta carbonica -	bar-c	2020-02-26 19:02:42	2020-02-26 19:02:42
57	Natrium phosphoricum	nat-p	2020-02-26 19:02:42	2020-02-26 19:02:42
58	Natrium sulphuricum	nat-s	2020-02-26 19:02:42	2020-02-26 19:02:42
59	Natrium arsenicosum	nat-ar	2020-02-26 19:02:42	2020-02-26 19:02:42
60	Antimonium crudum	ant-c	2020-02-26 19:02:42	2020-02-26 19:02:42
61	Antimonium tartaricum	ant-t	2020-02-26 19:02:42	2020-02-26 19:02:42
62	Aconitum napellus	acon	2020-02-26 19:02:42	2020-02-26 19:02:42
63	Palladium metallicum	pall	2020-02-26 19:02:42	2020-02-26 19:02:42
64	Stannum metallicum	stann	2020-02-26 19:02:42	2020-02-26 19:02:42
65	Kalium phosphoricum	kali-p	2020-02-26 19:02:42	2020-02-26 19:02:42
66	Chocolate	choc	2020-02-26 19:02:42	2020-02-26 19:02:42
67	Manganum	mang	2020-02-26 19:02:42	2020-02-26 19:02:42
68	Aloe socotrina	aloe	2020-02-26 19:02:42	2020-02-26 19:02:42
69	Tarentula hispanica	tarent	2020-02-26 19:02:42	2020-02-26 19:02:42
70	Tarentula cubensis	tarent-c	2020-02-26 19:02:42	2020-02-26 19:02:42
71	Agaricus muscarius	agar	2020-02-26 19:02:42	2020-02-26 19:02:42
72	Paris quadrifolia	par	2020-02-26 19:02:42	2020-02-26 19:02:42
73	Alumina -	alum	2020-02-26 19:02:42	2020-02-26 19:02:42
74	Cimicifuga racemosa -	cimic	2020-02-26 19:02:42	2020-02-26 19:02:42
75	Ambra grisea	ambr	2020-02-26 19:02:42	2020-02-26 19:02:42
76	Viola odorata	viol-o	2020-02-26 19:02:42	2020-02-26 19:02:42
77	Camphora officinalis	camph	2020-02-26 19:02:42	2020-02-26 19:02:42
78	Pyrogenium	pyrog	2020-02-26 19:02:42	2020-02-26 19:02:42
79	Lachnanthes tinctoria	lachn	2020-02-26 19:02:42	2020-02-26 19:02:42
80	Bovista lycoperdon	bov	2020-02-26 19:02:42	2020-02-26 19:02:42
81	Rhus toxicodendron	rhus-t	2020-02-26 19:02:42	2020-02-26 19:02:42
82	Gelsemium sempervirens	gels	2020-02-26 19:02:42	2020-02-26 19:02:42
83	Plumbum metallicum	plb	2020-02-26 19:02:42	2020-02-26 19:02:42
84	Phosphoricum acidum	ph-ac	2020-02-26 19:02:42	2020-02-26 19:02:42
85	Carbo vegetabilis	carb-v	2020-02-26 19:02:42	2020-02-26 19:02:42
86	Graphites	graph	2020-02-26 19:02:42	2020-02-26 19:02:42
87	Petroleum	petr	2020-02-26 19:02:42	2020-02-26 19:02:42
97	Ammonium carbonicum	am-c	2020-02-26 19:02:42	2020-02-26 19:02:42
98	Magnesium carbonicum	mag-c	2020-02-26 19:02:42	2020-02-26 19:02:42
99	Magnesium muriaticum	mag-m	2020-02-26 19:02:42	2020-02-26 19:02:42
110	Nitricum acidum	nit-ac	2020-02-26 19:02:42	2020-02-26 19:02:42
111	Granite	granit	2020-02-26 19:02:42	2020-02-26 19:02:42
112	Ammonium Family	\N	2020-02-26 19:02:42	2020-02-26 19:02:42
113	Carbons Family	\N	2020-02-26 19:02:42	2020-02-26 19:02:42
114	Kali Family	\N	2020-02-26 19:02:42	2020-02-26 19:02:42
115	Magnesia Family	\N	2020-02-26 19:02:42	2020-02-26 19:02:42
116	Mercuries Family	\N	2020-02-26 19:02:42	2020-02-26 19:02:42
117	Bryonia alba	bry	2020-02-26 19:02:42	2020-02-26 19:02:42
118	Arnica montana	arn	2020-02-26 19:02:42	2020-02-26 19:02:42
119	Colocynthis	coloc	2020-02-26 19:02:42	2020-02-26 19:02:42
120	Ipecacuanha -	ip	2020-02-26 19:02:42	2020-02-26 19:02:42
121	Marble white	marb-w	2020-02-26 19:02:42	2020-02-26 19:02:42
122	Cuprum metallicum	cupr	2020-02-26 19:02:42	2020-02-26 19:02:42
123	Baryta muriatica - TO DO	bar-m	2020-02-26 19:02:42	2020-02-26 19:02:42
124	Aurums	aur	2020-02-26 19:02:42	2020-02-26 19:02:42
125	Natrium Family	\N	2020-02-26 19:02:42	2020-02-26 19:02:42
126	Acid Family	\N	2020-02-26 19:02:42	2020-02-26 19:02:42
127	Fluoric acid	fl-ac	2020-02-26 19:02:42	2020-02-26 19:02:42
128	Tuberculinum	tub	2020-02-26 19:02:42	2020-02-26 19:02:42
129	Calcarea carbonica -	calc	2020-02-26 19:02:42	2020-02-26 19:02:42
130	Kalium carbonicum	kali-c	2020-02-26 19:02:42	2020-02-26 19:02:42
131	Cina maritima -	cina	2020-02-26 19:02:42	2020-02-26 19:02:42
132	Cicuta virosa -	cic	2020-02-26 19:02:42	2020-02-26 19:02:42
133	Conium maculatum	con	2020-02-26 19:02:42	2020-02-26 19:02:42
134	Germanium metallicum	germ-met	2020-02-26 19:02:42	2020-02-26 19:02:42
135	Syphilinum	Syp	2020-02-26 19:02:42	2020-02-26 19:02:42
136	Helleborus niger	hell	2020-02-26 19:02:42	2020-02-26 19:02:42
137	Strontium carbonicum	stront-c	2020-02-26 19:02:42	2020-02-26 19:02:42
138	Kreosotum -	kreos	2020-02-26 19:02:42	2020-02-26 19:02:42
139	Baryta phosphorica -	bar-p	2020-02-26 19:02:42	2020-02-26 19:02:42
140	Calcarea fluorata -	calc-f	2020-02-26 19:02:42	2020-02-26 19:02:42
141	Calcarea iodatum -	calc-i	2020-02-26 19:02:42	2020-02-26 19:02:42
142	Calcarea muriatica	calc-m	2020-02-26 19:02:42	2020-02-26 19:02:42
143	Calcarea family	\N	2020-02-26 19:02:42	2020-02-26 19:02:42
144	Nux moschata	nux-m	2020-02-26 19:02:42	2020-02-26 19:02:42
145	Arsenicum iodatum	Ars-i	2020-02-26 19:02:42	2020-02-26 19:02:42
146	Arsenicum sulphuratum flavum	Ars-s-f	2020-02-26 19:02:42	2020-02-26 19:02:42
147	Kalium iodatum	kali-i	2020-02-26 19:02:42	2020-02-26 19:02:42
148	Name_aecdd419ea	Akronym_aecdd419ea	2020-02-26 19:02:42	2020-02-26 19:02:42
149	Name_7e74f6f64a	Akronym_7e74f6f64a	2020-02-26 19:02:42	2020-02-26 19:02:42
150	Name_c84b2b1b48	Akronym_c84b2b1b48	2020-02-26 19:02:42	2020-02-26 19:02:42
151	Melilotus officinalis	Meli	2020-02-26 19:02:42	2020-02-26 19:02:42
152	Quellenverzeichnis	Quelle	2020-02-26 19:02:42	2020-02-26 19:02:42
153	Carboneum sulphuratum	Carbn-s	2020-02-26 19:02:42	2020-02-26 19:02:42
154	Name_64e06a4fc3	Akronym_64e06a4fc3	2020-02-26 19:02:42	2020-02-26 19:02:42
155	Name_da52d30521	Akronym_da52d30521	2020-02-26 19:02:42	2020-02-26 19:02:42
156	Cinnabaris	Cinnb	2020-02-26 19:02:42	2020-02-26 19:02:42
157	Mezereum	mez	2020-02-26 19:02:42	2020-02-26 19:02:42
158	Name_5820931451	Akronym_5820931451	2020-02-26 19:02:42	2020-02-26 19:02:42
159	Theridion	Ther	2020-02-26 19:02:42	2020-02-26 19:02:42
160	Asarum europaeum	Asar	2020-02-26 19:02:42	2020-02-26 19:02:42
161	Asa foetida	Asaf	2020-02-26 19:02:42	2020-02-26 19:02:42
162	Spongia tosta	Spong	2020-02-26 19:02:42	2020-02-26 19:02:42
163	Apis mellifica	Apis	2020-02-26 19:02:42	2020-02-26 19:02:42
164	Sanguinaria	Sang	2020-02-26 19:02:42	2020-02-26 19:02:42
165	Name_a5b510d6d6	Akronym_a5b510d6d6	2020-02-26 19:02:42	2020-02-26 19:02:42
166	picricum acidum	pic-ac	2020-02-26 19:02:42	2020-02-26 19:02:42
167	Digitalis purpurea	Dig	2020-02-26 19:02:42	2020-02-26 19:02:42
168	Strychninum purum	Stry	2020-02-26 19:02:42	2020-02-26 19:02:42
169	Name_50d9b9432e	Akronym_50d9b9432e	2020-02-26 19:02:42	2020-02-26 19:02:42
170	Name_340e4162cf	Akronym_340e4162cf	2020-02-26 19:02:42	2020-02-26 19:02:42
171	Name_6b099e8d6f	Akronym_6b099e8d6f	2020-02-26 19:02:42	2020-02-26 19:02:42
172	Name_dde0d73b3e	Akronym_dde0d73b3e	2020-02-26 19:02:42	2020-02-26 19:02:42
173	Name_e265478578	Akronym_e265478578	2020-02-26 19:02:42	2020-02-26 19:02:42
174	Name_7b5caabd95	Akronym_7b5caabd95	2020-02-26 19:02:42	2020-02-26 19:02:42
175	Name_10b812d0e8	Akronym_10b812d0e8	2020-02-26 19:02:42	2020-02-26 19:02:42
176	Name_8cbfe805ce	Akronym_8cbfe805ce	2020-02-26 19:02:42	2020-02-26 19:02:42
177	Cannabis sativa	cann-s	2020-02-26 19:02:42	2020-02-26 19:02:42
178	Secale cornutum	sec	2020-02-26 19:02:42	2020-02-26 19:02:42
179	Kalium bromatum	kali-br	2020-02-26 19:02:42	2020-02-26 19:02:42
180	Oleander	olnd	2020-02-26 19:02:42	2020-02-26 19:02:42
181	Hypericum	Hyper	2020-02-26 19:02:42	2020-02-26 19:02:42
182	Lyssinum	Lyss	2020-02-26 19:02:42	2020-02-26 19:02:42
183	Phytolacca decandra	Phyt	2020-02-26 19:02:42	2020-02-26 19:02:42
184	Colchicum	Colch	2020-02-26 19:02:42	2020-02-26 19:02:42
185	Chininum sulphuricum	Chin-s	2020-02-26 19:02:42	2020-02-26 19:02:42
186	Abrotanum	Abrot	2020-02-26 19:02:42	2020-02-26 19:02:42
187	Agave americana	Agav-a	2020-02-26 19:02:42	2020-02-26 19:02:42
188	Muriaticum acidum	Mur-ac	2020-02-26 19:02:42	2020-02-26 19:02:42
189	Androctonus amoreuxii hebraeus	Androc	2020-02-26 19:02:42	2020-02-26 19:02:42
190	Sambucus nigra	Samb	2020-02-26 19:02:42	2020-02-26 19:02:42
191	Vipera berus	Vip	2020-02-26 19:02:42	2020-02-26 19:02:42
192	Bambusa arundinacea	Bamb	2020-02-26 19:02:42	2020-02-26 19:02:42
193	Anhalonium lewinii	Anh	2020-02-26 19:02:42	2020-02-26 19:02:42
194	Valeriana officinalis	Valer	2020-02-26 19:02:42	2020-02-26 19:02:42
195	Lac caninum	Lac-c	2020-02-26 19:02:42	2020-02-26 19:02:42
196	Borax veneta	Borx	2020-02-26 19:02:42	2020-02-26 19:02:42
197	Carbo animalis	Carb-an	2020-02-26 19:02:42	2020-02-26 19:02:42
198	Magnesium phosphoricum	Mag-p	2020-02-26 19:02:42	2020-02-26 19:02:42
199	AAAAAA	aaa	2020-02-26 19:02:42	2020-02-26 19:02:42
200	Kalium bichromicum	kali-bi	2020-02-26 19:02:42	2020-02-26 19:02:42
201	Kalium arsenicosum	kali-ars	2020-02-26 19:02:42	2020-02-26 19:02:42
202	Kalium muriaticum	kali-m	2020-02-26 19:02:42	2020-02-26 19:02:42
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: materia_medica
--

COPY public.schema_migrations (version, created_at) FROM stdin;
20200226183157	2020-02-26 18:58:53
20200226183207	2020-02-26 18:58:53
20200226183213	2020-02-26 18:58:53
20200301204510	2020-03-01 20:51:36
20200308120411	\N
20200309071234	\N
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: materia_medica
--

SELECT pg_catalog.setval('public.categories_id_seq', 27, true);


--
-- Name: entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: materia_medica
--

SELECT pg_catalog.setval('public.entries_id_seq', 4545, true);


--
-- Name: remedies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: materia_medica
--

SELECT pg_catalog.setval('public.remedies_id_seq', 203, false);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: materia_medica
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: materia_medica
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: entries entries_pkey; Type: CONSTRAINT; Schema: public; Owner: materia_medica
--

ALTER TABLE ONLY public.entries
    ADD CONSTRAINT entries_pkey PRIMARY KEY (id);


--
-- Name: remedies remedies_pkey; Type: CONSTRAINT; Schema: public; Owner: materia_medica
--

ALTER TABLE ONLY public.remedies
    ADD CONSTRAINT remedies_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: materia_medica
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: categories_sorting_index; Type: INDEX; Schema: public; Owner: materia_medica
--

CREATE INDEX categories_sorting_index ON public.categories USING btree (sorting);


--
-- Name: entries_category_id_index; Type: INDEX; Schema: public; Owner: materia_medica
--

CREATE INDEX entries_category_id_index ON public.entries USING btree (category_id);


--
-- Name: entries_remedy_id_category_id_index; Type: INDEX; Schema: public; Owner: materia_medica
--

CREATE UNIQUE INDEX entries_remedy_id_category_id_index ON public.entries USING btree (remedy_id, category_id);


--
-- Name: entries_remedy_id_index; Type: INDEX; Schema: public; Owner: materia_medica
--

CREATE INDEX entries_remedy_id_index ON public.entries USING btree (remedy_id);


--
-- Name: remedies_acronym_index; Type: INDEX; Schema: public; Owner: materia_medica
--

CREATE UNIQUE INDEX remedies_acronym_index ON public.remedies USING btree (acronym);


--
-- Name: entries fk_rails_53ffb1b9d4; Type: FK CONSTRAINT; Schema: public; Owner: materia_medica
--

ALTER TABLE ONLY public.entries
    ADD CONSTRAINT fk_rails_53ffb1b9d4 FOREIGN KEY (remedy_id) REFERENCES public.remedies(id) ON DELETE CASCADE;


--
-- Name: entries fk_rails_b4563fe89e; Type: FK CONSTRAINT; Schema: public; Owner: materia_medica
--

ALTER TABLE ONLY public.entries
    ADD CONSTRAINT fk_rails_b4563fe89e FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

