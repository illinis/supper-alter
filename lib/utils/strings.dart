import 'package:flutter/material.dart';

extension StringExtension on String {
  String toCapitalized({TextCapitalization? capitalization}) {
    switch (capitalization) {
      case TextCapitalization.characters:
        return toUpperCase();
      case TextCapitalization.words:
        // Capitalize first letter of each word
        return split(' ').map((word) {
          if (word.trim().isNotEmpty) {
            return "${word[0].toUpperCase()}${word.substring(1).toLowerCase()}";
          }
          return '';
        }).join(" ");
      case TextCapitalization.sentences:
      default:
        return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
    }
  }
}
