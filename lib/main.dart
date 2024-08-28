import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pop/core/config/theme/app_theme.dart';
import 'package:pop/peresentation/choose_mode/bloc/theme_cubit.dart';
import 'package:pop/peresentation/pages/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MultiBlocProvider(
  providers: [
    BlocProvider<ThemeCubit>(
      create: (_) => ThemeCubit(),
    ),
  ],
      child: BlocBuilder<ThemeCubit,ThemeMode>(

        builder: (context, mode) =>  MaterialApp(
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode:mode,
         debugShowCheckedModeBanner: false, // Remove this line to disable debug mode banner
          home: SplashPage(),
        ),
      ),
    );
  }
}
