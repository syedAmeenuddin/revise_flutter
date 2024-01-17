// main state
class homecounterState {
  int counter;
  homecounterState({required this.counter});
}

// initial value for the state
class homecounterInitialState extends homecounterState {
  homecounterInitialState({required int val}) : super(counter: val);
}

// updating the val of main state
class homecounterIncrementState extends homecounterState {
  homecounterIncrementState(int val) : super(counter: val);
}

// updating the val of main state
class homecounterDerementState extends homecounterState {
  homecounterDerementState(int val) : super(counter: val);
}
