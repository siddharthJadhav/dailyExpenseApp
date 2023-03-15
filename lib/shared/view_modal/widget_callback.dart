import '../utils/message_type.dart';

abstract class WidgetCallback {
  initCallbackForViewModel();
  showToast(String message,MessageType messageType);
  navigateScreen(String componentName, Map<String, dynamic> params);
}
