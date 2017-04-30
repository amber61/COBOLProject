       program-id. Program1 as "Program1".

       environment division.
       configuration section.

       data division.
       working-storage section.
       01 GAS PIC 9(2).
           88 GAS-VALUE-E VALUE 0 THROUGH 5.
           88 GAS-VALUE-G VALUE 6 THROUGH 10.
           88 GAS-VALUE-F VALUE 11 THROUGH 15.
           88 GAS-VALUE-P VALUE 16 THROUGH 99.
       01 RATING-VALUE PIC A(1).

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
           IF GAS-VALUE-E
               MOVE "E" to RATING-VALUE
           ELSE IF GAS-VALUE-G
               MOVE "G" to RATING-VALUE
           ELSE IF GAS-VALUE-F
               MOVE "F" to RATING-VALUE
           ELSE IF GAS-VALUE-P 
               MOVE "P" to RATING-VALUE.
           
       DISPLAY-RATINGP-VALUE.
           DISPLAY "THE RATING FOR GAS: "          LINE 10 COLUMN 5.
           DISPLAY RATING-VALUE                    LINE 12 COLUMN 5.
           DISPLAY " "                             LINE 14 COLUMN 5.

       end program Program1.
