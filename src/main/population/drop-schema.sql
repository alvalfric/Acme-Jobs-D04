
    alter table `administrator` 
       drop 
       foreign key FK_2a5vcjo3stlfcwadosjfq49l1;

    alter table `anonymous` 
       drop 
       foreign key FK_6lnbc6fo3om54vugoh8icg78m;

    alter table `authenticated` 
       drop 
       foreign key FK_h52w0f3wjoi68b63wv9vwon57;

    alter table `consumer` 
       drop 
       foreign key FK_6cyha9f1wpj0dpbxrrjddrqed;

    alter table `employer` 
       drop 
       foreign key FK_na4dfobmeuxkwf6p75abmb2tr;

    alter table `job` 
       drop 
       foreign key `FKfqwyynnbcsq0htxho3vchpd2u`;

    alter table `job` 
       drop 
       foreign key `FK3rxjf8uh6fh2u990pe8i2at0e`;

    alter table `provider` 
       drop 
       foreign key FK_b1gwnjqm6ggy9yuiqm0o4rlmd;

    alter table `worker` 
       drop 
       foreign key FK_l5q1f33vs2drypmbdhpdgwfv3;

    drop table if exists `administrator`;

    drop table if exists `alferez_bulletin`;

    drop table if exists `announcement`;

    drop table if exists `anonymous`;

    drop table if exists `authenticated`;

    drop table if exists `cardenas_bulletin`;

    drop table if exists `challenge`;

    drop table if exists `chellik_bulletin`;

    drop table if exists `commercial_banner`;

    drop table if exists `company_record`;

    drop table if exists `consumer`;

    drop table if exists `customisation_parameter`;

    drop table if exists `descriptor`;

    drop table if exists `employer`;

    drop table if exists `escobar_bulletin`;

    drop table if exists `investor_record`;

    drop table if exists `job`;

    drop table if exists `non_commercial_banner`;

    drop table if exists `offer`;

    drop table if exists `provider`;

    drop table if exists `requests`;

    drop table if exists `rosado_bulletin`;

    drop table if exists `shout`;

    drop table if exists `user_account`;

    drop table if exists `worker`;

    drop table if exists `hibernate_sequence`;
