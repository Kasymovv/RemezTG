--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

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
-- Name: addresses; Type: TABLE; Schema: public; Owner: remez
--

CREATE TABLE public.addresses (
    id integer NOT NULL,
    name character varying(500),
    "time" character varying(500),
    address character varying(500),
    city integer,
    category integer,
    map character varying(500),
    phone character varying(500)
);


ALTER TABLE public.addresses OWNER TO remez;

--
-- Name: addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: remez
--

CREATE SEQUENCE public.addresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.addresses_id_seq OWNER TO remez;

--
-- Name: addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remez
--

ALTER SEQUENCE public.addresses_id_seq OWNED BY public.addresses.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: remez
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(500) NOT NULL
);


ALTER TABLE public.categories OWNER TO remez;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: remez
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO remez;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remez
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: cities; Type: TABLE; Schema: public; Owner: remez
--

CREATE TABLE public.cities (
    id integer NOT NULL,
    name character varying(500) NOT NULL
);


ALTER TABLE public.cities OWNER TO remez;

--
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: remez
--

CREATE SEQUENCE public.cities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cities_id_seq OWNER TO remez;

--
-- Name: cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remez
--

ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;


--
-- Name: items; Type: TABLE; Schema: public; Owner: remez
--

CREATE TABLE public.items (
    id integer NOT NULL,
    name character varying(500),
    price integer,
    description character varying(2000),
    availability character varying(500),
    equipment character varying(5000),
    buy character varying(500),
    category integer
);


ALTER TABLE public.items OWNER TO remez;

--
-- Name: items_id_seq; Type: SEQUENCE; Schema: public; Owner: remez
--

CREATE SEQUENCE public.items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.items_id_seq OWNER TO remez;

--
-- Name: items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remez
--

ALTER SEQUENCE public.items_id_seq OWNED BY public.items.id;


--
-- Name: repair_addresses; Type: TABLE; Schema: public; Owner: remez
--

CREATE TABLE public.repair_addresses (
    id integer NOT NULL,
    name character varying(500),
    "time" character varying(500),
    address character varying(500),
    city integer,
    category integer,
    map character varying(500),
    phone character varying(500)
);


ALTER TABLE public.repair_addresses OWNER TO remez;

--
-- Name: repair_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: remez
--

CREATE SEQUENCE public.repair_addresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.repair_addresses_id_seq OWNER TO remez;

--
-- Name: repair_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remez
--

ALTER SEQUENCE public.repair_addresses_id_seq OWNED BY public.repair_addresses.id;


--
-- Name: repair_cities; Type: TABLE; Schema: public; Owner: remez
--

CREATE TABLE public.repair_cities (
    id integer NOT NULL,
    name character varying(500) NOT NULL
);


ALTER TABLE public.repair_cities OWNER TO remez;

--
-- Name: repair_cities_id_seq; Type: SEQUENCE; Schema: public; Owner: remez
--

CREATE SEQUENCE public.repair_cities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.repair_cities_id_seq OWNER TO remez;

--
-- Name: repair_cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remez
--

ALTER SEQUENCE public.repair_cities_id_seq OWNED BY public.repair_cities.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: remez
--

