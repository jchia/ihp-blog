

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


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('77a2b11f-55f7-43d5-a178-e2eea13d2e53', 'Test title', 'Test body', '2021-10-10 17:48:15.67196+08');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body) VALUES ('337c76f5-2717-4949-a942-6898e2d48783', '77a2b11f-55f7-43d5-a178-e2eea13d2e53', 'jchia', 'test comment');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


