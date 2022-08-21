import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:spacex_client_app/models/launch.dart';

class LaunchDetailsPage extends StatelessWidget {
  final Launch launch;

  const LaunchDetailsPage({
    Key? key,
    required this.launch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 20);
    String? imageUrl = launch.links.patch?.large;

    String? formatedDate;
    if (launch.dateUtc != null) {
      final date = DateTime.tryParse(launch.dateUtc!);
      formatedDate = DateFormat("dd/MM/yyyy").format(date!);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Launch details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            if (imageUrl != null)
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.network(
                  imageUrl,
                  height: 200,
                ),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Name: ${launch.name!}',
                  style: textStyle,
                ),
              ],
            ),
            if (formatedDate != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Launch date: $formatedDate',
                    style: textStyle,
                  ),
                ],
              ),
            if (launch.flightNumber != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Flight number: ${launch.flightNumber}',
                    style: textStyle,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
