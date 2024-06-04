import 'package:mobx/mobx.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
part 'conectivty_store.g.dart';

class ConectivtyStore = ConectivtyStoreContract with _$ConectivtyStore;

abstract class ConectivtyStoreContract with Store {
  @observable
  ObservableStream<List<ConnectivityResult>> connectivityResult =
      ObservableStream(Connectivity().onConnectivityChanged);
  void dispose() {}
}
