/// Import necessary dependencies for the [GetCounterUseCase] implementation
import 'package:clean_architecture/features/counter/domain/entities/counter_entity.dart';
import 'package:clean_architecture/features/counter/domain/repositories/counter_repository.dart';

// Represents the use case for getting the counter entity
class GetCounterUseCase {
  /// Declare a final variable to hold the [CounterRepository] instance
  final CounterRepository counterRepository;

  /// Constructor for [GetCounterUseCase], taking [CounterRepository] as a parameter
  GetCounterUseCase(this.counterRepository);

  /// Execute method to get the counter entity using the injected [CounterRepository]
  CounterEntity execute() {
    /// Delegate the reposibility of getting the counter entity to the injected [CounterRepository]
    return counterRepository.getCounter();
  }
}
