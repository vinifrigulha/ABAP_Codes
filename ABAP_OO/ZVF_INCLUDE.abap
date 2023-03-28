CLASS lcl_pessoa DEFINITION.
  PUBLIC SECTION.
    DATA: nome          TYPE string,
          idade         TYPE i,
          cor_racial    TYPE string,
          estilo_cabelo TYPE string.

    METHODS: falar.
ENDCLASS.

CLASS lcl_tecnico DEFINITION.
ENDCLASS.

CLASS lcl_jogador DEFINITION.
  PUBLIC SECTION.
    DATA: numero     TYPE i,
          posicao    TYPE string,
          posse_bola TYPE boolean.

    METHODS: chutar,
             movimentar IMPORTING distancia TYPE p.
ENDCLASS.

CLASS lcl_chuteira DEFINITION.
  PUBLIC SECTION.
    DATA: tamanho       TYPE i,
          marca         TYPE string,
          tamanho_trava TYPE c,
          lado          TYPE c.
ENDCLASS.

CLASS lcl_campo DEFINITION.
  PUBLIC SECTION.
    DATA: tipo_grama  TYPE string,
          largura     TYPE p,
          comprimento TYPE p.
ENDCLASS.

CLASS lcl_selecao DEFINITION.
  PUBLIC SECTION.
    METHODS: escalar_jogador IMPORTING jogador TYPE REF TO lcl_jogador.
ENDCLASS.

CLASS lcl_pessoa IMPLEMENTATION.
  METHOD falar.
    WRITE /: 'A pessoa falou'.
  ENDMETHOD.
ENDCLASS.

CLASS lcl_jogador IMPLEMENTATION.
  METHOD chutar.
    WRITE /: 'O jogador chutou'.
  ENDMETHOD.

  METHOD movimentar.
    WRITE /: 'O jogador movimentou-se'.
  ENDMETHOD.
ENDCLASS.

CLASS lcl_selecao IMPLEMENTATION.
  METHOD escalar_jogador.
    WRITE /: 'O jogador foi escalado'.
  ENDMETHOD.
ENDCLASS.
