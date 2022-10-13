programa{
	
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Mouse --> m
	inclua biblioteca Sons --> s
	inteiro linha=10, coluna=10, j1=0,j2=0,j3=0,j4=0,jtest=0
	inteiro mat[9][9]
	inteiro fundo=g.carregar_imagem("fundo_d.jpeg")
	inteiro win=0, Novamente=0

	funcao jgNovamente()
	{
	
		inteiro li,co,venceu,perdeu
		inteiro outra=0, teste=0
		para(li=0;li<9;li++)					//reset matriz
			{	
				para(co=0;co<9;co++)
				{
					mat[li][co]= 0
				}				
			}
		se (win==1)
		{
			venceu=g.carregar_imagem("venceu.jpg")
			g.desenhar_imagem(0, 0, venceu)
			g.renderizar()
			u.aguarde(4000)
		}
		senao
		{
			perdeu=g.carregar_imagem("perdeu.jpg")
			g.desenhar_imagem(0, 0, perdeu)
			g.renderizar()
			u.aguarde(4000)
		}
					
		outra=g.carregar_imagem("outra.jpg")
		g.desenhar_imagem(0, 0, outra)
		g.renderizar()	
		clique ()
		

		faca
		{
		se (m.algum_botao_pressionado())
		{
			se (m.posicao_x()>75 e m.posicao_x()<335 e m.posicao_y()>470 e m.posicao_y()<625)
			{
				teste=1
				win=0
				clique()
			}
			se (m.posicao_x()>475 e m.posicao_x()<763 e m.posicao_y()>444 e m.posicao_y()<627)
			{
				teste=1
			}
		}
		}enquanto (teste==0)				
	}


	funcao CarregamentoInicial()
	{
				
		inteiro mus = s.carregar_som("sa.mp3")
		s.reproduzir_som(mus, verdadeiro)
		s.definir_volume(60)
		
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(810,810)
		g.definir_titulo_janela("Jogo da velha - 9x9")
			
		inteiro inicial=0, teste=0
		inicial=g.carregar_imagem("fundo.jpg")
		g.desenhar_imagem(0, 0, inicial)
		g.renderizar()

		faca
		{
			se(m.algum_botao_pressionado())
			{
				se(m.posicao_x()>326 e m.posicao_x()<531 e m.posicao_y()>420 e m.posicao_y()<626)
					{
						u.aguarde(200)
						teste=1
					}
			}
		}enquanto (teste==0)
		
	}
	
	funcao vit()
	{
		inteiro l=0,c=0
		para(l=0;l<9;l++)
			{
				para(c=4;c<9;c++)
					{
						se (mat[l][c]==1 e mat[l][c-1]==1 e mat[l][c-2]==1 e mat[l][c-3]==1 e mat[l][c-4]==1)
						{
							win=1
							g.limpar()
							jgNovamente()
						}
					}
				escreva ("\n")
			}
		para(l=4;l<9;l++)
			{
				para(c=0;c<9;c++)
					{
						se (mat[l][c]==1 e mat[l-1][c]==1 e mat[l-2][c]==1 e mat[l-3][c]==1 e mat[l-4][c]==1)
							{
								win=1
								g.limpar()
								jgNovamente()
							}
					}
				escreva ("\n")
			}
		para(l=4;l<9;l++)
			{
				para(c=4;c<9;c++)
					{
						se (mat[l][c]==1 e mat[l-1][c-1]==1 e mat[l-2][c-2]==1 e mat[l-3][c-3]==1 e mat[l-4][c-4]==1)
							{
								win=1
								g.limpar()
								jgNovamente()
							}
					}
				escreva ("\n")
			}
		para(l=4;l<9;l++)
			{
				para(c=0;c<5;c++)
					{
						se (mat[l][c]==1 e mat[l-1][c+1]==1 e mat[l-2][c+2]==1 e mat[l-3][c+3]==1 e mat[l-4][c+4]==1)
							{
								win=1
								g.limpar()
								jgNovamente()
							}
					}
				escreva ("\n")
			}
			
		para(l=0;l<9;l++)
			{
				para(c=4;c<9;c++)
					{
						se (mat[l][c]==2 e mat[l][c-1]==2 e mat[l][c-2]==2 e mat[l][c-3]==2 e mat[l][c-4]==2)
						{
							win=2
							g.limpar()
							jgNovamente()
						}
					}
				escreva ("\n")
			}
		para(l=4;l<9;l++)
			{
				para(c=0;c<9;c++)
					{
						se (mat[l][c]==2 e mat[l-1][c]==2 e mat[l-2][c]==2 e mat[l-3][c]==2 e mat[l-4][c]==2)
							{
								win=2
								g.limpar()
								jgNovamente()
							}
					}
				escreva ("\n")
			}
		para(l=4;l<9;l++)
			{
				para(c=4;c<9;c++)
					{
						se (mat[l][c]==2 e mat[l-1][c-1]==2 e mat[l-2][c-2]==2 e mat[l-3][c-3]==2 e mat[l-4][c-4]==2)
							{
								win=2
								g.limpar()
								jgNovamente()
							}
					}
				escreva ("\n")
			}
		para(l=4;l<9;l++)
			{
				para(c=0;c<5;c++)
					{
						se (mat[l][c]==2 e mat[l-1][c+1]==2 e mat[l-2][c+2]==2 e mat[l-3][c+3]==2 e mat[l-4][c+4]==2)
							{
								win=2
								g.limpar()
								jgNovamente()
							}
					}
				escreva ("\n")
			}
	}

	funcao joga()
	{
		inteiro a=0, b=0
		a=u.sorteia(0,8)
		b=u.sorteia(0,8)
		
		se(jtest==0)
		{
			se(mat[a][b]==1 ou mat[a][b]==2)
			{
				joga()
			}
			senao
			{
				mat[a][b]=2
				j1=a
				j2=b
				j3=a
				j4=b
				jtest=1
			}
		}
		
		u.aguarde(100)
	}	

	funcao jogapg()
	{
		se(j3>4)
		{
			se(mat[j1-1][j2]!=1 e mat[j1-1][j2]!=2)
			{
				j1=j1-1
				mat[j1][j2]=2
			}	
			senao
			{
				jtest=0
				joga()
			}
		}
		se(j3<5)
		{
			se(mat[j1+1][j2]!=1 e mat[j1+1][j2]!=2)
			{
				j1=j1+1
				mat[j1][j2]=2
			}	
			senao
			{
				jtest=0
				joga()
			}
		}
	}

	funcao check()
	{
		se(mat[linha][coluna]==1 ou mat[linha][coluna]==2)
		{
			clique()
		}
		senao
		{
			mat[linha][coluna]=1
			ia()
		}
	}

	funcao ia()
	{
		inteiro flag=0
		se(linha==0 e coluna==0)
		{
			se (flag==0)
			{
				se (mat[1][1]!=1 e mat[1][1]!=2)
				{
				mat[1][1]=2
				clique()
				flag=1
				}
			}
		}
		se(linha==8 e coluna==8)
		{
			se (flag==0)
			{
				se(mat[7][7]!=1 e mat[7][7]!=2)
				{
				mat[7][7]=2
				clique()
				flag=1
				}
			}
		}
		se(linha==0 e coluna==8)
		{
			se (flag==0)
			{
				se(mat[1][7]!=1 e mat[1][7]!=2)
				{
				mat[1][7]=2
				clique()
				flag=1
				}
			}
		}
		se(linha==8 e coluna==0)
		{
			se (flag==0)
			{
				se(mat[7][1]!=1 e mat[7][1]!=2)
				{
				mat[7][1]=2
				clique()
				flag=1
				}
			}
		}
		
		se (coluna<8 e coluna>0)
		{
			se(mat[linha][coluna+1]==1)
			{
				se(flag==0)
				{
					se(mat[linha][coluna-1]!=1 e mat[linha][coluna-1]!=2)
					{
					mat[linha][coluna-1]=2
					flag=1
					}
				}
			}
			se(mat[linha][coluna-1]==1)
			{
				se(flag==0)
				{
					se(mat[linha][coluna+1]!=1 e mat[linha][coluna+1]!=2)
					{
					mat[linha][coluna+1]=2
					flag=1
					}
				}
			}
		}
		se (linha<8 e linha>0)
		{
			se(mat[linha+1][coluna]==1)
			{
				se(flag==0)
				{
					se(mat[linha-1][coluna]!=1 e mat[linha-1][coluna]!=2)
					{
					mat[linha-1][coluna]=2
					flag=1
					}
				}
			}
			se(mat[linha-1][coluna]==1)
			{
				se(flag==0)
				{
					se(mat[linha+1][coluna]!=1 e mat[linha+1][coluna]!=2)
					{
					mat[linha+1][coluna]=2
					flag=1
					}
				}
			}
		}

		se (linha>0 e linha<8 e coluna>0 e coluna<8)
		{
			se(mat[linha+1][coluna+1]==1)
			{
				se(flag==0)
				{
					se(mat[linha-1][coluna-1]!=1 e mat[linha-1][coluna-1]!=2)
					{
					mat[linha-1][coluna-1]=2
					flag=1
					}
				}
			}
			se(mat[linha-1][coluna-1]==1)
			{
				se(flag==0)
				{
					se(mat[linha+1][coluna+1]!=1 e mat[linha+1][coluna+1]!=2)
					{
					mat[linha+1][coluna+1]=2
					flag=1
					}
				}
			}
			se(mat[linha+1][coluna-1]==1)
			{
				se(flag==0)
				{
					se(mat[linha-1][coluna+1]!=1 e mat[linha-1][coluna+1]!=2)
					{
					mat[linha-1][coluna+1]=2
					flag=1
					}
				}
			}
			se(mat[linha-1][coluna+1]==1)
			{
				se(flag==0)
				{
					se(mat[linha+1][coluna-1]!=1 e mat[linha+1][coluna-1]!=2)
					{
					mat[linha+1][coluna-1]=2
					flag=1
					}
				}
			}
		}
		
		se (flag==0)
		{
			se(jtest==0)
			{
				joga()
			}
			senao
			{
				jogapg()
			}
		}
	}

	funcao tela()
	{
		g.desenhar_imagem(0, 0, fundo)
		u.aguarde (200)
		
		inteiro a,b

		g.definir_tamanho_texto(100)
		g.criar_cor(100, 100, 50)

		para (a=0;a<9;a++)
		{
			para(b=0;b<9;b++)
			{
				se (mat[a][b]==1)
				{
				g.desenhar_texto(14+(b*90), 4+(a*90), "X")
				}
				se (mat[a][b]==2)
				{
				g.desenhar_texto(14+(b*90), 4+(a*90), "O")
				}
			}
		}
		g.renderizar()
	}

	funcao clique()
	{
		u.aguarde(1000)
		faca
		{
			se(m.algum_botao_pressionado())
			{
			linha= m.posicao_y()/90
			coluna= m.posicao_x()/90
			u.aguarde(200)
			check()
			tela()
			}
		}enquanto (linha>9)
	}
	
	funcao inicio()
	{
		
		CarregamentoInicial()
				
		tela()
		faca
		{
			clique()
			vit ()
		} enquanto (win==0)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1273; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {mat, 8, 9, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */