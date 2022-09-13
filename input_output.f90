! compilar: gfortran input_output.f90 -Wall -Wextra -o input_output
! rodar: ./input_output

program readwrite
   implicit none

   integer :: N

   print *, "Digite um número inteiro:\n" 
   read*, N
   print *, "Recebido: N", N
		
   !Cria um novo arquivo data.dat, dando o apelido 1
   open(1,file = 'data.dat', status='new') 
   !status='new' espera que o arquivo não existe para ser criado trocar por 'replace' permite que você sobrescreva o arquivo

   write(1,*) N
   close(1) !não esqueça de fechar depois

   !Cria outro arquivo com outro apelido	
   open(2,file = 'data2N.dat', status='new')
   write(2,*) N*2
   close(2)

end program readwrite
