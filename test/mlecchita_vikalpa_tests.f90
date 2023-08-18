module mlecchita_vikalpa_tests
  use mlecchita_vikalpa, only: mlecchita_vikalpa_translate

  implicit none

  private
  public :: test_mlecchita_vikalpa

contains

  subroutine test_mlecchita_vikalpa

    character(:), allocatable :: result,expect, sentence
    character :: first_array_letters(13),second_array_letters(13)
    expect = "OBAWBHE"
    sentence = "BONJOUR"
    first_array_letters = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M']
    second_array_letters = ['N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
    result = mlecchita_vikalpa_translate(sentence, first_array_letters, second_array_letters)

    if (result == expect) then
      print *, 'test passed'
    else
      print *, 'test failed'
    end if

  end subroutine test_mlecchita_vikalpa

end module mlecchita_vikalpa_tests


program run_tests
  use mlecchita_vikalpa_tests, only: test_mlecchita_vikalpa
  call test_mlecchita_vikalpa()
end program run_tests