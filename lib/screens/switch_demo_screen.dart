import 'package:flutter/material.dart';
import 'package:material3_show_case/widgets/widgets.dart';
class SwitchDemoScreen extends StatefulWidget {
  const SwitchDemoScreen({super.key});

  @override
  State<SwitchDemoScreen> createState() => _SwitchDemoScreenState();
}

class _SwitchDemoScreenState extends State<SwitchDemoScreen> {
  bool change = false;
  bool change2 = false;
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
                  value: change, 
                  onChanged: (_change){
                    setState(() {
                      change = _change;
                    });
                  }),
                  Text('The value is $change'),
            
                  const SizedBox(height: 50,),
                const Text('Switch Tile', style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic, decoration: TextDecoration.underline),),
                  SwitchListTile(
                    title: const Text('Habilitar Switch'),
                    value: change2, 
                    onChanged: (_change2) => setState(() {
                      change2 = _change2 ;
                    })  
                  ),
                  Text('The value is $change2'),
            
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}