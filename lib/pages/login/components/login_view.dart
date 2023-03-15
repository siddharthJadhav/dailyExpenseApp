import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../shared/utils/common_functions.dart';
import '../../../shared/utils/message_type.dart';
import '../../../shared/view_modal/widget_callback.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

final ButtonStyle style = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 14),
    padding: const EdgeInsets.all(20),
    elevation: 6,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0),
    ),
    // ignore: deprecated_member_use
    primary: const Color(0xFF575ce5));

class _LoginViewState extends State<LoginView> implements WidgetCallback {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isOTPSending = false;

  @override
  initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // loginProvider = Provider.of<LoginProvider>(context, listen: false);

      initCallbackForViewModel();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            color: Colors.white,
            child: SafeArea(
              top: true,
              left: false,
              right: false,
              bottom: false,
              child: ListView(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 30,
                    child: Center(
                      child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Center(
                                child: Image(
                                  height: 60,
                                  image: AssetImage(
                                      'assets/images/calling_logo.png'),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 20, top: 30),
                                child: Text(
                                  'Log in',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.black87.withOpacity(.7),
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding: const EdgeInsets.only(
                                        left: 25,
                                        right: 25,
                                        bottom: 10,
                                        top: 30),
                                    child: TextFormField(
                                      controller: userNameController,
                                      onChanged: (String value) {
                                        setState(() {
                                        });
                                      },
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Username cannot be empty";
                                        }
                                        return null;
                                      },
                                      keyboardType: TextInputType.text,
                                      cursorColor: const Color(0xbb00004d),
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: const Color(0xFFf7f7fd),
                                          floatingLabelBehavior:
                                              FloatingLabelBehavior.auto,
                                          border: const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            ),
                                            borderSide: BorderSide(
                                                color: Color(0xAD767676),
                                                width: 1.0),
                                          ),
                                          enabledBorder:
                                              const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            ),
                                            borderSide: BorderSide(
                                                color: Color(0xAD767676),
                                                width: 1.0),
                                          ),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            borderSide: BorderSide(
                                                color: Color(0xAD767676),
                                                width: 1.0),
                                          ),
                                          labelStyle: const TextStyle(
                                              backgroundColor:
                                                  Color(0xFFf7f7fd),
                                              fontSize: 12,
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.3),
                                              fontWeight: FontWeight.bold),
                                          contentPadding: const EdgeInsets.only(
                                              left: 15, right: 10),
                                          floatingLabelStyle: const TextStyle(
                                              fontSize: 16,
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.3),
                                              fontWeight: FontWeight.bold),
                                          label: Row(
                                            children: const [
                                              Text(
                                                'Username',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Nunito',
                                                ),
                                              ),
                                              // Text(
                                              //   '*',
                                              //   style: TextStyle(
                                              //       fontWeight:
                                              //           FontWeight.w600,
                                              //       fontFamily: 'Nunito',
                                              //       color: Colors.redAccent),
                                              // )
                                            ],
                                          )),
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                        height: 1.5,
                                        fontFamily: 'Lato',
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding: const EdgeInsets.only(
                                        left: 25,
                                        right: 25,
                                        bottom: 20,
                                        top: 10),
                                    child: TextFormField(
                                      obscureText: true,
                                      controller: passwordController,
                                      onChanged: (String value) {
                                        setState(() {
                                        });
                                      },
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Password cannot be empty";
                                        }
                                        return null;
                                      },
                                      keyboardType: TextInputType.text,
                                      cursorColor: const Color(0xbb00004d),
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: const Color(0xFFf7f7fd),
                                          floatingLabelBehavior:
                                              FloatingLabelBehavior.auto,
                                          border: const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            ),
                                            borderSide: BorderSide(
                                                color: Color(0xAD767676),
                                                width: 1.0),
                                          ),
                                          enabledBorder:
                                              const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            ),
                                            borderSide: BorderSide(
                                                color: Color(0xAD767676),
                                                width: 1.0),
                                          ),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            borderSide: BorderSide(
                                                color: Color(0xAD767676),
                                                width: 1.0),
                                          ),
                                          labelStyle: const TextStyle(
                                              backgroundColor:
                                                  Color(0xFFf7f7fd),
                                              fontSize: 12,
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.3),
                                              fontWeight: FontWeight.bold),
                                          contentPadding: const EdgeInsets.only(
                                              left: 15, right: 10),
                                          floatingLabelStyle: const TextStyle(
                                              fontSize: 16,
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.3),
                                              fontWeight: FontWeight.bold),
                                          label: Row(
                                            children: const [
                                              Text(
                                                'Password',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Nunito',
                                                ),
                                              ),
                                              // Text(
                                              //   '*',
                                              //   style: TextStyle(
                                              //       fontWeight:
                                              //           FontWeight.w600,
                                              //       fontFamily: 'Nunito',
                                              //       color: Colors.redAccent),
                                              // )
                                            ],
                                          )),
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                        height: 1.5,
                                        fontFamily: 'Lato',
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              (isOTPSending
                                  ? Container(
                                      margin: const EdgeInsets.only(
                                          top: 0,
                                          bottom: 0,
                                          left: 25,
                                          right: 25),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            textStyle:
                                                const TextStyle(fontSize: 16),
                                            padding: const EdgeInsets.only(
                                                top: 20,
                                                bottom: 20,
                                                left: 20,
                                                right: 20),
                                            elevation: 6,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            primary: const Color(0xbb00004d)),
                                        onPressed: () {},
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 5),
                                              child: const SizedBox(
                                                  height: 18,
                                                  width: 18,
                                                  child:
                                                      CircularProgressIndicator(
                                                    strokeWidth: 2.0,
                                                    color: Colors.white,
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  : Container(
                                      margin: const EdgeInsets.only(
                                          top: 0,
                                          bottom: 0,
                                          left: 25,
                                          right: 25),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            textStyle:
                                                const TextStyle(fontSize: 16),
                                            padding: const EdgeInsets.only(
                                                top: 20,
                                                bottom: 20,
                                                left: 20,
                                                right: 20),
                                            elevation: 6,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            primary: const Color(0xbb00004d)),
                                        onPressed: userNameController
                                                    .text.isNotEmpty &&
                                                passwordController
                                                    .text.isNotEmpty
                                            ? () {
                                                // Navigator.pushAndRemoveUntil(
                                                //     context,
                                                //     CupertinoPageRoute(
                                                //         builder: (context) =>
                                                //             const HomeView()),
                                                //     (route) => false);
                                              }
                                            : null,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            // const Icon(Icons.message_rounded,
                                            //     size: 16),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 5),
                                              child: const Text('Login',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontFamily: 'Nunito',
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 20, bottom: 20),
                                    child: const Text(
                                      'V 1.0',
                                      style: TextStyle(
                                          fontFamily: 'Lato',
                                          color: Colors.black26),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  initCallbackForViewModel() {
    // loginProvider?.setWidgetCallback(this);
  }

  @override
  showToast(String message, MessageType messageType) {
    showSnackbar(context, message, messageType);
  }

  @override
  navigateScreen(String componentName, Map<String, dynamic> params) {
    redirect(context, componentName, params);
  }
}
