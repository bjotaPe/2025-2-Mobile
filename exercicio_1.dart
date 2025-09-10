import 'dart:io';
void main() {

    print("Digite sua idade: ");
    int idade = int.parse(stdin.readLineSync()!);

    if(idade >= 16) {
        print("Pode votar");
    } else {
        print("Não pode votar!");
    }
}