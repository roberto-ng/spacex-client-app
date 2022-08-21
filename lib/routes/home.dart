import 'package:flutter/material.dart';
import 'package:spacex_client_app/api/launch.dart';
import 'package:spacex_client_app/models/launch.dart';
import 'package:spacex_client_app/widgets/launch_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Launch>> _upcomingLaunches;

  @override
  void initState() {
    super.initState();
    _upcomingLaunches = fetchUpcomingLaunches();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Upcoming launches:',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            FutureBuilder<List<Launch>>(
              future: _upcomingLaunches,
              builder: ((context, snapshot) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, index) {
                        final launch = snapshot.data![index];
                        return Center(
                          child: LaunchCard(launch: launch),
                        );
                      },
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                return const CircularProgressIndicator();
              }),
            ),
          ],
        ),
      ),
    );
  }
}
