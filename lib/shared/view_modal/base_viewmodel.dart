import 'package:flutter/material.dart';

import '../utils/message_type.dart';
import './widget_callback.dart';

abstract class BaseViewmodel extends ChangeNotifier {
  String _toastMessage = "";
  // LoadingStatus _loadingStatus = LoadingStatus.none;

  late WidgetCallback _widgetCallback;
  BaseViewmodel();

  String get toastMessage => _toastMessage;

  // LoadingStatus get loadingStatus => _loadingStatus;

  void setWidgetCallback(WidgetCallback widgetCallback) {
    _widgetCallback = widgetCallback;
  }

  void setToastMessage(String message, MessageType type) {
    _widgetCallback.showToast(message, type);
  }

  void navigateScreen(String componentName, Map<String, dynamic> params) {
    _widgetCallback.navigateScreen(componentName, params);
  }
}
