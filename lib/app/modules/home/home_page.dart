import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_bloc.dart';

class HomePage extends StatelessWidget {
  final _bloc = Modular.get<HomeBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contador',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _bloc.addTap();
        },
        child: Icon(Icons.add_outlined),
      ),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StreamBuilder<int>(
                  stream: _bloc.getCountTaps,
                  builder: (context, snapshot) {
                    return Text(snapshot.data.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26.0));
                  })
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Quantidade de cliques no botão',
                style: TextStyle(fontWeight: FontWeight.w300),
              )
            ],
          )
        ],
      ),
    );
  }
}
