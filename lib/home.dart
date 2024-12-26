import 'package:app/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () => context.read<CounterBloc>().add(Increment()),child: const Icon(Icons.add),),
          const SizedBox(height: 10,),
          FloatingActionButton(onPressed: () => context.read<CounterBloc>().add(Decrement()),child: const Icon(Icons.remove),),
        ],
      ),
      body: BlocBuilder<CounterBloc,int>(builder: (context,state){
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const Text('You have pushed the button this many times:'),
              Text('$state',style:const TextStyle(fontSize: 30)),
            ],
          ),
        );
      }),
    );
  }
}