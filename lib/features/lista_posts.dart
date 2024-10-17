import 'package:flutter/material.dart';

class ListaPosts extends StatefulWidget {
  const ListaPosts({super.key});

  @override
  State<ListaPosts> createState() => _ListaPostsState();
}

class _ListaPostsState extends State<ListaPosts> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

        ),
        body: SingleChildScrollView(
          child: ListView.builder(
            itemBuilder: (context, index) {
              
            },),
        ),
      ),
    );
  }
}