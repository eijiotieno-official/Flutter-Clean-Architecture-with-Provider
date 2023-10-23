// Import the CounterModel class for use in this file
import 'package:clean_architecture/features/counter/data/models/counter_model.dart';

// Define a class representing the data source for the counter feature
class CounterDataSource {
  // Assuming our data source returns the CounterModel instance with a count of 5
  CounterModel getCounter() {
    // Create and return a CounterModel instance with a count value of 5
    return CounterModel(count: 5);
  }
}
