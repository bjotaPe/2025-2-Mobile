import 'dart:io';
void main(){
    double renda = 78000;
    double saldo = 100001;

    if(renda > 60000 && saldo < 1000000){
        print('Exclusive');
    } else if(renda > 30000) {
        print('Select');
    } else if(renda > 5000) {
        print('Vangogh');
    } else if(renda > 1400) {
        print('Varejo');
    } else {
        print('Nenhuma categoria');
    }
}
