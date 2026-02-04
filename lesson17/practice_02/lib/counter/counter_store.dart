import 'package:practice_02/counter/actions/counter_actions.dart';

import 'package:practice_02/counter/state/counter_state.dart';

import 'package:practice_02/counter/state/history_item.dart';
import 'package:redux/redux.dart';

CounterState counterReducer(CounterState state, action) {
  if (action is! CounterActions) {
    return state;
  }

  return action.when(
    increment: () => state.copyWith(
      count: state.count + 1,
      history: [...state.history, const HistoryItem.increment(1)],
    ),

    decrement: () => state.copyWith(
      count: state.count - 1,
      history: [...state.history, const HistoryItem.decrement(1)],
    ),
  );
}
