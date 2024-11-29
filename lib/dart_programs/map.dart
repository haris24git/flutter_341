void main(){

    Map<String,dynamic> mStudent = {

      "name": "Haris",
      "age":   16,
      "Fee":   true

    };

    print(mStudent);

    mStudent["name"] = "Rajeev";
    print(mStudent);

    mStudent["email"] = "haris@gmail.com";
    print(mStudent);

    mStudent.remove("Fee");
    print(mStudent);
}