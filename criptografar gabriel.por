programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> txt
	
	
	caracter alfabeto[27] = {' ', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r',
	's', 't', 'u', 'v', 'w', 'x', 'y', 'z'}

	inteiro chave 
	cadeia resposta 
	
	funcao inicio()
	{
		cadeia res1
		
		escreva("Você prefere criptografar ou descriptografar? ")
		leia(res1)

		se(res1 == "criptografar"){
			criptografar()
		}

		se(res1 == "descriptografar"){
			descriptografar()
		}
		
	}
	funcao criptografar()
	{
		inteiro num_caracter
		inteiro posicao = 0

		logico espaco

		escreva("Escreva um valor inteiro para chave: ")
		leia(chave)
		
		escreva("Digite uma palavra: ")
		leia(resposta)
		
		num_caracter = txt.numero_caracteres(resposta)

		para(inteiro i=0; i < num_caracter; i++){
			caracter letra = txt.obter_caracter(resposta, i)

			para(inteiro j=0; j < 27; j++){
				se(letra == alfabeto[j]){
					
					posicao = (j + chave) % 27
				}
		}
			escreva(alfabeto[posicao])
		}
	}
	funcao descriptografar()
	{
		escreva("Escreva um valor inteiro para chave: ")
		leia(chave)
		
		escreva("Digite a palavra criptografada: ")
		leia(resposta) 
		
		inteiro numeroLetras = txt.numero_caracteres(resposta)
		para(inteiro i=0; i < numeroLetras; i++){

			caracter letra = txt.obter_caracter(resposta, i)

			para(inteiro j=0; j < 26; j++){

				se(letra == alfabeto[j]){

					inteiro posicaoDescriptografada = j - chave

					se(posicaoDescriptografada < 0){
						posicaoDescriptografada = 26 + posicaoDescriptografada
					}

					escreva(alfabeto[posicaoDescriptografada])
				}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1312; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */