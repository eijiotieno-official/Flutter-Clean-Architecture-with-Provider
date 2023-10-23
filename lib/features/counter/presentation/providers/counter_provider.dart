// Import necessary dependencies for the CounterProvider implementation
import 'package:clean_architecture/features/counter/data/models/counter_model.dart';
import 'package:clean_architecture/features/counter/domain/usecases/get_counter_usecase.dart';
import 'package:flutter/material.dart';

// ChangeNotifier for managing state related to the counter feature
class CounterProvider extends ChangeNotifier {
  final GetCounterUseCase getCounterUseCase;

  // Constructor for CounterProvider, injecting GetCounterUseCase
  CounterProvider(this.getCounterUseCase);

  // Internal state: CounterModel
  CounterModel _counterModel = CounterModel(count: 0);

  // Getter for accessing the current CounterModel
  CounterModel get counterModel => _counterModel;

  // Asynchronous method to fetch the counter value
  Future<void> fetchCounter() async {
    // Execute the GetCounterUseCase to get the counter entity
    final count = getCounterUseCase.execute();
    // Update the internal state with the new counter value
    _counterModel = CounterModel(count: count.count);
    // Notify listeners of the change in state
    notifyListeners();
  }

  // Method to increment the counter value
  void incrementCounter() {
    // Calculate the new counter value
    int newCount = _counterModel.count + 1;
    // Update the internal state with the new counter value
    _counterModel = CounterModel(count: newCount);
    // Notify listeners of the change in state
    notifyListeners();
  }

  // Method to decrement the counter value
  void decrementCounter() {
    // Calculate the new counter value
    int newCount = _counterModel.count - 1;
    // Update the internal state with the new counter value
    _counterModel = CounterModel(count: newCount);
    // Notify listeners of the change in state
    notifyListeners();
  }
}
