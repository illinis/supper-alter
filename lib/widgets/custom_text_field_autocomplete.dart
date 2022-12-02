import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextFieldAutocomplete extends StatefulWidget {
  const CustomTextFieldAutocomplete({super.key});

  @override
  State<CustomTextFieldAutocomplete> createState() => _CustomTextFieldAutocompleteState();
}

class _CustomTextFieldAutocompleteState extends State<CustomTextFieldAutocomplete> {
  static const List<String> _kOptions = <String> [
    'aba',
    'beta',
    'ceta',
    'deta',
    'eta',
    'kappa'
  ];
  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if(textEditingValue.text  ==  ''){
          return const Iterable<String>.empty();
        }
        return _kOptions.where((String option){
          return option.contains(textEditingValue.text.toUpperCase());
        });
      },
      
    );
  }
}
// CustomTextField(
//                             controller: _nameController,
//                             textInputAction: TextInputAction.next,
//                             labelText: "Descrição",
//                             hintText: "Lorem ipsum",
//                             prefixIcon: const Icon(Icons.notes),
//                             maxLines: 3,
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Entre um código válido';
//                               }
//                               return null;
//                             },
//                           )