
import 'package:flutter/material.dart';
import 'package:material3_show_case/widgets/widgets.dart';
import 'package:intl/intl.dart';

class DatePickerDemoScreen extends StatefulWidget {
  const DatePickerDemoScreen({Key? key}) : super(key: key);

  @override
  State<DatePickerDemoScreen> createState() => _DatePickerDemoScreenState();
}

class _DatePickerDemoScreenState extends State<DatePickerDemoScreen> {
  TextEditingController dateController = TextEditingController();
  TextEditingController dateRangeController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  

  @override
  void initState() {
    super.initState();
    dateController.text = '';
    timeController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const AppBarShowCase(),
      floatingActionButton: const BtnChangeMaterial(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SectionTitleCaseWidget(
            title: 'Date Picker',
            caseWidget: Column(
              children: [
                TextField(
                  controller: dateController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.calendar_today),
                    labelText: 'Selector de Fecha'
                  ),
                  readOnly: true,
                  onTap: () async{
                    DateTime? pickedDate = await showDatePicker(
                      context: context, 
                      initialDate: DateTime.now(), 
                      firstDate: DateTime(1950), 
                      lastDate: DateTime(2100)
                    );
                    if(pickedDate!=null){
                      String formatteDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                      setState(() {
                        dateController.text = formatteDate.toString();
                      });
                    }else{
                      // print('No selected');
                    }
                },
                ),
                const SizedBox(height: 50,),

                TextField(
                  controller: timeController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.calendar_today),
                    labelText: 'Selector de Hora'
                  ),
                  readOnly: true,
                  onTap: () async{
                    TimeOfDay? pickedTime = await showTimePicker(
                      context: context, 
                      initialTime: TimeOfDay.now(),
                    );
                    if(pickedTime!=null){
                  
                      setState(() {
                        timeController.text = pickedTime.toString();
                      });
                    }else{
                      // print('No selected');
                    }
                },
                ),
                


                const SizedBox(height: 50,),


                DateRangePickerDialog(
                  firstDate: DateTime.now(), 
                  lastDate: DateTime(2030)
                ),


              ],
              
            ),
          ),
        ),
      )
    
    );
  }
}
