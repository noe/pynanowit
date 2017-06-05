create table user (
  user_id integer primary key autoincrement,
  username text not null,
  email text not null,
  pw_hash text not null
);

create table follower (
  who_id integer,
  whom_id integer
);

create table message (
  message_id integer primary key autoincrement,
  author_id integer not null,
  text text not null,
  pub_date integer
);
