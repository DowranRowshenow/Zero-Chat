import 'package:flutter/material.dart';

import '../helpers/constants.dart' as constants;

class AddClientForm extends StatelessWidget {
  const AddClientForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();

    String firstName = "";
    String lastName = "";

    return AlertDialog(
      backgroundColor: constants.themeManager.alertColor(),
      scrollable: true,
      title: const Text("Add New Client"),
      content: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  const Text("First Name: "),
                  Container(padding: const EdgeInsets.fromLTRB(0, 5, 0, 0)),
                ],
              ),
              Flexible(
                child: Column(
                  children: [
                    TextField(
                      controller: firstNameController,
                      autocorrect: false,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration.collapsed(
                        hintText: "",
                        hintStyle: TextStyle(),
                      ),
                      onChanged: (value) {
                        if (value.length <= 50) {
                          firstName = value;
                        } else {
                          firstNameController.text = firstName;
                        }
                      },
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide()),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  const Text("Last Name: "),
                  Container(padding: const EdgeInsets.fromLTRB(0, 5, 0, 0)),
                ],
              ),
              Flexible(
                child: Column(
                  children: [
                    TextField(
                      controller: lastNameController,
                      autocorrect: false,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration.collapsed(
                        hintText: "",
                        hintStyle: TextStyle(),
                      ),
                      onChanged: (value) {
                        if (value.length <= 50) {
                          lastName = value;
                        } else {
                          lastNameController.text = lastName;
                        }
                      },
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide()),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        TextButton(
          child: const Text("Save"),
          onPressed: () {
            Navigator.of(context).pop(false);
          },
        ),
      ],
    );
  }
}
