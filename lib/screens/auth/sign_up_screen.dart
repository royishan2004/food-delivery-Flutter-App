import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodly_ui/screens/auth/sign_in_screen.dart';

import '../../components/buttons/socal_button.dart';
import '../../components/welcome_text.dart';
import '../../constants.dart';
import '../signUp/components/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WelcomeText(
                title: "Create Account",
                text: "Enter your Name, Email and Password for sign up.",
              ),

              // Sign Up Form
              const SignUpForm(),
              const SizedBox(height: defaultPadding),

              // Already have account
              Center(
                child: Text.rich(
                  TextSpan(
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontWeight: FontWeight.w500),
                    text: "Already have account? ",
                    children: <TextSpan>[
                      TextSpan(
                        text: "Sign In",
                        style: const TextStyle(color: primaryColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignInScreen(),
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: defaultPadding),
              Center(
                child: Text(
                  "By Signing up you agree to our Terms, Conditions & Privacy Policy.",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              const SizedBox(height: defaultPadding),


              // Facebook

            ],
          ),
        ),
      ),
    );
  }
}
