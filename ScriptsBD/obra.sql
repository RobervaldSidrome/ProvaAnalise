-- Created by Robervald Sidrome 15/05/2018

-- Table: public.obra

-- DROP TABLE public.obra;

CREATE TABLE public.obra
(
  id_obra integer NOT NULL DEFAULT nextval('obra_id_obra_seq'::regclass),
  codigo_obra character varying(10) NOT NULL,
  id_subobra integer NOT NULL DEFAULT nextval('obra_id_subobra_seq'::regclass),
  id_turno integer NOT NULL DEFAULT nextval('obra_id_turno_seq'::regclass),
  id_funcionario integer NOT NULL DEFAULT nextval('obra_id_funcionario_seq'::regclass),
  id_tipo_obra integer NOT NULL DEFAULT nextval('obra_id_tipo_obra_seq'::regclass),
  inicio_obra date NOT NULL,
  fim_obra date NOT NULL,
  CONSTRAINT obra_pkey PRIMARY KEY (id_obra),
  CONSTRAINT id_funcionario FOREIGN KEY (id_funcionario)
      REFERENCES public.obra (id_obra) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT id_subobra FOREIGN KEY (id_subobra)
      REFERENCES public.obra (id_obra) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT id_tipo_obra FOREIGN KEY (id_tipo_obra)
      REFERENCES public.obra (id_obra) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT id_turno FOREIGN KEY (id_turno)
      REFERENCES public.obra (id_obra) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.obra
  OWNER TO postgres;

-- Index: public.fki_funcionario_pkey

-- DROP INDEX public.fki_funcionario_pkey;

CREATE INDEX fki_funcionario_pkey
  ON public.obra
  USING btree
  (id_funcionario);

-- Index: public.fki_id_subobra

-- DROP INDEX public.fki_id_subobra;

CREATE INDEX fki_id_subobra
  ON public.obra
  USING btree
  (id_subobra);

-- Index: public.fki_id_tipo_obra

-- DROP INDEX public.fki_id_tipo_obra;

CREATE INDEX fki_id_tipo_obra
  ON public.obra
  USING btree
  (id_tipo_obra);

-- Index: public.fki_id_turno

-- DROP INDEX public.fki_id_turno;

CREATE INDEX fki_id_turno
  ON public.obra
  USING btree
  (id_turno);

