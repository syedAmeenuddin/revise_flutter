abstract class homecounterState {
  int counter = 0;
  homecounterState({required this.counter});
}

class homecounterInitialState extends homecounterState {
  homecounterInitialState() : super(counter: 0);
}

class homecounterIncrementState extends homecounterState {
  homecounterIncrementState(int CounterIncrement)
      : super(counter: CounterIncrement);
}
