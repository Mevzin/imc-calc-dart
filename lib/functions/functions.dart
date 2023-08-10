import 'dart:convert';
import 'dart:io';

double readConsole(String text) {
  print(text);
  var line = stdin.readLineSync(encoding: utf8);
  if (line != null) {
    var numline = double.tryParse(line);
    return numline ?? 0.0;
  } else {
    return 0.0;
  }
}

double calculateImc(double weight, double height) {
  double imc = weight / (height * height);
  return imc;
}

void resultDiagnostic(double imc) {
  String imcResult = "";

  switch (imc) {
    case <= 16:
      imcResult = "Magreza grave";
      break;
    case <= 17:
      imcResult = "Magreza moderada";
      break;
    case <= 18.5:
      imcResult = "Magreza leve";
      break;
    case <= 25:
      imcResult = "Saudável";
      break;
    case <= 30:
      imcResult = "Sobrepeso";
      break;
    case <= 35:
      imcResult = "Obesidade Grau I";
      break;
    case <= 40:
      imcResult = "Obesidade Grau II";
      break;
    case > 40:
      imcResult = "Obesidade Grau III";
      break;
    default:
      imcResult = "Não foi possivel calcular o IMC";
  }

  print("O cálculo  do seu imc foi de: $imc.");
  print("Sua classificação é: $imcResult");
}
