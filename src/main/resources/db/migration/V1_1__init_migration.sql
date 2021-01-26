--
-- Name: doc_act_reconciliation; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_act_reconciliation
(
  id                     integer NOT NULL,
  changed_at             timestamp without time zone,
  changed_by             integer,
  created_at             timestamp without time zone,
  created_by             integer,
  outlet_id              integer NOT NULL,
  outlet_department_id   integer,
  supplier_id            integer NOT NULL,
  supplier_department_id integer,
  status                 integer,
  start_date             date    NOT NULL,
  end_date               date    NOT NULL,
  total_begin_amount     numeric(19, 2),
  total_debet            numeric(19, 2),
  total_credit           numeric(19, 2),
  total_end_amount       numeric(19, 2)
);


--
-- Name: doc_act_reconciliation_detail; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_act_reconciliation_detail
(
  id              integer                     NOT NULL,
  act_id          integer                     NOT NULL,
  doc_id          integer                     NOT NULL,
  doc_date        timestamp without time zone NOT NULL,
  outlet_number   character varying(150),
  type            integer                     NOT NULL,
  doc_type_string character varying(150)      NOT NULL,
  doc_status_id   integer                     NOT NULL,
  department_id   integer,
  debet           numeric(19, 2),
  credit          numeric(19, 2)
);


--
-- Name: doc_act_reconciliation_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_act_reconciliation_detail_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_act_reconciliation_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_act_reconciliation_detail_id_seq OWNED BY doc_act_reconciliation_detail.id;


--
-- Name: doc_act_reconciliation_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_act_reconciliation_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_act_reconciliation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_act_reconciliation_id_seq OWNED BY doc_act_reconciliation.id;


--
-- Name: doc_admission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_admission
(
  id                       integer        NOT NULL,
  changed_at               timestamp without time zone,
  changed_by               integer,
  created_at               timestamp without time zone,
  created_by               integer,
  created_date             timestamp without time zone,
  status_id                integer        NOT NULL,
  total_amount             numeric(19, 2) NOT NULL,
  outlet_id                integer        NOT NULL,
  outlet_department_id     integer        NOT NULL,
  oe_status_id             integer,
  outlet_partner_uuid      character varying(150),
  outlet_document_uuid     character varying(150),
  outlet_number            character varying(150),
  outlet_author            character varying(50),
  supplier_id              integer        NOT NULL,
  supplier_department_id   integer        NOT NULL,
  supplier_agreement_id    integer,
  se_status_id             integer,
  supplier_partner_uuid    character varying(150),
  supplier_document_uuid   character varying(150),
  supplier_number          character varying(150),
  note                     character varying(255),
  view_status              integer,
  send_mail                boolean DEFAULT false,
  mail_sended              boolean,
  order_enum               character varying(255),
  payment_type             integer,
  invoice_series           character varying(50),
  invoice_number           character varying(50),
  invoice_date             date,
  invoice_delivery_type_id integer,
  vat_delivery_type_id     integer,
  vat_rate_id              integer,
  st_rate_id               integer
);


--
-- Name: doc_admission_detail; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_admission_detail
(
  id              integer NOT NULL,
  admission_id    integer NOT NULL,
  row_index       integer,
  goods_id        integer,
  og_uuid         character varying(150),
  og_code         character varying(50),
  sg_uuid         character varying(150),
  unit_id         integer,
  unit_name       character varying(50),
  count           numeric(19, 3),
  base_count      numeric(19, 3),
  order_count     numeric(19, 2),
  price           numeric(19, 2),
  amount          numeric(19, 2),
  count_packaging numeric(19, 2),
  ratio_packaging numeric(19, 2),
  balance         numeric(19, 2),
  exchange        numeric(19, 2),
  refund          numeric(19, 2)
);


--
-- Name: doc_admission_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_admission_detail_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_admission_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_admission_detail_id_seq OWNED BY doc_admission_detail.id;


--
-- Name: doc_admission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_admission_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_admission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_admission_id_seq OWNED BY doc_admission.id;


--
-- Name: doc_admission_order; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_admission_order
(
  admission_id integer NOT NULL,
  order_id     integer NOT NULL
);


--
-- Name: doc_assortment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_assortment
(
  id                     integer NOT NULL,
  changed_at             timestamp without time zone,
  changed_by             integer,
  created_at             timestamp without time zone,
  created_by             integer,
  status_id              integer NOT NULL,
  outlet_id              integer NOT NULL,
  oe_status_id           integer,
  outlet_partner_uuid    character varying(150),
  outlet_document_uuid   character varying(150),
  supplier_id            integer NOT NULL,
  se_status_id           integer,
  supplier_partner_uuid  character varying(150),
  supplier_document_uuid character varying(150),
  category_id            integer,
  type                   integer,
  note                   character varying(255),
  view_status            integer
);


--
-- Name: doc_assortment_comments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_assortment_comments
(
  id            integer NOT NULL,
  changed_at    timestamp without time zone,
  changed_by    integer,
  created_at    timestamp without time zone,
  created_by    integer,
  assortment_id integer NOT NULL,
  account_id    integer NOT NULL,
  message       character varying(500)
);


--
-- Name: doc_assortment_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_assortment_comments_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_assortment_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_assortment_comments_id_seq OWNED BY doc_assortment_comments.id;


--
-- Name: doc_assortment_detail; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_assortment_detail
(
  id                  integer NOT NULL,
  assortment_id       integer NOT NULL,
  row_index           integer,
  goods_id            integer,
  group_code          character varying(25),
  barcode             character varying(50),
  name_ru             character varying(255),
  name_kg             character varying(255),
  trade_mark          character varying(50),
  article             character varying(50),
  volume              character varying(25),
  unit_name           character varying(25),
  production_country  character varying(255),
  special_condition   character varying(255),
  quantum             character varying(25),
  seasonal            character varying(255),
  price               numeric(19, 2),
  department_list     character varying(255),
  vat_rate_id         integer,
  st_rate_id          integer,
  expiration_date     character varying(255),
  og_uuid             character varying(150),
  sg_uuid             character varying(150),
  quantity_per_pack   numeric(19, 2),
  minimum_balance     numeric(19, 2),
  quality_certificate character varying(50),
  goods_width         character varying(50),
  goods_height        character varying(50),
  goods_depth         character varying(50),
  image_name          character varying(255),
  annotation          character varying(1000),
  status              integer
);


--
-- Name: doc_assortment_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_assortment_detail_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_assortment_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_assortment_detail_id_seq OWNED BY doc_assortment_detail.id;


--
-- Name: doc_assortment_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_assortment_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_assortment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_assortment_id_seq OWNED BY doc_assortment.id;


--
-- Name: doc_auction; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_auction
(
  id              integer NOT NULL,
  changed_at      timestamp without time zone,
  changed_by      integer,
  created_at      timestamp without time zone,
  created_by      integer,
  type_id         integer NOT NULL,
  closed_auction  boolean,
  category_id     integer NOT NULL,
  goods_id        integer NOT NULL,
  contractor_id   integer NOT NULL,
  doc_number      character varying(50),
  auction_status  integer,
  note            character varying(255),
  min_price       numeric(19, 2),
  max_price       numeric(19, 2),
  bid_step        integer,
  current_price   numeric(19, 2),
  goods_desc      character varying(255),
  auction_details character varying(255),
  started_at      timestamp without time zone,
  ended_at        timestamp without time zone,
  duration        bigint,
  ate_id          integer,
  address_id      integer,
  winner_id       integer,
  image_name      character varying(150),
  reliable        boolean,
  is_active       boolean
);


--
-- Name: doc_auction_bid; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_auction_bid
(
  id          integer NOT NULL,
  amount      numeric(19, 2),
  bided_at    timestamp without time zone,
  auction_id  integer NOT NULL,
  description character varying(255),
  account_id  integer NOT NULL
);


--
-- Name: doc_auction_bid_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_auction_bid_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_auction_bid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_auction_bid_id_seq OWNED BY doc_auction_bid.id;


--
-- Name: doc_auction_comments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_auction_comments
(
  id         integer NOT NULL,
  auction_id integer NOT NULL,
  account_id integer NOT NULL,
  message    character varying(500)
);


--
-- Name: doc_auction_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_auction_comments_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_auction_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_auction_comments_id_seq OWNED BY doc_auction_comments.id;


--
-- Name: doc_auction_detail; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_auction_detail
(
  id               integer NOT NULL,
  auction_id       integer NOT NULL,
  property_id      integer NOT NULL,
  property_type_id integer NOT NULL,
  boolean_value    boolean,
  number_value     numeric(19, 3),
  date_value       date,
  string_value     character varying(500),
  value_id         integer NOT NULL
);


--
-- Name: doc_auction_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_auction_detail_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_auction_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_auction_detail_id_seq OWNED BY doc_auction_detail.id;


--
-- Name: doc_auction_favorites; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_auction_favorites
(
  id         integer NOT NULL,
  auction_id integer NOT NULL,
  account_id integer NOT NULL
);


--
-- Name: doc_auction_favorites_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_auction_favorites_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_auction_favorites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_auction_favorites_id_seq OWNED BY doc_auction_favorites.id;


--
-- Name: doc_auction_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_auction_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_auction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_auction_id_seq OWNED BY doc_auction.id;


--
-- Name: doc_auction_image; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_auction_image
(
  id         integer NOT NULL,
  auction_id integer NOT NULL,
  name       character varying(255),
  image_name character varying(255)
);


--
-- Name: doc_auction_image_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_auction_image_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_auction_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_auction_image_id_seq OWNED BY doc_auction_image.id;


--
-- Name: doc_auction_tag; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_auction_tag
(
  id         integer NOT NULL,
  auction_id integer NOT NULL,
  tag_id     integer NOT NULL
);


--
-- Name: doc_auction_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_auction_tag_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_auction_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_auction_tag_id_seq OWNED BY doc_auction_tag.id;


--
-- Name: doc_auction_viewed; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_auction_viewed
(
  id         integer NOT NULL,
  auction_id integer NOT NULL,
  account_id integer NOT NULL
);


--
-- Name: doc_auction_viewed_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_auction_viewed_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_auction_viewed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_auction_viewed_id_seq OWNED BY doc_auction_viewed.id;


--
-- Name: doc_marketing; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_marketing
(
  id                       integer        NOT NULL,
  changed_at               timestamp without time zone,
  changed_by               integer,
  created_at               timestamp without time zone,
  created_by               integer,
  created_date             timestamp without time zone,
  status_id                integer        NOT NULL,
  outlet_id                integer        NOT NULL,
  outlet_department_id     integer        NOT NULL,
  oe_status_id             integer,
  outlet_partner_uuid      character varying(150),
  outlet_document_uuid     character varying(150),
  outlet_number            character varying(255),
  outlet_author            character varying(50),
  supplier_id              integer        NOT NULL,
  supplier_department_id   integer        NOT NULL,
  se_status_id             integer,
  supplier_partner_uuid    character varying(150),
  supplier_document_uuid   character varying(150),
  total_amount             numeric(19, 2) NOT NULL,
  view_status              integer,
  note                     character varying(255),
  send_mail                boolean DEFAULT false,
  mail_sended              boolean,
  payment_type             integer,
  invoice_series           character varying(50),
  invoice_number           character varying(50),
  invoice_date             date,
  invoice_delivery_type_id integer,
  vat_delivery_type_id     integer,
  vat_rate_id              integer,
  st_rate_id               integer
);


--
-- Name: doc_marketing_detail; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_marketing_detail
(
  id              integer NOT NULL,
  marketing_id    integer NOT NULL,
  row_index       integer,
  goods_id        integer,
  og_uuid         character varying(150),
  og_code         character varying(50),
  sg_uuid         character varying(150),
  unit_id         integer,
  unit_name       character varying(50),
  count           numeric(19, 2),
  price           numeric(19, 2),
  amount          numeric(19, 2),
  count_packaging numeric(19, 2),
  ratio_packaging numeric(19, 2)
);


--
-- Name: doc_marketing_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_marketing_detail_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_marketing_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_marketing_detail_id_seq OWNED BY doc_marketing_detail.id;


--
-- Name: doc_marketing_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_marketing_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_marketing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_marketing_id_seq OWNED BY doc_marketing.id;


--
-- Name: doc_order; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_order
(
  id                     integer        NOT NULL,
  changed_at             timestamp without time zone,
  changed_by             integer,
  created_at             timestamp without time zone,
  created_by             integer,
  created_date           timestamp without time zone,
  receipt_date           date,
  status_id              integer        NOT NULL,
  total_amount           numeric(19, 2) NOT NULL,
  outlet_id              integer        NOT NULL,
  outlet_department_id   integer        NOT NULL,
  oe_status_id           integer,
  outlet_partner_uuid    character varying(150),
  outlet_document_uuid   character varying(150),
  outlet_number          character varying(150),
  outlet_author          character varying(50),
  supplier_id            integer        NOT NULL,
  supplier_department_id integer        NOT NULL,
  supplier_agreement_id  integer,
  se_status_id           integer,
  supplier_partner_uuid  character varying(150),
  supplier_document_uuid character varying(150),
  supplier_number        character varying(150),
  note                   character varying(255),
  price_type_id          integer,
  view_status            integer,
  send_mail              boolean DEFAULT false,
  mail_sended            boolean
);


--
-- Name: doc_order_detail; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_order_detail
(
  id              integer NOT NULL,
  order_id        integer NOT NULL,
  row_index       integer,
  goods_id        integer,
  og_uuid         character varying(150),
  og_code         character varying(50),
  sg_uuid         character varying(150),
  barcode         character varying(50),
  unit_id         integer,
  unit_name       character varying(50),
  count           numeric(19, 3),
  price           numeric(19, 2),
  amount          numeric(19, 2),
  count_packaging numeric(19, 2),
  ratio_packaging numeric(19, 2),
  balance         numeric(19, 2),
  exchange        numeric(19, 2),
  refund          numeric(19, 2)
);


--
-- Name: doc_order_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_order_detail_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_order_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_order_detail_id_seq OWNED BY doc_order_detail.id;


--
-- Name: doc_order_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_order_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_order_id_seq OWNED BY doc_order.id;


--
-- Name: doc_payment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_payment
(
  id                     integer        NOT NULL,
  changed_at             timestamp without time zone,
  changed_by             integer,
  created_at             timestamp without time zone,
  created_by             integer,
  created_date           timestamp without time zone,
  status_id              integer        NOT NULL,
  outlet_id              integer        NOT NULL,
  outlet_department_id   integer        NOT NULL,
  oe_status_id           integer,
  outlet_partner_uuid    character varying(150),
  outlet_document_uuid   character varying(150),
  outlet_number          character varying(150),
  outlet_author          character varying(50),
  supplier_id            integer        NOT NULL,
  supplier_department_id integer        NOT NULL,
  se_status_id           integer,
  supplier_partner_uuid  character varying(150),
  supplier_document_uuid character varying(150),
  total_amount           numeric(19, 2) NOT NULL,
  note                   character varying(255),
  view_status            integer,
  send_mail              boolean DEFAULT false,
  mail_sended            boolean
);


--
-- Name: doc_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_payment_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_payment_id_seq OWNED BY doc_payment.id;


--
-- Name: doc_promotion; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_promotion
(
  id                     integer NOT NULL,
  changed_at             timestamp without time zone,
  changed_by             integer,
  created_at             timestamp without time zone,
  created_by             integer,
  status_id              integer NOT NULL,
  outlet_id              integer NOT NULL,
  oe_status_id           integer,
  outlet_partner_uuid    character varying(150),
  outlet_document_uuid   character varying(150),
  supplier_id            integer NOT NULL,
  se_status_id           integer,
  supplier_partner_uuid  character varying(150),
  supplier_document_uuid character varying(150),
  category_id            integer NOT NULL,
  note                   character varying(255),
  view_status            integer
);


