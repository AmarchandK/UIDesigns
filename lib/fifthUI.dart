import 'package:first_ui/sixthUI.dart';
import 'package:flutter/material.dart';

class FifthUI extends StatelessWidget {
  const FifthUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 70),
          child: Text('Order #1688068'),
        ),
        actions: [
          IconButton(
            onPressed: (() => Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const SixthUI(),
                  ),
                )),
            icon: const Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const ListTile(
              leading: Text(
                'May 31 , 05:42 PM',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Text(
                'Delivered',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 100),
                child: Icon(
                  Icons.noise_control_off,
                  size: 30,
                  color: Colors.blue,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Divider(
                thickness: 2,
              ),
            ),
            const ListTile(
              leading: Text(
                '1 ITEM',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              trailing: Text(
                'RECEIPT',
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 180),
                child: Icon(
                  Icons.receipt_long_rounded,
                  color: Colors.blue,
                ),
              ),
            ),
            ListTile(
              leading: ClipRRect(
                child: Image.network(
                    'https://www.mydesignation.com/wp-content/uploads/2019/08/malayali-tshirt-mydesignation-mockup-image-latest-golden-.jpg'),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Explore|Men|Kerala',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  const Text('1 Piece'),
                  const Text(
                    'Size : XL',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.looks_one_outlined,
                            color: Colors.blue,
                            size: 30,
                          ),
                          Text(
                            'X ₹799',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      const Text(
                        '₹799',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Divider(
                thickness: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Item Total',
                          style: TextStyle(fontSize: 23),
                        ),
                        Text(
                          '₹799',
                          style: TextStyle(fontSize: 23),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Delivery',
                          style: TextStyle(fontSize: 23),
                        ),
                        Text(
                          'FREE',
                          style: TextStyle(fontSize: 23, color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Grand Total',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '₹799',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Divider(
                thickness: 2,
              ),
            ),
            const ListTile(
              leading: Text(
                'CUSTOMER DETAILS',
                style: TextStyle(fontSize: 22, color: Colors.grey),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 100),
                child: Icon(
                  Icons.share_outlined,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
              trailing: Text(
                'SHARE',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            ListTile(
              leading: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Deepa',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    '+91 9645686644',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  )
                ],
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.add_call,
                    color: Colors.blue,
                    size: 32,
                  ),
                ],
              ),
              trailing: const Icon(
                Icons.whatsapp,
                color: Colors.green,
                size: 32,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: textStyle(
                  text1: 'Address',
                  text2:
                      'D 1101 Chartered Beverly\nHills , Subramanypuram P.O'),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: textStyle(text1: 'City', text2: 'Bangalore'),
                  ),
                  Expanded(
                    child: textStyle(text1: 'Pincode', text2: '560061'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textStyle(text1: 'Payment', text2: 'Online'),
                  Container(
                    color: const Color.fromARGB(31, 39, 233, 97),
                    height: 40,
                    width: 80,
                    child: const Center(
                      child: Text(
                        'PAID',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.green),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 15),
              child: Divider(
                thickness: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'ADDITIONAL INFORMATION',
                    style: TextStyle(fontSize: 22, color: Colors.grey),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                  ),
                  textStyle(text1: 'State', text2: 'Karnadaka'),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                  ),
                  textStyle(text1: 'Email', text2: 'unofficial00345@gmail.com'),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size.fromHeight(40),
                      primary: Colors.blue,
                      side: const BorderSide(color: Colors.blue, width: 2),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Share Receipt',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget textStyle({required String text1, required String text2}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          style: const TextStyle(fontSize: 25),
        ),
        Text(
          text2,
          style: const TextStyle(
              fontSize: 20, color: Color.fromARGB(184, 19, 18, 18)),
        )
      ],
    );
  }
}
