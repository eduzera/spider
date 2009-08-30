use spider

/*pensei em colocar o id do user em todas as tabelas, assim vc sabe quem criou e um outro campo com o id de quem
deu um update naquela tabela*/

/*PERFIL*/
insert into profiles (description) values ("SISTEMA");
insert into profiles (description) values ("ADMINISTRADOR");
insert into profiles (description) values ("GERÊNCIA");
insert into profiles (description) values ("OPERADOR");
insert into profiles (description) values ("CONSULTA");

/*USUÁRIO*/
insert into users (name, login, pass, active, profile_id)
    values ("Default", "default", "default", false, 1);

insert into users (name, login, pass, active, profile_id)
    values ("Bloqueado", "ze", "ze", false, 3);

insert into users (name, login, pass, active, profile_id)
    values ("TEM Software", "temsft", "temsft", true, 2);

/*MONTADORAS*/
insert into brands (name) values ("CHEVROLET");
insert into brands (name) values ("FIAT");
insert into brands (name) values ("HONDA");
insert into brands (name) values ("VOLKSWAGEN");

/*CARROS*/
insert into cars (name, brand_id) values ("CELTA",  1);
insert into cars (name, brand_id) values ("VECTRA", 1);
insert into cars (name, brand_id) values ("OMEGA",  1);

insert into cars (name, brand_id) values ("PALIO", 2);
insert into cars (name, brand_id) values ("STILO", 2);
insert into cars (name, brand_id) values ("BRAVA", 2);

insert into cars (name, brand_id) values ("CIVIC",  3);
insert into cars (name, brand_id) values ("ACCORD", 3);
insert into cars (name, brand_id) values ("FIT",    3);

insert into cars (name, brand_id) values ("GOL",  4);
insert into cars (name, brand_id) values ("FOX",  4);
insert into cars (name, brand_id) values ("POLO", 4);

/*CORES*/
insert into colors (name) values ("AMARELO");
insert into colors (name) values ("AZUL");
insert into colors (name) values ("BRANCO");
insert into colors (name) values ("CHUMBO");
insert into colors (name) values ("PRATA");
insert into colors (name) values ("PRETO");
insert into colors (name) values ("ROSA");
insert into colors (name) values ("VERDE");
insert into colors (name) values ("VERMELHO");
insert into colors (name) values ("VINHO");

/*COMBUSTIVEL*/
insert into fuels (name) values ("ALCOOL");
insert into fuels (name) values ("DIESEL");
insert into fuels (name) values ("FLEX");
insert into fuels (name) values ("GASOLINA");

/*CAMBIO*/
insert into gears (name) values ("AUTOMATICO");
insert into gears (name) values ("MANUAL");
insert into gears (name) values ("TIPTRONIC");

/*TIPOS*/
insert into type_vehicles (description) values ("CARRO");
insert into type_vehicles (description) values ("TAXI");
insert into type_vehicles (description) values ("MOTO");

/*OPCIONAIS*/
insert into options (description) values ("DIRECAO HIDRAULICA");
insert into options (description) values ("VIDRO ELETRICO");
insert into options (description) values ("TRAVA ELETRICA");
insert into options (description) values ("AR CONDICIONADO");

/*CARROS A VENDA*/
/*
insert into vehicles (amount, note, year, model, doors, finale, km, 
car_id, color_id, gear_id, fuel_id, type_vehicle_id)
  values (10000, "lindo e maravilhoso", '2009-01-01', '2010-01-01', 5, 7, "1.000",
   1, 5, 3, 4, 1);

insert into vehicles (amount, note, year, model, doors, finale, km, 
car_id, color_id, gear_id, fuel_id, type_vehicle_id)
  values (10000, "lindo e maravilhoso", '2009-01-01', '2010-01-01', 5, 7, "1.000",
   2, 5, 3, 4, 1);

insert into vehicles (amount, note, year, model, doors, finale, km, 
car_id, color_id, gear_id, fuel_id, type_vehicle_id)
  values (10000, "lindo e maravilhoso", '2009-01-01', '2010-01-01', 5, 7, "1.000",
   3, 5, 3, 4, 1);

insert into vehicles (amount, note, year, model, doors, finale, km, 
car_id, color_id, gear_id, fuel_id, type_vehicle_id)
  values (10000, "lindo e maravilhoso", '2009-01-01', '2010-01-01', 5, 7, "1.000",
   4, 5, 3, 4, 1);

insert into vehicles (amount, note, year, model, doors, finale, km, 
car_id, color_id, gear_id, fuel_id, type_vehicle_id)
  values (10000, "lindo e maravilhoso", '2009-01-01', '2010-01-01', 5, 7, "1.000",
   5, 5, 3, 4, 1);

insert into vehicles (amount, note, year, model, doors, finale, km, 
car_id, color_id, gear_id, fuel_id, type_vehicle_id)
  values (10000, "lindo e maravilhoso", '2009-01-01', '2010-01-01', 5, 7, "1.000",
   6, 5, 3, 4, 1);

insert into vehicles (amount, note, year, model, doors, finale, km, 
car_id, color_id, gear_id, fuel_id, type_vehicle_id)
  values (10000, "lindo e maravilhoso", '2009-01-01', '2010-01-01', 5, 7, "1.000",
   7, 5, 3, 4, 1);

insert into vehicles (amount, note, year, model, doors, finale, km, 
car_id, color_id, gear_id, fuel_id, type_vehicle_id)
  values (10000, "lindo e maravilhoso", '2009-01-01', '2010-01-01', 5, 7, "1.000",
   8, 5, 3, 4, 1);

insert into vehicles (amount, note, year, model, doors, finale, km, 
car_id, color_id, gear_id, fuel_id, type_vehicle_id)
  values (10000, "lindo e maravilhoso", '2009-01-01', '2010-01-01', 5, 7, "1.000",
   9, 5, 3, 4, 1);

insert into vehicles (amount, note, year, model, doors, finale, km, 
car_id, color_id, gear_id, fuel_id, type_vehicle_id)
  values (10000, "lindo e maravilhoso", '2009-01-01', '2010-01-01', 5, 7, "1.000",
   10, 5, 3, 4, 1);

insert into vehicles (amount, note, year, model, doors, finale, km, 
car_id, color_id, gear_id, fuel_id, type_vehicle_id)
  values (10000, "lindo e maravilhoso", '2009-01-01', '2010-01-01', 5, 7, "1.000",
   11, 5, 3, 4, 1);

insert into vehicles (amount, note, year, model, doors, finale, km, 
car_id, color_id, gear_id, fuel_id, type_vehicle_id)
  values (10000, "lindo e maravilhoso", '2009-01-01', '2010-01-01', 5, 7, "1.000",
   12, 5, 3, 4, 1);



insert into options_vehicles (vehicle_id, option_id) values (1, 1);
insert into options_vehicles (vehicle_id, option_id) values (1, 3);
insert into options_vehicles (vehicle_id, option_id) values (1, 4);
insert into options_vehicles (vehicle_id, option_id) values (2, 1);

*/

