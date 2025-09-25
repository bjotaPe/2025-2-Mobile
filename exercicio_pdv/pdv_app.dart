import 'dart.io';
import 'produto.dart';
import 'item_compra.dart';
import 'carrinho_compra.dart';

class PDVApp{
    CarrinhoCompra carrinho = CarrinhoCompra();

    void inciar(){
        print('\n== SISTEMA DE PDV\n');
        print('Bem vindo ao sistema!');

        bool continuar = true;

        while(continuar){
            print('Desegja adicionar um prodduto ao carrinho? (S/N)');
            String resposta = stdin.readLineSync()?.toUpperCase() ?? 'N';

            if(resposta == 'S'){
                ItemCompra item = lerDadosCompra();
                carrinho.adicionarItem(item);
                print( '\nProduto adicionando com sucesso!');
            }else {
                continuar = false;
            }
        }

        if(carrinho.estaVazio()){
            print('\nNenhum produto foi adicionado ao carrinho.');
            print('\nObrigado por usar o sistema PDV.');
        }else {
            exibirReultado();
        }

    }

    ItemCompra lerDadosCompra(){
        print('\n-- Adiocionar Produto --');

        print('\nNome do produto: ');
        String nome = stdin.readLineSync() ?? '';

        double valor = 0;
        bool ValorValido = false;

        while(!ValorValido){
            print('\nValor unitário:');
            String input = stdin.readLineSync() ?? '0';
            valorUntario = double.parse(input.replaceAll(',','.'));
            if(valorUntario <= 0){
                print('\nValor deve ser maior que zero . ');
            }else {
                ValorValido = true;
            }
        }
        
        int quantidade = 0;
        bool quantidadeValida = true;

        while(!quantidadeValida){
            print('\nQuantidade:');
            String input = stdin.readLineSync() ?? '0';
            quantidade = int.parse(input);
            if(quantidade <= 0){
                print('\nErro: A quantidade deve ser maior que zero. ');
            }else {
                quantidadeValida = true;
            }
        }

        Produto produto = Produto(nome, valorUntario);
        return ItemCompra(produto, quantidade);

        print('\n--RESUMO DA COMPRA==');
        print('\nItens do carrinho');

        for(int i = 0; i < carrinho.itens.length; i++){
            print('$(i + 1), ${carrinho.itens[i]}');
        }

        print('\nTotal de itens : ${carrinho.quantidadeItens()}');
        print('\nValor total: R\$ ${total.toStringAsFixed(2)}');

        if(desconto > 0){
            print('\nDescontos (10%): R\$ ${desconto.toStringAsFixed(2)}');
        }else {
            print('\nDesconto: R\$ 0.00');
        }

        print('\nValor final: R\$ ${valorFinal.toStringAsFixed(2)}');
        print('\nObrigado por utilizar o sistema PDV');


    }
}