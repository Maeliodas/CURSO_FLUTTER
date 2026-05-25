import 'package:flutter/material.dart';

class SecondClass extends StatefulWidget {
  @override
  _SecondClassState createState() => _SecondClassState();
}

class _SecondClassState extends State<SecondClass> {
  String maritalStatus = 'soltero';
  bool termsChecked = true;

  String? selectedLocation;

  List<String> locations = ['A', 'B', 'C', 'D'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        title: const Center(
          child: Text('Registro'),
        ),
        actions: const <Widget>[
          Icon(Icons.settings),
        ],
      ),
      body: Material(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Ingrese su nombre',
                      hintText: 'Nombre',
                    ),
                  ),

                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Edad',
                      labelText: 'Ingrese su edad',
                    ),
                    keyboardType: TextInputType.number,
                  ),

                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Contraseña',
                      labelText: 'Ingrese su contraseña',
                    ),
                  ),

                  /// Dropdown
                  DropdownButton<String>(
                    hint: const Text(
                      'Seleccione la ciudad donde vive',
                    ),
                    value: selectedLocation,
                    items: locations.map((location) {
                      return DropdownMenuItem(
                        value: location,
                        child: Text(location),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        selectedLocation = value;
                      });
                    },
                  ),

                  /// Radios
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Expanded(
                        child: RadioListTile<String>(
                          title: const Text('Soltero'),
                          value: 'soltero',
                          groupValue: maritalStatus,
                          onChanged: (value) {
                            setState(() {
                              maritalStatus = value!;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile<String>(
                          title: const Text('Casado'),
                          value: 'casado',
                          groupValue: maritalStatus,
                          onChanged: (value) {
                            setState(() {
                              maritalStatus = value!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),

                  /// Checkbox
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    value: termsChecked,
                    title: const Text(
                      'Deseo suscribirme al periódico y recibir artículos relacionados',
                    ),
                    onChanged: (value) {
                      setState(() {
                        termsChecked = value!;
                      });
                    },
                  ),

                  /// Botón
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      debugPrint("Registro enviado");
                    },
                    child: const Text('Registrarse'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}