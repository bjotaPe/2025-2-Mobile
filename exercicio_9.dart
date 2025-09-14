import 'dart:io';

void main() {
    print("Digite seu salário: ");
    double salario = double.parse(stdin.readLineSync()!);

    double aliquota;

    if(salario > 4664.68) {
        aliquota = 27.5;
    } else if(salario >= 3751.06) {
        aliquota = 22.5;
    } else if(salario >= 2826.66) {
        aliquota = 15;
    } else if(salario >= 1903.99) {
       aliquota = 7.5;
    } else {
        aliquota = 0;
    }

    double imposto = salario * (aliquota / 100);
    print("Imposto a pagar: R\$ ${imposto.toStringAsFixed(2)}");
}