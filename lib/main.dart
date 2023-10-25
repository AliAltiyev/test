import 'package:codeunion/application.dart';
import 'package:flutter/material.dart';
import 'package:home/home_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initCore();
  await initData();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<HomeBloc>(
        create: (BuildContext context) => HomeBloc(
          fetchFeaturedNewsUseCase: getIt<FetchFeaturedNewsUseCase>(),
        ),child: const HomeScreen(),
      ),
    );
  }
}
