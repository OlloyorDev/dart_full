void main() {
  final instance = Audi();
  print(instance.closeEyes());
  instance.extensionOn();
  print('nehaue');
}

class Bmw {
  name() {
    return 'My name is BMW';
  }

  model() {
    return 'My model M5';
  }
}

class Kia extends Bmw {}

class Chevrolet extends Kia with CleanNer {
  @override
  String model() {
    return super.model();
  }

  @override
  name() {
    // TODO: implement name
    throw UnimplementedError();
  }

  @override
  someThinkFunction() {
    // TODO: implement someThinkFunction
    return super.someThinkFunction();
  }
}

mixin CleanNer {
  someThinkFunction() {}
}

mixin Master<Bmw> {
  closeEyes() {
    return print('close Eyes');
  }
}

class Audi with Master {
  @override
  closeEyes() {
    return super.closeEyes();
  }
}

extension AudiX on Audi {
  extensionOn() {
    print('Extension');
  }
}

class Lada implements Bmw, Byd, Spark {
  @override
  model() {
    // TODO: implement model
    throw UnimplementedError();
  }

  @override
  name() {
    // TODO: implement name
    throw UnimplementedError();
  }

  @override
  news() {
    // TODO: implement news
    throw UnimplementedError();
  }

  @override
  small() {
    // TODO: implement small
    throw UnimplementedError();
  }
}

class Byd {
  news() {}
}

class Spark {
  small() {}
}
