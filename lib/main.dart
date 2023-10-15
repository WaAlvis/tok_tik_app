import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tok_tik_app/config/app_theme.dart';
import 'package:tok_tik_app/presentation/providers/discover_provider.dart';

import 'presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DiscoverProvider()..loadNextPage(),
          lazy: false,
        ),
      ],
      child: MaterialApp(
        theme: AppTheme.getTheme(),
        title: 'TokTik App',
        home: const DiscoverScreen(),
      ),
    );
  }
}
