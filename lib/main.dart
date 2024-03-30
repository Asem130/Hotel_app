import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels/bloc_observe.dart';
import 'package:hotels/core/utils/app_router.dart';
import 'package:hotels/features/Auth/presentation/manger/login_cubit/login_cubit.dart';
import 'package:hotels/features/Auth/presentation/manger/register_cubit/register_cubit.dart';
import 'package:hotels/features/home/presentation/manger/destination_search/destination_search_cubit.dart';
import 'package:hotels/firebase_options.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const HotelApp());
 
}

class HotelApp extends StatelessWidget {
  const HotelApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RegisterCubit(),
        ),
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => DestinationSearchCubit(),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData.light(),
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
