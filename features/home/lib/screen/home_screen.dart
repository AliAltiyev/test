import 'package:flutter/material.dart';
import 'package:home/home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (BuildContext context, HomeState state) {
          if (state is HomeLoading) {
            return const Center(child: CircularProgressIndicator.adaptive());
          } else if (state is HomeSuccess) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: state.news.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  subtitle: const Text('sdads'),
                  leading: CircleAvatar(
                    child: Text(state.news[index].urlToImage ?? ''),
                  ),
                  title: Text(
                    state.news[index].content ?? 'empty',
                    style: const TextStyle(color: Colors.black),
                  ),
                );
              },
            );
          } else {
            return Center(
              child: Container(
                color: Colors.red,
              ),
            );
          }
        },
      ),
    );
  }
}
