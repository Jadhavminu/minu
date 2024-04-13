
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
// TODO: implement createState

}


class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  late String firstName;
  late String lastName;
  late String mobile;
  late String email;
  late String Address;
  List dropDownListData = [
    {"title": "UP ", "value": "1"},
    {"title": "Maharashtra MH", "value": "2"},
    {"title": "Goa", "value": "3"},
  ];

  String selectedCourseValue = "";

  List dropDownListDatacity = [
    {"title": "Bhokar", "value": "1"},
    {"title": "Hydrabad", "value": "2"},
    {"title": "Pune", "value": "3"},
  ];

  String selectedValueCity = "";

  List dropDownListDataD = [
    {"title": "Nashik", "value": "1"},
    {"title": "Nanded", "value": "2"},
    {"title": "Parbhani", "value": "3"},
  ];

  String selectedValueDistrict= "";

  List dropDownListDatagender = [
    {"title": "Male", "value": "1"},
    {"title": "Female", "value": "2"},
    {"title": "Other", "value": "3"},
  ];

  String selectedValueGender = "";

  File? _image;

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);

    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      } else {
        print('No image selected.');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration_Page'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // CircleAvatar(
                //   radius: 40,
                //   backgroundImage: _image != null ? FileImage(_image!) : null,
                //   child: _image == null
                //       ? const Icon(Icons.person, size: 50)
                //       : null,
                // ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () => _pickImage(ImageSource.camera),
                      child: const Text('Camera'),
                    ),
                    const SizedBox(width: 5), // Add some spacing between the buttons
                    ElevatedButton(
                      onPressed: () => _pickImage(ImageSource.gallery),
                      child: const Text('Gallery'),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    contentPadding: const EdgeInsets.all(10),
                    //  icon: new Icon(Icons.person),
                    labelText: 'First Name',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your first name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    firstName = value!;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  validator: (value) {
                    if (value! .isEmpty) {
                      return 'Please enter your last name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    lastName = value!;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    contentPadding: const EdgeInsets.all(10),
                    //icon: new Icon(Icons.phone),
                    labelText: 'Mobile',
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your mobile number';
                    }
                    if (value.length != 10) {
                      return 'Mobile number must be 10 digits';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    mobile = value!;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    contentPadding: const EdgeInsets.all(10),
                    //  icon: new Icon(Icons.email),
                    labelText: 'Email',
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!value.contains('@')) {
                      return 'Invalid email';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    email = value!;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    contentPadding: const EdgeInsets.all(10),
                    labelText: 'Address',
                  ),
                  validator: (value) {
                    if (value! .isEmpty) {
                      return 'Please enter your Address';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    Address = value!;
                  },
                ),

                const SizedBox(
                  height: 10,
                ),
                InputDecorator(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: selectedCourseValue,
                      isDense: true,
                      isExpanded: true,
                      menuMaxHeight: 350,
                      items: [
                        const DropdownMenuItem(
                            value: "",
                            child: Text(
                              "Select State",
                            )
                        ),
                        ...dropDownListData.map<DropdownMenuItem<String>>((e) {
                          return DropdownMenuItem(
                              value: e['value'],
                              child: Text(e['title']));
                        }).toList(),
                      ],
                      onChanged: (newValue) {
                        setState(
                              () {
                            selectedCourseValue = newValue!;
                            // print(selectedCourseValue);
                          },
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InputDecorator(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: selectedValueCity,
                      isDense: true,
                      isExpanded: true,
                      menuMaxHeight: 350,
                      items: [
                        const DropdownMenuItem(
                            value: "",
                            child: Text(
                              "Select City",
                            )
                        ),
                        ...dropDownListDatacity.map<DropdownMenuItem<String>>((e) {
                          return DropdownMenuItem(
                              value: e['value'],
                              child: Text(e['title']));
                        }).toList(),
                      ],
                      onChanged: (newValue) {
                        setState(
                              () {
                            selectedValueCity = newValue!;
                            // print(selectedValuee);
                          },
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InputDecorator(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: selectedValueDistrict,
                      isDense: true,
                      isExpanded: true,
                      menuMaxHeight: 350,
                      items: [
                        const DropdownMenuItem(
                            value: "",
                            child: Text(
                              "Select District",
                            )
                        ),
                        ...dropDownListDataD.map<DropdownMenuItem<String>>((e) {
                          return DropdownMenuItem(
                              value: e['value'],
                              child: Text(e['title']));
                        }).toList(),
                      ],
                      onChanged: (newValue) {
                        setState(
                              () {
                            selectedValueDistrict = newValue!;
                            //print(selectedValuee);
                          },
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InputDecorator(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: selectedValueGender,
                      isDense: true,
                      isExpanded: true,
                      menuMaxHeight: 350,
                      items: [
                        const DropdownMenuItem(
                            value: "",
                            child: Text(
                              "Select Gender",
                            )
                        ),
                        ...dropDownListDatagender.map<DropdownMenuItem<String>>((e) {
                          return DropdownMenuItem(
                              value: e['value'],
                              child: Text(e['title']));
                        }).toList(),
                      ],
                      onChanged: (newValue) {
                        setState(
                              () {
                            selectedValueGender = newValue!;
                            // print(selectedValuee);
                          },
                        );
                      },
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                      // Submit the form data to backend or perform desired actions.
                      // You can access the form data using the variables defined above.
                    }
                  },
                  child: const Text('Register'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: RegisterPage(),
  ));
}


































// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const RegisterPage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
//
// class RegisterPage extends StatefulWidget {
//
//   const RegisterPage({super.key});
//
//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }
//
// class _RegisterPageState extends State<RegisterPage> {
//   // String nameSate='';
//   // final _states=['MH','UP','MP','AP','Bihar'];
//   //create the controllers
//   final _formKey = GlobalKey<FormState>();
//
//   List dropDownListData = [
//     {"title": "Maharashtra", "value": "1"},
//     {"title": "Karnataka", "value": "2"},
//     {"title": "AndhraPradesh", "value": "3"},
//   ];
//
//   String selectedCourseValue = "";
//
//   List dropDownListDatacity = [
//     {"title": "Nanded", "value": "1"},
//     {"title": "Parbhani", "value": "2"},
//     {"title": "Pune", "value": "3"},
//   ];
//
//   String selectedValueCity = "";
//
//   List dropDownListDataD = [
//     {"title": "Nashik", "value": "1"},
//     {"title": "Aurangabad", "value": "2"},
//     {"title": "Kolhapur", "value": "3"},
//   ];
//
//   String selectedValueDistrict= "";
//
//   List dropDownListDatagender = [
//     {"title": "Male", "value": "1"},
//     {"title": "Female", "value": "2"},
//     {"title": "Other", "value": "3"},
//   ];
//
//   String selectedValueGender = "";
//   TextEditingController nameController = TextEditingController();
//   TextEditingController lastController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController mobileController = TextEditingController();
//   TextEditingController addressController = TextEditingController();
//   TextEditingController genderController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//
//         title: const Text('Registration Page'),
//       ),
//       //for the form to be in center
//       body:
//       Center(
//         child: Container(
//
//           padding: const EdgeInsets.all(20),
//           child: ListView(
//             shrinkWrap: true,
//             children: [
//               const Text('First'),
//               const SizedBox(
//                 height: 5,
//               ),
//
//
//               TextField(
//                 controller: nameController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: 'Enter Name',
//                 ),
//               ),
//
//               //some space between name and email
//               const SizedBox(
//                 height: 10,
//               ),
//               const Text('Last'),
//               const SizedBox(
//                 height: 5,
//               ),
//               TextField(
//                 controller: lastController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: 'Enter Your Last Name',
//                 ),
//               ),
//               //some space between email and mobile
//               const SizedBox(
//                 height: 10,
//               ),
//               const Text('Email'),
//               const SizedBox(
//                 height: 5,
//               ),
//               TextField(
//                 controller: emailController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: 'Enter Your Email',
//                 ),
//               ),
//               //some space between email and mobile
//               const SizedBox(
//                 height: 10,
//               ),
//               const Text('Mobile'),
//               const SizedBox(
//                 height: 5,
//               ),
//               TextField(
//                 controller: mobileController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: 'Enter Your Mobile',
//                 ),
//
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Text('Gender'),
//               const SizedBox(
//                 height: 5,
//               ),
//               TextField(
//                 controller: genderController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: 'Enter Your Gender',
//                 ),
//
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Text('Address'),
//               const SizedBox(
//                 height: 5,
//               ),
//               TextField(
//                 controller: addressController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: 'Enter Your Address',
//                 ),
//
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               //create button for register
//               ElevatedButton(
//                 onPressed: () {
//                   //we will trying to print input
//                   print(nameController.text);
//                   print(emailController.text);
//                   print(mobileController.text);
//                   print(addressController.text);
//                   print(genderController.text);
//                 },
//                 child: const Text(
//                   'Register',
//                   style: TextStyle(
//                     fontSize: 30,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//
//         ),),
//
//     );
//   }
// }
