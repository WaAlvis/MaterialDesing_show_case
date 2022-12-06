import 'package:flutter/material.dart';
import 'package:material3_show_case/widgets/section_title_case_widget.dart';

import '../widgets/widgets.dart';

class CardsDemoScreen extends StatefulWidget {
  const CardsDemoScreen({Key? key}) : super(key: key);

  @override
  State<CardsDemoScreen> createState() => _CardsDemoScreenState();
}

class _CardsDemoScreenState extends State<CardsDemoScreen> {
  bool _onSelected = false;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: const AppBarShowCase(),
      floatingActionButton: const BtnChangeMaterial(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: SectionTitleCaseWidget(
            title: 'Card Widget',
            caseWidget: Column(
              children: [
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.album),
                        title: Text('The Enchanted Nightingale'),
                        subtitle: Text(
                            'Music by Julie Gable. Lyrics by Sidney Stein.'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            child: const Text('BUY TICKETS'),
                            onPressed: () {
                              /* ... */
                            },
                          ),
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('LISTEN'),
                            onPressed: () {
                              /* ... */
                            },
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      const FadeInImage(
                        image: NetworkImage(
                            'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg'),
                        placeholder: AssetImage('assets/jar-loading.gif'),
                        width: double.infinity,
                        height: 230,
                        fit: BoxFit.cover,
                        fadeInDuration: Duration(milliseconds: 300),
                      ),
                      Container(
                          alignment: AlignmentDirectional.centerEnd,
                          padding: const EdgeInsets.only(
                              right: 20, top: 10, bottom: 10),
                          child: const Text('Title images'))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 30.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  child: Column(
                    children: [
                      ListTile(
                          title: const Text('\$2300 per month'),
                          subtitle: const Text('2 bed, 1 bath, 1300 sqft'),
                          trailing: IconButton(
                            color: Theme.of(context).primaryColor,
                            onPressed: () {
                              _onSelected = !_onSelected;
                              setState(() {});
                            },
                            icon: _onSelected
                                ? const Icon(Icons.favorite_outlined)
                                : const Icon(Icons.favorite_outline),
                          )),
                      const SizedBox(
                        height: 200.0,
                        child: FadeInImage(
                          image: NetworkImage(
                              'https://www.realestate.com.au/blog/images/1024x576-fit,progressive/2018/12/08120031/capi_a14291d3f20e16dde54deace1ea00adf_1eedc6bc2c9a1e39cb76370ed78a59c7.jpeg'),
                          placeholder:
                              const AssetImage('assets/jar-loading.gif'),
                          width: double.infinity,
                          height: 230,
                          fit: BoxFit.cover,
                          fadeInDuration: const Duration(milliseconds: 300),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                            'Beautiful home to rent, recently refurbished with modern appliances...'),
                      ),
                      ButtonBar(
                        children: [
                          TextButton(
                            child: const Text('CONTACT AGENT'),
                            onPressed: () {
                              /* ... */
                            },
                          ),
                          TextButton(
                            child: const Text('LEARN MORE'),
                            onPressed: () {
                              /* ... */
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
