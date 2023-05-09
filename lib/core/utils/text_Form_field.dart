// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final Widget icon;
  final String? Function(String?)? validator;
  final bool isPassword;
  final TextInputType textInputType;

  const CustomTextFormField(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.icon,
      required this.validator,
      this.isPassword = false,
      this.textInputType = TextInputType.name})
      : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: widget.controller,
        keyboardType: widget.textInputType,
        obscureText: widget.isPassword ? obscure : false,
        decoration: InputDecoration(
            hintText: widget.hintText,
            // label: Text(widget.labelText),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            suffix: widget.isPassword
                ? InkWell(
                    onTap: () {
                      setState(() {
                        obscure = !obscure;
                      });
                    },
                    child: Icon(
                        obscure ? CupertinoIcons.eye : CupertinoIcons.eye_slash,
                        color: Colors.grey),
                  )
                : const SizedBox(),
            prefixIcon: SizedBox(
              width: MediaQuery.of(context).size.width * .15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: widget.icon,
                  ),
                  const SizedBox(
                    height: 30,
                    child: VerticalDivider(
                      color: Colors.grey, //color of divider
                      width: 30, //width space of divider
                      thickness: 1, //thickness of divier line
                      indent: .5, //Spacing at the top of divider.
                      endIndent: .5, //Spacing at the bottom of divider.
                    ),
                  ),
                ],
              ),
            )),
        validator: widget.validator);
  }
}
