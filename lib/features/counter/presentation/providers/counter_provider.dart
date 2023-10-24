// Import necessary dependecies for the CounterProvide implementation
import 'package:clean_architecture/features/counter/data/models/counter_model.dart';
import 'package:clean_architecture/features/counter/domain/entities/counter_entity.dart';
import 'package:clean_architecture/features/counter/domain/usecases/get_counter_usecase.dart';
import 'package:flutter/material.dart';

// ChangeNotifier for managing state related to the counter feature
class CounterProvider extends ChangeNotifier {
  final GetCounterUseCase getCounterUseCase;

  // Constructor for CounterProvider, injecting GetCounterUseCase
  CounterProvider(this.getCounterUseCase);

  // Initial state
  CounterEntity _counterEntity = const CounterEntity(count: 0);

  // Getter for accessing the current CounterModel
  CounterEntity get counterEntity => _counterEntity;

  // Asynchronous method to fetch the counter value
  Future<void> fetchCounter() async {
    // Execute the GetCounterUseCase to get the counter entity
    _counterEntity = getCounterUseCase.execute();
    notifyListeners();
  }

  // Method to increment the counter value
  void incrementCounter() {
    // Calculate the new counter value
    int newCount = _counterEntity.count + 1;
    // Update the initial state with the new counter value
    _counterEntity = CounterEntity(count: newCount);
    notifyListeners();
  }

  // Method to increment the counter value
  void decrementCounter() {
    // Calculate the new counter value
    int newCount = _counterEntity.count - 1;
    // Update the initial state with the new counter value
    _counterEntity = CounterEntity(count: newCount);
    notifyListeners();
  }
}
