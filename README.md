# BoldPerformanceCounter
A repo to demonstrate how BoldPerformanceCounter is used

This repository contains a copy of https://github.com/Embarcadero/BoldForDelphi/blob/develop/Source/BoldPerformanceCounter.pas
It is a class that make it easier to measure performance of your application by set up a tree of counters you can measure and see what parts is slow
Included a console demo how it is supposed to work.

Output like this:

Root counter                                       10091,216624 sec (own: 10091,216624 sec) calls:     1
 Child [0]                                         0,000000 sec (own: -7,505902 sec) calls:     1  0,00 % of Root counter
  Child [0, 0]                                     1,458792 sec (own: 0,051880 sec) calls:     1  0,00 % of Child [0]
   Child [0, 0, 0]                                 0,704731 sec calls:     1  48,31 % of Child [0, 0]

   Child [0, 0, 1]                                 0,030606 sec calls:     1  2,10 % of Child [0, 0]

   Child [0, 0, 2]                                 0,671575 sec calls:     1  46,04 % of Child [0, 0]


  Child [0, 1]                                     1,700839 sec (own: 0,283445 sec) calls:     1  0,00 % of Child [0]
   Child [0, 1, 0]                                 0,638497 sec calls:     1  37,54 % of Child [0, 1]

   Child [0, 1, 1]                                 0,592066 sec calls:     1  34,81 % of Child [0, 1]

   Child [0, 1, 2]                                 0,186831 sec calls:     1  10,98 % of Child [0, 1]


  Child [0, 2]                                     2,047061 sec (own: 0,699878 sec) calls:     1  0,00 % of Child [0]
   Child [0, 2, 0]                                 0,061295 sec calls:     1  2,99 % of Child [0, 2]

   Child [0, 2, 1]                                 0,867675 sec calls:     1  42,39 % of Child [0, 2]

   Child [0, 2, 2]                                 0,418213 sec calls:     1  20,43 % of Child [0, 2]


  Child [0, 3]                                     2,299210 sec (own: 0,361935 sec) calls:     1  0,00 % of Child [0]
   Child [0, 3, 0]                                 0,994613 sec calls:     1  43,26 % of Child [0, 3]

   Child [0, 3, 1]                                 0,478996 sec calls:     1  20,83 % of Child [0, 3]

   Child [0, 3, 2]                                 0,463666 sec calls:     1  20,17 % of Child [0, 3]



 Child [1]                                         0,000000 sec (own: -8,161923 sec) calls:     1  0,00 % of Root counter
  Child [1, 0]                                     2,687109 sec (own: 0,142036 sec) calls:     1  0,00 % of Child [1]
   Child [1, 0, 0]                                 0,952596 sec calls:     1  35,45 % of Child [1, 0]

   Child [1, 0, 1]                                 0,812008 sec calls:     1  30,22 % of Child [1, 0]

   Child [1, 0, 2]                                 0,780469 sec calls:     1  29,04 % of Child [1, 0]


  Child [1, 1]                                     2,307593 sec (own: 0,281105 sec) calls:     1  0,00 % of Child [1]
   Child [1, 1, 0]                                 0,718361 sec calls:     1  31,13 % of Child [1, 1]

   Child [1, 1, 1]                                 0,391049 sec calls:     1  16,95 % of Child [1, 1]

   Child [1, 1, 2]                                 0,917078 sec calls:     1  39,74 % of Child [1, 1]


  Child [1, 2]                                     1,600580 sec (own: 0,264603 sec) calls:     1  0,00 % of Child [1]
   Child [1, 2, 0]                                 0,777261 sec calls:     1  48,56 % of Child [1, 2]

   Child [1, 2, 1]                                 0,231419 sec calls:     1  14,46 % of Child [1, 2]

   Child [1, 2, 2]                                 0,327298 sec calls:     1  20,45 % of Child [1, 2]


  Child [1, 3]                                     1,566641 sec (own: 0,173401 sec) calls:     1  0,00 % of Child [1]
   Child [1, 3, 0]                                 0,510851 sec calls:     1  32,61 % of Child [1, 3]

   Child [1, 3, 1]                                 0,153564 sec calls:     1  9,80 % of Child [1, 3]

   Child [1, 3, 2]                                 0,728824 sec calls:     1  46,52 % of Child [1, 3]



 Child [2]                                         0,000000 sec (own: -8,126551 sec) calls:     1  0,00 % of Root counter
  Child [2, 0]                                     1,236935 sec (own: 0,127453 sec) calls:     1  0,00 % of Child [2]
   Child [2, 0, 0]                                 0,740251 sec calls:     1  59,85 % of Child [2, 0]

   Child [2, 0, 1]                                 0,077136 sec calls:     1  6,24 % of Child [2, 0]

   Child [2, 0, 2]                                 0,292095 sec calls:     1  23,61 % of Child [2, 0]


  Child [2, 1]                                     1,982349 sec (own: 0,402444 sec) calls:     1  0,00 % of Child [2]
   Child [2, 1, 0]                                 0,771313 sec calls:     1  38,91 % of Child [2, 1]

   Child [2, 1, 1]                                 0,235017 sec calls:     1  11,86 % of Child [2, 1]

   Child [2, 1, 2]                                 0,573575 sec calls:     1  28,93 % of Child [2, 1]


  Child [2, 2]                                     1,506402 sec (own: 0,421626 sec) calls:     1  0,00 % of Child [2]
   Child [2, 2, 0]                                 0,697593 sec calls:     1  46,31 % of Child [2, 2]

   Child [2, 2, 1]                                 0,310887 sec calls:     1  20,64 % of Child [2, 2]

   Child [2, 2, 2]                                 0,076296 sec calls:     1  5,06 % of Child [2, 2]


  Child [2, 3]                                     3,400866 sec (own: 0,811090 sec) calls:     1  0,00 % of Child [2]
   Child [2, 3, 0]                                 0,947411 sec calls:     1  27,86 % of Child [2, 3]

   Child [2, 3, 1]                                 0,915495 sec calls:     1  26,92 % of Child [2, 3]

   Child [2, 3, 2]                                 0,726869 sec calls:     1  21,37 % of Child [2, 3]



 Child [3]                                         0,000000 sec (own: -7,578978 sec) calls:     1  0,00 % of Root counter
  Child [3, 0]                                     1,722153 sec (own: 0,293781 sec) calls:     1  0,00 % of Child [3]
   Child [3, 0, 0]                                 0,185699 sec calls:     1  10,78 % of Child [3, 0]

   Child [3, 0, 1]                                 0,497171 sec calls:     1  28,87 % of Child [3, 0]

   Child [3, 0, 2]                                 0,745502 sec calls:     1  43,29 % of Child [3, 0]


  Child [3, 1]                                     2,033124 sec (own: 0,091440 sec) calls:     1  0,00 % of Child [3]
   Child [3, 1, 0]                                 0,369967 sec calls:     1  18,20 % of Child [3, 1]

   Child [3, 1, 1]                                 0,756685 sec calls:     1  37,22 % of Child [3, 1]

   Child [3, 1, 2]                                 0,815031 sec calls:     1  40,09 % of Child [3, 1]


  Child [3, 2]                                     2,324536 sec (own: 0,642020 sec) calls:     1  0,00 % of Child [3]
   Child [3, 2, 0]                                 0,669143 sec calls:     1  28,79 % of Child [3, 2]

   Child [3, 2, 1]                                 0,623095 sec calls:     1  26,81 % of Child [3, 2]

   Child [3, 2, 2]                                 0,390278 sec calls:     1  16,79 % of Child [3, 2]


  Child [3, 3]                                     1,499166 sec (own: 0,739113 sec) calls:     1  0,00 % of Child [3]
   Child [3, 3, 0]                                 0,245982 sec calls:     1  16,41 % of Child [3, 3]

   Child [3, 3, 1]                                 0,202805 sec calls:     1  13,53 % of Child [3, 3]

   Child [3, 3, 2]                                 0,311266 sec calls:     1  20,76 % of Child [3, 3]



 Child [4]                                         0,000000 sec (own: -8,513804 sec) calls:     1  0,00 % of Root counter
  Child [4, 0]                                     2,664548 sec (own: 0,402090 sec) calls:     1  0,00 % of Child [4]
   Child [4, 0, 0]                                 0,929933 sec calls:     1  34,90 % of Child [4, 0]

   Child [4, 0, 1]                                 0,916015 sec calls:     1  34,38 % of Child [4, 0]

   Child [4, 0, 2]                                 0,416510 sec calls:     1  15,63 % of Child [4, 0]


  Child [4, 1]                                     2,078608 sec (own: 0,127608 sec) calls:     1  0,00 % of Child [4]
   Child [4, 1, 0]                                 0,448731 sec calls:     1  21,59 % of Child [4, 1]

   Child [4, 1, 1]                                 0,510095 sec calls:     1  24,54 % of Child [4, 1]

   Child [4, 1, 2]                                 0,992174 sec calls:     1  47,73 % of Child [4, 1]


  Child [4, 2]                                     2,132679 sec (own: 0,727016 sec) calls:     1  0,00 % of Child [4]
   Child [4, 2, 0]                                 0,515861 sec calls:     1  24,19 % of Child [4, 2]

   Child [4, 2, 1]                                 0,311363 sec calls:     1  14,60 % of Child [4, 2]

   Child [4, 2, 2]                                 0,578439 sec calls:     1  27,12 % of Child [4, 2]


  Child [4, 3]                                     1,637969 sec (own: 0,686672 sec) calls:     1  0,00 % of Child [4]
   Child [4, 3, 0]                                 0,171366 sec calls:     1  10,46 % of Child [4, 3]

   Child [4, 3, 1]                                 0,344642 sec calls:     1  21,04 % of Child [4, 3]

   Child [4, 3, 2]                                 0,435289 sec calls:     1  26,57 % of Child [4, 3]
