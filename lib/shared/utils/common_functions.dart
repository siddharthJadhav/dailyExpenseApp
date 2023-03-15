import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'message_type.dart';

// Initialize secure storage
const storage = FlutterSecureStorage();

Future showSnackbar(
    BuildContext context, String message, MessageType messageType) async {
  Color bgColor;
  Color textColor;
  String bgColorStr = 'green';
  switch (messageType) {
    case MessageType.error:
      bgColor = Colors.redAccent;
      textColor = Colors.white;
      bgColorStr = 'red';
      break;
    case MessageType.warning:
      bgColor = Colors.yellow;
      textColor = Colors.black;
      bgColorStr = 'red';
      break;
    case MessageType.success:
      bgColor = const Color(0xff5bb28e);
      textColor = Colors.white;
      bgColorStr = 'green';
      break;
    case MessageType.info:
    default:
      bgColor = Colors.blue;
      textColor = Colors.white;
      bgColorStr = 'blue';
      break;
  }

  if (MediaQuery.of(context).size.width < 1024) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      padding: const EdgeInsets.all(20),
      content: Text(
        message,
        style: TextStyle(color: textColor),
      ),
      duration: const Duration(seconds: 5),
      backgroundColor: bgColor,
    ));
  } else {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 10,
        textColor: Colors.white,
        fontSize: 16.0,
        webShowClose: true);
  }
}

// Nevigate to login page
void redirect(BuildContext context, String componentName,
    Map<String, dynamic> params) async {
  // debugConsole('called redirect componentName: $componentName');
  // // ignore: await_only_futures
  // LoginUserDataProvider loginUserDataProvider =
  //     Provider.of<LoginUserDataProvider>(context, listen: false);

  // if (componentName == 'redirectToLogin') {
  //   storage.delete(key: 'loginUserData').then((value) => {
  //         loginUserDataProvider.setLoginUserData(null),
  //         loginUserDataProvider.setUserData(null)
  //       });
  // }
  // Navigator.pushNamedAndRemoveUntil(
  //     context, LoginOption.route, (Route<dynamic> route) => false);
}

// Override print function
void debugConsole(dynamic msg) {
  // ignore: avoid_print
  print(msg);
}

Future<void> hideCurrentSnackbar(BuildContext context) async {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
}

// Show confirmation dialog box for web
void showConfirmationDialogBoxForWeb(BuildContext context, String msg,
    String okBtnText, String cancelBtnText, Function successCallBack) {
  void successFun() {
    successCallBack();
  }

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Container(),
        content: Text(msg),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  cancelBtnText,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nunito',
                      color: Colors.grey),
                ),
              ),
              TextButton(
                onPressed: successFun,
                child: Text(okBtnText),
              ),
            ],
          ),
        ],
      );
    },
  );
}

InputDecoration customInputDecoration(
    {IconData? prefixIcon,
    required String labelText,
    //String? errorText,
    String? hintText,
    Function()? onClearClick,
    required bool isRequired,
    bool? isEnabled,
    //bool? isDropDown,
    bool? hasSetMaxLineProperty}) {
  return InputDecoration(
      prefixIcon: Container(
        padding: (prefixIcon != null)
            ? const EdgeInsets.only(left: 15, right: 10)
            : const EdgeInsets.only(),
        child: Icon(
          prefixIcon,
          size: 16,
        ),
      ),
      prefixIconConstraints: (onClearClick != null)
          ? const BoxConstraints(
              minHeight: 30,
              minWidth: 30,
            )
          : const BoxConstraints(),
      suffixIcon: (onClearClick != null)
          ? InkWell(
              onTap: () {
                onClearClick();
              },
              child: Container(
                padding: const EdgeInsets.only(left: 15, right: 10),
                child: const Icon(
                  Icons.clear,
                  size: 20,
                ),
              ),
            )
          : null,
      enabled: isEnabled ?? true,
      filled: true,
      fillColor: (isEnabled == false)
          ? const Color.fromARGB(255, 244, 244, 248)
          : const Color(0xFFffffff),
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        borderSide: BorderSide(color: Color(0xFFeeeeee), width: 1.0),
      ),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        borderSide: BorderSide(color: Color(0xFFeeeeee), width: 1.0),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        borderSide: BorderSide(color: Color(0xFFeeeeee), width: 1.0),
      ),
      labelStyle: const TextStyle(
          fontSize: 13,
          color: Color.fromRGBO(0, 0, 0, 0.4),
          fontWeight: FontWeight.w500),
      //contentPadding: const EdgeInsets.only(left: 15, right: 10),
      contentPadding: EdgeInsets.only(
        left: 15,
        right: 10,
        top: (hasSetMaxLineProperty == true) ? 8 : 0,
        bottom: (hasSetMaxLineProperty == true) ? 8 : 0,
      ),
      floatingLabelStyle: const TextStyle(
          fontSize: 16,
          color: Color.fromRGBO(0, 0, 0, 0.4),
          fontWeight: FontWeight.w500),
      label: Row(
        children: [
          Text(
            labelText,
            style: const TextStyle(
                fontWeight: FontWeight.w600, fontFamily: 'Nunito'),
          ),
          if (isRequired == true)
            const Text('*',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: "Nunito",
                    color: Colors.redAccent))
        ],
      ),
      errorMaxLines: 3,
      hintText: hintText);
}

ThemeData get appTheme {
  return ThemeData(
      primaryColor: AppColors().primaryColor,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Montserrat',
      textTheme: ThemeData.dark().textTheme);
}

class AppColors {
  static final AppColors _instance = AppColors.internal();

  AppColors.internal();

  factory AppColors() => _instance;
  Color primaryColor = const Color(0xcc00004d);
  Color swatchColor = const Color(0xcc00004d);
}
