create schema ecommerce;
-- create table <schema>.<nome_da_tabela>
create table ecommerce.cliente (
    -- informar_colunas
	-- nome_da_coluna_e_depois_tipo_de_dados
    id_cliente int primary key generated always as identity,
	nome_completo text not null,
	email text not null,
	senha varchar (15) not null,
	telefone varchar (11) not null,
	data_cadastro timestamptz not null
	
);
create table ecommerce.produto (

       id_produto int primary key generated always as identity,
	   nome_produto text not null,
	   descricao text,
	   preco numeric (12,2) not null,
	   estoque_disponivel int not null,
	   imagem_url text
);
create table ecommerce.pedido (
	   id_pedido int primary key generated always as identity,
	   -- maneira extensa de fazer a chave estrangeira
	   id_cliente int,
	   foreign key (id_cliente) references ecommerce.cliente(id_cliente),
	   data_pedido timestamptz not null,
		valor_total numeric (14,4) not null,
		status text not null
);

-- APAGAR TABELA - DROP TABLE
/*DROP TABLE ecommerce.cliente;
drop table ecommerce.produto;
drop table ecommerce.pedido;
*/

