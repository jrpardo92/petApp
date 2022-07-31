import 'package:pet_app/providers/ui_provider.dart';
import 'package:pet_app/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/theme/app_theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: AppRouter.initialRoute,
        routes: AppRouter.routes,
        theme: AppTheme.ligthTheme,
      ),
    );
  }
}
