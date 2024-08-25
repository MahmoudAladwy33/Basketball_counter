import 'package:basketball_counter/Widgets/counter_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.sports_basketball,
          color: Color.fromARGB(255, 196, 69, 47),
        ),
        title: const Text('Points Counter'),
        backgroundColor: const Color(0XFF17408B),
      ),
      body: const CounterViewBody(),
    );
  }
}
