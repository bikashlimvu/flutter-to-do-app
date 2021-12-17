import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallback;
  final Function deleteTaskCallback;

  TaskTile(
      {this.taskTitle,
      this.isChecked,
      this.checkboxCallback,
      this.deleteTaskCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTaskCallback,
      leading: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          fontSize: 18.0,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}

// class TaskTile extends StatefulWidget {
//   @override
//   _TaskTileState createState() => _TaskTileState();
// }

// class _TaskTileState extends State<TaskTile> {
//   bool isChecked = false;

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Text(
//         'Buy Milk',
//         style: TextStyle(
//           decoration: isChecked ? TextDecoration.lineThrough : null,
//           fontSize: 18.0,
//           fontWeight: FontWeight.w400,
//         ),
//       ),
//       trailing: TaskCheckbox(
//         checkboxState: isChecked,
//         toggleCheckboxState: (bool checkboxState) {
//           setState(() {
//             isChecked = checkboxState;
//           });
//         },
//       ),
//     );
//   }
// }

// class TaskCheckbox extends StatelessWidget {
//   final bool checkboxState;
//   final Function toggleCheckboxState;

//   TaskCheckbox({this.checkboxState, this.toggleCheckboxState});

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: checkboxState,
//       onChanged: toggleCheckboxState,
//     );
//   }
// }
