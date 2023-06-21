import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel3_app/cubit/app_cubit_logics.dart';
import 'package:travel3_app/cubit/app_cubits.dart';
import 'package:travel3_app/pages/navpages/detail_page.dart';
import 'package:travel3_app/pages/welcome_page.dart';
import 'package:travel3_app/services/data_services.dart';
import 'navpages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider<AppCubits>(
        create: (context)=>AppCubits(
          data: DataServices(),
        ),
        child: AppCubitLogics(),
      ),
    );
  }
}


