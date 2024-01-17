import 'package:counter_bloc/frontend/home/bloc/home_bloc_event.dart';
import 'package:counter_bloc/frontend/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home/bloc/home_bloc_bloc.dart';
import '../home/bloc/home_bloc_state.dart';

class info extends StatefulWidget {
  const info({super.key});

  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<homeCounterBloc, homecounterState>(
        builder: (context, state) {
      return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Text('counter number'),
              Text(state.counter.toString()),
              ElevatedButton(
                  onPressed: () {
                    context.read<homeCounterBloc>().add(homedecrementEvent());
                  },
                  child: Text('-')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('<-  Home Page')),
            ],
          ),
        ),
      );
    });
  }
}
