In-Theaters-Now
===============

Program extracts info from a JSON file from the Rotten Tomatoes API to display the list of movies currently in theaters.

A GREAT ALTERNATIVE TO KNOW WHATS WORTH SEEING STRAIGHT FROM YOUR COMMAND LINE !

This program directly extract information provided by the Rotten Tomatoes API. In order to re-use the program 
you have to follow these steps:

  1) sign up for an API key by visiting the Rotten Tomatoes API page. 
  2) follow the instructions on the Rotten Tomatoes API page
  3) Once you have the key, set it as an environment variable by doing the following in your commandline:
      
      a) $ export ROTTEN_TOMATOES_API_KEY=<YOUR_API_KEY>
      b) $ echo $ROTTEN_TOMATOES_API_KEY
          => This last command should return your API key
          
  4) run the program

Basically, the program lists all the current movies in theaters in the following format: 

rating / movie title / mmpa / first three actors

The list is sorted by the rating (rating is the average of critics and audience ratings)

SAMPLE OUTPUT: 


IN THEATERS NOW:

91 - Captain America: The Winter Soldier (PG-13) starring Chris Evans, Anthony Mackie, Sebastian Stan

90 - The Grand Budapest Hotel (R) starring Saoirse Ronan, Ralph Fiennes, Bill Murray

85 - Bears (G) starring John C. Reilly

74 - Neighbors (R) starring Seth Rogen, Rose Byrne, Zac Efron

74 - Godzilla (PG-13) starring Aaron Taylor-Johnson, Elizabeth Olsen, Bryan Cranston

67 - Million Dollar Arm (PG) starring Jon Hamm, Aasif Mandvi, Bill Paxton

67 - Draft Day (PG-13) starring Kevin Costner, Jennifer Garner, Denis Leary

62 - The Amazing Spider-Man 2 (PG-13) starring Andrew Garfield, Emma Stone, Jamie Foxx

62 - Heaven Is for Real (PG) starring Greg Kinnear, Kelly Reilly, Connor Corum

58 - Divergent (PG-13) starring Shailene Woodley, Theo James, Kate Winslet

55 - Rio 2 (G) starring Anne Hathaway, Jesse Eisenberg, will.i.am

52 - Moms' Night Out (PG) starring Sarah Drew, Patricia Heaton, Trace Adkins

50 - God's Not Dead (PG) starring Shane Harper, Kevin Sorbo, David A.R. White

49 - Legends of Oz: Dorothy's Return (PG) starring Lea Michele, Jim Belushi, Dan Aykroyd

45 - The Other Woman (PG-13) starring Cameron Diaz, Leslie Mann, Kate Upton

40 - Brick Mansions (PG-13) starring Paul Walker, David Belle, RZA

END OF OUTPUT
    
