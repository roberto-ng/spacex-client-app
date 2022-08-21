import 'package:flutter/material.dart';
import 'package:spacex_client_app/models/launch.dart';
import 'package:spacex_client_app/routes/launch_details.dart';

class LaunchCard extends StatelessWidget {
  final Launch launch;

  const LaunchCard({
    Key? key,
    required this.launch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? imageUrl = launch.links.patch?.large;

    return Container(
      margin: const EdgeInsets.fromLTRB(10, 6, 10, 6),
      //constraints: const BoxConstraints(maxWidth: 300),
      child: Card(
        color: Colors.indigo,
        child: InkWell(
          onTap: (() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LaunchDetailsPage(launch: launch),
              ),
            );
          }),
          child: Container(
            constraints: const BoxConstraints(
              minHeight: 200,
              maxWidth: 300,
              minWidth: 300,
            ),
            //padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: Column(
              children: [
                Text(
                  launch.name!,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                if (imageUrl != null)
                  Image.network(
                    imageUrl,
                    height: 200,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
