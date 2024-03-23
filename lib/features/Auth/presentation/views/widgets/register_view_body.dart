import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hotels/core/utils/app_router.dart';
import 'package:hotels/core/utils/components/custom_text_Button.dart';
import 'package:hotels/core/utils/components/custom_text_field.dart';
import 'package:hotels/core/utils/styles.dart';
import 'package:hotels/features/Auth/presentation/manger/register_cubit/register_cubit.dart';
import 'package:hotels/features/Auth/presentation/manger/register_cubit/register_state.dart';
import 'package:hotels/features/Auth/presentation/views/widgets/background_widget.dart';
import 'package:hotels/features/Auth/presentation/views/widgets/google_facebook_icon.dart';
import 'package:hotels/features/Auth/presentation/views/widgets/sperator.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? email;

  String? passward;

  bool isLoading = false;

  TextEditingController emailController = TextEditingController();

  TextEditingController passwardController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterLoading) {
          isLoading = true;
        } else if (state is RegisterSuccsess) {
          isLoading = false;
          GoRouter.of(context).go(AppRouter.kLogin);
        } else if (state is RegisterFaliare) {
          isLoading = false;
        }
      },
      builder: (context, state) {
        return state is RegisterLoading
            ? const Center(child: CircularProgressIndicator())
            : Form(
                autovalidateMode: autovalidateMode,
                key: formKey,
                child: SingleChildScrollView(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      const RegisterBackgroundWidget(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomTextField(
                                hintText: 'Email',
                                icon: const Icon(
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
                                icon: const Icon(
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
                                onTap: () {
                                  if (formKey.currentState!.validate()) {
                                    BlocProvider.of<RegisterCubit>(context)
                                        .userRegister(
                                            email: email!, passward: passward!);
                                  } else {
                                    autovalidateMode = AutovalidateMode.always;
                                    setState(() {});
                                  }
                                },
                                text: 'Sign up',
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      GoRouter.of(context)
                                          .push(AppRouter.kLogin);
                                    },
                                    child: Text(
                                      'Sign In',
                                      style: Styles.textStyle18
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
      },
    );
  }
}
