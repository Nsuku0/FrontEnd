import 'package:absa_cib_ecg_dashboard/avgrev.dart';
import 'package:absa_cib_ecg_dashboard/scope2020.dart';
import 'package:absa_cib_ecg_dashboard/scope2021.dart';
import 'package:flutter/material.dart';
import 'bar_charts/charts/agri_chart.dart';
import 'bar_charts/charts/banking_chart.dart';
import 'bar_charts/charts/manufacturing_chart.dart';
import 'bar_charts/charts/mining_chart.dart';
import 'bar_charts/charts/retail_chart.dart';
import 'bar_charts/charts/tmt_chart.dart';
import 'companyinfo.dart';
import 'constants/constants.dart';
import 'bar_charts/series/banking_series.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'bar_charts/series/agri_series.dart';
import 'bar_charts/series/manufacturing_series.dart';
import 'bar_charts/series/mining_series.dart';
import 'bar_charts/series/retail_series.dart';
import 'bar_charts/series/tmt_series.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: bg,
        appBar: AppBar(
          title: const Text("ABSA ECG Dashboard"),
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                        height: 500,
                        child: AgriChart(
                          data: agriData,
                        )),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                        height: 500,
                        child: BankingChart(
                          data: bankingData,
                        )),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                        height: 500,
                        child: ManufacturingChart(
                          data: manufacturingData,
                        )),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                        height: 500,
                        child: MiningChart(
                          data: miningData,
                        )),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                        height: 500,
                        child: RetailChart(
                          data: retailData,
                        )),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                        height: 500,
                        child: TMTChart(
                          data: tmtData,
                        )), //
                  ],
                ),
              ),
            ),

            /* Expanded(

              child: SingleChildScrollView(
                  child: Container(
                      color: Colors.white,
                    child: const Expanded(child: Average()),Column(
                      children: const [
                        Expanded(child: Average()),
                        Expanded(child: Scope2021()),
                        Expanded(child: Scope2020()),
                      ],
                    ),
                  )
              ),
            ),*/

            Expanded(
              child: Container(color: Colors.white, child: const CompanyInfo()),
            )
          ],
        ));
  }
}