--
-- Name: doc_promotion_comments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_promotion_comments
(
  id           integer NOT NULL,
  promotion_id integer NOT NULL,
  account_id   integer NOT NULL,
  message      character varying(500)
);


--
-- Name: doc_promotion_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_promotion_comments_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_promotion_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_promotion_comments_id_seq OWNED BY doc_promotion_comments.id;


--
-- Name: doc_promotion_detail; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_promotion_detail
(
  id              integer NOT NULL,
  promotion_id    integer NOT NULL,
  row_index       integer,
  goods_id        integer NOT NULL,
  og_uuid         character varying(150),
  sg_uuid         character varying(150),
  barcode         character varying(25),
  price_old       numeric(19, 2),
  price_new       numeric(19, 2),
  percent         numeric(5, 2),
  started_date    date,
  ended_date      date,
  place_price     numeric(19, 2),
  place_number    character varying(150),
  place_name      integer,
  vat_rate_id     integer,
  st_rate_id      integer,
  status          integer,
  all_departments boolean,
  promo_one_day   boolean
);


--
-- Name: doc_promotion_detail_department; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_promotion_detail_department
(
  promotion_goods_id integer NOT NULL,
  department_id      integer NOT NULL
);


--
-- Name: doc_promotion_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_promotion_detail_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_promotion_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_promotion_detail_id_seq OWNED BY doc_promotion_detail.id;


--
-- Name: doc_promotion_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_promotion_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_promotion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_promotion_id_seq OWNED BY doc_promotion.id;


--
-- Name: doc_refund; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_refund
(
  id                       integer        NOT NULL,
  changed_at               timestamp without time zone,
  changed_by               integer,
  created_at               timestamp without time zone,
  created_by               integer,
  created_date             timestamp without time zone,
  status_id                integer        NOT NULL,
  total_amount             numeric(19, 2) NOT NULL,
  outlet_id                integer        NOT NULL,
  outlet_department_id     integer        NOT NULL,
  oe_status_id             integer,
  outlet_partner_uuid      character varying(150),
  outlet_document_uuid     character varying(150),
  outlet_number            character varying(150),
  outlet_author            character varying(50),
  supplier_id              integer        NOT NULL,
  supplier_department_id   integer        NOT NULL,
  se_status_id             integer,
  supplier_uuid            character varying(150),
  supplier_partner_uuid    character varying(150),
  supplier_document_uuid   character varying(150),
  note                     character varying(255),
  view_status              integer,
  send_mail                boolean DEFAULT false,
  mail_sended              boolean,
  payment_type             integer,
  invoice_series           character varying(50),
  invoice_number           character varying(50),
  invoice_date             date,
  invoice_delivery_type_id integer,
  vat_delivery_type_id     integer,
  vat_rate_id              integer,
  st_rate_id               integer,
  corrective_type          integer,
  corrective_series        character varying(50),
  corrective_number        character varying(50),
  corrective_date          date
);


--
-- Name: doc_refund_corrective_invoice; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_refund_corrective_invoice
(
  id                       integer NOT NULL,
  refund_id                integer NOT NULL,
  admission_id             integer,
  oa_uuid                  character varying(150),
  invoice_series_number    character varying(50),
  invoice_date             date,
  invoice_delivery_type_id integer,
  corrective_series        character varying(50),
  corrective_number        character varying(50),
  corrective_date          date,
  corrective_reason        character varying(150)
);


--
-- Name: doc_refund_corrective_invoice_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_refund_corrective_invoice_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_refund_corrective_invoice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_refund_corrective_invoice_id_seq OWNED BY doc_refund_corrective_invoice.id;


--
-- Name: doc_refund_detail; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_refund_detail
(
  id              integer NOT NULL,
  refund_id       integer NOT NULL,
  admission_id    integer,
  oa_uuid         character varying(150),
  row_index       integer,
  goods_id        integer,
  og_uuid         character varying(150),
  og_code         character varying(50),
  sg_uuid         character varying(150),
  unit_id         integer,
  unit_name       character varying(50),
  count           numeric(19, 3),
  price           numeric(19, 2),
  amount          numeric(19, 2),
  count_packaging numeric(19, 2),
  ratio_packaging numeric(19, 2)
);


--
-- Name: doc_refund_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_refund_detail_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_refund_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_refund_detail_id_seq OWNED BY doc_refund_detail.id;


--
-- Name: doc_refund_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_refund_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_refund_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_refund_id_seq OWNED BY doc_refund.id;


--
-- Name: doc_revaluation; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_revaluation
(
  id                     integer NOT NULL,
  changed_at             timestamp without time zone,
  changed_by             integer,
  created_at             timestamp without time zone,
  created_by             integer,
  status_id              integer NOT NULL,
  outlet_id              integer NOT NULL,
  oe_status_id           integer,
  outlet_partner_uuid    character varying(150),
  outlet_document_uuid   character varying(150),
  supplier_id            integer NOT NULL,
  se_status_id           integer,
  supplier_partner_uuid  character varying(150),
  supplier_document_uuid character varying(150),
  category_id            integer,
  note                   character varying(255),
  view_status            integer
);


--
-- Name: doc_revaluation_comments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_revaluation_comments
(
  id             integer NOT NULL,
  revaluation_id integer NOT NULL,
  account_id     integer NOT NULL,
  message        character varying(500)
);


--
-- Name: doc_revaluation_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_revaluation_comments_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_revaluation_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_revaluation_comments_id_seq OWNED BY doc_revaluation_comments.id;


--
-- Name: doc_revaluation_detail; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_revaluation_detail
(
  id             integer NOT NULL,
  revaluation_id integer NOT NULL,
  row_index      integer,
  goods_id       integer NOT NULL,
  og_uuid        character varying(150),
  sg_uuid        character varying(150),
  barcode        character varying(25),
  price_old      numeric(19, 2),
  price_new      numeric(19, 2),
  percent        numeric(5, 2),
  changed_date   date,
  vat_rate_id    integer,
  st_rate_id     integer,
  status         integer
);


--
-- Name: doc_revaluation_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_revaluation_detail_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_revaluation_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_revaluation_detail_id_seq OWNED BY doc_revaluation_detail.id;


--
-- Name: doc_revaluation_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_revaluation_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_revaluation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_revaluation_id_seq OWNED BY doc_revaluation.id;


--
-- Name: doc_trade_offer; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_trade_offer
(
  id                       integer NOT NULL,
  changed_at               timestamp without time zone,
  changed_by               integer,
  created_at               timestamp without time zone,
  created_by               integer,
  ended_at                 timestamp without time zone,
  started_at               timestamp without time zone,
  type_id                  integer NOT NULL,
  category_id              integer NOT NULL,
  goods_id                 integer NOT NULL,
  goods_desc               character varying(255),
  note                     character varying(255),
  contractor_id            integer NOT NULL,
  contractor_department_id integer,
  image_name               character varying(150),
  status                   integer,
  reliable                 boolean,
  package_type             integer,
  is_packed                boolean,
  quantity_in_package      integer,
  goods_package_id         integer,
  supply_type              integer,
  min_lot_size             numeric(19, 3),
  max_lot_size             numeric(19, 3),
  delivery_type            integer,
  ate_id                   integer,
  address_id               integer,
  payment_type             integer,
  prepayment_percent       numeric(15, 2),
  payment_day_number       integer,
  count                    numeric(19, 3),
  unit_id                  integer,
  price                    numeric(19, 3),
  max_price                numeric(19, 3),
  vat_rate_id              integer,
  price_reduction          boolean,
  price_reduction_percent  numeric(15, 2),
  expiry_date              integer,
  is_certificated          boolean,
  doc_number               character varying(50),
  date_unit                integer
);


--
-- Name: doc_trade_offer_cetificate; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_trade_offer_cetificate
(
  id             integer NOT NULL,
  trade_offer_id integer NOT NULL,
  name           character varying(255),
  image_name     character varying(255)
);


--
-- Name: doc_trade_offer_cetificate_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_trade_offer_cetificate_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_trade_offer_cetificate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_trade_offer_cetificate_id_seq OWNED BY doc_trade_offer_cetificate.id;


--
-- Name: doc_trade_offer_comments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_trade_offer_comments
(
  id             integer NOT NULL,
  trade_offer_id integer NOT NULL,
  account_id     integer NOT NULL,
  message        character varying(500)
);


--
-- Name: doc_trade_offer_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_trade_offer_comments_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_trade_offer_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_trade_offer_comments_id_seq OWNED BY doc_trade_offer_comments.id;


--
-- Name: doc_trade_offer_detail; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_trade_offer_detail
(
  id               integer NOT NULL,
  trade_offer_id   integer NOT NULL,
  property_id      integer NOT NULL,
  property_type_id integer NOT NULL,
  boolean_value    boolean,
  number_value     numeric(19, 3),
  date_value       date,
  string_value     character varying(500),
  value_id         integer
);


--
-- Name: doc_trade_offer_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_trade_offer_detail_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_trade_offer_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_trade_offer_detail_id_seq OWNED BY doc_trade_offer_detail.id;


--
-- Name: doc_trade_offer_favorites; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_trade_offer_favorites
(
  id             integer NOT NULL,
  trade_offer_id integer NOT NULL,
  account_id     integer NOT NULL
);


--
-- Name: doc_trade_offer_favorites_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_trade_offer_favorites_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_trade_offer_favorites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_trade_offer_favorites_id_seq OWNED BY doc_trade_offer_favorites.id;


--
-- Name: doc_trade_offer_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_trade_offer_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_trade_offer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_trade_offer_id_seq OWNED BY doc_trade_offer.id;


--
-- Name: doc_trade_offer_image; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_trade_offer_image
(
  id             integer NOT NULL,
  trade_offer_id integer NOT NULL,
  name           character varying(255),
  image_name     character varying(255)
);


--
-- Name: doc_trade_offer_image_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_trade_offer_image_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_trade_offer_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_trade_offer_image_id_seq OWNED BY doc_trade_offer_image.id;


--
-- Name: doc_trade_offer_tag; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_trade_offer_tag
(
  id             integer NOT NULL,
  trade_offer_id integer NOT NULL,
  tag_id         integer NOT NULL
);


--
-- Name: doc_trade_offer_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_trade_offer_tag_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_trade_offer_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_trade_offer_tag_id_seq OWNED BY doc_trade_offer_tag.id;


--
-- Name: doc_trade_offer_viewed; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE doc_trade_offer_viewed
(
  id             integer NOT NULL,
  trade_offer_id integer NOT NULL,
  account_id     integer NOT NULL
);


--
-- Name: doc_trade_offer_viewed_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE doc_trade_offer_viewed_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: doc_trade_offer_viewed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE doc_trade_offer_viewed_id_seq OWNED BY doc_trade_offer_viewed.id;


--
-- Name: enm_ate_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE enm_ate_type
(
  id    integer                NOT NULL,
  name  character varying(150) NOT NULL,
  level integer
);


--
-- Name: enm_ate_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE enm_ate_type_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: enm_ate_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE enm_ate_type_id_seq OWNED BY enm_ate_type.id;


--
-- Name: enm_auction_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE enm_auction_type
(
  id   integer NOT NULL,
  name character varying(150)
);


--
-- Name: enm_auction_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE enm_auction_type_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: enm_auction_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE enm_auction_type_id_seq OWNED BY enm_auction_type.id;


--
-- Name: enm_document_status; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE enm_document_status
(
  id   integer                NOT NULL,
  name character varying(150) NOT NULL
);


--
-- Name: enm_document_status_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE enm_document_status_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: enm_document_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE enm_document_status_id_seq OWNED BY enm_document_status.id;


--
-- Name: enm_exchange_status; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE enm_exchange_status
(
  id   integer                NOT NULL,
  name character varying(150) NOT NULL
);


--
-- Name: enm_exchange_status_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE enm_exchange_status_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: enm_exchange_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE enm_exchange_status_id_seq OWNED BY enm_exchange_status.id;


--
-- Name: enm_filter_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE enm_filter_type
(
  id        integer                NOT NULL,
  name      character varying(150) NOT NULL,
  type_id   integer                NOT NULL,
  order_num integer
);


--
-- Name: enm_filter_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE enm_filter_type_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: enm_filter_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE enm_filter_type_id_seq OWNED BY enm_filter_type.id;


--
-- Name: enm_goods_category_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE enm_goods_category_group
(
  id   integer                NOT NULL,
  name character varying(150) NOT NULL
);


--
-- Name: enm_goods_category_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE enm_goods_category_group_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: enm_goods_category_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE enm_goods_category_group_id_seq OWNED BY enm_goods_category_group.id;


--
-- Name: enm_property_section; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE enm_property_section
(
  id        integer                NOT NULL,
  name      character varying(150) NOT NULL,
  order_num integer
);


--
-- Name: enm_property_section_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE enm_property_section_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: enm_property_section_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE enm_property_section_id_seq OWNED BY enm_property_section.id;


--
-- Name: enm_property_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE enm_property_type
(
  id    integer                NOT NULL,
  name  character varying(150) NOT NULL,
  label character varying(150)
);


--
-- Name: enm_property_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE enm_property_type_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: enm_property_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE enm_property_type_id_seq OWNED BY enm_property_type.id;


--
-- Name: enm_street_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE enm_street_type
(
  id    integer                NOT NULL,
  name  character varying(150) NOT NULL,
  level integer
);


--
-- Name: enm_street_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE enm_street_type_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: enm_street_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE enm_street_type_id_seq OWNED BY enm_street_type.id;


--
-- Name: enm_tag; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE enm_tag
(
  id   integer NOT NULL,
  name character varying(50)
);


--
-- Name: enm_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE enm_tag_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: enm_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE enm_tag_id_seq OWNED BY enm_tag.id;


--
-- Name: enm_trade_offer_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE enm_trade_offer_type
(
  id   integer NOT NULL,
  name character varying(150)
);


--
-- Name: enm_trade_offer_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE enm_trade_offer_type_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: enm_trade_offer_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE enm_trade_offer_type_id_seq OWNED BY enm_trade_offer_type.id;


--
-- Name: ref_account; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_account
(
  id                  integer                NOT NULL,
  changed_at          timestamp without time zone,
  created_at          timestamp without time zone,
  email               character varying(150) NOT NULL,
  contractor_id       integer,
  department_id       integer,
  account_settings_id integer,
  status              integer                NOT NULL,
  note                character varying(255)
);


--
-- Name: ref_account_doc_auction; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_account_doc_auction
(
  account_id integer NOT NULL,
  auction_id integer NOT NULL
);


--
-- Name: ref_account_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_account_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_account_id_seq OWNED BY ref_account.id;


--
-- Name: ref_account_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_account_settings
(
  id                 integer NOT NULL,
  changed_at         timestamp without time zone,
  changed_by         integer,
  created_at         timestamp without time zone,
  created_by         integer,
  account_id         integer,
  show_uuid          boolean,
  show_department    boolean,
  category_id        integer,
  vat_rate_id        integer,
  st_rate_id         integer,
  start_date         date,
  end_date           date,
  document_status_id integer
);


--
-- Name: ref_account_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_account_settings_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_account_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_account_settings_id_seq OWNED BY ref_account_settings.id;


--
-- Name: ref_address; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_address
(
  id            integer NOT NULL,
  changed_at    timestamp without time zone,
  changed_by    integer,
  created_at    timestamp without time zone,
  created_by    integer,
  contractor_id integer NOT NULL,
  ate_id        integer NOT NULL,
  street_id     integer NOT NULL,
  house         character varying(50),
  apartment     character varying(50),
  address_text  character varying(500),
  lat           double precision,
  lng           double precision
);


--
-- Name: ref_address_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_address_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_address_id_seq OWNED BY ref_address.id;


