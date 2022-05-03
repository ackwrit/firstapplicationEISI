import 'package:flutter/material.dart';

class ImageRond extends StatefulWidget{
  String? image;
  double? size;
  ImageRond({required this.image, this.size});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ImageRondState();
  }

}

class ImageRondState extends State<ImageRond>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return bodyPage();
  }

  Widget bodyPage(){
    return Container(
      height: widget.size ?? 40,
      width: widget.size ?? 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: (widget.image == null)?const NetworkImage("https://firebasestorage.googleapis.com/v0/b/firstapplicationeisiawt.appspot.com/o/noPicture.jpeg?alt=media&token=dc1b7104-4bed-4884-9623-f21da8b1af5c"):NetworkImage(widget.image!),
          fit: BoxFit.fill
        )
      ),
    );
  }


}