class Elixir{
  final int id;
  final String name;

  const Elixir({required this.id,required this.name});


  factory Elixir.fromJson(Map<String,dynamic> map){
    return Elixir(
        id : map["id"],
        name : map["name"]
    );
  }

}