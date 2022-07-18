import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_theme_event.dart';
part 'app_theme_state.dart';

class ThemeBloc extends Bloc<AppThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.initial()) {
    on<ChangeThemeEvent>((event, emit) {
      if (event.randInt == true) {
        emit(state.copyWith(appTheme: AppTheme.light));
      } else {
        emit(state.copyWith(appTheme: AppTheme.dark));
      }
    });
  }
}