--
-- Name: ref_agreement; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_agreement
(
  id                       integer                NOT NULL,
  changed_at               timestamp without time zone,
  changed_by               integer,
  created_at               timestamp without time zone,
  created_by               integer,
  name                     character varying(150) NOT NULL,
  contractor_id            integer                NOT NULL,
  contractor_department_id integer                NOT NULL,
  partner_id               integer,
  partner_department_id    integer,
  price_type_id            integer,
  agreement_uuid           character varying(150),
  price_type_uuid          character varying(150)
);


--
-- Name: ref_agreement_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_agreement_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_agreement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_agreement_id_seq OWNED BY ref_agreement.id;


--
-- Name: ref_ate; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_ate
(
  id         integer                NOT NULL,
  changed_at timestamp without time zone,
  changed_by integer,
  created_at timestamp without time zone,
  created_by integer,
  name       character varying(150) NOT NULL,
  parent     integer,
  code       character varying(20),
  type_id    integer                NOT NULL
);


--
-- Name: ref_ate_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_ate_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_ate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_ate_id_seq OWNED BY ref_ate.id;


--
-- Name: ref_ate_street; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_ate_street
(
  ate_id    integer NOT NULL,
  street_id integer NOT NULL,
  status    integer
);


--
-- Name: ref_bank; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_bank
(
  id                    integer NOT NULL,
  changed_at            timestamp without time zone,
  changed_by            integer,
  created_at            timestamp without time zone,
  created_by            integer,
  inn                   character varying(50),
  name                  character varying(150),
  full_name             character varying(255),
  bik                   character varying(50),
  correspondent_account character varying(50),
  address_id            integer
);


--
-- Name: ref_bank_account; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_bank_account
(
  id            integer                NOT NULL,
  changed_at    timestamp without time zone,
  changed_by    integer,
  created_at    timestamp without time zone,
  created_by    integer,
  contractor_id integer                NOT NULL,
  bank_id       integer                NOT NULL,
  currency_id   integer                NOT NULL,
  name          character varying(150) NOT NULL,
  number        character varying(50)  NOT NULL
);


--
-- Name: ref_bank_account_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_bank_account_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_bank_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_bank_account_id_seq OWNED BY ref_bank_account.id;


--
-- Name: ref_bank_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_bank_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_bank_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_bank_id_seq OWNED BY ref_bank.id;


--
-- Name: ref_commodity_classification_fea; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_commodity_classification_fea
(
  id                     integer                NOT NULL,
  changed_at             timestamp without time zone,
  changed_by             integer,
  created_at             timestamp without time zone,
  created_by             integer,
  name                   character varying(100) NOT NULL,
  full_name              character varying(255),
  code                   character varying(50),
  unit_classification_id integer,
  rate                   real,
  parent                 integer                NOT NULL
);


--
-- Name: ref_commodity_classification_fea_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_commodity_classification_fea_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_commodity_classification_fea_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_commodity_classification_fea_id_seq OWNED BY ref_commodity_classification_fea.id;


--
-- Name: ref_contractor; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_contractor
(
  id              integer                NOT NULL,
  changed_at      timestamp without time zone,
  changed_by      integer,
  created_at      timestamp without time zone,
  created_by      integer,
  inn             character varying(50),
  name            character varying(150) NOT NULL,
  full_name       character varying(255),
  okpo            character varying(50),
  social_number   character varying(50),
  type            integer,
  bank_account_id integer,
  sti_id          integer,
  lfc_id          integer,
  web_page        character varying(50),
  host            character varying(50),
  port            integer,
  imap_host       character varying(50),
  imap_port       integer,
  department_id   integer
);


--
-- Name: ref_contractor_department; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_contractor_department
(
  id              integer                NOT NULL,
  changed_at      timestamp without time zone,
  changed_by      integer,
  created_at      timestamp without time zone,
  created_by      integer,
  parent          integer,
  contractor_id   integer                NOT NULL,
  name            character varying(150) NOT NULL,
  number          character varying(50),
  department_uuid character varying(150),
  type            integer,
  notice_by_mail  boolean DEFAULT false,
  email           character varying(255),
  address_id      integer,
  phone_id        integer
);


--
-- Name: ref_contractor_department_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_contractor_department_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_contractor_department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_contractor_department_id_seq OWNED BY ref_contractor_department.id;


--
-- Name: ref_contractor_goods; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_contractor_goods
(
  id            integer NOT NULL,
  changed_at    timestamp without time zone,
  changed_by    integer,
  created_at    timestamp without time zone,
  created_by    integer,
  contractor_id integer NOT NULL,
  department_id integer NOT NULL,
  goods_id      integer NOT NULL,
  goods_uuid    character varying(150),
  goods_name    character varying(150),
  partner_id    integer,
  partner_uuid  character varying(150),
  unit_id       integer,
  status        integer,
  start_date    date,
  end_date      date
);


--
-- Name: ref_contractor_goods_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_contractor_goods_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_contractor_goods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_contractor_goods_id_seq OWNED BY ref_contractor_goods.id;


--
-- Name: ref_contractor_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_contractor_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_contractor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_contractor_id_seq OWNED BY ref_contractor.id;


--
-- Name: ref_contractor_mail; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_contractor_mail
(
  id            integer               NOT NULL,
  changed_at    timestamp without time zone,
  changed_by    integer,
  created_at    timestamp without time zone,
  created_by    integer,
  contractor_id integer               NOT NULL,
  department_id integer               NOT NULL,
  username      character varying(50) NOT NULL,
  password      character varying(50) NOT NULL,
  status        boolean,
  phone         character varying(255),
  manager       character varying(50),
  author        character varying(50)
);


--
-- Name: ref_contractor_mail_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_contractor_mail_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_contractor_mail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_contractor_mail_id_seq OWNED BY ref_contractor_mail.id;


--
-- Name: ref_contractor_partner; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_contractor_partner
(
  id                    integer NOT NULL,
  changed_at            timestamp without time zone,
  changed_by            integer,
  created_at            timestamp without time zone,
  created_by            integer,
  contractor_id         integer NOT NULL,
  department_id         integer NOT NULL,
  partner_id            integer NOT NULL,
  partner_department_id integer,
  contractor_uuid       character varying(150),
  contractor_number     character varying(150),
  type                  integer
);


--
-- Name: ref_contractor_partner_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_contractor_partner_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_contractor_partner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_contractor_partner_id_seq OWNED BY ref_contractor_partner.id;


--
-- Name: ref_contractor_rating; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_contractor_rating
(
  id            integer NOT NULL,
  changed_at    timestamp without time zone,
  changed_by    integer,
  created_at    timestamp without time zone,
  created_by    integer,
  contractor_id integer NOT NULL,
  rate          integer NOT NULL,
  message       character varying(500)
);


--
-- Name: ref_contractor_rating_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_contractor_rating_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_contractor_rating_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_contractor_rating_id_seq OWNED BY ref_contractor_rating.id;


--
-- Name: ref_country_classification; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_country_classification
(
  id             integer                NOT NULL,
  changed_at     timestamp without time zone,
  changed_by     integer,
  created_at     timestamp without time zone,
  created_by     integer,
  name           character varying(150) NOT NULL,
  full_name      character varying(255),
  local_name     character varying(255),
  code           character varying(50)  NOT NULL,
  code2          character varying(50),
  code3          character varying(50),
  barcode_prefix character varying(50)
);


--
-- Name: ref_country_classification_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_country_classification_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_country_classification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_country_classification_id_seq OWNED BY ref_country_classification.id;


--
-- Name: ref_currency; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_currency
(
  id         integer                NOT NULL,
  changed_at timestamp without time zone,
  changed_by integer,
  created_at timestamp without time zone,
  created_by integer,
  name       character varying(150) NOT NULL,
  full_name  character varying(255),
  code       character varying(50)  NOT NULL
);


--
-- Name: ref_currency_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_currency_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_currency_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_currency_id_seq OWNED BY ref_currency.id;


--
-- Name: ref_filter_key; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_filter_key
(
  id         integer NOT NULL,
  type_id    integer NOT NULL,
  key_id     integer,
  key_int    integer,
  key_string character varying(50)
);


--
-- Name: ref_filter_key_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_filter_key_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_filter_key_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_filter_key_id_seq OWNED BY ref_filter_key.id;


--
-- Name: ref_goods; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_goods
(
  id                        integer                NOT NULL,
  changed_at                timestamp without time zone,
  changed_by                integer,
  created_at                timestamp without time zone,
  created_by                integer,
  group_id                  integer,
  name                      character varying(150) NOT NULL,
  article                   character varying(50),
  barcode                   character varying(50),
  full_name                 character varying(255),
  type                      integer                NOT NULL,
  unit_id                   integer,
  unit_classification_id    integer,
  trade_mark_id             integer,
  country_classification_id integer,
  fea_id                    integer,
  width                     numeric(15, 2),
  height                    numeric(15, 2),
  depth                     numeric(15, 2),
  count_in_height           integer,
  quantum                   integer,
  category_id               integer,
  image_name                character varying(150)
);


--
-- Name: ref_goods_barcode; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_goods_barcode
(
  id           integer NOT NULL,
  changed_at   timestamp without time zone,
  changed_by   integer,
  created_at   timestamp without time zone,
  created_by   integer,
  goods_id     integer,
  unit_id      integer,
  barcode      character varying(50),
  main_barcode boolean,
  barcode_type integer
);


--
-- Name: ref_goods_barcode_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_goods_barcode_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_goods_barcode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_goods_barcode_id_seq OWNED BY ref_goods_barcode.id;


--
-- Name: ref_goods_category; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_goods_category
(
  id         integer                NOT NULL,
  changed_at timestamp without time zone,
  changed_by integer,
  created_at timestamp without time zone,
  created_by integer,
  name       character varying(150) NOT NULL,
  group_id   integer,
  parent     integer,
  image_name character varying(150)
);


--
-- Name: ref_goods_category_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_goods_category_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_goods_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_goods_category_id_seq OWNED BY ref_goods_category.id;


--
-- Name: ref_goods_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_goods_group
(
  id         integer                NOT NULL,
  changed_at timestamp without time zone,
  changed_by integer,
  created_at timestamp without time zone,
  created_by integer,
  parent     integer,
  name       character varying(150) NOT NULL,
  full_name  character varying(255),
  article    character varying(50)  NOT NULL
);


--
-- Name: ref_goods_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_goods_group_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_goods_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_goods_group_id_seq OWNED BY ref_goods_group.id;


--
-- Name: ref_goods_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_goods_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_goods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_goods_id_seq OWNED BY ref_goods.id;


--
-- Name: ref_goods_image; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_goods_image
(
  id         integer                NOT NULL,
  changed_at timestamp without time zone,
  changed_by integer,
  created_at timestamp without time zone,
  created_by integer,
  name       character varying(150) NOT NULL,
  goods_id   integer                NOT NULL,
  image_name character varying(150)
);


--
-- Name: ref_goods_image_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_goods_image_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_goods_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_goods_image_id_seq OWNED BY ref_goods_image.id;


--
-- Name: ref_goods_package; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_goods_package
(
  id         integer                NOT NULL,
  changed_at timestamp without time zone,
  changed_by integer,
  created_at timestamp without time zone,
  created_by integer,
  name       character varying(150) NOT NULL,
  goods_id   integer                NOT NULL
);


--
-- Name: ref_goods_package_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_goods_package_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_goods_package_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_goods_package_id_seq OWNED BY ref_goods_package.id;


--
-- Name: ref_goods_price; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_goods_price
(
  id            integer        NOT NULL,
  changed_at    timestamp without time zone,
  changed_by    integer,
  created_at    timestamp without time zone,
  created_by    integer,
  price         numeric(19, 2) NOT NULL,
  cg_id         integer        NOT NULL,
  price_type_id integer        NOT NULL
);


--
-- Name: ref_goods_price_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_goods_price_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_goods_price_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_goods_price_id_seq OWNED BY ref_goods_price.id;


--
-- Name: ref_goods_property; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_goods_property
(
  id          integer NOT NULL,
  changed_at  timestamp without time zone,
  changed_by  integer,
  created_at  timestamp without time zone,
  created_by  integer,
  goods_id    integer NOT NULL,
  property_id integer NOT NULL,
  section_id  integer NOT NULL,
  check_fill  boolean,
  order_num   integer
);


--
-- Name: ref_goods_property_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_goods_property_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_goods_property_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_goods_property_id_seq OWNED BY ref_goods_property.id;


--
-- Name: ref_invoice_delivery_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_invoice_delivery_type
(
  id         integer                NOT NULL,
  changed_at timestamp without time zone,
  changed_by integer,
  created_at timestamp without time zone,
  created_by integer,
  code       character varying(15)  NOT NULL,
  name       character varying(150) NOT NULL
);


--
-- Name: ref_invoice_delivery_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_invoice_delivery_type_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_invoice_delivery_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_invoice_delivery_type_id_seq OWNED BY ref_invoice_delivery_type.id;


--
-- Name: ref_legal_form_classification; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_legal_form_classification
(
  id         integer               NOT NULL,
  changed_at timestamp without time zone,
  changed_by integer,
  created_at timestamp without time zone,
  created_by integer,
  name       character varying(50) NOT NULL,
  full_name  character varying(255),
  code       character varying(10)
);


--
-- Name: ref_legal_form_classification_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_legal_form_classification_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_legal_form_classification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_legal_form_classification_id_seq OWNED BY ref_legal_form_classification.id;


--
-- Name: ref_phone; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_phone
(
  id            integer NOT NULL,
  changed_at    timestamp without time zone,
  changed_by    integer,
  created_at    timestamp without time zone,
  created_by    integer,
  contractor_id integer NOT NULL,
  code          integer NOT NULL,
  number        integer NOT NULL,
  "desc"        character varying(255)
);


--
-- Name: ref_phone_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_phone_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_phone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_phone_id_seq OWNED BY ref_phone.id;


--
-- Name: ref_price_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_price_type
(
  id         integer                NOT NULL,
  changed_at timestamp without time zone,
  changed_by integer,
  created_at timestamp without time zone,
  created_by integer,
  name       character varying(150) NOT NULL
);


--
-- Name: ref_price_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_price_type_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_price_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_price_type_id_seq OWNED BY ref_price_type.id;


--
-- Name: ref_property; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_property
(
  id         integer                NOT NULL,
  changed_at timestamp without time zone,
  changed_by integer,
  created_at timestamp without time zone,
  created_by integer,
  name       character varying(150) NOT NULL,
  type_id    integer                NOT NULL
);


--
-- Name: ref_property_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_property_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_property_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_property_id_seq OWNED BY ref_property.id;


--
-- Name: ref_property_value; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_property_value
(
  id          integer                NOT NULL,
  changed_at  timestamp without time zone,
  changed_by  integer,
  created_at  timestamp without time zone,
  created_by  integer,
  name        character varying(150) NOT NULL,
  property_id integer                NOT NULL
);


--
-- Name: ref_property_value_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_property_value_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_property_value_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_property_value_id_seq OWNED BY ref_property_value.id;


--
-- Name: ref_st_rate; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_st_rate
(
  id         integer                NOT NULL,
  changed_at timestamp without time zone,
  changed_by integer,
  created_at timestamp without time zone,
  created_by integer,
  name       character varying(150) NOT NULL,
  rate       integer                NOT NULL
);


--
-- Name: ref_st_rate_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_st_rate_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_st_rate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_st_rate_id_seq OWNED BY ref_st_rate.id;


--
-- Name: ref_sti; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_sti
(
  id         integer NOT NULL,
  changed_at timestamp without time zone,
  changed_by integer,
  created_at timestamp without time zone,
  created_by integer,
  name       character varying(150),
  code       character varying(50)
);


--
-- Name: ref_sti_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_sti_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_sti_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_sti_id_seq OWNED BY ref_sti.id;


--
-- Name: ref_street; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_street
(
  id         integer                NOT NULL,
  changed_at timestamp without time zone,
  changed_by integer,
  created_at timestamp without time zone,
  created_by integer,
  name       character varying(255) NOT NULL,
  type_id    integer                NOT NULL
);


