// Import necessary dependencies for the CounterPage implementation
import 'package:clean_architecture/features/counter/data/datasources/counter_datasource.dart';
import 'package:clean_architecture/features/counter/data/repositories/counter_repository_impl.dart';
import 'package:clean_architecture/features/counter/domain/usecases/get_counter_usecase.dart';
import 'package:clean_architecture/features/counter/presentation/providers/counter_provider.dart';
import 'package:clean_architecture/features/counter/presentation/widgets/actions_widget.dart';
import 'package:clean_architecture/features/counter/presentation/widgets/counter_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Widget representing the Counter page
class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      /// Create a [CounterProvider] and inject dependencies
      create: (context) => CounterProvider(
        GetCounterUseCase(
          CounterRepositoryImpl(
            CounterDataSource(),
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Clean Architecture with Provider"),
          centerTitle: true,
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Display the [CounterWidget]
            CounterWidget(),

            /// Display the [ActionsWidget]
            ActionsWidget(),
          ],
        ),
      ),
    );
  }
}
