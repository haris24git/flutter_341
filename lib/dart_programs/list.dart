void main(){

    List<String> arrNames = ["Rajeev","Raghav"];
    List<dynamic> arrName = ["Rajeev","Raghavendra", 1,2];
    print(arrNames);
    print(arrName);

    arrName.add("Haris");
    print(arrName);
    print(arrName[1]);

    List<String> arrNewNames =["Haris", "Raunak", "Ravi"];
    arrNames.addAll(arrNewNames);
    print(arrNames);

    arrNames.insert(1, "Asif");
    print(arrNames);

    arrNames.remove("Raghav");
    print(arrNames);

    arrNames.removeAt(4);
    print(arrNames);

}
