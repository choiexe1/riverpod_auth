import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rpod_auth/features/auth/data/data_sources/remote/remote_auth_data_source.dart';
import 'package:rpod_auth/injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  injection();

  final authDataSource = sl<RemoteAuthDataSource>();

  final credential = {
    'username': 'emilys',
    'password': 'emilyspass',
    'expiresInMins': 30,
  };

  print(await authDataSource.login(credential));

  runApp(ProviderScope(child: const App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
