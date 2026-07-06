       IDENTIFICATION DIVISION.
       PROGRAM-ID. MINIAPP.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-USER-CHOICE      PIC X VALUE SPACE.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM UNTIL WS-USER-CHOICE = '3'
               PERFORM DISPLAY-MENU-PARA
               ACCEPT WS-USER-CHOICE

               EVALUATE WS-USER-CHOICE
                   WHEN '1'
                       DISPLAY "-> Add task selected."
                   WHEN '2'
                       DISPLAY "-> List tasks selected."
                   WHEN '3'
                       DISPLAY "-> Exiting."
                   WHEN OTHER
                       DISPLAY "-> Invalid choice."
               END-EVALUATE
           END-PERFORM

           STOP RUN.

       DISPLAY-MENU-PARA.
           DISPLAY "----------------------------------".
           DISPLAY "           TODO LIST".
           DISPLAY "----------------------------------".
           DISPLAY "1: Add Task".
           DISPLAY "2: List Tasks".
           DISPLAY "3: Exit".
           DISPLAY "----------------------------------".
           DISPLAY "Enter choice (1-3): " WITH NO ADVANCING.
           EXIT.
