import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widgets_funcionales/config/router/app_router.dart';
import 'package:flutter_widgets_funcionales/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_funcionales/presentation/providers/theme_provider.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarkMode = ref.watch(isDarkModeProvider);
    final int selectedColor = ref.watch(selectedColorProvider);

    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: selectedColor, isDarkMode: isDarkMode)
          .getTheme(),
      title: 'Flutter Widgets',
    );
  }
}
