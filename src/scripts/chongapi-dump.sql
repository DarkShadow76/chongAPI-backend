--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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

--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO postgres;

--
-- Name: anfitrionas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.anfitrionas (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    id_local uuid,
    alias character varying(255) NOT NULL,
    nacionalidad character varying(255) NOT NULL,
    cuarto character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.anfitrionas OWNER TO postgres;

--
-- Name: locales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.locales (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    name_l character varying(255) NOT NULL,
    direction character varying(255) NOT NULL,
    description text NOT NULL,
    image_link character varying(255) NOT NULL,
    capacity integer NOT NULL
);


ALTER TABLE public.locales OWNER TO postgres;

--
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SequelizeMeta" (name) FROM stdin;
20231219024734-create-locales.js
20231219024908-create-anfitrionas.js
\.


--
-- Data for Name: anfitrionas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.anfitrionas (id, id_local, alias, nacionalidad, cuarto, "createdAt", "updatedAt") FROM stdin;
396fb918-88a6-448c-84ce-7c9d101c1ade	37bbff3d-4d78-486c-a774-dc71c1a14955	Jennifer	Colombiana	10	2023-12-22 17:11:21.305-05	2023-12-22 17:11:21.305-05
96dc552a-a64a-4bfe-8bad-465224429557	37bbff3d-4d78-486c-a774-dc71c1a14955	Alejandra	Ecuatoriana	11	2023-12-22 17:12:08.424-05	2023-12-22 17:12:08.424-05
8e2876ba-d66f-4975-8b60-f10a674807c5	37bbff3d-4d78-486c-a774-dc71c1a14955	Karen	Peruana	16	2023-12-22 17:12:29.887-05	2023-12-22 17:12:29.887-05
3f59ca13-8ed1-44ac-a9a5-e1619bc709ce	37bbff3d-4d78-486c-a774-dc71c1a14955	Patricia	Peruana	45	2023-12-22 17:12:52.129-05	2023-12-22 17:12:52.129-05
12059664-3020-46e9-98be-bfa297b0e552	37bbff3d-4d78-486c-a774-dc71c1a14955	Luisa	Venezolana	13	2023-12-22 17:13:20.39-05	2023-12-22 17:13:20.39-05
78748a42-380f-4900-89c5-1d12f193723c	37bbff3d-4d78-486c-a774-dc71c1a14955	Antonela	Argentina	5	2023-12-22 17:13:46.985-05	2023-12-22 17:13:46.985-05
31e03628-7d1e-4d40-a874-13ada1a3e280	37bbff3d-4d78-486c-a774-dc71c1a14955	Daniela	Venezolana	56	2023-12-22 17:14:08.45-05	2023-12-22 17:14:08.45-05
6d9b81c8-57d4-4e81-b049-ead97252cccc	37bbff3d-4d78-486c-a774-dc71c1a14955	Carolina	Colombiana	33	2023-12-22 17:14:29.884-05	2023-12-22 17:14:29.884-05
bf3ecc78-046f-40a9-bb00-2d472ece593b	37bbff3d-4d78-486c-a774-dc71c1a14955	Laura	Ecuatoriana	20	2023-12-22 17:14:54.662-05	2023-12-22 17:14:54.662-05
69651466-fb39-43f4-bcb6-6879e8d674e0	37bbff3d-4d78-486c-a774-dc71c1a14955	Sofia	Brasilera	15	2023-12-22 17:15:13.284-05	2023-12-22 17:15:13.284-05
9571ef2d-4439-4b41-89e2-1f3937dda6b9	343f5e04-fad9-463d-a204-213540100018	Daniella	Brasilera	37	2023-12-22 17:16:05.317-05	2023-12-22 17:16:05.317-05
8460cabf-45d2-4ed8-a6ad-d9fca07c0900	343f5e04-fad9-463d-a204-213540100018	Valentina	Mexicana	3	2023-12-22 17:16:42.596-05	2023-12-22 17:16:42.596-05
1bdff9dd-31d0-4627-aad5-fd4ca5266f26	343f5e04-fad9-463d-a204-213540100018	Gabriela	Mexicana	19	2023-12-22 17:16:58.075-05	2023-12-22 17:16:58.075-05
860f1e4f-10c7-4e09-ba62-e42b3c099d8c	343f5e04-fad9-463d-a204-213540100018	Michelle	Colombiana	14	2023-12-22 17:17:22.503-05	2023-12-22 17:17:22.503-05
28850ebb-47f2-4969-b4bb-2b7f0a8549fc	343f5e04-fad9-463d-a204-213540100018	Elisa	Peruana	70	2023-12-22 17:17:44.165-05	2023-12-22 17:17:44.165-05
4df312c7-9cfc-400f-a2d0-d335f4fb7f25	343f5e04-fad9-463d-a204-213540100018	Monica	Ecuatoriana	9	2023-12-22 17:18:07.651-05	2023-12-22 17:18:07.651-05
0a98d108-1f96-43c1-a670-b775fe2c7fa2	343f5e04-fad9-463d-a204-213540100018	Juliana	Argentina	28	2023-12-22 17:18:28.774-05	2023-12-22 17:18:28.774-05
3c172e0b-92af-4d61-875a-a71cb33d63ee	343f5e04-fad9-463d-a204-213540100018	Andrea	Venezolana	48	2023-12-22 17:18:48.852-05	2023-12-22 17:18:48.852-05
9b8b714a-3e1a-4864-90f2-bed28377ce01	343f5e04-fad9-463d-a204-213540100018	Cristina	Peruana	39	2023-12-22 17:19:18.06-05	2023-12-22 17:19:18.06-05
d3938aae-b06f-415d-9a20-eac46b1b16c8	343f5e04-fad9-463d-a204-213540100018	Paola	Peruana	55	2023-12-22 17:19:35.973-05	2023-12-22 17:19:35.973-05
acc7496d-af42-411b-92e0-1bf79c43c537	3acb606e-e76e-4840-a18f-c2d073ee4857	Juana	Ecuatoriana	22	2023-12-22 17:24:19.029-05	2023-12-22 17:24:19.029-05
6a46a998-4ee1-41ea-99f4-fafa216e18e8	3acb606e-e76e-4840-a18f-c2d073ee4857	Lucia	Colombiana	17	2023-12-22 17:25:00.281-05	2023-12-22 17:25:00.281-05
ede06f15-fd7b-41a5-89e4-8a21a0597e4f	3acb606e-e76e-4840-a18f-c2d073ee4857	Daniella	Brasileña	33	2023-12-22 17:25:47.854-05	2023-12-22 17:25:47.854-05
7f397ddb-afed-43cc-b698-c5c291dc9944	3acb606e-e76e-4840-a18f-c2d073ee4857	Monserrat	Peruana	18	2023-12-22 17:26:17.305-05	2023-12-22 17:26:17.305-05
3bccfe04-7646-402a-98f5-36ba6ffcc795	3acb606e-e76e-4840-a18f-c2d073ee4857	Cindy	Ecuatoriana	16	2023-12-22 17:26:34.937-05	2023-12-22 17:26:34.937-05
c3559fb8-60a9-4cad-acc3-73f35ccb05b3	3acb606e-e76e-4840-a18f-c2d073ee4857	Victoria	Venezolana	37	2023-12-22 17:26:54.617-05	2023-12-22 17:26:54.617-05
cbeac9f9-6c50-4a34-b035-f9d2fe3237f3	3acb606e-e76e-4840-a18f-c2d073ee4857	Luisa	Colombiana	26	2023-12-22 17:27:12.767-05	2023-12-22 17:27:12.767-05
efa81ca6-5e75-4b2a-933a-0f46716eb528	3acb606e-e76e-4840-a18f-c2d073ee4857	Camila	Peruana	32	2023-12-22 17:27:39.352-05	2023-12-22 17:27:39.352-05
89ead007-3d6b-402b-be8c-14ae457c9cf4	3acb606e-e76e-4840-a18f-c2d073ee4857	Carmen	Ecuatoriana	51	2023-12-22 17:28:00.75-05	2023-12-22 17:28:00.75-05
8c25d1d4-b77a-4279-8fe0-d76112175237	16a0f026-3821-48bb-a324-2458adc0f04a	Carolina	Colombiana	61	2023-12-22 17:30:12.636-05	2023-12-22 17:30:12.636-05
a568a975-9d52-4586-b149-8133ade240c6	16a0f026-3821-48bb-a324-2458adc0f04a	Maria	Peruana	53	2023-12-22 17:30:34.456-05	2023-12-22 17:30:34.456-05
8440035a-817e-4d4a-8a6b-c352841bf44e	16a0f026-3821-48bb-a324-2458adc0f04a	Daniela	Ecuatoriana	28	2023-12-22 17:30:53.134-05	2023-12-22 17:30:53.134-05
25933034-e76f-4dc1-a732-d33fcd2cdcd4	16a0f026-3821-48bb-a324-2458adc0f04a	Luisa	Boliviana	45	2023-12-22 17:31:09.936-05	2023-12-22 17:31:09.936-05
e1ec164a-f3d5-4a7a-977e-9f174bc72dd8	16a0f026-3821-48bb-a324-2458adc0f04a	Monica	Chilena	46	2023-12-22 17:31:29.183-05	2023-12-22 17:31:29.183-05
c8d2ddda-63e1-4651-8b63-882141f86837	16a0f026-3821-48bb-a324-2458adc0f04a	Laura	Argentina	52	2023-12-22 17:31:43.252-05	2023-12-22 17:31:43.252-05
6136334d-3252-4279-9d75-bb632de2c88d	16a0f026-3821-48bb-a324-2458adc0f04a	Sofia	Brasileña	17	2023-12-22 17:32:00.459-05	2023-12-22 17:32:00.459-05
14eb2549-7985-474c-b474-1b1407918cdd	16a0f026-3821-48bb-a324-2458adc0f04a	Jazmin	Salvadoreña	19	2023-12-22 17:32:21.751-05	2023-12-22 17:32:21.751-05
fdc0b46d-c908-4271-9d68-a7cc3eb7ca5a	16a0f026-3821-48bb-a324-2458adc0f04a	Michelle	Cubana	36	2023-12-22 17:32:41.933-05	2023-12-22 17:32:41.933-05
5f5832d2-90dc-46a3-af98-cae7cbe0c5ba	16a0f026-3821-48bb-a324-2458adc0f04a	Gabriela	Mexicana	31	2023-12-22 17:32:58.687-05	2023-12-22 17:32:58.687-05
a2ae2911-450e-48cd-9676-096ce941a34c	1619337d-f5f4-45c2-8577-0b104280058a	Tatiana	Boliviana	24	2023-12-22 17:34:05.516-05	2023-12-22 17:34:05.516-05
82d5ebb6-cc2a-4ed1-8575-1f291d3171bd	1619337d-f5f4-45c2-8577-0b104280058a	Stephanie	Venezolana	21	2023-12-22 17:34:24.569-05	2023-12-22 17:34:24.569-05
14e04419-7091-4fc3-ac8f-33d125432456	1619337d-f5f4-45c2-8577-0b104280058a	Andre	Panameña	47	2023-12-22 17:34:45.614-05	2023-12-22 17:34:45.614-05
3a33a925-3961-4711-836b-81ec8b1ac051	1619337d-f5f4-45c2-8577-0b104280058a	Valentina	Ecuatoriana	51	2023-12-22 17:35:07.019-05	2023-12-22 17:35:07.019-05
b41220b5-68d9-45b2-b046-a8f14d2cc08c	1619337d-f5f4-45c2-8577-0b104280058a	Victoria	Colombiana	49	2023-12-22 17:35:25.332-05	2023-12-22 17:35:25.332-05
a2563cae-44ef-4cb9-82e9-8fee04250703	1619337d-f5f4-45c2-8577-0b104280058a	Elisa	Argentina	25	2023-12-22 17:35:44.311-05	2023-12-22 17:35:44.311-05
6bd9c826-2699-4414-ae82-aab3cfcf54b9	1619337d-f5f4-45c2-8577-0b104280058a	Dayana	Brasileña	18	2023-12-22 17:36:09.692-05	2023-12-22 17:36:09.692-05
b9bad3df-dbcb-425b-b6b0-0b0ceb0114eb	1619337d-f5f4-45c2-8577-0b104280058a	Julieta	Peruana	12	2023-12-22 17:36:34.292-05	2023-12-22 17:36:34.292-05
037a4775-1b45-4fea-bb84-2d131ce37f2f	1619337d-f5f4-45c2-8577-0b104280058a	Karina	Chilena	14	2023-12-22 17:37:37.631-05	2023-12-22 17:37:37.631-05
436cad39-7a73-4f6a-99fa-44e7e160bf7d	1619337d-f5f4-45c2-8577-0b104280058a	Sara	Cubana	44	2023-12-22 17:37:00.905-05	2023-12-22 17:41:27.99-05
d72d065c-c550-4024-84c4-296a8d35534a	e7782882-bc81-459e-abc5-7a954b79c145	Estefania	Ecuatoriana	56	2023-12-22 17:45:34.038-05	2023-12-22 17:45:34.038-05
b87122a6-855d-45f9-97af-953c6fed1909	e7782882-bc81-459e-abc5-7a954b79c145	Angelica	Venezolana	67	2023-12-22 17:46:03.731-05	2023-12-22 17:46:03.731-05
70c7db94-b659-46fc-a019-db78cce9b538	e7782882-bc81-459e-abc5-7a954b79c145	Amelia	Argentina	34	2023-12-22 17:46:17.696-05	2023-12-22 17:46:17.696-05
dec112ef-1539-4955-9503-88aebf33f36b	e7782882-bc81-459e-abc5-7a954b79c145	Lorena	Boliviana	34	2023-12-22 17:46:28.88-05	2023-12-22 17:46:28.88-05
b638803b-e980-42fa-b283-3aa8e18caa4c	e7782882-bc81-459e-abc5-7a954b79c145	Luciana	Chilena	26	2023-12-22 17:46:47.49-05	2023-12-22 17:46:47.49-05
7193b7d5-e002-4599-8841-0ced38e4b9f8	e7782882-bc81-459e-abc5-7a954b79c145	Elena	Brasileña	37	2023-12-22 17:47:07.6-05	2023-12-22 17:47:07.6-05
a969d646-b19a-45f3-b972-de2e70994c1c	e7782882-bc81-459e-abc5-7a954b79c145	Renata	Colombiana	17	2023-12-22 17:47:24.427-05	2023-12-22 17:47:24.427-05
2f31b234-0d31-47a0-85a9-8a7454896f36	e7782882-bc81-459e-abc5-7a954b79c145	Martina	Mexicana	13	2023-12-22 17:47:42.957-05	2023-12-22 17:47:42.957-05
9dda0314-32e0-4e7b-a728-d8fe5fc5ff3a	e7782882-bc81-459e-abc5-7a954b79c145	Cristina	Cubana	48	2023-12-22 17:48:03.454-05	2023-12-22 17:48:03.454-05
6136cd31-d41b-4129-85b7-abcacd676ffa	e7782882-bc81-459e-abc5-7a954b79c145	Dana	Venezolana	10	2023-12-22 17:48:27.401-05	2023-12-22 17:48:27.401-05
34a0fe75-8eb0-4cbb-ada9-cdf7481526f9	3acb606e-e76e-4840-a18f-c2d073ee4857	Susana	Argentina	11	2023-12-22 18:00:15.78-05	2023-12-22 18:00:15.78-05
\.


--
-- Data for Name: locales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.locales (id, name_l, direction, description, image_link, capacity) FROM stdin;
37bbff3d-4d78-486c-a774-dc71c1a14955	Sexy Geishas	123 Main St, New York, NY	Upscale lounge with dance music and full bar in an elegant space with VIP areas.	https://example.com/sexy_geishas.jpg	250
343f5e04-fad9-463d-a204-213540100018	La Colmena	456 Park Ave, Miami, FL	Hip hop club with resident and guest DJs spinning latest hits. Casual atmosphere.	https://example.com/la_colmena.jpg	350
16a0f026-3821-48bb-a324-2458adc0f04a	Las Sirenas	789 Beach Rd, Los Angeles, CA	Intimate cocktail lounge with dance floor, full bar menu and weekly DJ events.	https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.iconscout.com%2Ficon%2Ffree%2Fpng-256%2Fbuilding-1741335-1484597.png&f=1&nofb=1&ipt=5fbcaba7a790005952edbb73de0bd194929424855e2d2b6e405044358766d35c&ipo=images	150
e7782882-bc81-459e-abc5-7a954b79c145	El Botecito	789 Beach Rd, Los Angeles, CA	Intimate cocktail lounge with dance floor, full bar menu and weekly DJ events.	https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.iconscout.com%2Ficon%2Ffree%2Fpng-256%2Fbuilding-1741335-1484597.png&f=1&nofb=1&ipt=5fbcaba7a790005952edbb73de0bd194929424855e2d2b6e405044358766d35c&ipo=images	150
1619337d-f5f4-45c2-8577-0b104280058a	El Trocadero	789 Beach Rd, Los Angeles, CA	Intimate cocktail lounge with dance floor, full bar menu and weekly DJ events.	https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.iconscout.com%2Ficon%2Ffree%2Fpng-256%2Fbuilding-1741335-1484597.png&f=1&nofb=1&ipt=5fbcaba7a790005952edbb73de0bd194929424855e2d2b6e405044358766d35c&ipo=images	150
3acb606e-e76e-4840-a18f-c2d073ee4857	Molino Rojo	Av. Siempre Viva, Los Angeles, CA	Intimate cocktail lounge with dance floor, full bar menu and weekly DJ events.	https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.iconscout.com%2Ficon%2Ffree%2Fpng-256%2Fbuilding-1741335-1484597.png&f=1&nofb=1&ipt=5fbcaba7a790005952edbb73de0bd194929424855e2d2b6e405044358766d35c&ipo=images	150
\.


--
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- Name: anfitrionas anfitrionas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.anfitrionas
    ADD CONSTRAINT anfitrionas_pkey PRIMARY KEY (id);


--
-- Name: locales locales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.locales
    ADD CONSTRAINT locales_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

