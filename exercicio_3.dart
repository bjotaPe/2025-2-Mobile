import 'dart:io';

void main() {
    print("Digite seu peso(kg): ");
    double peso = double.parse(stdin.readLineSync()!);
    print("Digite sua altura(m): ");
    double altura = double.parse(stdin.readLineSync()!);

    double IMC = peso / (altura*altura);

    if(IMC > 40.0) {
        print('Obesidade grau 3');
    } else if(IMC >= 35.0 && IMC <= 39.9) {
        print('Obesidade grau 2');
    } else if(IMC >= 30.0 && IMC <= 34.9 ) {
        print('Obesidade grau 1');
    } else if(IMC >= 25.0 && IMC <= 29.9) {
        print('Sobrepeso');
    } else if(IMC >= 18.5 && IMC <= 24.9 ) {
        print('Peso normal');
    } else {
        print('Abaixo do peso');
    }
}