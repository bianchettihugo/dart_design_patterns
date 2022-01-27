abstract class Dialog {
  void render();
}

class WindowsDialog extends Dialog{
  @override
  void render() {
    print("Dialog do Windows");
  }
}

class LinuxDialog extends Dialog{
  @override
  void render() {
    print("Dialog do Linux");
  }
}


class MacosDialog extends Dialog{
  @override
  void render() {
    print("Dialog do MacOS");
  }
}
