// Represents the core entity in the domain layer for the counter feature
class CounterEntity {
  // Immutable field representing the count value
  final int count;

  // Const constructor enforcing immutability
  const CounterEntity({required this.count});
}
