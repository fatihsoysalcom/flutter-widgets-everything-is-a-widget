import 'package:flutter/material.dart';

void main() {
  // The runApp function takes a Widget as its argument, making the entire application a widget.
  runApp(const MyApp());
}

// MyApp is a StatelessWidget, a type of widget that describes part of the user interface
// which does not depend on anything other than the configuration information (parameters)
// provided to the widget itself and the BuildContext in which the widget is inflated.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp is a convenience widget that wraps a number of widgets that are
    // commonly required for Material Design applications.
    return MaterialApp(
      title: 'Flutter Widgets Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // MyHomePage is the home screen of our application, also a widget.
      home: const MyHomePage(title: 'Flutter Widget Journey'),
    );
  }
}

// MyHomePage is a StatefulWidget, a widget that has mutable state.
// This means its appearance can change over time based on user interaction or other factors.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    // setState notifies the Flutter framework that the internal state of this
    // object has changed, which might require rebuilding the UI.
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold is a widget that provides a basic Material Design visual structure.
    // It's like a blank canvas for your app screen.
    return Scaffold(
      // AppBar is a widget that displays a toolbar at the top of the screen.
      appBar: AppBar(
        // Text is a widget for displaying a string of text.
        title: Text(widget.title),
      ),
      // Center is a layout widget that centers its child within itself.
      body: Center(
        // Column is a layout widget that arranges its children vertically.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Another Text widget.
            const Text(
              'You have pushed the button this many times:',
            ),
            // A Text widget displaying the dynamic counter value.
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            // SizedBox is a widget that creates a fixed size box.
            const SizedBox(height: 20),
            // ElevatedButton is a Material Design button widget.
            ElevatedButton(
              onPressed: _incrementCounter,
              // The child of the button is also a Text widget.
              child: const Text('Increment Counter'),
            ),
          ],
        ),
      ),
      // FloatingActionButton is a widget for a primary action in the app.
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        // Icon is a widget for displaying graphical icons.
        child: const Icon(Icons.add),
      ),
    );
  }
}
