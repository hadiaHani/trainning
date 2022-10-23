import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_train/cubit/cubit.dart';
import 'package:login_train/cubit/state.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterState>(
        listener: (context, state) {
          if (state is CounterPlusState) {
            print(" Plus State ${state.counter}");
          }
          if (state is CounterMinusState) {
            print(" Minus State ${state.counter}");
          }
        },
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            title: const Text("Count"),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      CounterCubit.get(context).minus();
                    },
                    child: const Text("MINUS")),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "${CounterCubit.get(context).counter}",
                    style: const TextStyle(
                        fontSize: 90, fontWeight: FontWeight.w900),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      CounterCubit.get(context).plus();
                    },
                    child: const Text("PLUS")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
