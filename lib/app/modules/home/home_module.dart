import 'package:flutter_modular/flutter_modular.dart';

import 'home_bloc.dart';
import 'home_page.dart';

class HomeModule extends Module {

  //Lista de dependencias a serem injetadas nesse modulo filho
  @override
  final List<Bind> binds = [
    Bind.factory((i) => HomeBloc())
  ];

  //Rotas especificas do modulo
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => HomePage())
  ];
}
