import 'package:basketball_counter/Widgets/custom_button.dart';
import 'package:basketball_counter/cubit/counter_cubit.dart';
import 'package:basketball_counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeamBCounter extends StatelessWidget {
  const TeamBCounter({super.key, required this.teamBPoints});

  final int teamBPoints;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          backgroundColor: Colors.black,
          radius: 82,
          child: CircleAvatar(
            backgroundImage: AssetImage('images/team2.jpg'),
            radius: 80,
          ),
        ),
        Text(
          teamBPoints.toString(),
          style: const TextStyle(
            fontSize: 150,
            fontWeight: FontWeight.bold,
          ),
        ),
        CustomButton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(context)
                .TeamIncrement(team: 'B', ButtonNumber: 1);
          },
          txt: 'Add 1 point',
        ),
        CustomButton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(context)
                .TeamIncrement(team: 'B', ButtonNumber: 2);
          },
          txt: 'Add 2 point',
        ),
        CustomButton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(context)
                .TeamIncrement(team: 'B', ButtonNumber: 3);
          },
          txt: 'Add 3 point',
        )
      ],
    );
  }
}
