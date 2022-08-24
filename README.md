# Disciplina 7600017 - Introdução à Física Computacional -2022/2

Estágio PAE - Material de apoio para as aulas e projetos

---
## Recomendações:
 
 É legal utilizar um editor de código com os pacotes da linguagem fortran, para ter acesso ao *highlight* da sintaxe e ao *linting*. Bons exemplos: [VSCode](https://code.visualstudio.com/) ou o bom e velho Vim.

## Instalação

### No linux:

OBS: Não é necessário instalar o fortran nos computadores do lab de computação!

1. Instalação do compilador, abra um terminal (em algumas sistemas o atalho é `Ctrl+Alt+t`) :

 ```
  sudo apt install gfortran
 ```
2. Teste a instalação com:

 ```
  gfortran --version
 ```

### No Windows:


1.  No windows 10/11 instalar o WSL (**W**indows **S**ubsystem for **L**inux)
 
      Pode ser feito direto pela microsoft store seguindo [esse tutorial oficial do ubuntu](https://ubuntu.com/wsl) (mais fácil)
      
      [Instalação do WSL](https://docs.microsoft.com/pt-br/windows/wsl/install) tutorial completo (menos chance de dar errado)

2.  Abrir o terminal do Ubuntu no WSL e seguir as instruções para linux acima.
 
 
[Versão em video do tutorial](https://youtu.be/-WKu8DxIvQ0)

Caso esteja usando uma versão antiga do Windows existe um [tutorial na página do LEF](https://www.youtube.com/watch?v=wcTxk3xM4X4). 

Mas não é simples, recomendo ou instalar o linux em dual-boot, posso te ajudar com isso, ou usar o computador do lab de computação mesmo.



### Caso não queira instalar o Fortran nem o Ubuntu:

Nesse caso resta acessar o basalto por SSH.
As instruções podem ser encontradas no [site do LEF](http://www.lef.ifsc.usp.br/images/acessoRemotoBasalto.pdf)

Uma boa opção é instalar um bom editor de texto como o VSCode e [configurar o acesso por SSH](https://code.visualstudio.com/docs/remote/ssh) por lá.

## Utilização

Fortran é uma linguagem compilada! Isso quer dizer que depois de escrever seu código em um arquivo `.f90` você terá que usar o compilador, como o gfortran, para gerar um arquivo executável, que normalmente não tem extensão, para então rodar o seu código.

### Utilização do terminal

Utilizando editores de texto para terminal:

O mais simples é o `nano`, ele já vem instalado por padrão nas distribuições linux. Para utilizar utilize o comando `nano ` seguido do nome do arquivo de texto e extensão. Caso o arquivo com o nome especificado não exista ele vai ser criado automaticamente.
Exemplo:

```
 nano documento.txt
```

Um terminal linux interpreta a linguagem [bash](https://pt.wikipedia.org/wiki/Bash) para executar seus comandos. O terminal pode não lidar bem com espaços ou acentos no nome dos arquivos então evite a utilização.

No canto inferior da tela é possível ver a ajuda de comandos do nano, note que `^` se refere a tecla `Ctrl`. Por exemplo, para fechar o editor pressione `Ctrl+x`, depois disso aparecerá um prompt para salvar as alterações caso tenham sido feitas.  

[Tutorial nano](https://terminalroot.com.br/2015/10/o-editor-de-texto-nano.html)

Comandos importantes no terminal:

- `ls`: lista os arquivos no diretório
- `pwd`: mostra o caminho do diretório atual
- `cd`: muda de diretório, `cd ..` volta pro diretório anterior, `cd Documentos` entra no diretório Documentos

Caso tenha dúvida sobre o que um comando faz, utilize a ajuda digitando `man ` e o nome do comando. Exemplo `man ls` retorna:

```
NAME
       ls - list directory contents

SYNOPSIS
       ls [OPTION]... [FILE]...

DESCRIPTION
       List information about the FILEs (the current directory by default).  Sort entries alphabetically if none of -cftuvSUX nor --sort is specified.
```

### Exemplo Hello World

 O Hello World é uma tradição na programação dizem que dá sorte escrever um hello world ao aprender uma nova linguagem.
 
 Comece criando o arquivo `hello.f90`, você pode usar um editor de texto, o VSCode ou o terminal mesmo com ` nano hello.f90`. Digite o texto abaixo e salve:
 
``` fortran
program hello
  ! Esse é um exemplo de comentario
  print *, 'Hello, World!'
end program hello
```

Em um terminal no mesmo diretório do arquivo faça a compilação:

``` bash
gfortran hello.f90 -o hello
```
Esse comando compila o arquivo de texto `hello.f90` e gera o executável `hello`. 

Você pode incluir flags adicionais que te ajudam a encontrar erros no seu código como `-Wall` e `-Wextra`.

```bash
gfortran hello.f90 -Wall -Wextra -o hello
```
Rode o executável com:
```bash
 ./hello
```

Você verá a saída: 
```
 Hello, World!
```
---
## Contato
Filipe Marinho
filipemarinho @ usp .br

Também estou no Telegram nos grupos oficiais do IFSC
---
## Extras:

- [Site do laboratório de computação do IFSC](http://www.lef.ifsc.usp.br/index.php/computacional) - Informações sobre o acesso remoto e as salas do lab de computação
- [Livro Texto](https://books.google.com/books/about/Computational_Physics.html?id=ngUpAQAAMAAJ)
- [Repositório do Heitor introfiscomp-2018](https://github.com/heitorPB/fiscomp-2018)
- [Gelos](https://gelos.club/) Grupo de Extensão em Livre e Open Source - ICMC/USP
- [Fortran em 100 segundos (ou quase)](https://youtu.be/NMWzgy8FsKs)
- [Terminal linux - Bash em 100 segundos](https://youtu.be/I4EWvMFj37g)
