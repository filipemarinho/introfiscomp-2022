# Disciplina 7600017 - Introdução à Física Computacional -2022/2

Estágio PAE - Material de apoio para as aulas e projetos

---
## Recomendações:
 
 É legal utilizar um editor de código com os pacotes da linguagem fortran, para ter acesso ao *highlight* da sintaxe e ao *linting*. Bons exemplos: [VSCode](https://code.visualstudio.com/) ou o bom e velho Vim.

## Instalação

### No linux:

1. Instalação do compilador, abra um terminal `Ctrl+Alt+t` :

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
 
 
Tutorial em vídeo breve

Caso esteja usando uma versão antiga do Windows existe um [tutorial na página do LEF](https://www.youtube.com/watch?v=wcTxk3xM4X4). 

Mas não é simples, recomendo ou instalar o linux em dual-boot, posso te ajudar com isso, ou usar o computador do lab de computação mesmo.



### Caso não queira instalar o Fortran nem o Ubuntu:

Nesse caso resta acessar o basalto por SSH.
As instruções podem ser encontradas no [site do LEF](http://www.lef.ifsc.usp.br/images/acessoRemotoBasalto.pdf)

Uma boa opção é instalar um bom editor de texto como o VSCode e [configurar o acesso por SSH](https://code.visualstudio.com/docs/remote/ssh) por lá.

## Utilização

Fortran é uma linguagem compilada! Isso quer dizer que depois de escrever seu código em um arquivo `.f90` você terá que usar o compilador, como o gfortran, para gerar um arquivo executável, que normlmente não tem extensão, para então rodar o seu código.

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
## Extras:

- [Site do laboratório de computação do IFSC](http://www.lef.ifsc.usp.br/index.php/computacional) - Informações sobre o acesso remoto e as salas do lab de computação
- [Livro Texto](https://books.google.com/books/about/Computational_Physics.html?id=ngUpAQAAMAAJ)
- [Repositório do Heitor introfiscomp-2018](https://github.com/heitorPB/fiscomp-2018)
- [Gelos](https://gelos.club/) Grupo de Extensão em Livre e Open Source - ICMC/USP
