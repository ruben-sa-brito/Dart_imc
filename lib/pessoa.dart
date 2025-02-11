class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  Pessoa (String nome, double peso, double altura){
    this.nome = nome;
    this.peso = peso;
    this.altura = altura;
  }

  String get nome {
    return _nome[0].toUpperCase() + _nome.substring(1).toLowerCase();
  }

  double get altura {
    return _altura;
  }

  double get peso {
    return _peso;
  } 

  set nome(String nome) {
    _nome = nome;
  }

  set altura(double altura) {
    try {
      _altura = double.parse(altura.toStringAsFixed(2));
    } catch (e){
      print("Valor incorreto para altura.");
    }
  }

  set peso(double peso) {
    try {
      _peso = double.parse(peso.toStringAsFixed(2));
    } catch (e){
      print("Valor incorreto para peso.");
    }
  }

  @override
  String toString() {
    return _nome;
  }
}