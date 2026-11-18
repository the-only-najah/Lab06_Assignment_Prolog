% ARTI 303 - Lab 6 - Prolog Programming


% ---- facts: car(Model, Price, Age, Colour, Mileage) -------------
car(chrysler, 130000, 3, red,   12000).
car(ford,      90000, 4, gray,  25000).
car(datsun,    80000, 1, red,   30000).

truck(ford,    80000, 6, blue,   8000).
truck(datsun,  50000, 5, orange,20000).
truck(toyota,  25000, 2, black, 25000).

can_buy(Cost) :-
    car(Model, C1, _, _, _),
    C1 < Cost,
    write('With '), write(C1),
    write(' you can purchase the car '), write(Model), nl.

can_buy(Cost) :-
    truck(Model, C2, _, _, _),
    C2 < Cost,
    write('With '), write(C2),
    write(' you can purchase the truck '), write(Model), nl.

% =================================================================
% LAB TASK 1 - MODEL ANSWER  (also consider the colour)
%  == Najah - 9FS3 ==

can_buy_color(Cost, Color) :-
    car(Model, C1, _, C2, _),
    C1 < Cost,
    C2 = Color,
    write('With '), write(C1),
    write(' you can purchase the car '), write(Model), write(' in color '), write(Color),nl.

can_buy_color(Cost, Color) :-
    truck(Model, C1, _, C2, _),
    C1 < Cost,
    C2 = Color,
    write('With '), write(C1),
    write(' you can purchase the truck '), write(Model), write(' in color '), write(Color),nl.

% =================================================================
% OUTPUT:

 ?- can_buy_color(150000,red).
With 130000 you can purchase the car chrysler in color red
true ;
With 80000 you can purchase the car datsun in color red
true ;
false.

 ?- can_buy_color(150000,blue).
With 80000 you can purchase the truck ford in color blue
true ;
false.

 ?- can_buy_color(150000,green).
false.

% =================================================================


