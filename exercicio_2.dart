import 'dart:io';
void main() {

    print("Digite o valor da compra: ");
    double valor = double.parse(stdin.readLineSync()!);

    if(valor > 100) {
        double desconto = valor * 0.10;
        double valorFinal = valor - desconto;

        print('Desconto: R\$ $desconto');
        print('Valor final com desconto: R\$ $valorFinal');

    } else {
            print('Valor da compra: R\$ $valor');
        }
     
}