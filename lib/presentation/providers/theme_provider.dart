//Estado => idDarckModeProvider = boolean

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/theme/app_theme.dart';

final isDarkmodeProvider = StateProvider((ref) => false);

final colorListProvider = Provider((ref) => colorList);
