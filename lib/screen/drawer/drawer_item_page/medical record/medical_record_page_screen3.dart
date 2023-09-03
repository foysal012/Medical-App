import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class MedicalRecordPageScreen3 extends StatefulWidget {
  const MedicalRecordPageScreen3({Key? key}) : super(key: key);

  @override
  State<MedicalRecordPageScreen3> createState() => _MedicalRecordPageScreen3State();
}

class _MedicalRecordPageScreen3State extends State<MedicalRecordPageScreen3> {

   XFile? _courseImage;

   ImagePicker _picker = ImagePicker();

  void addImageFromCamera() async{

    _courseImage = await _picker.pickImage(source: ImageSource.camera);

    setState(() {

    });

  }

   void addImageFromGalarry() async{

     _courseImage = await _picker.pickImage(source: ImageSource.gallery);

     setState(() {

     });
   }

   File? _courseFile;

   void _pickFile() async{

     FilePickerResult? result = await FilePicker.platform.pickFiles(
       //allowMultiple: true,
     );

   }


  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: double.infinity,
        padding: EdgeInsets.only(
          top: 20,
          left: 10,
          right: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white
        ),
      child: Column(
        children: [

          Container(
            height: 3,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black38,
            ),
          ),

          SizedBox(height: 20,),

          Text("Add a record",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 22,
          ),
          ),

          SizedBox(height: 5,),

          AddRecordItem(
            onTap: () async{
              addImageFromCamera();
            },
            icon: Icons.camera_alt,
            title: "Take a photo",
          ),

          SizedBox(height: 5,),

          AddRecordItem(
            onTap: () async{
            addImageFromGalarry();
            },
            icon: Icons.photo,
            title: "Upload from gallery",
          ),

          SizedBox(height: 5,),

          AddRecordItem(
            onTap: (){

            },
            icon: Icons.file_present_outlined,
            title: "Upload files",
          ),

        ],
      ),
    );
  }
}

class AddRecordItem extends StatelessWidget {
   AddRecordItem({
    super.key,
     this.icon, this.title, this.onTap
  });

  IconData? icon;
  String? title;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon, color: Colors.black54,),

      title: Text("$title"),
    );
  }
}
