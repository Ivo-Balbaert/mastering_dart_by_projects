library bootstrap;

import 'package:web_ui/watcher.dart' as watcher;
import 'package:logging/logging.dart';
import 'first_web_ui.dart' as userMain;

main() {
  watcher.useObservers = true;
  Logger.root.onRecord.listen((record) {
    print('${record.level.name.toLowerCase()}: ${record.message}');
  });
  userMain.main();
  userMain.init_autogenerated();
}
