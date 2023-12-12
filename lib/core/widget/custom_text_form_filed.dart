import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatefulWidget {
  const CustomTextFormFiled({
    super.key,
    required this.onChanged,
    required this.validate,
 //   this.index,
    required this.isPassword,
    required this.controller,
  });
  final Function(String) onChanged;
  final String? Function(String?) validate;
  final TextEditingController controller;

  final bool isPassword;

  @override
  State<CustomTextFormFiled> createState() => _CustomTextFormFiledState();
}

class _CustomTextFormFiledState extends State<CustomTextFormFiled> {
  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      style: const TextStyle(color: Colors.black),
      cursorColor: Colors.black,
      cursorWidth: 1.5,
      obscureText: widget.isPassword == true ? isShowPassword : false,
      validator: widget.validate,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
            
       
     
        suffixIcon: widget.isPassword == true
            ? IconButton(
                icon: Icon(
                  isShowPassword == true
                      ? Icons.visibility_off
                      : Icons.visibility,
                      size: 22,
                      color: Color(0xffEDB60D),
                ),
                onPressed: () {
                  isShowPassword = !isShowPassword;
                  setState(() {});
                },
              )
            : const SizedBox(),
        filled: true, //<-- SEE HERE
        fillColor:const Color(0xff0000001a),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide:const  BorderSide(
            color:Color(0xffEDB60D),
            width: 1,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 1,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color:Color(0xffEDB60D),
            // Color(0xff9E9E9E),
            width: 1,
          ),
        ),
      ),
    );
  }
}
