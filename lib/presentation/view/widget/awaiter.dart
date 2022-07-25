import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ordering/presentation/view/plug/element.dart';
import 'package:food_ordering/presentation/view_model/awaiter.dart';

class Awaiter<T extends AwaitingCubit> extends StatelessWidget {
  const Awaiter({
    required this.create,
    required this.builder,
    Key? key,
  }) : super(key: key);

  final T Function(BuildContext) create;
  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: create,
      child: BlocBuilder<T, WaitingState>(
        builder: (context, waiting) {
          switch (waiting) {
            case WaitingState.processing:
              return const ElementPlug();
            case WaitingState.ready:
              return builder(context);
            default:
              throw Exception();
          }
        },
      ),
    );
  }
}
