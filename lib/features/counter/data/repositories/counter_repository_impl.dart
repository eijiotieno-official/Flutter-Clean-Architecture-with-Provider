/// Import necessary dependencies for the [CounterRepository] implementation
import 'package:clean_architecture/features/counter/data/datasources/counter_datasource.dart';
import 'package:clean_architecture/features/counter/data/models/counter_model.dart';
import 'package:clean_architecture/features/counter/domain/repositories/counter_repository.dart';

/// Implement the fetching of data from the data source here
class CounterRepositoryImpl implements CounterRepository {
  /// Declare a final variable to hold the [CounterDataSource] instance
  final CounterDataSource counterDataSource;

  /// Constructor for CounterRepositoryImpl, taking [CounterDataSource] as a parameter
  CounterRepositoryImpl(this.counterDataSource);

  /// Override the [getCounter] method defined in the [CounterRepository] interface
  @override
  CounterModel getCounter() {
    /// Delegate the responsibility of fetching the counter to the injected [CounterDataSource]
    return counterDataSource.getCounter();
  }
}
