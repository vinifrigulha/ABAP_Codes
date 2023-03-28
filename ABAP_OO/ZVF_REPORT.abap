REPORT zvf_program002.

INCLUDE zvf_program001.

DATA: person TYPE REF TO lcl_pessoa,
      player TYPE REF TO lcl_jogador,
      team   TYPE REF TO lcl_selecao,
      shoe   TYPE REF TO lcl_chuteira,
      field  TYPE REF TO lcl_campo.

START-OF-SELECTION.

CREATE OBJECT person.
CREATE OBJECT player.
CREATE OBJECT team.
CREATE OBJECT shoe.
CREATE OBJECT field.

person->nome      = 'Vini'.
person->idade     = 23.
person->falar( ).

SKIP 1.

team->escalar_jogador( player ).

SKIP 1.

player->numero      = 11.
player->posicao     = 'Atacante'.
player->posse_bola  = 1.
player->chutar( ).
player->movimentar( ).

shoe->lado          = 'E'.
shoe->marca         = 'Nike'.
shoe->tamanho       = 43.
shoe->tamanho_trava = 'M'.

field->tipo_grama   = 'Baixa'.
field->comprimento  = 108.
field->largura      = 42.

END-OF-SELECTION.
