import 'dart:async';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rxdart/subjects.dart';

//No Modular, classes Disposable são automaticamente descartadas
//quando estão fora do escopo do modulo
class HomeBloc extends Disposable{
  final _countTaps = BehaviorSubject<int>();
  Stream<int> get getCountTaps => _countTaps.stream;

  HomeBloc(){
    _countTaps.sink.add(0);
  }

  void addTap(){
    int currentValue = _countTaps.stream.valueWrapper.value;
    _countTaps.sink.add(currentValue + 1);
  }

  @override
  void dispose() {
    _countTaps.close();
  }
}