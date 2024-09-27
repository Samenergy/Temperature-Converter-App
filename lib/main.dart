import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(TemperatureConverterApp());
}

class TemperatureConverterApp extends StatelessWidget {
  const TemperatureConverterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Temperature Converter',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Roboto',
      ),
      home: TemperatureConverterScreen(),
    );
  }
}

class TemperatureConverterScreen extends StatefulWidget {
  const TemperatureConverterScreen({super.key});

  @override
  _TemperatureConverterScreenState createState() =>
      _TemperatureConverterScreenState();
}

class _TemperatureConverterScreenState
    extends State<TemperatureConverterScreen> {
  String _inputValue = '';
  String _convertedValue = '0';
  bool _isFahrenheit = true;
  final List<String> _conversionHistory = []; // Conversion history log

  // Method to convert temperature
  void _convertTemperature() {
    try {
      double input = double.parse(_inputValue);
      setState(() {
        if (_isFahrenheit) {
          // Fahrenheit to Celsius
          _convertedValue = ((input - 32) * 5 / 9).toStringAsFixed(2);
          _conversionHistory.insert(
              0, 'Fahrenheit to Celsius: $input => $_convertedValue');
        } else {
          // Celsius to Fahrenheit
          _convertedValue = ((input * 9 / 5) + 32).toStringAsFixed(2);
          _conversionHistory.insert(
              0, 'Celsius to Fahrenheit: $input => $_convertedValue');
        }
      });
    } catch (e) {
      setState(() {
        _convertedValue = 'Invalid Input';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.redAccent,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      _isFahrenheit ? 'FAHRENHEIT' : 'CELSIUS',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Input TextField
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _inputValue = value;
                          });
                        },
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          hintText: 'Enter Value',
                          hintStyle: TextStyle(color: Colors.white54),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _convertTemperature,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.redAccent,
                      ),
                      child: const Text(
                        'Convert',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      _isFahrenheit ? 'CELSIUS' : 'FAHRENHEIT',
                      style: const TextStyle(
                        color: Colors.redAccent,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _convertedValue,
                      style: const TextStyle(
                        color: Colors.redAccent,
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _isFahrenheit = true;
                        _convertTemperature();
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          _isFahrenheit ? Colors.redAccent : Colors.grey,
                    ),
                    child: const Text(
                      'Fahrenheit',
                      style: TextStyle(
                        fontSize: 15, // Increase font size
                        fontWeight: FontWeight.bold, // Bold text
                        color: Colors.white, // Blue color
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _isFahrenheit = false;
                        _convertTemperature();
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          !_isFahrenheit ? Colors.redAccent : Colors.grey,
                    ),
                    child: const Text('Celsius',
                    style: TextStyle(
                        fontSize: 15, // Increase font size
                        fontWeight: FontWeight.bold, // Bold text
                        color: Colors.white, // Blue color
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Conversion History',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            // Display conversion history
            Container(
              height: 200,
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: _conversionHistory.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_conversionHistory[index]),
                    leading: const Icon(Icons.history, color: Colors.redAccent),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
