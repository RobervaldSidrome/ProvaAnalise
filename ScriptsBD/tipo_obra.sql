--Created by Robervald Sidrome 15/05/2018

-- Table: public.tipo_obra

-- DROP TABLE public.tipo_obra;

CREATE TABLE public.tipo_obra
(
  id_tipo_obra integer NOT NULL DEFAULT nextval('tipo_obra_id_tipo_obra_seq'::regclass),
  nome_tipo_obra character varying(10) NOT NULL,
  CONSTRAINT id_tipo_obra PRIMARY KEY (id_tipo_obra)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.tipo_obra
  OWNER TO postgres;
