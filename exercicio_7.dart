import 'dart:io';

void main() {

    double saldo = 1000.00;

    print("1 - Saldo ");
    print("2 - Saque ");
    print("3 - Depósito ");
    print("Digite a opcao desejada: ");
    int opcao = int.parse(stdin.readLineSync()!);
    
    switch(opcao) {
        case 1:
            print("Seu saldo é R\$ $saldo");
            break;
        case 2:
            print("Qual valor do saque: ");
            double valor = double.parse(stdin.readLineSync()!);

            if(valor <= saldo) {
                saldo -= valor;
                print("Valor atualizado: R\$ $saldo");
            } else {
                print("Não possui saldo suficiente!");
            }
            break;
        case 3:
            print("Qual valor do depósito: ");
            double valor = double.parse(stdin.readLineSync()!);
            saldo += valor;
            print("Valor atualizado: R\$ $saldo");
            break;
        default:
            print("Opção invalida");
    }
}