import 'package:bdti/screens/lista/components/dialog.dart';

import 'package:bdti/screens/lista/store/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/lista/lista.screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Controller>(
          create: (_) => Controller(),
        )
      ],
      child: MaterialApp(
        title: 'BDTi',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);
    return Scaffold(
      body: Lista(),
      appBar: AppBar(title: Text('BDTi')),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Adicionar novo nome',
        onPressed: () {
          abrirModal(context, controller);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
