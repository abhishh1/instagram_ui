import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  bool _isDark = true;
  bool get isDark => _isDark;

  toggleTheme() {
    _isDark = !_isDark;
    if (_isDark) {
      emit(ThemeDark());
    } else {
      emit(ThemeLight());
    }
  }
}
