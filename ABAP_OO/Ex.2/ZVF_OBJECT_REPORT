REPORT zvf_object.

INCLUDE zvf_class.

DATA: vini TYPE REF TO lcl_person.

START-OF-SELECTION.

  CREATE OBJECT vini.
  vini->name = 'Vinícius'.
  vini->age = 23.
  vini->scholl_degree = 'Incomplete Superior'.
  vini->musical_instrument = 'Violin'.
  vini->speak( ).
  SKIP 1.
  vini->play( vini->musical_instrument ).

END-OF-SELECTION.
