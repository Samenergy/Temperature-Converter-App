import 'package:flutter/material.dart';

class TemperatureDisplay extends StatelessWidget {
  final String fahrenheit;
  final String celsius;
  final String kelvin;

  const TemperatureDisplay({super.key, 
    required this.fahrenheit,
    required this.celsius,
    required this.kelvin,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.redAccent,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Converted Values',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Fahrenheit: $fahrenheit°F',
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            Text(
              'Celsius: $celsius°C',
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            Text(
              'Kelvin: $kelvin K',
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
