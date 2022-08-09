import 'package:first_ui/thirdUI.dart';
import 'package:flutter/material.dart';

class SecondUI extends StatelessWidget {
  const SecondUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          child: Text(
            'Manage Store',
          ),
        ),
        actions: [
          IconButton(
              onPressed: (() => Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const ThirdUI(),
                    ),
                  )),
              icon: const Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3 / 2.3,
        ),
        children: [
          cardFunction(
            color: Colors.deepOrangeAccent,
            text: 'Marketing\n Desigining',
            icon: const Icon(Icons.contactless_outlined),
          ),
          cardFunction(
            color: Colors.greenAccent,
            text: 'Online \n Payments',
            icon: const Icon(Icons.currency_rupee_sharp),
          ),
          cardFunction(
            color: Colors.orangeAccent,
            text: 'Discount \n Coupons',
            icon: const Icon(Icons.percent_rounded),
          ),
          cardFunction(
            color: Colors.blueAccent,
            text: 'My \n Customers',
            icon: const Icon(Icons.person_pin_outlined),
          ),
          cardFunction(
            color: Colors.grey,
            text: 'Store QR\n Code',
            icon: const Icon(Icons.qr_code_2_rounded),
          ),
          cardFunction(
            color: const Color.fromARGB(255, 152, 36, 230),
            text: 'Extra \n Charges',
            icon: const Icon(Icons.request_page_outlined),
          ),
          cardFunction(
            color: Colors.pinkAccent,
            text: 'Order \nform',
            icon: const Icon(Icons.list_alt_outlined),
            card7: true,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: 3,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Orders'),
          BottomNavigationBarItem(
              icon: Icon(Icons.production_quantity_limits), label: 'Products'),
          BottomNavigationBarItem(icon: Icon(Icons.layers), label: 'Manage'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }

  Widget cardFunction(
      {required Color color,
      required String text,
      required Icon icon,
      bool card7 = false}) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 40,
                  height: 40,
                  color: color,
                  child: icon,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 70),
              ),

              //nullable
              card7
                  ? Container(
                      alignment: Alignment.center,
                      width: 60,
                      height: 30,
                      color: const Color.fromARGB(255, 73, 247, 73),
                      child: const Text('NEW',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    )
                  : Container()
              //
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              text,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
