/// Import the [CounterEntity] class for use in this file
import 'package:clean_architecture/features/counter/domain/entities/counter_entity.dart';

/// Abstract class defining the contract for [CounterRepository] in the domain layer
abstract class CounterRepository {
  // Abstract method to get the counter entity
  CounterEntity getCounter();
}
