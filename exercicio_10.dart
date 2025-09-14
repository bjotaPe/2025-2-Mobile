import 'dart:io';
import 'dart:math';

void main() {
    int numeroSecreto = Random().nextInt(100) + 1;

    while(true) {
        print("Digite seu palpite: ");
        int palpite = int.parse(stdin.readLineSync()!);

        if(palpite == numeroSecreto) {
            print("Acertou!");
            break;
        } else {
            String mensagem = palpite > numeroSecreto ? "Muito alto" : "Muito baixo";
            print(mensagem);
        }

    }
}