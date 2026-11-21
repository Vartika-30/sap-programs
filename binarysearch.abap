
REPORT z_binary_search_mara.

DATA: it_mara TYPE TABLE OF mara,
      wa_mara TYPE mara.

DATA: lv_matnr TYPE mara-matnr.

SELECT-OPTIONS: s_matnr FOR lv_matnr NO INTERVALS.

START-OF-SELECTION.

  "Fetch records from database table
  SELECT *
    FROM mara
    INTO TABLE it_mara.
    

  "Sort internal table by material number
  SORT it_mara BY matnr ASCENDING.

  "Search for entered material number
  READ TABLE it_mara INTO wa_mara
    WITH KEY matnr = s_matnr-low
    BINARY SEARCH.

  IF sy-subrc = 0.

    WRITE: / 'Material Found!'.
    WRITE: / 'Material Number:', wa_mara-matnr.
    WRITE: / 'Material Type:', wa_mara-mtart.
    WRITE: / 'Material Group:', wa_mara-matkl.
    WRITE: / 'Base Unit:', wa_mara-meins.

  ELSE.

    WRITE: / 'Material Not Found!'.

  ENDIF.