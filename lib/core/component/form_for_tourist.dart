import 'package:flutter/material.dart';
import 'package:guru/core/component/custom_text_form_field.dart';
import 'package:guru/core/utils/colors_app.dart';
import 'package:guru/core/utils/custom_text_button.dart';
import 'package:guru/core/utils/styles.dart';

class FormForTourist extends StatelessWidget {
  const FormForTourist({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Register As Tourist"),
          centerTitle: true,
        ),

        body: Padding(
           padding: const EdgeInsets.all(30),
          child: Form(
            //formKey
            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                CustomTextFormField(
                  hintText: "Enter Your Name",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    if (value.length < 3) {
                      return 'Name must be at least 3 characters long';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  hintText: "Enter Your Phone Number",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    if (value.length != 10) {
                      // Adjust length as per your requirement
                      return 'Phone number must be exactly 10 digits';
                    }
                    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                      return 'Phone number must contain only digits';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  hintText: "Enter your Country",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Country';
                    }
                    if (value.length < 3) {
                      return 'Country must be at least 3 characters long';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  hintText: "Enter Places Want To Visit In Egypt",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Places Want To Visit In Egypt';
                    }
                    if (value.length < 3) {
                      return 'Places must be at least 3 characters long';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: AppTextButton(
                    buttonText: 'Create',
                    textStyle:
                    Styles.font14LightGreyRegular(context),
                    backgroundColor: ColorsApp.darkPrimary,
                    onPressed: () {
                      //validateThenDoAddDepartment(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
