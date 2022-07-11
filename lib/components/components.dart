import 'package:flutter/material.dart';
Widget  buildTextFormField(controller,hint,) {
  return SizedBox(
    height: 50,
    child: TextFormField(
      focusNode: FocusNode(),
      cursorColor: Colors.black,
      style:const TextStyle(
          fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold
      ),
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText:hint,
        hintStyle:const TextStyle(
            fontSize: 14,color: Colors.grey
        ),
        filled: true,
        fillColor: Colors.black12,
        enabledBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:const BorderSide(
                width: 1,color: Colors.black12
            )
        ),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:const BorderSide(
                width: 1,color: Colors.black12
            )),
        focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:const BorderSide(
                width: 1,color: Colors.black12
            )),
      ),
    ),
  );
}