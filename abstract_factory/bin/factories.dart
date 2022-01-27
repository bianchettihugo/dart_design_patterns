import 'button.dart';
import 'dialog.dart';
import 'input.dart';

abstract class GUIFactory {
  const GUIFactory();

  Dialog createDialog();

  Button createButton();

  Input createInput();

}

class WindowsGUIFactory extends GUIFactory {
  const WindowsGUIFactory();

  @override
  Button createButton() => WindowsButton();

  @override
  Dialog createDialog() => WindowsDialog();

  @override
  Input createInput() => WindowsInput();
}

class LinuxGUIFactory extends GUIFactory {
  const LinuxGUIFactory();

  @override
  Button createButton() => LinuxButton();

  @override
  Dialog createDialog() => LinuxDialog();

  @override
  Input createInput() => LinuxInput();
}

class MacosGUIFactory extends GUIFactory {
  const MacosGUIFactory();

  @override
  Button createButton() => MacosButton();

  @override
  Dialog createDialog() => MacosDialog();

  @override
  Input createInput() => MacosInput();
}