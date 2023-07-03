// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:my_library_app/cubits/auth_cubit/signup_cubit/sign_up_cubit.dart';
import 'package:my_library_app/screens/auth/login/login_screen.dart';

import '../../../constants/colos.dart';
import '../../../cubits/auth_cubit/login_cubit/login_cubit.dart';
import '../../home/home_screen.dart';
import '../widgets/build_logo_and_title.dart';
import '../widgets/build_social_media_buttons.dart';
import '../widgets/build_text_form_filed.dart';
import '../widgets/custom_button.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? email;

  String? password;

  String? username;

  final GlobalKey<FormState> _key = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocListener<SignUpCubit, SignUpState>(
          listener: (context, state) {
            {
              if (state is SignUpLoading) {
                isLoading = true;
                setState(() {});
              } else if (state is SignUpSuccess) {
                isLoading = false;
                setState(() {});
                Get.to( HomeScreen());
              } else if (state is SignUpFailuer) {
                isLoading = false;
                setState(() {
                  
                });
                Get.snackbar("error", state.errMassage,
                    colorText: white, backgroundColor: Colors.red);
              }
            }
          },
          child: ModalProgressHUD(
            inAsyncCall: isLoading,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const BuildLogoAndTitle(
                      title: "Create an account.",
                      subtitle: "Welcome to Bookshelf Library.",
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
                          BuildTextFormFiled(
                            autovalidateMode: autovalidateMode,
                            hint: "Enter your username..",
                            onSaved: (value) {
                              username = value!;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "this field is required";
                              } else if (value.length > 100) {
                                return "the username is too long";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 16,
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
                    CustomButton(
                      buttonLabel: "Sign Up",
                      onPressed: () {
                        if (_key.currentState!.validate()) {
                          _key.currentState!.save();
                          BlocProvider.of<SignUpCubit>(context)
                              .signUp(email: email!, password: password!);
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
                          BlocProvider(
                            create: (context) => LoginCubit(),
                            child: LoginScreen(),
                          ),
                        );
                      },
                      dontHaveAccountLabel: "You have an account ?",
                      socialMediaLabel: "Or Register with",
                      textButton: " Sign in",
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
