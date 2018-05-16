--Created by Robervald Sidrome 15/05/2018

-- Table: public.subobra

-- DROP TABLE public.subobra;

CREATE TABLE public.subobra
(
  id_subobra integer NOT NULL DEFAULT nextval('subobra_id_subobra_seq'::regclass),
  nome_subobra character varying(50) NOT NULL,
  CONSTRAINT subobra_pkey PRIMARY KEY (id_subobra)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.subobra
  OWNER TO postgres;
