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
      home: const MyHomePage(title: 'Geny my Darling'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        
        title: Text(widget.title),
      ),
      body: Center(
        
        
        child: Container(
          width: 400, height: 400,
          padding: new EdgeInsets.all(5),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.red,
            elevation: 10,
            child: Column(
              children: [
                new Text('She looks extremly hot!'),
                const ListTile(
                  leading: Icon(Icons.album, size: 60),
                  title: Text(
                      'Sonu Nigam',
                      style: TextStyle(fontSize: 30.0)
                  ),
                  subtitle: Text(
                      'Best of Sonu Nigam Music.',
                      style: TextStyle(fontSize: 18.0)
                  ),
                ),
                const ListTile(
                  trailing: Icon(Icons.heart_broken, size: 50,),
                  title: Text('Farhad Dubey',style: TextStyle(fontSize: 30),),
                  subtitle: Text('I love you, Geny', style: TextStyle(fontSize: 20),),
                ),
                ButtonBar(
                  children: <Widget>[
                    ElevatedButton(
                      child: const Text('Play'),
                      onPressed: () {/* ... */},
                    ),
                    ElevatedButton(
                      child: const Text('Pause'),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ],
            ),

          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
