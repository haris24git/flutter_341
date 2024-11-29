void main(){

     List<Map<String,dynamic>> mStudents = [         // List
       {                                             //Map
         "name": "Haris",
         "age":   16,
         "email": "haris@gmail.com",
         "marks": {                                  //Map
             "hindi": 78,
             "english": 85,
              "maths":[78,90]                        // List
         }

       },
       {
         "name": "Raunak",
         "age":   16,
         "email": "raunak@gmail.com",
         "marks": {
           "hindi": 89,
           "english": 65,
           "maths":[81,89]
         }
       },
     ];

     print(mStudents);
     print(mStudents[1]["marks"]["maths"][0]);



}