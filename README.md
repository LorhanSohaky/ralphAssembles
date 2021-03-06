# ralph Assembles
Jogo em Assembly para a disciplina de laboratório de arquitetura e organização de computadores 2. O jogo é desenvolvido para a arquitetura x86 para o sistema operacional Windows.

## IMAGENS
![Tela do menu](prints/tela-menu.png)
![Tela de instrucoes](prints/tela-instrucoes.png)
![Tela do jogo](prints/tela-jogo.png)
![Tela de jogo](prints/tela-ganhou.png)

## LICENÇA
**MIT** [Leia a licença](LICENSE)

## ESTILO DE CODIFICAÇÃO
[Leia o estilo de codificação](CODE-STYLE.md)

## DEPENDÊNCIAS
* [MASM32](http://www.masm32.com/)
* [Irvine](http://kipirvine.com/asm/)

## NOTAS
É recomendado o uso do Notepad++, já que o mesmo possui a codificação de caracteres OEM-860.

### SONS
Os sons estão sob licença Creative Commons

* [News End Signature - mansardian](https://freesound.org/people/mansardian/sounds/61322/) (`menu.wav`)
* [jumping - fins](https://freesound.org/people/fins/sounds/146726/) (`pulo.wav`)
* [hit_001 - leviclaassen](https://freesound.org/people/leviclaassen/sounds/107788/) (`colisao.wav`)
* [sword04 - Erdie](https://freesound.org/people/Erdie/sounds/27858/) (`janela.wav`)
* [06260 swooshy trailer punch - Robinhood76](https://freesound.org/people/Robinhood76/sounds/333124/) (`fase.wav`)


### TODO
- [ ] ~~Construção da máquina de estados geral;~~
- [x] Construção da máquina de estados da tela de menu;
- [x] Criação das telas de menu;
- [ ] ~~Construção da máquina de estados do jogo~~;
- [x] Criação da máquina de estados das fases;
- [x] Procedimento para desenhar personagens e ambiente;
- [x] Procedimento para ler dados do teclado;
- [x] Procedimento para verificar colisão;
- [x] Criação da tela de instruções;
- [x] Criação da tela de créditos;
- [x] Criação das telas de apresentação de fase;
- [x] Procedimento para inicializar posição dos personagens;
- [x] Procedimento para verificar conserto de janela;
- [x] Procedimento para sortear janelas quebradas;
- [x] Procedimento para sortear bit jogado pelo inimigo Felix;
- [x] Procedimento para movimentar personagem;
- [x] Criação da tela de ganhou;
- [x] Criação da tela de perdeu;
- [x] Procedimento para atualizar vidas;
- [x] Procedimento para verificar resultado;
- [x] Procedimento para desenhar Felix;
- [x] Tocar som menu;
- [x] Tocar som pulo;
- [x] Tocar som colisão com bit;
- [x] Pintar o bit;
- [x] Desenhar corações