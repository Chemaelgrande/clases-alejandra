part of 'app_theme_bloc.dart';

abstract class AppThemeEvent {
  const AppThemeEvent();
}

class ChangeThemeEvent extends AppThemeEvent {
  final bool randInt;

  const ChangeThemeEvent({required this.randInt});
}
