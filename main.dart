import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit.dart';
import 'api_survices.dart';
import 'articles_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ArticleCubit(ApiService()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const ArticlesScreen(),
      ),
    );
  }
}
