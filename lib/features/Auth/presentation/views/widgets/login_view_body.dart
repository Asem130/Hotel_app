import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hotels/core/utils/app_router.dart';
import 'package:hotels/core/widgets/custom_text_button.dart';
import 'package:hotels/core/utils/styles.dart';
import 'package:hotels/core/widgets/custom_text_field.dart';
import 'package:hotels/features/Auth/presentation/manger/login_cubit/login_cubit.dart';
import 'package:hotels/features/Auth/presentation/manger/login_cubit/login_state.dart';
import 'package:hotels/features/Auth/presentation/views/widgets/google_facebook_icon.dart';
import 'package:hotels/features/Auth/presentation/views/widgets/sperator.dart';
import 'package:hotels/features/home/presentation/views/home_view.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();

  String? email;

  String? passward;

  bool isLoading = false;

  TextEditingController emailController = TextEditingController();

  TextEditingController passwardController = TextEditingController();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        if (state is LoginLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is LoginSuccsess) {
          return const HomeView();
        } else if (state is LoginFaliare) {
          return const Text('dataaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');
        } else {
          return Form(
            autovalidateMode: autovalidateMode,
            key: formKey,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(206, 51, 118, 1),
                        Color.fromRGBO(179, 55, 140, 1),
                        Color.fromRGBO(90, 39, 179, 1),
                        Color.fromRGBO(70, 15, 107, 1)
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/residential.png',
                        width: 150,
                        height: 300,
                        color: const Color.fromARGB(255, 195, 171, 204),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Column(
                          children: [
                            CustomTextField(
                              hintText: 'Email',
                              suffixIcon: const Icon(
                                Icons.email,
                                color: Color.fromRGBO(117, 55, 159, 1),
                              ),
                              onChanged: (value) {
                                email = value;
                              },
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            CustomTextField(
                              hintText: 'Passward',
                              suffixIcon: const Icon(
                                Icons.remove_red_eye,
                                color: Color.fromRGBO(117, 55, 159, 1),
                              ),
                              onChanged: (value) {
                                passward = value;
                              },
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            CustomTextButton(
                              color: const Color.fromRGBO(117, 55, 159, 1),
                              width: MediaQuery.of(context).size.width / 1.5,
                              onTap: () {
                                if (formKey.currentState!.validate()) {
                                  BlocProvider.of<LoginCubit>(context)
                                      .userLogin(
                                          email: email!, passward: passward!);
                                } else {
                                  setState(() {
                                    autovalidateMode = AutovalidateMode.always;
                                  });
                                }
                              },
                              text: 'Sign in',
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            const Seperator(),
                            const SizedBox(
                              height: 30,
                            ),
                            const SignInWithGooleAndFaceBook(),
                            const SizedBox(
                              height: 30,
                            ),
                            TextButton(
                              onPressed: () {
                                GoRouter.of(context).push(AppRouter.kRigester);
                              },
                              child: Text(
                                'Sign up',
                                style: Styles.textStyle18
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
