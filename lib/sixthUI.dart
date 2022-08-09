import 'package:first_ui/main.dart';
import 'package:flutter/material.dart';

class SixthUI extends StatelessWidget {
  const SixthUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Catalogue'),
          ),
          actions: [
            IconButton(
              onPressed: (() => Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const FistUI(),
                    ),
                  )),
              icon: const Icon(Icons.restart_alt),
            ),
          ],
          bottom: const TabBar(tabs: [
            Tab(
              text: 'Products',
            ),
            Tab(
              text: 'Categories',
            )
          ]),
        ),
        body: TabBarView(children: [
          Center(
            child: ListView(
              children: [
                listView(
                    img:
                        'https://www.mydesignation.com/wp-content/uploads/2019/12/Saniya-Duo-500x500.jpg',
                    text1: 'Couch Potato | Women...',
                    amount: '₹799'),
                listView(
                    img:
                        'https://www.mydesignation.com/wp-content/uploads/2019/12/Saniya-Duo.jpg',
                    text1: 'Couch Potato | Unisex...',
                    amount: '₹799'),
                listView(
                    img:
                        'https://cms.cloudinary.vpsvc.com/images/c_scale,dpr_auto,f_auto,q_auto:best,t_productPageHeroGalleryTransformation,w_auto/legacy_dam/en-us/S001340457/CONS586-product-page-holiday-FY22-NP-mug-hero-001',
                    text1: 'MUG | Explore',
                    amount: '₹399'),
                listView(
                    img:
                        'https://m.media-amazon.com/images/I/71q6NsEUHwL._AC_UL320_.jpg',
                    text1: 'Gents | Combo',
                    amount: '₹1199'),
                listView(
                    img:
                        'https://assets.ajio.com/medias/sys_master/root/20220530/IVMA/62950654aeb26921aff6ad6f/-473Wx593H-464408838-blue-MODEL.jpg',
                    text1: 'Havana | Men',
                    amount: '₹899')
              ],
            ),
          ),
          const Center(),
        ]),
      ),
    );
  }

  Widget listView(
      {required String img, required String text1, required String amount}) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        child: Column(
          children: [
            ListTile(
              leading: SizedBox(
                width: 60,
                height: 100,
                child: ClipRRect(
                  child: Image.network(
                    img,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              title: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                    ),
                    Text(
                      text1,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 1),
                    ),
                    const Text('1 Piece'),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                    Text(
                      amount,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 1),
                    ),
                    const Text(
                      'In Stock',
                      style: TextStyle(color: Colors.green),
                    ),
                  ]),
              trailing: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Icon(Icons.more_vert),
                  ),
                  Icon(
                    Icons.toggle_on,
                    size: 30,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.share),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                ),
                Text('Share Product')
              ],
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
