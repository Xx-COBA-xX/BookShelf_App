// ignore_for_file: must_be_immutable, unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:my_library_app/constants/colos.dart';
import 'package:my_library_app/cubits/auth_cubit/login_cubit/login_cubit.dart';
import 'package:my_library_app/screens/home/home_screen.dart';
import '../sign up/sign_up_screen.dart';
import '../widgets/build_social_media_buttons.dart';
import '../widgets/build_text_form_filed.dart';
import '../widgets/custom_button.dart';
import '../widgets/build_logo_and_title.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String email;

  late String password;

  final GlobalKey<FormState> _key = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginLoading) {
          isLoading = true;
        } else if (state is LoginSuccess) {
          isLoading = false;
          Get.to( HomeScreen());
        } else if (state is LoginFailuer) {
          Get.snackbar("error", state.errMassage, colorText: white,backgroundColor: Colors.red);
        }
      },
      child: SafeArea(
          child: Scaffold(
        body: ModalProgressHUD(
          inAsyncCall: isLoading,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const BuildLogoAndTitle(
                    title: "Let’s sign you in.",
                    subtitle: "Welcome back, You’ve been missed.",
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Form(
                    key: _key,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 6,
                        ),
                        BuildTextFormFiled(
                          autovalidateMode: autovalidateMode,
                          hint: "Enter your email",
                          onSaved: (value) {
                            email = value!;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "this field is required";
                            } else if (!value.contains("@gmail.com")) {
                              return "please enter a valid email address";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        BuildTextFormFiled(
                          autovalidateMode: autovalidateMode,
                          hint: "Enter your password",
                          onSaved: (value) {
                            password = value!;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "this field is required";
                            } else if (value.length < 4) {
                              return "the passowrd cannot be less than 4 characters";
                            } else if (value.length > 40) {
                              return "the passowrd cannot be more than 40 characters";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    child: Text(
                      "Forgot Password ? ",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: kAuthorTextColor),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomButton(
                    buttonLabel: "Sign In",
                    onPressed: () async {
                      if (_key.currentState!.validate()) {
                        _key.currentState!.save();
                        BlocProvider.of<LoginCubit>(context)
                            .login(email: email, password: password);
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  BuildSocialMediaButtons(
                    onPressed: () {
                      Get.to(
                        SignUpScreen(),
                      );
                    },
                    dontHaveAccountLabel: "don't have an account ?",
                    socialMediaLabel: "Or continue with",
                    textButton: " Register now",
                  )
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
