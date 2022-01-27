import 'factories.dart';

enum SystemOS {
  windows,
  linux,
  macos
}

extension SystemOSExtension on SystemOS {
  GUIFactory get guiFactory {
    switch (this) {
      case SystemOS.windows:
        return const WindowsGUIFactory();
      case SystemOS.macos:
        return const MacosGUIFactory();
      case SystemOS.linux:
        return const LinuxGUIFactory();
    }
  }
}


void createInterface(SystemOS currentOS) {
  currentOS.guiFactory.createButton().render();
  currentOS.guiFactory.createInput().render();
  currentOS.guiFactory.createDialog().render();
}

void main(List<String> arguments) {

  // Windows GUI
  SystemOS currentOS = SystemOS.windows;
  createInterface(currentOS);
  print('\n\n');

  // Linux GUI
  currentOS = SystemOS.linux;
  createInterface(currentOS);
  print('\n\n');

  // MacOS GUI
  currentOS = SystemOS.macos;
  createInterface(currentOS);
  print('\n\n');

}
