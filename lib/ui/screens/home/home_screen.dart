import 'package:blabla/ui/screens/home/view_model/home_view_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'widgets/home_content.dart';
///
/// This screen allows user to:
/// - Enter his/her ride preference and launch a search on it
/// - Or select a last entered ride preferences and launch a search on it
///
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: HomeContent(viewModel: context.watch<HomeViewModel>()),
    );
  }
}
