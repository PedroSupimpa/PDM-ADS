import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/task.dart';
import 'package:flutter_application_1/provider/task_provider.dart';
import 'package:flutter_application_1/view/task_list/delete_task_modal.dart';
import 'package:provider/provider.dart';

import '../../utils/date_formatter.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({required this.task, super.key, required this.onRemove});

  final Task task;
  final void Function(Task task) onRemove;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: task.status.color,
      key: Key('${task.id}tile'),
      child: Column(
        children: [
          Text(
            task.title,
            style: theme.textTheme.headlineLarge,
          ),
          Text(DateFormatter.formatDate(task.dueTo)),
          Text(task.status.name),
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const DeleteTaskModal(),
                ).then((mustDelete) {
                  if (mustDelete) {
                    Provider.of<TaskProvider>(context, listen: false)
                        .delete(task);
                  }
                });
              },
              icon: const Icon(Icons.delete))
        ],
      ),
    );
  }
}
