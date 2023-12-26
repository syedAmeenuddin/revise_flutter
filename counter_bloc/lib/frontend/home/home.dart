import 'package:counter_bloc/frontend/home/bloc/home_bloc_bloc.dart';
import 'package:counter_bloc/frontend/home/bloc/home_bloc_event.dart';
import 'package:counter_bloc/frontend/home/bloc/home_bloc_state.dart';
import 'package:counter_bloc/frontend/info/info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<homeCounterBloc, homecounterState>(
        builder: (context, state) {
      return Scaffold(
        body: Column(
          children: [
            Text(state.counter.toString()),
            ElevatedButton(
                onPressed: () {
                  context.read<homeCounterBloc>().add(homeIncrementEvent());
                },
                child: Text('+')),
            // ElevatedButton(onPressed: () {}, child: Text('-')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => info()));
                },
                child: Text('info Page ->')),
          ],
        ),
      );
    });
  }
}
