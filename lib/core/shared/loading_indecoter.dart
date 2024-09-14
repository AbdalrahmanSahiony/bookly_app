import 'package:flutter/material.dart';

class LoadingIndicoter extends StatelessWidget {
  const LoadingIndicoter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
