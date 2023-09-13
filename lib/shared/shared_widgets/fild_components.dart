import 'package:flutter/material.dart';
import 'package:rev_app/constants/constants.dart';

enum FieldType { email, password, text }

class FieldModel {
  final String? labelTxt;
  final String? hintTxt;
  final IconData? icon;
  final TextInputType? type;
  TextEditingController? controller;
  bool? isSecure;
  final FieldType? fieldType;
  bool? enabled;
  final Key? key;
  Function? onsumbit = () {};

  FieldModel(
      {this.labelTxt = '',
      this.hintTxt = '',
      this.icon,
      this.type,
      this.controller,
      this.isSecure = false,
      this.fieldType = FieldType.text,
      this.enabled = true,
      this.onsumbit,
      this.key});
}

class CustomField extends StatefulWidget {
  final FieldModel model;
  const CustomField(this.model, {super.key});

  @override
  State<CustomField> createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        // showCursor: true,
        //  readOnly: true,
        key: widget.model.key,
        validator: (x) {
          if (x!.isEmpty) {
            return 'This Field Required';
          }
        },
        decoration: InputDecoration(
          fillColor:Constants.kMaintBlueColor,
          hoverColor: Constants.kMaintBlueColor,
          border: UnderlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(25)),
           focusColor:Constants.kMaintBlueColor,
           filled: true,
        //  // enabledBorder: InputBorder.none,
        //     border: fieldBorder(Constants.kGreyColor),
        //     errorBorder: fieldBorder(Colors.red),
        //     focusedBorder: fieldBorder(Constants.kGreyColor),
        //     focusedErrorBorder: fieldBorder(Colors.red),
        //     disabledBorder: fieldBorder(Colors.transparent),
            prefixIcon: Icon(widget.model.icon, color: Constants.kGreyColor),
            labelText: widget.model.labelTxt,
            labelStyle: Constants.TsubGreyFont,
            hintText: widget.model.hintTxt,
            hintStyle: Constants.TsubGreyFont,
            suffixIcon: widget.model.fieldType == FieldType.password
                ? IconButton(
                    icon: const Icon(Icons.remove_red_eye),
                    color: Constants.kGreyColor,
                    iconSize: 20.0,
                    onPressed: () {
                      setState(() {
                        widget.model.isSecure = !widget.model.isSecure!;
                      });
                    },
                  )
                : null),
        keyboardType: widget.model.type,
        controller: widget.model.controller,
        obscureText: widget.model.isSecure!,
        enabled: widget.model.enabled,
        onFieldSubmitted: (x) {
          widget.model.onsumbit!();
        },
      ),
    );
  }
}

OutlineInputBorder fieldBorder(Color color) {
  return OutlineInputBorder(
  
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(color: color,width: 0 ));
}
