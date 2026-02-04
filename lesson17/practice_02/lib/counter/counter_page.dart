import 'package:flutter/material.dart';

import 'package:flutter_redux/flutter_redux.dart';
import 'package:practice_02/counter/actions/counter_actions.dart';
import 'package:practice_02/counter/counter_store.dart';
import 'package:practice_02/counter/state/counter_state.dart';
import 'package:practice_02/counter/state/history_item.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Redux Counter with History'),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StoreConnector<CounterState, int>(
                converter: (store) => store.state.count,
                builder: (context, int counter) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Counter Value: $counter',
                      style: const TextStyle(fontSize: 24),
                    ),
                  );
                },
              ),

              StoreConnector<CounterState, int>(
                converter: (store) => store.state.history.length,
                builder: (context, int historyCount) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'History Length: $historyCount',
                      style: const TextStyle(fontSize: 24),
                    ),
                  );
                },
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(),
              ),

              Expanded(
                child: StoreConnector<CounterState, List<HistoryItem>>(
                  converter: (store) => store.state.history,
                  builder: (context, historyItems) {
                    return ListView.builder(
                      itemCount: historyItems.length,
                      itemBuilder: (context, index) {
                        final item = historyItems[index];

                        return ListTile(
                          title: item.when(
                            increment: (value) => Text("Increment $value"),
                            decrement: (value) => Text("Decrement $value"),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  StoreConnector<CounterState, VoidCallback>(
                    converter: (store) =>
                        () => store.dispatch(CounterActions.increment()),
                    builder: (context, callback) {
                      return FloatingActionButton(
                        child: Icon(Icons.add),
                        onPressed: () {
                          callback();
                        },
                      );
                    },
                  ),

                  StoreConnector<CounterState, VoidCallback>(
                    converter: (store) =>
                        () => store.dispatch(CounterActions.decrement()),
                    builder: (context, callback) {
                      return FloatingActionButton(
                        child: Icon(Icons.remove),
                        onPressed: () {
                          callback();
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
