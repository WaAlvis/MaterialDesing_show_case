import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material3_show_case/widgets/widgets.dart';

class InputsDemoScreen extends StatelessWidget {
  const InputsDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarShowCase(),
      floatingActionButton: const BtnChangeMaterial(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SectionTitleCaseWidget(
                title: 'TextField Widget',
                caseWidget: Column(
                  children:const [
                    _EasyInputText(),
                    SizedBox(height: 60),
                    InputsFormExample()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class InputsFormExample extends StatefulWidget {
  const InputsFormExample({Key? key}) : super(key: key);

  @override
  State<InputsFormExample> createState() => _InputsFormExampleState();
}

class _InputsFormExampleState extends State<InputsFormExample> {
  final _formKey = GlobalKey<FormState>();
  bool _isValid = false;

  bool isHidden = false;

  String? validateNoEmpty(String? value) {
    if (value == null || value.isEmpty) {
      return 'El campo es necesario';
    }
    return null;
  }

  String? validatePhoneNum(String? value) {
    if (value == null || value.isEmpty) {
      return 'Numero es necesario';
    } else if (value.length < 10) {
      return 'Numero incompleto';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            _InputExample(
              validator: validateNoEmpty,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
              ],
              keyboardType: TextInputType.name,
              hintText: 'David Smith',
              labelText: 'Nombre',
            ),
            const SizedBox(height: 28),
            _InputExample(
              labelText: 'Celular',
              validator: validatePhoneNum,
              maxLength: 10,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp("[0-9]")),
              ],
              hintText: '321 231 3223',
            ),
            const SizedBox(height: 8),
            TextFormField(
                // validator: validator,
                obscureText: isHidden,
                keyboardType: TextInputType.text,
                validator: validateNoEmpty,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      isHidden = !isHidden;
                      setState(() {});
                    },
                    icon: isHidden
                        ? Icon(
                            Icons.visibility,
                            color: Theme.of(context).primaryColor,
                          )
                        : Icon(Icons.visibility_off),
                  ),
                  border: const OutlineInputBorder(),
                  labelText: 'Contraseña',
                )),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _isValid = true;
                      setState(() {});
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Form is valid')),
                      );
                    } else {
                      _isValid = false;
                      setState(() {});
                    }
                  },
                  child: const Text('validar'),
                ),
                const SizedBox(width: 20),
                OutlinedButton(
                  onPressed: () {
                    _isValid = false;
                    setState(() {});
                    _formKey.currentState!.reset();
                  },
                  child: Text('Reset'),
                )
              ],
            )
          ],
        ));
  }
}

class _InputExample extends StatelessWidget {
  final String labelText;
  final String? helperText, hintText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final int? countChars;
  final String? Function(String?)? validator;

  final bool withCounter;

  const _InputExample({
    super.key,
    this.hintText,
    required this.labelText,
    this.helperText,
    this.keyboardType,
    this.inputFormatters,
    this.maxLength,
    this.countChars = 0,
    this.withCounter = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: validator,
        keyboardType: keyboardType,
        maxLength: maxLength,
        inputFormatters: inputFormatters,

        // validator: ,
        decoration: InputDecoration(
          counter: withCounter ? Text('$countChars/10') : null,
          border: const OutlineInputBorder(),
          hintText: hintText,
          helperText: helperText,
          labelText: labelText,
        ));
  }
}

class _EasyInputText extends StatefulWidget {
  const _EasyInputText({
    super.key,
  });

  @override
  State<_EasyInputText> createState() => _EasyInputTextState();
}

class _EasyInputTextState extends State<_EasyInputText> {
  bool _isValid = false;
  final _formKey = GlobalKey<FormState>();

  String? validateNoEmpty(String? value) {
    if (value == null || value.isEmpty) {
      return 'field is empty (Validator)';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            validator: validateNoEmpty,
            decoration: InputDecoration(
                suffixIcon: _isValid ? const Icon(Icons.check) : null,
                enabled: true,
                hintText: 'hint',
                helperText: 'helper',
                labelText: 'label',
                counterText: 'counter'),
          ),
          const SizedBox(width: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _isValid = true;
                    setState(() {});
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Input is valid')),
                    );
                  } else {
                    _isValid = false;
                    setState(() {});
                  }
                },
                child: const Text('validar'),
              ),
              const SizedBox(width: 20),
              OutlinedButton(
                onPressed: () {
                  _isValid = false;
                  setState(() {});
                  _formKey.currentState!.reset();
                },
                child: Text('Reset'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
