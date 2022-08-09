import 'package:first_ui/fifthUI.dart';
import 'package:flutter/material.dart';

import 'package:flutter_custom_cards/flutter_custom_cards.dart';

class FourthUI extends StatelessWidget {
  const FourthUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Dukaan Premium')),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: (() => Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) => const FifthUI()),
                  )),
              icon: const Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 90,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
              ),
              SizedBox(
                height: 90,
                width: MediaQuery.of(context).size.width,
              ),
              Center( 
                child: CustomCard(
                  borderRadius: 10,
                  width: 350,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              child: Icon(Icons.abc),
                            ),
                            Column(
                              children: const [
                                Text(
                                  '\tdukan®',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                  ),
                                ),
                                Text(
                                  'PREMIUM',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 20),
                                ),
                              ],
                            )
                          ],
                        ),
                        const Text(
                          'Get Dukan Premium For Just',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        const Text(
                          '₹4999/Year',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        const Text(
                          'All the advance features for scaling your ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                        const Text(
                          'Business',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          ListTile(title: headings(head: 'Features')),
          listTile1(
              icn: const Icon(Icons.abc),
              txt1: 'Custom Domain Name',
              subtext:
                  'Get your own custom domain and buid\n your brand on the internet'),
          listTile1(
              icn: const Icon(Icons.verified),
              txt1: 'Verified Seller Badge',
              subtext:
                  'Get your own custom domain and buid\n your brand on the internet '),
          listTile1(
              icn: const Icon(Icons.live_tv_sharp),
              txt1: 'Dukan Pro for PC',
              subtext:
                  'Get your own custom domain and buid\n your brand on the internet'),
          listTile1(
              icn: const Icon(Icons.support_agent_rounded),
              txt1: 'Priority Support',
              subtext:
                  'Get your own custom domain and buid\n your brand on the internet '),
          _divider_(),
          Padding(
              padding: const EdgeInsets.only(left: 30),
              child: headings(head: 'What is Dukan Premium ?')),
          CustomCard(
            height: 200,
            elevation: 0,
            borderRadius: 7,
            child: Image.asset(
              'assests/Screenshot.png',
              fit: BoxFit.fill,
            ),
            // child: Image(
            //     image: AssetImage(
            //         'assests/Screenshot from 2022-06-21 21-41-52.png')),
          ),
          _divider_(),
          Padding(
              padding: const EdgeInsets.only(left: 15),
              child: headings(head: 'Frequently asked questions')),
          const ListTile(
            title: Text(
              'What types of business can use Dukaan\nPremium?',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text(
              'Dukaan caters to a wide variety of sellers. Be it a \nsmall grocery store or a big legacy brand -anyone\nwho wants to sell their products/services online-\nDukaan is the perfect platform for you.',
              style: TextStyle(fontSize: 18),
            ),
            trailing: Icon(Icons.minimize),
          ),
          const Divider(),
          listtile(text: 'What is your refund policy'),
          const Divider(),
          listtile(
              text: 'Will thre be an automatic charge after the \npaid trial?'),
          const Divider(),
          listtile(text: 'What payment methord do you offer?'),
          const Divider(),
          listtile(text: 'What happens when my free trial ends?'),
          const Divider(),
          listtile(text: 'What are the terms for the custom domain?'),
          _divider_(),
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 10),
            child: headings(head: 'Need help ? Get in touch'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.messenger_outline),
                label: const Text('Live Chat'),
              ),
              OutlinedButton.icon(
                style: const ButtonStyle(),
                onPressed: () {},
                icon: const Icon(Icons.phone),
                label: const Text('Phone Call'),
              )
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {},
                child: headings(head: 'Select Domain'),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                  ),
                  onPressed: () {},
                  child: headings(head: 'Get Premium')),
            ],
          )
        ],
      ),
    );
  }

//////////////////////////////////////////////////////////////////
  Widget listTile1(
      {required Icon icn, required String txt1, required String subtext}) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        child: icn,
      ),
      title: Text(
        txt1,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
      subtitle: Text(
        subtext,
        style: const TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }

  Widget _divider_() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Divider(
        thickness: 2,
      ),
    );
  }

  Widget listtile({required String text}) {
    return ListTile(
      title: Text(
        text,
        style: const TextStyle(fontSize: 20),
      ),
      trailing: const Icon(Icons.add),
    );
  }

  Widget headings({required String head}) {
    return Text(
      head,
      style: const TextStyle(
        fontSize: 25,
      ),
    );
  }
}
