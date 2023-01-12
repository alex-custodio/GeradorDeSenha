import 'dart:io';
import 'dart:math';

// Gerador de senhas aleatórias e seguras
void main() {
  print("Quantos caracteres você quer na sua senha?");
  int qtdCaracteres = int.parse(stdin.readLineSync()!);
  gerarSenha(tamanho: qtdCaracteres);
}

void gerarSenha({int? tamanho}) {
  String senha = "";
  String caracteres =
      "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz123456789012345678901234567890[][][];;;...,,,---???@@@###";
  for (int i = 0; i < tamanho!; i++) {
    //Processo
    String caractere_escolhido =
        caracteres[Random().nextInt(caracteres.length)];
    senha += caractere_escolhido;
  }
  print(senha);
}
