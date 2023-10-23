// Import the CounterEntity class for use in this file
import 'package:clean_architecture/features/counter/domain/entities/counter_entity.dart';

/// [CounterModel] extends [CounterEntity] because they share the same fields
class CounterModel extends CounterEntity {
  // Constructor for CounterModel, initializing the 'count' field using super
  CounterModel({required super.count});

  /// Parse data from data sources, often in Json format, to create a custom model
  factory CounterModel.fromJson(Map<String, dynamic> map) {
    // Use the CounterModel constructor to create an instance with the 'count' field set from the map
    return CounterModel(
      count: map['count'],
    );
  }
}
