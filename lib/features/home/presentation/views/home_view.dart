import 'package:flutter/material.dart';
import 'package:hotels/constants.dart';
import 'package:hotels/features/home/presentation/views/widgets/search_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColr,
        centerTitle: true,
        title: const Text(
          'Hotels Booking',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      backgroundColor: const Color.fromARGB(26, 225, 183, 183),
      body: const SafeArea(child: HomeViewBody()),
    );
  }
}

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: kPrimaryColr,
            image: DecorationImage(
                image: AssetImage('assets/images/2.jpg'), fit: BoxFit.cover),
          ),
          height: height / 2.5,
          width: width,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                SearchSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
