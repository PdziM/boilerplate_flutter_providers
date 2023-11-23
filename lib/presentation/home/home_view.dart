import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_state.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeState(context),
      child: Consumer<HomeState>(
        builder: (_, state, __) {
          return const Scaffold(
            body: Center(
              child: Text('Hello World'),
            ),
          );
        },
      ),
    );
  }
}
