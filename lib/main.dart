import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:modelproject/Screens/Generics/button_generics.dart';
import 'package:modelproject/Store/conectivty_store.dart';
import 'package:modelproject/Store/login_service_store.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainReactionBuilder(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Demo',
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
      ),
      body: ExampleColumn(),
    );
  }
}

class MainReactionBuilder extends StatelessWidget {
  final ConectivtyStore _conectivtyStore = ConectivtyStore();

  MainReactionBuilder({super.key});

  @override
  Widget build(BuildContext context) => ScaffoldMessenger(
        child: ReactionBuilder(
          builder: (context) {
            return reaction((_) => _conectivtyStore.connectivityResult?.value,
                (resultado) {
              final messenger = ScaffoldMessenger.of(context);

              messenger.showSnackBar(
                SnackBar(
                  content: Text(resultado == ConnectivityResult.none
                      ? 'You\'re offline'
                      : 'You\'re online'),
                ),
              );
            }, delay: 4000);
          },
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Flutter Demo',
                style: TextStyle(color: Colors.blue),
              ),
              centerTitle: true,
            ),
            drawer: Drawer(
              child: ListView(
                children: const [
                  SizedBox(
                    height: 60,
                    child: DrawerHeader(
                      decoration: BoxDecoration(color: Colors.blue),
                      child: Text('Drawer Header'),
                    ),
                  ),
                  ListTile(
                    title: Text('Item 1'),
                  ),
                  ListTile(
                    title: Text('Item 2'),
                  ),
                ],
              ),
            ),
            body: ExampleColumn(),
          ),
        ),
      );
}

class ExampleColumn extends StatelessWidget {
  final LoginServiceReactiveStore _loginServiceReactiveStore =
      LoginServiceReactiveStore();
  ExampleColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Text('Motorcycle App'),
          ),
          Observer(builder: (_) {
            return ButtonGenerics(
              titleColor: Colors.blueAccent,
              title: "Login",
              borderColor: Colors.red,
              onPressed: () {
                _loginServiceReactiveStore.loginUser();
              },
            );
          }),
          OutlinedButton(
            onPressed: () {},
            child: const Text("Register"),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 120.0),
            child: Text(
              "Made in China",
              textScaler: TextScaler.linear(1.5),
            ),
          ),
        ],
      ),
    );
  }
}

Widget preview() {
  return const Home();
}
