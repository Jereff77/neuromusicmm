// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

List<ListItemsStruct> reorderItems(
  int totalItems,
  int itemToMove,
  int newPosition,
  List<ListItemsStruct> listaActual,
) {
  // reorder list(items,total,move,newPos). Shift item to new position. Item:{number,id}
  if (itemToMove == newPosition ||
      itemToMove < 0 ||
      itemToMove >= totalItems ||
      newPosition < 0 ||
      newPosition >= totalItems) {
    // Invalid input, return original list
    return listaActual;
  }

  // Get the item to move
  final item = listaActual[itemToMove];

  // Remove the item from the list
  final newList = List<ListItemsStruct>.from(listaActual)..removeAt(itemToMove);

  // Insert the item at the new position
  newList.insert(newPosition, item);

  return newList;
}
