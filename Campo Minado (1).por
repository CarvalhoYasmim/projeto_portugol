programa{
    inclua biblioteca Util
    inclua biblioteca Texto

    /*
     * O tabuleiro é uma matriz de caracteres
     * índice 0 da cadeia indica posição aberta ou fechada 
     * A = aberta 
     * F = fechada
     * índece 1 da cadeia indica se é bomba ou não:
     * * = é uma bomba
     * + = não é uma bomba
     * índec 2 da cadeia significa a quantidade de bombas vizinhas
     * 0 = zero bombas na vizinhança
     * 1 = uma bomba na vizinhança
     * 2 = duas bombas na vizinhança
     * 3 = três bombas na vizinhança
     * 4 quatro bombas na vizinhança
     * OBSERVAÇÃO: são consideradas vizinhas de uma posição 1 c apenas 4 posições
     * -imediatamente acima
     * - imediatamente abaixo
     * - imediatamente á direita
     * - imediatamente á esquerda
     * EXEMPLOS: 
     * F+1 -> ainda fechada, não é bomba e possoi 1 bomba vizinha
     * A+2 -> aberta, não é bomba e possui duas bombas vizinhas
     * F*0 -> ainda fechada, é uma bomba
     */

     //Variávei globais
     cadeia tabuleiro [10] [10]
     inteiro tamanho = 10, linha, coluna

     /*
      * Este procedimento inicializa nossa matriz
      * F significa fechado
      * A - aberto
      * * - bomba
      * + - não é bomba
      * 0 - zero bombas vizinhas
      */
	 
	funcao inicializarTabuleiro(){
		para(linha = 0; linha < tamanho; linha++){
			para(coluna = 0; coluna < tamanho; coluna++){
				tabuleiro [linha] [coluna] = "F+0"
				}
			
		}
			}

			//procedimento para imprimir nosso campo minado
			funcao imprimirTabuleiro(){
				
				para(linha = 0; linha < tamanho; linha++){
					para(coluna = 0; coluna < tamanho; coluna++){
						escreva(tabuleiro [linha] [coluna], "\n")
						escreva("\n")
						}
					}

				/*
				 * procedimento que sorteia bombas
				 * recebe como parâmetro a quantidade de bombas que deve ser gerado
				 */
					funcao sortearBombas(inteiro quantidade){
						inteiro 1, c


						para(linha = 1; linha <= quaantidade; linha++)
						1 = Util.sorteia(0, tamanho - 1) // 0 até 9
						c = Util.sorteio(0, tamanho - 1)
						// F+0 trocar o + por um *
						tabuleiro [1] [c] = Texto.substituir(tabuleiro [1] [c], "+", "*")
						}

				
				}

				/*
				 * função que verifica se uma coordenada é válida
				 * 1 - é válido
				 * 0 - não é válido
				 */
				 funcao inteiro eValida(inteiro 1, inteiro c){
				 	se(1 >= 0 = e 1 < tamanho e c >= 0 e c < tamanho)
				 	retorne 1 // é válido
				 	retorno 0 // não é válido
				 	}

                    funcap inteiro eBomba(inteiro 1, inteiro c){
                    	se(eValida(1, c) == 1){
                    		se(TExto.posicao_texto("*", tabuleiro [1] [c], 1) != -1)
                    		retorne 1 // é uma bomba
                    		senao
                    		retorne 0// não é uma bomba
                    		}
                    		retorne 0 // não é bomba ou é inválida
                    	}
			 /*
			  * Procedimento para contar a quantidade de  bombas na vizinhança para cada posição
			  */
			  funcao contarBombasVizinhas(){
			  	inteiro quantidade = 0


			  	para(linha = 0; coluna < tamanho; linha++){
			  		para(coluna = 0; coluna < tamanho; coluna++){
			  			quantidade += eBomba(linha - 1, coluna) // acima
			  			quantidade += eBomba(linha + 1, coluna) // abaixo
			  			quantidade += eBomba(linha, coluna + 1) // á direita
			  			quantidade += eBomba(linha, coluna - 1) //á esquerda
			  			tabuleiro[linha] [coluna] = Texto.substituir (tabuleiro [linha] [coluna], "0", "+" quantidade)
			  			  quantidade = 0
			  			}
			  		}
			  	}

			  	funcao inicio(){
			  		
			  		
			  		inicializarTabuleiro()
			  		sortearBombas(10)
			  		contarBombasVizinhas()
			  		imprimirTabuleiro()
			  		}
		}
		
		
		
		   
		   
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3225; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */