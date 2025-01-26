class TaskEntity {
  int? id;
  final String? title;
  final String? colorIndex;
  final String? time;
  final bool? isCompleteTask;
  final String? isNotification;

  TaskEntity({
    this.id,
    this.title,
    this.colorIndex,
    this.time,
    this.isCompleteTask,
    this.isNotification,
  });
}
