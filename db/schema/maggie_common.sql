create database if not exists maggie_common DEFAULT CHARACTER SET utf8;
use maggie_common;

#####################################
## Maggie Sessions
#####################################

create table if not exists sessions (
  id   char(72) primary key,
  session_data text
);

#####################################
## Maggie Users
#####################################

# Users
create table if not exists user (
  user_id     bigint unsigned not null,
  avatar_id   bigint unsigned not null,
  comment                text not null,
  type           int unsigned not null,
  status         int unsigned not null,
  created_at     int unsigned not null,
  updated_at     int unsigned not null,
  deleted_at     int unsigned not null,
  is_active  tinyint unsigned not null,
  is_male    tinyint unsigned not null,
  has_bought tinyint unsigned not null,
  primary key      (user_id),
  unique key `i1` (account_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Passwords

create table if not exists user_password (
  user_id        bigint unsigned not null,
  password_hash     varchar(255) not null,
  primary key (user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Facebook

create table if not exists user_facebook (
  user_id      bigint   unsigned not null,
  service_id   bigint   unsigned not null,
  status       tinyint  unsigned not null,
  access_token text              not null,
  expire_date  int      unsigned not null,
  created_at   int      unsigned not null,
  primary key (user_id),
  key (service_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Temporal Facebook

create table if not exists temporal_user_facebook (
  temporal_id  bigint   unsigned not null,
  service_id   bigint   unsigned not null,
  status       tinyint  unsigned not null,
  access_token text              not null,
  expire_date  int      unsigned not null,
  created_at   int      unsigned not null,
  primary key (temporal_id),
  key (service_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#####################################
## item
#####################################

create table if not exists item (
  item_id     bigint unsigned not null,
  creator_id  bigint unsigned not null,
  title          varchar(255) not null,
  description            text not null,
  source                 text not null,
  status         int unsigned not null,
  is_buyable tinyint unsigned not null,
  is_ours    tinyint unsigned not null,
  created_at     int unsigned not null,
  updated_at     int unsigned not null,
  deleted_at     int unsigned not null,
  primary key      (item_id),
  key `i1` (item_id, updated_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table if not exists item_comment (
  comment_id   bigint unsigned not null,
  item_id      bigint unsigned not null,
  creator_id   bigint unsigned not null,
  image_id     bigint unsigned not null,
  caption         varchar(255) not null,
  created_at      int unsigned not null,
  updated_at      int unsigned not null,
  deleted_at      int unsigned not null,
  primary key      (comment_id),
  key `i1` (comment_id, item_id),
  key `i2` (creator_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table if not exists item_comment_like (
  comment_id    bigint unsigned not null,
  item_id       bigint unsigned not null,
  creator_id    bigint unsigned not null,
  type             varchar(255) not null,
  count            int   signed not null,
  created_at       int unsigned not null,
  updated_at       int unsigned not null,
  deleted_at       int unsigned not null,
  is_unliked   tinyint unsigned not null,
  primary key   (comment_id, creator_id, type),
  key `i1` (comment_id, type, count),
  key `i2` (item_id, updated_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table if not exists item_like (
  item_id       bigint unsigned not null,
  creator_id    bigint unsigned not null,
  type             varchar(255) not null,
  count            int   signed not null,
  created_at       int unsigned not null,
  updated_at       int unsigned not null,
  deleted_at       int unsigned not null,
  is_unliked   tinyint unsigned not null,
  primary key   (item_id, creator_id, type),
  key `i1` (item_id, type, count),
  key `i2` (item_id, updated_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table if not exists image (
  image_id   bigint unsigned not null,
  hash_key   varchar(255)    not null,
  ext        varchar(255)    not null,
  creator_id bigint unsigned not null,
  item_id    bigint unsigned not null,
  description           text not null,
  created_at        int unsigned not null,
  updated_at        int unsigned not null,
  deleted_at        int unsigned not null,
  primary key (image_id),
  key `i1` (creator_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table if not exists tag (
  tag_id     bigint unsigned not null,
  item_id    bigint unsigned not null,
  creator_id bigint unsigned not null,
  tag        varchar(255)    not null,
  created_at        int unsigned not null,
  updated_at        int unsigned not null,
  deleted_at        int unsigned not null,
  primary key (tag_id),
  key `i1` (creator_id, tag_id, updated_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table if not exists list (
  list_id     bigint unsigned not null,
  item_id     bigint unsigned not null,
  creator_id  bigint unsigned not null,
  list_title  varchar(255)    not null,
  list_description       text not null,
  is_public  tinyint unsigned not null,
  primary key (list_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#####################################
## Maggie Interactions
#####################################

create table if not exists followship (
  from_user_id   bigint unsigned not null,
  to_user_id     bigint unsigned not null,
  status            int unsigned not null,
  created_at        int unsigned not null,
  updated_at        int unsigned not null,
  deleted_at        int unsigned not null,
  primary key      (from_user_id, to_user_id),
  key `i1` (to_user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
