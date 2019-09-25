create database mercado;
create table categoria (
	id serial primary key,
	descricao varchar(100) not null,
	status integer default 1
);

insert into categoria (descricao) values ('Bebidas');
insert into categoria (descricao) values ('Comidas');
insert into categoria (descricao) values ('Teste');
insert into categoria (descricao) values ('Doces');
insert into categoria (descricao) values ('Hostifruti');
insert into categoria (descricao) values ('Limpeza');
insert into categoria (descricao) values ('Higiene');
insert into categoria (descricao) values ('Massas');
insert into categoria (descricao) values ('Laticinios');
insert into categoria (descricao) values ('Cereais');
insert into categoria (descricao) values ('Congelafos');
insert into categoria (descricao) values ('Carnes');

update categoria set descricao = 'Perfumaria' where id = 3;
update categoria set descricao = 'Congelados' where id = 11;
update categoria set status = 0 where id = 5;
update categoria set status = 0 where id = 6;

delete from categoria where id = 3;

select * from categoria 
select descricao from categoria 
select descricao,status from categoria 
select descricao,status,id from categoria where id = 10 
select descricao,status,id from categoria where status = 0 

select * from categoria order by id
select * from categoria order by id desc

select * from categoria where descricao = 'Doces'
select * from categoria where descricao = 'Doces' or descricao = 'Limpeza'
select * from categoria where descricao = 'Doces' or descricao = 'Limpeza' or descricao = 'Carnes'

--------------------------------------------------------------------------

create table produto (
	id serial primary key,
	descricao varchar(100) not null,
	qtd integer not null,
	valor decimal(10,2) not null,
	categoria_id integer not null,
	status integer default 1,
	foreign key (categoria_id) references categoria (id)
)

INSERT INTO public.produto(
	descricao, qtd, valor, categoria_id)
	VALUES ( 'Coca-cola', 10, 4.50, 1);

INSERT INTO public.produto(
	descricao, qtd, valor, categoria_id)
	VALUES ( 'Chave-de-Fenda', 1, 16.00, 1);

INSERT INTO public.produto(
	descricao, qtd, valor, categoria_id);

INSERT INTO public.produto(
	descricao, qtd, valor, categoria_id)
	VALUES ( 'Morango', 12, 5.50, 1);

INSERT INTO public.produto(
	descricao, qtd, valor, categoria_id)
	VALUES ( 'Morango', 12, 5.50, 1);

INSERT INTO public.produto(
	descricao, qtd, valor, categoria_id)
	VALUES ( 'Garfo', 100, 50.00, 1);

INSERT INTO public.produto(
	descricao, qtd, valor, categoria_id)
	VALUES ( 'Chinelo', 20, 5.00, 1);

INSERT INTO public.produto(
	descricao, qtd, valor, categoria_id)
	VALUES ( 'Bergamota', 6, 4.00, 1);

delete	from produto where id=7

----------------------------------------------------------------

select * from produto inner join categoria on produto.categoria_id = categoria.id

-----------------------------------------------------------------

select produto.id as prodid,produto.descricao as proddesc,qtd,valor,categoria_id,produto.status as prodstatus,categoria.id as catid,categoria.descricao as catdesc,categoria.status as catstatus
from produto
inner join categoria on produto.categoria_id = categoria.id
----------------------------------------------------------------

select descricao,qtd,valor, (qtd * valor) as total from produto




	
