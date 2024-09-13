create table categories (
  id integer primary key,
  created_at timestamp default current_timestamp not null,
  name varchar(20) not null unique
);

create table devices (
  id integer primary key,
  category_id integer,
  created_at timestamp default current_timestamp not null,
  name text not null,
  availability varchar(20),
  buy varchar(60),
  price integer,
  foreign key (category_id) references categories (id)
);

insert into
  categories (name, id)
values
  ('Пылесосы Multiclick', 1),
  ('Пылесосы IQself', 2),
  ('Красота', 3),
  ('Увлажнители', 4),
  ('Осушители', 5);

insert into
  devices (name, category_id, availability, buy, price)
values
  (
    'Беспроводной MultiClick Pro, 503',
    1,
    'Доступен',
    'tinyurl.com/remez503',
    18990
  ),
  (
    'Беспроводной MultiClick Pro Aqua, 504',
    1,
    'Доступен',
    'tinyurl.com/remez504',
    22990
  ),
  (
    'Беспроводной MultiClick Pro Aqua Plus, 505',
    1,
    'Доступен',
    'tinyurl.com/remez505',
    28990
  ),
  (
    'Беспроводной MultiClick Pro Energy, 503b',
    1,
    'Доступен',
    'tinyurl.com/remez503b',
    20990
  ),
  (
    'Беспроводной MultiClick Pro Energy Aqua, 504b',
    1,
    'Доступен',
    'tinyurl.com/remez504b',
    24990
  ),
  (
    'Беспроводной MultiClick Pro Energy Aqua Plus, 505b',
    1,
    'Доступен',
    'tinyurl.com/remez505b',
    28990
  ),
  (
    'Беспроводной MultiClick Pro Telescopic, 533',
    1,
    'Доступен',
    'tinyurl.com/remez533',
    19990
  ),
  (
    'Беспроводной MultiClick Pro Aqua Telescopic, 534',
    1,
    'Доступен',
    'tinyurl.com/remez534',
    24990
  ),
  (
    'Беспроводной MultiClick Pro Energy V.2, 543',
    1,
    'Доступен',
    'tinyurl.com/remez543',
    20990
  ),
  (
    'Беспроводной MultiClick Pro Energy V.2 Aqua, 544',
    1,
    'Доступен',
    'tinyurl.com/remez544',
    24990
  ),
  (
    'Беспроводной MultiClick Pro Energy V.2 Aqua Plus, 545',
    1,
    'Доступен',
    'tinyurl.com/remez545',
    28990
  ),
  (
    'Вертикальный моющий пылесос IQSelf, 601',
    2,
    'Доступен',
    'tinyurl.com/remez601',
    39990
  ),
  (
    'Вертикальный моющий пылесос IQSelf, 603',
    2,
    'Недоступен',
    'tinyurl.com/remez603',
    46990
  ),
  (
    'Фен-стайлер Model S, графит, 707',
    3,
    'Доступен',
    'tinyurl.com/707graphite',
    23990
  ),
  (
    'Фен-стайлер Model S, графит, 707b',
    3,
    'Доступен',
    'tinyurl.com/707Bgraphite',
    29890
  ),
  (
    'Фен-стайлер Model S, белый, 708',
    3,
    'Доступен',
    'tinyurl.com/708white',
    23990
  ),
  (
    'Фен-стайлер Model S, белый, 708b',
    3,
    'Доступен',
    'tinyurl.com/708Bwhite',
    29890
  ),
  (
    'Профессиональный фен-стайлер Model E графит, 701',
    3,
    'Недоступен',
    'tinyurl.com/701graphite',
    30990
  ),
  (
    'Профессиональный фен-стайлер Model E красный, 703',
    3,
    'Недоступен',
    'tinyurl.com/remez703red',
    30990
  ),
  (
    'Профессиональный фен-стайлер Model E Prof, 704',
    3,
    'Доступен',
    'tinyurl.com/remez704',
    32990
  ),
  (
    'Интеллектуальный климатический комплекс AirCreator, 411',
    4,
    'Недоступен',
    'tinyurl.com/remez411',
    36990
  ),
  (
    'Интеллектуальный климатический комплекс AirCreator+ PLASM-AR станция контроля качества воздуха, 411Pro',
    4,
    'Доступен',
    'tinyurl.com/remez411pro',
    46990
  ),
  (
    'Выносная станция контроля качества воздуха SensoStation',
    5,
    'Доступен',
    'tinyurl.com/sensostation',
    7990
  ),
  (
    'Компактный осушитель воздуха AeroDry Eco',
    5,
    'Доступен',
    'tinyurl.com/aerodryeco',
    9990
  ),
  (
    'Осушитель воздуха AeroDry Smart, 304',
    5,
    'Доступен',
    'tinyurl.com/remez304',
    7990
  ),
  (
    'Осушитель воздуха AeroDry 10, 311N',
    5,
    'Доступен',
    'tinyurl.com/remez311N',
    16990
  ),
  (
    'Осушитель воздуха AeroDry 15 Smart с Wi-Fi, 312',
    5,
    'Доступен',
    'tinyurl.com/remez312',
    20990
  ),
  (
    'Осушитель воздуха AeroDry 18, 313',
    5,
    'Доступен',
    'tinyurl.com/remez313',
    22990
  ),
  (
    'Осушитель воздуха AeroDry 23, 314',
    5,
    'Доступен',
    'tinyurl.com/remez314',
    26990
  )
