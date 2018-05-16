--Created by Robervald Sidrome 15/05/2018

-- Table: public.usuario

-- DROP TABLE public.usuario;

CREATE TABLE public.usuario
(
  id_usuario integer NOT NULL DEFAULT nextval('usuario_id_usuario_seq'::regclass),
  login character varying(20) NOT NULL,
  senha character varying(8) NOT NULL,
  CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.usuario
  OWNER TO postgres;
