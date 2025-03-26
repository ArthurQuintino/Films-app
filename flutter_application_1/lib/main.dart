  import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/filme.dart';
import 'dart:convert';

void main() {
  runApp(const MaterialApp(title: 'AppFilmes', home: MainApp()));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  MainAPP createState() => MainAPP();
}

class MainAPP extends State<MainApp> {
  List<Filme> filme = List.empty();
  int total = 0;
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/filmes.json');
    Iterable data = await json.decode(response);
    filme = List<Filme>.from(data.map((model) => Filme.fromJson(model)));
    total = filme.length;
    setState(() {
      filme;
      total;
    });
  }

  @override
  initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Filmes',
        home: Scaffold(
            body: Scrollbar(
                child: Center(
          child: ListView.builder(
            itemCount: total,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                         side: BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(25)),
                      color: const Color.fromARGB(255, 255, 211, 99),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(children: [
                          Text(
                            filme[index].titulo,
                            style: TextStyle(color: Colors.black, fontSize: 25 ),
                            textAlign: TextAlign.justify,
                            
                            
                          ),
                          Text(
                            filme[index].descricao,
                            style: TextStyle(color: Colors.black, fontSize: 15),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            filme[index].genero,
                            style: TextStyle(color: Colors.black, fontSize: 15),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            filme[index].ano.toString(),
                            style: TextStyle(color: Colors.black, fontSize: 15),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            filme[index].elenco.toString(),
                            style: TextStyle(color: Colors.black, fontSize: 15),
                            textAlign: TextAlign.justify,
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ))));
  }
}
