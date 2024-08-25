import 'package:basketball_counter/Widgets/custom_button.dart';
import 'package:basketball_counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeamACounter extends StatelessWidget {
  const TeamACounter({super.key, required this.teamApoints});

  final int teamApoints;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          backgroundColor: Colors.black,
          radius: 82,
          child: CircleAvatar(
            backgroundImage: AssetImage('images/team1.jpg'),
            radius: 80,
          ),
        ),
        Text(
          teamApoints.toString(),
          style: const TextStyle(
            fontSize: 150,
            fontWeight: FontWeight.bold,
          ),
        ),
        CustomButton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(context)
                .TeamIncrement(team: 'A', ButtonNumber: 1);
          },
          txt: 'Add 1 point',
        ),
        CustomButton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(context)
                .TeamIncrement(team: 'A', ButtonNumber: 2);
          },
          txt: 'Add 2 point',
        ),
        CustomButton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(context)
                .TeamIncrement(team: 'A', ButtonNumber: 3);
          },
          txt: 'Add 3 point',
        )
      ],
    );
  }
}
