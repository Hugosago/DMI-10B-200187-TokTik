import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tok_tik_200187/config/app_theme.dart';
import 'package:tok_tik_200187/config/presentation/providers/discover_provider.dart';
import 'package:tok_tik_200187/config/presentation/screens/discover_screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => DiscoverProvider())],
      child: MaterialApp(
        title: 'TokTik 210077',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreens(),
      ),
    );
  }
}