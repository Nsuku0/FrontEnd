import 'package:flutter/material.dart';
import 'data.dart';
import 'constants/constants.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg,
        appBar: AppBar(
          title: Text("Dashboard"),
        ),
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: DashboardContent(),
              )
            ],
          ),
        ));
  }
}

class DashboardContent extends StatelessWidget {
  const DashboardContent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: appPadding,
              ),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            Text('hello'),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            "icons/absa.png"), // <-- BACKGROUND IMAGE
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
