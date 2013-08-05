create database if not exists maggie_common DEFAULT CHARACTER SET utf8;
use maggie_common;

############################################################
# User Information
############################################################

# User Data

create table if not exists maggie_user (
  user_id          bigint            not null, # user_id
  account_id      varchar(255)       not null, # account id (encrypted)
  reg_date_done    int      unsigned not null, # registration (unix time)
  reg_date         int      unsigned not null, # finish registration (unix time)
  last_date        int      unsigned not null, # last time login status was seen

  # Withdrawal

  withdraw_date    int      unsigned not null, # withdrawal from service
  restrict_date    int      unsigned not null, # get service restricted

  # 入会

  aff_code         varchar(16)               ,
  aff_data         varchar(128)      not null,
  aff_count        int      unsigned not null, # Counter
  aff_user         bigint            not null, # Introduction

  # その他

  lang             varchar(5)        not null, # (ja, en, ko)
  country          varchar(10)       not null, # country

  # Just in case

  misc1            bigint            not null,
  misc2            bigint            not null,
  misc3            bigint            not null,
  misc4            bigint            not null,

  primary key    (user_id),
   unique key    (account_id),
          key    (reg_date),
          key    (last_date),
          key    (misc1),
          key    (misc2)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Password

create table if not exists user_password (
  user_id          bigint            not null,
  password_hash    varchar(255)      not null,
  reg_date         int      unsigned not null,
  primary key (user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
