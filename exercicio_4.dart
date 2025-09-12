import 'dart:io';

void main() {
    print("Digite sua primeira nota: ");
    double nota1 = double.parse(stdin.readLineSync()!);
    print("Digite sua segunda nota: ");
    double nota2 = double.parse(stdin.readLineSync()!);

    double media = (nota1 + nota2) / 2;

    if(media >= 7) {
        print('Aprovado');
    } else if(media < 7 && media >= 4) {
        print('Recuperação');
    } else {
        print('Reprovado');
    }
}