abstract class Input {
  void render();
}

class WindowsInput extends Input{
  @override
  void render() {
    print("Input do Windows");
  }
}

class LinuxInput extends Input{
  @override
  void render() {
    print("Input do Linux");
  }
}


class MacosInput extends Input{
  @override
  void render() {
    print("Input do MacOS");
  }
}
