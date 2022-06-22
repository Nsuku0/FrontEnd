import 'package:flutter/material.dart';
import '../constants/constants.dart';

class CompanyInfo extends StatelessWidget {
  const CompanyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Company Information"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DropdownButton(
                // Initial Value
                value: dropdownvalue = 'SOUTH AFRICAN RUGBY UNION',

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: companyList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("sarugby.png"),
                        Text(items),
                      ],
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              DropdownButton(
                // Initial Value
                value: dropdownvalue = 'CORPORATE LIQUIDATORS (PTY) LTD',

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: companyList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("sarugby.png"),
                        Text(items),
                      ],
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              DropdownButton(
                // Initial Value
                value: dropdownvalue = 'CHEMWES (PTY) LTD',

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: companyList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("sarugby.png"),
                        Text(items),
                      ],
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              DropdownButton(
                // Initial Value
                value: dropdownvalue = 'RICHARDS BAY TITANIUM (PTY) LTD',

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: companyList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("sarugby.png"),
                        Text(items),
                      ],
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              DropdownButton(
                // Initial Value
                value: dropdownvalue = 'AFMETCO (PTY) LTD',

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: companyList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "afmetco.png",
                          scale: 0.1,
                        ),
                        Text(items),
                      ],
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              DropdownButton(
                // Initial Value
                value: dropdownvalue = 'PERNOD RICARD SOUTH AFRICA (PTY) LTD',

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: companyList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("sarugby.png"),
                        Text(items),
                      ],
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              DropdownButton(
                // Initial Value
                value: dropdownvalue = 'NESTLE (SOUTH AFRICA) (PTY) LTD',

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: companyList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("nestle.png"),
                        Text(items),
                      ],
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              DropdownButton(
                // Initial Value
                value: dropdownvalue = 'WORLD HARDWOOD (PTY) LTD',

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: companyList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("sarugby.png"),
                        Text(items),
                      ],
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              DropdownButton(
                // Initial Value
                value: dropdownvalue = 'ISUZU MOTORS(SOUTH AFRICA)(PTY)(LTD)',

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: companyList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("sarugby.png"),
                        Text(items),
                      ],
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              DropdownButton(
                // Initial Value
                value: dropdownvalue = 'COUNTRY BIRD HOLDINGS (PTY) LTD',

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: companyList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("sarugby.png"),
                        Text(items),
                      ],
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              DropdownButton(
                // Initial Value
                value: dropdownvalue = 'KARAN BEEF FEEDLOT',

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: companyList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("karanbeef.png"),
                        Text(items),
                      ],
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              DropdownButton(
                // Initial Value
                value: dropdownvalue = 'AFGRI GRAIN MARKETING (PTY) LTD',

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: companyList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("afgri.jpg"),
                        Text(items),
                      ],
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              DropdownButton(
                // Initial Value
                value: dropdownvalue = 'HOMECHOICE (PTY)LTD',

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: companyList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("sarugby.png"),
                        Text(items),
                      ],
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              DropdownButton(
                // Initial Value
                value: dropdownvalue = 'TELKOM SA SOC LTD',

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: companyList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("telkom.jpg"),
                        Text(items),
                      ],
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              DropdownButton(
                // Initial Value
                value: dropdownvalue = 'VODACOM(PTY) LTD',

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: companyList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("sarugby.png"),
                        Text(items),
                      ],
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              DropdownButton(
                // Initial Value
                value: dropdownvalue = 'WOOLWORTHS GROUP',

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: companyList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("sarugby.png"),
                        Text(items),
                      ],
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              DropdownButton(
                // Initial Value
                value: dropdownvalue = 'MR PRICE GROUP LTD',

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: companyList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("sarugby.png"),
                        Text(items),
                      ],
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              DropdownButton(
                // Initial Value
                value: dropdownvalue = 'SHOPRITE CHECKERS (PTY)LTD',

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: companyList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("sarugby.png"),
                        Text(items),
                      ],
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
