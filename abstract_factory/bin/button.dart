abstract class Button {
  void render();

  void onClick();
}

class WindowsButton extends Button {
  @override
  void onClick() {
    print("Windows button click");
  }

  @override
  void render() {
    print("Botão do Windows");
  }
}

class LinuxButton extends Button {
  @override
  void onClick() {
    print("Linux button click");
  }

  @override
  void render() {
    print("Botão do Linux");
  }
}

class MacosButton extends Button {
  @override
  void onClick() {
    print("MacOS button click");
  }

  @override
  void render() {
    print("Botão do MacOS");
  }
}