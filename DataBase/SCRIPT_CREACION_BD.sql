-- Database: uniapp

-- DROP DATABASE IF EXISTS uniapp;

CREATE DATABASE uniapp

----------------------------------------------------------------------------------------------------------------------

-- Table: public.bus_stop

-- DROP TABLE IF EXISTS public.bus_stop;

CREATE TABLE IF NOT EXISTS public.bus_stop
(
    id_bus_stop character varying(15) COLLATE pg_catalog."default" NOT NULL,
    place character varying(50) COLLATE pg_catalog."default",
    details character varying(200) COLLATE pg_catalog."default",
    length real,
    latitude real,
    CONSTRAINT id_bus_stop PRIMARY KEY (id_bus_stop)
)

TABLESPACE pg_default;


------------------------------------------------------------------------------------------------------------------------

-- Table: public.schedule

-- DROP TABLE IF EXISTS public.schedule;

CREATE TABLE IF NOT EXISTS public.schedule
(
    id_schedule serial NOT NULL,
    hour time(6) with time zone,
    CONSTRAINT id_schedule PRIMARY KEY (id_schedule)
)

TABLESPACE pg_default;


---------------------------------------------------------------------------------------------------------------------------

-- Table: public.post

-- DROP TABLE IF EXISTS public.post;

CREATE TABLE IF NOT EXISTS public.post
(
    id_post serial NOT NULL,
    author character varying(30) COLLATE pg_catalog."default",
    date date,
    message text COLLATE pg_catalog."default",
    image character varying(500) COLLATE pg_catalog."default",
    CONSTRAINT id_post PRIMARY KEY (id_post)
)

TABLESPACE pg_default;


-----------------------------------------------------------------------------------------------------------------------------

-- Table: public.route

-- DROP TABLE IF EXISTS public.route;

CREATE TABLE IF NOT EXISTS public.route
(
    id_route character varying(15) COLLATE pg_catalog."default" NOT NULL,
    route_name character varying(30) COLLATE pg_catalog."default",
    direction integer,
    CONSTRAINT id_route PRIMARY KEY (id_route)
)

TABLESPACE pg_default;


------------------------------------------------------------------------------------------------------------------------------------

-- Table: public.route_bus_stop

-- DROP TABLE IF EXISTS public.route_bus_stop;

CREATE TABLE IF NOT EXISTS public.route_bus_stop
(
    id_route_bus_stop serial NOT NULL,
    id_route character varying(15) COLLATE pg_catalog."default",
    id_bus_stop character varying(10) COLLATE pg_catalog."default",
    CONSTRAINT id_route_bus_stop PRIMARY KEY (id_route_bus_stop),
    CONSTRAINT id_bus_stop FOREIGN KEY (id_bus_stop)
        REFERENCES public.bus_stop (id_bus_stop) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT id_route FOREIGN KEY (id_route)
        REFERENCES public.route (id_route) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;


------------------------------------------------------------------------------------------------------------------------------------------

-- Table: public.service

-- DROP TABLE IF EXISTS public.service;

CREATE TABLE IF NOT EXISTS public.service
(
    id_service serial NOT NULL,
    id_route character varying(15) COLLATE pg_catalog."default",
    id_schedule integer,
    CONSTRAINT id_service PRIMARY KEY (id_service),
    CONSTRAINT id_route FOREIGN KEY (id_route)
        REFERENCES public.route (id_route) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT id_schedule FOREIGN KEY (id_schedule)
        REFERENCES public.schedule (id_schedule) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;


------DROPS-----

DROP TABLE bus_stop CASCADE;
DROP TABLE post CASCADE;
DROP TABLE route CASCADE;
DROP TABLE route_bus_stop CASCADE;
DROP TABLE schedule CASCADE;
DROP TABLE service CASCADE;