void main(List<String> args) {
  Dialog dialog = WindowsDialog();
  dialog.render();

  dialog = WebDialog();
  dialog.render();
}

// abstract creator
abstract class Dialog {
  void render() {
    Button button = WindowsButton();
    button.render();
    print('Rendered $runtimeType');
  }

  Button createButton();
}

// concrete creator
class WindowsDialog extends Dialog {
  @override
  Button createButton() {
    return WindowsButton();
  }
}

// concrete creator
class WebDialog extends Dialog {
  @override
  Button createButton() {
    return WindowsButton();
  }
}

// abstract product
abstract class Button {
  void render();
  void onClick(String function);
}

// concrete product
class WindowsButton implements Button {
  @override
  void render() {
    print('Rendered $runtimeType');
  }

  @override
  void onClick(String function) {
    print(function);
  }
}

// concrete product
class HtmlButton implements Button {
  @override
  void render() {
    print('Rendered $runtimeType');
  }

  @override
  void onClick(String function) {
    print(function);
  }
}
