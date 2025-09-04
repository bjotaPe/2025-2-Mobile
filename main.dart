import 'dart:io';
void main(){
    double renda = 6000;
    double saldo = 100001;

    if(renda > 1400 && renda < 5000){
        print('varejo');
    }else if(renda < 5000 && renda > 30000){
        print('Vangogh');
    }else if(renda < 30000 && renda > 60000){
        print('Select');
    }else if(renda > 60000 && saldo > 100000){
        print('Exclusive');
    };
}
