// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conectivty_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ConectivtyStore on ConectivtyStoreContract, Store {
  late final _$connectivityResultAtom = Atom(
      name: 'ConectivtyStoreContract.connectivityResult', context: context);

  @override
  ObservableStream<List<ConnectivityResult>> get connectivityResult {
    _$connectivityResultAtom.reportRead();
    return super.connectivityResult;
  }

  @override
  set connectivityResult(ObservableStream<List<ConnectivityResult>> value) {
    _$connectivityResultAtom.reportWrite(value, super.connectivityResult, () {
      super.connectivityResult = value;
    });
  }

  @override
  String toString() {
    return '''
connectivityResult: ${connectivityResult}
    ''';
  }
}
