--Created by Robervald Sidrome 15/05/2018

-- Table: public.status

-- DROP TABLE public.status;

CREATE TABLE public.status
(
  id_status integer NOT NULL DEFAULT nextval('status_id_status_seq'::regclass),
  descricao character varying(15) NOT NULL,
  CONSTRAINT status_pkey PRIMARY KEY (id_status)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.status
  OWNER TO postgres;
