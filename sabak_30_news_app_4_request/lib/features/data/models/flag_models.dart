class Flags {
  final String name;

  Flags({required this.name});
}

Flags us = Flags(name: 'assets/usa.webp');
Flags de = Flags(name: 'assets/de.webp');
Flags it = Flags(name: 'assets/it.png');
Flags ru = Flags(name: 'assets/ru.png');
Flags tr = Flags(name: 'assets/tr.png');

List<Flags> flagList = [us, de, it, ru, tr];
