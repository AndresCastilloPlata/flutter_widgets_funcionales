import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widgets_funcionales/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider((ref) => false);

final colorListProvider = Provider((ref) => colorList);

final selectedColorProvider = StateProvider((ref) => 0);
