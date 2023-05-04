import 'elixir_model.dart';

class Wizard{
  final int id;
  final String firstName;
  final String lastName;
  final List<Elixir> elixirs;

  const Wizard({required this.id,required this.firstName,required this.lastName, required this.elixirs});

  factory Wizard.fromJson(Map<String,dynamic> map){
    return Wizard(
        id : map["id"],
        firstName : map["name"],
        lastName : map["lastName"],
        elixirs: map["elixirs"].map((data)=>Elixir.fromJson(data)).toList()

    );
  }
}

