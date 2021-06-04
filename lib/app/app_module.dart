import 'package:flutter_modular/flutter_modular.dart';
import 'modules/home/home_module.dart';

//Modulo pai da aplicacao
class AppModule extends Module{

  //Prove lista de dependencias para injetar no modulo pai
  @override
  final List<Bind> binds = [
    
  ];

  //Lista de rotas de cada modulo
  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/home', module: HomeModule())
  ];
}