CREATE TABLE public.users (
    id integer NOT NULL,
    tg_id bigint NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.users OWNER TO remez;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: remez
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO remez;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: remez
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: addresses id; Type: DEFAULT; Schema: public; Owner: remez
--

ALTER TABLE ONLY public.addresses ALTER COLUMN id SET DEFAULT nextval('public.addresses_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: remez
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: cities id; Type: DEFAULT; Schema: public; Owner: remez
--

ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);


--
-- Name: items id; Type: DEFAULT; Schema: public; Owner: remez
--

ALTER TABLE ONLY public.items ALTER COLUMN id SET DEFAULT nextval('public.items_id_seq'::regclass);


--
-- Name: repair_addresses id; Type: DEFAULT; Schema: public; Owner: remez
--

ALTER TABLE ONLY public.repair_addresses ALTER COLUMN id SET DEFAULT nextval('public.repair_addresses_id_seq'::regclass);


--
-- Name: repair_cities id; Type: DEFAULT; Schema: public; Owner: remez
--

ALTER TABLE ONLY public.repair_cities ALTER COLUMN id SET DEFAULT nextval('public.repair_cities_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: remez
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: remez
--

COPY public.addresses (id, name, "time", address, city, category, map, phone) FROM stdin;
1	МЕГА Химки	10:00 - 23:00 ежедневно 	Мос.область, г. Химки, микрорайон ИКЕА, корпус 2	1	\N	clck.ru/3DXsM4	Вы можете узнать наличие по телефону 88003330569
2	МЕГА Теплый Стан	10:00 - 22:00 ежедневно	п. Сосенское, калужское шоссе 21км	1	\N	clck.ru/3DXsNu	Вы можете узнать наличие по телефону 88003330569
3	МЕГА Белая Дача	10:00 - 23:00 ежедневно	Московская обл., 1-й Покровский проезд, 5.	1	\N	clck.ru/3DXsSh	Вы можете узнать наличие по телефону 88003330569
4	ТРК Щука	10:00 - 22:00 ежедневно	ул. Щукинская, 42	1	\N	clck.ru/3DXsTs	Вы можете узнать наличие по телефону 88003330569
5	ТРЦ Европолис	10:00 - 22:00 ежедневно	проспект Мира, 211	1	\N	clck.ru/3DXsXw	Вы можете узнать наличие по телефону 88003330569
6	ТРЦ Columbus	10:00 - 22:00 ежедневно	ул. Кировоградская, 13а	1	\N	clck.ru/3DXsaN	Вы можете узнать наличие по телефону 88003330569
7	ТРЦ Авиапарк	10:00 - 22:00 ежедневно	Ходынский бульвар, 4	1	\N	clck.ru/3DXscJ	Вы можете узнать наличие по телефону 88003330569
8	РИВ ГОШ в универмаге Пассаж	Пн-Сб: 10:00 - 22:00, Вс: 11:00 - 22:00	Невский пр. 48	2	\N	clck.ru/3DXsgB	+78125705791
9	РИВ ГОШ в ТРЦ Галерея	10:00 - 23:00 ежедневно	Лиговский проезд, 30А	2	\N	clck.ru/3DXsk9	+78124490367
10	РИВ ГОШ в универмаге Московский	11:00 - 21:00 ежедневно	Московский проезд, 205	2	\N	clck.ru/3DXsoc	+78123332211
11	РИВ ГОШ в ТЦ Авеню	10:00 - 22:00 ежедневно	проспект Ибрагимова, 56а	3	\N	clck.ru/3DXsrS	+78432124230
12	РИВ ГОШ в ТРЦ Европа-Центр	10:00 - 21:00 ежедневно	улица Театральная, 30	4	\N	clck.ru/3DXsty	+74012616318
13	РИВ ГОШ проспект Ленина 34	10:00 - 21:00 ежедневно	Проспект Ленина, 34	5	\N	clck.ru/3DXswc	+78662426696
14	РИВ ГОШ в ТРЦ Грозный Молл	10:00 - 22:00 ежедневно	проспект В.В. Путина, 38	6	\N	clck.ru/3DXsyc	+78712294779
15	РИВ ГОШ в ЦУМ	10:00 - 21:00 ежедневно	улица Орджоникидзе 63А	7	\N	clck.ru/3DXt62	+73452540009
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: remez
--

COPY public.categories (id, name) FROM stdin;
1	Пылесосы Multiclick
2	Пылесосы IQself
3	Красота
4	Увлажнители
5	Осушители
\.


--
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: remez
--

COPY public.cities (id, name) FROM stdin;
1	Москва
2	Санкт-Петербург
3	Казань
4	Калининград
5	Нальчик
6	Грозный
7	Тюмень
\.


--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: remez
--

COPY public.items (id, name, price, description, availability, equipment, buy, category) FROM stdin;
1	Pro, 503	18990	Ищете идеальное сочетание мощности и удобства? Вертикальный беспроводной пылесос Multiclick Pro RMVC-503 – это ваш выбор. Он обеспечит тщательную очистку любых поверхностей благодаря мощному мотору и инновационным насадкам. \n\nЛегкий и маневренный, этот пылесос позволяет легко достичь труднодоступных мест, а его беспроводной дизайн избавит от ограничений длиной шнура. С длинным временем работы на одной зарядке и простым обслуживанием, Multiclick Pro RMVC-503 станет надежным помощником в поддержании чистоты в вашем доме.	Доступен	Вертикальный беспроводной пылесос \nМоторизированная щетка для пола с led-подсветкой\nМоторизированная виброщетка для мебели\nНасадка-щетка для точечной уборки\nЩелевая насадка\nСъемный аккумулятор\nДержатель на стену\nДополнительный НЕРА-фильтр\nАдаптер для заряда аккумулятора\nЩеточка для очистки прибора\nБуклет и инструкция по эксплуатации.	tinyurl.com/remez503	1
2	Pro Aqua, 504	22990	Ищете идеальное сочетание мощности и удобства? Вертикальный беспроводной пылесос Multiclick Pro Aqua – это ваш выбор. Он обеспечит тщательную очистку любых поверхностей благодаря мощному мотору и инновационным насадкам. Легкий и маневренный, этот пылесос позволяет легко достичь труднодоступных мест, а его беспроводной дизайн избавит от ограничений длиной шнура. С длинным временем работы на одной зарядке и простым обслуживанием, Multiclick Pro Aqua станет надежным помощником в поддержании чистоты в вашем доме.	Доступен	Вертикальный беспроводной пылесос\nМоторизированная щетка для пола с LED-подсветкой\nМоторизированная моющая насадка\nМоторизированная виброщетка для мебели\nНасадка-щетка для точечной уборки\nЩелевая насадка\nСъемный аккумулятор\nДержатель на стену\nДополнительный НЕРА-фильтр\nАдаптер для заряда аккумулятора\nЩеточка для очистки прибора\nБуклет и инструкция по эксплуатации.	tinyurl.com/remez504	1
3	Pro Aqua Plus, 505	28990	Ищете идеальное сочетание мощности и удобства? Вертикальный беспроводной пылесос Multiclick Pro Aqua Plus – это ваш выбор. Он обеспечит тщательную очистку любых поверхностей благодаря мощному мотору и инновационным насадкам. Легкий и маневренный, этот пылесос позволяет легко достичь труднодоступных мест, а его беспроводной дизайн избавит от ограничений длиной шнура. С длинным временем работы на одной зарядке и простым обслуживанием, Multiclick Pro Aqua Plus станет надежным помощником в поддержании чистоты в вашем доме.	Доступен	Вертикальный беспроводной пылесос\nМоторизированная насадка с LED-подсветкой для сухой уборки\nМоторизированная моющая насадка\nНасадка-щетка для точечной уборки\nМоторизированная виброщетка для мебели\nМягкая роликовая щетка для твердых полов\nГибкая насадка-перходник\nДополнительный НЕРА-фильтр\nТканевые диски\nМерная ёмкость для воды\nМоющее средство\nДва съемных аккумулятора\nДержатель на стену\nДва сетевых адаптера\nСумка для аксессуаров\nИнструкция по эксплуатации и буклет	tinyurl.com/remez505	1
4	Pro Energy, 503b	20990	Ищете идеальное сочетание мощности и удобства? Вертикальный беспроводной пылесос Multiclick Pro Energy – это ваш выбор. Он обеспечит тщательную очистку любых поверхностей благодаря мощному мотору и инновационным насадкам. Легкий и маневренный, этот пылесос позволяет легко достичь труднодоступных мест, а его беспроводной дизайн избавит от ограничений длиной шнура. С длинным временем работы на одной зарядке и простым обслуживанием, Multiclick Pro Energy станет надежным помощником в поддержании чистоты в вашем доме.	Доступен	Вертикальный беспроводной пылесос\nСъёмный аккумулятор Power Twin 2500\nНасадка для сухой уборки MotorHead Turbo\nНасадка для уборки мягкой мебели MotorHead Vibro\nЩелевая насадка\nОвальная насадка-щётка\nВалик для твёрдых покрытий\nЗапасной HEPA-фильтр\nСетевой адаптер\nКрепление на штангу настенное\nАксессуар (резак) для удаления волос с щётки.	tinyurl.com/remez503b	1
19	Model E красный, 703	30990	Позвольте себе лучшее в уходе за волосами с профессиональным феном-стайлером Model E. Благодаря мощному двигателю и инновационным технологиям, этот стильный фен обеспечивает быструю сушку и идеальное выравнивание волос. Его элегантный графитовый дизайн не только привлекает внимание, но и гарантирует долговечность и надежность. Идеален для создания различных укладок и придает вашим волосам блеск и здоровье.	Недоступен	Фен-стайлер для волос\nНасадка для сушки волос (концентратор)\nНасадка Coanda 30мм - 2шт. (для создания стойких локонов, волн и пышных укладок\nМагнитный держатель	tinyurl.com/remez703red	3
5	Pro Energy Aqua, 504b	24990	Ищете идеальное сочетание мощности и удобства? Вертикальный беспроводной пылесос Multiclick Pro Energy Aqua – это ваш выбор. Он обеспечит тщательную очистку любых поверхностей благодаря мощному мотору и инновационным насадкам. Легкий и маневренный, этот пылесос позволяет легко достичь труднодоступных мест, а его беспроводной дизайн избавит от ограничений длиной шнура. С длинным временем работы на одной зарядке и простым обслуживанием, Multiclick Pro Energy Aqua станет надежным помощником в поддержании чистоты в вашем доме.	Доступен	Вертикальный моющий пылесос\nСъёмный аккумулятор Power Twin 2500\nНасадка для сухой уборки MotorHead Turbo\nМоющая насадка для влажной уборки AquaDrive\nНасадка для уборки мягкой мебели MotorHead Vibro\nЩелевая насадка\nОвальная насадка-щётка\nВалик для твёрдых покрытий\nЗапасной HEPA-фильтр\nСетевой адаптер\nКрепление на штангу настенное\nАксессуар (резак) для удаления волос с щётки\nДополнительные тканевые диски для моющей насадки\nЁмкость для воды\nСпециально разработанное концентрированное моющее средство.	tinyurl.com/remez504b	1
6	Pro Energy Aqua Plus, 505b	28990	Ищете идеальное сочетание мощности и удобства? Вертикальный беспроводной пылесос Multiclick Pro Energy Aqua Plus  – это ваш выбор. Он обеспечит тщательную очистку любых поверхностей благодаря мощному мотору и инновационным насадкам. Легкий и маневренный, этот пылесос позволяет легко достичь труднодоступных мест, а его беспроводной дизайн избавит от ограничений длиной шнура. С длинным временем работы на одной зарядке и простым обслуживанием, Multiclick Pro Energy Aqua Plus станет надежным помощником в поддержании чистоты в вашем доме.	Доступен	Вертикальный беспроводной пылесос\nСъёмный аккумулятор Power Twin 2500 - 2 шт\nНасадка для сухой уборки MotorHead Turbo\nМоющая насадка для влажной уборки AquaDrive\nНасадка для уборки мягкой мебели MotorHead Vibro\nЩелевая насадка\nОвальная насадка-щётка\nВалик для твёрдых покрытий\nГибкая насадка FlexyLong\nЗапасной HEPA-фильтр\nСетевой адаптер - 2 шт\nКрепление на штангу настенное\nАксессуар (резак) для удаления волос с щётки\nДополнительные тканевые диски для моющей насадки\nЁмкость для воды\nСпециально разработанное концентрированное моющее средство.	tinyurl.com/remez505b	1
7	Pro Telescopic, 533	19990	Ищете идеальное сочетание мощности и удобства? Вертикальный беспроводной пылесос Multiclick Pro Telescopic – это ваш выбор. Он обеспечит тщательную очистку любых поверхностей благодаря мощному мотору и инновационным насадкам. Легкий и маневренный, этот пылесос позволяет легко достичь труднодоступных мест, а его беспроводной дизайн избавит от ограничений длиной шнура. С длинным временем работы на одной зарядке и простым обслуживанием, Multiclick Pro Telescopic станет надежным помощником в поддержании чистоты в вашем доме.	Доступен	Вертикальный беспроводной пылесос\nШтанга\nСъёмный аккумулятор Power Twin 2500\nНасадка для сухой уборки MotorHead Turbo\nНасадка для уборки мягкой мебели MotorHead Vibro\nЩелевая насадка\nГибкая насадка\nОвальная насадка-щётка\nВалик для твёрдых покрытий\nЗапасной HEPA-фильтр\nСетевой адаптер\nКрепление на штангу настенное\nАксессуар (резак) для удаления волос с щётки.	tinyurl.com/remez533	1
8	Pro Aqua Telescopic, 534	24990	Ищете идеальное сочетание мощности и удобства? Вертикальный беспроводной пылесос Multiclick Pro Aqua Telescopic – это ваш выбор. Он обеспечит тщательную очистку любых поверхностей благодаря мощному мотору и инновационным насадкам. Легкий и маневренный, этот пылесос позволяет легко достичь труднодоступных мест, а его беспроводной дизайн избавит от ограничений длиной шнура. С длинным временем работы на одной зарядке и простым обслуживанием, Multiclick Pro Aqua Telescopic станет надежным помощником в поддержании чистоты в вашем доме.	Доступен	Вертикальный беспроводной пылесос\nСъёмный аккумулятор Power Twin 2500\nНасадка для сухой уборки MotorHead Turbo\nМоющая насадка для влажной уборки AquaDrive\nНасадка для уборки мягкой мебели MotorHead Vibro\nЩелевая насадка\nГибкая насадка\nОвальная насадка-щётка\nВалик для твёрдых покрытий\nЗапасной HEPA-фильтр\nСетевой адаптер\nКрепление на штангу настенное\nАксессуар (резак) для удаления волос с щётки\nДополнительные тканевые диски для моющей насадки\nЁмкость для воды\nСпециально разработанное концентрированное моющее средство.	tinyurl.com/remez534	1
9	Pro Energy V.2, 543	20990	Ищете идеальное сочетание мощности и удобства? Вертикальный беспроводной пылесос Multiclick Pro Energy V.2 – это ваш выбор. Он обеспечит тщательную очистку любых поверхностей благодаря мощному мотору и инновационным насадкам. Легкий и маневренный, этот пылесос позволяет легко достичь труднодоступных мест, а его беспроводной дизайн избавит от ограничений длиной шнура. С длинным временем работы на одной зарядке и простым обслуживанием, Multiclick Pro Energy V.2 станет надежным помощником в поддержании чистоты в вашем доме.	Доступен	Вертикальный беспроводной пылесос\nСъёмный аккумулятор Power Twin 2500\nНасадка для сухой уборки MotorHead Turbo\nНасадка для уборки мягкой мебели MotorHead Vibro\nЩелевая насадка\nОвальная насадка-щётка\nВалик для твёрдых покрытий\nЗапасной HEPA-фильтр\nСетевой адаптер\nКрепление на штангу настенное\nАксессуар (резак) для удаления волос с щётки.	tinyurl.com/remez543	1
10	Pro Energy V.2 Aqua, 544	24990	Ищете идеальное сочетание мощности и удобства? Вертикальный беспроводной пылесос Multiclick Pro Energy V.2 Aqua – это ваш выбор. Он обеспечит тщательную очистку любых поверхностей благодаря мощному мотору и инновационным насадкам. Легкий и маневренный, этот пылесос позволяет легко достичь труднодоступных мест, а его беспроводной дизайн избавит от ограничений длиной шнура. С длинным временем работы на одной зарядке и простым обслуживанием, Multiclick Pro Energy V.2 Aqua станет надежным помощником в поддержании чистоты в вашем доме.	Доступен	Вертикальный беспроводной пылесос\nСъёмный аккумулятор Power Twin 2500.\nНасадка для сухой уборки MotorHead Turbo.\nМоющая насадка для влажной уборки AquaDrive\nНасадка для уборки мягкой мебели MotorHead Vibro.\nЩелевая насадка.\nОвальная насадка-щётка.\nВалик для твёрдых покрытий.\nЗапасной HEPA-фильтр.\nСетевой адаптер.\nКрепление на штангу настенное.\nАксессуар (резак) для удаления волос с щётки.\nДополнительные тканевые диски для моющей насадки.\nЁмкость для воды.\nСпециально разработанное концентрированное моющее средство.	tinyurl.com/remez544	1
11	Pro Energy V.2 Aqua Plus, 545	28990	Ищете идеальное сочетание мощности и удобства? Вертикальный беспроводной пылесос Multiclick Pro Energy V.2 Aqua Plus – это ваш выбор. Он обеспечит тщательную очистку любых поверхностей благодаря мощному мотору и инновационным насадкам. Легкий и маневренный, этот пылесос позволяет легко достичь труднодоступных мест, а его беспроводной дизайн избавит от ограничений длиной шнура. С длинным временем работы на одной зарядке и простым обслуживанием, Multiclick Pro Energy V.2 Aqua Plus станет надежным помощником в поддержании чистоты в вашем доме.	Доступен	Вертикальный беспроводной пылесос.\nСъёмный аккумулятор Power Twin 2500 - 2 шт.\nНасадка для сухой уборки MotorHead Turbo.\nМоющая насадка для влажной уборки AquaDrive\nНасадка для уборки мягкой мебели MotorHead Vibro.\nЩелевая насадка.\nОвальная насадка-щётка.\nВалик для твёрдых покрытий.\nГибкая насадка FlexyLong.\nЗапасной HEPA-фильтр.\nСетевой адаптер - 2 шт.\nКрепление на штангу настенное.\nАксессуар (резак) для удаления волос с щётки.\nДополнительные тканевые диски для моющей насадки.\nЁмкость для воды.\nСпециально разработанное концентрированное моющее средство.	tinyurl.com/remez545	1
12	IQSelf, 601	39990	Обновите уборку с IQSELF RMVC-601 – передовым роботизированным моющим пылесосом. Этот умный помощник эффективно сочетает функции пылесоса и мойки, обеспечивая идеальную чистоту полов. Оснащён интеллектуальной системой навигации, RMVC-601 легко ориентируется в пространстве, обходя преграды и тщательно очищая каждую площадь. Беспроводная работа и длительное время автономной работы позволяют проводить уборку без ограничений. Простота управления через приложение и высокая эффективность делают этот пылесос незаменимым для комфортного и качественного ухода за вашим домом.	Доступен	Станция самоочистки роликовых валиков Self-Smart Clean Power Station\nФильтр HEPA11\nРоликовые валики\nЩетка для механической очистки	tinyurl.com/remez601	2
26	AeroDry 10, 311N	16990	Преобразите пространство с интеллектуальным осушителем воздуха AeroDry 10. Этот высокоэффективный осушитель оснащен передовыми технологиями управления, которые автоматически регулируют уровень влажности для максимального комфорта. Компактный и стильный дизайн идеально вписывается в любой интерьер, а интеллектуальная система обеспечивает бесшумную и энергосберегающую работу. AeroDry 10 – идеальный выбор для защиты от избыточной влаги, предотвращения образования плесени и создания здорового климата в вашем доме или офисе.	Доступен	AeroDry 10	tinyurl.com/remez311N	5
13	IQSelf, 603	46990	Обновите уборку с IQSELF RMVC-603 – передовым роботизированным моющим пылесосом. Этот умный помощник эффективно сочетает функции пылесоса и мойки, обеспечивая идеальную чистоту полов. Оснащён интеллектуальной системой навигации, RMVC-603 легко ориентируется в пространстве, обходя преграды и тщательно очищая каждую площадь. Беспроводная работа и длительное время автономной работы позволяют проводить уборку без ограничений. Простота управления через приложение и высокая эффективность делают этот пылесос незаменимым для комфортного и качественного ухода за вашим домом.	Недоступен	Станция самоочистки роликовых валиков Self-Smart Clean Power Station\nСтанция сушки валиков\nФильтр HEPA11\nРоликовые валики x2\nЩетка для механической очистки	tinyurl.com/remez603	2
14	Model S, графит, 707	23990	Ищете идеальный инструмент для стайлинга волос? Фен-стайлер Модель S - это профессиональное устройство с уникальной функцией персональной настройки температуры, что обеспечивает максимальный комфорт и защиту ваших волос. В комплект входят три насадки из графита для различных стайлинг-эффектов. Легкий, мощный и удобный в использовании, этот фен-стайлер станет вашим незаменимым помощником для создания идеальной укладки каждый день.	Доступен	Фен-стайлер для волос\nНасадка для сушки волос (концентратор)\nНасадка COANDA 30 мм- 2 шт. (для создания стойких локонов, волн и пышных укладок)\nМагнитный держатель	tinyurl.com/707graphite	3
15	Model S, графит, 707b	29890	Ищете идеальный инструмент для стайлинга волос? Фен-стайлер Model S - это профессиональное устройство с уникальной функцией персональной настройки температуры, что обеспечивает максимальный комфорт и защиту ваших волос. В комплект входят три насадки из графита для различных стайлинг-эффектов. Легкий, мощный и удобный в использовании, этот фен-стайлер станет вашим незаменимым помощником для создания идеальной укладки каждый день.	Доступен	Фен-стайлер для волос\nНасадка для сушки волос (концентратор)\nНасадка COANDA 30 мм- 2 шт. (для создания стойких локонов, волн и пышных укладок)\nНасадка COANDA 40 мм- 2 шт. (для создания стойких локонов, волн и пышных укладок)\nМагнитный держатель	tinyurl.com/707Bgraphite	3
16	Model S, белый, 708	23990	Ищете идеальный инструмент для стайлинга волос? Фен-стайлер Model S - это профессиональное устройство с уникальной функцией персональной настройки температуры, что обеспечивает максимальный комфорт и защиту ваших волос. В комплект входят три насадки из графита для различных стайлинг-эффектов. Легкий, мощный и удобный в использовании, этот фен-стайлер станет вашим незаменимым помощником для создания идеальной укладки каждый день.	Доступен	Фен-стайлер для волос\nНасадка для сушки волос (концентратор)\nНасадка COANDA 30 мм- 2 шт. (для создания стойких локонов, волн и пышных укладок)\nНасадка COANDA 40 мм- 2 шт. (для создания стойких локонов, волн и пышных укладок)\nМагнитный держатель	tinyurl.com/708white	3
17	Model S, белый, 708b	29890	Ищете идеальный инструмент для стайлинга волос? Фен-стайлер Model S - это профессиональное устройство с уникальной функцией персональной настройки температуры, что обеспечивает максимальный комфорт и защиту ваших волос. В комплект входят три насадки из графита для различных стайлинг-эффектов. Легкий, мощный и удобный в использовании, этот фен-стайлер станет вашим незаменимым помощником для создания идеальной укладки каждый день.	Доступен	Фен-стайлер для волос\nНасадка для сушки волос (концентратор)\nНасадка COANDA 30 мм- 2 шт. (для создания стойких локонов, волн и пышных укладок)\nНасадка COANDA 40 мм- 2 шт. (для создания стойких локонов, волн и пышных укладок)\nМагнитный держатель	tinyurl.com/708Bwhite	3
18	Model E графит, 701	30990	Позвольте себе лучшее в уходе за волосами с профессиональным феном-стайлером Model E. Благодаря мощному двигателю и инновационным технологиям, этот стильный фен обеспечивает быструю сушку и идеальное выравнивание волос. Его элегантный графитовый дизайн не только привлекает внимание, но и гарантирует долговечность и надежность. Идеален для создания различных укладок и придает вашим волосам блеск и здоровье.	Недоступен	Фен-стайлер для волос\nНасадка для сушки волос (концентратор)\nНасадка Coanda 30мм - 2шт. (для создания стойких локонов, волн и пышных укладок\nМагнитный держатель	tinyurl.com/701graphite	3
20	Model E Prof, 704	32990	Позвольте себе лучшее в уходе за волосами с профессиональным феном-стайлером Model E. Благодаря мощному двигателю и инновационным технологиям, этот стильный фен обеспечивает быструю сушку и идеальное выравнивание волос. Его элегантный графитовый дизайн не только привлекает внимание, но и гарантирует долговечность и надежность. Идеален для создания различных укладок и придает вашим волосам блеск и здоровье.	Доступен	Фен-стайлер для волос\nНасадка для сушки волос (концентратор)\nНасадка Final Touch для создания прямых прядей\nНасадка Диффузор для эффективной сушки кудрявых волос\nМагнитный держатель	tinyurl.com/remez704	3
21	AirCreator, 411	36990	Преобразите атмосферу вашего пространства с AirCreator – передовым гибридным климатическим комплексом. Этот уникальный прибор сочетает в себе функции очистки, увлажнения и кондиционирования воздуха, создавая идеальные условия для вашего комфорта. С высокоэффективной фильтрацией и современными технологиями управления, AirCreator обеспечивает чистый и свежий воздух, помогает поддерживать оптимальный уровень влажности и комфортную температуру. Идеальный выбор для дома и офиса, AirCreator улучшит качество воздуха и ваш комфорт в любое время года.	Недоступен	Климатический комплекс с плазмакластером \nКомпозитный фильтр BLOCK AO HEPA13+угольный \nПульт управления\nБатарейки для пульта \nПредфильтр FF-BLOCK \nБлок питания\nРуководство пользователя	tinyurl.com/remez411	4
22	AirCreator+ PLASM-AR, 411Pro	46990	Преобразите атмосферу вашего пространства с AirCreator – передовым гибридным климатическим комплексом. Этот уникальный прибор сочетает в себе функции очистки, увлажнения и кондиционирования воздуха, создавая идеальные условия для вашего комфорта. С высокоэффективной фильтрацией и современными технологиями управления, AirCreator обеспечивает чистый и свежий воздух, помогает поддерживать оптимальный уровень влажности и комфортную температуру. Идеальный выбор для дома и офиса, AirCreator улучшит качество воздуха и ваш комфорт в любое время года.	Доступен	Климатический комплекс с плазмакластером \nВыносная станция контроля качества воздуха SensoStation\nКомпозитный фильтр BLOCK AO HEPA13+угольный \nПульт управления\nБатарейки для пульта \nПредфильтр FF-BLOCK \nБлок питания\nРуководство пользователя	tinyurl.com/remez411pro	4
23	SensoStation	7990	Следите за качеством воздуха в вашем окружении с помощью Sensostation – передовая выносная станция контроля. Эта инновационная система обеспечивает точный мониторинг уровня загрязняющих веществ, температуры и влажности. Простота установки и использования позволяет легко интегрировать Sensostation в любой интерьер, обеспечивая круглосуточный контроль и своевременное реагирование на изменения. Идеальный выбор для дома, офиса или производственных помещений, Sensostation помогает поддерживать здоровый микроклимат и улучшает качество воздуха.	Доступен	Sensostation - выносная станция контроля воздуха	tinyurl.com/sensostation	5
24	AeroDry Eco	9990	Преобразите пространство с интеллектуальным осушителем воздуха AeroDry Eco. Этот высокоэффективный осушитель оснащен передовыми технологиями управления, которые автоматически регулируют уровень влажности для максимального комфорта. Компактный и стильный дизайн идеально вписывается в любой интерьер, а интеллектуальная система обеспечивает бесшумную и энергосберегающую работу. AeroDry Eco – идеальный выбор для защиты от избыточной влаги, предотвращения образования плесени и создания здорового климата в вашем доме или офисе.	Доступен	AeroDry Eco	tinyurl.com/aerodryeco	5
25	AeroDry Smart, 304	7990	Преобразите пространство с интеллектуальным осушителем воздуха AeroDry Smart. Этот высокоэффективный осушитель оснащен передовыми технологиями управления, которые автоматически регулируют уровень влажности для максимального комфорта. Компактный и стильный дизайн идеально вписывается в любой интерьер, а интеллектуальная система обеспечивает бесшумную и энергосберегающую работу. AeroDry Smart – идеальный выбор для защиты от избыточной влаги, предотвращения образования плесени и создания здорового климата в вашем доме или офисе.	Доступен	AeroDry Smart	tinyurl.com/remez304	5
27	AeroDry 15 Smart с Wi-Fi, 312	20990	Преобразите пространство с интеллектуальным осушителем воздуха AeroDry 15. Этот высокоэффективный осушитель оснащен передовыми технологиями управления, которые автоматически регулируют уровень влажности для максимального комфорта. Компактный и стильный дизайн идеально вписывается в любой интерьер, а интеллектуальная система обеспечивает бесшумную и энергосберегающую работу. AeroDry 15 – идеальный выбор для защиты от избыточной влаги, предотвращения образования плесени и создания здорового климата в вашем доме или офисе.	Доступен	AeroDry 15	tinyurl.com/remez312	5
28	AeroDry 18, 313	22990	Преобразите пространство с интеллектуальным осушителем воздуха AeroDry 18. Этот высокоэффективный осушитель оснащен передовыми технологиями управления, которые автоматически регулируют уровень влажности для максимального комфорта. Компактный и стильный дизайн идеально вписывается в любой интерьер, а интеллектуальная система обеспечивает бесшумную и энергосберегающую работу. AeroDry 18 – идеальный выбор для защиты от избыточной влаги, предотвращения образования плесени и создания здорового климата в вашем доме или офисе.	Доступен	AeroDry 18	tinyurl.com/remez313	5
29	AeroDry 23, 314	26990	Преобразите пространство с интеллектуальным осушителем воздуха AeroDry 23. Этот высокоэффективный осушитель оснащен передовыми технологиями управления, которые автоматически регулируют уровень влажности для максимального комфорта. Компактный и стильный дизайн идеально вписывается в любой интерьер, а интеллектуальная система обеспечивает бесшумную и энергосберегающую работу. AeroDry 23 – идеальный выбор для защиты от избыточной влаги, предотвращения образования плесени и создания здорового климата в вашем доме или офисе.	Доступен	AeroDry 23	tinyurl.com/remez314	5
\.


--
-- Data for Name: repair_addresses; Type: TABLE DATA; Schema: public; Owner: remez
--

COPY public.repair_addresses (id, name, "time", address, city, category, map, phone) FROM stdin;
1	Центральный клиентский сервис	Пн-Пт: 9:00 - 21:00, Сб: 10:00 - 18:00, Вск: Выходной	Рублевское шоссе 22к1	1	\N	clck.ru/3DXuB7	Телефона нет, только личное обращение
2	ТехноВекторСевер	Вт-Сб: 11:00 - 20:00	улица Звездная, 16А	2	\N	clck.ru/3DXuDZ	+78122427170
3	Бел-Сервис	Пн-Пт: 9:00 - 19:00, Сб: 10:00 - 15:00	улица Сумская 22к1	3	\N	clck.ru/3DXuFL	84722255777
4	Планета	Пн-Пт: 9:00 - 19:00, Сб: 10:00 - 16:00	улица Рионская 3	4	\N	clck.ru/3DXuGz	88442366426
5	Связь-Сети	Пн-Пт: 9:30 - 19:00, Сб: 10:00 - 17:00	улица Карла-Маркса, 12	5	\N	clck.ru/3DXuKB	83433000040
6	Сервис-Люкс	Пн-Сб: 9:00 - 20:00, Вск: 10:00 - 16:00	улица Березанская, 89	6	\N	clck.ru/3DXuNP	88612927790
7	Исток	Пн-Чт: 9:00 - 19:00, Пт: 9:00 - 18:00, Сб: 10:00 - 16:00	улица Бограда, 108	7	\N	clck.ru/3DXuVM	83912212120
8	Транссервис	Пн-Пт: 8:00 - 18:00	улица Артельная, 29, офис 102	8	\N	clck.ru/3DXuXF	78314378168
9	Плазма-Сервис	Пн-Пт: 9:00 - 19:00, Сб: 10:00 - 14:00	улица Народная, 77	9	\N	clck.ru/3DXuaJ	83832811050
10	Техник-ISE	Пн-Пт: 9:00 - 19:00, перерыв с 13:00 до 14:00, Сб-Вск: 10:00 - 16:00	14-я Линия Акушинского, 21	10	\N	clck.ru/3DXucH	+79882935515
11	Евросервис	Пн-Сб: 9:00 - 20:00, Вск: 11:00 - 17:00	улица Крисанова, 29. улица Анри Барбюса 60	11	\N	clck.ru/3DXufA	+73422363033
12	РСС	Пн-Сб: 10:00 - 18:00	Проспект Ленина, 48	12	\N	clck.ru/3DXugo	+78633200420
13	Рестарт	Пн-Пт: 10:00 - 19:00, Сб: 10:00 - 16:00	Народный Бульвар, 11, Н.П.11	13	\N	clck.ru/3DXuiS	+74912991516
14	Видикон-Сервис	Ежедневно - 9:00 - 19:00	улица Мориса Тореза, 137. улица Советской Армии, 148	14	\N	clck.ru/3DXukm	+78462626262
15	Тройка-Сервис	Пн-Пт: 10:00 - 18:00, Сб: 10:00 - 16:00	улица Болдина, 99	15	\N	clck.ru/3DXunt	+74872333947
16	ПРО-Ремонт	Пн-Пт: 9:00 - 19:00, Суббота: 10:00 - 14:00	проспект Салавата Юлаева, 59	16	\N	clck.ru/3DXup3	+73472286710
17	ВТИ-Сервис	Пн-Пт: 8:00 - 19:00, Сб-Вск: 10:00 - 16:00	проспект Ивана Яковлева, 4к2	17	\N	clck.ru/3DXuq6	+78352709555 (доб. 201)
18	РемБытТехника	Ежедневно - 8:30 - 20:00	улица Производственная, 8Б	18	\N	clck.ru/3DXusk	+78006003900
\.


--
-- Data for Name: repair_cities; Type: TABLE DATA; Schema: public; Owner: remez
--

COPY public.repair_cities (id, name) FROM stdin;
1	Москва
2	Санкт-Петербург
3	Белгород
4	Волгоград
5	Екатеринбург
6	Краснодар
7	Красноярск
8	Нижний Новгород
9	Новосибирск
10	Махачкала
11	Пермь
12	Ростов-на-Дону
13	Рязань
14	Самара
15	Тула
16	Уфа
17	Чебоксары
18	Челябинск
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: remez
--

COPY public.users (id, tg_id, created_at) FROM stdin;
1	881426541	2024-10-02 11:40:37.233754
\.


--
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remez
--

SELECT pg_catalog.setval('public.addresses_id_seq', 15, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remez
--

SELECT pg_catalog.setval('public.categories_id_seq', 5, true);


--
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remez
--

SELECT pg_catalog.setval('public.cities_id_seq', 7, true);


--
-- Name: items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remez
--

SELECT pg_catalog.setval('public.items_id_seq', 29, true);


--
-- Name: repair_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remez
--

SELECT pg_catalog.setval('public.repair_addresses_id_seq', 18, true);


--
-- Name: repair_cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remez
--

SELECT pg_catalog.setval('public.repair_cities_id_seq', 18, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: remez
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: remez
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);


--
-- Name: categories categories_name_key; Type: CONSTRAINT; Schema: public; Owner: remez
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_name_key UNIQUE (name);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: remez
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: cities cities_name_key; Type: CONSTRAINT; Schema: public; Owner: remez
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_name_key UNIQUE (name);


--
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: remez
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: remez
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);


--
-- Name: repair_addresses repair_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: remez
--

ALTER TABLE ONLY public.repair_addresses
    ADD CONSTRAINT repair_addresses_pkey PRIMARY KEY (id);


--
-- Name: repair_cities repair_cities_name_key; Type: CONSTRAINT; Schema: public; Owner: remez
--

ALTER TABLE ONLY public.repair_cities
    ADD CONSTRAINT repair_cities_name_key UNIQUE (name);


--
-- Name: repair_cities repair_cities_pkey; Type: CONSTRAINT; Schema: public; Owner: remez
--

ALTER TABLE ONLY public.repair_cities
    ADD CONSTRAINT repair_cities_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: remez
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: addresses addresses_city_fkey; Type: FK CONSTRAINT; Schema: public; Owner: remez
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_city_fkey FOREIGN KEY (city) REFERENCES public.cities(id);


--
-- Name: items items_category_fkey; Type: FK CONSTRAINT; Schema: public; Owner: remez
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_category_fkey FOREIGN KEY (category) REFERENCES public.categories(id);


--
-- Name: repair_addresses repair_addresses_city_fkey; Type: FK CONSTRAINT; Schema: public; Owner: remez
--

ALTER TABLE ONLY public.repair_addresses
    ADD CONSTRAINT repair_addresses_city_fkey FOREIGN KEY (city) REFERENCES public.repair_cities(id);


--
-- PostgreSQL database dump complete
--