--
-- Name: ref_street_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_street_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_street_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_street_id_seq OWNED BY ref_street.id;


--
-- Name: ref_trade_mark; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_trade_mark
(
  id                        integer                NOT NULL,
  changed_at                timestamp without time zone,
  changed_by                integer,
  created_at                timestamp without time zone,
  created_by                integer,
  name                      character varying(150) NOT NULL,
  country_classification_id integer,
  web_page                  character varying(50),
  "desc"                    character varying(500),
  image_name                character varying(150)
);


--
-- Name: ref_trade_mark_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_trade_mark_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_trade_mark_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_trade_mark_id_seq OWNED BY ref_trade_mark.id;


--
-- Name: ref_unit; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_unit
(
  id                     integer                NOT NULL,
  changed_at             timestamp without time zone,
  changed_by             integer,
  created_at             timestamp without time zone,
  created_by             integer,
  name                   character varying(150) NOT NULL,
  full_name              character varying(255),
  goods_id               integer                NOT NULL,
  unit_classification_id integer,
  ratio                  numeric(10, 3)         NOT NULL
);


--
-- Name: ref_unit_classification; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_unit_classification
(
  id         integer                NOT NULL,
  changed_at timestamp without time zone,
  changed_by integer,
  created_at timestamp without time zone,
  created_by integer,
  name       character varying(150) NOT NULL,
  full_name  character varying(255),
  code       character varying(50)  NOT NULL
);


--
-- Name: ref_unit_classification_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_unit_classification_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_unit_classification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_unit_classification_id_seq OWNED BY ref_unit_classification.id;


--
-- Name: ref_unit_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_unit_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_unit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_unit_id_seq OWNED BY ref_unit.id;


--
-- Name: ref_vat_delivery_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_vat_delivery_type
(
  id         integer                NOT NULL,
  changed_at timestamp without time zone,
  changed_by integer,
  created_at timestamp without time zone,
  created_by integer,
  code       character varying(15)  NOT NULL,
  name       character varying(150) NOT NULL
);


--
-- Name: ref_vat_delivery_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_vat_delivery_type_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_vat_delivery_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_vat_delivery_type_id_seq OWNED BY ref_vat_delivery_type.id;


--
-- Name: ref_vat_rate; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ref_vat_rate
(
  id         integer                NOT NULL,
  changed_at timestamp without time zone,
  changed_by integer,
  created_at timestamp without time zone,
  created_by integer,
  name       character varying(150) NOT NULL,
  rate       integer                NOT NULL
);


--
-- Name: ref_vat_rate_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ref_vat_rate_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: ref_vat_rate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ref_vat_rate_id_seq OWNED BY ref_vat_rate.id;


--
-- Name: reg_proposal; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_proposal
(
  trade_offer_type_id       integer NOT NULL,
  trade_offer_id            integer NOT NULL,
  contractor_id             integer NOT NULL,
  created_date              date,
  changed_date              date,
  ended_date                date,
  category_id               integer NOT NULL,
  goods_id                  integer NOT NULL,
  trade_mark_id             integer NOT NULL,
  country_classification_id integer NOT NULL,
  ate_id                    integer NOT NULL,
  is_certificated           boolean
);


--
-- Name: rep_goods_balance; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE rep_goods_balance
(
  id                     integer NOT NULL,
  changed_at             timestamp without time zone,
  changed_by             integer,
  created_at             timestamp without time zone,
  created_by             integer,
  report_date            timestamp without time zone,
  outlet                 integer NOT NULL,
  outlet_department      integer NOT NULL,
  goods                  integer NOT NULL,
  count                  numeric(19, 3),
  amount                 numeric(19, 2),
  range                  boolean,
  outlet_department_guid character varying(255),
  supplier               integer NOT NULL,
  supplier_guid          character varying(255),
  goods_guid             character varying(255)
);


--
-- Name: rep_goods_balance_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE rep_goods_balance_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: rep_goods_balance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE rep_goods_balance_id_seq OWNED BY rep_goods_balance.id;


--
-- Name: rep_promotion; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE rep_promotion
(
  id                     integer NOT NULL,
  changed_at             timestamp without time zone,
  changed_by             integer,
  created_at             timestamp without time zone,
  created_by             integer,
  report_date            timestamp without time zone,
  outlet                 integer NOT NULL,
  outlet_department      integer,
  supplier               integer,
  goods                  integer NOT NULL,
  outlet_department_guid character varying(255),
  supplier_guid          character varying(255),
  goods_guid             character varying(255),
  internal               boolean,
  started_date           timestamp without time zone,
  ended_date             timestamp without time zone,
  duration               integer,
  status                 character varying(150),
  price_old              numeric(19, 2),
  price_new              numeric(19, 2),
  percent                numeric(19, 2),
  all_departments        boolean
);


--
-- Name: rep_promotion_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE rep_promotion_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;


