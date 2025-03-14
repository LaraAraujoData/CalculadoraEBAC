#!/bin/bash

##Estabelencendo o input do usuário
read -p "Bem vindo à calculadora! Digite o primeiro numero da sua operação:" num1
read -p "Ok! Agora digite o segundo número da operação:" num2
read -p "Para soma digite '+', para subtração '-', para multiplicação '*' e para divisão '/'" operacao

##Estabelecendo as operações
case "$operacao" in
	"+")resultado=$(echo "$num1 + $num2" | bc) ;;
	"-")resultado=$(echo "$num1 - $num2" | bc) ;;
	"*")resultado=$(echo "$num1 * $num2" | bc) ;;
	"/")resultado=$(echo "scale=2; $num1 / $num2" | bc) ;;
	*) echo "Operação inválida, tente novamente!"; exit 1 ;;
esac

##Estabelecendo o resultado
echo "O resultado da operação é: $resultado."	
