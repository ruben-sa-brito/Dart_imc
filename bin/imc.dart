import 'package:imc/pessoa.dart';
import 'package:imc/utils.dart';

void main(List<String> arguments) {
  Pessoa joao = Pessoa('João', 75.0, 1.75);
  print(joao.peso);
  print(joao.altura);
  print(joao);
  print(calcularImc(joao));
}
