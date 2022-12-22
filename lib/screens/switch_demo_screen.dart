import 'package:flutter/material.dart';
import 'package:material3_show_case/widgets/widgets.dart';
class SwitchDemoScreen extends StatefulWidget {
  const SwitchDemoScreen({super.key});

  @override
  State<SwitchDemoScreen> createState() => _SwitchDemoScreenState();
}

class _SwitchDemoScreenState extends State<SwitchDemoScreen> {
  bool isActive1 = false;
  bool isActive2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarShowCase(),
      floatingActionButton: const BtnChangeMaterial(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SectionTitleCaseWidget(
            title: 'Switch',
            caseWidget: Column(
              children: [
                const Text('Switch', style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic, decoration: TextDecoration.underline),),
                Switch(
                  value: isActive1,
                  onChanged: (change){
                    setState(() {
                      isActive1 = change;
                    });
                  }),
                  Text('The value is $isActive1'),
            
                  const SizedBox(height: 50,),
                const Text('Switch Tile', style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic, decoration: TextDecoration.underline),),
                  SwitchListTile(
                    title: const Text('Habilitar Switch'),
                    value: isActive2,
                    onChanged: (change2) => setState(() {
                      isActive2 = change2 ;
                    })  
                  ),
                  Text('The value is $isActive2'),
            
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}