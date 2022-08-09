
import 'package:first_ui/secondUI.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FistUI(),
    );
  }
}

class FistUI extends StatelessWidget {
  const FistUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text('Additional Information'),
        ),
        actions: [
          IconButton(
              onPressed: (() => Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const SecondUI(),
                    ),
                  )),
              icon: const Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.share_sharp),
            title: Text('Share Dukaan App'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text('Change Language'),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
          ),
          ListTile(
            leading: Icon(Icons.whatsapp),
            title: Text('Whatsapp Chat Support'),
            trailing: Icon(
              Icons.toggle_on,
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Privacy Policy'),
          ),
          ListTile(
            leading: Icon(Icons.star_outline),
            title: Text('Rate Us'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Sign Out'),
          ),
          SizedBox(
            height: 430,
          ),
          Expanded(
              child: Align(
            child: Text(
              'Version\n\t 2.4.2',
              style: TextStyle(color: Colors.grey),
            ),
          ))
        ],
      ),
    );
  }
}
