/// Import necessary dependecies for the [CounterRepositoryImpl] file

import 'package:clean_architecture/features/counter/data/datasources/counter_datasource.dart';
import 'package:clean_architecture/features/counter/data/models/counter_model.dart';
import 'package:clean_architecture/features/counter/domain/repositories/counter_repository.dart';

/// Implemet the fetching of the data from the data source here
class CounterRepositoryImpl implements CounterRepository {
  /// Declare a final variable to hold the [CounterDataSource] instance
  final CounterDataSource counterDataSource;

  /// Constructor for CounterReposiotyImpl, taking [CounterDataSource] as a parameter
  CounterRepositoryImpl(this.counterDataSource);

  /// Override the [getCounter] method defined in the [CounterRepository] interface
  @override
  CounterModel getCounter() {
    /// Delegate the responsibility of the fetching the counter to the injected [CounterDataSource]
    return counterDataSource.getCounter();
  }
}
