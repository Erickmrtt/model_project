import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:modelproject/Model/user/user.dart';
import 'package:modelproject/Services/login_service.dart';
part 'login_service_store.g.dart';

class LoginServiceReactiveStore = _LoginServiceStoreBase
    with _$LoginServiceReactiveStore;

abstract class _LoginServiceStoreBase with Store {
  @observable
  ObservableList<User> userList = ObservableList<User>();

  @action
  void addNewLogin(User userName) {
    userList.add(userName);
  }

  @observable
  bool isLoading = false;

  @action
  void removeLogin(User userName) {
    userList.remove(userName);
  }

  @action
  Future loginUser() async {
    isLoading = true;
    try {
      final loginService = LoginService();
      List<User> listUser = await loginService.loginUser();
      userList.addAll(listUser);
    } catch (e) {
      debugPrint("Api error : $e");
    } finally {
      isLoading = false;
    }
  }
}
