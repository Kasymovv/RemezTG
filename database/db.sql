create table categories (
  id integer primary key,
  name varchar(20) not null unique
);

create table items (
  id integer primary key,
  name varchar(60),
  price integer,
  description varchar(500),
  availability varchar(20),
  equipment varchar(20),
  buy varchar(60),
  category integer,
  foreign key (category) references categories (id)
);

create table cities (
  id integer primary key,
  name varchar(60) not null unique
);

create table addresses (
  id integer primary key,
  name varchar(25),
  time varchar(60),
  address varchar(100),
  city integer,
  category integer,
  map varchar(60),
  foreign key (city) references cities (id)
);

create table repair_cities (
  id integer primary key,
  name varchar(60) not null unique
);

create table repair_addresses (
  id integer primary key,
  name varchar(25),
  time varchar(60),
  address varchar(100),
  city integer,
  category integer,
  map varchar(60),
  foreign key (city) references repair_cities (id)
);

insert into
  repair_cities (id, name)
values
  (1, 'Москва'),
  (2, 'Санкт-Петербург'),
  (3, 'Белгород'),
  (4, 'Волгоград'),
  (5, 'Екатеринбург'),
  (6, 'Краснодар'),
  (7, 'Красноярск'),
  (8, 'Нижний Новгород'),
  (9, 'Новосибирск'),
  (10, 'Махачкала'),
  (11, 'Пермь'),
  (12, 'Ростов-на-Дону'),
  (13, 'Рязань'),
  (14, 'Самара'),
  (15, 'Тула'),
  (16, 'Уфа'),
  (17, 'Чебоксары'),
  (18, 'Челябинск');

insert into
  repair_addresses (city, name, address, time, map)
values
  (
    1,
    'Центральный клиентский сервис',
    'Рублевское шоссе 22к1',
    'Пн-Пт: 9:00 - 21:00, Сб: 10:00 - 18:00, Вск: Выходной',
    'clck.ru/3DXuB7'
  ),
  (
    2,
    'ТехноВекторСевер',
    'улица Звездная, 16А',
    'Вт-Сб: 11:00 - 20:00',
    'clck.ru/3DXuDZ'
  ),
  (
    3,
    'Бел-Сервис',
    'улица Сумская 22к1',
    'Пн-Пт: 9:00 - 19:00, Сб: 10:00 - 15:00',
    'clck.ru/3DXuFL'
  ),
  (
    4,
    'Планета',
    'улица Рионская 3',
    'Пн-Пт: 9:00 - 19:00, Сб: 10:00 - 16:00',
    'clck.ru/3DXuGz'
  ),
  (
    5,
    'Связь-Сети',
    'улица Карла-Маркса, 12',
    'Пн-Пт: 9:30 - 19:00, Сб: 10:00 - 17:00',
    'clck.ru/3DXuKB'
  ),
  (
    6,
    'Сервис-Люкс',
    'улица Березанская, 89',
    'Пн-Сб: 9:00 - 20:00, Вск: 10:00 - 16:00',
    'clck.ru/3DXuNP'
  ),
  (
    7,
    'Исток',
    'улица Бограда, 108',
    'Пн-Чт: 9:00 - 19:00, Пт: 9:00 - 18:00, Сб: 10:00 - 16:00',
    'clck.ru/3DXuVM'
  ),
  (
    8,
    'Транссервис',
    'улица Артельная, 29, офис 102',
    'Пн-Пт: 8:00 - 18:00',
    'clck.ru/3DXuXF'
  ),
  (
    9,
    'Плазма-Сервис',
    'улица Народная, 77',
    'Пн-Пт: 9:00 - 19:00, Сб: 10:00 - 14:00',
    'clck.ru/3DXuaJ'
  ),
  (
    10,
    'Техник-ISE',
    '14-я Линия Акушинского, 21',
    'Пн-Пт: 9:00 - 19:00, перерыв с 13:00 до 14:00, Сб-Вск: 10:00 - 16:00',
    'clck.ru/3DXucH'
  ),
  (
    11,
    'Евросервис',
    'улица Крисанова, 29. улица Анри Барбюса 60',
    'Пн-Сб: 9:00 - 20:00, Вск: 11:00 - 17:00',
    'clck.ru/3DXufA'
  ),
  (
    12,
    'РСС',
    'Проспект Ленина, 48',
    'Пн-Сб: 10:00 - 18:00',
    'clck.ru/3DXugo'
  ),
  (
    13,
    'Рестарт',
    'Народный Бульвар, 11, Н.П.11',
    'Пн-Пт: 10:00 - 19:00, Сб: 10:00 - 16:00',
    'clck.ru/3DXuiS'
  ),
  (
    14,
    'Видикон-Сервис',
    'улица Мориса Тореза, 137. улица Советской Армии, 148',
    'Ежедневно - 9:00 - 19:00',
    'clck.ru/3DXukm'
  ),
  (
    15,
    'Тройка-Сервис',
    'улица Болдина, 99',
    'Пн-Пт: 10:00 - 18:00, Сб: 10:00 - 16:00',
    'clck.ru/3DXunt'
  ),
  (
    16,
    'ПРО-Ремонт',
    'проспект Салавата Юлаева, 59',
    'Пн-Пт: 9:00 - 19:00, Суббота: 10:00 - 14:00',
    'clck.ru/3DXup3'
  ),
  (
    17,
    'ВТИ-Сервис',
    'проспект Ивана Яковлева, 4к2',
    'Пн-Пт: 8:00 - 19:00, Сб-Вск: 10:00 - 16:00',
    'clck.ru/3DXuq6'
  ),
  (
    18,
    'РемБытТехника',
    'улица Производственная, 8Б',
    'Ежедневно - 8:30 - 20:00',
    'clck.ru/3DXusk'
  );

