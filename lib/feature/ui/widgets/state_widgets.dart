import 'package:flutter/material.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class FailureBetStratList extends StatelessWidget {
  final Exception exception;
  const FailureBetStratList({Key? key, required this.exception}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(exception.toString()),
    );
  }
}


class EmptyBetStratList extends StatelessWidget {
  const EmptyBetStratList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('Strategy list is empty.'));
  }
}
