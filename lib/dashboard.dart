import 'package:flutter/material.dart';
import 'data.dart';
import 'constants/constants.dart';
import 'bar_charts/series/banking_series.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'bar_charts/series/agri_series.dart';
import 'bar_charts/series/manufacturing_series.dart';
import 'bar_charts/series/mining_series.dart';
import 'bar_charts/series/retail_series.dart';
import 'bar_charts/series/tmt_series.dart';

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
              /**Expanded(child: DrawerMenu(),),**/
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
  final List<BankingSeries> banking_data = [
    BankingSeries(
        name: "FNB, Scope 1",
        emissions: 8301,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    BankingSeries(
        name: "Nedbank, Scope 1",
        emissions: 1265,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    BankingSeries(
        name: "FNB Scope 2",
        emissions: 171,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    BankingSeries(
        name: "Nedbank Scope 2",
        emissions: 118050,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    BankingSeries(
        name: "FNB Scope 1",
        emissions: 6507,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    BankingSeries(
        name: "Nedbank Scope 1",
        emissions: 1541,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    BankingSeries(
        name: "FNB Scope 2",
        emissions: 153,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    BankingSeries(
        name: "Nedbank Scope 2",
        emissions: 110529,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
  ];
  final List<MiningSeries> mining_data = [
    MiningSeries(
        name: "Anglo American (PTY) LTD Scope 1",
        emissions: 875714,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])), //2020
    MiningSeries(
        name: "Exarro SA Scope 1",
        emissions: 385000,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])), //2020
    MiningSeries(
        name: "Implats Scope 1",
        emissions: 380114,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])), //2020
    MiningSeries(
        name: "Anglo American (PTY) LTD Scope 2",
        emissions: 1428571,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])), //2020
    MiningSeries(
        name: "Exarro SA Scope 2",
        emissions: 650000,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    MiningSeries(
        name: "Implats Scope 2",
        emissions: 2925700,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),

    MiningSeries(
        name: "Anglo American (PTY) LTD Scope 1",
        emissions: 875714,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    MiningSeries(
        name: "Exarro SA Scope 1",
        emissions: 345000,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    MiningSeries(
        name: "Implats Scope 1",
        emissions: 447247,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    MiningSeries(
        name: "Anglo American (PTY) LTD Scope 2",
        emissions: 1428571,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    MiningSeries(
        name: "Exarro SA Scope 2",
        emissions: 650000,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    MiningSeries(
        name: "Implats Scope 2",
        emissions: 3307630,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
  ];
  final List<TMTSeries> tmt_data = [
    TMTSeries(
        name: "MTN Scope 1",
        emissions: 247385,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    TMTSeries(
        name: "Telkom SA Soc LTD Scope 1",
        emissions: 50101,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    TMTSeries(
        name: "Vodacom (PTY) LTS Scope 1",
        emissions: 54070,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    TMTSeries(
        name: "MTN Scope 2",
        emissions: 864865,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    TMTSeries(
        name: "Telkom SA Soc LTD Scope 2",
        emissions: 546000,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    TMTSeries(
        name: "Vodacom (PTY) LTS Scope 2",
        emissions: 556822,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    TMTSeries(
        name: "MTN Scope 1",
        emissions: 566785,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    TMTSeries(
        name: "Telkom SA Soc LTD Scope 1",
        emissions: 50695,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    TMTSeries(
        name: "Vodacom (PTY) LTS Scope 1",
        emissions: 55757,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    TMTSeries(
        name: "MTN Scope 2",
        emissions: 566785,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    TMTSeries(
        name: "Telkom SA Soc LTD Scope 2",
        emissions: 57825,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    TMTSeries(
        name: "Vodacom (PTY) LTS Scope 2",
        emissions: 553982,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
  ];
  final List<ManufacturingSeries> manufacturing_data = [
    ManufacturingSeries(
        name: "Pernod Rcard SA Scope 1",
        emissions: 385,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    ManufacturingSeries(
        name: "Nestle SA (PTY) LTD Scope 1",
        emissions: 579,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    ManufacturingSeries(
        name: "Isuzu Motors SA (PTY) LTD Scope 1",
        emissions: 71598,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    ManufacturingSeries(
        name: "Pernod Rcard SA Scope 2",
        emissions: 1035,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    ManufacturingSeries(
        name: "Nestle SA (PTY) LTD Scope 2",
        emissions: 1555,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    ManufacturingSeries(
        name: "Isuzu Motors SA (PTY) LTD Scope 2",
        emissions: 371340,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    ManufacturingSeries(
        name: "Pernod Rcard SA Scope 1",
        emissions: 345,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    ManufacturingSeries(
        name: "Nestle SA (PTY) LTD Scope 1",
        emissions: 730,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    ManufacturingSeries(
        name: "Isuzu Motors SA (PTY) LTD Scope 1",
        emissions: 78709,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    ManufacturingSeries(
        name: "Pernod Rcard SA Scope 2",
        emissions: 650,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    ManufacturingSeries(
        name: "Nestle SA (PTY) LTD Scope 2",
        emissions: 1375,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    ManufacturingSeries(
        name: "Isuzu Motors SA (PTY) LTD Scope 2",
        emissions: 353716,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
  ];
  final List<AgriSeries> agri_data = [
    AgriSeries(
        name: "Country Bird Holdings (PTY) Scope 1",
        emissions: 19221,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    AgriSeries(
        name: "Karan Beef Feedlot Scope 1",
        emissions: 12649,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    AgriSeries(
        name: "Afgri Grain Marketing (PTY) LTD Scope 1",
        emissions: 164384,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    AgriSeries(
        name: "Country Bird Holdings (PTY) Scope 2",
        emissions: 57500,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    AgriSeries(
        name: "Karan Beef Feedlot Scope 2",
        emissions: 37840,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    AgriSeries(
        name: "Afgri Grain Marketing (PTY) LTD Scope 2",
        emissions: 491758,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    AgriSeries(
        name: "Country Bird Holdings (PTY) Scope 1",
        emissions: 15837,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    AgriSeries(
        name: "Karan Beef Feedlot Scope 1",
        emissions: 228075,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    AgriSeries(
        name: "Afgri Grain Marketing (PTY) LTD Scope 1",
        emissions: 153247,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    AgriSeries(
        name: "Country Bird Holdings (PTY) Scope 2",
        emissions: 52010,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    AgriSeries(
        name: "Karan Beef Feedlot Scope 2",
        emissions: 749018,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    AgriSeries(
        name: "Afgri Grain Marketing (PTY) LTD Scope 2",
        emissions: 503277,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
  ];
  final List<RetailSeries> retail_data = [
    RetailSeries(
        name: "Woolworths Holdings Limited Scope 1",
        emissions: 44886,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    RetailSeries(
        name: "Mr Price Group LTD Scope 1",
        emissions: 52535,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    RetailSeries(
        name: "Shoprite Holdings Scope 1",
        emissions: 528889,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    RetailSeries(
        name: "Woolworths Holdings Limited Scope 2",
        emissions: 441875,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    RetailSeries(
        name: "Mr Price Group LTD Scope 2",
        emissions: 52535,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    RetailSeries(
        name: "Shoprite Holdings Scope 2",
        emissions: 1802314,
        barColor: charts.ColorUtil.fromDartColor(pinks[0])),
    RetailSeries(
        name: "Woolworths Holdings Limited Scope 1",
        emissions: 449819,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    RetailSeries(
        name: "Mr Price Group LTD Scope 1",
        emissions: 46034,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    RetailSeries(
        name: "Shoprite Holdings Scope 1",
        emissions: 511067,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    RetailSeries(
        name: "Woolworths Holdings Limited Scope 2",
        emissions: 40675226,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    RetailSeries(
        name: "Mr Price Group LTD Scope 2",
        emissions: 46034,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
    RetailSeries(
        name: "Shoprite Holdings Scope 2",
        emissions: 1694193,
        barColor: charts.ColorUtil.fromDartColor(pinks[2])),
  ];

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
