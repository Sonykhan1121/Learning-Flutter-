import 'package:my_daily_task/features/domain/entities/task_entity.dart';
import 'package:my_daily_task/features/domain/repositories/local_repository.dart';

class TurnOnNotificationUsecase {
  final LocalRepository? localRepository;
  TurnOnNotificationUsecase({this.localRepository});
  Future<void>? call(TaskEntity task){
    return localRepository?.turnOnNotification(task);
  }
}