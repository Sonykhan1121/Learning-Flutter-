import 'package:my_daily_task/features/domain/entities/task_entity.dart';
import 'package:my_daily_task/features/domain/repositories/local_repository.dart';

class GetAllTaskUsecase {
  final LocalRepository? localRepository;
  GetAllTaskUsecase({this.localRepository});
  Future<void>? call(){
    return localRepository?.getAllTasks();
  }
}