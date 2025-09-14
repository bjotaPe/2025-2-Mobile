import 'dart:io';

void main() {
    print("Digite o lado A: ");
    double a = double.parse(stdin.readLineSync()!);
    print("Digite o lado B: ");
    double b = double.parse(stdin.readLineSync()!);
    print("Digite o lado C: ");
    double c = double.parse(stdin.readLineSync()!);

    if(a + b > c && a + c > b && b + c > a) {
        print("Forma um triângulo");

    if(a == b && b == c) {
        print("Equilátero");
    } else if(a == b || a == c || b == c) {
        print("Isóceles");
    } else {
        print("Escaleno");
    }

    } else {
        print("Não forma um triângulo");
    }
}