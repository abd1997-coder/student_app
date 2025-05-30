part of 'global_button_widget.dart';

class GlobalButtonController extends ValueNotifier<Widget?> {
  GlobalButtonController() : super(null);

  void changeToLoader() {
    value =
        const CircularProgressIndicator();
    notifyListeners();
  }

  void changeContent(Widget? widget) {
    value = widget;
    notifyListeners();
  }
}
