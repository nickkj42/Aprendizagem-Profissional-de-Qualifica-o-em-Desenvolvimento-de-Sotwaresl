/*Criando banco de dados*/
create database empresa;
use empresa;

/* Implementação Banco de Dados Relacional SQL */
create table "bd_caso_estudo_vendas";

/*01 criando tabela*/

create table cliente(
codigo varchar(100),
nome varchar(100),
cpf int(11),
endereco varchar(100),
telefone varchar (12)
);
 describe clinte;
 select * from clinte 
    
   /*02 criando tabela funcionario*/
   
create table funcionario(
codigo varchar(100),
nome varchar(100),
cpf varchar (11),
endereco varchar(100),
telefone varchar(100)
);
describe funcionario;
select * from funcionario 
    
/*03 criando tabela de compra*/
     
create table compra(
codigo varchar(100),
quantidade_produtos varchar(100) 
);
describe compra;
select * from compra
    
/*04 criando tabela de produto*/
    
create table produto(
codigo varchar(100),
descricao varchar(100),
valor varchar(100)
);
 describe value;
 select * from produto
