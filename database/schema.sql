-- BLENDY OS - Banco inicial multiempresa
create table companies (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  phone text,
  instagram text,
  created_at timestamp with time zone default now()
);

create table customers (
  id uuid primary key default gen_random_uuid(),
  company_id uuid references companies(id) on delete cascade,
  name text not null,
  whatsapp text,
  instagram text,
  address text,
  neighborhood text,
  city text default 'Rio Brilhante',
  notes text,
  loyalty_points integer default 0,
  created_at timestamp with time zone default now()
);

create table products (
  id uuid primary key default gen_random_uuid(),
  company_id uuid references companies(id) on delete cascade,
  name text not null,
  description text,
  price numeric(10,2) not null,
  active boolean default true,
  created_at timestamp with time zone default now()
);

create table orders (
  id uuid primary key default gen_random_uuid(),
  company_id uuid references companies(id) on delete cascade,
  customer_id uuid references customers(id),
  status text not null default 'preparando',
  payment_method text,
  delivery_type text,
  total numeric(10,2) default 0,
  notes text,
  created_at timestamp with time zone default now()
);

create table order_items (
  id uuid primary key default gen_random_uuid(),
  order_id uuid references orders(id) on delete cascade,
  product_id uuid references products(id),
  quantity integer not null,
  unit_price numeric(10,2) not null,
  total numeric(10,2) not null
);

insert into companies (name, phone, instagram)
values ('Blendy Batidas & Sabores', '(67) 99680-4981', '@blendy.batidas');
