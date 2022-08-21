import 'package:flutter/material.dart';
import 'package:spacex_client_app/api/launch.dart';
import 'package:spacex_client_app/models/launch.dart';
import 'package:spacex_client_app/widgets/launch_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpaceX Client',
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
