import 'package:counter_bloc/frontend/home/bloc/home_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'frontend/home/home.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<homeCounterBloc>(
      create: (context) => homeCounterBloc(),
      child: MaterialApp(
        home: Scaffold(
          body: home(),
        ),
      ),
    );
  }
}
