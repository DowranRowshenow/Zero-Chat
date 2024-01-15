import 'package:flutter/material.dart';

import '../components/client._item.dart';
import '../components/top_bar.dart';
import '../forms/add_client_form.dart';
import '../helpers/size_config.dart';
import '../helpers/constants.dart' as constants;

class ClientsMenu extends StatefulWidget {
  const ClientsMenu({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ClientsMenuState createState() => _ClientsMenuState();
}

class _ClientsMenuState extends State<ClientsMenu> {
  @override
  void dispose() {
    constants.themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    constants.themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          return await showDialog(
            context: context,
            builder: (BuildContext context) {
              return const AddClientForm();
            },
          );
        },
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverElevation: 0,
        highlightElevation: 0,
        elevation: 0.5,
        backgroundColor: constants.themeManager.accentColor(),
        child: Icon(
          Icons.add,
          color: constants.themeManager.textColor(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TopBar(),
          Row(
            children: const [
              Text(
                "1 clients found",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Row(
            children: const [],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(constants.borderRadius),
              color: constants.themeManager.drawerColor(),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: const [
                          Text("Id"),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                      Row(
                        children: const [
                          Text("Last Name"),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                      Row(
                        children: const [
                          Text("First Name"),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                      Row(
                        children: const [
                          Text("Date Joined"),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                      Row(
                        children: const [
                          Text("Status"),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                      Row(
                        children: const [
                          Text("Actions"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          const ClientItem(),
        ],
      ),
    );
  }
}