--
-- Name: rep_promotion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE rep_promotion_id_seq OWNED BY rep_promotion.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_act_reconciliation
  ALTER COLUMN id SET DEFAULT nextval('doc_act_reconciliation_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_act_reconciliation_detail
  ALTER COLUMN id SET DEFAULT nextval('doc_act_reconciliation_detail_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_admission
  ALTER COLUMN id SET DEFAULT nextval('doc_admission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_admission_detail
  ALTER COLUMN id SET DEFAULT nextval('doc_admission_detail_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_assortment
  ALTER COLUMN id SET DEFAULT nextval('doc_assortment_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_assortment_comments
  ALTER COLUMN id SET DEFAULT nextval('doc_assortment_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_assortment_detail
  ALTER COLUMN id SET DEFAULT nextval('doc_assortment_detail_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction
  ALTER COLUMN id SET DEFAULT nextval('doc_auction_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_bid
  ALTER COLUMN id SET DEFAULT nextval('doc_auction_bid_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_comments
  ALTER COLUMN id SET DEFAULT nextval('doc_auction_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_detail
  ALTER COLUMN id SET DEFAULT nextval('doc_auction_detail_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_favorites
  ALTER COLUMN id SET DEFAULT nextval('doc_auction_favorites_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_image
  ALTER COLUMN id SET DEFAULT nextval('doc_auction_image_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_tag
  ALTER COLUMN id SET DEFAULT nextval('doc_auction_tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_viewed
  ALTER COLUMN id SET DEFAULT nextval('doc_auction_viewed_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_marketing
  ALTER COLUMN id SET DEFAULT nextval('doc_marketing_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_marketing_detail
  ALTER COLUMN id SET DEFAULT nextval('doc_marketing_detail_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_order
  ALTER COLUMN id SET DEFAULT nextval('doc_order_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_order_detail
  ALTER COLUMN id SET DEFAULT nextval('doc_order_detail_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_payment
  ALTER COLUMN id SET DEFAULT nextval('doc_payment_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_promotion
  ALTER COLUMN id SET DEFAULT nextval('doc_promotion_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_promotion_comments
  ALTER COLUMN id SET DEFAULT nextval('doc_promotion_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_promotion_detail
  ALTER COLUMN id SET DEFAULT nextval('doc_promotion_detail_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund
  ALTER COLUMN id SET DEFAULT nextval('doc_refund_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund_corrective_invoice
  ALTER COLUMN id SET DEFAULT nextval('doc_refund_corrective_invoice_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund_detail
  ALTER COLUMN id SET DEFAULT nextval('doc_refund_detail_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_revaluation
  ALTER COLUMN id SET DEFAULT nextval('doc_revaluation_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_revaluation_comments
  ALTER COLUMN id SET DEFAULT nextval('doc_revaluation_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_revaluation_detail
  ALTER COLUMN id SET DEFAULT nextval('doc_revaluation_detail_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer
  ALTER COLUMN id SET DEFAULT nextval('doc_trade_offer_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_cetificate
  ALTER COLUMN id SET DEFAULT nextval('doc_trade_offer_cetificate_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_comments
  ALTER COLUMN id SET DEFAULT nextval('doc_trade_offer_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_detail
  ALTER COLUMN id SET DEFAULT nextval('doc_trade_offer_detail_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_favorites
  ALTER COLUMN id SET DEFAULT nextval('doc_trade_offer_favorites_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_image
  ALTER COLUMN id SET DEFAULT nextval('doc_trade_offer_image_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_tag
  ALTER COLUMN id SET DEFAULT nextval('doc_trade_offer_tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_viewed
  ALTER COLUMN id SET DEFAULT nextval('doc_trade_offer_viewed_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY enm_ate_type
  ALTER COLUMN id SET DEFAULT nextval('enm_ate_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY enm_auction_type
  ALTER COLUMN id SET DEFAULT nextval('enm_auction_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY enm_document_status
  ALTER COLUMN id SET DEFAULT nextval('enm_document_status_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY enm_exchange_status
  ALTER COLUMN id SET DEFAULT nextval('enm_exchange_status_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY enm_filter_type
  ALTER COLUMN id SET DEFAULT nextval('enm_filter_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY enm_goods_category_group
  ALTER COLUMN id SET DEFAULT nextval('enm_goods_category_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY enm_property_section
  ALTER COLUMN id SET DEFAULT nextval('enm_property_section_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY enm_property_type
  ALTER COLUMN id SET DEFAULT nextval('enm_property_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY enm_street_type
  ALTER COLUMN id SET DEFAULT nextval('enm_street_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY enm_tag
  ALTER COLUMN id SET DEFAULT nextval('enm_tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY enm_trade_offer_type
  ALTER COLUMN id SET DEFAULT nextval('enm_trade_offer_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_account
  ALTER COLUMN id SET DEFAULT nextval('ref_account_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_account_settings
  ALTER COLUMN id SET DEFAULT nextval('ref_account_settings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_address
  ALTER COLUMN id SET DEFAULT nextval('ref_address_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_agreement
  ALTER COLUMN id SET DEFAULT nextval('ref_agreement_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_ate
  ALTER COLUMN id SET DEFAULT nextval('ref_ate_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_bank
  ALTER COLUMN id SET DEFAULT nextval('ref_bank_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_bank_account
  ALTER COLUMN id SET DEFAULT nextval('ref_bank_account_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_commodity_classification_fea
  ALTER COLUMN id SET DEFAULT nextval('ref_commodity_classification_fea_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor
  ALTER COLUMN id SET DEFAULT nextval('ref_contractor_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_department
  ALTER COLUMN id SET DEFAULT nextval('ref_contractor_department_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_goods
  ALTER COLUMN id SET DEFAULT nextval('ref_contractor_goods_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_mail
  ALTER COLUMN id SET DEFAULT nextval('ref_contractor_mail_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_partner
  ALTER COLUMN id SET DEFAULT nextval('ref_contractor_partner_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_rating
  ALTER COLUMN id SET DEFAULT nextval('ref_contractor_rating_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_country_classification
  ALTER COLUMN id SET DEFAULT nextval('ref_country_classification_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_currency
  ALTER COLUMN id SET DEFAULT nextval('ref_currency_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_filter_key
  ALTER COLUMN id SET DEFAULT nextval('ref_filter_key_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods
  ALTER COLUMN id SET DEFAULT nextval('ref_goods_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_barcode
  ALTER COLUMN id SET DEFAULT nextval('ref_goods_barcode_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_category
  ALTER COLUMN id SET DEFAULT nextval('ref_goods_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_group
  ALTER COLUMN id SET DEFAULT nextval('ref_goods_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_image
  ALTER COLUMN id SET DEFAULT nextval('ref_goods_image_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_package
  ALTER COLUMN id SET DEFAULT nextval('ref_goods_package_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_price
  ALTER COLUMN id SET DEFAULT nextval('ref_goods_price_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_property
  ALTER COLUMN id SET DEFAULT nextval('ref_goods_property_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_invoice_delivery_type
  ALTER COLUMN id SET DEFAULT nextval('ref_invoice_delivery_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_legal_form_classification
  ALTER COLUMN id SET DEFAULT nextval('ref_legal_form_classification_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_phone
  ALTER COLUMN id SET DEFAULT nextval('ref_phone_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_price_type
  ALTER COLUMN id SET DEFAULT nextval('ref_price_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_property
  ALTER COLUMN id SET DEFAULT nextval('ref_property_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_property_value
  ALTER COLUMN id SET DEFAULT nextval('ref_property_value_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_st_rate
  ALTER COLUMN id SET DEFAULT nextval('ref_st_rate_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_sti
  ALTER COLUMN id SET DEFAULT nextval('ref_sti_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_street
  ALTER COLUMN id SET DEFAULT nextval('ref_street_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_trade_mark
  ALTER COLUMN id SET DEFAULT nextval('ref_trade_mark_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_unit
  ALTER COLUMN id SET DEFAULT nextval('ref_unit_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_unit_classification
  ALTER COLUMN id SET DEFAULT nextval('ref_unit_classification_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_vat_delivery_type
  ALTER COLUMN id SET DEFAULT nextval('ref_vat_delivery_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_vat_rate
  ALTER COLUMN id SET DEFAULT nextval('ref_vat_rate_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY rep_goods_balance
  ALTER COLUMN id SET DEFAULT nextval('rep_goods_balance_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY rep_promotion
  ALTER COLUMN id SET DEFAULT nextval('rep_promotion_id_seq'::regclass);


--
-- Name: account_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_account
  ADD CONSTRAINT account_pkey PRIMARY KEY (id);


--
-- Name: account_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_account_settings
  ADD CONSTRAINT account_settings_pkey PRIMARY KEY (id);


--
-- Name: act_reconciliation_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_act_reconciliation_detail
  ADD CONSTRAINT act_reconciliation_detail_pkey PRIMARY KEY (id);


--
-- Name: act_reconciliation_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_act_reconciliation
  ADD CONSTRAINT act_reconciliation_pkey PRIMARY KEY (id);


--
-- Name: address_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_address
  ADD CONSTRAINT address_pkey PRIMARY KEY (id);


--
-- Name: admission_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_admission_detail
  ADD CONSTRAINT admission_detail_pkey PRIMARY KEY (id);


--
-- Name: admission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_admission
  ADD CONSTRAINT admission_pkey PRIMARY KEY (id);


--
-- Name: agreement_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_agreement
  ADD CONSTRAINT agreement_pkey PRIMARY KEY (id);


--
-- Name: assortment_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_assortment_comments
  ADD CONSTRAINT assortment_comments_pkey PRIMARY KEY (id);


--
-- Name: assortment_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_assortment_detail
  ADD CONSTRAINT assortment_detail_pkey PRIMARY KEY (id);


--
-- Name: assortment_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_assortment
  ADD CONSTRAINT assortment_pkey PRIMARY KEY (id);


--
-- Name: ate_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_ate
  ADD CONSTRAINT ate_pkey PRIMARY KEY (id);


--
-- Name: ate_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY enm_ate_type
  ADD CONSTRAINT ate_type_pkey PRIMARY KEY (id);


--
-- Name: auction_bid_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_bid
  ADD CONSTRAINT auction_bid_pkey PRIMARY KEY (id);


--
-- Name: auction_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_comments
  ADD CONSTRAINT auction_comments_pkey PRIMARY KEY (id);


--
-- Name: auction_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_detail
  ADD CONSTRAINT auction_detail_pkey PRIMARY KEY (id);


--
-- Name: auction_favorites_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_favorites
  ADD CONSTRAINT auction_favorites_pkey PRIMARY KEY (id);


--
-- Name: auction_image_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_image
  ADD CONSTRAINT auction_image_pkey PRIMARY KEY (id);


--
-- Name: auction_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction
  ADD CONSTRAINT auction_pkey PRIMARY KEY (id);


--
-- Name: auction_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_tag
  ADD CONSTRAINT auction_tag_pkey PRIMARY KEY (id);


--
-- Name: auction_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY enm_auction_type
  ADD CONSTRAINT auction_type_pkey PRIMARY KEY (id);


--
-- Name: auction_viewed_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_viewed
  ADD CONSTRAINT auction_viewed_pkey PRIMARY KEY (id);


--
-- Name: balance_report_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rep_goods_balance
  ADD CONSTRAINT balance_report_pkey PRIMARY KEY (id);


--
-- Name: bank_account_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_bank_account
  ADD CONSTRAINT bank_account_pkey PRIMARY KEY (id);


--
-- Name: bank_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_bank
  ADD CONSTRAINT bank_pkey PRIMARY KEY (id);


--
-- Name: commodity_classification_fea_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_commodity_classification_fea
  ADD CONSTRAINT commodity_classification_fea_pkey PRIMARY KEY (id);


--
-- Name: contractor_department_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_department
  ADD CONSTRAINT contractor_department_pkey PRIMARY KEY (id);


--
-- Name: contractor_goods_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_goods
  ADD CONSTRAINT contractor_goods_pkey PRIMARY KEY (id);


--
-- Name: contractor_mail_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_mail
  ADD CONSTRAINT contractor_mail_pkey PRIMARY KEY (id);


--
-- Name: contractor_partner_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_partner
  ADD CONSTRAINT contractor_partner_pkey PRIMARY KEY (id);


--
-- Name: contractor_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor
  ADD CONSTRAINT contractor_pkey PRIMARY KEY (id);


--
-- Name: contractor_ratingl_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_rating
  ADD CONSTRAINT contractor_ratingl_pkey PRIMARY KEY (id);


--
-- Name: country_classification_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_country_classification
  ADD CONSTRAINT country_classification_pkey PRIMARY KEY (id);


--
-- Name: currency_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_currency
  ADD CONSTRAINT currency_pkey PRIMARY KEY (id);


--
-- Name: document_status_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY enm_document_status
  ADD CONSTRAINT document_status_pkey PRIMARY KEY (id);


--
-- Name: exchange_status_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY enm_exchange_status
  ADD CONSTRAINT exchange_status_pkey PRIMARY KEY (id);


--
-- Name: filter_key_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_filter_key
  ADD CONSTRAINT filter_key_pkey PRIMARY KEY (id);


--
-- Name: filter_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY enm_filter_type
  ADD CONSTRAINT filter_type_pkey PRIMARY KEY (id);


--
-- Name: goods_barcode_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_barcode
  ADD CONSTRAINT goods_barcode_pkey PRIMARY KEY (id);


--
-- Name: goods_category_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY enm_goods_category_group
  ADD CONSTRAINT goods_category_group_pkey PRIMARY KEY (id);


--
-- Name: goods_category_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_category
  ADD CONSTRAINT goods_category_pkey PRIMARY KEY (id);


--
-- Name: goods_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_group
  ADD CONSTRAINT goods_group_pkey PRIMARY KEY (id);


--
-- Name: goods_image_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_image
  ADD CONSTRAINT goods_image_pkey PRIMARY KEY (id);


--
-- Name: goods_package_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_package
  ADD CONSTRAINT goods_package_pkey PRIMARY KEY (id);


--
-- Name: goods_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods
  ADD CONSTRAINT goods_pkey PRIMARY KEY (id);


--
-- Name: goods_price_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_price
  ADD CONSTRAINT goods_price_pkey PRIMARY KEY (id);


--
-- Name: goods_property_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_property
  ADD CONSTRAINT goods_property_pkey PRIMARY KEY (id);


--
-- Name: invoice_delivery_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_invoice_delivery_type
  ADD CONSTRAINT invoice_delivery_type_pkey PRIMARY KEY (id);


--
-- Name: legal_form_classification_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_legal_form_classification
  ADD CONSTRAINT legal_form_classification_pkey PRIMARY KEY (id);


--
-- Name: marketing_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_marketing_detail
  ADD CONSTRAINT marketing_detail_pkey PRIMARY KEY (id);


--
-- Name: marketing_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_marketing
  ADD CONSTRAINT marketing_pkey PRIMARY KEY (id);


--
-- Name: order_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_order_detail
  ADD CONSTRAINT order_detail_pkey PRIMARY KEY (id);


--
-- Name: order_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_order
  ADD CONSTRAINT order_pkey PRIMARY KEY (id);


--
-- Name: payment_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_payment
  ADD CONSTRAINT payment_pkey PRIMARY KEY (id);


--
-- Name: phone_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_phone
  ADD CONSTRAINT phone_pkey PRIMARY KEY (id);


--
-- Name: price_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_price_type
  ADD CONSTRAINT price_type_pkey PRIMARY KEY (id);


--
-- Name: promotion_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_promotion_comments
  ADD CONSTRAINT promotion_comments_pkey PRIMARY KEY (id);


--
-- Name: promotion_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_promotion_detail
  ADD CONSTRAINT promotion_detail_pkey PRIMARY KEY (id);


--
-- Name: promotion_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_promotion
  ADD CONSTRAINT promotion_pkey PRIMARY KEY (id);


--
-- Name: promotion_report_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rep_promotion
  ADD CONSTRAINT promotion_report_pkey PRIMARY KEY (id);


--
-- Name: property_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_property
  ADD CONSTRAINT property_pkey PRIMARY KEY (id);


--
-- Name: property_section_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY enm_property_section
  ADD CONSTRAINT property_section_pkey PRIMARY KEY (id);


--
-- Name: property_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY enm_property_type
  ADD CONSTRAINT property_type_pkey PRIMARY KEY (id);


--
-- Name: property_value_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_property_value
  ADD CONSTRAINT property_value_pkey PRIMARY KEY (id);


--
-- Name: ref_account_doc_auction_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_account_doc_auction
  ADD CONSTRAINT ref_account_doc_auction_pkey PRIMARY KEY (account_id, auction_id);


--
-- Name: refund_corrective_invoice_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund_corrective_invoice
  ADD CONSTRAINT refund_corrective_invoice_pkey PRIMARY KEY (id);


--
-- Name: refund_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund_detail
  ADD CONSTRAINT refund_detail_pkey PRIMARY KEY (id);


--
-- Name: refund_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund
  ADD CONSTRAINT refund_pkey PRIMARY KEY (id);


--
-- Name: revaluation_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_revaluation_comments
  ADD CONSTRAINT revaluation_comments_pkey PRIMARY KEY (id);


--
-- Name: revaluation_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_revaluation_detail
  ADD CONSTRAINT revaluation_detail_pkey PRIMARY KEY (id);


--
-- Name: revaluation_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_revaluation
  ADD CONSTRAINT revaluation_pkey PRIMARY KEY (id);


--
-- Name: st_rate_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_st_rate
  ADD CONSTRAINT st_rate_pkey PRIMARY KEY (id);


--
-- Name: state_tax_inspectorate_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_sti
  ADD CONSTRAINT state_tax_inspectorate_pkey PRIMARY KEY (id);


--
-- Name: street_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_street
  ADD CONSTRAINT street_pkey PRIMARY KEY (id);


--
-- Name: street_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY enm_street_type
  ADD CONSTRAINT street_type_pkey PRIMARY KEY (id);


--
-- Name: tag_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY enm_tag
  ADD CONSTRAINT tag_pkey PRIMARY KEY (id);


--
-- Name: trade_mark_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_trade_mark
  ADD CONSTRAINT trade_mark_pkey PRIMARY KEY (id);


--
-- Name: trade_offer_certificate_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_cetificate
  ADD CONSTRAINT trade_offer_certificate_pkey PRIMARY KEY (id);


--
-- Name: trade_offer_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_comments
  ADD CONSTRAINT trade_offer_comments_pkey PRIMARY KEY (id);


--
-- Name: trade_offer_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_detail
  ADD CONSTRAINT trade_offer_detail_pkey PRIMARY KEY (id);


--
-- Name: trade_offer_favorites_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_favorites
  ADD CONSTRAINT trade_offer_favorites_pkey PRIMARY KEY (id);


--
-- Name: trade_offer_image_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_image
  ADD CONSTRAINT trade_offer_image_pkey PRIMARY KEY (id);


--
-- Name: trade_offer_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer
  ADD CONSTRAINT trade_offer_pkey PRIMARY KEY (id);


--
-- Name: trade_offer_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_tag
  ADD CONSTRAINT trade_offer_tag_pkey PRIMARY KEY (id);


--
-- Name: trade_offer_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY enm_trade_offer_type
  ADD CONSTRAINT trade_offer_type_pkey PRIMARY KEY (id);


--
-- Name: trade_offer_viewed_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_viewed
  ADD CONSTRAINT trade_offer_viewed_pkey PRIMARY KEY (id);


--
-- Name: unit_classification_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_unit_classification
  ADD CONSTRAINT unit_classification_pkey PRIMARY KEY (id);


--
-- Name: unit_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_unit
  ADD CONSTRAINT unit_pkey PRIMARY KEY (id);


--
-- Name: vat_delivery_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_vat_delivery_type
  ADD CONSTRAINT vat_delivery_type_pkey PRIMARY KEY (id);


--
-- Name: vat_rate_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_vat_rate
  ADD CONSTRAINT vat_rate_pkey PRIMARY KEY (id);


--
-- Name: ref_account2; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ref_account2 ON public.ref_account USING btree (email);


--
-- Name: ref_contractor_goods2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ref_contractor_goods2 ON public.ref_contractor_goods USING btree (contractor_id);


--
-- Name: ref_contractor_goods3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ref_contractor_goods3 ON public.ref_contractor_goods USING btree (department_id);


--
-- Name: ref_contractor_goods4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ref_contractor_goods4 ON public.ref_contractor_goods USING btree (goods_id);


--
-- Name: ref_contractor_goods5; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ref_contractor_goods5 ON public.ref_contractor_goods USING btree (contractor_id, goods_id);


--
-- Name: ref_goods2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ref_goods2 ON public.ref_goods USING btree (barcode);


--
-- Name: ref_goods3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ref_goods3 ON public.ref_goods USING btree (group_id);


--
-- Name: ref_goods4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ref_goods4 ON public.ref_goods USING btree (article);


--
-- Name: ref_goods_barcode2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ref_goods_barcode2 ON public.ref_goods_barcode USING btree (goods_id);


--
-- Name: ref_goods_barcode3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ref_goods_barcode3 ON public.ref_goods_barcode USING btree (barcode);


--
-- Name: ref_goods_group2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ref_goods_group2 ON public.ref_goods_group USING btree (parent);


--
-- Name: ref_goods_price2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ref_goods_price2 ON public.ref_goods_price USING btree (cg_id);


--
-- Name: rep_goods_balance2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX rep_goods_balance2 ON public.rep_goods_balance USING btree (outlet_department);


--
-- Name: rep_goods_balance3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX rep_goods_balance3 ON public.rep_goods_balance USING btree (outlet);


--
-- Name: rep_goods_balance4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX rep_goods_balance4 ON public.rep_goods_balance USING btree (supplier);


--
-- Name: rep_goods_balance5; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX rep_goods_balance5 ON public.rep_goods_balance USING btree (goods);


--
-- Name: account_department_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_account
  ADD CONSTRAINT account_department_fkey FOREIGN KEY (department_id) REFERENCES ref_contractor_department (id);


--
-- Name: account_settings_account_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_account_settings
  ADD CONSTRAINT account_settings_account_id_fkey FOREIGN KEY (account_id) REFERENCES ref_account (id);


--
-- Name: account_settings_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_account_settings
  ADD CONSTRAINT account_settings_category_id_fkey FOREIGN KEY (category_id) REFERENCES ref_goods_category (id);


--
-- Name: account_settings_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_account
  ADD CONSTRAINT account_settings_id_fkey FOREIGN KEY (account_settings_id) REFERENCES ref_account_settings (id);


--
-- Name: account_settings_tax_rate_nds_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_account_settings
  ADD CONSTRAINT account_settings_tax_rate_nds_id_fkey FOREIGN KEY (vat_rate_id) REFERENCES ref_vat_rate (id);


--
-- Name: account_settings_tax_rate_nsp_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_account_settings
  ADD CONSTRAINT account_settings_tax_rate_nsp_id_fkey FOREIGN KEY (st_rate_id) REFERENCES ref_st_rate (id);


--
-- Name: act_reconciliation_detail_department_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_act_reconciliation_detail
  ADD CONSTRAINT act_reconciliation_detail_department_fkey FOREIGN KEY (department_id) REFERENCES ref_contractor_department (id);


--
-- Name: act_reconciliation_outlet_department_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_act_reconciliation
  ADD CONSTRAINT act_reconciliation_outlet_department_fkey FOREIGN KEY (outlet_department_id) REFERENCES ref_contractor_department (id);


--
-- Name: act_reconciliation_supplier_department_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_act_reconciliation
  ADD CONSTRAINT act_reconciliation_supplier_department_fkey FOREIGN KEY (supplier_department_id) REFERENCES ref_contractor_department (id);


--
-- Name: admission_document_invoice_delivery_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_admission
  ADD CONSTRAINT admission_document_invoice_delivery_type_fkey FOREIGN KEY (invoice_delivery_type_id) REFERENCES ref_invoice_delivery_type (id);


--
-- Name: admission_document_nds_delivery_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_admission
  ADD CONSTRAINT admission_document_nds_delivery_type_fkey FOREIGN KEY (vat_delivery_type_id) REFERENCES ref_vat_delivery_type (id);


--
-- Name: admission_document_tax_rate_nds_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_admission
  ADD CONSTRAINT admission_document_tax_rate_nds_id_fkey FOREIGN KEY (vat_rate_id) REFERENCES ref_vat_rate (id);


--
-- Name: admission_document_tax_rate_nsp_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_admission
  ADD CONSTRAINT admission_document_tax_rate_nsp_id_fkey FOREIGN KEY (st_rate_id) REFERENCES ref_st_rate (id);


--
-- Name: assortment_document_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_assortment
  ADD CONSTRAINT assortment_document_category_id_fkey FOREIGN KEY (category_id) REFERENCES ref_goods_category (id);


--
-- Name: assortment_document_outlet_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_assortment
  ADD CONSTRAINT assortment_document_outlet_fk FOREIGN KEY (outlet_id) REFERENCES ref_contractor (id);


--
-- Name: assortment_document_supplier_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_assortment
  ADD CONSTRAINT assortment_document_supplier_fk FOREIGN KEY (supplier_id) REFERENCES ref_contractor (id);


--
-- Name: assortment_goods_assortment_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_assortment_detail
  ADD CONSTRAINT assortment_goods_assortment_id_fk FOREIGN KEY (assortment_id) REFERENCES doc_assortment (id);


--
-- Name: assortment_goods_goods_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_assortment_detail
  ADD CONSTRAINT assortment_goods_goods_id_fk FOREIGN KEY (goods_id) REFERENCES ref_goods (id);


--
-- Name: assortment_goods_tax_rate_nds_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_assortment_detail
  ADD CONSTRAINT assortment_goods_tax_rate_nds_id_fk FOREIGN KEY (vat_rate_id) REFERENCES ref_vat_rate (id);


--
-- Name: assortment_goods_tax_rate_nsp_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_assortment_detail
  ADD CONSTRAINT assortment_goods_tax_rate_nsp_id_fk FOREIGN KEY (st_rate_id) REFERENCES ref_vat_rate (id);


--
-- Name: balance_report_contractor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rep_goods_balance
  ADD CONSTRAINT balance_report_contractor_fkey FOREIGN KEY (outlet) REFERENCES ref_contractor (id);


--
-- Name: balance_report_department_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rep_goods_balance
  ADD CONSTRAINT balance_report_department_fkey FOREIGN KEY (outlet_department) REFERENCES ref_contractor_department (id);


--
-- Name: balance_report_goods_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rep_goods_balance
  ADD CONSTRAINT balance_report_goods_fkey FOREIGN KEY (goods) REFERENCES ref_goods (id);


--
-- Name: balance_report_supplier_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rep_goods_balance
  ADD CONSTRAINT balance_report_supplier_fkey FOREIGN KEY (supplier) REFERENCES ref_contractor (id);


--
-- Name: bank_account_bank_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_bank_account
  ADD CONSTRAINT bank_account_bank_id_fkey FOREIGN KEY (bank_id) REFERENCES ref_bank (id);


--
-- Name: bank_account_contractor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_bank_account
  ADD CONSTRAINT bank_account_contractor_id_fkey FOREIGN KEY (contractor_id) REFERENCES ref_contractor (id);


--
-- Name: commodity_nomenclature_foreign_economic_activity_unit_classific; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_commodity_classification_fea
  ADD CONSTRAINT commodity_nomenclature_foreign_economic_activity_unit_classific FOREIGN KEY (unit_classification_id) REFERENCES ref_unit_classification (id);


--
-- Name: contractor_goods_partner_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_goods
  ADD CONSTRAINT contractor_goods_partner_fkey FOREIGN KEY (partner_id) REFERENCES ref_contractor (id);


--
-- Name: contractor_goods_unit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_goods
  ADD CONSTRAINT contractor_goods_unit_id_fkey FOREIGN KEY (unit_id) REFERENCES ref_unit (id);


--
-- Name: contractor_sti_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor
  ADD CONSTRAINT contractor_sti_id_fkey FOREIGN KEY (sti_id) REFERENCES ref_sti (id);


--
-- Name: document_admission_order_admission_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_admission_order
  ADD CONSTRAINT document_admission_order_admission_id_fk FOREIGN KEY (admission_id) REFERENCES doc_admission (id);


--
-- Name: document_admission_order_order_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_admission_order
  ADD CONSTRAINT document_admission_order_order_id_fk FOREIGN KEY (order_id) REFERENCES doc_order (id);


--
-- Name: fk1myrudig1y14664n897ne7tis; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_mail
  ADD CONSTRAINT fk1myrudig1y14664n897ne7tis FOREIGN KEY (department_id) REFERENCES ref_contractor_department (id);


--
-- Name: fk37pem6phyi16g7i6xesconk9x; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_goods
  ADD CONSTRAINT fk37pem6phyi16g7i6xesconk9x FOREIGN KEY (goods_id) REFERENCES ref_goods (id);


--
-- Name: fk38jd7iymva26wtcxk1klo90d5; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_goods
  ADD CONSTRAINT fk38jd7iymva26wtcxk1klo90d5 FOREIGN KEY (department_id) REFERENCES ref_contractor_department (id);


--
-- Name: fk4jkwfux0s1luq87rhgtt0blg8; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_price
  ADD CONSTRAINT fk4jkwfux0s1luq87rhgtt0blg8 FOREIGN KEY (cg_id) REFERENCES ref_contractor_goods (id);


--
-- Name: fk4wa33oc94ik2ypl8jt27foo9g; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_marketing
  ADD CONSTRAINT fk4wa33oc94ik2ypl8jt27foo9g FOREIGN KEY (supplier_id) REFERENCES ref_contractor (id);


--
-- Name: fk5muyrvjk635ewpjvv0ni5uya3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods
  ADD CONSTRAINT fk5muyrvjk635ewpjvv0ni5uya3 FOREIGN KEY (unit_id) REFERENCES ref_unit (id);


--
-- Name: fk5ykd4kwcaggw2xrha59sgh1dm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_order_detail
  ADD CONSTRAINT fk5ykd4kwcaggw2xrha59sgh1dm FOREIGN KEY (order_id) REFERENCES doc_order (id);


--
-- Name: fk65eau10c23issk3wwjmkdb0er; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_order
  ADD CONSTRAINT fk65eau10c23issk3wwjmkdb0er FOREIGN KEY (outlet_id) REFERENCES ref_contractor (id);


--
-- Name: fk6axlbm3ofqokgk1jli6rt1oq9; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods
  ADD CONSTRAINT fk6axlbm3ofqokgk1jli6rt1oq9 FOREIGN KEY (group_id) REFERENCES ref_goods_group (id);


--
-- Name: fk6xb90i3vw8fvjhduswsri3x4p; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor
  ADD CONSTRAINT fk6xb90i3vw8fvjhduswsri3x4p FOREIGN KEY (bank_account_id) REFERENCES ref_bank_account (id);


--
-- Name: fk8h0cbqaae8krx7sbbc98jy39j; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund
  ADD CONSTRAINT fk8h0cbqaae8krx7sbbc98jy39j FOREIGN KEY (supplier_id) REFERENCES ref_contractor (id);


--
-- Name: fk8sulivmxrdrbovq7of10o7kva; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_payment
  ADD CONSTRAINT fk8sulivmxrdrbovq7of10o7kva FOREIGN KEY (supplier_id) REFERENCES ref_contractor (id);


--
-- Name: fk9i117roogio1q8t66o08bdalo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_partner
  ADD CONSTRAINT fk9i117roogio1q8t66o08bdalo FOREIGN KEY (department_id) REFERENCES ref_contractor_department (id);


--
-- Name: fk9uopsej6r9sve7webyg78lm46; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_order_detail
  ADD CONSTRAINT fk9uopsej6r9sve7webyg78lm46 FOREIGN KEY (goods_id) REFERENCES ref_goods (id);


--
-- Name: fk9wxerj2400waiynwi9q0t2vqf; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_mail
  ADD CONSTRAINT fk9wxerj2400waiynwi9q0t2vqf FOREIGN KEY (contractor_id) REFERENCES ref_contractor (id);


--
-- Name: fka6asksfnhc98k709ddgrbjfp7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_department
  ADD CONSTRAINT fka6asksfnhc98k709ddgrbjfp7 FOREIGN KEY (contractor_id) REFERENCES ref_contractor (id);


--
-- Name: fka6svoh6ujcha1h8prd4qn6atg; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund_detail
  ADD CONSTRAINT fka6svoh6ujcha1h8prd4qn6atg FOREIGN KEY (goods_id) REFERENCES ref_goods (id);


--
-- Name: fkaiqpkomjnvpd91ejfierlv5r1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_admission
  ADD CONSTRAINT fkaiqpkomjnvpd91ejfierlv5r1 FOREIGN KEY (supplier_department_id) REFERENCES ref_contractor_department (id);


--
-- Name: fkalt6ldbba6yxvirfdj80dx7ml; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_account
  ADD CONSTRAINT fkalt6ldbba6yxvirfdj80dx7ml FOREIGN KEY (contractor_id) REFERENCES ref_contractor (id);


--
-- Name: fkb5ibg1w2exf3uwocvb7tojb1n; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_marketing
  ADD CONSTRAINT fkb5ibg1w2exf3uwocvb7tojb1n FOREIGN KEY (outlet_id) REFERENCES ref_contractor (id);


--
-- Name: fkb83ulybxxrmvfxitxj3hwqhq2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_order
  ADD CONSTRAINT fkb83ulybxxrmvfxitxj3hwqhq2 FOREIGN KEY (supplier_id) REFERENCES ref_contractor (id);


--
-- Name: fkbhiuc1f2s84otkucyi713ullb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_admission_detail
  ADD CONSTRAINT fkbhiuc1f2s84otkucyi713ullb FOREIGN KEY (admission_id) REFERENCES doc_admission (id);


--
-- Name: fkbm8q4bft2374ilswnul8uh61d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund_detail
  ADD CONSTRAINT fkbm8q4bft2374ilswnul8uh61d FOREIGN KEY (unit_id) REFERENCES ref_unit (id);


--
-- Name: fkbuc5vy0fmrhbgs9esqwnyn5i3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_marketing_detail
  ADD CONSTRAINT fkbuc5vy0fmrhbgs9esqwnyn5i3 FOREIGN KEY (goods_id) REFERENCES ref_goods (id);


--
-- Name: fkca25dqh3sod44ko3pw72rcim2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_partner
  ADD CONSTRAINT fkca25dqh3sod44ko3pw72rcim2 FOREIGN KEY (partner_department_id) REFERENCES ref_contractor_department (id);


--
-- Name: fkddori054xyhu7gipm879fs0n8; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_admission_detail
  ADD CONSTRAINT fkddori054xyhu7gipm879fs0n8 FOREIGN KEY (goods_id) REFERENCES ref_goods (id);


--
-- Name: fkdoc_act_re135475; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_act_reconciliation_detail
  ADD CONSTRAINT fkdoc_act_re135475 FOREIGN KEY (doc_status_id) REFERENCES enm_document_status (id);


--
-- Name: fkdoc_admiss261992; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_admission
  ADD CONSTRAINT fkdoc_admiss261992 FOREIGN KEY (oe_status_id) REFERENCES enm_exchange_status (id);


--
-- Name: fkdoc_admiss437546; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_admission
  ADD CONSTRAINT fkdoc_admiss437546 FOREIGN KEY (status_id) REFERENCES enm_document_status (id);


--
-- Name: fkdoc_admiss930599; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_admission
  ADD CONSTRAINT fkdoc_admiss930599 FOREIGN KEY (se_status_id) REFERENCES enm_exchange_status (id);


--
-- Name: fkdoc_assort15779; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_assortment
  ADD CONSTRAINT fkdoc_assort15779 FOREIGN KEY (status_id) REFERENCES enm_document_status (id);


--
-- Name: fkdoc_assort191333; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_assortment
  ADD CONSTRAINT fkdoc_assort191333 FOREIGN KEY (oe_status_id) REFERENCES enm_exchange_status (id);


--
-- Name: fkdoc_assort448865; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_assortment
  ADD CONSTRAINT fkdoc_assort448865 FOREIGN KEY (se_status_id) REFERENCES enm_exchange_status (id);


--
-- Name: fkdoc_assort514183; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_assortment_comments
  ADD CONSTRAINT fkdoc_assort514183 FOREIGN KEY (assortment_id) REFERENCES doc_assortment (id);


--
-- Name: fkdoc_assort535146; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_assortment_comments
  ADD CONSTRAINT fkdoc_assort535146 FOREIGN KEY (account_id) REFERENCES ref_account (id);


--
-- Name: fkdoc_auctio119739; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_viewed
  ADD CONSTRAINT fkdoc_auctio119739 FOREIGN KEY (auction_id) REFERENCES doc_auction (id);


--
-- Name: fkdoc_auctio131025; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_comments
  ADD CONSTRAINT fkdoc_auctio131025 FOREIGN KEY (auction_id) REFERENCES doc_auction (id);


--
-- Name: fkdoc_auctio171560; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_tag
  ADD CONSTRAINT fkdoc_auctio171560 FOREIGN KEY (tag_id) REFERENCES enm_tag (id);


--
-- Name: fkdoc_auctio174005; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction
  ADD CONSTRAINT fkdoc_auctio174005 FOREIGN KEY (address_id) REFERENCES ref_address (id);


--
-- Name: fkdoc_auctio176884; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_favorites
  ADD CONSTRAINT fkdoc_auctio176884 FOREIGN KEY (auction_id) REFERENCES doc_auction (id);


--
-- Name: fkdoc_auctio1840; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_detail
  ADD CONSTRAINT fkdoc_auctio1840 FOREIGN KEY (property_type_id) REFERENCES enm_property_type (id);


--
-- Name: fkdoc_auctio188882; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_bid
  ADD CONSTRAINT fkdoc_auctio188882 FOREIGN KEY (account_id) REFERENCES ref_account (id);


--
-- Name: fkdoc_auctio252027; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction
  ADD CONSTRAINT fkdoc_auctio252027 FOREIGN KEY (contractor_id) REFERENCES ref_contractor (id);


--
-- Name: fkdoc_auctio332998; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction
  ADD CONSTRAINT fkdoc_auctio332998 FOREIGN KEY (type_id) REFERENCES enm_auction_type (id);


--
-- Name: fkdoc_auctio354373; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_bid
  ADD CONSTRAINT fkdoc_auctio354373 FOREIGN KEY (auction_id) REFERENCES doc_auction (id);


--
-- Name: fkdoc_auctio371426; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_tag
  ADD CONSTRAINT fkdoc_auctio371426 FOREIGN KEY (auction_id) REFERENCES doc_auction (id);


--
-- Name: fkdoc_auctio412230; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_comments
  ADD CONSTRAINT fkdoc_auctio412230 FOREIGN KEY (account_id) REFERENCES ref_account (id);


--
-- Name: fkdoc_auctio454549; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_detail
  ADD CONSTRAINT fkdoc_auctio454549 FOREIGN KEY (property_id) REFERENCES ref_property (id);


--
-- Name: fkdoc_auctio467318; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction
  ADD CONSTRAINT fkdoc_auctio467318 FOREIGN KEY (ate_id) REFERENCES ref_ate (id);


--
-- Name: fkdoc_auctio649452; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_image
  ADD CONSTRAINT fkdoc_auctio649452 FOREIGN KEY (auction_id) REFERENCES doc_auction (id);


--
-- Name: fkdoc_auctio655120; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction
  ADD CONSTRAINT fkdoc_auctio655120 FOREIGN KEY (category_id) REFERENCES ref_goods_category (id);


--
-- Name: fkdoc_auctio662994; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_viewed
  ADD CONSTRAINT fkdoc_auctio662994 FOREIGN KEY (account_id) REFERENCES ref_account (id);


--
-- Name: fkdoc_auctio681943; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction
  ADD CONSTRAINT fkdoc_auctio681943 FOREIGN KEY (winner_id) REFERENCES ref_contractor (id);


--
-- Name: fkdoc_auctio713204; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_detail
  ADD CONSTRAINT fkdoc_auctio713204 FOREIGN KEY (auction_id) REFERENCES doc_auction (id);


--
-- Name: fkdoc_auctio720139; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction_favorites
  ADD CONSTRAINT fkdoc_auctio720139 FOREIGN KEY (account_id) REFERENCES ref_account (id);


--
-- Name: fkdoc_auctio783812; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_auction
  ADD CONSTRAINT fkdoc_auctio783812 FOREIGN KEY (goods_id) REFERENCES ref_goods (id);


--
-- Name: fkdoc_market102476; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_marketing
  ADD CONSTRAINT fkdoc_market102476 FOREIGN KEY (se_status_id) REFERENCES enm_exchange_status (id);


--
-- Name: fkdoc_market362168; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_marketing
  ADD CONSTRAINT fkdoc_market362168 FOREIGN KEY (status_id) REFERENCES enm_document_status (id);


--
-- Name: fkdoc_market433868; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_marketing
  ADD CONSTRAINT fkdoc_market433868 FOREIGN KEY (oe_status_id) REFERENCES enm_exchange_status (id);


--
-- Name: fkdoc_order285411; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_order
  ADD CONSTRAINT fkdoc_order285411 FOREIGN KEY (se_status_id) REFERENCES enm_exchange_status (id);


--
-- Name: fkdoc_order778464; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_order
  ADD CONSTRAINT fkdoc_order778464 FOREIGN KEY (status_id) REFERENCES enm_document_status (id);


--
-- Name: fkdoc_order954018; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_order
  ADD CONSTRAINT fkdoc_order954018 FOREIGN KEY (oe_status_id) REFERENCES enm_exchange_status (id);


--
-- Name: fkdoc_paymen103222; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_payment
  ADD CONSTRAINT fkdoc_paymen103222 FOREIGN KEY (se_status_id) REFERENCES enm_exchange_status (id);


--
-- Name: fkdoc_paymen434614; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_payment
  ADD CONSTRAINT fkdoc_paymen434614 FOREIGN KEY (oe_status_id) REFERENCES enm_exchange_status (id);


--
-- Name: fkdoc_paymen610168; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_payment
  ADD CONSTRAINT fkdoc_paymen610168 FOREIGN KEY (status_id) REFERENCES enm_document_status (id);


--
-- Name: fkdoc_promot259449; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_promotion_comments
  ADD CONSTRAINT fkdoc_promot259449 FOREIGN KEY (account_id) REFERENCES ref_account (id);


--
-- Name: fkdoc_promot308505; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_promotion_comments
  ADD CONSTRAINT fkdoc_promot308505 FOREIGN KEY (promotion_id) REFERENCES doc_promotion (id);


--
-- Name: fkdoc_promot544008; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_promotion
  ADD CONSTRAINT fkdoc_promot544008 FOREIGN KEY (se_status_id) REFERENCES enm_exchange_status (id);


--
-- Name: fkdoc_promot875400; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_promotion
  ADD CONSTRAINT fkdoc_promot875400 FOREIGN KEY (oe_status_id) REFERENCES enm_exchange_status (id);


--
-- Name: fkdoc_promot920635; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_promotion
  ADD CONSTRAINT fkdoc_promot920635 FOREIGN KEY (status_id) REFERENCES enm_document_status (id);


--
-- Name: fkdoc_refund578298; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund
  ADD CONSTRAINT fkdoc_refund578298 FOREIGN KEY (status_id) REFERENCES enm_document_status (id);


--
-- Name: fkdoc_refund753852; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund
  ADD CONSTRAINT fkdoc_refund753852 FOREIGN KEY (oe_status_id) REFERENCES enm_exchange_status (id);


--
-- Name: fkdoc_refund85245; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund
  ADD CONSTRAINT fkdoc_refund85245 FOREIGN KEY (se_status_id) REFERENCES enm_exchange_status (id);


--
-- Name: fkdoc_revalu388138; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_revaluation
  ADD CONSTRAINT fkdoc_revalu388138 FOREIGN KEY (se_status_id) REFERENCES enm_exchange_status (id);


--
-- Name: fkdoc_revalu4942; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_revaluation_comments
  ADD CONSTRAINT fkdoc_revalu4942 FOREIGN KEY (revaluation_id) REFERENCES doc_revaluation (id);


--
-- Name: fkdoc_revalu676647; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_revaluation_comments
  ADD CONSTRAINT fkdoc_revalu676647 FOREIGN KEY (account_id) REFERENCES ref_account (id);


--
-- Name: fkdoc_revalu719530; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_revaluation
  ADD CONSTRAINT fkdoc_revalu719530 FOREIGN KEY (oe_status_id) REFERENCES enm_exchange_status (id);


--
-- Name: fkdoc_revalu895084; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_revaluation
  ADD CONSTRAINT fkdoc_revalu895084 FOREIGN KEY (status_id) REFERENCES enm_document_status (id);


--
-- Name: fkdoc_trade_122023; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_image
  ADD CONSTRAINT fkdoc_trade_122023 FOREIGN KEY (trade_offer_id) REFERENCES doc_trade_offer (id);


--
-- Name: fkdoc_trade_146492; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer
  ADD CONSTRAINT fkdoc_trade_146492 FOREIGN KEY (goods_package_id) REFERENCES ref_goods_package (id);


--
-- Name: fkdoc_trade_206735; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_viewed
  ADD CONSTRAINT fkdoc_trade_206735 FOREIGN KEY (account_id) REFERENCES ref_account (id);


--
-- Name: fkdoc_trade_211289; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_tag
  ADD CONSTRAINT fkdoc_trade_211289 FOREIGN KEY (trade_offer_id) REFERENCES doc_trade_offer (id);


--
-- Name: fkdoc_trade_298402; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_comments
  ADD CONSTRAINT fkdoc_trade_298402 FOREIGN KEY (trade_offer_id) REFERENCES doc_trade_offer (id);


--
-- Name: fkdoc_trade_312899; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer
  ADD CONSTRAINT fkdoc_trade_312899 FOREIGN KEY (category_id) REFERENCES ref_goods_category (id);


--
-- Name: fkdoc_trade_31936; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_detail
  ADD CONSTRAINT fkdoc_trade_31936 FOREIGN KEY (trade_offer_id) REFERENCES doc_trade_offer (id);


--
-- Name: fkdoc_trade_438470; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_viewed
  ADD CONSTRAINT fkdoc_trade_438470 FOREIGN KEY (trade_offer_id) REFERENCES doc_trade_offer (id);


--
-- Name: fkdoc_trade_445415; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer
  ADD CONSTRAINT fkdoc_trade_445415 FOREIGN KEY (unit_id) REFERENCES ref_unit (id);


--
-- Name: fkdoc_trade_558408; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer
  ADD CONSTRAINT fkdoc_trade_558408 FOREIGN KEY (goods_id) REFERENCES ref_goods (id);


--
-- Name: fkdoc_trade_568393; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_cetificate
  ADD CONSTRAINT fkdoc_trade_568393 FOREIGN KEY (trade_offer_id) REFERENCES doc_trade_offer (id);


--
-- Name: fkdoc_trade_576387; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer
  ADD CONSTRAINT fkdoc_trade_576387 FOREIGN KEY (vat_rate_id) REFERENCES ref_vat_rate (id);


--
-- Name: fkdoc_trade_594248; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer
  ADD CONSTRAINT fkdoc_trade_594248 FOREIGN KEY (contractor_id) REFERENCES ref_contractor (id);


--
-- Name: fkdoc_trade_611557; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer
  ADD CONSTRAINT fkdoc_trade_611557 FOREIGN KEY (type_id) REFERENCES enm_trade_offer_type (id);


--
-- Name: fkdoc_trade_647311; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_detail
  ADD CONSTRAINT fkdoc_trade_647311 FOREIGN KEY (property_id) REFERENCES ref_property (id);


--
-- Name: fkdoc_trade_72121; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer
  ADD CONSTRAINT fkdoc_trade_72121 FOREIGN KEY (contractor_department_id) REFERENCES ref_contractor_department (id);


--
-- Name: fkdoc_trade_736984; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_favorites
  ADD CONSTRAINT fkdoc_trade_736984 FOREIGN KEY (account_id) REFERENCES ref_account (id);


--
-- Name: fkdoc_trade_777305; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_tag
  ADD CONSTRAINT fkdoc_trade_777305 FOREIGN KEY (tag_id) REFERENCES enm_tag (id);


--
-- Name: fkdoc_trade_809539; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer
  ADD CONSTRAINT fkdoc_trade_809539 FOREIGN KEY (ate_id) REFERENCES ref_ate (id);


--
-- Name: fkdoc_trade_831783; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer
  ADD CONSTRAINT fkdoc_trade_831783 FOREIGN KEY (address_id) REFERENCES ref_address (id);


--
-- Name: fkdoc_trade_867889; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_detail
  ADD CONSTRAINT fkdoc_trade_867889 FOREIGN KEY (property_type_id) REFERENCES enm_property_type (id);


--
-- Name: fkdoc_trade_908220; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_favorites
  ADD CONSTRAINT fkdoc_trade_908220 FOREIGN KEY (trade_offer_id) REFERENCES doc_trade_offer (id);


--
-- Name: fkdoc_trade_943607; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_trade_offer_comments
  ADD CONSTRAINT fkdoc_trade_943607 FOREIGN KEY (account_id) REFERENCES ref_account (id);


--
-- Name: fke12yes9rvedvfr5tges3yysge; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_order_detail
  ADD CONSTRAINT fke12yes9rvedvfr5tges3yysge FOREIGN KEY (unit_id) REFERENCES ref_unit (id);


--
-- Name: fkemmlmaw2vkm4e1xnlp9619obb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_group
  ADD CONSTRAINT fkemmlmaw2vkm4e1xnlp9619obb FOREIGN KEY (parent) REFERENCES ref_goods_group (id);


--
-- Name: fkenm_filter505090; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY enm_filter_type
  ADD CONSTRAINT fkenm_filter505090 FOREIGN KEY (type_id) REFERENCES enm_property_type (id);


--
-- Name: fkf5ct998gpj7k22sgrkr3n19nv; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_order
  ADD CONSTRAINT fkf5ct998gpj7k22sgrkr3n19nv FOREIGN KEY (supplier_department_id) REFERENCES ref_contractor_department (id);


--
-- Name: fkfr0pvoh9w2l1bh3omnxbsvd12; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_admission
  ADD CONSTRAINT fkfr0pvoh9w2l1bh3omnxbsvd12 FOREIGN KEY (outlet_id) REFERENCES ref_contractor (id);


--
-- Name: fkfrrkc86jm2gfkx673ke1fverm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_marketing_detail
  ADD CONSTRAINT fkfrrkc86jm2gfkx673ke1fverm FOREIGN KEY (unit_id) REFERENCES ref_unit (id);


--
-- Name: fkgqxldkn85gtas95rjvj6gmgye; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_admission
  ADD CONSTRAINT fkgqxldkn85gtas95rjvj6gmgye FOREIGN KEY (supplier_agreement_id) REFERENCES ref_agreement (id);


--
-- Name: fkhsjni6pkyubhxmp90plpy62kn; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_agreement
  ADD CONSTRAINT fkhsjni6pkyubhxmp90plpy62kn FOREIGN KEY (contractor_id) REFERENCES ref_contractor (id);


--
-- Name: fkic8q45wpafoisgy3jonloflfm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_goods
  ADD CONSTRAINT fkic8q45wpafoisgy3jonloflfm FOREIGN KEY (contractor_id) REFERENCES ref_contractor (id);


--
-- Name: fkitakbhjlqdhq17bcynwvq6s8x; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund_detail
  ADD CONSTRAINT fkitakbhjlqdhq17bcynwvq6s8x FOREIGN KEY (refund_id) REFERENCES doc_refund (id);


--
-- Name: fkjox8ny3cn7dyrhhqm7rlstcv7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_partner
  ADD CONSTRAINT fkjox8ny3cn7dyrhhqm7rlstcv7 FOREIGN KEY (contractor_id) REFERENCES ref_contractor (id);


--
-- Name: fkkaooesuy71vkkpmrur5bhlx7e; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_payment
  ADD CONSTRAINT fkkaooesuy71vkkpmrur5bhlx7e FOREIGN KEY (outlet_id) REFERENCES ref_contractor (id);


--
-- Name: fkkpkw6odkbqxq782e4dm9b4dg; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_admission
  ADD CONSTRAINT fkkpkw6odkbqxq782e4dm9b4dg FOREIGN KEY (supplier_id) REFERENCES ref_contractor (id);


--
-- Name: fkn0lrgqbb4h235bq1vc9rigev; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_act_reconciliation
  ADD CONSTRAINT fkn0lrgqbb4h235bq1vc9rigev FOREIGN KEY (supplier_id) REFERENCES ref_contractor (id);


--
-- Name: fkoeijm2w29rb16aynpbdj7t7r5; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_agreement
  ADD CONSTRAINT fkoeijm2w29rb16aynpbdj7t7r5 FOREIGN KEY (partner_department_id) REFERENCES ref_contractor_department (id);


--
-- Name: fkpstn20sg1dj7llcojaw6yo8ks; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_agreement
  ADD CONSTRAINT fkpstn20sg1dj7llcojaw6yo8ks FOREIGN KEY (partner_id) REFERENCES ref_contractor (id);


--
-- Name: fkqcgjlgeishjh5ljiusysvy877; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_ate
  ADD CONSTRAINT fkqcgjlgeishjh5ljiusysvy877 FOREIGN KEY (parent) REFERENCES ref_ate (id);


--
-- Name: fkqdce3ej77cw2rk272q5d6hga9; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_admission
  ADD CONSTRAINT fkqdce3ej77cw2rk272q5d6hga9 FOREIGN KEY (outlet_department_id) REFERENCES ref_contractor_department (id);


--
-- Name: fkqkvodq3bn1mry9qglf8bhh2ju; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_agreement
  ADD CONSTRAINT fkqkvodq3bn1mry9qglf8bhh2ju FOREIGN KEY (contractor_department_id) REFERENCES ref_contractor_department (id);


--
-- Name: fkqlixrrnutm0i6ri3jdv3uf60m; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_act_reconciliation
  ADD CONSTRAINT fkqlixrrnutm0i6ri3jdv3uf60m FOREIGN KEY (outlet_id) REFERENCES ref_contractor (id);


--
-- Name: fkqu12lq3pb7hd41s11g7j23lp9; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_admission_detail
  ADD CONSTRAINT fkqu12lq3pb7hd41s11g7j23lp9 FOREIGN KEY (unit_id) REFERENCES ref_unit (id);


--
-- Name: fkref_accoun296272; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_account_settings
  ADD CONSTRAINT fkref_accoun296272 FOREIGN KEY (document_status_id) REFERENCES enm_document_status (id);


--
-- Name: fkref_accoun342052; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_account_doc_auction
  ADD CONSTRAINT fkref_accoun342052 FOREIGN KEY (auction_id) REFERENCES doc_auction (id);


--
-- Name: fkref_accoun885307; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_account_doc_auction
  ADD CONSTRAINT fkref_accoun885307 FOREIGN KEY (account_id) REFERENCES ref_account (id);


--
-- Name: fkref_addres137301; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_address
  ADD CONSTRAINT fkref_addres137301 FOREIGN KEY (contractor_id) REFERENCES ref_contractor (id);


--
-- Name: fkref_addres531498; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_address
  ADD CONSTRAINT fkref_addres531498 FOREIGN KEY (street_id) REFERENCES ref_street (id);


--
-- Name: fkref_addres77990; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_address
  ADD CONSTRAINT fkref_addres77990 FOREIGN KEY (ate_id) REFERENCES ref_ate (id);


--
-- Name: fkref_agreem20345; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_agreement
  ADD CONSTRAINT fkref_agreem20345 FOREIGN KEY (price_type_id) REFERENCES ref_price_type (id);


--
-- Name: fkref_ate446688; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_ate
  ADD CONSTRAINT fkref_ate446688 FOREIGN KEY (type_id) REFERENCES enm_ate_type (id);


--
-- Name: fkref_ate_st382897; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_ate_street
  ADD CONSTRAINT fkref_ate_st382897 FOREIGN KEY (ate_id) REFERENCES ref_ate (id);


--
-- Name: fkref_ate_st992385; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_ate_street
  ADD CONSTRAINT fkref_ate_st992385 FOREIGN KEY (street_id) REFERENCES ref_street (id);


--
-- Name: fkref_bank208929; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_bank
  ADD CONSTRAINT fkref_bank208929 FOREIGN KEY (address_id) REFERENCES ref_address (id);


--
-- Name: fkref_bank_a449494; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_bank_account
  ADD CONSTRAINT fkref_bank_a449494 FOREIGN KEY (currency_id) REFERENCES ref_currency (id);


--
-- Name: fkref_commod201208; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_commodity_classification_fea
  ADD CONSTRAINT fkref_commod201208 FOREIGN KEY (parent) REFERENCES ref_commodity_classification_fea (id);


--
-- Name: fkref_contra236925; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_rating
  ADD CONSTRAINT fkref_contra236925 FOREIGN KEY (contractor_id) REFERENCES ref_contractor (id);


--
-- Name: fkref_contra26474; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_department
  ADD CONSTRAINT fkref_contra26474 FOREIGN KEY (phone_id) REFERENCES ref_phone (id);


--
-- Name: fkref_contra391421; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_department
  ADD CONSTRAINT fkref_contra391421 FOREIGN KEY (address_id) REFERENCES ref_address (id);


--
-- Name: fkref_contra618792; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor
  ADD CONSTRAINT fkref_contra618792 FOREIGN KEY (lfc_id) REFERENCES ref_legal_form_classification (id);


--
-- Name: fkref_contra766007; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor
  ADD CONSTRAINT fkref_contra766007 FOREIGN KEY (department_id) REFERENCES ref_contractor_department (id);


--
-- Name: fkref_filter834773; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_filter_key
  ADD CONSTRAINT fkref_filter834773 FOREIGN KEY (type_id) REFERENCES enm_filter_type (id);


--
-- Name: fkref_goods_223438; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_property
  ADD CONSTRAINT fkref_goods_223438 FOREIGN KEY (section_id) REFERENCES enm_property_section (id);


--
-- Name: fkref_goods_275193; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_property
  ADD CONSTRAINT fkref_goods_275193 FOREIGN KEY (goods_id) REFERENCES ref_goods (id);


--
-- Name: fkref_goods_291541; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_category
  ADD CONSTRAINT fkref_goods_291541 FOREIGN KEY (group_id) REFERENCES enm_goods_category_group (id);


--
-- Name: fkref_goods_390373; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_price
  ADD CONSTRAINT fkref_goods_390373 FOREIGN KEY (price_type_id) REFERENCES ref_price_type (id);


--
-- Name: fkref_goods_592586; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_category
  ADD CONSTRAINT fkref_goods_592586 FOREIGN KEY (parent) REFERENCES ref_goods_category (id);


--
-- Name: fkref_goods_612505; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_property
  ADD CONSTRAINT fkref_goods_612505 FOREIGN KEY (property_id) REFERENCES ref_property (id);


--
-- Name: fkref_goods_842866; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_package
  ADD CONSTRAINT fkref_goods_842866 FOREIGN KEY (goods_id) REFERENCES ref_goods (id);


--
-- Name: fkref_phone302247; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_phone
  ADD CONSTRAINT fkref_phone302247 FOREIGN KEY (contractor_id) REFERENCES ref_contractor (id);


--
-- Name: fkref_proper444784; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_property
  ADD CONSTRAINT fkref_proper444784 FOREIGN KEY (type_id) REFERENCES enm_property_type (id);


--
-- Name: fkref_proper952640; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_property_value
  ADD CONSTRAINT fkref_proper952640 FOREIGN KEY (property_id) REFERENCES ref_property (id);


--
-- Name: fkref_street165344; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_street
  ADD CONSTRAINT fkref_street165344 FOREIGN KEY (type_id) REFERENCES enm_street_type (id);


--
-- Name: fkref_trade_745409; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_trade_mark
  ADD CONSTRAINT fkref_trade_745409 FOREIGN KEY (country_classification_id) REFERENCES ref_country_classification (id);


--
-- Name: fkreg_propos110081; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_proposal
  ADD CONSTRAINT fkreg_propos110081 FOREIGN KEY (goods_id) REFERENCES ref_goods (id);


--
-- Name: fkreg_propos162242; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_proposal
  ADD CONSTRAINT fkreg_propos162242 FOREIGN KEY (trade_offer_id) REFERENCES doc_trade_offer (id);


--
-- Name: fkreg_propos178008; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_proposal
  ADD CONSTRAINT fkreg_propos178008 FOREIGN KEY (country_classification_id) REFERENCES ref_country_classification (id);


--
-- Name: fkreg_propos361394; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_proposal
  ADD CONSTRAINT fkreg_propos361394 FOREIGN KEY (trade_offer_type_id) REFERENCES enm_trade_offer_type (id);


--
-- Name: fkreg_propos587513; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_proposal
  ADD CONSTRAINT fkreg_propos587513 FOREIGN KEY (trade_mark_id) REFERENCES ref_trade_mark (id);


--
-- Name: fkreg_propos74241; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_proposal
  ADD CONSTRAINT fkreg_propos74241 FOREIGN KEY (contractor_id) REFERENCES ref_contractor (id);


--
-- Name: fkreg_propos858949; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_proposal
  ADD CONSTRAINT fkreg_propos858949 FOREIGN KEY (ate_id) REFERENCES ref_ate (id);


--
-- Name: fkreg_propos990201; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_proposal
  ADD CONSTRAINT fkreg_propos990201 FOREIGN KEY (category_id) REFERENCES ref_goods_category (id);


--
-- Name: fkrk5mq8tm4a8fega37fmv13v1u; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund
  ADD CONSTRAINT fkrk5mq8tm4a8fega37fmv13v1u FOREIGN KEY (outlet_id) REFERENCES ref_contractor (id);


--
-- Name: fkrwbxeu8utu2r1bkn0k8b3n2me; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_order
  ADD CONSTRAINT fkrwbxeu8utu2r1bkn0k8b3n2me FOREIGN KEY (supplier_agreement_id) REFERENCES ref_agreement (id);


--
-- Name: fkryowojbm4ykuyaxr5hbgkxtsy; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_order
  ADD CONSTRAINT fkryowojbm4ykuyaxr5hbgkxtsy FOREIGN KEY (outlet_department_id) REFERENCES ref_contractor_department (id);


--
-- Name: fkt7qh7gkhgrtbv6jqcgpuevgul; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_partner
  ADD CONSTRAINT fkt7qh7gkhgrtbv6jqcgpuevgul FOREIGN KEY (partner_id) REFERENCES ref_contractor (id);


--
-- Name: fktq6p1rit9cth7docd7uxuclqs; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_contractor_department
  ADD CONSTRAINT fktq6p1rit9cth7docd7uxuclqs FOREIGN KEY (parent) REFERENCES ref_contractor_department (id);


--
-- Name: fkuuqp1qx7dpmtwwdmqjrm2jf8; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_act_reconciliation_detail
  ADD CONSTRAINT fkuuqp1qx7dpmtwwdmqjrm2jf8 FOREIGN KEY (act_id) REFERENCES doc_act_reconciliation (id);


--
-- Name: fkwvve0d1109j7oaq07dnot1nf; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_marketing_detail
  ADD CONSTRAINT fkwvve0d1109j7oaq07dnot1nf FOREIGN KEY (marketing_id) REFERENCES doc_marketing (id);


--
-- Name: goods_barcode_goods_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_barcode
  ADD CONSTRAINT goods_barcode_goods_id_fk FOREIGN KEY (goods_id) REFERENCES ref_goods (id);


--
-- Name: goods_barcode_unit_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_barcode
  ADD CONSTRAINT goods_barcode_unit_id_fk FOREIGN KEY (unit_id) REFERENCES ref_unit (id);


--
-- Name: goods_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods
  ADD CONSTRAINT goods_category_id_fkey FOREIGN KEY (category_id) REFERENCES ref_goods_category (id);


--
-- Name: goods_cnfea_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods
  ADD CONSTRAINT goods_cnfea_id_fkey FOREIGN KEY (fea_id) REFERENCES ref_commodity_classification_fea (id);


--
-- Name: goods_image_goods_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods_image
  ADD CONSTRAINT goods_image_goods_id_fk FOREIGN KEY (goods_id) REFERENCES ref_goods (id);


--
-- Name: goods_unit_classification_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods
  ADD CONSTRAINT goods_unit_classification_id_fkey FOREIGN KEY (unit_classification_id) REFERENCES ref_unit_classification (id);


--
-- Name: goods_unit_trade_country_classification_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods
  ADD CONSTRAINT goods_unit_trade_country_classification_id_fkey FOREIGN KEY (country_classification_id) REFERENCES ref_country_classification (id);


--
-- Name: goods_unit_trade_mark_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_goods
  ADD CONSTRAINT goods_unit_trade_mark_id_fkey FOREIGN KEY (trade_mark_id) REFERENCES ref_trade_mark (id);


--
-- Name: marketing_department_id_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_marketing
  ADD CONSTRAINT marketing_department_id_1 FOREIGN KEY (supplier_department_id) REFERENCES ref_contractor_department (id);


--
-- Name: marketing_department_id_2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_marketing
  ADD CONSTRAINT marketing_department_id_2 FOREIGN KEY (outlet_department_id) REFERENCES ref_contractor_department (id);


--
-- Name: marketing_document_invoice_delivery_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_marketing
  ADD CONSTRAINT marketing_document_invoice_delivery_type_fkey FOREIGN KEY (invoice_delivery_type_id) REFERENCES ref_invoice_delivery_type (id);


--
-- Name: marketing_document_vat_delivery_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_marketing
  ADD CONSTRAINT marketing_document_vat_delivery_type_fkey FOREIGN KEY (vat_delivery_type_id) REFERENCES ref_vat_delivery_type (id);


--
-- Name: marketing_tax_rate_nds_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_marketing
  ADD CONSTRAINT marketing_tax_rate_nds_id_fkey FOREIGN KEY (vat_rate_id) REFERENCES ref_vat_rate (id);


--
-- Name: marketing_tax_rate_nsp_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_marketing
  ADD CONSTRAINT marketing_tax_rate_nsp_id_fkey FOREIGN KEY (st_rate_id) REFERENCES ref_st_rate (id);


--
-- Name: order_document_price_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_order
  ADD CONSTRAINT order_document_price_type_fkey FOREIGN KEY (price_type_id) REFERENCES ref_price_type (id);


--
-- Name: payment_document_department_id_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_payment
  ADD CONSTRAINT payment_document_department_id_1 FOREIGN KEY (supplier_department_id) REFERENCES ref_contractor_department (id);


--
-- Name: payment_document_department_id_2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_payment
  ADD CONSTRAINT payment_document_department_id_2 FOREIGN KEY (outlet_department_id) REFERENCES ref_contractor_department (id);


--
-- Name: promotion_document_category_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_promotion
  ADD CONSTRAINT promotion_document_category_id_fk FOREIGN KEY (category_id) REFERENCES ref_goods_category (id);


--
-- Name: promotion_document_outlet_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_promotion
  ADD CONSTRAINT promotion_document_outlet_fk FOREIGN KEY (outlet_id) REFERENCES ref_contractor (id);


--
-- Name: promotion_document_supplier_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_promotion
  ADD CONSTRAINT promotion_document_supplier_fk FOREIGN KEY (supplier_id) REFERENCES ref_contractor (id);


--
-- Name: promotion_goods_department_department_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_promotion_detail_department
  ADD CONSTRAINT promotion_goods_department_department_id_fk FOREIGN KEY (department_id) REFERENCES ref_contractor_department (id);


--
-- Name: promotion_goods_department_promotion_goods_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_promotion_detail_department
  ADD CONSTRAINT promotion_goods_department_promotion_goods_id_fk FOREIGN KEY (promotion_goods_id) REFERENCES doc_promotion_detail (id);


--
-- Name: promotion_goods_goods_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_promotion_detail
  ADD CONSTRAINT promotion_goods_goods_id_fk FOREIGN KEY (goods_id) REFERENCES ref_goods (id);


--
-- Name: promotion_goods_promotion_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_promotion_detail
  ADD CONSTRAINT promotion_goods_promotion_id_fk FOREIGN KEY (promotion_id) REFERENCES doc_promotion (id);


--
-- Name: promotion_goods_tax_rate_nds_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_promotion_detail
  ADD CONSTRAINT promotion_goods_tax_rate_nds_id_fk FOREIGN KEY (vat_rate_id) REFERENCES ref_vat_rate (id);


--
-- Name: promotion_goods_tax_rate_nsp_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_promotion_detail
  ADD CONSTRAINT promotion_goods_tax_rate_nsp_id_fk FOREIGN KEY (st_rate_id) REFERENCES ref_vat_rate (id);


--
-- Name: promotion_report_goods_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rep_promotion
  ADD CONSTRAINT promotion_report_goods_fkey FOREIGN KEY (goods) REFERENCES ref_goods (id);


--
-- Name: promotion_report_outlet_department_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rep_promotion
  ADD CONSTRAINT promotion_report_outlet_department_fkey FOREIGN KEY (outlet_department) REFERENCES ref_contractor_department (id);


--
-- Name: promotion_report_outlet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rep_promotion
  ADD CONSTRAINT promotion_report_outlet_fkey FOREIGN KEY (outlet) REFERENCES ref_contractor (id);


--
-- Name: promotion_report_supplier_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY rep_promotion
  ADD CONSTRAINT promotion_report_supplier_fkey FOREIGN KEY (supplier) REFERENCES ref_contractor (id);


--
-- Name: refund_corrective_invoice_admission_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund_corrective_invoice
  ADD CONSTRAINT refund_corrective_invoice_admission_id_fk FOREIGN KEY (admission_id) REFERENCES doc_admission (id);


--
-- Name: refund_corrective_invoice_invoice_delivery_type_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund_corrective_invoice
  ADD CONSTRAINT refund_corrective_invoice_invoice_delivery_type_fk FOREIGN KEY (invoice_delivery_type_id) REFERENCES ref_invoice_delivery_type (id);


--
-- Name: refund_corrective_invoice_refund_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund_corrective_invoice
  ADD CONSTRAINT refund_corrective_invoice_refund_id_fk FOREIGN KEY (refund_id) REFERENCES doc_refund (id);


--
-- Name: refund_document_department_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund
  ADD CONSTRAINT refund_document_department_fk FOREIGN KEY (outlet_department_id) REFERENCES ref_contractor_department (id);


--
-- Name: refund_document_department_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund
  ADD CONSTRAINT refund_document_department_id_fk FOREIGN KEY (supplier_department_id) REFERENCES ref_contractor_department (id);


--
-- Name: refund_document_invoice_delivery_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund
  ADD CONSTRAINT refund_document_invoice_delivery_type_fkey FOREIGN KEY (invoice_delivery_type_id) REFERENCES ref_invoice_delivery_type (id);


--
-- Name: refund_document_tax_rate_nds_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund
  ADD CONSTRAINT refund_document_tax_rate_nds_id_fkey FOREIGN KEY (vat_rate_id) REFERENCES ref_vat_rate (id);


--
-- Name: refund_document_tax_rate_nsp_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund
  ADD CONSTRAINT refund_document_tax_rate_nsp_id_fkey FOREIGN KEY (st_rate_id) REFERENCES ref_st_rate (id);


--
-- Name: refund_document_vat_delivery_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund
  ADD CONSTRAINT refund_document_vat_delivery_type_fkey FOREIGN KEY (vat_delivery_type_id) REFERENCES ref_vat_delivery_type (id);


--
-- Name: refund_goods_admission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_refund_detail
  ADD CONSTRAINT refund_goods_admission_id_fkey FOREIGN KEY (admission_id) REFERENCES doc_admission (id);


--
-- Name: revaluation_document_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_revaluation
  ADD CONSTRAINT revaluation_document_category_id_fkey FOREIGN KEY (category_id) REFERENCES ref_goods_category (id);


--
-- Name: revaluation_document_outlet_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_revaluation
  ADD CONSTRAINT revaluation_document_outlet_fk FOREIGN KEY (outlet_id) REFERENCES ref_contractor (id);


--
-- Name: revaluation_document_supplier_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_revaluation
  ADD CONSTRAINT revaluation_document_supplier_fk FOREIGN KEY (supplier_id) REFERENCES ref_contractor (id);


--
-- Name: revaluation_goods_goods_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_revaluation_detail
  ADD CONSTRAINT revaluation_goods_goods_id_fk FOREIGN KEY (goods_id) REFERENCES ref_goods (id);


--
-- Name: revaluation_goods_revaluation_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_revaluation_detail
  ADD CONSTRAINT revaluation_goods_revaluation_id_fk FOREIGN KEY (revaluation_id) REFERENCES doc_revaluation (id);


--
-- Name: revaluation_goods_tax_rate_nds_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_revaluation_detail
  ADD CONSTRAINT revaluation_goods_tax_rate_nds_id_fk FOREIGN KEY (vat_rate_id) REFERENCES ref_vat_rate (id);


--
-- Name: revaluation_goods_tax_rate_nsp_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY doc_revaluation_detail
  ADD CONSTRAINT revaluation_goods_tax_rate_nsp_id_fk FOREIGN KEY (st_rate_id) REFERENCES ref_vat_rate (id);


--
-- Name: unit_goods_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_unit
  ADD CONSTRAINT unit_goods_id_fkey FOREIGN KEY (goods_id) REFERENCES ref_goods (id);


--
-- Name: unit_unit_classification_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ref_unit
  ADD CONSTRAINT unit_unit_classification_id_fkey FOREIGN KEY (unit_classification_id) REFERENCES ref_unit_classification (id);
