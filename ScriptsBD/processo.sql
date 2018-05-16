--Created by Robervald Sidrome 15/05/2018

-- Table: public.processo

-- DROP TABLE public.processo;

CREATE TABLE public.processo
(
  id_processo integer NOT NULL DEFAULT nextval('processo_id_processo_seq'::regclass),
  desc_processo character varying(40) NOT NULL,
  CONSTRAINT processo_pkey PRIMARY KEY (id_processo)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.processo
  OWNER TO postgres;
