import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hotels/constants.dart';
import 'package:hotels/features/home/presentation/manger/destination_search/destination_search_cubit.dart';

class DestinationTextFormField extends StatefulWidget {
  const DestinationTextFormField({super.key});

  @override
  State<DestinationTextFormField> createState() =>
      _DestinationTextFormFieldState();
}

class _DestinationTextFormFieldState extends State<DestinationTextFormField> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Enter destination',
        suffixIcon: IconButton(
          onPressed: () {
            controller.clear();
          },
          icon: const Icon(
            Icons.clear_sharp,
          ),
        ),
        prefixIcon: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3, color: kPrimaryColor),
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3, color: kPrimaryColor),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      controller: controller,
      onFieldSubmitted: (value) {
        BlocProvider.of<DestinationSearchCubit>(context)
            .getDestination(cityName: value);
      },
    
      style: const TextStyle(
        color: Colors.black,
      ),
    );
  }
}
