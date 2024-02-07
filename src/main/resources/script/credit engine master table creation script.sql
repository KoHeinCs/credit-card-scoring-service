
-- auto-generated definition
create table approval_status
(
    approval_status_id   varchar(255) not null
        primary key,
    approval_status      varchar(255) null,
    approval_status_name varchar(255) null,
    percentage_from      double       null,
    percentage_to        double       null
);



-- auto-generated definition
create table tier
(
    id        bigint auto_increment
        primary key,
    tier      int          not null,
    tier_name varchar(255) null
);


-- auto-generated definition
create table address_tier
(
    id                bigint auto_increment
        primary key,
    district_name_eng varchar(255) null,
    sr_name_eng       varchar(255) null,
    town_name_eng     varchar(255) null,
    township_name_eng varchar(255) null,
    tier              bigint       not null,
    constraint FKsq3u324q8j2qe3pe9cetk71rb
        foreign key (tier) references tier (id)
);

-- auto-generated definition
create table ineligible_list
(
    id         bigint auto_increment
        primary key,
    account_no varchar(255) null
);

-- auto-generated definition
create table application_form
(
    id                       bigint auto_increment
        primary key,
    application_detail       json         null,
    application_status       varchar(255) null,
    created_by               varchar(255) null,
    created_date             datetime(6)  null,
    updated_by               varchar(255) null,
    updated_date             datetime(6)  null,
    card_type                varchar(255) null,
    cif                      varchar(255) null,
    cms_card_info            varchar(255) null,
    cms_card_status          varchar(255) null,
    cms_create_card_request  json         null,
    cms_create_card_response json         null,
    customer_name            varchar(255) null,
    customer_nrc             varchar(255) null,
    description              varchar(255) null,
    payroll_acc              varchar(255) null,
    payroll_salary           varchar(255) null,
    prescreeningb            bit          null,
    product_type             varchar(255) null,
    reference_id             varchar(255) null,
    score_card               bit          null,
    score_point              int          null,
    version                  int          not null
);

-- auto-generated definition
create table application_form_history
(
    id                bigint auto_increment
        primary key,
    created_by        varchar(255) null,
    created_date      datetime(6)  null,
    updated_by        varchar(255) null,
    updated_date      datetime(6)  null,
    card_type         varchar(255) null,
    cif               varchar(255) null,
    customer_name     varchar(255) null,
    customer_nrc      varchar(255) null,
    description       varchar(255) null,
    passed_screeninga bit          not null,
    payroll_acc       varchar(255) null,
    payroll_salary    varchar(255) null,
    product_type      varchar(255) null,
    reference_id      varchar(255) null,
    version           int          not null
);

-- auto-generated definition
create table credit_score_result
(
    id                   bigint auto_increment
        primary key,
    approval_status      varchar(255) null,
    calculated_credit_limit int       null,
    approve_credit_limit    int       null,
    approved_date_time   datetime(6)  null,
    created_by           varchar(255) null,
    created_date         datetime(6)  null,
    updated_by           varchar(255) null,
    updated_date         datetime(6)  null,
    credit_score_detail  json         null,
    total_credit_score   int          null,
    application_id       bigint       null,
    constraint UK_32ib2f6iatf2dku3f4eqprjie
        unique (application_id),
    constraint FKidmwihwe50m1ph0y4ejiyiykh
        foreign key (application_id) references application_form (id)
);

-- auto-generated definition
create table characteristic
(
    characteristic_id varchar(255) not null
        primary key,
    created_by        varchar(255) null,
    created_date      datetime(6)  null,
    updated_by        varchar(255) null,
    updated_date      datetime(6)  null,
    description       varchar(255) null,
    name              varchar(255) null,
    segment_type      varchar(255) null,
    value             varchar(255) null,
    version           int          not null,
    constraint UK_9r0uiwdfk26smpyokptibd84l
        unique (name)
);

-- auto-generated definition
create table product
(
    product_id           varchar(255) not null
        primary key,
    created_by           varchar(255) null,
    created_date         datetime(6)  null,
    updated_by           varchar(255) null,
    updated_date         datetime(6)  null,
    credit_limit         int          null,
    description          varchar(255) null,
    full_repayment       varchar(255) null,
    max_credit_limit_amt double       null,
    minimal_repayment    varchar(255) null,
    product_detail       json         null,
    product_type         varchar(255) null,
    total_height_score   double       null,
    version              int          not null,
    constraint UK_rl0q5dmoa0uieho7le4uoji6c
        unique (product_type)
);

-- auto-generated definition
create table product_characteristic
(
    productid        varchar(255) not null,
    characteristicid varchar(255) not null,
    constraint UK_7qxjy5t2adwpxj96jepd697we
        unique (characteristicid),
    constraint FKarcv9luakpd29g10063qribof
        foreign key (characteristicid) references characteristic (characteristic_id),
    constraint FKrl5y828ak7fspplemxsf7ltv6
        foreign key (productid) references product (product_id)
);

-- auto-generated definition
create table product_approval_status
(
    product_id         varchar(255) not null,
    approval_status_id varchar(255) not null,
    constraint UK_lkw1xslb8ceb2meuenal6xxcn
        unique (approval_status_id),
    constraint FK31gregsg1scncn0onpuy8ys5d
        foreign key (approval_status_id) references approval_status (approval_status_id),
    constraint FKi2cy26uvjncnvqobuhrxokq2h
        foreign key (product_id) references product (product_id)
);



-- auto-generated definition
create table product_score_rate
(
    product_score_rate_id varchar(255) not null
        primary key,
    created_by            varchar(255) null,
    created_date          datetime(6)  null,
    updated_by            varchar(255) null,
    updated_date          datetime(6)  null,
    character_rank        double       null,
    score                 double       null,
    score_rate            double       null,
    version               int          not null,
    weightage             double       null,
    productid             varchar(255) null,
    constraint FK1rjeki9mwunju2xbdvaiabqjq
        foreign key (productid) references product (product_id)
);

-- auto-generated definition
create table product_score_rate_characteristic
(
    product_score_rate_characteristic_id varchar(255) not null
        primary key,
    created_by                           varchar(255) null,
    created_date                         datetime(6)  null,
    updated_by                           varchar(255) null,
    updated_date                         datetime(6)  null,
    from_value                            double       null,
    to_value                              double       null,
    value                                varchar(255) null,
    version                              int          not null,
    characteristicid                     varchar(255) null,
    productscorerateid                   varchar(255) null,
    constraint FKc12xa8pnu4jj4q1cgbfctml8u
        foreign key (characteristicid) references characteristic (characteristic_id),
    constraint FKsphd4h30iix7bk47nbtlpwl1o
        foreign key (productscorerateid) references product_score_rate (product_score_rate_id)
);



-- this is SQL >>> search score rate percentage
SELECT csr.SCORE, csr.score_rate
FROM product_score_rate csr
         LEFT JOIN product_score_rate_characteristic csrc on csr.product_score_rate_id = csrc.productscorerateid
         LEFT JOIN characteristic chr on csrc.characteristicid = chr.characteristic_id
WHERE (chr.name = 'RESIDENTIAL_STATUS')
  AND (csrc.value = 'Owned Property')
  AND csr.productid = 'YBPRD00120240116150554663';
