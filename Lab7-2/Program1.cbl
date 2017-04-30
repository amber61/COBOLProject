       program-id. Program1 as "linear coding structure ".

       environment division.
       configuration section.

       data division.
       working-storage section.
       01 GAS PIC 9(2).
       01 RATING-VALUE     PIC A(1).
           
       procedure division.
       SEARCH-GAS-RATING.
           PERFORM INPUT-GAS-VALUE.
           PERFORM SEARCH-RATING-VALUE.
           PERFORM DISPLAY-RATINGP-VALUE.
           STOP RUN.
           
       INPUT-GAS-VALUE.
           DISPLAY "ENTER A VALUE OF GAS: "        LINE 6  COLUMN 5.
           ACCEPT GAS                              LINE 8  COLUMN 5.
           
       SEARCH-RATING-VALUE.
           IF GAS < 6
               MOVE "E" to RATING-VALUE
           ELSE IF GAS < 11
               MOVE "G" to RATING-VALUE
           ELSE IF GAS < 16
               MOVE "F" to RATING-VALUE
           ELSE IF GAS > 15 
               MOVE "P" to RATING-VALUE.
       DISPLAY-RATINGP-VALUE.
           DISPLAY "THE RATING FOR GAS: "          LINE 10 COLUMN 5.
           DISPLAY RATING-VALUE                    LINE 12 COLUMN 5.
           DISPLAY " "                             LINE 14 COLUMN 5.

           goback.

       end program Program1.