import 'package:basketball_counter/Widgets/reset.dart';
import 'package:basketball_counter/Widgets/team_a_counter.dart';
import 'package:basketball_counter/Widgets/team_b_counter.dart';
import 'package:basketball_counter/cubit/counter_cubit.dart';
import 'package:basketball_counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterViewBody extends StatefulWidget {
  const CounterViewBody({super.key});

  @override
  State<CounterViewBody> createState() => _CounterViewBodyState();
}

class _CounterViewBodyState extends State<CounterViewBody> {
  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        if (state is CounterAIncrementState) {
          teamApoints = BlocProvider.of<CounterCubit>(context).teamApoints;
        } else if (state is CounterBIncrementState) {
          teamBpoints = BlocProvider.of<CounterCubit>(context).teamBpoints;
        }
      },
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TeamACounter(
                  teamApoints:
                      BlocProvider.of<CounterCubit>(context).teamApoints,
                ),
                const SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
                TeamBCounter(
                  teamBPoints:
                      BlocProvider.of<CounterCubit>(context).teamBpoints,
                ),
              ],
            ),
            Reset(),
          ],
        );
      },
    );
  }
}
