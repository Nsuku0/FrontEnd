import 'package:flutter/material.dart';
import '../constants/constants.dart';

class CompanyInfo extends StatelessWidget {
  const CompanyInfo({Key? key}) : super(key: key);

  @override
 Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: headings_orange,
        title: const Text("Company Information", style: TextStyle(color: text_col),),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 50,
                width: 500,

                child: ElevatedButton(onPressed: (){
                  showModalBottomSheet(context: context, builder: (context) {

                    String compSummary = getCompInfo('SOUTH AFRICAN RUGBY UNION');
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                        child:Column(
                          children:  [
                            const Text('SOUTH AFRICAN RUGBY UNION', style: TextStyle(fontSize: 20, ),),
                            SizedBox(
                                height: 100,
                                width: 500,
                                child: Image.asset("icons/sarugby.png")),
                            Text(compSummary),
                          ],
                        ) ,

                      ),
                    );
                  });
                },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Row(
                  children:  const [
                    ImageIcon(
                      AssetImage("icons/sarugby.png"),
                      color: Colors.green,
                    ),
                    Text('SOUTH AFRICAN RUGBY UNION', style: TextStyle(color: text_col),),

                  ],
                )
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 50,
                width: 500,

                child: ElevatedButton(onPressed: (){
                  showModalBottomSheet(context: context, builder: (context) {

                    String compSummary = getCompInfo('CORPORATE LIQUIDATORS (PTY) LTD');
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                        child:Column(
                          children:  [
                            const Text('CORPORATE LIQUIDATORS (PTY) LTD', style: TextStyle(fontSize: 20, ),),
                            SizedBox(
                                height: 100,
                                width: 500,
                                child: Image.asset("icons/sarugby.png")),
                            Text(compSummary),
                          ],
                        ) ,

                      ),
                    );
                  });
                },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Row(
                  children:  const [
                    ImageIcon(
                      AssetImage("icons/sarugby.png"),
                      color: Colors.green,
                    ),
                    Text('CORPORATE LIQUIDATORS (PTY) LTD', style: TextStyle(color: text_col),),

                  ],
                )),
              ),

              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 50,
                width: 500,

                child: ElevatedButton(onPressed: (){
                  showModalBottomSheet(context: context, builder: (context) {

                    String compSummary = getCompInfo('CHEMWES (PTY) LTD');
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                        child:Column(
                          children:  [
                            const Text('CHEMWES (PTY) LTD', style: TextStyle(fontSize: 20, ),),
                            SizedBox(
                                height: 100,
                                width: 500,
                                child: Image.asset("icons/sarugby.png")),
                            Text(compSummary),
                          ],
                        ) ,

                      ),
                    );
                  });
                },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Row(
                  children:  const [
                    ImageIcon(
                      AssetImage("icons/sarugby.png"),
                      color: Colors.green,
                    ),
                    Text('CHEMWES (PTY) LTD', style: TextStyle(color: text_col),),

                  ],
                )),
              ),

              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 50,
                width: 500,

                child: ElevatedButton(onPressed: (){
                  showModalBottomSheet(context: context, builder: (context) {

                    String compSummary = getCompInfo('RICHARDS BAY TITANIUM (PTY) LTD');
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                        child:Column(
                          children:  [
                            const Text('RICHARDS BAY TITANIUM (PTY) LTD', style: TextStyle(fontSize: 20, ),),
                            SizedBox(
                                height: 100,
                                width: 500,
                                child: Image.asset("icons/sarugby.png")),
                            Text(compSummary),
                          ],
                        ) ,

                      ),
                    );
                  });
                },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Row(
                  children:  const [
                    ImageIcon(
                      AssetImage("icons/sarugby.png"),
                      color: Colors.green,
                    ),
                    Text('RICHARDS BAY TITANIUM (PTY) LTD', style: TextStyle(color: text_col),),

                  ],
                )),
              ),

              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 50,
                width: 500,

                child: ElevatedButton(onPressed: (){
                  showModalBottomSheet(context: context, builder: (context) {

                    String compSummary = getCompInfo('AFMETCO (PTY) LTD');
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                        child:Column(
                          children:  [
                            const Text('AFMETCO (PTY) LTD', style: TextStyle(fontSize: 20, ),),
                            SizedBox(
                                height: 100,
                                width: 500,
                                child: Image.asset("icons/afmetco.png")),
                            Text(compSummary),
                          ],
                        ) ,

                      ),
                    );
                  });
                },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Row(
                  children:  const [
                    ImageIcon(
                      AssetImage("icons/afmetco.png"),
                      color: Colors.green,
                    ),
                    Text('AFMETCO (PTY) LTD', style: TextStyle(color: text_col),),

                  ],
                )),
              ),

              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 50,
                width: 500,

                child: ElevatedButton(onPressed: (){
                  showModalBottomSheet(context: context, builder: (context) {

                    String compSummary = getCompInfo('PERNOD RICARD SOUTH AFRICA (PTY) LTD');
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                        child:Column(
                          children:  [
                            const Text('PERNOD RICARD SOUTH AFRICA (PTY) LTD', style: TextStyle(fontSize: 20, ),),
                            SizedBox(
                                height: 100,
                                width: 500,
                                child: Image.asset("icons/sagoodnews-pernod-ricard.png")),
                            Text(compSummary),
                          ],
                        ) ,

                      ),
                    );
                  });
                },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Row(
                  children:  const [
                    ImageIcon(
                      AssetImage("icons/sagoodnews-pernod-ricard.png"),
                      color: Colors.green,
                    ),
                    Text('PERNOD RICARD SOUTH AFRICA (PTY) LTD', style: TextStyle(color: text_col),),

                  ],
                )),
              ),


              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 50,
                width: 500,

                child: ElevatedButton(onPressed: (){
                  showModalBottomSheet(context: context, builder: (context) {

                    String compSummary = getCompInfo('NESTLE (SOUTH AFRICA) (PTY) LTD');
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                        child:Column(
                          children:  [
                            const Text('NESTLE (SOUTH AFRICA) (PTY) LTD', style: TextStyle(fontSize: 20, ),),
                            SizedBox(
                                height: 100,
                                width: 500,
                                child: Image.asset("icons/nestle.png")),
                            Text(compSummary),
                          ],
                        ) ,

                      ),
                    );
                  });
                },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Row(
                  children:  const [
                    ImageIcon(
                      AssetImage("icons/nestle.png"),
                      color: Colors.green,
                    ),
                    Text('NESTLE (SOUTH AFRICA) (PTY) LTD', style: TextStyle(color: text_col),),

                  ],
                )),
              ),


              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 50,
                width: 500,

                child: ElevatedButton(onPressed: (){
                  showModalBottomSheet(context: context, builder: (context) {

                    String compSummary = getCompInfo('WORLD HARDWOOD (PTY) LTD');
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                        child:Column(
                          children:  [
                            const Text('WORLD HARDWOOD (PTY) LTD', style: TextStyle(fontSize: 20, ),),
                            SizedBox(
                                height: 100,
                                width: 500,
                                child: Image.asset("icons/sarugby.png")),
                            Text(compSummary),
                          ],
                        ) ,

                      ),
                    );
                  });
                },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Row(
                  children:  const [
                    ImageIcon(
                      AssetImage("icons/sarugby.png"),
                      color: Colors.green,
                    ),
                    Text('WORLD HARDWOOD (PTY) LTD', style: TextStyle(color: text_col),),

                  ],
                )),
              ),


              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 50,
                width: 500,

                child: ElevatedButton(onPressed: (){
                  showModalBottomSheet(context: context, builder: (context) {

                    String compSummary = getCompInfo('ISUZU MOTORS(SOUTH AFRICA)(PTY)(LTD)');
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                        child:Column(
                          children:  [
                            const Text('ISUZU MOTORS(SOUTH AFRICA)(PTY)(LTD)', style: TextStyle(fontSize: 20, ),),
                            SizedBox(
                                height: 100,
                                width: 500,
                                child: Image.asset("icons/sarugby.png")),
                            Text(compSummary),
                          ],
                        ) ,

                      ),
                    );
                  });
                },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Row(
                  children:  const [
                    ImageIcon(
                      AssetImage("icons/sarugby.png"),
                      color: Colors.green,
                    ),
                    Text('ISUZU MOTORS(SOUTH AFRICA)(PTY)(LTD)', style: TextStyle(color: text_col),),

                  ],
                )),
              ),


              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 50,
                width: 500,

                child: ElevatedButton(onPressed: (){
                  showModalBottomSheet(context: context, builder: (context) {

                    String compSummary = getCompInfo('COUNTRY BIRD HOLDINGS (PTY) LTD');
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                        child:Column(
                          children:  [
                            const Text('COUNTRY BIRD HOLDINGS (PTY) LTD', style: TextStyle(fontSize: 20, ),),
                            SizedBox(
                                height: 100,
                                width: 500,
                                child: Image.asset("icons/countrybird.png")),
                            Text(compSummary),
                          ],
                        ) ,

                      ),
                    );
                  });
                },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Row(
                  children:  const [
                    ImageIcon(
                      AssetImage("icons/countrybird.png"),
                      color: Colors.green,
                    ),
                    Text('COUNTRY BIRD HOLDINGS (PTY) LTD', style: TextStyle(color: text_col),),

                  ],
                )),
              ),



              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 50,
                width: 500,

                child: ElevatedButton(onPressed: (){
                  showModalBottomSheet(context: context, builder: (context) {

                    String compSummary = getCompInfo('KARAN BEEF FEEDLOT');
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                        child:Column(
                          children:  [
                            const Text('KARAN BEEF FEEDLOT', style: TextStyle(fontSize: 20, ),),
                            SizedBox(
                                height: 100,
                                width: 500,
                                child: Image.asset("icons/karanbeef.png")),
                            Text(compSummary),
                          ],
                        ) ,

                      ),
                    );
                  });
                },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Row(
                  children:  const [
                    ImageIcon(
                      AssetImage("icons/karanbeef.png"),
                      color: Colors.green,
                    ),
                    Text('KARAN BEEF FEEDLOT', style: TextStyle(color: text_col),),

                  ],
                )),
              ),


              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 50,
                width: 500,

                child: ElevatedButton(onPressed: (){
                  showModalBottomSheet(context: context, builder: (context) {

                    String compSummary = getCompInfo('AFGRI GRAIN MARKETING (PTY) LTD');
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                        child:Column(
                          children:  [
                            const Text('AFGRI GRAIN MARKETING (PTY) LTD', style: TextStyle(fontSize: 20, ),),
                            SizedBox(
                                height: 100,
                                width: 500,
                                child: Image.asset("icons/afgri.jpg")),
                            Text(compSummary),
                          ],
                        ) ,

                      ),
                    );
                  });
                },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Row(
                  children:  const [
                    ImageIcon(
                      AssetImage("icons/afgri.jpg"),
                      color: Colors.green,
                    ),
                    Text('AFGRI GRAIN MARKETING (PTY) LTD', style: TextStyle(color: text_col),),

                  ],
                )),
              ),


              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 50,
                width: 500,

                child: ElevatedButton(onPressed: (){
                  showModalBottomSheet(context: context, builder: (context) {

                    String compSummary = getCompInfo('HOMECHOICE (PTY)LTD');
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                        child:Column(
                          children:  [
                            const Text('HOMECHOICE (PTY)LTD', style: TextStyle(fontSize: 20, ),),
                            SizedBox(
                                height: 100,
                                width: 500,
                                child: Image.asset("icons/homechoice.co.za.png")),
                            Text(compSummary),
                          ],
                        ) ,

                      ),
                    );
                  });
                },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Row(
                  children:  const [
                    ImageIcon(
                      AssetImage("icons/homechoice.co.za.png"),
                      color: Colors.green,
                    ),
                    Text('HOMECHOICE (PTY)LTD', style: TextStyle(color: text_col),),

                  ],
                )),
              ),



              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 50,
                width: 500,

                child: ElevatedButton(onPressed: (){
                  showModalBottomSheet(context: context, builder: (context) {

                    String compSummary = getCompInfo('TELKOM SA SOC LTD');
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                        child:Column(
                          children:  [
                            const Text('TELKOM SA SOC LTD', style: TextStyle(fontSize: 20, ),),
                            SizedBox(
                                height: 100,
                                width: 500,
                                child: Image.asset("icons/telkom.jpg")),
                            Text(compSummary),
                          ],
                        ) ,

                      ),
                    );
                  });
                },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Row(
                  children:  const [
                    ImageIcon(
                      AssetImage("icons/telkom.jpg"),
                      color: Colors.green,
                    ),
                    Text('TELKOM SA SOC LTD', style: TextStyle(color: text_col),),

                  ],
                )),
              ),


              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 50,
                width: 500,

                child: ElevatedButton(onPressed: (){
                  showModalBottomSheet(context: context, builder: (context) {

                    String compSummary = getCompInfo('VODACOM(PTY) LTD');
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                        child:Column(
                          children:  [
                            const Text('VODACOM(PTY) LTD', style: TextStyle(fontSize: 20, ),),
                            SizedBox(
                                height: 100,
                                width: 500,
                                child: Image.asset("icons/vodacom.jpeg")),
                            Text(compSummary),
                          ],
                        ) ,

                      ),
                    );
                  });
                },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Row(
                  children:  const [
                    ImageIcon(
                      AssetImage("icons/vodacom.jpeg"),
                      color: Colors.green,
                    ),
                    Text('VODACOM(PTY) LTD', style: TextStyle(color: text_col),),

                  ],
                )),
              ),


              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 50,
                width: 500,

                child: ElevatedButton(onPressed: (){
                  showModalBottomSheet(context: context, builder: (context) {

                    String compSummary = getCompInfo('WOOLWORTHS GROUP');
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                        child:Column(
                          children:  [
                            const Text('WOOLWORTHS GROUP', style: TextStyle(fontSize: 20, ),),
                            SizedBox(
                                height: 100,
                                width: 500,
                                child: Image.asset('icons/woolworths.jpeg')),
                            Text(compSummary),
                          ],
                        ) ,

                      ),
                    );
                  });
                },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Row(
                  children:  const [
                    ImageIcon(
                      AssetImage('icons/woolworths.jpeg'),
                      color: Colors.green,
                    ),
                    Text('WOOLWORTHS GROUP', style: TextStyle(color: text_col),),

                  ],
                )),
              ),

              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 50,
                width: 500,

                child: ElevatedButton(onPressed: (){
                  showModalBottomSheet(context: context, builder: (context) {

                    String compSummary = getCompInfo('MR PRICE GROUP LTD');
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                        child:Column(
                          children:  [
                            const Text('MR PRICE GROUP LTD', style: TextStyle(fontSize: 20, ),),
                            SizedBox(
                                height: 100,
                                width: 500,
                                child: Image.asset("icons/mrprice.jpeg")),
                            Text(compSummary),
                          ],
                        ) ,

                      ),
                    );
                  });
                },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Row(
                  children:  const [
                    ImageIcon(
                      AssetImage("icons/mrprice.jpeg"),
                      color: Colors.green,
                    ),
                    Text('MR PRICE GROUP LTD', style: TextStyle(color: text_col),),

                  ],
                )),
              ),


              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 50,
                width: 500,

                child: ElevatedButton(onPressed: (){
                  showModalBottomSheet(context: context, builder: (context) {

                    String compSummary = getCompInfo('SHOPRITE CHECKERS (PTY)LTD');
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                        child:Column(
                          children:  [
                            const Text('SHOPRITE CHECKERS (PTY)LTD', style: TextStyle(fontSize: 20, ),),
                            SizedBox(
                                height: 100,
                                width: 500,
                                child: Image.asset("icons/shoprite_checkers_logo.jpeg")),
                            Text(compSummary),
                          ],
                        ) ,

                      ),
                    );
                  });
                },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Row(
                  children:  const [
                    ImageIcon(
                      AssetImage("icons/shoprite_checkers_logo.jpeg"),
                      color: Colors.green,
                    ),
                    Text('SHOPRITE CHECKERS (PTY)LTD', style: TextStyle(color: text_col),),

                  ],
                )),
              ),


            ],
          ),
        ),
      ),
    );
  }

  String getCompInfo(String compName) {
    String summary = "";
    var profit;

    //getting the company's 2021 revenue

    var revenue2021 = rev2021[companyList.indexOf(compName,0)];

    //2020 revenue
    var revenue2020 = rev2020[companyList.indexOf(compName,0)];

    //Comparing the revenue
    var difference = revenue2021 - revenue2020;

    //Check if the difference is a loss or profit
    if (difference <0) {
      profit = "loss ";
    }
    else {
      profit = "profit";
    }
    summary = "\n2021 Revenue = R$revenue2021 million\n "
        "\n2020 Revenue = R$revenue2020 million \n"
        "\nThe company made a $profit of R$difference million";

    return summary;
  }
}
