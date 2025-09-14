import 'dart:io';

void main() {
    print("1. X-Burger - R\$ 15.00 ");
    print("2. Pizza - R\$ 25.00 ");
    print("3. Sushi - R\$ 30.00 ");
    print("4. Salada - R\$ 12.00 ");
    print("Digite a opcao desejada: ");
    int opcao = int.parse(stdin.readLineSync()!);

    switch(opcao) {
        case 1:
            print("X-Burger - R\$15.00 ");
            break;
        case 2:
            print("Pizza - R\$25.00 ");
            break;
        case 3:
            print("Sushi - R\$30.00 ");
            break;
        case 4:
            print("Salada - R\$12.00 ");
            break;
        default:
            print("Opção invalida");
    }
}