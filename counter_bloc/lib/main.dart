import 'package:counter_bloc/frontend/home/bloc/home_bloc_bloc.dart';
import 'package:counter_bloc/frontend/info/info.dart';
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
    return MultiBlocProvider(
      // return BlocProvider<homeCounterBloc>(
      //   create: (context) => homeCounterBloc(),
      providers: [
        BlocProvider(
          create: (context) => homeCounterBloc(),
        ),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {'/': (context) => home(), '/info': (context) => info()},
      ),
    );
  }
}
