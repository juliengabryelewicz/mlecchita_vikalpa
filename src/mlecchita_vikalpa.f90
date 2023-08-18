module mlecchita_vikalpa
  implicit none
  public :: mlecchita_vikalpa_translate
contains

  function mlecchita_vikalpa_translate(sentence, first_array_letters, second_array_letters) result(translated)
    character(:), allocatable :: sentence, translated
    character :: first_array_letters(13), second_array_letters(13)
    integer :: i, j
    sentence = trim(sentence)
    translated = ""

    do j=0,len(sentence)
      do i=1,13
        if(sentence(j+1:j+1) == first_array_letters(i)) then
          translated = translated // second_array_letters(i)
        else if (sentence(j+1:j+1) == second_array_letters(i)) then
          translated = translated // first_array_letters(i)
        end if
      end do
    end do

  end function mlecchita_vikalpa_translate

end module mlecchita_vikalpa
