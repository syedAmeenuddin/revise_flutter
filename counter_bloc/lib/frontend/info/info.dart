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
        body: Column(
          children: [
            Text('counter number'),
            Text(state.counter.toString()),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => home()));
                },
                child: Text('<-  Home Page')),
          ],
        ),
      );
    });
  }
}
