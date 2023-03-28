CLASS lcl_person DEFINITION.
  PUBLIC SECTION.
    DATA: name               TYPE string,
          age                TYPE i,
          scholl_degree      TYPE string,
          musical_instrument TYPE string.

    METHODS: speak,
      play IMPORTING musical_instrument TYPE string.
ENDCLASS.

CLASS lcl_person IMPLEMENTATION.
  METHOD speak.
    WRITE /: 'Hello, world!'.
  ENDMETHOD.
  METHOD play.
    WRITE : 'Im playing the', musical_instrument.
  ENDMETHOD.
ENDCLASS.
