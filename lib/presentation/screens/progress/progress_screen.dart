import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const String name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ProgressView();
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Progress Indicators'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40),
            const Text('Circular progress indicator'),
            const SizedBox(height: 20),
            CircularProgressIndicator(
              strokeWidth: 2,
              backgroundColor: Colors.black45,
              color: colors.primary,
            ),
            const SizedBox(height: 40),
            const Text('Circular & lineal progress indicator controlado'),
            const SizedBox(height: 20),
            const _ControlledProgressIndicator(),
            const SizedBox(height: 40),
            const Text('Refresh progress indicator'),
            const SizedBox(height: 20),
            RefreshProgressIndicator(
              backgroundColor: colors.primary,
              color: Colors.white,
              strokeWidth: 2,
              elevation: 2,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return StreamBuilder<double>(
        stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
          return ((value * 2) % 100) / 100; // 0.0 - 1.0
        }).takeWhile((value) => value <= 1.0),
        builder: (context, snapshot) {
          final progressValue = snapshot.data ?? 0.0;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  value: progressValue,
                  strokeWidth: 2,
                  backgroundColor: Colors.black12,
                  color: colors.primary,
                ),
                const SizedBox(width: 25),
                Expanded(
                  child: LinearProgressIndicator(
                    value: progressValue,
                    color: colors.primary,
                  ),
                )
              ],
            ),
          );
        });
  }
}
