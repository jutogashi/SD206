/*---------------------------------------------------------------*/
/* Telecom Paristech - J-L. Dessalles 2020                       */
/* LOGIC AND KNOWLEDGE REPRESENTATION                            */
/*            http://teaching.dessalles.fr/LKR                   */
/*---------------------------------------------------------------*/


% partial elementary English grammar

% --- Grammar
s --> np(Number,Semantic,_), vp(Number,Semantic).


np(Number,Semantic1,Semantic2) --> det(Number), n(Number,Semantic1,Semantic2).

vp(Number,Semantic) --> v(Number,none,Semantic,_).
vp(Number,Semantic1) --> v(Number,transitive,Semantic1,Semantic2), np(Number,_,Semantic2).   
     
%vp(Number,Semantic) --> v(Number,intransitive,Semantic), pp.        
%vp(Number) --> v(Number,transitive), np(_), pp.    
%vp(Number,Semantic) --> v(Number, diintransitive,Semantic), pp, pp.    
pp --> p, np(_).		% prepositional phrase

% -- Lexicon

det(singular) --> [a].
det(singular) --> [her].
det(plural) --> [many].
det(_) --> [the].

n(singular, sentient,edible) --> [dog].
n(singular,non-sentient,edible) --> [apple].
n(singular,non-sentient,non-edible) --> [door].

v(singular,none,sentient,edible) --> [eats].
v(singular,transitive,sentient,edible) --> [eats].

v(singular,none,sentient,non-edible) --> [thinks].
%v(singular,intransitive,sentient,non-edible) --> [thinks].


v(singular,none) --> [sleeps].    % mary sleeps
v(singular,transitive) --> [likes].    % mary likes lisa   

v(singular,none) --> [talks].
v(singular,intransitive) --> [talks].
v(singular, diintransitive) --> [talks].

p --> [of].
p --> [to].
p --> [about].


