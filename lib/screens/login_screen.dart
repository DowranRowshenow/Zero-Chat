import 'package:flutter/material.dart';
import 'package:zero_chat/components/form_input_field.dart';
import 'package:zero_chat/components/ripple_container.dart';

import '../helpers/size_config.dart';
import '../helpers/constants.dart' as constants;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: constants.themeManager.bgColor(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 320,
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "SIGN IN.",
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 20),
                  const FormInputField(
                    hint: "Email:",
                    textInputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 10),
                  const FormInputField(
                    hint: "Password:",
                    textInputType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(height: 15),
                  RippleContainer(
                    padding: const EdgeInsets.all(10),
                    color: const Color.fromARGB(255, 244, 75, 151),
                    borderRadius: constants.inputBorderRadius,
                    onTap: () {
                      constants.navigate
                          .changeScreen(context, constants.ScreenState.home);
                    },
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
