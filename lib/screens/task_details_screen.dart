import 'package:flutter/material.dart';
import 'package:todo_app_challange/models/task_model.dart';

class TaskDetailsScreen extends StatefulWidget {
  const TaskDetailsScreen({super.key, required this.taskModel});
  final TaskModel taskModel;
  @override
  State<TaskDetailsScreen> createState() => _TaskDetailsScreenState();
}

class _TaskDetailsScreenState extends State<TaskDetailsScreen> {
  @override
  void initState() {
    fetchData();
    super.initState();
  }

  fetchData() {
    print("WLCOME IN DETAILS");
  }

  @override
  void setState(VoidCallback fn) {
    print("USER SET STATE");
    super.setState(fn);
  }

  @override
  void dispose() {
    print("BYE FROM DETAILS");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.taskModel.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "تم اضافة هذه المهمة في  ${widget.taskModel.createdAt.toString().substring(0, 10).replaceAll('-', '/')} في الساعة${widget.taskModel.createdAt.toString().substring(10, 16)}",
              style: const TextStyle(fontSize: 16),
            ),
            Icon(widget.taskModel.isDone ? Icons.check : Icons.cancel_outlined,
                color: widget.taskModel.isDone ? Colors.green : Colors.red,
                size: size.width * 0.5)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
      ),
    );
  }
}
