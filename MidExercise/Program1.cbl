       program-id. Program1 as "Program1".

       environment division.
       configuration section.

       DATA DIVISION.
       
       WORKING-STORAGE SECTION.
       01 FLD-1 PIC 9(3) VALUE 123. 
       01 FLD-2 PIC 9(3) VALUE 223.
       01 FLD-3 PIC 9(2) VALUE 10.
       01 FLD-4 PIC 9(3) VALUE 100.
       01 FLD-5 PIC 9(2) VALUE 22.
       01 FLD-6 PIC 9(4) VALUE 1234.
       01 FLD-7 PIC A(4) VALUE "  ab".
       01 FLD-8 PIC A(5) VALUE "CDEFG".
       01 FLD-9 PIC X(3) VALUE "TR8".
       01 FLD-10 PIC X(6) VALUE "YUZ97M".
       
       01 COURSE-NAMES.
       05 COURSE-ID    OCCURS 10 TIMES.

       PROCEDURE DIVISION.


       CalculateResult.
      *    MULTIPLY FLD-1 BY FLD-2 GIVING FLD-3.
      *    DIVIDE FLD-5 BY FLD-3 GIVING FLD-4 ROUNDED.
       COMPUTE FLD-2 ROUNDED = FLD-5 / FLD-4+FLD-3 .
       DISPLAY FLD-2.
       STOP RUN.
       end program Program1.
