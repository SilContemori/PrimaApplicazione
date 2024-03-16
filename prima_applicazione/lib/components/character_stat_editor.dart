import 'package:flutter/material.dart';

class CharacterStatEditor extends StatefulWidget{

  final String label;
  final int initialValue;

  const CharacterStatEditor({
    required this.label,
    required this.initialValue,
  });

  @override
  State<StatefulWidget> createState() => CharacterStatEditorState();
}

class CharacterStatEditorState extends State<CharacterStatEditor>{
  late int value;

  @override
  void initState() {
    value=widget.initialValue;
    super.initState();
  }

  void incrementValue(){
    setState(() {
      value+=1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        value.toString(),
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
        ),
      title: Text(widget.label),
      trailing: ElevatedButton(
        onPressed: incrementValue,
        child: Icon(
          Icons.add,
          size: 16,
          ),
      ),
    );  
  }

}