// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_service_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginServiceReactiveStore on _LoginServiceStoreBase, Store {
  late final _$userListAtom =
      Atom(name: '_LoginServiceStoreBase.userList', context: context);

  @override
  ObservableList<User> get userList {
    _$userListAtom.reportRead();
    return super.userList;
  }

  @override
  set userList(ObservableList<User> value) {
    _$userListAtom.reportWrite(value, super.userList, () {
      super.userList = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_LoginServiceStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$loginUserAsyncAction =
      AsyncAction('_LoginServiceStoreBase.loginUser', context: context);

  @override
  Future<dynamic> loginUser() {
    return _$loginUserAsyncAction.run(() => super.loginUser());
  }

  late final _$_LoginServiceStoreBaseActionController =
      ActionController(name: '_LoginServiceStoreBase', context: context);

  @override
  void addNewLogin(User userName) {
    final _$actionInfo = _$_LoginServiceStoreBaseActionController.startAction(
        name: '_LoginServiceStoreBase.addNewLogin');
    try {
      return super.addNewLogin(userName);
    } finally {
      _$_LoginServiceStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeLogin(User userName) {
    final _$actionInfo = _$_LoginServiceStoreBaseActionController.startAction(
        name: '_LoginServiceStoreBase.removeLogin');
    try {
      return super.removeLogin(userName);
    } finally {
      _$_LoginServiceStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userList: ${userList},
isLoading: ${isLoading}
    ''';
  }
}
