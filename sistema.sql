/*Criando index e definindo que as compras possuem muitos produtos*/

alter table 'bd_caso_estudo_vendas'.' `tb_prod_comp`
add index `fk_prod_comp_compra_idx` (`compra_cod`asc);

alter table 'bd_caso_estudo_vendas`.`tb_prod_comp`
add index `fk_prod_comp_compra_idx` (`compra_cod`);

/*Adicionando a chave estrangeira */
alter table `bd_caso_estudo_vendas`.`tb_prod_comp`
add constraint `fk_prod_comp_compra`
   foraign key(`compra_cod`)
   references `bd_caso_estudo_vendas`.`tb_compra`(`compra_cod`)
   on delete no action
   on update no action;

/*Criando index e definindo que um produto é definido por um fornecedor*'
alter table `bd_caso_estudo_vendas`.`tb_prod`
add index `fk_prod_forn_indx`(`prod_forn_cod` ASC);

/*Criando chave estrangeira*/
alter table `bd_caso_estudo_vendas`.`tb_prod`

/*Criando index e definindo que cliente possui muitos telefone*/
alter table `bd_caso_estudo_vendas`.`tb_cli_tel`
add index `fk_cli_tel_idx` (`tel_cli_cod` asc);

/*Adicionando chave estrangeira*/
alter table `bd_caso_estudo_vendas`.`tb_cli_tel`
add constraint `fk_cli_tel`
	foreign key  (`tel_cli_cod`)
    references  `bd_caso_estudo_vendas`.`tb_cli`(`cli_cod`)
	on delete no action
    on update no action;
   
   alter table `bd_caso_estudo_vendas`.`tb_prod_comp`
   add constraint `fk_prod_comp_prod`
   foreign key (`prod_cod`)
   references `bd_caso_estudo_vendas`.`tb_prod`(`prod_cod`)
   on delete no action
   on update no action;
