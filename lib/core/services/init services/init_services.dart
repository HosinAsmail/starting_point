import 'package:starting_point/core/functions/init_get_it.dart';
import 'package:starting_point/data/data%20source/locale/store_step_service.dart';

abstract class InitServices {
  static Future<void> init() async {
    initGetIt();
    await getIt.get<StoreStepService>().initSharedPreference();
    // StoreStepService().setStep('1');
  }
}
