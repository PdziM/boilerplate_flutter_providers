import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main_state.dart';
import 'presentation/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ListenableProvider<MainState>(create: (_) => MainState(context))
      ],
      child: Consumer<MainState>(builder: (_, state, __) {
        return MaterialApp(
          title: 'SQLite Demo',
          debugShowCheckedModeBanner: false,
          locale: const Locale('pt'),
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          home: const HomeView(),
        );
      }),
    );
  }
}
