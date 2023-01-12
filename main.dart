import 'dart:io';
import 'dart:math';

// Gerador de senhas aleatórias e seguras
void main() {
  print("Quantos caracteres você quer na sua senha?");
  int qtdCaracteres = int.parse(stdin.readLineSync()!);
  print(
      "Escolha uma opção: \n1 - (Letras maiúsculas, minúsculas, números e caracteres especiais) -> Mais seguro \n2 - (Apenas números)");
  int opcao = int.parse(stdin.readLineSync()!);

  gerarSenha(tamanho: qtdCaracteres, opcao: opcao);
}

void gerarSenha({int? tamanho, int? opcao = 1}) {
  String senha = "";
  String letras_maiusculas = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  String letras_minusculas = letras_maiusculas.toLowerCase();
  String numeros = "1234567890";
  String outros = "[]#@.,-;/=+";
  for (int i = 0; i < tamanho!; i++) {
    if (opcao == 1) {
      int modo = Random().nextInt(5);
      switch (modo) {
        case 1:
          String caractere_escolhido =
              letras_maiusculas[Random().nextInt(letras_maiusculas.length)];
          senha += caractere_escolhido;
          break;
        case 2:
          String caractere_escolhido =
              letras_minusculas[Random().nextInt(letras_minusculas.length)];
          senha += caractere_escolhido;
          break;
        case 3:
          String caractere_escolhido =
              numeros[Random().nextInt(numeros.length)];
          senha += caractere_escolhido;
          break;
        case 4:
          String caractere_escolhido = outros[Random().nextInt(outros.length)];
          senha += caractere_escolhido;
          break;
      }
    } else if (opcao == 2) //Apenas números
    {
      String caractere_escolhido = numeros[Random().nextInt(numeros.length)];
      senha += caractere_escolhido;
    }
  }
  print(senha);
}
