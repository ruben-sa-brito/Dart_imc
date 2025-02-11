import 'package:imc/pessoa.dart';
import 'package:test/test.dart';
import 'package:imc/utils.dart';

void main() {
  group('Cálculo do IMC', () {

    test('IMC deve magreza grave', () {
      var pessoa = Pessoa('José', 50.0, 1.85);
      var imc = calcularImc(pessoa);
      expect(imc, equals('Magreza grave')); 
    });
    test('IMC deve magreza moderada', () {
      var pessoa = Pessoa('Guilherme', 52.0, 1.75);
      var imc = calcularImc(pessoa);
      expect(imc, equals('Magreza moderada')); 
    });
    test('IMC deve magreza moderada', () {
      var pessoa = Pessoa('Antonio', 52.0, 1.75);
      var imc = calcularImc(pessoa);
      expect(imc, equals('Magreza moderada')); 
    });
    test('IMC deve magreza leve', () {
      var pessoa = Pessoa('Maria', 55.0, 1.75);
      var imc = calcularImc(pessoa);
      expect(imc, equals('Magreza leve')); 
    });
    test('IMC deve saudável', () {
      var pessoa = Pessoa('Alice', 70.0, 1.80);
      var imc = calcularImc(pessoa);
      expect(imc, equals('Saudável')); 
    });
    test('IMC deve sobrepeso', () {
      var pessoa = Pessoa('Marcos', 95.0, 1.80);
      var imc = calcularImc(pessoa);
      expect(imc, equals('Sobrepeso')); 
    });

    test('IMC deve obesidade I', () {
      var pessoa = Pessoa('Leandro', 95.0, 1.70);
      var imc = calcularImc(pessoa);
      expect(imc, equals('Obesidade Grau I')); 
    });

    test('IMC deve obesidade II', () {
      var pessoa = Pessoa('Angelo', 110.0, 1.76);
      var imc = calcularImc(pessoa);
      expect(imc, equals('Obesidade Grau II (severa)')); 
    });

    test('IMC deve obesidade III', () {
      var pessoa = Pessoa('Joana', 115.0, 1.65);
      var imc = calcularImc(pessoa);
      expect(imc, equals('Obesidade Grau III (mórbida)')); 
    });
  });
}
