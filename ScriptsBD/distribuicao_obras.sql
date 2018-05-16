--Created by Robervald Sidrome 15/05/2018

-- Table: public.distribuicao_obras

-- DROP TABLE public.distribuicao_obras;

CREATE TABLE public.distribuicao_obras
(
  id_distribuicao_obra integer NOT NULL DEFAULT nextval('distribuicao_obras_id_distribuicao_obra_seq'::regclass),
  id_subobra integer NOT NULL DEFAULT nextval('distribuicao_obras_id_subobra_seq'::regclass),
  id_funcionario integer NOT NULL DEFAULT nextval('distribuicao_obras_id_funcionario_seq'::regclass),
  id_processo integer NOT NULL DEFAULT nextval('distribuicao_obras_id_processo_seq'::regclass),
  data date NOT NULL,
  hora timestamp without time zone NOT NULL,
  id_obra integer NOT NULL DEFAULT nextval('distribuicao_obras_id_obra_seq'::regclass),
  CONSTRAINT distribuicao_obras_pkey PRIMARY KEY (id_distribuicao_obra),
  CONSTRAINT id_funcionario FOREIGN KEY (id_funcionario)
      REFERENCES public.distribuicao_obras (id_distribuicao_obra) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT id_obra FOREIGN KEY (id_obra)
      REFERENCES public.distribuicao_obras (id_distribuicao_obra) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT id_processo FOREIGN KEY (id_processo)
      REFERENCES public.distribuicao_obras (id_distribuicao_obra) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT id_subobra FOREIGN KEY (id_subobra)
      REFERENCES public.distribuicao_obras (id_distribuicao_obra) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.distribuicao_obras
  OWNER TO postgres;

-- Index: public.fk_id_funcionario

-- DROP INDEX public.fk_id_funcionario;

CREATE INDEX fk_id_funcionario
  ON public.distribuicao_obras
  USING btree
  (id_funcionario);

-- Index: public.fk_id_obra

-- DROP INDEX public.fk_id_obra;

CREATE INDEX fk_id_obra
  ON public.distribuicao_obras
  USING btree
  (id_obra);

-- Index: public.fk_id_subobra

-- DROP INDEX public.fk_id_subobra;

CREATE INDEX fk_id_subobra
  ON public.distribuicao_obras
  USING btree
  (id_subobra);

-- Index: public.fki_id_processo

-- DROP INDEX public.fki_id_processo;

CREATE INDEX fki_id_processo
  ON public.distribuicao_obras
  USING btree
  (id_processo);

