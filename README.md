# -HouseholderJacobi

This unfinished project is a part of my college homework

-Tema  abordeaza doar primele 2 taskuri si primul subpunct din taskul 3. Durata rezolvarii acestei teme a fost de o saptamana. Problemele de la fiecare task in parte sunt modularizate.

-La primul task functia generate_probabilities_system calculeaza valorile lui A si b, astfel incat pentru fiecare valoare din diagrama care se afla in matrice, pe pozitia indicata de perechea (i,j), unde i = j = valoare, aceasta va contine numarul de cai in care soarecele s-ar putea deplasa. Pe restul liniei corespunzatoare valorii se va pune valorea -1 in pozitiile corespunzatore unei posibile mutari a soarecelui.

-Functia matrix_to_csr calculeaza vectorii ceruti in cerinta: values, colind, rowptr, astfel se parcurg pe rand elementele din A si se verifica care sunt elementele nenule din matrice si se pun in vectorul values, iar vectorul colind va contine toti indicii corespunzatori elementelor din values. Vectorul rowptr va contine indicii primelor elemente de pe fiecare linie in parte din matricea A.

-Functia Jacobi_factorization calculeaza matricea de iteratie Gj si vectorul cj reprezentative pentru metoda Jacobi, astfel prima data se determina elementele D L U, unde D este o matrice care va contine aceleasi elemente din diagonala principala ca din matricea A. Dupa ce se efectueaza operatiile pe restul matricelor se obtine output-ul cerut.

-Functia Jacobi_sparse realizeaza rezolvarea solutiei Ax = b, dar in forma CSR prin metoda Jacobi.

-Al doilea task este constituit din 2 functii. Prima functie calculeaza centroizii necesari punctelor date ca parametrii. Mai intai se formeaza clusterele corespunzatoare punctelor din care se incepe formarea( i, i+NC...) cu conditia de a nu depasi nr de puncte. Dupa formarea unui cluster, se calculeaza pozitia centroidului corespunzator prin adunarea coordonatelor unei directii si apoi impartirea sum la nr de puncte.

- Dupa ce s-au format primii centroizi se incepe algoritmul propriu-zis pana cand pozitia centroizilor nu se mai modifica. Incheierea algoritmului se face prin compararea centroizilor din pasul anterior cu cei noi. Realizarea algoritmului s-a facut cu ajutorul distantei euclidiene cu scopul de a afla pozitia unui punct fata de restul centroizilor, urmand alegerea celui mai apropiat centroid.

- In functia compute_cost_pc se realizeaza calcularea costului. Prima data se determina clusterele corespunzatoare fiecarui centroid, apoi se afla distantele de la fiecare punct la centroidul caruia ii apartine prin calcularea distantei euclidiene, iar in final se obtine costul

-Taskul 3 este rezolvat partial doar prin prima functie rgbHistogram. Aceasta calculeaza histograma RGB prin vectorul sol. Prima data se calculeaza intervalul necesar pentru aplicarea functiei histc cu scopul de a obtine matricea fiecarei culori. Un element din sol va contine suma tuturor elemtelor de pe o linie a vectorului x corespunzator unei culori a imaginii. Fiecare culoare va genera in sol cate 16 elemente.
