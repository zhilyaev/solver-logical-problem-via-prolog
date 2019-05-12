:- encoding(utf8). 

 

book(жюль). 

book(чарльз). 

book(хигмунд). 

book(яноша). 

book(атилла). 

 

friend(андрей). 

friend(фери). 

friend(илон). 

friend(катя). 

friend(шаньи). 

 

/* андрей */ 

find(X, Y) :- friend(X), X=андрей,  

 book(Y), not(Y=чарльз), not(Y=хигмунд), not(Y=яноша). 

 

/* фери */ 

find(X, Y) :- friend(X), X=фери,  

 book(Y), not(Y=чарльз). 

 

/* илон */ 

find(X, Y) :- friend(X), X=илон,  

 book(Y), not(Y=жюль), not(Y=чарльз). 

 

/* катя */ 

find(X, Y) :- friend(X), X=катя,  

 book(Y), not(Y=жюль), not(Y=чарльз), not(Y=яноша). 

 

/* шаньи */ 

find(X, Y) :- friend(X), X=шаньи,  

 book(Y), not(Y=жюль), not(Y=чарльз), not(Y=хигмунд). 

 

/* Взяли книгу */ 

answer(X1,Y1, X2,Y2, X3,Y3, X4,Y4, X5,Y5) :-  

  X1=андрей, find(X1,Y1),  

  X2=фери, find(X2,Y2), 

  X3=илон, find(X3,Y3),  

  X4=катя, find(X4,Y4),  

  X5=шаньи, find(X5,Y5),  

  Y1\=Y2,  

  Y1\=Y3,  

  Y1\=Y4, 

  Y1\=Y5, 

 

  Y2\=Y3,  

  Y2\=Y4, 

  Y2\=Y5, 

 

  Y3\=Y4, 

  Y3\=Y5, 

 

  Y4\=Y5. 
