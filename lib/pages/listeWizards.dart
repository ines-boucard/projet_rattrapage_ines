import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'dart:convert';

import '../models/wizard_model.dart';

late Future<List<Wizard>> listeWizard;
Future<List<Wizard>> fetchWizards()async{
  final response=await http.get(Uri.parse("https://wizard-world-api.herokuapp.com/Wizards"));
  if(response.statusCode == 200){
    return jsonDecode(response.body).map((data)=>Wizard.fromJson(data)).toList();
  }
  else{
    throw Exception("failed to load Wizard");
  }
}

class ListWizardPage extends StatefulWidget {
 const ListWizardPage({Key? key}) : super(key: key);
 @override
  State<ListWizardPage> createState()=>_ListWizardStatePage();
}

class _ListWizardStatePage extends State<ListWizardPage>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listeWizard = fetchWizards();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<List<Wizard>>(
          future: listeWizard,
          builder:(context,snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(snapshot.data![1].firstName),
                ],
              );
            }
            return const CircularProgressIndicator();
          }
        ),
      ),

    );
  }
}