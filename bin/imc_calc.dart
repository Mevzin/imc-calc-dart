import 'package:imc_calc/functions/functions.dart';

void main(List<String> arguments) {
  var weight = readConsole("Informe seu peso! Ex: 86.40");

  var height = readConsole("Informe sua altura! Ex: 1.70");

  var resultImc = calculateImc(weight, height);

  resultDiagnostic(resultImc);
}
