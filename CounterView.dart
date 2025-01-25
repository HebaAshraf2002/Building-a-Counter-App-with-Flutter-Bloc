import 'package:building_counter_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key, required String title});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: BlocConsumer<CounterCubit, int>(
          listener: (context, state) {
            if (state < 0) {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Warning'),
                  content: Text('The counter is negative!'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text('OK'),
                    ),
                  ],
                ),
              );
            }
            if (state == 10 || state == -10) {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Counter reached the limit')));
            }
          },
          builder: (context, state) {
            return Center(
              child: Text('Counter Value : $state',
                  style: TextStyle(fontSize: 24)),
            );
          },
        ),
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
              onPressed: () {
                context.read<CounterCubit>().increment();
              },
              child: Icon(Icons.add)),
          SizedBox(width: 10),
          FloatingActionButton(
              onPressed: () {
                context.read<CounterCubit>().decrement();
              },
              child: Icon(Icons.remove))
        ]));
  }
}
