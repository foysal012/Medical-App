import 'package:flutter/material.dart';

class LiveDoctorCommentModelClass{
  String? cimgurl;
  String? cname;
  String? ccomment;

  LiveDoctorCommentModelClass({this.cimgurl, this.cname, this.ccomment});

  static final commentListofLiveDoctor = [

    LiveDoctorCommentModelClass(
      cimgurl: "https://images.pexels.com/photos/3586091/pexels-photo-3586091.jpeg?cs=srgb&dl=pexels-tain%C3%A1-bernard-3586091.jpg&fm=jpg",
      ccomment: "Thanks for sharing doctor ❤",
      cname: "Everhart Tween"
    ),
    LiveDoctorCommentModelClass(
      cimgurl: "https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/short/linkedin-profile-picture-maker/dummy_image/thumb/004.webp",
      ccomment: "They treat immune system disorders",
      cname: "Bonebrake Mash"
    ),
    LiveDoctorCommentModelClass(
      cimgurl: "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg",
      ccomment: "This is the largest directory 👍",
      cname: "Handler Wack"
    ),
    LiveDoctorCommentModelClass(
      cimgurl: "https://fixthephoto.com/blog/images/uikit_slider/portrait-retouching-service-by-fixthephoto-before_1680478912.jpg",
      ccomment: "Depending on their education 🥎",
      cname: "Comfort Love"
    ),

  ];
}