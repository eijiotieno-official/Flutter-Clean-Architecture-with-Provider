// Import necessary dependencies for the ActionsWidget implementation
import 'package:clean_architecture/features/counter/presentation/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Widget representing actions for manipulating the counter
class ActionsWidget extends StatelessWidget {
  const ActionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Access the CounterProvider using Provider.of
    final counterProvider = Provider.of<CounterProvider>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Button to trigger fetching the counter
        FilledButton(
          onPressed: () {
            counterProvider.fetchCounter();
          },
          child: const Text("Get"),
        ),
        const SizedBox(width: 20),
        // Button to decrement the counter
        ElevatedButton(
          onPressed: () {
            counterProvider.decrementCounter();
          },
          child: const Icon(Icons.remove_rounded),
        ),
        const SizedBox(width: 20),
        // Button to increment the counter
        ElevatedButton(
          onPressed: () {
            counterProvider.incrementCounter();
          },
          child: const Icon(Icons.add_rounded),
        ),
      ],
    );
  }
}
