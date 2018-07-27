--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

-- Started on 2018-07-27 10:03:14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2864 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 17873)
-- Name: aliment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aliment (
    fibers real,
    glucids real,
    ig real,
    lipids real,
    proteins real,
    id bigint NOT NULL,
    fk_category bigint NOT NULL
);


ALTER TABLE public.aliment OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 17880)
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    id bigint NOT NULL,
    name character varying(255)
);


ALTER TABLE public.category OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 17878)
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_id_seq OWNER TO postgres;

--
-- TOC entry 2865 (class 0 OID 0)
-- Dependencies: 197
-- Name: category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;


--
-- TOC entry 200 (class 1259 OID 17888)
-- Name: dietcomponent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dietcomponent (
    id bigint NOT NULL,
    description character varying(255),
    name character varying(255),
    visual character varying(255)
);


ALTER TABLE public.dietcomponent OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 17886)
-- Name: dietcomponent_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dietcomponent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dietcomponent_id_seq OWNER TO postgres;

--
-- TOC entry 2866 (class 0 OID 0)
-- Dependencies: 199
-- Name: dietcomponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dietcomponent_id_seq OWNED BY public.dietcomponent.id;


--
-- TOC entry 208 (class 1259 OID 17931)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 17897)
-- Name: ingredient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ingredient (
    id bigint NOT NULL,
    quantity integer,
    fk_aliment bigint NOT NULL,
    fk_recipe bigint NOT NULL
);


ALTER TABLE public.ingredient OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 17904)
-- Name: meal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meal (
    id bigint NOT NULL,
    date character varying(255),
    name character varying(255),
    fk_moment bigint NOT NULL
);


ALTER TABLE public.meal OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 17902)
-- Name: meal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.meal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meal_id_seq OWNER TO postgres;

--
-- TOC entry 2867 (class 0 OID 0)
-- Dependencies: 202
-- Name: meal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.meal_id_seq OWNED BY public.meal.id;


--
-- TOC entry 204 (class 1259 OID 17913)
-- Name: mealcomponent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mealcomponent (
    id bigint NOT NULL,
    quantity integer,
    fk_dietcomponent bigint NOT NULL,
    fk_meal bigint NOT NULL
);


ALTER TABLE public.mealcomponent OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 17920)
-- Name: moment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.moment (
    id bigint NOT NULL,
    name character varying(255)
);


ALTER TABLE public.moment OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 17918)
-- Name: moment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.moment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moment_id_seq OWNER TO postgres;

--
-- TOC entry 2868 (class 0 OID 0)
-- Dependencies: 205
-- Name: moment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.moment_id_seq OWNED BY public.moment.id;


--
-- TOC entry 207 (class 1259 OID 17926)
-- Name: recipe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipe (
    id bigint NOT NULL
);


ALTER TABLE public.recipe OWNER TO postgres;

--
-- TOC entry 2708 (class 2604 OID 17883)
-- Name: category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);


--
-- TOC entry 2709 (class 2604 OID 17891)
-- Name: dietcomponent id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dietcomponent ALTER COLUMN id SET DEFAULT nextval('public.dietcomponent_id_seq'::regclass);


--
-- TOC entry 2710 (class 2604 OID 17907)
-- Name: meal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meal ALTER COLUMN id SET DEFAULT nextval('public.meal_id_seq'::regclass);


--
-- TOC entry 2711 (class 2604 OID 17923)
-- Name: moment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moment ALTER COLUMN id SET DEFAULT nextval('public.moment_id_seq'::regclass);


--
-- TOC entry 2713 (class 2606 OID 17877)
-- Name: aliment aliment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aliment
    ADD CONSTRAINT aliment_pkey PRIMARY KEY (id);


--
-- TOC entry 2715 (class 2606 OID 17885)
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- TOC entry 2717 (class 2606 OID 17896)
-- Name: dietcomponent dietcomponent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dietcomponent
    ADD CONSTRAINT dietcomponent_pkey PRIMARY KEY (id);


--
-- TOC entry 2719 (class 2606 OID 17901)
-- Name: ingredient ingredient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredient
    ADD CONSTRAINT ingredient_pkey PRIMARY KEY (id);


--
-- TOC entry 2721 (class 2606 OID 17912)
-- Name: meal meal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meal
    ADD CONSTRAINT meal_pkey PRIMARY KEY (id);


--
-- TOC entry 2723 (class 2606 OID 17917)
-- Name: mealcomponent mealcomponent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mealcomponent
    ADD CONSTRAINT mealcomponent_pkey PRIMARY KEY (id);


--
-- TOC entry 2725 (class 2606 OID 17925)
-- Name: moment moment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moment
    ADD CONSTRAINT moment_pkey PRIMARY KEY (id);


--
-- TOC entry 2727 (class 2606 OID 17930)
-- Name: recipe recipe_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipe
    ADD CONSTRAINT recipe_pkey PRIMARY KEY (id);


--
-- TOC entry 2729 (class 2606 OID 17938)
-- Name: aliment fkarfxtpmyu0np6fuv9n72hntlk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aliment
    ADD CONSTRAINT fkarfxtpmyu0np6fuv9n72hntlk FOREIGN KEY (id) REFERENCES public.dietcomponent(id);


--
-- TOC entry 2728 (class 2606 OID 17933)
-- Name: aliment fkcnuhvaia7kf8st78lx6uhiiv5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aliment
    ADD CONSTRAINT fkcnuhvaia7kf8st78lx6uhiiv5 FOREIGN KEY (fk_category) REFERENCES public.category(id);


--
-- TOC entry 2730 (class 2606 OID 17943)
-- Name: ingredient fket0u1lu0csmooexeinunn9j1h; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredient
    ADD CONSTRAINT fket0u1lu0csmooexeinunn9j1h FOREIGN KEY (fk_aliment) REFERENCES public.aliment(id);


--
-- TOC entry 2731 (class 2606 OID 17948)
-- Name: ingredient fkfkqdc6k6qloasuohtknn2xrau; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredient
    ADD CONSTRAINT fkfkqdc6k6qloasuohtknn2xrau FOREIGN KEY (fk_recipe) REFERENCES public.recipe(id);


--
-- TOC entry 2734 (class 2606 OID 17963)
-- Name: mealcomponent fki7y1v1yqxid8meaw34p6byksi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mealcomponent
    ADD CONSTRAINT fki7y1v1yqxid8meaw34p6byksi FOREIGN KEY (fk_meal) REFERENCES public.meal(id);


--
-- TOC entry 2735 (class 2606 OID 17968)
-- Name: recipe fkifpnrnp3muge1nh09b8alueaq; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipe
    ADD CONSTRAINT fkifpnrnp3muge1nh09b8alueaq FOREIGN KEY (id) REFERENCES public.dietcomponent(id);


--
-- TOC entry 2733 (class 2606 OID 17958)
-- Name: mealcomponent fklge8kyc1w8ph3c5lecrw5emlh; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mealcomponent
    ADD CONSTRAINT fklge8kyc1w8ph3c5lecrw5emlh FOREIGN KEY (fk_dietcomponent) REFERENCES public.dietcomponent(id);


--
-- TOC entry 2732 (class 2606 OID 17953)
-- Name: meal fkrx8w3oytksgj1eojjlomc2gem; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meal
    ADD CONSTRAINT fkrx8w3oytksgj1eojjlomc2gem FOREIGN KEY (fk_moment) REFERENCES public.moment(id);


-- Completed on 2018-07-27 10:03:15

--
-- PostgreSQL database dump complete
--

