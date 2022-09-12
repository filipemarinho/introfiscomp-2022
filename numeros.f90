!Compilar com: gfortran -Wall - Wextranumeros.f90 -o numeros.out
!rodar com: ./numeros.out
!Compilar: gfortran numeros.f90 -Wall -Wextra -o numeros.out
!Rodar: ./numeros.out

program hello
  ! Números máximos no fortran
  implicit none
  integer(4) :: int_simples = 2
  integer(8) :: int_dupla = 2
  integer(16) :: int_quad = 2
  real(4) :: float_simples = 2.0e0
  real(8) :: float_dupla = 2.0d0
  real(16) :: float_quad = 2.0_16
  
  integer :: n
  do n = 2, 10
    int_simples = int_simples*int_simples
    int_dupla = int_dupla*int_dupla
    int_quad = int_quad*int_quad
    float_simples = float_simples*float_simples
    float_dupla = float_dupla*float_dupla
    float_quad = float_quad*float_quad

    print *, int_simples, int_dupla, int_quad
    print *, float_simples, float_dupla, float_quad
  end do

end program hello
