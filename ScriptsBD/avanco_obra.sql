-- Created by Robervald Sidrome 15/05/2018

-- Table: public.avanco_obra

-- DROP TABLE public.avanco_obra;

CREATE TABLE public.avanco_obra
(
  id_avanco integer NOT NULL DEFAULT nextval('avanco_obra_id_avanco_seq'::regclass),
  data date NOT NULL,
  hora time without time zone NOT NULL,
  porcente_hora character varying(20) NOT NULL,
  valor_hora character varying(20) NOT NULL,
  valor_percentual character varying(20),
  id_subobra integer NOT NULL DEFAULT nextval('avanco_obra_id_subobra_seq'::regclass),
  id_processo integer NOT NULL DEFAULT nextval('avanco_obra_id_processo_seq'::regclass),
  id_status integer NOT NULL DEFAULT nextval('avanco_obra_id_status_seq'::regclass),
  id_obra integer NOT NULL DEFAULT nextval('avanco_obra_id_obra_seq'::regclass),
  CONSTRAINT avanco_obra_pkey PRIMARY KEY (id_avanco),
  CONSTRAINT id_obra FOREIGN KEY (id_obra)
      REFERENCES public.avanco_obra (id_avanco) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT id_processo FOREIGN KEY (id_processo)
      REFERENCES public.avanco_obra (id_avanco) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT id_status FOREIGN KEY (id_status)
      REFERENCES public.avanco_obra (id_avanco) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT id_subobra FOREIGN KEY (id_subobra)
      REFERENCES public.avanco_obra (id_avanco) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.avanco_obra
  OWNER TO postgres;
COMMENT ON TABLE public.avanco_obra
  IS 'Se relaciona com sub-obra, obras, turnos';

-- Index: public.fk_id_processo

-- DROP INDEX public.fk_id_processo;

CREATE INDEX fk_id_processo
  ON public.avanco_obra
  USING btree
  (id_processo);

-- Index: public.fki_id_obra

-- DROP INDEX public.fki_id_obra;

CREATE INDEX fki_id_obra
  ON public.avanco_obra
  USING btree
  (id_obra);

-- Index: public.fki_id_status

-- DROP INDEX public.fki_id_status;

CREATE INDEX fki_id_status
  ON public.avanco_obra
  USING btree
  (id_status);

-- Index: public.id_subobra

-- DROP INDEX public.id_subobra;

CREATE INDEX id_subobra
  ON public.avanco_obra
  USING btree
  (id_subobra);

