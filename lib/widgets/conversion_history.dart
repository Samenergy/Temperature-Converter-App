import 'package:flutter/material.dart';

class ConversionHistory extends StatelessWidget {
  final List<String> conversionHistory;

  const ConversionHistory({super.key, required this.conversionHistory});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: conversionHistory.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(conversionHistory[index]),
            leading: const Icon(Icons.history),
          );
        },
      ),
    );
  }
}
