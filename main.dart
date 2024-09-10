import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  // aqui eu criei a função
  void _descrementCounter(){
    setState(() {
      _counter--;
    });
  }
  //void _multiplicarCounter(){
    //setState(() {
      //_counter = (_counter * 2);
    //});
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // Aqui serve para centralizar a frase no meio
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'O número é:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      // Aqui serve para "Estilizar os botoões". ou seja, colocar cada um no seu canto
      // Row serve para ficarem lado a lado, spaceBetween é para ter um espaço entre eles
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //widget é o "bloco de construção", ou seja, é como uma div
        // children é como um widget mais preciso, como uma div dentro de uma div e pode ter várias coisas dentro
        children: <Widget>[
          // Align serve para alinhar
          Align(
              // aqui define o alinhamento, no caso, aqui é na esquerda
              alignment: Alignment.bottomLeft,
              // child é para colocar apenas um widget, diferente do chlidren que pode colocar vários
              // Além de chamar a função que faz diminuir 1 quando aperta
              child: FloatingActionButton(onPressed: _descrementCounter,
              // tooltip é o nome que aparece quando coloca o mouse em cima
              tooltip: 'Remover 1',
              // isso é o ícone
              child: const Icon(Icons.remove),
              ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(onPressed: _incrementCounter,
            tooltip: 'Adicionar 1',
            child: const Icon(Icons.add),
            ),
          ),
        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
