import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotels/core/utils/components/custom_icon.dart';
import 'package:hotels/features/Auth/presentation/manger/login_cubit/login_cubit.dart';

class SignInWithGooleAndFaceBook extends StatelessWidget {
  const SignInWithGooleAndFaceBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIcon(
          onTap: () {
            BlocProvider.of<LoginCubit>(context).signInWithGoogle();
          },
          icon: const Icon(FontAwesomeIcons.google),
        ),
        const SizedBox(
          width: 30,
        ),
        const CustomIcon(
          icon: Icon(
            FontAwesomeIcons.facebook,
            color: Color.fromARGB(255, 36, 41, 192),
          ),
        ),
      ],
    );
  }
}
