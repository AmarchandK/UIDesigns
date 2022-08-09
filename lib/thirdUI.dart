
import 'package:first_ui/fourthUI.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ThirdUI extends StatelessWidget {
  const ThirdUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Center(
          child: Text(
            'Payment',
            style: GoogleFonts.alata(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: (() => Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const FourthUI(),
                    ),
                  )),
              icon: const Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Transaction Limit',
                    style: GoogleFonts.alata(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'A free limit up to which you will receive the online payments directly in your bank',
                    style: GoogleFonts.alata(color: Colors.grey[500]),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  LinearPercentIndicator(
                    lineHeight: 6,
                    percent: 0.3,
                    backgroundColor: const Color.fromARGB(255, 237, 233, 233),
                    progressColor: Colors.blue,
                    barRadius: const Radius.circular(20),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '36,668 left out  of 50,000',
                      style: GoogleFonts.alata(
                          fontSize: 12, color: Colors.grey[500]),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Increase limit',
                      style: GoogleFonts.alata(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          listtileFunctionOne(
            text1: 'Default Method',
            text2: 'Online Payments',
            icon1: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          ),
          listtileFunctionOne(
            text1: 'Payment Profile',
            text2: 'Bank Account',
            icon1: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          ),
          const Divider(
            thickness: 2,
          ),
          listtileFunctionOne(
            text1: 'Payments Overview',
            text2: 'Life Time',
            icon1: const Icon(
              Icons.keyboard_arrow_down,
              size: 25,
            ),
          ),
          Row(
            children: [
              rowFunction(
                  text1: 'AMOUNT ON HOLD', text2: '₹0', color: Colors.orange),
              const SizedBox(
                width: 10,
              ),
              rowFunction(
                  text1: 'AMOUNT RECEIVED',
                  text2: '₹13,332',
                  color: Colors.green),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              'Transactions',
              style: GoogleFonts.alata(
                fontSize: 20,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              elivatedbutton(text: 'on hold', color: Colors.grey),
              elivatedbutton(text: 'Payouts(15)', color: Colors.blue),
              elivatedbutton(text: 'on hold', color: Colors.grey)
            ],
          ),
          items(
              img:
                  'https://m.media-amazon.com/images/I/81zYu4JkVuL._SL1500_.jpg',
              id: 'Order #1600883',
              subtitile: 'July 17 12:06PM',
              amount: '₹3799',
              contText: '₹599 deposited'),
          items(
              img:
                  'https://assets.adidas.com/images/w_600,f_auto,q_auto/e5ccba3da9184280b162adce00638131_9366/Herlz_M_Blue_EX2274_01_standard.jpg',
              id: 'Order #144833',
              subtitile: 'July 15 11:06PM',
              amount: '₹1799',
              contText: '₹2299 deposited'),
          items(
              img:
                  'https://cdn06.nnnow.com/web-images/medium/styles/SK4Y6CRY53D/1653556035800/1.jpg',
              id: 'Order #1780883',
              subtitile: 'July 12 10:06PM',
              amount: '₹99',
              contText: '₹399 deposited'),
          items(
              img:
                  'https://assets.ajio.com/medias/sys_master/root/h34/he3/12588366692382/performax_black_panelled_crew-neck_t-shirt.jpg',
              id: 'Order #1236983',
              subtitile: 'July 11 02:05PM',
              amount: '₹899',
              contText: '₹800 deposited'),
          items(
              img:
                  'https://cdn.britannica.com/95/176195-050-D0FA0BC1/Smith-Wesson-revolver.jpg?w=690&h=388&c=crop',
              id: 'Order #856083',
              subtitile: 'July 8 03:06PM',
              amount: '₹1299',
              contText: '₹100 deposited'),
        ],
      ),
    );
  }

  ///////////////////////FUNCTIONS///////////////////////////////////////////
  Widget listtileFunctionOne(
      {required String text1, required String text2, required Icon icon1}) {
    return ListTile(
      leading: Text(
        text1,
        style: GoogleFonts.alata(),
      ),
      trailing: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Text(
            text2,
            style: GoogleFonts.alata(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
          icon1,
        ],
      ),
    );
  }

  /////////////////////////////////////////////////
  Widget rowFunction(
      {required String text1, required String text2, required Color color}) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(
          right: 25,
          top: 15,
          bottom: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
        child: Column(
          children: [
            Text(
              text1,
              style: GoogleFonts.alata(color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 5,
                top: 10,
              ),
              child: Text(
                text2,
                style: GoogleFonts.alata(
                  color: Colors.white,
                  fontSize: 25,
                ),
                textDirection: TextDirection.ltr,
              ),
            )
          ],
        ),
      ),
    );
  }

  /////////////////////////////////////////////////////////////
  Widget elivatedbutton({
    required String text,
    required Color color,
  }) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(100, 10),
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.alata(),
      ),
    );
  }

  ///////////////////////////////////////////////////////////////////
  Widget items(
      {required String img,
      required String id,
      required String subtitile,
      required String amount,
      required String contText}) {
    return Column(
      children: [
        ListTile(
          leading: SizedBox(
            height: 50,
            width: 50,
            child: ClipRRect(
              child: Image.network(img),
            ),
          ),
          title: Text(id),
          subtitle: Text(subtitile),
          trailing: Column(
            children: [
              const Padding(padding: EdgeInsets.symmetric(vertical: 7)),
              Text(
                amount,
                style: const TextStyle(color: Colors.redAccent),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 6)),
              const Text(
                'Succesfull',
                style: TextStyle(color: Colors.greenAccent),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 1),
          child: Text(
            contText,
          ),
        ),
        const Divider(
          thickness: 2,
        ),
      ],
    );
  }
}
