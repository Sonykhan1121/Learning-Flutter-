import 'package:my_daily_task/features/domain/entities/task_entity.dart';

abstract class LocalRepository{
  Future<void> addNewTask(TaskEntity task);
  Future<void> deleteTask(TaskEntity task);
  Future<void> updateTask(TaskEntity task);
  Future<void> getAllTasks();
  Future<void> getNotification(TaskEntity task);
  Future<void> turnOnNotification(TaskEntity task);
  Future<void> openDatabase();
}
