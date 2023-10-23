// Import necessary dependencies for the CounterWidget implementation
import 'package:clean_architecture/features/counter/presentation/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Widget displaying the counter value
class CounterWidget extends StatelessWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Access the CounterProvider using Provider.of
    final counterProvider = Provider.of<CounterProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(25),
      child: Text(
        // Display the counter value from the CounterProvider
        counterProvider.counterModel.count.toString(),
        style: const TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}