insert into
  cities (id, name)
values
  (1, 'Москва'),
  (2, 'Санкт-Петербург'),
  (3, 'Казань'),
  (4, 'Калининград'),
  (5, 'Нальчик'),
  (6, 'Грозный'),
  (7, 'Тюмень');

insert into
  addresses (city, name, address, time, map)
values
  (
    1,
    'МЕГА Химки',
    'Мос.область, г. Химки, микрорайон ИКЕА, корпус 2',
    '10:00 - 23:00 ежедневно ',
    'clck.ru/3DXsM4'
  ),
  (
    1,
    'МЕГА Теплый Стан',
    'п. Сосенское, калужское шоссе 21км',
    '10:00 - 22:00 ежедневно',
    'clck.ru/3DXsNu'
  ),
  (
    1,
    'МЕГА Белая Дача',
    'Московская обл., 1-й Покровский проезд, 5.',
    '10:00 - 23:00 ежедневно',
    'clck.ru/3DXsSh'
  ),
  (
    1,
    'ТРК Щука',
    'ул. Щукинская, 42',
    '10:00 - 22:00 ежедневно',
    'clck.ru/3DXsTs'
  ),
  (
    1,
    'ТРЦ Европолис',
    'проспект Мира, 211',
    '10:00 - 22:00 ежедневно',
    'clck.ru/3DXsXw'
  ),
  (
    1,
    'ТРЦ Columbus',
    'ул. Кировоградская, 13а',
    '10:00 - 22:00 ежедневно',
    'clck.ru/3DXsaN'
  ),
  (
    1,
    'ТРЦ Авиапарк',
    'Ходынский бульвар, 4',
    '10:00 - 22:00 ежедневно',
    'clck.ru/3DXscJ'
  ),
  (
    2,
    'РИВ ГОШ в универмаге Пассаж',
    'Невский пр. 48',
    'Пн-Сб: 10:00 - 22:00, Вс: 11:00 - 22:00',
    'clck.ru/3DXsgB'
  ),
  (
    2,
    'РИВ ГОШ в ТРЦ Галерея',
    'Лиговский проезд, 30А',
    '10:00 - 23:00 ежедневно',
    'clck.ru/3DXsk9'
  ),
  (
    2,
    'РИВ ГОШ в универмаге Московский',
    'Московский проезд, 205',
    '11:00 - 21:00 ежедневно',
    'clck.ru/3DXsoc'
  ),
  (
    3,
    'РИВ ГОШ в ТЦ Авеню',
    'проспект Ибрагимова, 56а',
    '10:00 - 22:00 ежедневно',
    'clck.ru/3DXsrS'
  ),
  (
    4,
    'РИВ ГОШ в ТРЦ Европа-Центр',
    'улица Театральная, 30',
    '10:00 - 21:00 ежедневно',
    'clck.ru/3DXsty'
  ),
  (
    5,
    'РИВ ГОШ проспект Ленина 34',
    'Проспект Ленина, 34',
    '10:00 - 21:00 ежедневно',
    'clck.ru/3DXswc'
  ),
  (
    6,
    'РИВ ГОШ в ТРЦ Грозный Молл',
    'проспект В.В. Путина, 38',
    '10:00 - 22:00 ежедневно',
    'clck.ru/3DXsyc'
  ),
  (
    7,
    'РИВ ГОШ в ЦУМ',
    'улица Орджоникидзе 63А',
    '10:00 - 21:00 ежедневно',
    'clck.ru/3DXt62'
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
  items (
    name,
    category,
    availability,
    buy,
    price,
    description,
    equipment
  )
values
  (
    'Pro, 503',
    1,
    'Доступен',
    'tinyurl.com/remez503',
    18990,
    'Ищете идеальное сочетание мощности и удобства? Вертикальный беспроводной пылесос Multiclick Pro RMVC-503 – это ваш выбор. Он обеспечит тщательную очистку любых поверхностей благодаря мощному мотору и инновационным насадкам. 

Легкий и маневренный, этот пылесос позволяет легко достичь труднодоступных мест, а его беспроводной дизайн избавит от ограничений длиной шнура. С длинным временем работы на одной зарядке и простым обслуживанием, Multiclick Pro RMVC-503 станет надежным помощником в поддержании чистоты в вашем доме.',
    'Вертикальный беспроводной пылесос 
Моторизированная щетка для пола с led-подсветкой
Моторизированная виброщетка для мебели
Насадка-щетка для точечной уборки
Щелевая насадка
Съемный аккумулятор
Держатель на стену
Дополнительный НЕРА-фильтр
Адаптер для заряда аккумулятора
Щеточка для очистки прибора
Буклет и инструкция по эксплуатации.'
  ),
  (
    'Pro Aqua, 504',
    1,
    'Доступен',
    'tinyurl.com/remez504',
    22990,
    'Ищете идеальное сочетание мощности и удобства? Вертикальный беспроводной пылесос Multiclick Pro Aqua – это ваш выбор. Он обеспечит тщательную очистку любых поверхностей благодаря мощному мотору и инновационным насадкам. Легкий и маневренный, этот пылесос позволяет легко достичь труднодоступных мест, а его беспроводной дизайн избавит от ограничений длиной шнура. С длинным временем работы на одной зарядке и простым обслуживанием, Multiclick Pro Aqua станет надежным помощником в поддержании чистоты в вашем доме.',
    'Вертикальный беспроводной пылесос
Моторизированная щетка для пола с LED-подсветкой
Моторизированная моющая насадка
Моторизированная виброщетка для мебели
Насадка-щетка для точечной уборки
Щелевая насадка
Съемный аккумулятор
Держатель на стену
Дополнительный НЕРА-фильтр
Адаптер для заряда аккумулятора
Щеточка для очистки прибора
Буклет и инструкция по эксплуатации.'
  ),
  (
    'Pro Aqua Plus, 505',
    1,
    'Доступен',
    'tinyurl.com/remez505',
    28990,
    'Ищете идеальное сочетание мощности и удобства? Вертикальный беспроводной пылесос Multiclick Pro Aqua Plus – это ваш выбор. Он обеспечит тщательную очистку любых поверхностей благодаря мощному мотору и инновационным насадкам. Легкий и маневренный, этот пылесос позволяет легко достичь труднодоступных мест, а его беспроводной дизайн избавит от ограничений длиной шнура. С длинным временем работы на одной зарядке и простым обслуживанием, Multiclick Pro Aqua Plus станет надежным помощником в поддержании чистоты в вашем доме.',
    'Вертикальный беспроводной пылесос
Моторизированная насадка с LED-подсветкой для сухой уборки
Моторизированная моющая насадка
Насадка-щетка для точечной уборки
Моторизированная виброщетка для мебели
Мягкая роликовая щетка для твердых полов
Гибкая насадка-перходник
Дополнительный НЕРА-фильтр
Тканевые диски
Мерная ёмкость для воды
Моющее средство
Два съемных аккумулятора
Держатель на стену
Два сетевых адаптера
Сумка для аксессуаров
Инструкция по эксплуатации и буклет'
  ),
  (
    'Pro Energy, 503b',
    1,
    'Доступен',
    'tinyurl.com/remez503b',
    20990,
    'Ищете идеальное сочетание мощности и удобства? Вертикальный беспроводной пылесос Multiclick Pro Energy – это ваш выбор. Он обеспечит тщательную очистку любых поверхностей благодаря мощному мотору и инновационным насадкам. Легкий и маневренный, этот пылесос позволяет легко достичь труднодоступных мест, а его беспроводной дизайн избавит от ограничений длиной шнура. С длинным временем работы на одной зарядке и простым обслуживанием, Multiclick Pro Energy станет надежным помощником в поддержании чистоты в вашем доме.',
    'Вертикальный беспроводной пылесос
Съёмный аккумулятор Power Twin 2500
Насадка для сухой уборки MotorHead Turbo
Насадка для уборки мягкой мебели MotorHead Vibro
Щелевая насадка
Овальная насадка-щётка
Валик для твёрдых покрытий
Запасной HEPA-фильтр
Сетевой адаптер
Крепление на штангу настенное
Аксессуар (резак) для удаления волос с щётки.'
  ),
  (
    'Pro Energy Aqua, 504b',
    1,
    'Доступен',
    'tinyurl.com/remez504b',
    24990,
    'Ищете идеальное сочетание мощности и удобства? Вертикальный беспроводной пылесос Multiclick Pro Energy Aqua – это ваш выбор. Он обеспечит тщательную очистку любых поверхностей благодаря мощному мотору и инновационным насадкам. Легкий и маневренный, этот пылесос позволяет легко достичь труднодоступных мест, а его беспроводной дизайн избавит от ограничений длиной шнура. С длинным временем работы на одной зарядке и простым обслуживанием, Multiclick Pro Energy Aqua станет надежным помощником в поддержании чистоты в вашем доме.',
    'Вертикальный моющий пылесос
Съёмный аккумулятор Power Twin 2500
Насадка для сухой уборки MotorHead Turbo
Моющая насадка для влажной уборки AquaDrive
Насадка для уборки мягкой мебели MotorHead Vibro
Щелевая насадка
Овальная насадка-щётка
Валик для твёрдых покрытий
Запасной HEPA-фильтр
Сетевой адаптер
Крепление на штангу настенное
Аксессуар (резак) для удаления волос с щётки
Дополнительные тканевые диски для моющей насадки
Ёмкость для воды
Специально разработанное концентрированное моющее средство.'
  ),
  (
    'Pro Energy Aqua Plus, 505b',
    1,
    'Доступен',
    'tinyurl.com/remez505b',
    28990,
    'Ищете идеальное сочетание мощности и удобства? Вертикальный беспроводной пылесос Multiclick Pro Energy Aqua Plus  – это ваш выбор. Он обеспечит тщательную очистку любых поверхностей благодаря мощному мотору и инновационным насадкам. Легкий и маневренный, этот пылесос позволяет легко достичь труднодоступных мест, а его беспроводной дизайн избавит от ограничений длиной шнура. С длинным временем работы на одной зарядке и простым обслуживанием, Multiclick Pro Energy Aqua Plus станет надежным помощником в поддержании чистоты в вашем доме.',
    'Вертикальный беспроводной пылесос
Съёмный аккумулятор Power Twin 2500 - 2 шт
Насадка для сухой уборки MotorHead Turbo
Моющая насадка для влажной уборки AquaDrive
Насадка для уборки мягкой мебели MotorHead Vibro
Щелевая насадка
Овальная насадка-щётка
Валик для твёрдых покрытий
Гибкая насадка FlexyLong
Запасной HEPA-фильтр
Сетевой адаптер - 2 шт
Крепление на штангу настенное
Аксессуар (резак) для удаления волос с щётки
Дополнительные тканевые диски для моющей насадки
Ёмкость для воды
Специально разработанное концентрированное моющее средство.'
  ),
  (
    'Pro Telescopic, 533',
    1,
    'Доступен',
    'tinyurl.com/remez533',
    19990,
    'Ищете идеальное сочетание мощности и удобства? Вертикальный беспроводной пылесос Multiclick Pro Telescopic – это ваш выбор. Он обеспечит тщательную очистку любых поверхностей благодаря мощному мотору и инновационным насадкам. Легкий и маневренный, этот пылесос позволяет легко достичь труднодоступных мест, а его беспроводной дизайн избавит от ограничений длиной шнура. С длинным временем работы на одной зарядке и простым обслуживанием, Multiclick Pro Telescopic станет надежным помощником в поддержании чистоты в вашем доме.',
    'Вертикальный беспроводной пылесос
Штанга
Съёмный аккумулятор Power Twin 2500
Насадка для сухой уборки MotorHead Turbo
Насадка для уборки мягкой мебели MotorHead Vibro
Щелевая насадка
Гибкая насадка
Овальная насадка-щётка
Валик для твёрдых покрытий
Запасной HEPA-фильтр
Сетевой адаптер
Крепление на штангу настенное
Аксессуар (резак) для удаления волос с щётки.'
  ),
  (
    'Pro Aqua Telescopic, 534',
    1,
    'Доступен',
    'tinyurl.com/remez534',
    24990,
    'Ищете идеальное сочетание мощности и удобства? Вертикальный беспроводной пылесос Multiclick Pro Aqua Telescopic – это ваш выбор. Он обеспечит тщательную очистку любых поверхностей благодаря мощному мотору и инновационным насадкам. Легкий и маневренный, этот пылесос позволяет легко достичь труднодоступных мест, а его беспроводной дизайн избавит от ограничений длиной шнура. С длинным временем работы на одной зарядке и простым обслуживанием, Multiclick Pro Aqua Telescopic станет надежным помощником в поддержании чистоты в вашем доме.',
    'Вертикальный беспроводной пылесос
Съёмный аккумулятор Power Twin 2500
Насадка для сухой уборки MotorHead Turbo
Моющая насадка для влажной уборки AquaDrive
Насадка для уборки мягкой мебели MotorHead Vibro
Щелевая насадка
Гибкая насадка
Овальная насадка-щётка
Валик для твёрдых покрытий
Запасной HEPA-фильтр
Сетевой адаптер
Крепление на штангу настенное
Аксессуар (резак) для удаления волос с щётки
Дополнительные тканевые диски для моющей насадки
Ёмкость для воды
Специально разработанное концентрированное моющее средство.'
  ),
  (
    'Pro Energy V.2, 543',
    1,
    'Доступен',
    'tinyurl.com/remez543',
    20990,
    'Ищете идеальное сочетание мощности и удобства? Вертикальный беспроводной пылесос Multiclick Pro Energy V.2 – это ваш выбор. Он обеспечит тщательную очистку любых поверхностей благодаря мощному мотору и инновационным насадкам. Легкий и маневренный, этот пылесос позволяет легко достичь труднодоступных мест, а его беспроводной дизайн избавит от ограничений длиной шнура. С длинным временем работы на одной зарядке и простым обслуживанием, Multiclick Pro Energy V.2 станет надежным помощником в поддержании чистоты в вашем доме.',
    'Вертикальный беспроводной пылесос
Съёмный аккумулятор Power Twin 2500
Насадка для сухой уборки MotorHead Turbo
Насадка для уборки мягкой мебели MotorHead Vibro
Щелевая насадка
Овальная насадка-щётка
Валик для твёрдых покрытий
Запасной HEPA-фильтр
Сетевой адаптер
Крепление на штангу настенное
Аксессуар (резак) для удаления волос с щётки.'
  ),
  (
    'Pro Energy V.2 Aqua, 544',
    1,
    'Доступен',
    'tinyurl.com/remez544',
    24990,
    'Ищете идеальное сочетание мощности и удобства? Вертикальный беспроводной пылесос Multiclick Pro Energy V.2 Aqua – это ваш выбор. Он обеспечит тщательную очистку любых поверхностей благодаря мощному мотору и инновационным насадкам. Легкий и маневренный, этот пылесос позволяет легко достичь труднодоступных мест, а его беспроводной дизайн избавит от ограничений длиной шнура. С длинным временем работы на одной зарядке и простым обслуживанием, Multiclick Pro Energy V.2 Aqua станет надежным помощником в поддержании чистоты в вашем доме.',
    'Вертикальный беспроводной пылесос
Съёмный аккумулятор Power Twin 2500.
Насадка для сухой уборки MotorHead Turbo.
Моющая насадка для влажной уборки AquaDrive
Насадка для уборки мягкой мебели MotorHead Vibro.
Щелевая насадка.
Овальная насадка-щётка.
Валик для твёрдых покрытий.
Запасной HEPA-фильтр.
Сетевой адаптер.
Крепление на штангу настенное.
Аксессуар (резак) для удаления волос с щётки.
Дополнительные тканевые диски для моющей насадки.
Ёмкость для воды.
Специально разработанное концентрированное моющее средство.'
  ),
  (
    'Pro Energy V.2 Aqua Plus, 545',
    1,
    'Доступен',
    'tinyurl.com/remez545',
    28990,
    'Ищете идеальное сочетание мощности и удобства? Вертикальный беспроводной пылесос Multiclick Pro Energy V.2 Aqua Plus – это ваш выбор. Он обеспечит тщательную очистку любых поверхностей благодаря мощному мотору и инновационным насадкам. Легкий и маневренный, этот пылесос позволяет легко достичь труднодоступных мест, а его беспроводной дизайн избавит от ограничений длиной шнура. С длинным временем работы на одной зарядке и простым обслуживанием, Multiclick Pro Energy V.2 Aqua Plus станет надежным помощником в поддержании чистоты в вашем доме.',
    'Вертикальный беспроводной пылесос.
Съёмный аккумулятор Power Twin 2500 - 2 шт.
Насадка для сухой уборки MotorHead Turbo.
Моющая насадка для влажной уборки AquaDrive
Насадка для уборки мягкой мебели MotorHead Vibro.
Щелевая насадка.
Овальная насадка-щётка.
Валик для твёрдых покрытий.
Гибкая насадка FlexyLong.
Запасной HEPA-фильтр.
Сетевой адаптер - 2 шт.
Крепление на штангу настенное.
Аксессуар (резак) для удаления волос с щётки.
Дополнительные тканевые диски для моющей насадки.
Ёмкость для воды.
Специально разработанное концентрированное моющее средство.'
  ),
  (
    'IQSelf, 601',
    2,
    'Доступен',
    'tinyurl.com/remez601',
    39990,
    'Обновите уборку с IQSELF RMVC-601 – передовым роботизированным моющим пылесосом. Этот умный помощник эффективно сочетает функции пылесоса и мойки, обеспечивая идеальную чистоту полов. Оснащён интеллектуальной системой навигации, RMVC-601 легко ориентируется в пространстве, обходя преграды и тщательно очищая каждую площадь. Беспроводная работа и длительное время автономной работы позволяют проводить уборку без ограничений. Простота управления через приложение и высокая эффективность делают этот пылесос незаменимым для комфортного и качественного ухода за вашим домом.',
    'Станция самоочистки роликовых валиков Self-Smart Clean Power Station
Фильтр HEPA11
Роликовые валики
Щетка для механической очистки'
  ),
  (
    'IQSelf, 603',
    2,
    'Недоступен',
    'tinyurl.com/remez603',
    46990,
    'Обновите уборку с IQSELF RMVC-603 – передовым роботизированным моющим пылесосом. Этот умный помощник эффективно сочетает функции пылесоса и мойки, обеспечивая идеальную чистоту полов. Оснащён интеллектуальной системой навигации, RMVC-603 легко ориентируется в пространстве, обходя преграды и тщательно очищая каждую площадь. Беспроводная работа и длительное время автономной работы позволяют проводить уборку без ограничений. Простота управления через приложение и высокая эффективность делают этот пылесос незаменимым для комфортного и качественного ухода за вашим домом.',
    'Станция самоочистки роликовых валиков Self-Smart Clean Power Station
Станция сушки валиков
Фильтр HEPA11
Роликовые валики x2
Щетка для механической очистки'
  ),
  (
    'Model S, графит, 707',
    3,
    'Доступен',
    'tinyurl.com/707graphite',
    23990,
    'Ищете идеальный инструмент для стайлинга волос? Фен-стайлер Модель S - это профессиональное устройство с уникальной функцией персональной настройки температуры, что обеспечивает максимальный комфорт и защиту ваших волос. В комплект входят три насадки из графита для различных стайлинг-эффектов. Легкий, мощный и удобный в использовании, этот фен-стайлер станет вашим незаменимым помощником для создания идеальной укладки каждый день.',
    'Фен-стайлер для волос
Насадка для сушки волос (концентратор)
Насадка COANDA 30 мм- 2 шт. (для создания стойких локонов, волн и пышных укладок)
Магнитный держатель'
  ),
  (
    'Model S, графит, 707b',
    3,
    'Доступен',
    'tinyurl.com/707Bgraphite',
    29890,
    'Ищете идеальный инструмент для стайлинга волос? Фен-стайлер Model S - это профессиональное устройство с уникальной функцией персональной настройки температуры, что обеспечивает максимальный комфорт и защиту ваших волос. В комплект входят три насадки из графита для различных стайлинг-эффектов. Легкий, мощный и удобный в использовании, этот фен-стайлер станет вашим незаменимым помощником для создания идеальной укладки каждый день.',
    'Фен-стайлер для волос
Насадка для сушки волос (концентратор)
Насадка COANDA 30 мм- 2 шт. (для создания стойких локонов, волн и пышных укладок)
Насадка COANDA 40 мм- 2 шт. (для создания стойких локонов, волн и пышных укладок)
Магнитный держатель'
  ),
  (
    'Model S, белый, 708',
    3,
    'Доступен',
    'tinyurl.com/708white',
    23990,
    'Ищете идеальный инструмент для стайлинга волос? Фен-стайлер Model S - это профессиональное устройство с уникальной функцией персональной настройки температуры, что обеспечивает максимальный комфорт и защиту ваших волос. В комплект входят три насадки из графита для различных стайлинг-эффектов. Легкий, мощный и удобный в использовании, этот фен-стайлер станет вашим незаменимым помощником для создания идеальной укладки каждый день.',
    'Фен-стайлер для волос
Насадка для сушки волос (концентратор)
Насадка COANDA 30 мм- 2 шт. (для создания стойких локонов, волн и пышных укладок)
Насадка COANDA 40 мм- 2 шт. (для создания стойких локонов, волн и пышных укладок)
Магнитный держатель'
  ),
  (
    'Model S, белый, 708b',
    3,
    'Доступен',
    'tinyurl.com/708Bwhite',
    29890,
    'Ищете идеальный инструмент для стайлинга волос? Фен-стайлер Model S - это профессиональное устройство с уникальной функцией персональной настройки температуры, что обеспечивает максимальный комфорт и защиту ваших волос. В комплект входят три насадки из графита для различных стайлинг-эффектов. Легкий, мощный и удобный в использовании, этот фен-стайлер станет вашим незаменимым помощником для создания идеальной укладки каждый день.',
    'Фен-стайлер для волос
Насадка для сушки волос (концентратор)
Насадка COANDA 30 мм- 2 шт. (для создания стойких локонов, волн и пышных укладок)
Насадка COANDA 40 мм- 2 шт. (для создания стойких локонов, волн и пышных укладок)
Магнитный держатель'
  ),
  (
    'Model E графит, 701',
    3,
    'Недоступен',
    'tinyurl.com/701graphite',
    30990,
    'Позвольте себе лучшее в уходе за волосами с профессиональным феном-стайлером Model E. Благодаря мощному двигателю и инновационным технологиям, этот стильный фен обеспечивает быструю сушку и идеальное выравнивание волос. Его элегантный графитовый дизайн не только привлекает внимание, но и гарантирует долговечность и надежность. Идеален для создания различных укладок и придает вашим волосам блеск и здоровье.',
    'Фен-стайлер для волос
Насадка для сушки волос (концентратор)
Насадка Coanda 30мм - 2шт. (для создания стойких локонов, волн и пышных укладок
Магнитный держатель'
  ),
  (
    'Model E красный, 703',
    3,
    'Недоступен',
    'tinyurl.com/remez703red',
    30990,
    'Позвольте себе лучшее в уходе за волосами с профессиональным феном-стайлером Model E. Благодаря мощному двигателю и инновационным технологиям, этот стильный фен обеспечивает быструю сушку и идеальное выравнивание волос. Его элегантный графитовый дизайн не только привлекает внимание, но и гарантирует долговечность и надежность. Идеален для создания различных укладок и придает вашим волосам блеск и здоровье.',
    'Фен-стайлер для волос
Насадка для сушки волос (концентратор)
Насадка Coanda 30мм - 2шт. (для создания стойких локонов, волн и пышных укладок
Магнитный держатель'
  ),
  (
    'Model E Prof, 704',
    3,
    'Доступен',
    'tinyurl.com/remez704',
    32990,
    'Позвольте себе лучшее в уходе за волосами с профессиональным феном-стайлером Model E. Благодаря мощному двигателю и инновационным технологиям, этот стильный фен обеспечивает быструю сушку и идеальное выравнивание волос. Его элегантный графитовый дизайн не только привлекает внимание, но и гарантирует долговечность и надежность. Идеален для создания различных укладок и придает вашим волосам блеск и здоровье.',
    'Фен-стайлер для волос
Насадка для сушки волос (концентратор)
Насадка Final Touch для создания прямых прядей
Насадка Диффузор для эффективной сушки кудрявых волос
Магнитный держатель'
  ),
  (
    'AirCreator, 411',
    4,
    'Недоступен',
    'tinyurl.com/remez411',
    36990,
    'Преобразите атмосферу вашего пространства с AirCreator – передовым гибридным климатическим комплексом. Этот уникальный прибор сочетает в себе функции очистки, увлажнения и кондиционирования воздуха, создавая идеальные условия для вашего комфорта. С высокоэффективной фильтрацией и современными технологиями управления, AirCreator обеспечивает чистый и свежий воздух, помогает поддерживать оптимальный уровень влажности и комфортную температуру. Идеальный выбор для дома и офиса, AirCreator улучшит качество воздуха и ваш комфорт в любое время года.',
    'Климатический комплекс с плазмакластером 
Композитный фильтр BLOCK AO HEPA13+угольный 
Пульт управления
Батарейки для пульта 
Предфильтр FF-BLOCK 
Блок питания
Руководство пользователя'
  ),
  (
    'AirCreator+ PLASM-AR, 411Pro',
    4,
    'Доступен',
    'tinyurl.com/remez411pro',
    46990,
    'Преобразите атмосферу вашего пространства с AirCreator – передовым гибридным климатическим комплексом. Этот уникальный прибор сочетает в себе функции очистки, увлажнения и кондиционирования воздуха, создавая идеальные условия для вашего комфорта. С высокоэффективной фильтрацией и современными технологиями управления, AirCreator обеспечивает чистый и свежий воздух, помогает поддерживать оптимальный уровень влажности и комфортную температуру. Идеальный выбор для дома и офиса, AirCreator улучшит качество воздуха и ваш комфорт в любое время года.',
    'Климатический комплекс с плазмакластером 
Выносная станция контроля качества воздуха SensoStation
Композитный фильтр BLOCK AO HEPA13+угольный 
Пульт управления
Батарейки для пульта 
Предфильтр FF-BLOCK 
Блок питания
Руководство пользователя'
  ),
  (
    'SensoStation',
    5,
    'Доступен',
    'tinyurl.com/sensostation',
    7990,
    'Следите за качеством воздуха в вашем окружении с помощью Sensostation – передовая выносная станция контроля. Эта инновационная система обеспечивает точный мониторинг уровня загрязняющих веществ, температуры и влажности. Простота установки и использования позволяет легко интегрировать Sensostation в любой интерьер, обеспечивая круглосуточный контроль и своевременное реагирование на изменения. Идеальный выбор для дома, офиса или производственных помещений, Sensostation помогает поддерживать здоровый микроклимат и улучшает качество воздуха.',
    'Sensostation - выносная станция контроля воздуха'
  ),
  (
    'AeroDry Eco',
    5,
    'Доступен',
    'tinyurl.com/aerodryeco',
    9990,
    'Преобразите пространство с интеллектуальным осушителем воздуха AeroDry Eco. Этот высокоэффективный осушитель оснащен передовыми технологиями управления, которые автоматически регулируют уровень влажности для максимального комфорта. Компактный и стильный дизайн идеально вписывается в любой интерьер, а интеллектуальная система обеспечивает бесшумную и энергосберегающую работу. AeroDry Eco – идеальный выбор для защиты от избыточной влаги, предотвращения образования плесени и создания здорового климата в вашем доме или офисе.',
    'AeroDry Eco'
  ),
  (
    'AeroDry Smart, 304',
    5,
    'Доступен',
    'tinyurl.com/remez304',
    7990,
    'Преобразите пространство с интеллектуальным осушителем воздуха AeroDry Smart. Этот высокоэффективный осушитель оснащен передовыми технологиями управления, которые автоматически регулируют уровень влажности для максимального комфорта. Компактный и стильный дизайн идеально вписывается в любой интерьер, а интеллектуальная система обеспечивает бесшумную и энергосберегающую работу. AeroDry Smart – идеальный выбор для защиты от избыточной влаги, предотвращения образования плесени и создания здорового климата в вашем доме или офисе.',
    'AeroDry Smart'
  ),
  (
    'AeroDry 10, 311N',
    5,
    'Доступен',
    'tinyurl.com/remez311N',
    16990,
    'Преобразите пространство с интеллектуальным осушителем воздуха AeroDry 10. Этот высокоэффективный осушитель оснащен передовыми технологиями управления, которые автоматически регулируют уровень влажности для максимального комфорта. Компактный и стильный дизайн идеально вписывается в любой интерьер, а интеллектуальная система обеспечивает бесшумную и энергосберегающую работу. AeroDry 10 – идеальный выбор для защиты от избыточной влаги, предотвращения образования плесени и создания здорового климата в вашем доме или офисе.',
    'AeroDry 10'
  ),
  (
    'AeroDry 15 Smart с Wi-Fi, 312',
    5,
    'Доступен',
    'tinyurl.com/remez312',
    20990,
    'Преобразите пространство с интеллектуальным осушителем воздуха AeroDry 15. Этот высокоэффективный осушитель оснащен передовыми технологиями управления, которые автоматически регулируют уровень влажности для максимального комфорта. Компактный и стильный дизайн идеально вписывается в любой интерьер, а интеллектуальная система обеспечивает бесшумную и энергосберегающую работу. AeroDry 15 – идеальный выбор для защиты от избыточной влаги, предотвращения образования плесени и создания здорового климата в вашем доме или офисе.',
    'AeroDry 15'
  ),
  (
    'AeroDry 18, 313',
    5,
    'Доступен',
    'tinyurl.com/remez313',
    22990,
    'Преобразите пространство с интеллектуальным осушителем воздуха AeroDry 18. Этот высокоэффективный осушитель оснащен передовыми технологиями управления, которые автоматически регулируют уровень влажности для максимального комфорта. Компактный и стильный дизайн идеально вписывается в любой интерьер, а интеллектуальная система обеспечивает бесшумную и энергосберегающую работу. AeroDry 18 – идеальный выбор для защиты от избыточной влаги, предотвращения образования плесени и создания здорового климата в вашем доме или офисе.',
    'AeroDry 18'
  ),
  (
    'AeroDry 23, 314',
    5,
    'Доступен',
    'tinyurl.com/remez314',
    26990,
    'Преобразите пространство с интеллектуальным осушителем воздуха AeroDry 23. Этот высокоэффективный осушитель оснащен передовыми технологиями управления, которые автоматически регулируют уровень влажности для максимального комфорта. Компактный и стильный дизайн идеально вписывается в любой интерьер, а интеллектуальная система обеспечивает бесшумную и энергосберегающую работу. AeroDry 23 – идеальный выбор для защиты от избыточной влаги, предотвращения образования плесени и создания здорового климата в вашем доме или офисе.',
    'AeroDry 23'
  )
