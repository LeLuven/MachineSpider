SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt WHERE staatsname = "wyoming" ) AND staatsname = "wyoming";	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt WHERE staatsname = "wyoming" ) AND staatsname = "wyoming";	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt WHERE staatsname = "wyoming" ) AND staatsname = "wyoming";	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt WHERE staatsname = "wyoming" ) AND staatsname = "wyoming";	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt WHERE staatsname = "wyoming" ) AND staatsname = "wyoming";	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt WHERE staatsname = "wyoming" ) AND staatsname = "wyoming";	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt WHERE staatsname = "wyoming" ) AND staatsname = "wyoming";	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt WHERE staatsname = "wyoming" ) AND staatsname = "wyoming";	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt WHERE staatsname = "wyoming" ) AND staatsname = "wyoming";	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt WHERE staatsname = "wyoming" ) AND staatsname = "wyoming";	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt WHERE staatsname = "wyoming" ) AND staatsname = "wyoming";	geo
SELECT flussname FROM fluss WHERE durchquerung IN ( SELECT staatsname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt ) );	geo
SELECT gebiet FROM state WHERE staatsname = "new mexico";	geo
SELECT gebiet FROM state WHERE staatsname = "new mexico";	geo
SELECT gebiet FROM state WHERE staatsname = "new mexico";	geo
SELECT gebiet FROM state WHERE staatsname = "new mexico";	geo
SELECT gebiet FROM state WHERE staatsname = "new mexico";	geo
SELECT gebiet FROM state WHERE staatsname = "new mexico";	geo
SELECT bevölkerung FROM state WHERE staatsname = "california";	geo
SELECT bevölkerung FROM state WHERE staatsname = "california";	geo
SELECT bevölkerung FROM state WHERE staatsname = "california";	geo
SELECT bevölkerung FROM state WHERE staatsname = "california";	geo
SELECT bevölkerung FROM state WHERE staatsname = "california";	geo
SELECT bevölkerung FROM state WHERE staatsname = "california";	geo
SELECT bevölkerung FROM state WHERE staatsname = "california";	geo
SELECT bevölkerung FROM state WHERE staatsname = "california";	geo
SELECT bevölkerung FROM state WHERE staatsname = "california";	geo
SELECT bevölkerung FROM state WHERE staatsname = "california";	geo
SELECT bevölkerung FROM state WHERE staatsname = "california";	geo
SELECT bevölkerung FROM state WHERE staatsname = "california";	geo
SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MIN ( bevölkerung ) FROM state );	geo
SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MIN ( bevölkerung ) FROM state );	geo
SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MIN ( bevölkerung ) FROM state );	geo
SELECT stadtname FROM stadt WHERE staatsname = "texas";	geo
SELECT stadtname FROM stadt WHERE staatsname = "texas";	geo
SELECT stadtname FROM stadt WHERE staatsname = "texas";	geo
SELECT stadtname FROM stadt WHERE staatsname = "texas";	geo
SELECT stadtname FROM stadt WHERE staatsname = "texas";	geo
SELECT stadtname FROM stadt WHERE staatsname = "texas";	geo
SELECT gebiet FROM state WHERE hauptstadt = "albany";	geo
SELECT see_name FROM see WHERE staatsname = "california";	geo
SELECT see_name FROM see WHERE gebiet > 750 AND staatsname = "michigan";	geo
SELECT staatsname FROM state;	geo
SELECT staatsname FROM state;	geo
SELECT staatsname FROM state;	geo
SELECT durchquerung FROM fluss WHERE flussname = "ohio";	geo
SELECT durchquerung FROM fluss WHERE flussname = "ohio";	geo
SELECT durchquerung FROM fluss WHERE flussname = "ohio";	geo
SELECT durchquerung FROM fluss WHERE flussname = "ohio";	geo
SELECT durchquerung FROM fluss WHERE flussname = "ohio";	geo
SELECT durchquerung FROM fluss WHERE flussname = "ohio";	geo
SELECT durchquerung FROM fluss WHERE flussname = "ohio";	geo
SELECT durchquerung FROM fluss WHERE flussname = "ohio";	geo
SELECT durchquerung FROM fluss WHERE flussname = "ohio";	geo
SELECT durchquerung FROM fluss WHERE flussname = "ohio";	geo
SELECT durchquerung FROM fluss WHERE flussname = "ohio";	geo
SELECT durchquerung FROM fluss WHERE flussname = "ohio";	geo
SELECT durchquerung FROM fluss WHERE flussname = "ohio";	geo
SELECT durchquerung FROM fluss WHERE flussname = "ohio";	geo
SELECT durchquerung FROM fluss WHERE flussname = "ohio";	geo
SELECT durchquerung FROM fluss WHERE flussname = "ohio";	geo
SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state );	geo
SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state );	geo
SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state );	geo
SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state );	geo
SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state );	geo
SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state );	geo
SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state );	geo
SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state );	geo
SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state );	geo
SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state );	geo
SELECT niedrigste_erhebung FROM highlow WHERE staatsname = "pennsylvania";	geo
SELECT höchster_punkt , staatsname FROM highlow WHERE niedrigste_erhebung = 0;	geo
SELECT länge FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss );	geo
SELECT länge FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss );	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss WHERE durchquerung = "texas" ) AND durchquerung = "texas";	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss WHERE durchquerung = "texas" ) AND durchquerung = "texas";	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss WHERE durchquerung = "texas" ) AND durchquerung = "texas";	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss WHERE durchquerung = "texas" ) AND durchquerung = "texas";	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss WHERE durchquerung = "texas" ) AND durchquerung = "texas";	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss WHERE durchquerung = "texas" ) AND durchquerung = "texas";	geo
SELECT COUNT ( flussname ) FROM fluss WHERE durchquerung = "idaho";	geo
SELECT COUNT ( flussname ) FROM fluss WHERE durchquerung = "idaho";	geo
SELECT COUNT ( flussname ) FROM fluss WHERE durchquerung = "idaho";	geo
SELECT COUNT ( flussname ) FROM fluss WHERE durchquerung = "idaho";	geo
SELECT COUNT ( flussname ) FROM fluss WHERE durchquerung = "idaho";	geo
SELECT COUNT ( flussname ) FROM fluss WHERE durchquerung = "idaho";	geo
SELECT COUNT ( flussname ) FROM fluss WHERE durchquerung = "idaho";	geo
SELECT grenze FROM grenzinfo WHERE staatsname = "kentucky";	geo
SELECT grenze FROM grenzinfo WHERE staatsname = "kentucky";	geo
SELECT grenze FROM grenzinfo WHERE staatsname = "kentucky";	geo
SELECT grenze FROM grenzinfo WHERE staatsname = "kentucky";	geo
SELECT grenze FROM grenzinfo WHERE staatsname = "kentucky";	geo
SELECT grenze FROM grenzinfo WHERE staatsname = "kentucky";	geo
SELECT grenze FROM grenzinfo WHERE staatsname = "kentucky";	geo
SELECT grenze FROM grenzinfo WHERE staatsname = "kentucky";	geo
SELECT grenze FROM grenzinfo WHERE staatsname = "kentucky";	geo
SELECT grenze FROM grenzinfo WHERE staatsname = "kentucky";	geo
SELECT grenze FROM grenzinfo WHERE staatsname = "kentucky";	geo
SELECT grenze FROM grenzinfo WHERE staatsname = "kentucky";	geo
SELECT grenze FROM grenzinfo WHERE staatsname = "kentucky";	geo
SELECT flussname FROM fluss WHERE durchquerung = "illinois";	geo
SELECT flussname FROM fluss WHERE durchquerung = "illinois";	geo
SELECT flussname FROM fluss WHERE durchquerung = "illinois";	geo
SELECT flussname FROM fluss WHERE durchquerung = "illinois";	geo
SELECT flussname FROM fluss WHERE durchquerung = "illinois";	geo
SELECT flussname FROM fluss WHERE durchquerung = "illinois";	geo
SELECT flussname FROM fluss WHERE durchquerung = "illinois";	geo
SELECT flussname FROM fluss WHERE durchquerung = "illinois";	geo
SELECT flussname FROM fluss WHERE durchquerung = "illinois";	geo
SELECT flussname FROM fluss WHERE durchquerung = "illinois";	geo
SELECT flussname FROM fluss WHERE durchquerung = "illinois";	geo
SELECT flussname FROM fluss WHERE durchquerung = "illinois";	geo
SELECT flussname FROM fluss WHERE durchquerung = "illinois";	geo
SELECT flussname FROM fluss WHERE durchquerung = "illinois";	geo
SELECT flussname FROM fluss WHERE durchquerung = "illinois";	geo
SELECT flussname FROM fluss WHERE durchquerung = "illinois";	geo
SELECT staatsname FROM stadt WHERE stadtname = "springfield";	geo
SELECT staatsname FROM stadt WHERE stadtname = "springfield";	geo
SELECT staatsname FROM stadt WHERE stadtname = "springfield";	geo
SELECT staatsname FROM stadt WHERE stadtname = "springfield";	geo
SELECT staatsname FROM stadt WHERE stadtname = "springfield";	geo
SELECT staatsname FROM stadt WHERE stadtname = "springfield";	geo
SELECT staatsname FROM stadt WHERE stadtname = "springfield";	geo
SELECT staatsname FROM stadt WHERE stadtname = "springfield";	geo
SELECT staatsname FROM stadt WHERE stadtname = "springfield";	geo
SELECT staatsname FROM stadt WHERE stadtname = "springfield";	geo
SELECT staatsname FROM stadt WHERE stadtname = "springfield";	geo
SELECT staatsname FROM stadt WHERE stadtname = "springfield";	geo
SELECT staatsname FROM stadt WHERE stadtname = "springfield";	geo
SELECT bevölkerung FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state );	geo
SELECT bevölkerung FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state );	geo
SELECT bevölkerung FROM stadt WHERE stadtname = "boulder";	geo
SELECT bevölkerung FROM stadt WHERE stadtname = "boulder";	geo
SELECT bevölkerung FROM stadt WHERE stadtname = "boulder";	geo
SELECT bevölkerung FROM stadt WHERE stadtname = "boulder";	geo
SELECT bevölkerung FROM stadt WHERE stadtname = "boulder";	geo
SELECT bevölkerung FROM stadt WHERE stadtname = "boulder";	geo
SELECT bevölkerung FROM stadt WHERE stadtname = "boulder";	geo
SELECT bevölkerung FROM stadt WHERE stadtname = "boulder";	geo
SELECT bevölkerung FROM stadt WHERE stadtname = "boulder";	geo
SELECT bevölkerung FROM stadt WHERE stadtname = "boulder";	geo
SELECT bevölkerung FROM stadt WHERE stadtname = "boulder";	geo
SELECT bevölkerung FROM stadt WHERE stadtname = "boulder";	geo
SELECT bevölkerung FROM stadt WHERE stadtname = "boulder";	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MIN ( bevölkerung ) FROM stadt WHERE staatsname = "alaska" ) AND staatsname = "alaska";	geo
SELECT durchquerung FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss );	geo
SELECT durchquerung FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss );	geo
SELECT durchquerung FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss );	geo
SELECT durchquerung FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss );	geo
SELECT durchquerung FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss );	geo
SELECT dichte FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state );	geo
SELECT dichte FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state );	geo
SELECT staatsname FROM highlow WHERE höchste_erhebung > ( SELECT höchste_erhebung FROM highlow WHERE staatsname = "colorado" );	geo
SELECT staatsname FROM highlow WHERE höchste_erhebung > ( SELECT höchste_erhebung FROM highlow WHERE staatsname = "colorado" );	geo
SELECT staatsname FROM highlow WHERE höchste_erhebung > ( SELECT höchste_erhebung FROM highlow WHERE staatsname = "colorado" );	geo
SELECT höchste_erhebung FROM highlow WHERE staatsname = "delaware";	geo
SELECT höchste_erhebung FROM highlow WHERE staatsname = "delaware";	geo
SELECT höchste_erhebung FROM highlow WHERE staatsname = "delaware";	geo
SELECT höchste_erhebung FROM highlow WHERE staatsname = "delaware";	geo
SELECT höchste_erhebung FROM highlow WHERE staatsname = "delaware";	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss );	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss );	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss );	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss );	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss );	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss );	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss );	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss );	geo
SELECT staatsname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt );	geo
SELECT staatsname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt );	geo
SELECT staatsname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt );	geo
SELECT staatsname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MIN ( bevölkerung ) FROM stadt WHERE staatsname IN ( SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state ) ) ) AND staatsname IN ( SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state ) );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state );	geo
SELECT höchster_punkt FROM highlow WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "mississippi" );	geo
SELECT höchster_punkt FROM highlow WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "mississippi" );	geo
SELECT höchster_punkt FROM highlow WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "colorado" ) ORDER BY höchste_erhebung DESC LIMIT 1;	geo
SELECT höchster_punkt FROM highlow WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "colorado" ) ORDER BY höchste_erhebung DESC LIMIT 1;	geo
SELECT staatsname FROM state WHERE dichte = ( SELECT MIN ( dichte ) FROM state );	geo
SELECT staatsname FROM state WHERE dichte = ( SELECT MIN ( dichte ) FROM state );	geo
SELECT staatsname FROM state WHERE dichte = ( SELECT MIN ( dichte ) FROM state );	geo
SELECT staatsname FROM state WHERE dichte = ( SELECT MIN ( dichte ) FROM state );	geo
SELECT staatsname FROM state WHERE dichte = ( SELECT MIN ( dichte ) FROM state );	geo
SELECT staatsname FROM state WHERE dichte = ( SELECT MIN ( dichte ) FROM state );	geo
SELECT staatsname FROM state WHERE dichte = ( SELECT MIN ( dichte ) FROM state );	geo
SELECT staatsname FROM state WHERE dichte = ( SELECT MIN ( dichte ) FROM state );	geo
SELECT staatsname FROM state WHERE dichte = ( SELECT MIN ( dichte ) FROM state );	geo
SELECT höchster_punkt FROM highlow WHERE staatsname = "texas";	geo
SELECT höchster_punkt FROM highlow WHERE staatsname = "texas";	geo
SELECT höchster_punkt FROM highlow WHERE staatsname = "texas";	geo
SELECT höchster_punkt FROM highlow WHERE staatsname = "texas";	geo
SELECT höchster_punkt FROM highlow WHERE staatsname = "texas";	geo
SELECT staatsname FROM state WHERE staatsname NOT IN ( SELECT staatsname FROM grenzinfo );	geo
SELECT staatsname FROM state WHERE staatsname NOT IN ( SELECT staatsname FROM grenzinfo );	geo
SELECT staatsname FROM state WHERE staatsname NOT IN ( SELECT staatsname FROM grenzinfo );	geo
SELECT gebiet FROM state WHERE dichte = ( SELECT MIN ( dichte ) FROM state );	geo
SELECT COUNT ( staatsname ) FROM highlow WHERE niedrigste_erhebung < ( SELECT niedrigste_erhebung FROM highlow WHERE staatsname = "alabama" );	geo
SELECT höchste_erhebung FROM highlow WHERE höchster_punkt = "guadalupe peak";	geo
SELECT höchste_erhebung FROM highlow WHERE höchster_punkt = "guadalupe peak";	geo
SELECT höchste_erhebung FROM highlow WHERE höchster_punkt = "guadalupe peak";	geo
SELECT MAX ( höchste_erhebung ) FROM highlow;	geo
SELECT MAX ( höchste_erhebung ) FROM highlow;	geo
SELECT MAX ( höchste_erhebung ) FROM highlow;	geo
SELECT MAX ( höchste_erhebung ) FROM highlow;	geo
SELECT länge FROM fluss WHERE flussname = "rio grande";	geo
SELECT länge FROM fluss WHERE flussname = "rio grande";	geo
SELECT länge FROM fluss WHERE flussname = "rio grande";	geo
SELECT länge FROM fluss WHERE flussname = "rio grande";	geo
SELECT länge FROM fluss WHERE flussname = "rio grande";	geo
SELECT länge FROM fluss WHERE flussname = "rio grande";	geo
SELECT länge FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss WHERE durchquerung = "texas" ) AND durchquerung = "texas";	geo
SELECT länge FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss WHERE durchquerung = "texas" ) AND durchquerung = "texas";	geo
SELECT COUNT ( hauptstadt ) FROM state WHERE staatsname = "rhode island";	geo
SELECT COUNT ( stadtname ) FROM stadt;	geo
SELECT COUNT ( stadtname ) FROM stadt;	geo
SELECT COUNT ( stadtname ) FROM stadt;	geo
SELECT COUNT ( stadtname ) FROM stadt;	geo
SELECT COUNT ( stadtname ) FROM stadt;	geo
SELECT COUNT ( stadtname ) FROM stadt WHERE bevölkerung > 150000;	geo
SELECT bevölkerung FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt );	geo
SELECT COUNT ( flussname ) FROM fluss WHERE flussname = "colorado";	geo
SELECT COUNT ( flussname ) FROM fluss WHERE flussname = "colorado";	geo
SELECT bevölkerung FROM stadt WHERE stadtname = "seattle" AND staatsname = "washington";	geo
SELECT bevölkerung FROM stadt WHERE stadtname = "seattle" AND staatsname = "washington";	geo
SELECT bevölkerung FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt WHERE staatsname = "alaska" ) AND staatsname = "alaska";	geo
SELECT bevölkerung FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt WHERE staatsname = "alaska" ) AND staatsname = "alaska";	geo
SELECT bevölkerung FROM stadt WHERE stadtname = ( SELECT hauptstadt FROM state WHERE staatsname = "texas" );	geo
SELECT bevölkerung FROM stadt WHERE stadtname = ( SELECT hauptstadt FROM state WHERE staatsname = "texas" );	geo
SELECT SUM ( bevölkerung ) FROM state;	geo
SELECT SUM ( bevölkerung ) FROM state;	geo
SELECT COUNT ( staatsname ) FROM state;	geo
SELECT COUNT ( staatsname ) FROM state;	geo
SELECT COUNT ( staatsname ) FROM state;	geo
SELECT COUNT ( staatsname ) FROM state;	geo
SELECT COUNT ( staatsname ) FROM state;	geo
SELECT COUNT ( staatsname ) FROM state;	geo
SELECT COUNT ( grenze ) FROM grenzinfo WHERE staatsname = "kentucky";	geo
SELECT COUNT ( grenze ) FROM grenzinfo WHERE staatsname = "kentucky";	geo
SELECT COUNT ( grenze ) FROM grenzinfo WHERE staatsname = "kentucky";	geo
SELECT COUNT ( grenze ) FROM grenzinfo WHERE staatsname = "kentucky";	geo
SELECT COUNT ( grenze ) FROM grenzinfo WHERE staatsname = "kentucky";	geo
SELECT COUNT ( grenze ) FROM grenzinfo WHERE staatsname IN ( SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state ) );	geo
SELECT COUNT ( DISTINCT staatsname ) FROM state WHERE staatsname NOT IN ( SELECT durchquerung FROM fluss );	geo
SELECT COUNT ( staatsname ) FROM highlow WHERE höchste_erhebung > ( SELECT höchste_erhebung FROM highlow WHERE staatsname = ( SELECT staatsname FROM state WHERE hauptstadt = ( SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt ) ) ) );	geo
SELECT flussname FROM fluss WHERE länge > 750 AND durchquerung = "illinois";	geo
SELECT flussname FROM fluss WHERE länge > 750 AND durchquerung = "illinois";	geo
SELECT flussname FROM fluss WHERE länge > 750 AND durchquerung = "illinois";	geo
SELECT flussname FROM fluss WHERE länge > 750 AND durchquerung = "illinois";	geo
SELECT durchquerung FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss WHERE durchquerung = "texas" );	geo
SELECT hauptstadt FROM state WHERE staatsname = "texas";	geo
SELECT hauptstadt FROM state WHERE staatsname = "texas";	geo
SELECT hauptstadt FROM state WHERE staatsname = "texas";	geo
SELECT hauptstadt FROM state WHERE staatsname = "texas";	geo
SELECT hauptstadt FROM state WHERE staatsname = "texas";	geo
SELECT hauptstadt FROM state WHERE staatsname = "texas";	geo
SELECT t2.hauptstadt FROM state AS t2 JOIN grenzinfo AS t1 ON t2.staatsname = t1.grenze WHERE t1.staatsname = "texas";	geo
SELECT t2.hauptstadt FROM state AS t2 JOIN grenzinfo AS t1 ON t2.staatsname = t1.grenze WHERE t1.staatsname = "texas";	geo
SELECT t2.hauptstadt FROM state AS t2 JOIN grenzinfo AS t1 ON t2.staatsname = t1.grenze WHERE t1.staatsname = "texas";	geo
SELECT t2.hauptstadt FROM state AS t2 JOIN grenzinfo AS t1 ON t2.staatsname = t1.grenze WHERE t1.staatsname = "texas";	geo
SELECT stadtname FROM stadt WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "mississippi" );	geo
SELECT stadtname FROM stadt WHERE staatsname IN ( SELECT staatsname FROM highlow WHERE höchste_erhebung = ( SELECT MAX ( höchste_erhebung ) FROM highlow ) );	geo
SELECT höchster_punkt FROM highlow;	geo
SELECT stadtname FROM stadt WHERE bevölkerung > 150000 AND staatsname = "kansas";	geo
SELECT stadtname FROM stadt WHERE bevölkerung > 150000 AND staatsname = "kansas";	geo
SELECT stadtname FROM stadt WHERE bevölkerung > 150000 AND staatsname = "kansas";	geo
SELECT stadtname FROM stadt WHERE bevölkerung > 150000 AND staatsname = "kansas";	geo
SELECT stadtname FROM stadt WHERE bevölkerung > 150000 AND staatsname = "kansas";	geo
SELECT stadtname FROM stadt WHERE bevölkerung > 150000 AND staatsname = "kansas";	geo
SELECT stadtname FROM stadt WHERE bevölkerung > 150000 AND staatsname = "kansas";	geo
SELECT stadtname FROM stadt WHERE bevölkerung > 150000 AND staatsname IN ( SELECT durchquerung FROM fluss WHERE länge > 750 AND flussname = "mississippi" );	geo
SELECT stadtname FROM stadt WHERE bevölkerung > 150000;	geo
SELECT stadtname FROM stadt WHERE bevölkerung > 150000;	geo
SELECT stadtname FROM stadt WHERE bevölkerung > 150000;	geo
SELECT dichte FROM state;	geo
SELECT bevölkerung FROM state WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "mississippi" );	geo
SELECT bevölkerung FROM state WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "mississippi" );	geo
SELECT bevölkerung FROM state WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "mississippi" );	geo
SELECT bevölkerung FROM state WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "mississippi" );	geo
SELECT bevölkerung FROM state WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "mississippi" );	geo
SELECT bevölkerung FROM state WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "mississippi" );	geo
SELECT bevölkerung FROM state WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "mississippi" );	geo
SELECT bevölkerung FROM state WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "mississippi" );	geo
SELECT t2.bevölkerung FROM state AS t2 JOIN grenzinfo AS t1 ON t2.staatsname = t1.grenze WHERE t1.staatsname = "texas";	geo
SELECT bevölkerung FROM stadt WHERE bevölkerung > 150000 AND staatsname = "wisconsin";	geo
SELECT bevölkerung FROM stadt WHERE bevölkerung > 150000 AND staatsname = "wisconsin";	geo
SELECT bevölkerung FROM stadt WHERE bevölkerung > 150000 AND staatsname = "wisconsin";	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( t1.bevölkerung ) FROM state AS t2 JOIN stadt AS t1 ON t2.hauptstadt = t1.stadtname );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( t1.bevölkerung ) FROM state AS t2 JOIN stadt AS t1 ON t2.hauptstadt = t1.stadtname );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( t1.bevölkerung ) FROM state AS t2 JOIN stadt AS t1 ON t2.hauptstadt = t1.stadtname );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( t1.bevölkerung ) FROM state AS t2 JOIN stadt AS t1 ON t2.hauptstadt = t1.stadtname );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( t1.bevölkerung ) FROM state AS t2 JOIN stadt AS t1 ON t2.hauptstadt = t1.stadtname );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( t1.bevölkerung ) FROM state AS t2 JOIN stadt AS t1 ON t2.hauptstadt = t1.stadtname );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( t1.bevölkerung ) FROM state AS t2 JOIN stadt AS t1 ON t2.hauptstadt = t1.stadtname );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( t1.bevölkerung ) FROM state AS t2 JOIN stadt AS t1 ON t2.hauptstadt = t1.stadtname );	geo
SELECT t2.hauptstadt FROM state AS t2 JOIN stadt AS t1 ON t2.staatsname = t1.staatsname WHERE t1.stadtname = "durham";	geo
SELECT hauptstadt FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state );	geo
SELECT DISTINCT hauptstadt FROM state WHERE dichte = ( SELECT MAX ( dichte ) FROM state );	geo
SELECT hauptstadt FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state );	geo
SELECT hauptstadt FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state );	geo
SELECT hauptstadt FROM state WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss ) );	geo
SELECT SUM ( gebiet ) FROM state;	geo
SELECT SUM ( gebiet ) FROM state;	geo
SELECT SUM ( gebiet ) FROM state;	geo
SELECT SUM ( gebiet ) FROM state;	geo
SELECT dichte FROM state WHERE staatsname = "wyoming";	geo
SELECT dichte FROM state WHERE staatsname = "wyoming";	geo
SELECT dichte FROM state WHERE staatsname = "wyoming";	geo
SELECT bergname FROM berg WHERE berghöhe = ( SELECT MAX ( berghöhe ) FROM berg );	geo
SELECT bergname FROM berg WHERE berghöhe = ( SELECT MAX ( berghöhe ) FROM berg );	geo
SELECT bergname FROM berg WHERE berghöhe = ( SELECT MAX ( berghöhe ) FROM berg );	geo
SELECT bergname FROM berg WHERE berghöhe = ( SELECT MAX ( berghöhe ) FROM berg );	geo
SELECT höchster_punkt FROM highlow WHERE staatsname IN ( SELECT staatsname FROM state WHERE hauptstadt = "des moines" );	geo
SELECT höchster_punkt FROM highlow WHERE staatsname IN ( SELECT staatsname FROM state WHERE hauptstadt = "des moines" );	geo
SELECT höchster_punkt FROM highlow WHERE höchste_erhebung = ( SELECT MAX ( höchste_erhebung ) FROM highlow );	geo
SELECT höchster_punkt FROM highlow WHERE höchste_erhebung = ( SELECT MAX ( höchste_erhebung ) FROM highlow );	geo
SELECT höchster_punkt FROM highlow WHERE höchste_erhebung = ( SELECT MAX ( höchste_erhebung ) FROM highlow );	geo
SELECT höchster_punkt FROM highlow WHERE höchste_erhebung = ( SELECT MAX ( höchste_erhebung ) FROM highlow );	geo
SELECT höchster_punkt FROM highlow WHERE höchste_erhebung = ( SELECT MAX ( höchste_erhebung ) FROM highlow );	geo
SELECT höchster_punkt FROM highlow WHERE staatsname IN ( SELECT staatsname FROM state WHERE dichte = ( SELECT MIN ( dichte ) FROM state ) );	geo
SELECT stadtname FROM stadt WHERE staatsname IN ( SELECT staatsname FROM state WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "mississippi" ) AND gebiet = ( SELECT MIN ( gebiet ) FROM state WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "mississippi" ) ) ) ORDER BY bevölkerung DESC LIMIT 1;	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt WHERE staatsname IN ( SELECT staatsname FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state ) ) ) AND staatsname IN ( SELECT staatsname FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state ) );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt WHERE staatsname IN ( SELECT staatsname FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state ) ) ) AND staatsname IN ( SELECT staatsname FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state ) );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "california" ) ) AND staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "california" );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "california" ) ) AND staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "california" );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "california" ) ) AND staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "california" );	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss WHERE durchquerung IN ( SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state ) ) ) AND durchquerung IN ( SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state ) );	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss WHERE durchquerung IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "tennessee" ) ) AND durchquerung IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "tennessee" );	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss WHERE durchquerung IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "tennessee" ) ) AND durchquerung IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "tennessee" );	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss WHERE durchquerung IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "tennessee" ) ) AND durchquerung IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "tennessee" );	geo
SELECT flussname FROM fluss WHERE durchquerung = ( SELECT staatsname FROM stadt WHERE bevölkerung > 150000 GROUP BY staatsname ORDER BY COUNT ( stadtname ) DESC LIMIT 1 ) ORDER BY länge DESC LIMIT 1;	geo
SELECT tiefster_punkt FROM highlow WHERE staatsname = "iowa";	geo
SELECT tiefster_punkt FROM highlow WHERE staatsname = "iowa";	geo
SELECT tiefster_punkt FROM highlow WHERE staatsname = "iowa";	geo
SELECT tiefster_punkt FROM highlow WHERE staatsname = "iowa";	geo
SELECT tiefster_punkt FROM highlow WHERE staatsname = "iowa";	geo
SELECT tiefster_punkt FROM highlow WHERE staatsname = "iowa";	geo
SELECT tiefster_punkt FROM highlow WHERE niedrigste_erhebung = ( SELECT MIN ( niedrigste_erhebung ) FROM highlow );	geo
SELECT tiefster_punkt FROM highlow WHERE niedrigste_erhebung = ( SELECT MIN ( niedrigste_erhebung ) FROM highlow );	geo
SELECT tiefster_punkt FROM highlow WHERE niedrigste_erhebung = ( SELECT MIN ( niedrigste_erhebung ) FROM highlow );	geo
SELECT tiefster_punkt FROM highlow WHERE niedrigste_erhebung = ( SELECT MIN ( niedrigste_erhebung ) FROM highlow );	geo
SELECT tiefster_punkt FROM highlow WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "mississippi" ) ORDER BY niedrigste_erhebung LIMIT 1;	geo
SELECT tiefster_punkt FROM highlow WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "mississippi" ) ORDER BY niedrigste_erhebung LIMIT 1;	geo
SELECT staatsname FROM state WHERE dichte = ( SELECT MAX ( dichte ) FROM state );	geo
SELECT staatsname FROM state WHERE dichte = ( SELECT MAX ( dichte ) FROM state );	geo
SELECT staatsname FROM state WHERE dichte = ( SELECT MAX ( dichte ) FROM state );	geo
SELECT staatsname FROM state WHERE dichte = ( SELECT MAX ( dichte ) FROM state );	geo
SELECT staatsname FROM state WHERE dichte = ( SELECT MAX ( dichte ) FROM state );	geo
SELECT staatsname FROM state WHERE dichte = ( SELECT MAX ( dichte ) FROM state );	geo
SELECT staatsname FROM state WHERE dichte = ( SELECT MAX ( dichte ) FROM state );	geo
SELECT staatsname FROM state WHERE dichte = ( SELECT MAX ( dichte ) FROM state );	geo
SELECT staatsname FROM state WHERE dichte = ( SELECT MAX ( dichte ) FROM state );	geo
SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "mississippi" ) ) AND staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "mississippi" );	geo
SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "mississippi" ) ) AND staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "mississippi" );	geo
SELECT dichte FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state );	geo
SELECT bevölkerung FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt WHERE staatsname IN ( SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state ) ) ) AND staatsname IN ( SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state ) );	geo
SELECT bevölkerung FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state );	geo
SELECT bevölkerung FROM state WHERE dichte = ( SELECT MAX ( dichte ) FROM state );	geo
SELECT bevölkerung FROM state WHERE dichte = ( SELECT MAX ( dichte ) FROM state );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MIN ( bevölkerung ) FROM stadt );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MIN ( bevölkerung ) FROM stadt );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MIN ( bevölkerung ) FROM stadt );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MIN ( bevölkerung ) FROM stadt );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "texas" ) ) AND staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "texas" );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "texas" ) ) AND staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "texas" );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "texas" ) ) AND staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "texas" );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "mississippi" ) ) AND staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "mississippi" );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state );	geo
SELECT SUM ( länge ) FROM fluss;	geo
SELECT flussname FROM fluss GROUP BY ( flussname ) ORDER BY COUNT ( DISTINCT durchquerung ) DESC LIMIT 1;	geo
SELECT flussname FROM fluss GROUP BY ( flussname ) ORDER BY COUNT ( DISTINCT durchquerung ) DESC LIMIT 1;	geo
SELECT flussname FROM fluss GROUP BY ( flussname ) ORDER BY COUNT ( DISTINCT durchquerung ) DESC LIMIT 1;	geo
SELECT flussname FROM fluss GROUP BY ( flussname ) ORDER BY COUNT ( DISTINCT durchquerung ) DESC LIMIT 1;	geo
SELECT flussname FROM fluss GROUP BY ( flussname ) ORDER BY COUNT ( DISTINCT durchquerung ) DESC LIMIT 1;	geo
SELECT flussname FROM fluss GROUP BY ( flussname ) ORDER BY COUNT ( DISTINCT durchquerung ) DESC LIMIT 1;	geo
SELECT flussname FROM fluss GROUP BY ( flussname ) ORDER BY COUNT ( DISTINCT durchquerung ) DESC LIMIT 1;	geo
SELECT flussname FROM fluss WHERE durchquerung IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "alabama" );	geo
SELECT flussname FROM fluss WHERE durchquerung IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "alabama" );	geo
SELECT flussname FROM fluss WHERE durchquerung IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "alabama" );	geo
SELECT staatsname FROM state WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "oklahoma" ) ORDER BY bevölkerung DESC LIMIT 1;	geo
SELECT staatsname FROM state WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "oklahoma" ) ORDER BY bevölkerung DESC LIMIT 1;	geo
SELECT staatsname FROM state WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "oklahoma" ) ORDER BY bevölkerung DESC LIMIT 1;	geo
SELECT staatsname FROM state WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "oklahoma" ) ORDER BY bevölkerung DESC LIMIT 1;	geo
SELECT staatsname FROM highlow WHERE höchste_erhebung = ( SELECT MAX ( höchste_erhebung ) FROM highlow WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "colorado" ) );	geo
SELECT staatsname FROM stadt WHERE bevölkerung = ( SELECT MAX ( t1.bevölkerung ) FROM state AS t2 JOIN stadt AS t1 ON t2.hauptstadt = t1.stadtname );	geo
SELECT staatsname FROM stadt WHERE bevölkerung = ( SELECT MAX ( t1.bevölkerung ) FROM state AS t2 JOIN stadt AS t1 ON t2.hauptstadt = t1.stadtname );	geo
SELECT DISTINCT durchquerung FROM fluss WHERE länge = ( SELECT MAX ( DISTINCT länge ) FROM fluss );	geo
SELECT staatsname FROM stadt GROUP BY staatsname ORDER BY SUM ( bevölkerung ) LIMIT 1;	geo
SELECT grenze FROM grenzinfo WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "colorado" );	geo
SELECT grenze FROM grenzinfo WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "mississippi" );	geo
SELECT grenze FROM grenzinfo WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "mississippi" );	geo
SELECT grenze FROM grenzinfo WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "mississippi" );	geo
SELECT staatsname FROM grenzinfo WHERE grenze = "texas" AND staatsname IN ( SELECT durchquerung FROM fluss WHERE länge > 750 );	geo
SELECT grenze FROM grenzinfo WHERE staatsname = ( SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state ) );	geo
SELECT grenze FROM grenzinfo WHERE staatsname = ( SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state ) );	geo
SELECT grenze FROM grenzinfo WHERE staatsname = ( SELECT staatsname FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state ) );	geo
SELECT grenze FROM grenzinfo WHERE staatsname = ( SELECT staatsname FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state ) );	geo
SELECT durchquerung FROM fluss WHERE länge > 750;	geo
SELECT staatsname FROM berg;	geo
SELECT staatsname FROM berg WHERE berghöhe = ( SELECT MAX ( berghöhe ) FROM berg );	geo
SELECT staatsname FROM berg WHERE berghöhe = ( SELECT MAX ( berghöhe ) FROM berg );	geo
SELECT staatsname FROM stadt WHERE bevölkerung = ( SELECT MIN ( bevölkerung ) FROM stadt );	geo
SELECT dichte FROM state WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss ) );	geo
SELECT bergname FROM berg WHERE berghöhe = ( SELECT MAX ( berghöhe ) FROM berg WHERE staatsname != "alaska" );	geo
SELECT flussname FROM fluss WHERE flussname NOT IN ( SELECT flussname FROM fluss WHERE durchquerung = "tennessee" );	geo
SELECT flussname FROM fluss WHERE flussname NOT IN ( SELECT flussname FROM fluss WHERE durchquerung = "tennessee" );	geo
SELECT flussname FROM fluss WHERE landesname != "usa";	geo
SELECT flussname FROM fluss WHERE durchquerung IN ( SELECT grenze FROM grenzinfo WHERE staatsname IN ( SELECT staatsname FROM state WHERE hauptstadt = "atlanta" ) );	geo
SELECT flussname FROM fluss WHERE durchquerung IN ( SELECT grenze FROM grenzinfo WHERE staatsname IN ( SELECT staatsname FROM state WHERE hauptstadt = "atlanta" ) );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MIN ( t1.bevölkerung ) FROM state AS t2 JOIN stadt AS t1 ON t2.hauptstadt = t1.stadtname );	geo
SELECT staatsname FROM highlow WHERE höchste_erhebung = ( SELECT MAX ( höchste_erhebung ) FROM highlow );	geo
SELECT staatsname FROM highlow WHERE höchste_erhebung = ( SELECT MAX ( höchste_erhebung ) FROM highlow );	geo
SELECT staatsname FROM highlow WHERE höchste_erhebung = ( SELECT MAX ( höchste_erhebung ) FROM highlow );	geo
SELECT staatsname FROM highlow WHERE höchste_erhebung = ( SELECT MAX ( höchste_erhebung ) FROM highlow );	geo
SELECT staatsname FROM highlow WHERE höchste_erhebung = ( SELECT MAX ( höchste_erhebung ) FROM highlow );	geo
SELECT staatsname FROM highlow WHERE höchste_erhebung = ( SELECT MAX ( höchste_erhebung ) FROM highlow );	geo
SELECT staatsname FROM highlow WHERE höchste_erhebung = ( SELECT MAX ( höchste_erhebung ) FROM highlow );	geo
SELECT staatsname FROM highlow WHERE höchste_erhebung = ( SELECT MAX ( höchste_erhebung ) FROM highlow );	geo
SELECT staatsname FROM highlow WHERE niedrigste_erhebung = ( SELECT MIN ( niedrigste_erhebung ) FROM highlow );	geo
SELECT staatsname FROM highlow WHERE niedrigste_erhebung = ( SELECT MIN ( niedrigste_erhebung ) FROM highlow );	geo
SELECT staatsname FROM highlow WHERE niedrigste_erhebung = ( SELECT MIN ( niedrigste_erhebung ) FROM highlow );	geo
SELECT staatsname FROM highlow WHERE niedrigste_erhebung = ( SELECT MIN ( niedrigste_erhebung ) FROM highlow WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "idaho" ) ) AND staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "idaho" );	geo
SELECT staatsname FROM stadt GROUP BY staatsname ORDER BY AVG ( bevölkerung ) LIMIT 1;	geo
SELECT staatsname FROM berg WHERE bergname = "whitney";	geo
SELECT staatsname FROM berg WHERE bergname = "whitney";	geo
SELECT staatsname FROM berg WHERE bergname = "whitney";	geo
SELECT staatsname FROM berg WHERE bergname = "whitney";	geo
SELECT durchquerung FROM fluss;	geo
SELECT durchquerung FROM fluss;	geo
SELECT staatsname FROM stadt WHERE stadtname = "austin" AND bevölkerung > 150000;	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "california" ) ) AND staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "california" );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "california" ) ) AND staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "california" );	geo
SELECT COUNT ( flussname ) FROM fluss WHERE durchquerung NOT IN ( SELECT staatsname FROM state WHERE hauptstadt = "albany" );	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MIN ( länge ) FROM fluss WHERE durchquerung = "texas" ) AND durchquerung = "texas";	geo
SELECT stadtname FROM stadt WHERE bevölkerung > 150000 AND staatsname = ( SELECT staatsname FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state ) );	geo
SELECT bevölkerung FROM stadt WHERE stadtname = ( SELECT hauptstadt FROM state WHERE gebiet = ( SELECT MAX ( t1.gebiet ) FROM state AS t1 JOIN fluss AS t2 ON t1.staatsname = t2.durchquerung WHERE t2.flussname = "mississippi" ) );	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MIN ( länge ) FROM fluss );	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MIN ( länge ) FROM fluss );	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MIN ( länge ) FROM fluss );	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MIN ( länge ) FROM fluss );	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MIN ( länge ) FROM fluss );	geo
SELECT hauptstadt FROM state WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "texas" ) );	geo
SELECT stadtname FROM stadt WHERE bevölkerung = ( SELECT MIN ( bevölkerung ) FROM stadt WHERE staatsname IN ( SELECT staatsname FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state ) ) ) AND staatsname IN ( SELECT staatsname FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state ) );	geo
SELECT bevölkerung FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "texas" ) ) AND staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "texas" );	geo
SELECT staatsname FROM state WHERE hauptstadt = "salem";	geo
SELECT staatsname FROM state WHERE hauptstadt = "salem";	geo
SELECT staatsname FROM state WHERE hauptstadt = "salem";	geo
SELECT staatsname FROM state WHERE hauptstadt = "salem";	geo
SELECT flussname FROM fluss WHERE durchquerung IN ( SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state ) );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state WHERE staatsname IN ( SELECT staatsname FROM grenzinfo WHERE grenze IN ( SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state ) ) ) ) AND staatsname IN ( SELECT staatsname FROM grenzinfo WHERE grenze IN ( SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state ) ) );	geo
SELECT COUNT ( flussname ) FROM fluss;	geo
SELECT DISTINCT hauptstadt FROM state;	geo
SELECT COUNT ( staatsname ) FROM stadt WHERE stadtname = "springfield";	geo
SELECT COUNT ( staatsname ) FROM stadt WHERE stadtname = "springfield";	geo
SELECT COUNT ( staatsname ) FROM stadt WHERE stadtname = "springfield";	geo
SELECT COUNT ( staatsname ) FROM stadt WHERE stadtname = "springfield";	geo
SELECT grenze FROM grenzinfo WHERE staatsname IN ( SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MIN ( bevölkerung ) FROM state ) );	geo
SELECT see_name FROM see WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "texas" );	geo
SELECT COUNT ( stadtname ) FROM stadt WHERE bevölkerung > 150000 AND staatsname = "texas";	geo
SELECT COUNT ( stadtname ) FROM stadt WHERE bevölkerung > 150000 AND staatsname = "texas";	geo
SELECT COUNT ( stadtname ) FROM stadt WHERE bevölkerung > 150000 AND staatsname = "texas";	geo
SELECT höchste_erhebung FROM highlow;	geo
SELECT COUNT ( durchquerung ) FROM fluss WHERE flussname = "missouri";	geo
SELECT COUNT ( durchquerung ) FROM fluss WHERE flussname = "missouri";	geo
SELECT COUNT ( durchquerung ) FROM fluss WHERE flussname = "missouri";	geo
SELECT flussname FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss WHERE durchquerung IN ( SELECT staatsname FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state ) ) ) AND durchquerung IN ( SELECT staatsname FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state ) );	geo
SELECT bevölkerung / gebiet FROM state WHERE staatsname = "pennsylvania";	geo
SELECT grenze FROM grenzinfo WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "florida" ) );	geo
SELECT COUNT ( DISTINCT staatsname ) FROM grenzinfo;	geo
SELECT MAX ( DISTINCT höchste_erhebung ) FROM highlow WHERE staatsname = "texas";	geo
SELECT COUNT ( grenze ) FROM grenzinfo WHERE grenze IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "new mexico" ) AND staatsname = "colorado";	geo
SELECT COUNT ( stadtname ) FROM stadt WHERE bevölkerung > 150000 AND staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "nebraska" );	geo
SELECT SUM ( t2.bevölkerung ) FROM state AS t2 JOIN grenzinfo AS t1 ON t2.staatsname = t1.grenze WHERE t1.staatsname = "texas";	geo
SELECT see_name FROM see WHERE gebiet > 750;	geo
SELECT see_name FROM see WHERE gebiet > 750;	geo
SELECT see_name FROM see;	geo
SELECT COUNT ( flussname ) FROM fluss WHERE länge > 750 AND durchquerung = "ohio";	geo
SELECT DISTINCT durchquerung FROM fluss WHERE länge = ( SELECT MIN ( DISTINCT länge ) FROM fluss );	geo
SELECT COUNT ( DISTINCT durchquerung ) FROM fluss WHERE länge > 750;	geo
SELECT berghöhe FROM berg WHERE bergname = "mckinley";	geo
SELECT durchquerung FROM fluss WHERE länge = ( SELECT MIN ( länge ) FROM fluss );	geo
SELECT t2.höchster_punkt FROM state AS t1 JOIN highlow AS t2 ON t1.staatsname = t2.staatsname WHERE t1.staatsname IN ( SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MIN ( bevölkerung ) FROM state ) );	geo
SELECT flussname FROM fluss WHERE durchquerung IN ( SELECT staatsname FROM highlow WHERE niedrigste_erhebung = ( SELECT MIN ( niedrigste_erhebung ) FROM highlow ) );	geo
SELECT flussname FROM fluss WHERE durchquerung IN ( SELECT staatsname FROM highlow WHERE niedrigste_erhebung = ( SELECT MIN ( niedrigste_erhebung ) FROM highlow ) );	geo
SELECT bergname FROM berg WHERE staatsname = "alaska";	geo
SELECT COUNT ( durchquerung ) FROM fluss WHERE länge > 750;	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss ) ) ) AND staatsname IN ( SELECT durchquerung FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss ) );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "rio grande" ) ) AND staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "rio grande" );	geo
SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "rio grande" ) ) AND staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "rio grande" );	geo
SELECT COUNT ( flussname ) FROM fluss WHERE durchquerung IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "colorado" );	geo
SELECT staatsname FROM state WHERE staatsname NOT IN ( SELECT durchquerung FROM fluss );	geo
SELECT hauptstadt FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state );	geo
SELECT hauptstadt FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state );	geo
SELECT COUNT ( stadtname ) FROM stadt WHERE staatsname = "texas";	geo
SELECT COUNT ( stadtname ) FROM stadt WHERE staatsname = "texas";	geo
SELECT gebiet FROM state;	geo
SELECT COUNT ( DISTINCT durchquerung ) FROM fluss WHERE länge = ( SELECT MIN ( DISTINCT länge ) FROM fluss );	geo
SELECT flussname FROM fluss WHERE durchquerung IN ( SELECT grenze FROM grenzinfo WHERE staatsname IN ( SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state ) ) );	geo
SELECT stadtname FROM stadt WHERE bevölkerung > 150000 AND staatsname = ( SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state ) );	geo
SELECT gebiet FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state );	geo
SELECT grenze FROM grenzinfo WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE länge = ( SELECT MAX ( länge ) FROM fluss ) );	geo
SELECT dichte FROM state WHERE bevölkerung = ( SELECT MIN ( bevölkerung ) FROM state );	geo
SELECT COUNT ( DISTINCT grenze ) FROM grenzinfo WHERE staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname = "mississippi" );	geo
SELECT t1.staatsname FROM state AS t1 JOIN highlow AS t2 ON t1.hauptstadt = t2.höchster_punkt;	geo
SELECT bevölkerung FROM stadt WHERE stadtname = ( SELECT hauptstadt FROM state WHERE gebiet = ( SELECT MIN ( gebiet ) FROM state ) );	geo
SELECT bevölkerung FROM stadt WHERE stadtname = ( SELECT hauptstadt FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state ) );	geo
SELECT t2.tiefster_punkt FROM state AS t1 JOIN highlow AS t2 ON t1.staatsname = t2.staatsname WHERE t1.staatsname IN ( SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state ) );	geo
SELECT t1.grenze FROM grenzinfo AS t2 JOIN grenzinfo AS t1 ON t2.grenze = t1.staatsname WHERE t2.staatsname IN ( SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state ) );	geo
SELECT MAX ( gebiet ) FROM state;	geo
SELECT MAX ( gebiet ) FROM state;	geo
SELECT t2.hauptstadt FROM state AS t2 JOIN stadt AS t1 ON t2.hauptstadt = t1.stadtname WHERE t1.bevölkerung <= 150000;	geo
SELECT stadtname FROM stadt;	geo
SELECT t2.höchster_punkt FROM state AS t1 JOIN highlow AS t2 ON t1.staatsname = t2.staatsname WHERE t1.staatsname IN ( SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state ) );	geo
SELECT landesname FROM state WHERE staatsname = "massachusetts";	geo
SELECT staatsname FROM stadt GROUP BY staatsname ORDER BY SUM ( bevölkerung ) DESC LIMIT 1;	geo
SELECT flussname FROM fluss;	geo
SELECT COUNT ( stadtname ) FROM stadt WHERE stadtname = "austin";	geo
SELECT bevölkerung FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state WHERE staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "wyoming" ) ) AND staatsname IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "wyoming" );	geo
SELECT länge FROM fluss WHERE flussname = "colorado" AND durchquerung = "texas";	geo
SELECT dichte FROM state WHERE hauptstadt = "austin";	geo
SELECT länge FROM fluss WHERE länge = ( SELECT MIN ( länge ) FROM fluss );	geo
SELECT niedrigste_erhebung FROM highlow WHERE tiefster_punkt = "death valley";	geo
SELECT AVG ( bevölkerung ) FROM state;	geo
SELECT flussname FROM fluss WHERE durchquerung IN ( SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state ) );	geo
SELECT t1.grenze FROM grenzinfo AS t2 JOIN grenzinfo AS t1 ON t2.grenze = t1.staatsname JOIN grenzinfo AS t3 ON t3.grenze = t2.staatsname JOIN grenzinfo AS t4 ON t4.grenze = t3.staatsname WHERE t4.staatsname = "texas";	geo
SELECT COUNT ( grenze ) FROM grenzinfo WHERE staatsname = ( SELECT staatsname FROM state WHERE hauptstadt = "boston" );	geo
SELECT stadtname FROM stadt WHERE bevölkerung > 150000 AND staatsname IN ( SELECT durchquerung FROM fluss WHERE flussname IN ( SELECT flussname FROM fluss WHERE länge > 750 AND durchquerung = "virginia" ) );	geo
SELECT staatsname FROM state WHERE staatsname NOT IN ( SELECT grenze FROM grenzinfo WHERE staatsname = "texas" );	geo
SELECT COUNT ( grenze ) FROM grenzinfo WHERE staatsname = ( SELECT staatsname FROM state WHERE gebiet = ( SELECT MAX ( gebiet ) FROM state ) );	geo
SELECT staatsname FROM stadt WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM stadt WHERE staatsname = "montana" ) AND staatsname = "montana";	geo
SELECT t1.hauptstadt FROM highlow AS t2 JOIN state AS t1 ON t1.staatsname = t2.staatsname WHERE t2.niedrigste_erhebung = ( SELECT MIN ( niedrigste_erhebung ) FROM highlow ) ;	geo
SELECT DISTINCT t1.stadtname FROM stadt AS t1 JOIN fluss AS t2 ON t2.durchquerung = t1.staatsname WHERE t1.bevölkerung = ( SELECT MAX ( t1.bevölkerung ) FROM fluss AS t2 JOIN stadt AS t1 ON t2.durchquerung = t1.staatsname );	geo
SELECT COUNT ( t2.flussname ) FROM fluss AS t2 JOIN state AS t1 ON t1.staatsname = t2.durchquerung WHERE t1.staatsname = ( SELECT staatsname FROM state WHERE bevölkerung = ( SELECT MAX ( bevölkerung ) FROM state ) );	geo
SELECT t1.staatsname FROM highlow AS t3 JOIN grenzinfo AS t1 ON t3.staatsname = t1.grenze JOIN state AS t2 ON t2.staatsname = t1.grenze WHERE t3.niedrigste_erhebung = ( SELECT MIN ( niedrigste_erhebung ) FROM highlow ) ORDER BY t2.gebiet DESC LIMIT 1;	geo
SELECT t1.hauptstadt FROM highlow AS t2 JOIN state AS t1 ON t1.staatsname = t2.staatsname WHERE t2.höchste_erhebung = ( SELECT MAX ( höchste_erhebung ) FROM highlow );	geo
SELECT t1.hauptstadt FROM highlow AS t2 JOIN state AS t1 ON t1.staatsname = t2.staatsname WHERE t2.höchste_erhebung = ( SELECT MAX ( höchste_erhebung ) FROM highlow );	geo
SELECT t2.höchster_punkt FROM highlow AS t2 JOIN state AS t1 ON t1.staatsname = t2.staatsname WHERE t1.gebiet = ( SELECT MIN ( gebiet ) FROM state );	geo
SELECT COUNT ( t1.flussname ) FROM highlow AS t2 JOIN fluss AS t1 ON t1.durchquerung = t2.staatsname WHERE t2.höchste_erhebung = ( SELECT MAX ( höchste_erhebung ) FROM highlow );	geo
SELECT t2.höchste_erhebung FROM highlow AS t2 JOIN state AS t1 ON t1.staatsname = t2.staatsname WHERE t1.gebiet = ( SELECT MAX ( gebiet ) FROM state );	geo
SELECT t1.flussname FROM highlow AS t2 JOIN fluss AS t1 ON t1.durchquerung = t2.staatsname WHERE t2.höchste_erhebung = ( SELECT MAX ( höchste_erhebung ) FROM highlow ) ORDER BY t1.länge DESC LIMIT 1;	geo
SELECT DISTINCT t3.papier_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Peter Mertens" AND t1.autorenname = "Dina Barbian";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Peter Mertens" AND t1.autorenname = "Dina Barbian";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Peter Mertens" AND t1.autorenname = "Dina Barbian";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Peter Mertens" AND t1.autorenname = "Dina Barbian";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Peter Mertens" AND t1.autorenname = "Dina Barbian";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Peter Mertens" AND t1.autorenname = "Dina Barbian";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Peter Mertens" AND t1.autorenname = "Dina Barbian";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Peter Mertens" AND t1.autorenname = "Dina Barbian";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Peter Mertens" AND t1.autorenname = "Dina Barbian";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Peter Mertens" AND t1.autorenname = "Dina Barbian";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Peter Mertens" AND t1.autorenname = "Dina Barbian";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Peter Mertens" AND t1.autorenname = "Dina Barbian";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Peter Mertens" AND t1.autorenname = "Dina Barbian";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Peter Mertens" AND t1.autorenname = "Dina Barbian";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Peter Mertens" AND t1.autorenname = "Dina Barbian";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Peter Mertens" AND t1.autorenname = "Dina Barbian";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Peter Mertens" AND t1.autorenname = "Dina Barbian";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Peter Mertens" AND t1.autorenname = "Dina Barbian";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Peter Mertens" AND t1.autorenname = "Dina Barbian";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Peter Mertens" AND t1.autorenname = "Dina Barbian";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Peter Mertens" AND t1.autorenname = "Dina Barbian";	scholar
SELECT DISTINCT COUNT ( t4.papier_id ) , t3.autor_id FROM aufsatz_schlüsselwort AS t1 JOIN schlüsselbegriff AS t2 ON t1.schlüsselphrase_id = t2.schlüsselphrase_id JOIN papier AS t4 ON t4.papier_id = t1.papier_id JOIN schreibt AS t3 ON t3.papier_id = t4.papier_id WHERE t2.name_des_schlüsselsatzes = "syntactic parsing" GROUP BY t3.autor_id ORDER BY COUNT ( t4.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t4.papier_id ) , t3.autor_id FROM aufsatz_schlüsselwort AS t1 JOIN schlüsselbegriff AS t2 ON t1.schlüsselphrase_id = t2.schlüsselphrase_id JOIN papier AS t4 ON t4.papier_id = t1.papier_id JOIN schreibt AS t3 ON t3.papier_id = t4.papier_id WHERE t2.name_des_schlüsselsatzes = "syntactic parsing" GROUP BY t3.autor_id ORDER BY COUNT ( t4.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t4.papier_id ) , t3.autor_id FROM aufsatz_schlüsselwort AS t1 JOIN schlüsselbegriff AS t2 ON t1.schlüsselphrase_id = t2.schlüsselphrase_id JOIN papier AS t4 ON t4.papier_id = t1.papier_id JOIN schreibt AS t3 ON t3.papier_id = t4.papier_id WHERE t2.name_des_schlüsselsatzes = "syntactic parsing" GROUP BY t3.autor_id ORDER BY COUNT ( t4.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t4.papier_id ) , t3.autor_id FROM aufsatz_schlüsselwort AS t1 JOIN schlüsselbegriff AS t2 ON t1.schlüsselphrase_id = t2.schlüsselphrase_id JOIN papier AS t4 ON t4.papier_id = t1.papier_id JOIN schreibt AS t3 ON t3.papier_id = t4.papier_id WHERE t2.name_des_schlüsselsatzes = "syntactic parsing" GROUP BY t3.autor_id ORDER BY COUNT ( t4.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t4.papier_id ) , t3.autor_id FROM aufsatz_schlüsselwort AS t1 JOIN schlüsselbegriff AS t2 ON t1.schlüsselphrase_id = t2.schlüsselphrase_id JOIN papier AS t4 ON t4.papier_id = t1.papier_id JOIN schreibt AS t3 ON t3.papier_id = t4.papier_id WHERE t2.name_des_schlüsselsatzes = "syntactic parsing" GROUP BY t3.autor_id ORDER BY COUNT ( t4.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t4.papier_id ) , t3.autor_id FROM aufsatz_schlüsselwort AS t1 JOIN schlüsselbegriff AS t2 ON t1.schlüsselphrase_id = t2.schlüsselphrase_id JOIN papier AS t4 ON t4.papier_id = t1.papier_id JOIN schreibt AS t3 ON t3.papier_id = t4.papier_id WHERE t2.name_des_schlüsselsatzes = "syntactic parsing" GROUP BY t3.autor_id ORDER BY COUNT ( t4.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t4.papier_id ) , t3.autor_id FROM aufsatz_schlüsselwort AS t1 JOIN schlüsselbegriff AS t2 ON t1.schlüsselphrase_id = t2.schlüsselphrase_id JOIN papier AS t4 ON t4.papier_id = t1.papier_id JOIN schreibt AS t3 ON t3.papier_id = t4.papier_id WHERE t2.name_des_schlüsselsatzes = "syntactic parsing" GROUP BY t3.autor_id ORDER BY COUNT ( t4.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t4.papier_id ) , t3.autor_id FROM aufsatz_schlüsselwort AS t1 JOIN schlüsselbegriff AS t2 ON t1.schlüsselphrase_id = t2.schlüsselphrase_id JOIN papier AS t4 ON t4.papier_id = t1.papier_id JOIN schreibt AS t3 ON t3.papier_id = t4.papier_id WHERE t2.name_des_schlüsselsatzes = "syntactic parsing" GROUP BY t3.autor_id ORDER BY COUNT ( t4.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t4.papier_id ) , t3.autor_id FROM aufsatz_schlüsselwort AS t1 JOIN schlüsselbegriff AS t2 ON t1.schlüsselphrase_id = t2.schlüsselphrase_id JOIN papier AS t4 ON t4.papier_id = t1.papier_id JOIN schreibt AS t3 ON t3.papier_id = t4.papier_id WHERE t2.name_des_schlüsselsatzes = "syntactic parsing" GROUP BY t3.autor_id ORDER BY COUNT ( t4.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t4.papier_id ) , t3.autor_id FROM aufsatz_schlüsselwort AS t1 JOIN schlüsselbegriff AS t2 ON t1.schlüsselphrase_id = t2.schlüsselphrase_id JOIN papier AS t4 ON t4.papier_id = t1.papier_id JOIN schreibt AS t3 ON t3.papier_id = t4.papier_id WHERE t2.name_des_schlüsselsatzes = "syntactic parsing" GROUP BY t3.autor_id ORDER BY COUNT ( t4.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t4.papier_id ) , t3.autor_id FROM aufsatz_schlüsselwort AS t1 JOIN schlüsselbegriff AS t2 ON t1.schlüsselphrase_id = t2.schlüsselphrase_id JOIN papier AS t4 ON t4.papier_id = t1.papier_id JOIN schreibt AS t3 ON t3.papier_id = t4.papier_id WHERE t2.name_des_schlüsselsatzes = "syntactic parsing" GROUP BY t3.autor_id ORDER BY COUNT ( t4.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t4.zitierter_beitrag ) FROM papier AS t3 JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "noah a smith";	scholar
SELECT DISTINCT COUNT ( t4.zitierter_beitrag ) FROM papier AS t3 JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "noah a smith";	scholar
SELECT DISTINCT COUNT ( t4.zitierter_beitrag ) FROM papier AS t3 JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "noah a smith";	scholar
SELECT DISTINCT COUNT ( t4.zitierter_beitrag ) FROM papier AS t3 JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "noah a smith";	scholar
SELECT DISTINCT COUNT ( t4.zitierter_beitrag ) FROM papier AS t3 JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "noah a smith";	scholar
SELECT DISTINCT COUNT ( t4.zitierter_beitrag ) FROM papier AS t3 JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "noah a smith";	scholar
SELECT DISTINCT COUNT ( t4.zitierter_beitrag ) FROM papier AS t3 JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "noah a smith";	scholar
SELECT DISTINCT COUNT ( t4.zitierter_beitrag ) FROM papier AS t3 JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "noah a smith";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t2.venue_name = "chi";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t2.venue_name = "chi";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t2.venue_name = "chi";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t2.venue_name = "chi";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t2.venue_name = "chi";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t2.venue_name = "chi";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t2.venue_name = "chi";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t2.venue_name = "chi";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t2.venue_name = "chi";	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) , t2.autor_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "mirella lapata" AND t3.jahr = 2016 GROUP BY t2.autor_id;	scholar
SELECT DISTINCT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "sharon goldwater";	scholar
SELECT DISTINCT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "sharon goldwater";	scholar
SELECT DISTINCT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "sharon goldwater";	scholar
SELECT DISTINCT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "sharon goldwater";	scholar
SELECT DISTINCT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "sharon goldwater";	scholar
SELECT DISTINCT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "sharon goldwater";	scholar
SELECT DISTINCT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "sharon goldwater";	scholar
SELECT DISTINCT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "sharon goldwater";	scholar
SELECT DISTINCT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "sharon goldwater";	scholar
SELECT DISTINCT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "sharon goldwater";	scholar
SELECT DISTINCT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "sharon goldwater";	scholar
SELECT DISTINCT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "sharon goldwater";	scholar
SELECT DISTINCT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "sharon goldwater";	scholar
SELECT DISTINCT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "sharon goldwater";	scholar
SELECT DISTINCT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "sharon goldwater";	scholar
SELECT DISTINCT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "sharon goldwater";	scholar
SELECT DISTINCT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "sharon goldwater";	scholar
SELECT DISTINCT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "oren etzioni" ORDER BY t3.jahr DESC;	scholar
SELECT DISTINCT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "oren etzioni" ORDER BY t3.jahr DESC;	scholar
SELECT DISTINCT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "oren etzioni" ORDER BY t3.jahr DESC;	scholar
SELECT DISTINCT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "oren etzioni" ORDER BY t3.jahr DESC;	scholar
SELECT DISTINCT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "oren etzioni" ORDER BY t3.jahr DESC;	scholar
SELECT DISTINCT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "oren etzioni" ORDER BY t3.jahr DESC;	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "monte carlo simulation" AND t3.jahr > 2011;	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "monte carlo simulation" AND t3.jahr > 2011;	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "monte carlo simulation" AND t3.jahr > 2011;	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "monte carlo simulation" AND t3.jahr > 2011;	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "monte carlo simulation" AND t3.jahr > 2011;	scholar
SELECT COUNT ( t3.papier_id ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "ras bodik";	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "David M. Blei" AND t4.venue_name = "AISTATS";	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "David M. Blei" AND t4.venue_name = "AISTATS";	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "David M. Blei" AND t4.venue_name = "AISTATS";	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "David M. Blei" AND t4.venue_name = "AISTATS";	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "David M. Blei" AND t4.venue_name = "AISTATS";	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "David M. Blei" AND t4.venue_name = "AISTATS";	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "David M. Blei" AND t4.venue_name = "AISTATS";	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "David M. Blei" AND t4.venue_name = "AISTATS";	scholar
SELECT DISTINCT papier_id FROM papier WHERE titel = "machine networks for one shot learning";	scholar
SELECT DISTINCT papier_id FROM papier WHERE titel = "machine networks for one shot learning";	scholar
SELECT DISTINCT t3.zitierter_beitrag , COUNT ( t3.zitierter_beitrag ) FROM papier AS t1 JOIN cite AS t3 ON t1.papier_id = t3.zitierter_beitrag JOIN veranstaltungsort AS t2 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2010 AND t2.venue_name = "EMNLP" GROUP BY t3.zitierter_beitrag ORDER BY COUNT ( t3.zitierter_beitrag ) DESC;	scholar
SELECT DISTINCT t3.zitierter_beitrag , COUNT ( t3.zitierter_beitrag ) FROM papier AS t1 JOIN cite AS t3 ON t1.papier_id = t3.zitierter_beitrag JOIN veranstaltungsort AS t2 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2010 AND t2.venue_name = "EMNLP" GROUP BY t3.zitierter_beitrag ORDER BY COUNT ( t3.zitierter_beitrag ) DESC;	scholar
SELECT DISTINCT t3.zitierter_beitrag , COUNT ( t3.zitierter_beitrag ) FROM papier AS t1 JOIN cite AS t3 ON t1.papier_id = t3.zitierter_beitrag JOIN veranstaltungsort AS t2 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2010 AND t2.venue_name = "EMNLP" GROUP BY t3.zitierter_beitrag ORDER BY COUNT ( t3.zitierter_beitrag ) DESC;	scholar
SELECT DISTINCT t3.zitierter_beitrag , COUNT ( t3.zitierter_beitrag ) FROM papier AS t1 JOIN cite AS t3 ON t1.papier_id = t3.zitierter_beitrag JOIN veranstaltungsort AS t2 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2010 AND t2.venue_name = "EMNLP" GROUP BY t3.zitierter_beitrag ORDER BY COUNT ( t3.zitierter_beitrag ) DESC;	scholar
SELECT DISTINCT t3.papier_id FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.dataset_name = "RGB-D Object Dataset" AND t3.titel = "Class consistent multi-modal fusion with binary features" AND t3.jahr = 2016 AND t4.venue_name = "CVPR";	scholar
SELECT DISTINCT t3.papier_id FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.dataset_name = "RGB-D Object Dataset" AND t3.titel = "Class consistent multi-modal fusion with binary features" AND t3.jahr = 2016 AND t4.venue_name = "CVPR";	scholar
SELECT DISTINCT COUNT ( DISTINCT t3.papier_id ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "deep learning";	scholar
SELECT DISTINCT COUNT ( DISTINCT t3.papier_id ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "deep learning";	scholar
SELECT DISTINCT COUNT ( DISTINCT t3.papier_id ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "deep learning";	scholar
SELECT DISTINCT COUNT ( DISTINCT t3.papier_id ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "deep learning";	scholar
SELECT DISTINCT COUNT ( DISTINCT t2.papier_id ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Christopher D. Manning";	scholar
SELECT DISTINCT COUNT ( DISTINCT t2.papier_id ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Christopher D. Manning";	scholar
SELECT DISTINCT COUNT ( DISTINCT t2.papier_id ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Christopher D. Manning";	scholar
SELECT DISTINCT COUNT ( DISTINCT t2.papier_id ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Christopher D. Manning";	scholar
SELECT DISTINCT COUNT ( DISTINCT t2.papier_id ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Christopher D. Manning";	scholar
SELECT DISTINCT COUNT ( DISTINCT t2.papier_id ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Christopher D. Manning";	scholar
SELECT DISTINCT COUNT ( DISTINCT t2.papier_id ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Christopher D. Manning";	scholar
SELECT DISTINCT COUNT ( DISTINCT t2.papier_id ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Christopher D. Manning";	scholar
SELECT DISTINCT COUNT ( DISTINCT t2.papier_id ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Christopher D. Manning";	scholar
SELECT DISTINCT COUNT ( DISTINCT t2.papier_id ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Christopher D. Manning";	scholar
SELECT DISTINCT COUNT ( DISTINCT t2.papier_id ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Christopher D. Manning";	scholar
SELECT DISTINCT COUNT ( DISTINCT t2.papier_id ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Christopher D. Manning";	scholar
SELECT DISTINCT t1.schlüsselphrase_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t5 ON t4.autor_id = t5.autor_id WHERE t5.autorenname = "Luke Zettlemoyer";	scholar
SELECT DISTINCT t1.schlüsselphrase_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t5 ON t4.autor_id = t5.autor_id WHERE t5.autorenname = "Luke Zettlemoyer";	scholar
SELECT DISTINCT t1.schlüsselphrase_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t5 ON t4.autor_id = t5.autor_id WHERE t5.autorenname = "Luke Zettlemoyer";	scholar
SELECT DISTINCT t1.schlüsselphrase_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t5 ON t4.autor_id = t5.autor_id WHERE t5.autorenname = "Luke Zettlemoyer";	scholar
SELECT DISTINCT t1.schlüsselphrase_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t5 ON t4.autor_id = t5.autor_id WHERE t5.autorenname = "Luke Zettlemoyer";	scholar
SELECT DISTINCT t1.schlüsselphrase_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t5 ON t4.autor_id = t5.autor_id WHERE t5.autorenname = "Luke Zettlemoyer";	scholar
SELECT DISTINCT t1.schlüsselphrase_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t5 ON t4.autor_id = t5.autor_id WHERE t5.autorenname = "Luke Zettlemoyer";	scholar
SELECT DISTINCT t1.schlüsselphrase_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t5 ON t4.autor_id = t5.autor_id WHERE t5.autorenname = "Luke Zettlemoyer";	scholar
SELECT DISTINCT t1.schlüsselphrase_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t5 ON t4.autor_id = t5.autor_id WHERE t5.autorenname = "Luke Zettlemoyer";	scholar
SELECT DISTINCT t1.schlüsselphrase_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t5 ON t4.autor_id = t5.autor_id WHERE t5.autorenname = "Luke Zettlemoyer";	scholar
SELECT DISTINCT t1.schlüsselphrase_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t5 ON t4.autor_id = t5.autor_id WHERE t5.autorenname = "Luke Zettlemoyer";	scholar
SELECT DISTINCT t1.schlüsselphrase_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t5 ON t4.autor_id = t5.autor_id WHERE t5.autorenname = "Luke Zettlemoyer";	scholar
SELECT DISTINCT t1.schlüsselphrase_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t5 ON t4.autor_id = t5.autor_id WHERE t5.autorenname = "Luke Zettlemoyer";	scholar
SELECT DISTINCT t3.venue_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Daniella Coelho";	scholar
SELECT DISTINCT t3.venue_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Daniella Coelho";	scholar
SELECT DISTINCT t3.venue_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Daniella Coelho";	scholar
SELECT DISTINCT t3.venue_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Daniella Coelho";	scholar
SELECT DISTINCT t3.venue_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Daniella Coelho";	scholar
SELECT DISTINCT t3.venue_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Daniella Coelho";	scholar
SELECT DISTINCT t3.venue_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Daniella Coelho";	scholar
SELECT DISTINCT COUNT ( DISTINCT papier_id ) FROM papier;	scholar
SELECT DISTINCT COUNT ( DISTINCT t3.papier_id ) FROM aufsatz_schlüsselwort AS t1 JOIN schlüsselbegriff AS t4 ON t1.schlüsselphrase_id = t4.schlüsselphrase_id JOIN schreibt AS t3 ON t3.papier_id = t1.papier_id JOIN autor AS t2 ON t3.autor_id = t2.autor_id WHERE t2.autorenname = "Ed Desmond" AND t4.name_des_schlüsselsatzes = "Semantic Parsing";	scholar
SELECT DISTINCT COUNT ( DISTINCT t3.papier_id ) FROM aufsatz_schlüsselwort AS t1 JOIN schlüsselbegriff AS t4 ON t1.schlüsselphrase_id = t4.schlüsselphrase_id JOIN schreibt AS t3 ON t3.papier_id = t1.papier_id JOIN autor AS t2 ON t3.autor_id = t2.autor_id WHERE t2.autorenname = "Ed Desmond" AND t4.name_des_schlüsselsatzes = "Semantic Parsing";	scholar
SELECT DISTINCT COUNT ( DISTINCT t3.papier_id ) FROM aufsatz_schlüsselwort AS t1 JOIN schlüsselbegriff AS t4 ON t1.schlüsselphrase_id = t4.schlüsselphrase_id JOIN schreibt AS t3 ON t3.papier_id = t1.papier_id JOIN autor AS t2 ON t3.autor_id = t2.autor_id WHERE t2.autorenname = "Ed Desmond" AND t4.name_des_schlüsselsatzes = "Semantic Parsing";	scholar
SELECT DISTINCT COUNT ( DISTINCT t3.papier_id ) FROM aufsatz_schlüsselwort AS t1 JOIN schlüsselbegriff AS t4 ON t1.schlüsselphrase_id = t4.schlüsselphrase_id JOIN schreibt AS t3 ON t3.papier_id = t1.papier_id JOIN autor AS t2 ON t3.autor_id = t2.autor_id WHERE t2.autorenname = "Ed Desmond" AND t4.name_des_schlüsselsatzes = "Semantic Parsing";	scholar
SELECT DISTINCT t3.venue_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "li dong" AND t3.jahr = 2016;	scholar
SELECT DISTINCT t3.venue_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "li dong" AND t3.jahr = 2016;	scholar
SELECT DISTINCT t3.venue_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "li dong" AND t3.jahr = 2016;	scholar
SELECT DISTINCT t3.venue_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "li dong" AND t3.jahr = 2016;	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "Parsing" AND t3.jahr = 2012 AND t4.venue_name = "acl";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "Parsing" AND t3.jahr = 2012 AND t4.venue_name = "acl";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "Parsing" AND t3.jahr = 2012 AND t4.venue_name = "acl";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "Parsing" AND t3.jahr = 2012 AND t4.venue_name = "acl";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "Parsing" AND t3.jahr = 2012 AND t4.venue_name = "acl";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "Parsing" AND t3.jahr = 2012 AND t4.venue_name = "acl";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "Parsing" AND t3.jahr = 2012 AND t4.venue_name = "acl";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "Parsing" AND t3.jahr = 2012 AND t4.venue_name = "acl";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "Parsing" AND t3.jahr = 2012 AND t4.venue_name = "acl";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "Parsing" AND t3.jahr = 2012 AND t4.venue_name = "acl";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "Parsing" AND t3.jahr = 2012 AND t4.venue_name = "acl";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "Parsing" AND t3.jahr = 2012 AND t4.venue_name = "acl";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "Parsing" AND t3.jahr = 2012 AND t4.venue_name = "acl";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "dependent types";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "dependent types";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "dependent types";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Question Answering";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Question Answering";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Question Answering";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Question Answering";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Question Answering";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Question Answering";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Question Answering";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Question Answering";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Question Answering";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Question Answering";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Question Answering";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Question Answering";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Question Answering";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Question Answering";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Question Answering";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Question Answering";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Question Answering";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Question Answering";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Question Answering";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Question Answering";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Question Answering";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Question Answering";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Question Answering";	scholar
SELECT DISTINCT t2.schlüsselphrase_id , t3.jahr FROM papier AS t3 JOIN aufsatz_schlüsselwort AS t2 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "Luke S Zettlemoyer" ORDER BY t3.jahr , t2.schlüsselphrase_id;	scholar
SELECT DISTINCT t1.name_des_schlüsselsatzes , t3.jahr FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t5 ON t4.autor_id = t5.autor_id WHERE t5.autorenname = "sanjeev arora" ORDER BY t3.jahr DESC;	scholar
SELECT DISTINCT t1.name_des_schlüsselsatzes , t3.jahr FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t5 ON t4.autor_id = t5.autor_id WHERE t5.autorenname = "sanjeev arora" ORDER BY t3.jahr DESC;	scholar
SELECT DISTINCT t1.name_des_schlüsselsatzes , t3.jahr FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t5 ON t4.autor_id = t5.autor_id WHERE t5.autorenname = "sanjeev arora" ORDER BY t3.jahr DESC;	scholar
SELECT DISTINCT t3.papier_id , t3.jahr FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "balakrishnan prabhakaran";	scholar
SELECT DISTINCT t3.papier_id , t3.jahr FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "zachary tatlock";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "subhasis chaudhuri";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "subhasis chaudhuri";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "subhasis chaudhuri";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "subhasis chaudhuri";	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "parsing" AND t3.jahr = 2014 AND t4.venue_name = "ACL";	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "parsing" AND t3.jahr = 2014 AND t4.venue_name = "ACL";	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "parsing" AND t3.jahr = 2014 AND t4.venue_name = "ACL";	scholar
SELECT DISTINCT t1.autor_id , t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t5 ON t2.schlüsselphrase_id = t5.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "brian curless" AND t5.name_des_schlüsselsatzes = "convolution";	scholar
SELECT DISTINCT t1.autor_id , t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t5 ON t2.schlüsselphrase_id = t5.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "brian curless" AND t5.name_des_schlüsselsatzes = "convolution";	scholar
SELECT DISTINCT t1.autor_id , t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t5 ON t2.schlüsselphrase_id = t5.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "brian curless" AND t5.name_des_schlüsselsatzes = "convolution";	scholar
SELECT DISTINCT t1.autor_id , t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t5 ON t2.schlüsselphrase_id = t5.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "brian curless" AND t5.name_des_schlüsselsatzes = "convolution";	scholar
SELECT DISTINCT t1.autor_id , t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t5 ON t2.schlüsselphrase_id = t5.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "brian curless" AND t5.name_des_schlüsselsatzes = "convolution";	scholar
SELECT DISTINCT t1.autor_id , t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t5 ON t2.schlüsselphrase_id = t5.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "brian curless" AND t5.name_des_schlüsselsatzes = "convolution";	scholar
SELECT DISTINCT t1.autor_id , t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t5 ON t2.schlüsselphrase_id = t5.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "brian curless" AND t5.name_des_schlüsselsatzes = "convolution";	scholar
SELECT DISTINCT t1.autor_id , t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t5 ON t2.schlüsselphrase_id = t5.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "brian curless" AND t5.name_des_schlüsselsatzes = "convolution";	scholar
SELECT DISTINCT t1.autor_id , t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t5 ON t2.schlüsselphrase_id = t5.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "brian curless" AND t5.name_des_schlüsselsatzes = "convolution";	scholar
SELECT DISTINCT t1.autor_id , t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t5 ON t2.schlüsselphrase_id = t5.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "brian curless" AND t5.name_des_schlüsselsatzes = "convolution";	scholar
SELECT DISTINCT t1.autor_id , t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t5 ON t2.schlüsselphrase_id = t5.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "brian curless" AND t5.name_des_schlüsselsatzes = "convolution";	scholar
SELECT DISTINCT t1.autor_id , t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t5 ON t2.schlüsselphrase_id = t5.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "brian curless" AND t5.name_des_schlüsselsatzes = "convolution";	scholar
SELECT DISTINCT t1.autor_id , t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t5 ON t2.schlüsselphrase_id = t5.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "brian curless" AND t5.name_des_schlüsselsatzes = "convolution";	scholar
SELECT DISTINCT t1.autor_id , t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t5 ON t2.schlüsselphrase_id = t5.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "brian curless" AND t5.name_des_schlüsselsatzes = "convolution";	scholar
SELECT DISTINCT t1.autor_id , t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t5 ON t2.schlüsselphrase_id = t5.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "brian curless" AND t5.name_des_schlüsselsatzes = "convolution";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Liwen Xiong" AND t3.jahr = 2015;	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Liwen Xiong" AND t3.jahr = 2015;	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Liwen Xiong" AND t3.jahr = 2015;	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Liwen Xiong" AND t3.jahr = 2015;	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Liwen Xiong" AND t3.jahr = 2015;	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Liwen Xiong" AND t3.jahr = 2015;	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Liwen Xiong" AND t3.jahr = 2015;	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Liwen Xiong" AND t3.jahr = 2015;	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Liwen Xiong" AND t3.jahr = 2015;	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Liwen Xiong" AND t3.jahr = 2015;	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Liwen Xiong" AND t3.jahr = 2015;	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Liwen Xiong" AND t3.jahr = 2015;	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Liwen Xiong" AND t3.jahr = 2015;	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Liwen Xiong" AND t3.jahr = 2015;	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Liwen Xiong" AND t3.jahr = 2015;	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Liwen Xiong" AND t3.jahr = 2015;	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "TAIL" AND t4.venue_name = "NIPS";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "TAIL" AND t4.venue_name = "NIPS";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "TAIL" AND t4.venue_name = "NIPS";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "TAIL" AND t4.venue_name = "NIPS";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "TAIL" AND t4.venue_name = "NIPS";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "TAIL" AND t4.venue_name = "NIPS";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "TAIL" AND t4.venue_name = "NIPS";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "TAIL" AND t4.venue_name = "NIPS";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "TAIL" AND t4.venue_name = "NIPS";	scholar
SELECT DISTINCT COUNT ( DISTINCT t1.autor_id ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname != "Mark Steedman" AND t2.papier_id IN ( SELECT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Mark Steedman" );	scholar
SELECT DISTINCT t2.schlüsselphrase_id FROM papier AS t3 JOIN aufsatz_schlüsselwort AS t2 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "Christof Dallermassl" AND t3.jahr = 2000;	scholar
SELECT DISTINCT t2.schlüsselphrase_id FROM papier AS t3 JOIN aufsatz_schlüsselwort AS t2 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "Christof Dallermassl" AND t3.jahr = 2000;	scholar
SELECT DISTINCT t2.schlüsselphrase_id FROM papier AS t3 JOIN aufsatz_schlüsselwort AS t2 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "Christof Dallermassl" AND t3.jahr = 2000;	scholar
SELECT DISTINCT t2.schlüsselphrase_id FROM papier AS t3 JOIN aufsatz_schlüsselwort AS t2 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "Christof Dallermassl" AND t3.jahr = 2000;	scholar
SELECT DISTINCT t1.autorenname , COUNT ( t3.citing_paper_id ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN cite AS t3 ON t2.papier_id = t3.zitierter_beitrag GROUP BY t1.autorenname ORDER BY COUNT ( t3.citing_paper_id ) DESC;	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "mohammad rastegari" AND t3.zeitschrift_id >= 0;	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "mohammad rastegari" AND t3.zeitschrift_id >= 0;	scholar
SELECT DISTINCT COUNT ( DISTINCT t3.citing_paper_id ) , t1.papier_id FROM papier AS t1 JOIN cite AS t3 ON t1.papier_id = t3.zitierter_beitrag JOIN veranstaltungsort AS t2 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2014 AND t2.venue_name = "TACL" GROUP BY t1.papier_id ORDER BY COUNT ( DISTINCT t3.citing_paper_id ) DESC;	scholar
SELECT DISTINCT COUNT ( DISTINCT t3.citing_paper_id ) , t1.papier_id FROM papier AS t1 JOIN cite AS t3 ON t1.papier_id = t3.zitierter_beitrag JOIN veranstaltungsort AS t2 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2014 AND t2.venue_name = "TACL" GROUP BY t1.papier_id ORDER BY COUNT ( DISTINCT t3.citing_paper_id ) DESC;	scholar
SELECT DISTINCT t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t2.jahr = 2016 AND t3.venue_name = "acl";	scholar
SELECT DISTINCT t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t2.jahr = 2016 AND t3.venue_name = "acl";	scholar
SELECT DISTINCT t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t2.jahr = 2016 AND t3.venue_name = "acl";	scholar
SELECT DISTINCT t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t2.jahr = 2016 AND t3.venue_name = "acl";	scholar
SELECT DISTINCT t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t2.jahr = 2016 AND t3.venue_name = "acl";	scholar
SELECT DISTINCT t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t2.jahr = 2016 AND t3.venue_name = "acl";	scholar
SELECT DISTINCT t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t2.jahr = 2016 AND t3.venue_name = "acl";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Multiuser Receiver in the Decision Feedback" AND t3.jahr = 2016 GROUP BY t3.papier_id HAVING COUNT ( DISTINCT t1.name_des_schlüsselsatzes ) > 1;	scholar
SELECT DISTINCT COUNT ( DISTINCT t3.papier_id ) FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.dataset_name LIKE "ImageNet";	scholar
SELECT DISTINCT COUNT ( DISTINCT t3.papier_id ) FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.dataset_name LIKE "ImageNet";	scholar
SELECT DISTINCT COUNT ( DISTINCT t3.papier_id ) FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.dataset_name LIKE "ImageNet";	scholar
SELECT DISTINCT COUNT ( DISTINCT t3.papier_id ) FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.dataset_name LIKE "ImageNet";	scholar
SELECT DISTINCT COUNT ( DISTINCT t3.papier_id ) FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.dataset_name LIKE "ImageNet";	scholar
SELECT DISTINCT COUNT ( t3.zitierter_beitrag ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN cite AS t3 ON t2.papier_id = t3.citing_paper_id WHERE t1.autorenname = "Mirella Lapata";	scholar
SELECT DISTINCT COUNT ( t3.zitierter_beitrag ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN cite AS t3 ON t2.papier_id = t3.citing_paper_id WHERE t1.autorenname = "Mirella Lapata";	scholar
SELECT DISTINCT COUNT ( t3.zitierter_beitrag ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN cite AS t3 ON t2.papier_id = t3.citing_paper_id WHERE t1.autorenname = "Mirella Lapata";	scholar
SELECT DISTINCT t3.jahr FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Michael Stonebraker" AND t4.venue_name = "VLDB" ORDER BY t3.jahr;	scholar
SELECT DISTINCT t2.datensatz_id FROM papierdatensatz AS t3 JOIN dataset AS t2 ON t3.datensatz_id = t2.datensatz_id JOIN aufsatz_schlüsselwort AS t1 ON t1.papier_id = t3.papier_id JOIN schlüsselbegriff AS t4 ON t1.schlüsselphrase_id = t4.schlüsselphrase_id WHERE t4.name_des_schlüsselsatzes = "semantic parsing";	scholar
SELECT DISTINCT t2.datensatz_id FROM papierdatensatz AS t3 JOIN dataset AS t2 ON t3.datensatz_id = t2.datensatz_id JOIN aufsatz_schlüsselwort AS t1 ON t1.papier_id = t3.papier_id JOIN schlüsselbegriff AS t4 ON t1.schlüsselphrase_id = t4.schlüsselphrase_id WHERE t4.name_des_schlüsselsatzes = "semantic parsing";	scholar
SELECT DISTINCT t2.datensatz_id FROM papierdatensatz AS t3 JOIN dataset AS t2 ON t3.datensatz_id = t2.datensatz_id JOIN aufsatz_schlüsselwort AS t1 ON t1.papier_id = t3.papier_id JOIN schlüsselbegriff AS t4 ON t1.schlüsselphrase_id = t4.schlüsselphrase_id WHERE t4.name_des_schlüsselsatzes = "semantic parsing";	scholar
SELECT DISTINCT t2.datensatz_id FROM papierdatensatz AS t3 JOIN dataset AS t2 ON t3.datensatz_id = t2.datensatz_id JOIN aufsatz_schlüsselwort AS t1 ON t1.papier_id = t3.papier_id JOIN schlüsselbegriff AS t4 ON t1.schlüsselphrase_id = t4.schlüsselphrase_id WHERE t4.name_des_schlüsselsatzes = "semantic parsing";	scholar
SELECT DISTINCT t2.datensatz_id FROM papierdatensatz AS t3 JOIN dataset AS t2 ON t3.datensatz_id = t2.datensatz_id JOIN aufsatz_schlüsselwort AS t1 ON t1.papier_id = t3.papier_id JOIN schlüsselbegriff AS t4 ON t1.schlüsselphrase_id = t4.schlüsselphrase_id WHERE t4.name_des_schlüsselsatzes = "semantic parsing";	scholar
SELECT DISTINCT t2.datensatz_id FROM papierdatensatz AS t3 JOIN dataset AS t2 ON t3.datensatz_id = t2.datensatz_id JOIN aufsatz_schlüsselwort AS t1 ON t1.papier_id = t3.papier_id JOIN schlüsselbegriff AS t4 ON t1.schlüsselphrase_id = t4.schlüsselphrase_id WHERE t4.name_des_schlüsselsatzes = "semantic parsing";	scholar
SELECT DISTINCT t2.datensatz_id FROM papierdatensatz AS t3 JOIN dataset AS t2 ON t3.datensatz_id = t2.datensatz_id JOIN aufsatz_schlüsselwort AS t1 ON t1.papier_id = t3.papier_id JOIN schlüsselbegriff AS t4 ON t1.schlüsselphrase_id = t4.schlüsselphrase_id WHERE t4.name_des_schlüsselsatzes = "semantic parsing";	scholar
SELECT DISTINCT t2.datensatz_id FROM papierdatensatz AS t3 JOIN dataset AS t2 ON t3.datensatz_id = t2.datensatz_id JOIN aufsatz_schlüsselwort AS t1 ON t1.papier_id = t3.papier_id JOIN schlüsselbegriff AS t4 ON t1.schlüsselphrase_id = t4.schlüsselphrase_id WHERE t4.name_des_schlüsselsatzes = "semantic parsing";	scholar
SELECT DISTINCT t2.datensatz_id FROM papierdatensatz AS t3 JOIN dataset AS t2 ON t3.datensatz_id = t2.datensatz_id JOIN aufsatz_schlüsselwort AS t1 ON t1.papier_id = t3.papier_id JOIN schlüsselbegriff AS t4 ON t1.schlüsselphrase_id = t4.schlüsselphrase_id WHERE t4.name_des_schlüsselsatzes = "semantic parsing";	scholar
SELECT DISTINCT t2.datensatz_id FROM papierdatensatz AS t3 JOIN dataset AS t2 ON t3.datensatz_id = t2.datensatz_id JOIN aufsatz_schlüsselwort AS t1 ON t1.papier_id = t3.papier_id JOIN schlüsselbegriff AS t4 ON t1.schlüsselphrase_id = t4.schlüsselphrase_id WHERE t4.name_des_schlüsselsatzes = "semantic parsing";	scholar
SELECT DISTINCT t2.datensatz_id FROM papierdatensatz AS t3 JOIN dataset AS t2 ON t3.datensatz_id = t2.datensatz_id JOIN aufsatz_schlüsselwort AS t1 ON t1.papier_id = t3.papier_id JOIN schlüsselbegriff AS t4 ON t1.schlüsselphrase_id = t4.schlüsselphrase_id WHERE t4.name_des_schlüsselsatzes = "semantic parsing";	scholar
SELECT DISTINCT t2.datensatz_id FROM papierdatensatz AS t3 JOIN dataset AS t2 ON t3.datensatz_id = t2.datensatz_id JOIN aufsatz_schlüsselwort AS t1 ON t1.papier_id = t3.papier_id JOIN schlüsselbegriff AS t4 ON t1.schlüsselphrase_id = t4.schlüsselphrase_id WHERE t4.name_des_schlüsselsatzes = "semantic parsing";	scholar
SELECT DISTINCT t2.datensatz_id FROM papierdatensatz AS t3 JOIN dataset AS t2 ON t3.datensatz_id = t2.datensatz_id JOIN aufsatz_schlüsselwort AS t1 ON t1.papier_id = t3.papier_id JOIN schlüsselbegriff AS t4 ON t1.schlüsselphrase_id = t4.schlüsselphrase_id WHERE t4.name_des_schlüsselsatzes = "semantic parsing";	scholar
SELECT DISTINCT t3.zeitschrift_id , t4.venue_id FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Peter Mertens";	scholar
SELECT DISTINCT t3.zeitschrift_id , t4.venue_id FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Peter Mertens";	scholar
SELECT DISTINCT t3.zeitschrift_id , t4.venue_id FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Peter Mertens";	scholar
SELECT DISTINCT COUNT ( t1.papier_id ) FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "nature communications";	scholar
SELECT DISTINCT COUNT ( t1.papier_id ) FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "nature communications";	scholar
SELECT DISTINCT COUNT ( t1.papier_id ) FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "nature communications";	scholar
SELECT DISTINCT COUNT ( t1.papier_id ) FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "nature communications";	scholar
SELECT DISTINCT COUNT ( t1.papier_id ) FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "nature communications";	scholar
SELECT DISTINCT COUNT ( t1.papier_id ) FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "nature communications";	scholar
SELECT DISTINCT COUNT ( t1.papier_id ) FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "nature communications";	scholar
SELECT DISTINCT COUNT ( t1.papier_id ) FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "nature communications";	scholar
SELECT DISTINCT COUNT ( t1.papier_id ) FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "nature communications";	scholar
SELECT DISTINCT COUNT ( t1.papier_id ) FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "nature communications";	scholar
SELECT DISTINCT COUNT ( t1.papier_id ) FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "nature communications";	scholar
SELECT DISTINCT COUNT ( t1.papier_id ) FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "nature communications";	scholar
SELECT DISTINCT t2.datensatz_id , t4.jahr FROM papierdatensatz AS t3 JOIN dataset AS t2 ON t3.datensatz_id = t2.datensatz_id JOIN aufsatz_schlüsselwort AS t1 ON t1.papier_id = t3.papier_id JOIN papier AS t4 ON t4.papier_id = t3.papier_id JOIN schlüsselbegriff AS t5 ON t1.schlüsselphrase_id = t5.schlüsselphrase_id WHERE t5.name_des_schlüsselsatzes = "deep learning" ORDER BY t4.jahr ASC;	scholar
SELECT DISTINCT t2.datensatz_id , t4.jahr FROM papierdatensatz AS t3 JOIN dataset AS t2 ON t3.datensatz_id = t2.datensatz_id JOIN aufsatz_schlüsselwort AS t1 ON t1.papier_id = t3.papier_id JOIN papier AS t4 ON t4.papier_id = t3.papier_id JOIN schlüsselbegriff AS t5 ON t1.schlüsselphrase_id = t5.schlüsselphrase_id WHERE t5.name_des_schlüsselsatzes = "deep learning" ORDER BY t4.jahr ASC;	scholar
SELECT DISTINCT t1.datensatz_id FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t4.venue_name = "ACL";	scholar
SELECT DISTINCT t1.datensatz_id FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t4.venue_name = "ACL";	scholar
SELECT DISTINCT t2.papier_id FROM aufsatz_schlüsselwort AS t5 JOIN schlüsselbegriff AS t3 ON t5.schlüsselphrase_id = t3.schlüsselphrase_id JOIN papier AS t2 ON t2.papier_id = t5.papier_id JOIN veranstaltungsort AS t6 ON t6.venue_id = t2.venue_id JOIN schreibt AS t4 ON t4.papier_id = t2.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "li dong" AND t3.name_des_schlüsselsatzes = "semantic parsing" AND t2.jahr = 2016 AND t6.venue_name = "acl";	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "convolutional neural networks" AND t3.jahr = 2016;	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "convolutional neural networks" AND t3.jahr = 2016;	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "convolutional neural networks" AND t3.jahr = 2016;	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "convolutional neural networks" AND t3.jahr = 2016;	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "convolutional neural networks" AND t3.jahr = 2016;	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "question answering" AND t3.jahr = 2016;	scholar
SELECT DISTINCT COUNT ( t1.papier_id ) , t1.jahr FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t2.venue_name = "NIPS" GROUP BY t1.jahr ORDER BY COUNT ( t1.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t1.papier_id ) , t1.jahr FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t2.venue_name = "NIPS" GROUP BY t1.jahr ORDER BY COUNT ( t1.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t1.papier_id ) , t1.jahr FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t2.venue_name = "NIPS" GROUP BY t1.jahr ORDER BY COUNT ( t1.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t1.papier_id ) , t1.jahr FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t2.venue_name = "NIPS" GROUP BY t1.jahr ORDER BY COUNT ( t1.papier_id ) DESC;	scholar
SELECT DISTINCT t1.autor_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Noah A Smith";	scholar
SELECT DISTINCT t1.autor_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Noah A Smith";	scholar
SELECT DISTINCT t1.autor_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Noah A Smith";	scholar
SELECT DISTINCT t1.autor_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Noah A Smith";	scholar
SELECT DISTINCT t1.autor_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Noah A Smith";	scholar
SELECT DISTINCT t1.autor_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Noah A Smith";	scholar
SELECT DISTINCT t1.autor_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Noah A Smith";	scholar
SELECT DISTINCT t1.autor_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Noah A Smith";	scholar
SELECT DISTINCT t1.autor_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Noah A Smith";	scholar
SELECT DISTINCT t1.autor_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Noah A Smith";	scholar
SELECT DISTINCT t1.autor_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Noah A Smith";	scholar
SELECT DISTINCT t1.autor_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Noah A Smith";	scholar
SELECT DISTINCT t1.autor_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Noah A Smith";	scholar
SELECT DISTINCT t1.autor_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Noah A Smith";	scholar
SELECT DISTINCT t2.datensatz_id FROM papier AS t3 JOIN papierdatensatz AS t2 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "jitendra malik";	scholar
SELECT DISTINCT t2.datensatz_id FROM papier AS t3 JOIN papierdatensatz AS t2 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "jitendra malik";	scholar
SELECT DISTINCT t2.datensatz_id FROM papier AS t3 JOIN papierdatensatz AS t2 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "jitendra malik";	scholar
SELECT DISTINCT t2.datensatz_id FROM papier AS t3 JOIN papierdatensatz AS t2 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "jitendra malik";	scholar
SELECT DISTINCT t2.datensatz_id FROM papier AS t3 JOIN papierdatensatz AS t2 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "jitendra malik";	scholar
SELECT DISTINCT t2.datensatz_id FROM papier AS t3 JOIN papierdatensatz AS t2 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "jitendra malik";	scholar
SELECT DISTINCT t2.datensatz_id FROM papier AS t3 JOIN papierdatensatz AS t2 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "jitendra malik";	scholar
SELECT DISTINCT t3.papier_id , t3.jahr FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "deep learning" ORDER BY t3.jahr DESC;	scholar
SELECT DISTINCT t3.papier_id , t3.jahr FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "deep learning" ORDER BY t3.jahr DESC;	scholar
SELECT DISTINCT t3.papier_id , t3.jahr FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "deep learning" ORDER BY t3.jahr DESC;	scholar
SELECT DISTINCT t3.papier_id , t3.jahr FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "deep learning" ORDER BY t3.jahr DESC;	scholar
SELECT DISTINCT t3.papier_id , t3.jahr FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "deep learning" ORDER BY t3.jahr DESC;	scholar
SELECT DISTINCT t3.papier_id , t3.jahr FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "deep learning" ORDER BY t3.jahr DESC;	scholar
SELECT DISTINCT t3.papier_id , t3.jahr FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "deep learning" ORDER BY t3.jahr DESC;	scholar
SELECT DISTINCT t3.papier_id , t3.jahr FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "deep learning" ORDER BY t3.jahr DESC;	scholar
SELECT DISTINCT t3.papier_id , t3.jahr FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "deep learning" ORDER BY t3.jahr DESC;	scholar
SELECT DISTINCT t3.papier_id , t3.jahr FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "deep learning" ORDER BY t3.jahr DESC;	scholar
SELECT DISTINCT t3.papier_id , t3.jahr FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "deep learning" ORDER BY t3.jahr DESC;	scholar
SELECT DISTINCT t3.jahr FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Pedro Domingos" GROUP BY t3.jahr;	scholar
SELECT DISTINCT t3.jahr FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Pedro Domingos" GROUP BY t3.jahr;	scholar
SELECT DISTINCT t3.papier_id , t3.jahr FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "jamie callan" ORDER BY t3.jahr;	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) , t3.jahr FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "jamie callan" GROUP BY t3.jahr;	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) , t3.jahr FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "jamie callan" GROUP BY t3.jahr;	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) , t3.jahr FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "jamie callan" GROUP BY t3.jahr;	scholar
SELECT DISTINCT t3.papier_id FROM papier AS t3 JOIN cite AS t4 ON t3.papier_id = t4.citing_paper_id JOIN schreibt AS t2 ON t2.papier_id = t4.zitierter_beitrag JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "oren etzioni";	scholar
SELECT DISTINCT t3.papier_id FROM papier AS t3 JOIN cite AS t4 ON t3.papier_id = t4.citing_paper_id JOIN schreibt AS t2 ON t2.papier_id = t4.zitierter_beitrag JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "oren etzioni";	scholar
SELECT DISTINCT t3.papier_id FROM papier AS t3 JOIN cite AS t4 ON t3.papier_id = t4.citing_paper_id JOIN schreibt AS t2 ON t2.papier_id = t4.zitierter_beitrag JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Daniel Jurafsky";	scholar
SELECT DISTINCT t3.papier_id FROM papier AS t3 JOIN cite AS t4 ON t3.papier_id = t4.citing_paper_id JOIN schreibt AS t2 ON t2.papier_id = t4.zitierter_beitrag JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Daniel Jurafsky";	scholar
SELECT DISTINCT t3.papier_id FROM papier AS t3 JOIN cite AS t4 ON t3.papier_id = t4.citing_paper_id JOIN schreibt AS t2 ON t2.papier_id = t4.zitierter_beitrag JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Daniel Jurafsky";	scholar
SELECT DISTINCT t3.papier_id FROM papier AS t3 JOIN cite AS t4 ON t3.papier_id = t4.citing_paper_id JOIN schreibt AS t2 ON t2.papier_id = t4.zitierter_beitrag JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Daniel Jurafsky";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "instance segmentation" AND t3.zeitschrift_id >= 0;	scholar
SELECT DISTINCT COUNT ( t4.papier_id ) , t3.autor_id FROM aufsatz_schlüsselwort AS t1 JOIN schlüsselbegriff AS t2 ON t1.schlüsselphrase_id = t2.schlüsselphrase_id JOIN papier AS t4 ON t4.papier_id = t1.papier_id JOIN schreibt AS t3 ON t3.papier_id = t4.papier_id WHERE t2.name_des_schlüsselsatzes = "semantic parsing" AND t4.jahr > 2005 GROUP BY t3.autor_id ORDER BY COUNT ( t4.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t4.papier_id ) , t3.autor_id FROM aufsatz_schlüsselwort AS t1 JOIN schlüsselbegriff AS t2 ON t1.schlüsselphrase_id = t2.schlüsselphrase_id JOIN papier AS t4 ON t4.papier_id = t1.papier_id JOIN schreibt AS t3 ON t3.papier_id = t4.papier_id WHERE t2.name_des_schlüsselsatzes = "semantic parsing" AND t4.jahr > 2005 GROUP BY t3.autor_id ORDER BY COUNT ( t4.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t4.papier_id ) , t3.autor_id FROM aufsatz_schlüsselwort AS t1 JOIN schlüsselbegriff AS t2 ON t1.schlüsselphrase_id = t2.schlüsselphrase_id JOIN papier AS t4 ON t4.papier_id = t1.papier_id JOIN schreibt AS t3 ON t3.papier_id = t4.papier_id WHERE t2.name_des_schlüsselsatzes = "semantic parsing" AND t4.jahr > 2005 GROUP BY t3.autor_id ORDER BY COUNT ( t4.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t5.citing_paper_id ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t3 ON t2.schlüsselphrase_id = t3.schlüsselphrase_id JOIN schreibt AS t4 ON t4.papier_id = t2.papier_id JOIN cite AS t5 ON t4.papier_id = t5.zitierter_beitrag JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "Dan Makumbi" AND t3.name_des_schlüsselsatzes = "Genetic Identity";	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "character recognition" AND t3.jahr < 2010;	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "character recognition" AND t3.jahr < 2010;	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "character recognition" AND t3.jahr < 2010;	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "character recognition" AND t3.jahr < 2010;	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "character recognition" AND t3.jahr < 2010;	scholar
SELECT DISTINCT COUNT ( t2.schlüsselphrase_id ) , t2.schlüsselphrase_id FROM papier AS t3 JOIN aufsatz_schlüsselwort AS t2 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "oren etzioni" GROUP BY t2.schlüsselphrase_id ORDER BY COUNT ( t2.schlüsselphrase_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t4.papier_id ) FROM papierdatensatz AS t3 JOIN dataset AS t2 ON t3.datensatz_id = t2.datensatz_id JOIN papier AS t4 ON t4.papier_id = t3.papier_id JOIN aufsatz_schlüsselwort AS t1 ON t4.papier_id = t1.papier_id JOIN schlüsselbegriff AS t5 ON t1.schlüsselphrase_id = t5.schlüsselphrase_id WHERE t2.dataset_name = "ImageNet" AND t5.name_des_schlüsselsatzes = "deep learning";	scholar
SELECT DISTINCT t4.zitierter_beitrag , COUNT ( t4.zitierter_beitrag ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag WHERE t1.name_des_schlüsselsatzes = "parsing" GROUP BY t4.zitierter_beitrag ORDER BY COUNT ( t4.zitierter_beitrag ) DESC;	scholar
SELECT DISTINCT t4.zitierter_beitrag , COUNT ( t4.zitierter_beitrag ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag WHERE t1.name_des_schlüsselsatzes = "parsing" GROUP BY t4.zitierter_beitrag ORDER BY COUNT ( t4.zitierter_beitrag ) DESC;	scholar
SELECT DISTINCT t4.zitierter_beitrag , COUNT ( t4.zitierter_beitrag ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag WHERE t1.name_des_schlüsselsatzes = "parsing" GROUP BY t4.zitierter_beitrag ORDER BY COUNT ( t4.zitierter_beitrag ) DESC;	scholar
SELECT DISTINCT t4.zitierter_beitrag , COUNT ( t4.zitierter_beitrag ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag WHERE t1.name_des_schlüsselsatzes = "parsing" GROUP BY t4.zitierter_beitrag ORDER BY COUNT ( t4.zitierter_beitrag ) DESC;	scholar
SELECT DISTINCT t4.zitierter_beitrag , COUNT ( t4.zitierter_beitrag ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag WHERE t1.name_des_schlüsselsatzes = "parsing" GROUP BY t4.zitierter_beitrag ORDER BY COUNT ( t4.zitierter_beitrag ) DESC;	scholar
SELECT DISTINCT t4.zitierter_beitrag , COUNT ( t4.zitierter_beitrag ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag WHERE t1.name_des_schlüsselsatzes = "parsing" GROUP BY t4.zitierter_beitrag ORDER BY COUNT ( t4.zitierter_beitrag ) DESC;	scholar
SELECT DISTINCT t4.zitierter_beitrag , COUNT ( t4.zitierter_beitrag ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag WHERE t1.name_des_schlüsselsatzes = "parsing" GROUP BY t4.zitierter_beitrag ORDER BY COUNT ( t4.zitierter_beitrag ) DESC;	scholar
SELECT DISTINCT t4.zitierter_beitrag , COUNT ( t4.zitierter_beitrag ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag WHERE t1.name_des_schlüsselsatzes = "parsing" GROUP BY t4.zitierter_beitrag ORDER BY COUNT ( t4.zitierter_beitrag ) DESC;	scholar
SELECT DISTINCT t4.zitierter_beitrag , COUNT ( t4.zitierter_beitrag ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag WHERE t1.name_des_schlüsselsatzes = "parsing" GROUP BY t4.zitierter_beitrag ORDER BY COUNT ( t4.zitierter_beitrag ) DESC;	scholar
SELECT DISTINCT t4.zitierter_beitrag , COUNT ( t4.zitierter_beitrag ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag WHERE t1.name_des_schlüsselsatzes = "parsing" GROUP BY t4.zitierter_beitrag ORDER BY COUNT ( t4.zitierter_beitrag ) DESC;	scholar
SELECT DISTINCT t4.zitierter_beitrag , COUNT ( t4.zitierter_beitrag ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag WHERE t1.name_des_schlüsselsatzes = "parsing" GROUP BY t4.zitierter_beitrag ORDER BY COUNT ( t4.zitierter_beitrag ) DESC;	scholar
SELECT DISTINCT t4.zitierter_beitrag , COUNT ( t4.zitierter_beitrag ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag WHERE t1.name_des_schlüsselsatzes = "parsing" GROUP BY t4.zitierter_beitrag ORDER BY COUNT ( t4.zitierter_beitrag ) DESC;	scholar
SELECT DISTINCT t3.jahr , t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname LIKE "Michael Armstrong" AND t3.jahr LIKE "199";	scholar
SELECT DISTINCT t4.zitierter_beitrag , COUNT ( t4.zitierter_beitrag ) FROM papier AS t3 JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "ohad shamir" GROUP BY t4.zitierter_beitrag ORDER BY COUNT ( t4.zitierter_beitrag ) DESC;	scholar
SELECT DISTINCT t4.zitierter_beitrag , COUNT ( t4.zitierter_beitrag ) FROM papier AS t3 JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "ohad shamir" GROUP BY t4.zitierter_beitrag ORDER BY COUNT ( t4.zitierter_beitrag ) DESC;	scholar
SELECT DISTINCT t4.zitierter_beitrag , COUNT ( t4.zitierter_beitrag ) FROM papier AS t3 JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "ohad shamir" GROUP BY t4.zitierter_beitrag ORDER BY COUNT ( t4.zitierter_beitrag ) DESC;	scholar
SELECT DISTINCT t4.zitierter_beitrag , COUNT ( t4.zitierter_beitrag ) FROM papier AS t3 JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "ohad shamir" GROUP BY t4.zitierter_beitrag ORDER BY COUNT ( t4.zitierter_beitrag ) DESC;	scholar
SELECT DISTINCT t4.zitierter_beitrag , COUNT ( t4.zitierter_beitrag ) FROM papier AS t3 JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "ohad shamir" GROUP BY t4.zitierter_beitrag ORDER BY COUNT ( t4.zitierter_beitrag ) DESC;	scholar
SELECT DISTINCT t4.zitierter_beitrag , COUNT ( t4.zitierter_beitrag ) FROM papier AS t3 JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "ohad shamir" GROUP BY t4.zitierter_beitrag ORDER BY COUNT ( t4.zitierter_beitrag ) DESC;	scholar
SELECT DISTINCT t4.zitierter_beitrag , COUNT ( t4.zitierter_beitrag ) FROM papier AS t3 JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "ohad shamir" GROUP BY t4.zitierter_beitrag ORDER BY COUNT ( t4.zitierter_beitrag ) DESC;	scholar
SELECT DISTINCT COUNT ( t2.papier_id ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "michael i. jordan" AND t3.jahr = 2016;	scholar
SELECT DISTINCT COUNT ( t2.papier_id ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "michael i. jordan" AND t3.jahr = 2016;	scholar
SELECT DISTINCT COUNT ( t2.papier_id ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "michael i. jordan" AND t3.jahr = 2016;	scholar
SELECT DISTINCT COUNT ( t2.papier_id ) , t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t3.venue_name = "ACL" GROUP BY t1.autor_id;	scholar
SELECT DISTINCT COUNT ( t2.papier_id ) , t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t3.venue_name = "ACL" GROUP BY t1.autor_id;	scholar
SELECT DISTINCT COUNT ( t2.papier_id ) , t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t3.venue_name = "ACL" GROUP BY t1.autor_id;	scholar
SELECT DISTINCT COUNT ( t2.papier_id ) , t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t2.jahr = 2007 AND t3.venue_name = "CVPR" GROUP BY t1.autor_id ORDER BY COUNT ( t2.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t2.papier_id ) , t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t2.jahr = 2007 AND t3.venue_name = "CVPR" GROUP BY t1.autor_id ORDER BY COUNT ( t2.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t2.papier_id ) , t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t2.jahr = 2007 AND t3.venue_name = "CVPR" GROUP BY t1.autor_id ORDER BY COUNT ( t2.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t2.papier_id ) , t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t2.jahr = 2007 AND t3.venue_name = "CVPR" GROUP BY t1.autor_id ORDER BY COUNT ( t2.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t2.papier_id ) , t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t2.jahr = 2007 AND t3.venue_name = "CVPR" GROUP BY t1.autor_id ORDER BY COUNT ( t2.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t2.papier_id ) , t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t2.jahr = 2007 AND t3.venue_name = "CVPR" GROUP BY t1.autor_id ORDER BY COUNT ( t2.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( DISTINCT t1.papier_id ) FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "ACL";	scholar
SELECT DISTINCT COUNT ( DISTINCT t1.papier_id ) FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "ACL";	scholar
SELECT DISTINCT papier_id FROM papier WHERE jahr = 2014;	scholar
SELECT DISTINCT papier_id FROM papier WHERE jahr = 2014;	scholar
SELECT DISTINCT t3.papier_id FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Richard Ladner" AND t4.venue_name = "chi";	scholar
SELECT DISTINCT t3.papier_id FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Richard Ladner" AND t4.venue_name = "chi";	scholar
SELECT DISTINCT t3.papier_id FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Richard Ladner" AND t4.venue_name = "chi";	scholar
SELECT DISTINCT t3.papier_id FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Richard Ladner" AND t4.venue_name = "chi";	scholar
SELECT DISTINCT t3.papier_id FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Richard Ladner" AND t4.venue_name = "chi";	scholar
SELECT DISTINCT t3.papier_id FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Richard Ladner" AND t4.venue_name = "chi";	scholar
SELECT DISTINCT t3.papier_id FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Richard Ladner" AND t4.venue_name = "chi";	scholar
SELECT DISTINCT t3.papier_id FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Richard Ladner" AND t4.venue_name = "chi";	scholar
SELECT DISTINCT t4.zitierter_beitrag , COUNT ( t4.citing_paper_id ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag WHERE t1.name_des_schlüsselsatzes = "Artificial Intelligence" GROUP BY t4.zitierter_beitrag ORDER BY COUNT ( t4.citing_paper_id ) DESC;	scholar
SELECT DISTINCT t4.zitierter_beitrag , COUNT ( t4.citing_paper_id ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag WHERE t1.name_des_schlüsselsatzes = "Artificial Intelligence" GROUP BY t4.zitierter_beitrag ORDER BY COUNT ( t4.citing_paper_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) , t1.schlüsselphrase_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t3.jahr = 2014 AND t4.venue_name = "ACL" GROUP BY t1.schlüsselphrase_id ORDER BY COUNT ( t3.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) , t1.schlüsselphrase_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t3.jahr = 2015 AND t4.venue_name = "NIPS" GROUP BY t1.schlüsselphrase_id ORDER BY COUNT ( t3.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) , t1.schlüsselphrase_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t3.jahr = 2015 AND t4.venue_name = "NIPS" GROUP BY t1.schlüsselphrase_id ORDER BY COUNT ( t3.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) , t1.schlüsselphrase_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t3.jahr = 2015 AND t4.venue_name = "NIPS" GROUP BY t1.schlüsselphrase_id ORDER BY COUNT ( t3.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) , t1.schlüsselphrase_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t3.jahr = 2015 AND t4.venue_name = "NIPS" GROUP BY t1.schlüsselphrase_id ORDER BY COUNT ( t3.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) , t1.schlüsselphrase_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t3.jahr = 2015 AND t4.venue_name = "NIPS" GROUP BY t1.schlüsselphrase_id ORDER BY COUNT ( t3.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) , t1.schlüsselphrase_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t3.jahr = 2015 AND t4.venue_name = "NIPS" GROUP BY t1.schlüsselphrase_id ORDER BY COUNT ( t3.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "deep reinforcement learning" AND t4.venue_name = "nips";	scholar
SELECT DISTINCT t3.papier_id FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.dataset_name = "WebKB";	scholar
SELECT DISTINCT t3.papier_id FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.dataset_name = "WebKB";	scholar
SELECT DISTINCT t3.papier_id FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.dataset_name = "WebKB";	scholar
SELECT DISTINCT t3.papier_id FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.dataset_name = "WebKB";	scholar
SELECT DISTINCT t3.papier_id FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.dataset_name = "WebKB";	scholar
SELECT DISTINCT t3.papier_id FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.dataset_name = "WebKB";	scholar
SELECT DISTINCT t3.papier_id FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.dataset_name = "WebKB";	scholar
SELECT DISTINCT t3.papier_id FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.dataset_name = "WebKB";	scholar
SELECT DISTINCT t3.papier_id FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.dataset_name = "WebKB";	scholar
SELECT DISTINCT venue_id FROM papier WHERE jahr = 2013;	scholar
SELECT DISTINCT COUNT ( DISTINCT t4.citing_paper_id ) , t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id JOIN cite AS t4 ON t1.papier_id = t4.zitierter_beitrag WHERE t3.venue_name = "CVPR" GROUP BY t1.autor_id ORDER BY COUNT ( DISTINCT t4.citing_paper_id ) DESC;	scholar
SELECT DISTINCT COUNT ( DISTINCT t4.citing_paper_id ) , t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id JOIN cite AS t4 ON t1.papier_id = t4.zitierter_beitrag WHERE t3.venue_name = "CVPR" GROUP BY t1.autor_id ORDER BY COUNT ( DISTINCT t4.citing_paper_id ) DESC;	scholar
SELECT DISTINCT t1.autorenname , t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t5 ON t2.schlüsselphrase_id = t5.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname != "chris dyer" AND t5.name_des_schlüsselsatzes = "syntactic parsing";	scholar
SELECT DISTINCT t1.autorenname , t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t5 ON t2.schlüsselphrase_id = t5.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname != "chris dyer" AND t5.name_des_schlüsselsatzes = "syntactic parsing";	scholar
SELECT DISTINCT t1.autorenname , t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t5 ON t2.schlüsselphrase_id = t5.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname != "chris dyer" AND t5.name_des_schlüsselsatzes = "syntactic parsing";	scholar
SELECT DISTINCT t1.autorenname , t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t5 ON t2.schlüsselphrase_id = t5.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname != "chris dyer" AND t5.name_des_schlüsselsatzes = "syntactic parsing";	scholar
SELECT DISTINCT papier_id FROM papier WHERE jahr = ( SELECT MAX ( jahr ) FROM papier );	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) , t3.jahr FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "benjamin mako hill" GROUP BY t3.jahr ORDER BY t3.jahr;	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) , t3.jahr FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "benjamin mako hill" GROUP BY t3.jahr ORDER BY t3.jahr;	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) , t3.jahr FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "ameet soni" GROUP BY t3.jahr ORDER BY t3.jahr;	scholar
SELECT DISTINCT COUNT ( t4.citing_paper_id ) , t3.autor_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN cite AS t4 ON t2.papier_id = t4.zitierter_beitrag JOIN schreibt AS t3 ON t3.papier_id = t4.citing_paper_id WHERE t1.autorenname = "Daniel A Reed" GROUP BY t3.autor_id ORDER BY COUNT ( t4.citing_paper_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t4.citing_paper_id ) , t3.autor_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN cite AS t4 ON t2.papier_id = t4.zitierter_beitrag JOIN schreibt AS t3 ON t3.papier_id = t4.citing_paper_id WHERE t1.autorenname = "Daniel A Reed" GROUP BY t3.autor_id ORDER BY COUNT ( t4.citing_paper_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t1.papier_id ) FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t2.venue_name = "sigir";	scholar
SELECT DISTINCT COUNT ( t1.papier_id ) FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t2.venue_name = "sigir";	scholar
SELECT DISTINCT COUNT ( t1.papier_id ) FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t2.venue_name = "sigir";	scholar
SELECT DISTINCT COUNT ( t1.papier_id ) FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t2.venue_name = "sigir";	scholar
SELECT DISTINCT t3.citing_paper_id FROM papier AS t1 JOIN cite AS t3 ON t1.papier_id = t3.zitierter_beitrag JOIN veranstaltungsort AS t2 ON t2.venue_id = t1.venue_id WHERE t2.venue_name = "ACL" GROUP BY t3.citing_paper_id HAVING COUNT ( DISTINCT t3.zitierter_beitrag ) < 5;	scholar
SELECT DISTINCT t3.citing_paper_id FROM papier AS t1 JOIN cite AS t3 ON t1.papier_id = t3.zitierter_beitrag JOIN veranstaltungsort AS t2 ON t2.venue_id = t1.venue_id WHERE t2.venue_name = "ACL" GROUP BY t3.citing_paper_id HAVING COUNT ( DISTINCT t3.zitierter_beitrag ) < 5;	scholar
SELECT DISTINCT t3.citing_paper_id FROM papier AS t1 JOIN cite AS t3 ON t1.papier_id = t3.zitierter_beitrag JOIN veranstaltungsort AS t2 ON t2.venue_id = t1.venue_id WHERE t2.venue_name = "ACL" GROUP BY t3.citing_paper_id HAVING COUNT ( DISTINCT t3.zitierter_beitrag ) < 5;	scholar
SELECT DISTINCT t3.citing_paper_id FROM papier AS t1 JOIN cite AS t3 ON t1.papier_id = t3.zitierter_beitrag JOIN veranstaltungsort AS t2 ON t2.venue_id = t1.venue_id WHERE t2.venue_name = "ACL" GROUP BY t3.citing_paper_id HAVING COUNT ( DISTINCT t3.zitierter_beitrag ) < 5;	scholar
SELECT DISTINCT t3.papier_id , t3.jahr FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Mirella Lapata" ORDER BY t3.jahr DESC LIMIT 5;	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "pldi";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "pldi";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "pldi";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "pldi";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "pldi";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "pldi";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "pldi";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "pldi";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "pldi";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "pldi";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "pldi";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "pldi";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "pldi";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "pldi";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "pldi";	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2015 AND t2.venue_name = "pldi";	scholar
SELECT DISTINCT zeitschrift_id FROM papier WHERE jahr = 2011 GROUP BY zeitschrift_id;	scholar
SELECT DISTINCT zeitschrift_id FROM papier WHERE jahr = 2011 GROUP BY zeitschrift_id;	scholar
SELECT DISTINCT t1.papier_id FROM veranstaltungsort AS t2 JOIN papier AS t1 ON t2.venue_id = t1.venue_id WHERE t1.titel LIKE "neural attention" AND t1.jahr = 2016 AND t2.venue_name = "ACL";	scholar
SELECT DISTINCT t1.autorenname FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t4 ON t2.schlüsselphrase_id = t4.schlüsselphrase_id JOIN schreibt AS t3 ON t3.papier_id = t2.papier_id JOIN autor AS t1 ON t3.autor_id = t1.autor_id WHERE t4.name_des_schlüsselsatzes = "Machine Learning" GROUP BY t1.autorenname ORDER BY COUNT ( DISTINCT t3.papier_id ) DESC;	scholar
SELECT DISTINCT t1.autorenname FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t4 ON t2.schlüsselphrase_id = t4.schlüsselphrase_id JOIN schreibt AS t3 ON t3.papier_id = t2.papier_id JOIN autor AS t1 ON t3.autor_id = t1.autor_id WHERE t4.name_des_schlüsselsatzes LIKE "sensor fusion";	scholar
SELECT DISTINCT t1.autorenname FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t4 ON t2.schlüsselphrase_id = t4.schlüsselphrase_id JOIN schreibt AS t3 ON t3.papier_id = t2.papier_id JOIN autor AS t1 ON t3.autor_id = t1.autor_id WHERE t4.name_des_schlüsselsatzes LIKE "sensor fusion";	scholar
SELECT DISTINCT t1.autorenname FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t4 ON t2.schlüsselphrase_id = t4.schlüsselphrase_id JOIN schreibt AS t3 ON t3.papier_id = t2.papier_id JOIN autor AS t1 ON t3.autor_id = t1.autor_id WHERE t4.name_des_schlüsselsatzes LIKE "sensor fusion";	scholar
SELECT DISTINCT t1.autorenname FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t4 ON t2.schlüsselphrase_id = t4.schlüsselphrase_id JOIN schreibt AS t3 ON t3.papier_id = t2.papier_id JOIN autor AS t1 ON t3.autor_id = t1.autor_id WHERE t4.name_des_schlüsselsatzes LIKE "sensor fusion";	scholar
SELECT DISTINCT t1.autorenname FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t4 ON t2.schlüsselphrase_id = t4.schlüsselphrase_id JOIN schreibt AS t3 ON t3.papier_id = t2.papier_id JOIN autor AS t1 ON t3.autor_id = t1.autor_id WHERE t4.name_des_schlüsselsatzes LIKE "sensor fusion";	scholar
SELECT DISTINCT COUNT ( t5.citing_paper_id ) FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN cite AS t5 ON t3.papier_id = t5.zitierter_beitrag JOIN schreibt AS t4 ON t4.papier_id = t5.citing_paper_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "michael i. jordan" AND t1.autorenname = "dan klein";	scholar
SELECT DISTINCT COUNT ( t5.citing_paper_id ) FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN cite AS t5 ON t3.papier_id = t5.zitierter_beitrag JOIN schreibt AS t4 ON t4.papier_id = t5.citing_paper_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "michael i. jordan" AND t1.autorenname = "dan klein";	scholar
SELECT DISTINCT t5.autor_id FROM schreibt AS t3 JOIN autor AS t2 ON t3.autor_id = t2.autor_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN schreibt AS t5 ON t5.papier_id = t4.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t2.autorenname = "Ameet Soni" AND t1.autorenname = "Ras Bodik";	scholar
SELECT DISTINCT t3.papier_id FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.dataset_name = "ImageNet" AND t3.jahr = 2014;	scholar
SELECT DISTINCT t3.zeitschrift_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Takashi Matsumoto" GROUP BY t3.zeitschrift_id;	scholar
SELECT DISTINCT t3.zeitschrift_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Takashi Matsumoto" GROUP BY t3.zeitschrift_id;	scholar
SELECT DISTINCT t3.zeitschrift_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Takashi Matsumoto" GROUP BY t3.zeitschrift_id;	scholar
SELECT DISTINCT t3.autor_id FROM aufsatz_schlüsselwort AS t1 JOIN schlüsselbegriff AS t2 ON t1.schlüsselphrase_id = t2.schlüsselphrase_id JOIN papier AS t4 ON t4.papier_id = t1.papier_id JOIN schreibt AS t3 ON t3.papier_id = t4.papier_id JOIN autor AS t5 ON t3.autor_id = t5.autor_id WHERE t2.name_des_schlüsselsatzes = "Bacterial Wilt" AND t4.jahr = 2016;	scholar
SELECT DISTINCT t3.autor_id FROM aufsatz_schlüsselwort AS t1 JOIN schlüsselbegriff AS t2 ON t1.schlüsselphrase_id = t2.schlüsselphrase_id JOIN papier AS t4 ON t4.papier_id = t1.papier_id JOIN schreibt AS t3 ON t3.papier_id = t4.papier_id JOIN autor AS t5 ON t3.autor_id = t5.autor_id WHERE t2.name_des_schlüsselsatzes = "Bacterial Wilt" AND t4.jahr = 2016;	scholar
SELECT DISTINCT t3.jahr FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Luke S Zettlemoyer" ORDER BY t3.jahr;	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "question answering" AND t3.jahr = 2016;	scholar
SELECT DISTINCT t3.papier_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "question answering" AND t3.jahr = 2016;	scholar
SELECT DISTINCT COUNT ( t3.citing_paper_id ) , t1.name_des_schlüsselsatzes FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN cite AS t3 ON t2.papier_id = t3.zitierter_beitrag GROUP BY t1.name_des_schlüsselsatzes ORDER BY COUNT ( t3.citing_paper_id ) DESC;	scholar
SELECT DISTINCT t3.zeitschrift_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Temporal Data" GROUP BY t3.zeitschrift_id;	scholar
SELECT DISTINCT t3.zeitschrift_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Temporal Data" GROUP BY t3.zeitschrift_id;	scholar
SELECT DISTINCT t2.papier_id FROM papierdatensatz AS t3 JOIN dataset AS t5 ON t3.datensatz_id = t5.datensatz_id JOIN aufsatz_schlüsselwort AS t4 ON t4.papier_id = t3.papier_id JOIN papier AS t2 ON t2.papier_id = t3.papier_id JOIN veranstaltungsort AS t6 ON t6.venue_id = t2.venue_id JOIN schlüsselbegriff AS t1 ON t4.schlüsselphrase_id = t1.schlüsselphrase_id WHERE t5.dataset_name = "Jeopardy! Questions" AND t1.name_des_schlüsselsatzes = "Parsing" AND t2.jahr = 2014 AND t6.venue_name = "ACL";	scholar
SELECT DISTINCT t2.papier_id FROM papierdatensatz AS t3 JOIN dataset AS t5 ON t3.datensatz_id = t5.datensatz_id JOIN aufsatz_schlüsselwort AS t4 ON t4.papier_id = t3.papier_id JOIN papier AS t2 ON t2.papier_id = t3.papier_id JOIN veranstaltungsort AS t6 ON t6.venue_id = t2.venue_id JOIN schlüsselbegriff AS t1 ON t4.schlüsselphrase_id = t1.schlüsselphrase_id WHERE t5.dataset_name = "Jeopardy! Questions" AND t1.name_des_schlüsselsatzes = "Parsing" AND t2.jahr = 2014 AND t6.venue_name = "ACL";	scholar
SELECT DISTINCT t2.papier_id FROM papierdatensatz AS t3 JOIN dataset AS t5 ON t3.datensatz_id = t5.datensatz_id JOIN aufsatz_schlüsselwort AS t4 ON t4.papier_id = t3.papier_id JOIN papier AS t2 ON t2.papier_id = t3.papier_id JOIN veranstaltungsort AS t6 ON t6.venue_id = t2.venue_id JOIN schlüsselbegriff AS t1 ON t4.schlüsselphrase_id = t1.schlüsselphrase_id WHERE t5.dataset_name = "Jeopardy! Questions" AND t1.name_des_schlüsselsatzes = "Parsing" AND t2.jahr = 2014 AND t6.venue_name = "ACL";	scholar
SELECT DISTINCT t2.papier_id FROM papierdatensatz AS t3 JOIN dataset AS t5 ON t3.datensatz_id = t5.datensatz_id JOIN aufsatz_schlüsselwort AS t4 ON t4.papier_id = t3.papier_id JOIN papier AS t2 ON t2.papier_id = t3.papier_id JOIN veranstaltungsort AS t6 ON t6.venue_id = t2.venue_id JOIN schlüsselbegriff AS t1 ON t4.schlüsselphrase_id = t1.schlüsselphrase_id WHERE t5.dataset_name = "Jeopardy! Questions" AND t1.name_des_schlüsselsatzes = "Parsing" AND t2.jahr = 2014 AND t6.venue_name = "ACL";	scholar
SELECT DISTINCT t2.papier_id FROM papierdatensatz AS t3 JOIN dataset AS t5 ON t3.datensatz_id = t5.datensatz_id JOIN aufsatz_schlüsselwort AS t4 ON t4.papier_id = t3.papier_id JOIN papier AS t2 ON t2.papier_id = t3.papier_id JOIN veranstaltungsort AS t6 ON t6.venue_id = t2.venue_id JOIN schlüsselbegriff AS t1 ON t4.schlüsselphrase_id = t1.schlüsselphrase_id WHERE t5.dataset_name = "Jeopardy! Questions" AND t1.name_des_schlüsselsatzes = "Parsing" AND t2.jahr = 2014 AND t6.venue_name = "ACL";	scholar
SELECT DISTINCT t2.zeitschrift_id FROM papier AS t3 JOIN journal AS t2 ON t3.zeitschrift_id = t2.zeitschrift_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "linda shapiro";	scholar
SELECT DISTINCT t2.zeitschrift_id FROM papier AS t3 JOIN journal AS t2 ON t3.zeitschrift_id = t2.zeitschrift_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "linda shapiro";	scholar
SELECT DISTINCT t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t3.venue_name = "NIPS";	scholar
SELECT DISTINCT t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t3.venue_name = "NIPS";	scholar
SELECT DISTINCT t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t3.venue_name = "NIPS";	scholar
SELECT DISTINCT t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t3.venue_name = "NIPS";	scholar
SELECT DISTINCT t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t3.venue_name = "NIPS";	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) , t4.venue_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "deep learning" GROUP BY t4.venue_id ORDER BY COUNT ( t3.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) FROM papier AS t3 JOIN journal AS t2 ON t3.zeitschrift_id = t2.zeitschrift_id JOIN aufsatz_schlüsselwort AS t1 ON t3.papier_id = t1.papier_id WHERE t2.journal_name = "Cell" AND t3.jahr = 2015;	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) FROM papier AS t3 JOIN journal AS t2 ON t3.zeitschrift_id = t2.zeitschrift_id JOIN aufsatz_schlüsselwort AS t1 ON t3.papier_id = t1.papier_id WHERE t2.journal_name = "Cell" AND t3.jahr = 2015;	scholar
SELECT DISTINCT t3.titel FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Donald E Knuth";	scholar
SELECT DISTINCT t3.papier_id FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "ali farhadi" AND t3.jahr = 2016 AND t4.venue_name = "eccv";	scholar
SELECT DISTINCT t3.papier_id FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "ali farhadi" AND t3.jahr = 2016 AND t4.venue_name = "eccv";	scholar
SELECT DISTINCT t3.papier_id FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "ali farhadi" AND t3.jahr = 2016 AND t4.venue_name = "eccv";	scholar
SELECT DISTINCT t2.papier_id FROM papierdatensatz AS t3 JOIN dataset AS t1 ON t3.datensatz_id = t1.datensatz_id JOIN aufsatz_schlüsselwort AS t2 ON t2.papier_id = t3.papier_id JOIN schlüsselbegriff AS t4 ON t2.schlüsselphrase_id = t4.schlüsselphrase_id WHERE t1.dataset_name = "YAGO" AND t4.name_des_schlüsselsatzes = "Semantic Data";	scholar
SELECT DISTINCT COUNT ( DISTINCT t2.papier_id ) , t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t3.venue_name = "chi" GROUP BY t1.autor_id ORDER BY COUNT ( DISTINCT t2.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( DISTINCT t2.papier_id ) , t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t3.venue_name = "chi" GROUP BY t1.autor_id ORDER BY COUNT ( DISTINCT t2.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( DISTINCT t2.papier_id ) , t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t3.venue_name = "chi" GROUP BY t1.autor_id ORDER BY COUNT ( DISTINCT t2.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( DISTINCT t2.papier_id ) , t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t3.venue_name = "chi" GROUP BY t1.autor_id ORDER BY COUNT ( DISTINCT t2.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( DISTINCT t3.papier_id ) , t3.jahr FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname LIKE "Ye Cao" GROUP BY t3.jahr ORDER BY COUNT ( DISTINCT t3.papier_id ) DESC;	scholar
SELECT DISTINCT COUNT ( DISTINCT t3.papier_id ) , t3.jahr FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname LIKE "Ye Cao" GROUP BY t3.jahr ORDER BY COUNT ( DISTINCT t3.papier_id ) DESC;	scholar
SELECT DISTINCT t3.venue_id FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.dataset_name = "ImageNet";	scholar
SELECT DISTINCT t3.jahr FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "deep learning" GROUP BY t3.jahr ORDER BY t3.jahr ASC;	scholar
SELECT DISTINCT t3.jahr FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "deep learning" GROUP BY t3.jahr ORDER BY t3.jahr ASC;	scholar
SELECT DISTINCT t3.jahr FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "deep learning" GROUP BY t3.jahr ORDER BY t3.jahr ASC;	scholar
SELECT DISTINCT t3.jahr FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "deep learning" GROUP BY t3.jahr ORDER BY t3.jahr ASC;	scholar
SELECT DISTINCT t2.papier_id FROM papier AS t2 JOIN journal AS t1 ON t2.zeitschrift_id = t1.zeitschrift_id WHERE t1.journal_name = "Academic radiology" AND t2.jahr = 1995;	scholar
SELECT DISTINCT t4.zitierter_beitrag FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN cite AS t4 ON t3.papier_id = t4.citing_paper_id WHERE t1.name_des_schlüsselsatzes = "parsing";	scholar
SELECT DISTINCT t4.zitierter_beitrag FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN cite AS t4 ON t3.papier_id = t4.citing_paper_id WHERE t1.name_des_schlüsselsatzes = "parsing";	scholar
SELECT DISTINCT t3.venue_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Trophic Cascade";	scholar
SELECT DISTINCT t3.venue_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Trophic Cascade";	scholar
SELECT DISTINCT t3.venue_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Trophic Cascade";	scholar
SELECT DISTINCT t3.venue_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Trophic Cascade";	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "question answering" AND t3.jahr >= 2011;	scholar
SELECT DISTINCT COUNT ( DISTINCT t4.citing_paper_id ) , t3.venue_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag WHERE t1.name_des_schlüsselsatzes = "NLP" GROUP BY t3.venue_id ORDER BY COUNT ( DISTINCT t4.citing_paper_id ) DESC;	scholar
SELECT DISTINCT t2.papier_id , t1.autor_id FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t3.venue_name = "ACL";	scholar
SELECT DISTINCT t2.citing_paper_id FROM papier AS t1 JOIN cite AS t2 ON t1.papier_id = t2.zitierter_beitrag GROUP BY t2.citing_paper_id HAVING COUNT ( DISTINCT t2.zitierter_beitrag ) > 10;	scholar
SELECT DISTINCT t1.autor_id FROM schreibt AS t1 JOIN papier AS t2 ON t1.papier_id = t2.papier_id WHERE t2.jahr = 2015;	scholar
SELECT DISTINCT t1.autor_id FROM schreibt AS t1 JOIN papier AS t2 ON t1.papier_id = t2.papier_id WHERE t2.jahr = 2015;	scholar
SELECT DISTINCT t1.name_des_schlüsselsatzes , SUM ( t3.anzahl_zitiert_von ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t5 ON t4.autor_id = t5.autor_id WHERE t5.autorenname = "Brian DeRenzi" GROUP BY t1.name_des_schlüsselsatzes ORDER BY SUM ( t3.anzahl_zitiert_von ) DESC;	scholar
SELECT DISTINCT t1.name_des_schlüsselsatzes , SUM ( t3.anzahl_zitiert_von ) FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t5 ON t4.autor_id = t5.autor_id WHERE t5.autorenname = "Brian DeRenzi" GROUP BY t1.name_des_schlüsselsatzes ORDER BY SUM ( t3.anzahl_zitiert_von ) DESC;	scholar
SELECT DISTINCT COUNT ( t2.papier_id ) , t1.autor_id FROM schreibt AS t1 JOIN papier AS t2 ON t1.papier_id = t2.papier_id GROUP BY t1.autor_id HAVING COUNT ( t2.papier_id ) >= 5;	scholar
SELECT DISTINCT papier_id FROM papier WHERE jahr != 2015;	scholar
SELECT DISTINCT t3.jahr FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t5 ON t2.schlüsselphrase_id = t5.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "Michael Stonebraker" AND t5.name_des_schlüsselsatzes = "GIS Database";	scholar
SELECT DISTINCT t3.jahr FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t5 ON t2.schlüsselphrase_id = t5.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "Michael Stonebraker" AND t5.name_des_schlüsselsatzes = "GIS Database";	scholar
SELECT DISTINCT t3.jahr FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t5 ON t2.schlüsselphrase_id = t5.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN schreibt AS t4 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname = "Michael Stonebraker" AND t5.name_des_schlüsselsatzes = "GIS Database";	scholar
SELECT DISTINCT t3.zeitschrift_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "Trophic Cascade" AND t3.jahr = 2010 GROUP BY t3.zeitschrift_id;	scholar
SELECT DISTINCT t3.zitierter_beitrag , COUNT ( t3.citing_paper_id ) FROM papier AS t1 JOIN cite AS t3 ON t1.papier_id = t3.zitierter_beitrag JOIN veranstaltungsort AS t2 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2016 AND t2.venue_name = "CVPR" GROUP BY t3.zitierter_beitrag ORDER BY COUNT ( t3.citing_paper_id ) DESC;	scholar
SELECT DISTINCT COUNT ( t4.zitierter_beitrag ) , t3.jahr FROM papier AS t3 JOIN cite AS t4 ON t3.papier_id = t4.zitierter_beitrag JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "luke zettlemoyer" GROUP BY t3.jahr;	scholar
SELECT DISTINCT t2.papier_id FROM papierdatensatz AS t3 JOIN dataset AS t1 ON t3.datensatz_id = t1.datensatz_id JOIN papier AS t4 ON t4.papier_id = t3.papier_id JOIN schreibt AS t2 ON t2.papier_id = t4.papier_id WHERE t1.dataset_name = "ImageNet" GROUP BY t2.papier_id;	scholar
SELECT DISTINCT papier_id , titel FROM papier WHERE titel LIKE "the effects of juicing for cancer patients" AND jahr > 2006;	scholar
SELECT DISTINCT t2.papier_id FROM aufsatz_schlüsselwort AS t5 JOIN schlüsselbegriff AS t3 ON t5.schlüsselphrase_id = t3.schlüsselphrase_id JOIN schreibt AS t4 ON t4.papier_id = t5.papier_id JOIN papier AS t2 ON t4.papier_id = t2.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id JOIN veranstaltungsort AS t6 ON t6.venue_id = t2.venue_id WHERE t1.autorenname = "Eric C. Kerrigan" AND t3.name_des_schlüsselsatzes = "Liquid" AND t6.venue_name = "Automatica";	scholar
SELECT DISTINCT t3.venue_id , t3.jahr FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "sergey levine" GROUP BY t3.venue_id , t3.jahr ORDER BY t3.jahr DESC;	scholar
SELECT DISTINCT t2.schlüsselphrase_id FROM papier AS t3 JOIN aufsatz_schlüsselwort AS t2 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id JOIN schreibt AS t5 ON t5.papier_id = t3.papier_id JOIN autor AS t1 ON t5.autor_id = t1.autor_id WHERE t1.autorenname = "dan klein" AND t4.venue_name = "emnlp";	scholar
SELECT DISTINCT COUNT ( t4.papier_id ) , t3.autor_id FROM aufsatz_schlüsselwort AS t1 JOIN schlüsselbegriff AS t2 ON t1.schlüsselphrase_id = t2.schlüsselphrase_id JOIN papier AS t4 ON t4.papier_id = t1.papier_id JOIN schreibt AS t3 ON t3.papier_id = t4.papier_id WHERE t2.name_des_schlüsselsatzes = "Neutralizing Antibody" AND t4.jahr = 2012 GROUP BY t3.autor_id ORDER BY COUNT ( t4.papier_id ) DESC;	scholar
SELECT DISTINCT t3.papier_id FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.dataset_name = "ImageNet" AND t3.jahr = 2014 AND t4.venue_name = "eccv";	scholar
SELECT DISTINCT t3.papier_id FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.dataset_name = "ImageNet" AND t3.jahr = 2014 AND t4.venue_name = "eccv";	scholar
SELECT DISTINCT t3.papier_id FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.dataset_name = "ImageNet" AND t3.jahr = 2014 AND t4.venue_name = "eccv";	scholar
SELECT DISTINCT t5.citing_paper_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN cite AS t5 ON t2.papier_id = t5.citing_paper_id JOIN papier AS t3 ON t3.papier_id = t5.zitierter_beitrag JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.name_des_schlüsselsatzes = "Euclidean Distance" AND t4.venue_name = "NIPS";	scholar
SELECT DISTINCT COUNT ( t4.papier_id ) , t3.papier_id FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t4 ON t4.papier_id = t2.papier_id JOIN schreibt AS t3 ON t3.papier_id = t4.papier_id WHERE t1.dataset_name = "ImageNet" GROUP BY t3.papier_id ORDER BY COUNT ( t4.papier_id ) DESC;	scholar
SELECT DISTINCT ( t1.papier_id ) , COUNT ( t3.citing_paper_id ) FROM papier AS t1 JOIN cite AS t3 ON t1.papier_id = t3.zitierter_beitrag JOIN veranstaltungsort AS t2 ON t2.venue_id = t1.venue_id WHERE t1.jahr = 2012 AND t2.venue_name = "ACL" GROUP BY t1.papier_id HAVING COUNT ( t3.citing_paper_id ) > 7;	scholar
SELECT DISTINCT COUNT ( DISTINCT t4.citing_paper_id ) , t1.schlüsselphrase_id , t2.papier_id FROM papier AS t2 JOIN cite AS t4 ON t2.papier_id = t4.zitierter_beitrag JOIN aufsatz_schlüsselwort AS t1 ON t2.papier_id = t1.papier_id JOIN veranstaltungsort AS t3 ON t3.venue_id = t2.venue_id WHERE t2.jahr = 2012 AND t3.venue_name = "EMNLP-CoNLL" GROUP BY t2.papier_id , t1.schlüsselphrase_id ORDER BY COUNT ( DISTINCT t4.citing_paper_id ) DESC;	scholar
SELECT DISTINCT COUNT ( DISTINCT t2.papier_id ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname != "Noah Smith" AND t3.jahr > 2009 AND t2.papier_id IN ( SELECT t2.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname LIKE "Noah Smith" );	scholar
SELECT DISTINCT COUNT ( t3.citing_paper_id ) FROM papier AS t1 JOIN cite AS t3 ON t1.papier_id = t3.zitierter_beitrag JOIN veranstaltungsort AS t2 ON t2.venue_id = t1.venue_id WHERE t2.venue_name = "ACL" GROUP BY t3.citing_paper_id HAVING COUNT ( DISTINCT t3.zitierter_beitrag ) > 2;	scholar
SELECT DISTINCT t2.titel FROM aufsatz_schlüsselwort AS t5 JOIN schlüsselbegriff AS t3 ON t5.schlüsselphrase_id = t3.schlüsselphrase_id JOIN schreibt AS t4 ON t4.papier_id = t5.papier_id JOIN papier AS t2 ON t4.papier_id = t2.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id JOIN veranstaltungsort AS t6 ON t6.venue_id = t2.venue_id WHERE t1.autorenname LIKE "Eric C. Kerrigan" AND t3.name_des_schlüsselsatzes = "Liquid" AND t6.venue_name = "Automatica";	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) FROM papierdatensatz AS t2 JOIN dataset AS t1 ON t2.datensatz_id = t1.datensatz_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t1.dataset_name = "ImageNet" AND t4.venue_name = "cvpr";	scholar
SELECT DISTINCT venue_id FROM veranstaltungsort WHERE venue_name = "Neuroscience";	scholar
SELECT DISTINCT MAX ( t3.jahr ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Mary Crainie";	scholar
SELECT DISTINCT t1.autor_id FROM aufsatz_schlüsselwort AS t6 JOIN schlüsselbegriff AS t3 ON t6.schlüsselphrase_id = t3.schlüsselphrase_id JOIN schreibt AS t4 ON t4.papier_id = t6.papier_id JOIN schreibt AS t5 ON t5.papier_id = t4.papier_id JOIN autor AS t1 ON t5.autor_id = t1.autor_id JOIN autor AS t2 ON t4.autor_id = t2.autor_id WHERE t2.autorenname = "Philipp Koehn" AND t3.name_des_schlüsselsatzes = "Machine Translation Output";	scholar
SELECT DISTINCT COUNT ( DISTINCT t3.papier_id ) FROM veranstaltungsort AS t4 JOIN papier AS t3 ON t4.venue_id = t3.venue_id JOIN schreibt AS t2 ON t2.papier_id = t3.papier_id JOIN autor AS t1 ON t2.autor_id = t1.autor_id WHERE t1.autorenname = "Samuel Madden" AND t4.venue_name != "PVLDB";	scholar
SELECT DISTINCT t3.zeitschrift_id , t3.jahr FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Donald E Knuth" GROUP BY t3.zeitschrift_id , t3.jahr ORDER BY t3.jahr DESC;	scholar
SELECT DISTINCT venue_id FROM papier WHERE titel = "Fracture of acrylic bone cement";	scholar
SELECT DISTINCT COUNT ( t2.papier_id ) FROM veranstaltungsort AS t3 JOIN papier AS t2 ON t3.venue_id = t2.venue_id JOIN schreibt AS t1 ON t1.papier_id = t2.papier_id WHERE t2.jahr = 2010 AND t3.venue_name = "sigcse";	scholar
SELECT DISTINCT titel , jahr FROM papier WHERE titel = "A Switching Architecture For ISDN";	scholar
SELECT DISTINCT t1.schlüsselphrase_id FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id JOIN veranstaltungsort AS t4 ON t4.venue_id = t3.venue_id WHERE t4.venue_name = "uist";	scholar
SELECT DISTINCT t3.papier_id FROM schreibt AS t2 JOIN autor AS t1 ON t2.autor_id = t1.autor_id JOIN papier AS t3 ON t2.papier_id = t3.papier_id WHERE t1.autorenname = "Su-In Lee" AND t3.jahr < 2012;	scholar
SELECT DISTINCT COUNT ( t3.papier_id ) , t3.jahr FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t1 ON t2.schlüsselphrase_id = t1.schlüsselphrase_id JOIN papier AS t3 ON t3.papier_id = t2.papier_id WHERE t1.name_des_schlüsselsatzes = "semantic parsing" GROUP BY t3.jahr ORDER BY t3.jahr DESC;	scholar
SELECT DISTINCT t2.citing_paper_id FROM papier AS t1 JOIN cite AS t2 ON t1.papier_id = t2.zitierter_beitrag GROUP BY t2.citing_paper_id HAVING COUNT ( DISTINCT t2.zitierter_beitrag ) >= 5;	scholar
SELECT DISTINCT t2.citing_paper_id FROM papier AS t1 JOIN cite AS t2 ON t1.papier_id = t2.zitierter_beitrag GROUP BY t2.citing_paper_id HAVING COUNT ( DISTINCT t2.zitierter_beitrag ) >= 5;	scholar
SELECT DISTINCT t3.zitierter_beitrag , COUNT ( t3.citing_paper_id ) FROM papier AS t1 JOIN cite AS t3 ON t1.papier_id = t3.zitierter_beitrag JOIN veranstaltungsort AS t2 ON t2.venue_id = t1.venue_id WHERE t2.venue_name = "sigcomm" GROUP BY t3.zitierter_beitrag ORDER BY COUNT ( t3.citing_paper_id ) DESC;	scholar
SELECT DISTINCT t3.titel FROM aufsatz_schlüsselwort AS t2 JOIN schlüsselbegriff AS t5 ON t2.schlüsselphrase_id = t5.schlüsselphrase_id JOIN schreibt AS t4 ON t4.papier_id = t2.papier_id JOIN papier AS t3 ON t4.papier_id = t3.papier_id JOIN autor AS t1 ON t4.autor_id = t1.autor_id WHERE t1.autorenname LIKE "Ranjit Jhala" AND t5.name_des_schlüsselsatzes = "Liquid Haskell";	scholar
SELECT name FROM business WHERE bewertung > 4.5;	yelp
SELECT name FROM business WHERE bewertung = 3.5;	yelp
SELECT benutzerkennung FROM benutzer WHERE name = "Michelle";	yelp
SELECT bundesland FROM business WHERE name = "Whataburger";	yelp
SELECT t1.stadt FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.name = "MGM Grand Buffet" AND t2.kategoriename = "category_category_name0";	yelp
SELECT stadt FROM business WHERE bewertung < 1.5;	yelp
SELECT stadt FROM business WHERE name = "Taj Mahal";	yelp
SELECT text FROM rückblick WHERE bewertung < 1;	yelp
SELECT t1.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.bewertung > 3.5 AND t2.kategoriename = "restaurant";	yelp
SELECT t1.stadt FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.name = "Taj Mahal" AND t2.kategoriename = "restaurant";	yelp
SELECT t1.text FROM benutzer AS t2 JOIN rückblick AS t1 ON t2.benutzerkennung = t1.benutzerkennung WHERE t2.name = "Niloofar";	yelp
SELECT t1.name FROM rückblick AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN benutzer AS t3 ON t3.benutzerkennung = t2.benutzerkennung WHERE t3.name = "Niloofar";	yelp
SELECT t1.name FROM rückblick AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN benutzer AS t3 ON t3.benutzerkennung = t2.benutzerkennung WHERE t2.bewertung = 5 AND t3.name = "Niloofar";	yelp
SELECT t4.text FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN kategorie AS t3 ON t3.business_id = t1.business_id JOIN rückblick AS t4 ON t4.business_id = t1.business_id JOIN benutzer AS t5 ON t5.benutzerkennung = t4.benutzerkennung WHERE t2.kategoriename = "Italian" AND t3.kategoriename = "category_category_name1" AND t5.name = "Michelle";	yelp
SELECT COUNT ( DISTINCT t3.text ) FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN rückblick AS t3 ON t3.business_id = t1.business_id WHERE t1.name = "Cafe Zinho" AND t1.bundesland = "Texas" AND t2.kategoriename = "restaurant";	yelp
SELECT t1.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN kategorie AS t3 ON t3.business_id = t1.business_id WHERE t1.bewertung = 5 AND t2.kategoriename = "Italian" AND t3.kategoriename = "restaurant";	yelp
SELECT t1.nachbarschaftsname FROM kategorie AS t3 JOIN business AS t2 ON t3.business_id = t2.business_id JOIN kategorie AS t4 ON t4.business_id = t2.business_id JOIN nachbarschaft AS t1 ON t1.business_id = t2.business_id WHERE t2.stadt = "Madison" AND t3.kategoriename = "Italian" AND t4.kategoriename = "restaurant";	yelp
SELECT t1.nachbarschaftsname FROM kategorie AS t3 JOIN business AS t2 ON t3.business_id = t2.business_id JOIN kategorie AS t4 ON t4.business_id = t2.business_id JOIN nachbarschaft AS t1 ON t1.business_id = t2.business_id WHERE t2.stadt = "Madison" AND t2.bewertung < 2.5 AND t3.kategoriename = "Italian" AND t4.kategoriename = "restaurant";	yelp
SELECT t1.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.bundesland = "Pennsylvania" AND t2.kategoriename = "restaurant";	yelp
SELECT t1.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.bundesland = "Pennsylvania" AND t2.kategoriename = "restaurant";	yelp
SELECT t3.text FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN rückblick AS t3 ON t3.business_id = t1.business_id WHERE t1.anzahl_der_bewertungen > 100 AND t2.kategoriename = "Pet Groomers";	yelp
SELECT t1.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.stadt = "Los Angeles" AND t2.kategoriename = "breweries";	yelp
SELECT t1.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.stadt = "Los Angeles" AND t2.kategoriename = "breweries";	yelp
SELECT t1.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.stadt = "Los Angeles" AND t2.kategoriename = "breweries";	yelp
SELECT t4.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN rückblick AS t3 ON t3.business_id = t1.business_id JOIN benutzer AS t4 ON t4.benutzerkennung = t3.benutzerkennung WHERE t1.name = "Mesa Grill" AND t2.kategoriename = "restaurant";	yelp
SELECT vollständige_adresse FROM business WHERE stadt = "Los Angeles" AND name = "Walmart";	yelp
SELECT t1.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN rückblick AS t3 ON t3.business_id = t1.business_id JOIN benutzer AS t4 ON t4.benutzerkennung = t3.benutzerkennung WHERE t1.stadt = "Dallas" AND t2.kategoriename = "restaurant" AND t4.name = "Patrick";	yelp
SELECT t1.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN rückblick AS t3 ON t3.business_id = t1.business_id JOIN benutzer AS t4 ON t4.benutzerkennung = t3.benutzerkennung WHERE t1.stadt = "Dallas" AND t2.kategoriename = "restaurant" AND t4.name = "Patrick";	yelp
SELECT t1.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN rückblick AS t3 ON t3.business_id = t1.business_id JOIN benutzer AS t4 ON t4.benutzerkennung = t3.benutzerkennung WHERE t2.kategoriename = "Bars" AND t4.name = "Patrick";	yelp
SELECT t1.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN rückblick AS t3 ON t3.business_id = t1.business_id JOIN benutzer AS t4 ON t4.benutzerkennung = t3.benutzerkennung WHERE t1.bewertung >= 3 AND t2.kategoriename = "Bars" AND t4.name = "Patrick";	yelp
SELECT t3.name FROM tip AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN benutzer AS t3 ON t3.benutzerkennung = t2.benutzerkennung WHERE t1.name = "Barrio Cafe" AND t2.jahr = 2015;	yelp
SELECT name FROM business WHERE bewertung < 2 AND bundesland = "Texas";	yelp
SELECT t1.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN kategorie AS t3 ON t3.business_id = t1.business_id WHERE t1.stadt = "Los Angeles" AND t2.kategoriename = "Seafood" AND t3.kategoriename = "restaurant";	yelp
SELECT t1.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN kategorie AS t3 ON t3.business_id = t1.business_id WHERE t1.stadt = "Los Angeles" AND t2.kategoriename = "Seafood" AND t3.kategoriename = "restaurant";	yelp
SELECT t1.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN kategorie AS t3 ON t3.business_id = t1.business_id WHERE t1.stadt = "Los Angeles" AND t2.kategoriename = "Seafood" AND t3.kategoriename = "restaurant";	yelp
SELECT t1.text FROM benutzer AS t2 JOIN rückblick AS t1 ON t2.benutzerkennung = t1.benutzerkennung WHERE t1.bewertung > 4 AND t2.name = "Patrick";	yelp
SELECT business_id FROM business WHERE stadt = "Los Angeles" AND name = "Apple Store";	yelp
SELECT t1.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.stadt = "Dallas" AND t1.bewertung > 4.5 AND t2.kategoriename = "restaurant";	yelp
SELECT t1.nachbarschaftsname FROM kategorie AS t3 JOIN business AS t2 ON t3.business_id = t2.business_id JOIN nachbarschaft AS t1 ON t1.business_id = t2.business_id WHERE t2.name = "Flat Top Grill" AND t3.kategoriename = "category_category_name0";	yelp
SELECT t2.text FROM tip AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.name = "Vintner Grill" AND t2.mag > 9;	yelp
SELECT t2.text FROM rückblick AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.name = "Kabob Palace" AND t2.jahr = 2014;	yelp
SELECT t3.name FROM tip AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN benutzer AS t3 ON t3.benutzerkennung = t2.benutzerkennung WHERE t1.stadt = "Dallas";	yelp
SELECT t1.stadt FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.name = "MGM Grand Buffet" AND t1.bundesland = "Texas" AND t2.kategoriename = "restaurant";	yelp
SELECT t4.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN tip AS t3 ON t3.business_id = t1.business_id JOIN benutzer AS t4 ON t4.benutzerkennung = t3.benutzerkennung WHERE t2.kategoriename = "Pet Groomers";	yelp
SELECT t2.text FROM tip AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.name = "Cafe Zinho" AND t1.bundesland = "Texas";	yelp
SELECT t4.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN rückblick AS t3 ON t3.business_id = t1.business_id JOIN benutzer AS t4 ON t4.benutzerkennung = t3.benutzerkennung WHERE t2.kategoriename = "restaurant";	yelp
SELECT t2.text FROM tip AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.name = "Cafe Zinho" AND t1.bundesland = "Pennsylvania" AND t2.jahr = 2010;	yelp
SELECT t4.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN rückblick AS t3 ON t3.business_id = t1.business_id JOIN benutzer AS t4 ON t4.benutzerkennung = t3.benutzerkennung WHERE t2.kategoriename = "restaurant" AND t3.jahr = 2010;	yelp
SELECT t2.text FROM benutzer AS t3 JOIN rückblick AS t1 ON t3.benutzerkennung = t1.benutzerkennung JOIN tip AS t2 ON t3.benutzerkennung = t2.benutzerkennung WHERE t1.jahr = 2012;	yelp
SELECT t2.text FROM rückblick AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.bewertung = 2.5;	yelp
SELECT COUNT ( DISTINCT t1.name ) FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.stadt = "Madison" AND t2.kategoriename = "escape games";	yelp
SELECT COUNT ( DISTINCT t1.name ) FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.stadt = "Madison" AND t2.kategoriename = "escape games";	yelp
SELECT COUNT ( DISTINCT t1.name ) FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.stadt = "Madison" AND t2.kategoriename = "escape games";	yelp
SELECT COUNT ( DISTINCT t1.name ) FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.stadt = "Madison" AND t2.kategoriename = "escape games";	yelp
SELECT COUNT ( DISTINCT t1.name ) FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.stadt = "Madison" AND t2.kategoriename = "escape games";	yelp
SELECT COUNT ( DISTINCT t1.name ) FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.bewertung > 3.5 AND t2.kategoriename = "restaurant";	yelp
SELECT SUM ( t4.count ) FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN kategorie AS t3 ON t3.business_id = t1.business_id JOIN checkin AS t4 ON t4.business_id = t1.business_id WHERE t1.stadt = "Los Angeles" AND t2.kategoriename = "restaurant" AND t3.kategoriename = "Moroccan";	yelp
SELECT SUM ( t4.count ) FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN kategorie AS t3 ON t3.business_id = t1.business_id JOIN checkin AS t4 ON t4.business_id = t1.business_id WHERE t1.stadt = "Los Angeles" AND t2.kategoriename = "Moroccan" AND t3.kategoriename = "restaurant" AND t4.tag = "Friday";	yelp
SELECT t4.tag , SUM ( t4.count ) FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN kategorie AS t3 ON t3.business_id = t1.business_id JOIN checkin AS t4 ON t4.business_id = t1.business_id WHERE t1.stadt = "Los Angeles" AND t2.kategoriename = "Moroccan" AND t3.kategoriename = "restaurant" GROUP BY t4.tag;	yelp
SELECT t1.bundesland , SUM ( t4.count ) FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN kategorie AS t3 ON t3.business_id = t1.business_id JOIN checkin AS t4 ON t4.business_id = t1.business_id WHERE t2.kategoriename = "Italian" AND t3.kategoriename = "Delis" AND t4.tag = "Sunday" GROUP BY t1.bundesland;	yelp
SELECT COUNT ( DISTINCT t1.text ) FROM benutzer AS t2 JOIN rückblick AS t1 ON t2.benutzerkennung = t1.benutzerkennung WHERE t1.jahr = 2015 AND t2.name = "Niloofar";	yelp
SELECT AVG ( t1.bewertung ) FROM benutzer AS t2 JOIN rückblick AS t1 ON t2.benutzerkennung = t1.benutzerkennung WHERE t2.name = "Michelle";	yelp
SELECT t2.count FROM checkin AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.name = "Cafe Zinho" AND t2.tag = "Friday";	yelp
SELECT COUNT ( DISTINCT t3.name ) FROM rückblick AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN benutzer AS t3 ON t3.benutzerkennung = t2.benutzerkennung WHERE t1.stadt = "Pittsburgh" AND t1.name = "Sushi Too";	yelp
SELECT COUNT ( DISTINCT t1.name ) FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.stadt = "Pittsburgh" AND t1.bewertung = 4.5 AND t2.kategoriename = "restaurant";	yelp
SELECT COUNT ( DISTINCT text ) FROM tip WHERE jahr = 2015;	yelp
SELECT SUM ( t1.mag ) FROM benutzer AS t2 JOIN tip AS t1 ON t2.benutzerkennung = t1.benutzerkennung WHERE t2.name = "Niloofar";	yelp
SELECT SUM ( t2.mag ) FROM tip AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.name = "Cafe Zinho";	yelp
SELECT SUM ( t2.mag ) FROM tip AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN benutzer AS t3 ON t3.benutzerkennung = t2.benutzerkennung WHERE t1.name = "Cafe Zinho" AND t3.name = "Niloofar";	yelp
SELECT COUNT ( DISTINCT t1.text ) FROM benutzer AS t2 JOIN tip AS t1 ON t2.benutzerkennung = t1.benutzerkennung WHERE t1.jahr = 2010 AND t2.name = "Michelle";	yelp
SELECT COUNT ( DISTINCT t1.text ) FROM benutzer AS t2 JOIN tip AS t1 ON t2.benutzerkennung = t1.benutzerkennung WHERE t1.jahr = 2010 AND t2.name = "Michelle";	yelp
SELECT COUNT ( DISTINCT t1.text ) FROM benutzer AS t2 JOIN tip AS t1 ON t2.benutzerkennung = t1.benutzerkennung WHERE t1.monat = "April" AND t2.name = "Michelle";	yelp
SELECT COUNT ( DISTINCT t1.name ) FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.bundesland = "Texas" AND t2.kategoriename = "restaurant";	yelp
SELECT COUNT ( DISTINCT t1.name ) FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.stadt = "Dallas" AND t1.bewertung > 3.5 AND t2.kategoriename = "Bars";	yelp
SELECT COUNT ( DISTINCT t1.name ) FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.stadt = "Dallas" AND t1.bewertung > 3.5 AND t2.kategoriename = "Bars";	yelp
SELECT COUNT ( DISTINCT t4.name ) FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN rückblick AS t3 ON t3.business_id = t1.business_id JOIN benutzer AS t4 ON t4.benutzerkennung = t3.benutzerkennung WHERE t1.stadt = "Dallas" AND t1.name = "Texas de Brazil" AND t1.bundesland = "Texas" AND t2.kategoriename = "restaurant";	yelp
SELECT COUNT ( DISTINCT t3.name ) FROM rückblick AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN benutzer AS t3 ON t3.benutzerkennung = t2.benutzerkennung WHERE t1.name = "Bistro Di Napoli" AND t2.jahr = 2015;	yelp
SELECT COUNT ( DISTINCT t1.name ) FROM kategorie AS t3 JOIN business AS t1 ON t3.business_id = t1.business_id JOIN nachbarschaft AS t2 ON t2.business_id = t1.business_id WHERE t1.stadt = "Dallas" AND t3.kategoriename = "restaurant" AND t2.nachbarschaftsname = "Hazelwood";	yelp
SELECT COUNT ( DISTINCT business_id ) FROM business WHERE stadt = "Dallas" AND name = "Starbucks" AND bundesland = "Texas";	yelp
SELECT anzahl_der_bewertungen FROM business WHERE name = "Acacia Cafe";	yelp
SELECT AVG ( t3.count ) , t3.tag FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN checkin AS t3 ON t3.business_id = t1.business_id WHERE t1.name = "Barrio Cafe" AND t2.kategoriename = "restaurant" GROUP BY t3.tag;	yelp
SELECT COUNT ( DISTINCT t1.name ) FROM nachbarschaft AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.stadt = "Madison" AND t2.nachbarschaftsname = "Stone Meadows";	yelp
SELECT COUNT ( DISTINCT t1.text ) FROM benutzer AS t2 JOIN rückblick AS t1 ON t2.benutzerkennung = t1.benutzerkennung WHERE t2.name = "Adrienne";	yelp
SELECT COUNT ( DISTINCT t1.text ) FROM benutzer AS t2 JOIN rückblick AS t1 ON t2.benutzerkennung = t1.benutzerkennung WHERE t1.monat = "March" AND t1.jahr = 2014 AND t2.name = "Michelle";	yelp
SELECT COUNT ( DISTINCT t1.name ) FROM rückblick AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN benutzer AS t3 ON t3.benutzerkennung = t2.benutzerkennung WHERE t2.jahr = 2010 AND t3.name = "Michelle";	yelp
SELECT COUNT ( DISTINCT t1.name ) FROM rückblick AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN benutzer AS t3 ON t3.benutzerkennung = t2.benutzerkennung WHERE t1.stadt = "San Diego" AND t2.jahr = 2010 AND t3.name = "Christine";	yelp
SELECT COUNT ( DISTINCT business_id ) FROM business WHERE stadt = "Los Angeles" AND name = "Target";	yelp
SELECT COUNT ( DISTINCT t4.name ) FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN rückblick AS t3 ON t3.business_id = t1.business_id JOIN benutzer AS t4 ON t4.benutzerkennung = t3.benutzerkennung WHERE t1.stadt = "Dallas" AND t2.kategoriename = "Irish Pub";	yelp
SELECT AVG ( bewertung ) FROM rückblick WHERE jahr = 2014;	yelp
SELECT COUNT ( DISTINCT t4.name ) FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN rückblick AS t3 ON t3.business_id = t1.business_id JOIN benutzer AS t4 ON t4.benutzerkennung = t3.benutzerkennung WHERE t1.name = "Vintner Grill" AND t2.kategoriename = "category_category_name0" AND t3.jahr = 2010;	yelp
SELECT COUNT ( DISTINCT t3.text ) FROM nachbarschaft AS t1 JOIN business AS t2 ON t1.business_id = t2.business_id JOIN rückblick AS t3 ON t3.business_id = t2.business_id WHERE t1.nachbarschaftsname = "South Summerlin";	yelp
SELECT COUNT ( DISTINCT name ) FROM benutzer WHERE name = "Michelle";	yelp
SELECT COUNT ( DISTINCT t1.name ) FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t2.kategoriename = "restaurant";	yelp
SELECT COUNT ( DISTINCT stadt ) FROM business WHERE name = "Panda Express";	yelp
SELECT COUNT ( DISTINCT t1.text ) FROM benutzer AS t2 JOIN tip AS t1 ON t2.benutzerkennung = t1.benutzerkennung WHERE t2.name = "Michelle";	yelp
SELECT SUM ( t3.count ) FROM checkin AS t3 JOIN business AS t1 ON t3.business_id = t1.business_id JOIN nachbarschaft AS t2 ON t2.business_id = t1.business_id WHERE t2.nachbarschaftsname = "Brighton Heights";	yelp
SELECT COUNT ( DISTINCT text ) FROM rückblick WHERE monat = "March";	yelp
SELECT COUNT ( DISTINCT text ) , monat FROM tip GROUP BY monat;	yelp
SELECT COUNT ( DISTINCT t1.nachbarschaftsname ) FROM nachbarschaft AS t1 JOIN business AS t2 ON t1.business_id = t2.business_id WHERE t2.stadt = "Madison" AND t2.bewertung = 5;	yelp
SELECT t1.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN kategorie AS t3 ON t3.business_id = t1.business_id WHERE t1.bundesland = "Texas" AND t2.kategoriename = "Moroccan" AND t3.kategoriename = "restaurant";	yelp
SELECT t1.name FROM checkin AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id GROUP BY t1.name ORDER BY SUM ( t2.count ) DESC LIMIT 1;	yelp
SELECT t1.nachbarschaftsname FROM nachbarschaft AS t1 JOIN business AS t2 ON t1.business_id = t2.business_id WHERE t2.stadt = "Madison" GROUP BY t1.nachbarschaftsname ORDER BY COUNT ( DISTINCT t2.name ) DESC LIMIT 1;	yelp
SELECT t1.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN kategorie AS t3 ON t3.business_id = t1.business_id WHERE t1.stadt = "Dallas" AND t1.bewertung > 3.5 AND t2.kategoriename = "Mexican" AND t3.kategoriename = "restaurant";	yelp
SELECT t1.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN kategorie AS t3 ON t3.business_id = t1.business_id WHERE t1.stadt = "Dallas" AND t1.bewertung > 3.5 AND t2.kategoriename = "Mexican" AND t3.kategoriename = "restaurant";	yelp
SELECT t1.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN kategorie AS t3 ON t3.business_id = t1.business_id WHERE t1.stadt = "Dallas" AND t1.bundesland = "Texas" AND t2.kategoriename = "Valet Service" AND t3.kategoriename = "restaurant";	yelp
SELECT t1.name FROM kategorie AS t3 JOIN business AS t1 ON t3.business_id = t1.business_id JOIN kategorie AS t4 ON t4.business_id = t1.business_id JOIN nachbarschaft AS t2 ON t2.business_id = t1.business_id WHERE t1.stadt = "Madison" AND t3.kategoriename = "Italian" AND t4.kategoriename = "restaurant" AND t2.nachbarschaftsname = "Meadowood";	yelp
SELECT t1.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t1.stadt = "Los Angeles" AND t1.bewertung > 3 AND t1.anzahl_der_bewertungen > 30 AND t2.kategoriename = "Bars";	yelp
SELECT COUNT ( DISTINCT t1.name ) FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id JOIN kategorie AS t3 ON t3.business_id = t1.business_id WHERE t1.stadt = "Edinburgh" AND t2.kategoriename = "restaurant" AND t3.kategoriename = "Egyptian";	yelp
SELECT t2.name FROM benutzer AS t2 JOIN rückblick AS t1 ON t2.benutzerkennung = t1.benutzerkennung GROUP BY t2.name HAVING AVG ( t1.bewertung ) < 3;	yelp
SELECT t1.name FROM rückblick AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id WHERE t2.monat = "April" GROUP BY t1.name ORDER BY COUNT ( DISTINCT t2.text ) DESC LIMIT 1;	yelp
SELECT t1.name FROM kategorie AS t2 JOIN business AS t1 ON t2.business_id = t1.business_id GROUP BY t1.name ORDER BY COUNT ( DISTINCT t2.kategoriename ) DESC LIMIT 1;	yelp
SELECT homepage FROM journal WHERE name = "PVLDB";	academic
SELECT homepage FROM autor WHERE name = "H. V. Jagadish";	academic
SELECT abstract FROM publikation WHERE titel = "Making database systems usable";	academic
SELECT jahr FROM publikation WHERE titel = "Making database systems usable";	academic
SELECT jahr FROM publikation WHERE titel = "Making database systems usable";	academic
SELECT titel FROM publikation WHERE jahr > 2000;	academic
SELECT homepage FROM konferenz WHERE name = "VLDB";	academic
SELECT schlüsselwort FROM schlüsselwort;	academic
SELECT name FROM organisation;	academic
SELECT name FROM organisation WHERE kontinent = "North America";	academic
SELECT homepage FROM organisation WHERE name = "University of Michigan";	academic
SELECT referenznummer FROM publikation WHERE titel = "Making database systems usable";	academic
SELECT referenznummer FROM publikation WHERE titel = "Making database systems usable";	academic
SELECT citation_num FROM publikation WHERE titel = "Making database systems usable";	academic
SELECT citation_num FROM publikation WHERE titel = "Making database systems usable";	academic
SELECT titel FROM publikation WHERE citation_num > 200;	academic
SELECT t1.name FROM publikation AS t4 JOIN journal AS t2 ON t4.jid = t2.jid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t2.name = "PVLDB" AND t4.jahr = 2010;	academic
SELECT t1.name FROM publikation AS t4 JOIN journal AS t2 ON t4.jid = t2.jid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t2.name = "PVLDB" AND t4.jahr > 2010;	academic
SELECT t1.name FROM publikation AS t4 JOIN konferenz AS t2 ON t4.cid = t2.cid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t2.name = "VLDB" AND t4.jahr = 2002;	academic
SELECT t1.name FROM publikation AS t4 JOIN konferenz AS t2 ON t4.cid = t2.cid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t2.name = "VLDB" AND t4.jahr < 2002;	academic
SELECT t1.name FROM publikation AS t4 JOIN konferenz AS t2 ON t4.cid = t2.cid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t2.name = "VLDB" AND t4.jahr < 2002 AND t4.jahr > 1995;	academic
SELECT t3.name FROM domain AS t3 JOIN bereich_journal AS t1 ON t3.did = t1.did JOIN journal AS t2 ON t2.jid = t1.jid WHERE t2.name = "PVLDB";	academic
SELECT t1.name FROM publikation AS t4 JOIN journal AS t2 ON t4.jid = t2.jid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t2.name = "PVLDB";	academic
SELECT t2.name FROM organisation AS t2 JOIN autor AS t1 ON t2.oid = t1.oid WHERE t1.name = "H. V. Jagadish";	academic
SELECT t2.name FROM publikation AS t4 JOIN konferenz AS t2 ON t4.cid = t2.cid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t1.name = "H. V. Jagadish";	academic
SELECT t2.name FROM publikation AS t4 JOIN journal AS t2 ON t4.jid = t2.jid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t1.name = "H. V. Jagadish";	academic
SELECT t2.name FROM domain_autor AS t3 JOIN autor AS t1 ON t3.aid = t1.aid JOIN domain AS t2 ON t2.did = t3.did WHERE t1.name = "H. V. Jagadish";	academic
SELECT t1.name FROM schreibt AS t2 JOIN autor AS t1 ON t2.aid = t1.aid JOIN publikation AS t3 ON t2.pid = t3.pid WHERE t3.titel = "Making database systems usable";	academic
SELECT t1.name FROM publikation AS t2 JOIN konferenz AS t1 ON t2.cid = t1.cid WHERE t2.titel = "Making database systems usable";	academic
SELECT t3.titel FROM schreibt AS t2 JOIN autor AS t1 ON t2.aid = t1.aid JOIN publikation AS t3 ON t2.pid = t3.pid WHERE t1.name = "H. V. Jagadish";	academic
SELECT t2.titel FROM publikation AS t2 JOIN konferenz AS t1 ON t2.cid = t1.cid WHERE t1.name = "VLDB";	academic
SELECT t2.titel FROM publikation AS t2 JOIN journal AS t1 ON t2.jid = t1.jid WHERE t1.name = "PVLDB";	academic
SELECT t2.titel FROM publikation AS t2 JOIN journal AS t1 ON t2.jid = t1.jid WHERE t1.name = "PVLDB" AND t2.jahr > 2000;	academic
SELECT t2.titel FROM publikation AS t2 JOIN konferenz AS t1 ON t2.cid = t1.cid WHERE t1.name = "VLDB" AND t2.jahr > 2000;	academic
SELECT t4.titel FROM publikation AS t4 JOIN journal AS t2 ON t4.jid = t2.jid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t1.name = "H. V. Jagadish" AND t2.name = "PVLDB";	academic
SELECT t4.titel FROM publikation AS t4 JOIN konferenz AS t2 ON t4.cid = t2.cid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t1.name = "H. V. Jagadish" AND t2.name = "VLDB";	academic
SELECT t3.titel FROM schreibt AS t2 JOIN autor AS t1 ON t2.aid = t1.aid JOIN publikation AS t3 ON t2.pid = t3.pid WHERE t1.name = "H. V. Jagadish" AND t3.jahr > 2000;	academic
SELECT t4.titel FROM publikation AS t4 JOIN journal AS t2 ON t4.jid = t2.jid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t1.name = "H. V. Jagadish" AND t2.name = "PVLDB" AND t4.jahr > 2000;	academic
SELECT t4.titel FROM publikation AS t4 JOIN konferenz AS t2 ON t4.cid = t2.cid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t1.name = "H. V. Jagadish" AND t2.name = "VLDB" AND t4.jahr > 2000;	academic
SELECT t2.name FROM bereich_konferenz AS t3 JOIN konferenz AS t1 ON t3.cid = t1.cid JOIN domain AS t2 ON t2.did = t3.did WHERE t1.name = "VLDB";	academic
SELECT t1.name FROM publikation AS t4 JOIN konferenz AS t2 ON t4.cid = t2.cid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t2.name = "VLDB";	academic
SELECT t1.schlüsselwort FROM domain AS t3 JOIN domain_keyword AS t2 ON t3.did = t2.did JOIN schlüsselwort AS t1 ON t1.kind = t2.kind WHERE t3.name = "Databases";	academic
SELECT t3.titel FROM publikation_schlüsselwort AS t2 JOIN schlüsselwort AS t1 ON t2.kind = t1.kind JOIN publikation AS t3 ON t3.pid = t2.pid WHERE t1.schlüsselwort = "Natural Language";	academic
SELECT t1.schlüsselwort FROM publikation_schlüsselwort AS t3 JOIN schlüsselwort AS t1 ON t3.kind = t1.kind JOIN publikation AS t2 ON t2.pid = t3.pid WHERE t2.titel = "Making database systems usable";	academic
SELECT t1.schlüsselwort FROM publikation_schlüsselwort AS t5 JOIN schlüsselwort AS t1 ON t5.kind = t1.kind JOIN publikation AS t3 ON t3.pid = t5.pid JOIN schreibt AS t4 ON t4.pid = t3.pid JOIN autor AS t2 ON t4.aid = t2.aid WHERE t2.name = "H. V. Jagadish";	academic
SELECT t1.schlüsselwort FROM publikation_schlüsselwort AS t4 JOIN schlüsselwort AS t1 ON t4.kind = t1.kind JOIN publikation AS t3 ON t3.pid = t4.pid JOIN konferenz AS t2 ON t3.cid = t2.cid WHERE t2.name = "VLDB";	academic
SELECT t1.schlüsselwort FROM publikation_schlüsselwort AS t4 JOIN schlüsselwort AS t1 ON t4.kind = t1.kind JOIN publikation AS t2 ON t2.pid = t4.pid JOIN journal AS t3 ON t2.jid = t3.jid WHERE t3.name = "PVLDB";	academic
SELECT t1.schlüsselwort FROM organisation AS t6 JOIN autor AS t2 ON t6.oid = t2.oid JOIN schreibt AS t4 ON t4.aid = t2.aid JOIN publikation AS t5 ON t4.pid = t5.pid JOIN publikation_schlüsselwort AS t3 ON t5.pid = t3.pid JOIN schlüsselwort AS t1 ON t3.kind = t1.kind WHERE t6.name = "University of Michigan";	academic
SELECT t5.titel FROM publikation_schlüsselwort AS t3 JOIN schlüsselwort AS t1 ON t3.kind = t1.kind JOIN publikation AS t5 ON t5.pid = t3.pid JOIN schreibt AS t4 ON t4.pid = t5.pid JOIN autor AS t2 ON t4.aid = t2.aid WHERE t2.name = "H. V. Jagadish" AND t1.schlüsselwort = "User Study";	academic
SELECT t4.titel FROM publikation_schlüsselwort AS t2 JOIN schlüsselwort AS t1 ON t2.kind = t1.kind JOIN publikation AS t4 ON t4.pid = t2.pid JOIN journal AS t3 ON t4.jid = t3.jid WHERE t3.name = "PVLDB" AND t1.schlüsselwort = "Keyword search";	academic
SELECT t4.titel FROM publikation_schlüsselwort AS t3 JOIN schlüsselwort AS t1 ON t3.kind = t1.kind JOIN publikation AS t4 ON t4.pid = t3.pid JOIN konferenz AS t2 ON t4.cid = t2.cid WHERE t2.name = "VLDB" AND t1.schlüsselwort = "Information Retrieval";	academic
SELECT t2.name FROM publikation_schlüsselwort AS t5 JOIN schlüsselwort AS t1 ON t5.kind = t1.kind JOIN publikation AS t3 ON t3.pid = t5.pid JOIN schreibt AS t4 ON t4.pid = t3.pid JOIN autor AS t2 ON t4.aid = t2.aid WHERE t1.schlüsselwort = "Relational Database";	academic
SELECT t2.name FROM domain_autor AS t4 JOIN autor AS t1 ON t4.aid = t1.aid JOIN domain AS t3 ON t3.did = t4.did JOIN organisation AS t2 ON t2.oid = t1.oid WHERE t3.name = "Databases";	academic
SELECT t2.name FROM domain_autor AS t4 JOIN autor AS t1 ON t4.aid = t1.aid JOIN domain AS t3 ON t3.did = t4.did JOIN organisation AS t2 ON t2.oid = t1.oid WHERE t3.name = "Databases" AND t2.kontinent = "North America";	academic
SELECT t1.name FROM organisation AS t2 JOIN autor AS t1 ON t2.oid = t1.oid WHERE t2.name = "University of Michigan";	academic
SELECT t1.name FROM domain_autor AS t4 JOIN autor AS t1 ON t4.aid = t1.aid JOIN domain AS t3 ON t3.did = t4.did JOIN organisation AS t2 ON t2.oid = t1.oid WHERE t3.name = "Databases" AND t2.name = "University of Michigan";	academic
SELECT t4.titel FROM organisation AS t2 JOIN autor AS t1 ON t2.oid = t1.oid JOIN schreibt AS t3 ON t3.aid = t1.aid JOIN publikation AS t4 ON t3.pid = t4.pid WHERE t2.name = "University of Michigan";	academic
SELECT t4.titel FROM organisation AS t2 JOIN autor AS t1 ON t2.oid = t1.oid JOIN schreibt AS t3 ON t3.aid = t1.aid JOIN publikation AS t4 ON t3.pid = t4.pid WHERE t2.name = "University of Michigan" AND t4.jahr > 2000;	academic
SELECT t5.titel FROM organisation AS t3 JOIN autor AS t1 ON t3.oid = t1.oid JOIN schreibt AS t4 ON t4.aid = t1.aid JOIN publikation AS t5 ON t4.pid = t5.pid JOIN konferenz AS t2 ON t5.cid = t2.cid WHERE t2.name = "VLDB" AND t3.name = "University of Michigan";	academic
SELECT t5.titel FROM organisation AS t2 JOIN autor AS t1 ON t2.oid = t1.oid JOIN schreibt AS t4 ON t4.aid = t1.aid JOIN publikation AS t5 ON t4.pid = t5.pid JOIN journal AS t3 ON t5.jid = t3.jid WHERE t3.name = "PVLDB" AND t2.name = "University of Michigan";	academic
SELECT t5.titel FROM organisation AS t2 JOIN autor AS t1 ON t2.oid = t1.oid JOIN schreibt AS t4 ON t4.aid = t1.aid JOIN publikation AS t5 ON t4.pid = t5.pid JOIN journal AS t3 ON t5.jid = t3.jid WHERE t3.name = "PVLDB" AND t2.name = "University of Michigan" AND t5.jahr > 2000;	academic
SELECT t3.titel FROM domain AS t2 JOIN bereich_publikation AS t1 ON t2.did = t1.did JOIN publikation AS t3 ON t3.pid = t1.pid WHERE t2.name = "Databases" AND t3.citation_num > 200;	academic
SELECT t2.titel FROM publikation AS t2 JOIN journal AS t1 ON t2.jid = t1.jid WHERE t1.name = "PVLDB" AND t2.citation_num > 200;	academic
SELECT t2.titel FROM publikation AS t2 JOIN konferenz AS t1 ON t2.cid = t1.cid WHERE t1.name = "VLDB" AND t2.citation_num > 200;	academic
SELECT t3.titel FROM schreibt AS t2 JOIN autor AS t1 ON t2.aid = t1.aid JOIN publikation AS t3 ON t2.pid = t3.pid WHERE t1.name = "H. V. Jagadish" AND t3.citation_num > 200;	academic
SELECT t4.titel FROM publikation AS t4 JOIN journal AS t2 ON t4.jid = t2.jid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t1.name = "H. V. Jagadish" AND t2.name = "PVLDB" AND t4.citation_num > 200;	academic
SELECT t4.titel FROM publikation AS t4 JOIN konferenz AS t2 ON t4.cid = t2.cid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t1.name = "H. V. Jagadish" AND t2.name = "VLDB" AND t4.citation_num > 200;	academic
SELECT titel FROM publikation WHERE citation_num > 200 AND jahr > 2000;	academic
SELECT t3.titel FROM domain AS t2 JOIN bereich_publikation AS t1 ON t2.did = t1.did JOIN publikation AS t3 ON t3.pid = t1.pid WHERE t2.name = "Databases" AND t3.citation_num > 200 AND t3.jahr > 2000;	academic
SELECT t2.titel FROM publikation AS t2 JOIN journal AS t1 ON t2.jid = t1.jid WHERE t1.name = "PVLDB" AND t2.citation_num > 200 AND t2.jahr > 2000;	academic
SELECT t2.titel FROM publikation AS t2 JOIN konferenz AS t1 ON t2.cid = t1.cid WHERE t1.name = "VLDB" AND t2.citation_num > 200 AND t2.jahr > 2000;	academic
SELECT COUNT ( DISTINCT t2.name ) FROM publikation AS t4 JOIN konferenz AS t2 ON t4.cid = t2.cid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t1.name = "H. V. Jagadish";	academic
SELECT COUNT ( DISTINCT t2.name ) FROM publikation AS t4 JOIN journal AS t2 ON t4.jid = t2.jid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t1.name = "H. V. Jagadish";	academic
SELECT COUNT ( DISTINCT t3.titel ) , t3.jahr FROM schreibt AS t2 JOIN autor AS t1 ON t2.aid = t1.aid JOIN publikation AS t3 ON t2.pid = t3.pid WHERE t1.name = "H. V. Jagadish" GROUP BY t3.jahr;	academic
SELECT COUNT ( DISTINCT t1.name ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.aid = t1.aid JOIN publikation AS t3 ON t2.pid = t3.pid WHERE t3.titel = "Making database systems usable";	academic
SELECT jahr , SUM ( citation_num ) FROM publikation WHERE titel = "Making database systems usable" GROUP BY jahr;	academic
SELECT COUNT ( DISTINCT t2.titel ) FROM publikation AS t3 JOIN cite AS t1 ON t3.pid = t1.zitiert JOIN publikation AS t2 ON t2.pid = t1.citing WHERE t3.titel = "Making database systems usable" AND t2.jahr < 2010;	academic
SELECT COUNT ( DISTINCT t3.titel ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.aid = t1.aid JOIN publikation AS t3 ON t2.pid = t3.pid WHERE t1.name = "H. V. Jagadish";	academic
SELECT COUNT ( DISTINCT t2.titel ) FROM publikation AS t2 JOIN konferenz AS t1 ON t2.cid = t1.cid WHERE t1.name = "VLDB";	academic
SELECT COUNT ( DISTINCT t2.titel ) FROM publikation AS t2 JOIN journal AS t1 ON t2.jid = t1.jid WHERE t1.name = "PVLDB";	academic
SELECT COUNT ( DISTINCT titel ) FROM publikation WHERE jahr > 2000;	academic
SELECT COUNT ( DISTINCT t2.titel ) FROM publikation AS t2 JOIN journal AS t1 ON t2.jid = t1.jid WHERE t1.name = "PVLDB" AND t2.jahr > 2000;	academic
SELECT COUNT ( DISTINCT t2.titel ) FROM publikation AS t2 JOIN konferenz AS t1 ON t2.cid = t1.cid WHERE t1.name = "VLDB" AND t2.jahr > 2000;	academic
SELECT COUNT ( DISTINCT t4.titel ) FROM publikation AS t4 JOIN journal AS t2 ON t4.jid = t2.jid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t1.name = "H. V. Jagadish" AND t2.name = "PVLDB";	academic
SELECT COUNT ( DISTINCT t4.titel ) FROM publikation AS t4 JOIN konferenz AS t2 ON t4.cid = t2.cid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t1.name = "H. V. Jagadish" AND t2.name = "VLDB";	academic
SELECT COUNT ( DISTINCT t3.titel ) FROM schreibt AS t2 JOIN autor AS t1 ON t2.aid = t1.aid JOIN publikation AS t3 ON t2.pid = t3.pid WHERE t1.name = "H. V. Jagadish" AND t3.jahr > 2000;	academic
SELECT COUNT ( DISTINCT t4.titel ) FROM publikation AS t4 JOIN journal AS t2 ON t4.jid = t2.jid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t1.name = "H. V. Jagadish" AND t2.name = "PVLDB" AND t4.jahr > 2000;	academic
SELECT COUNT ( DISTINCT t4.titel ) FROM publikation AS t4 JOIN konferenz AS t2 ON t4.cid = t2.cid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t1.name = "H. V. Jagadish" AND t2.name = "VLDB" AND t4.jahr > 2000;	academic
SELECT COUNT ( DISTINCT schlüsselwort ) FROM schlüsselwort;	academic
SELECT COUNT ( DISTINCT t1.schlüsselwort ) FROM domain AS t3 JOIN domain_keyword AS t2 ON t3.did = t2.did JOIN schlüsselwort AS t1 ON t1.kind = t2.kind WHERE t3.name = "Databases";	academic
SELECT COUNT ( DISTINCT t3.titel ) FROM publikation_schlüsselwort AS t2 JOIN schlüsselwort AS t1 ON t2.kind = t1.kind JOIN publikation AS t3 ON t3.pid = t2.pid WHERE t1.schlüsselwort = "Natural Language";	academic
SELECT COUNT ( DISTINCT t1.schlüsselwort ) FROM publikation_schlüsselwort AS t3 JOIN schlüsselwort AS t1 ON t3.kind = t1.kind JOIN publikation AS t2 ON t2.pid = t3.pid WHERE t2.titel = "Making database systems usable";	academic
SELECT COUNT ( DISTINCT t1.schlüsselwort ) FROM publikation_schlüsselwort AS t5 JOIN schlüsselwort AS t1 ON t5.kind = t1.kind JOIN publikation AS t3 ON t3.pid = t5.pid JOIN schreibt AS t4 ON t4.pid = t3.pid JOIN autor AS t2 ON t4.aid = t2.aid WHERE t2.name = "H. V. Jagadish";	academic
SELECT COUNT ( DISTINCT t1.schlüsselwort ) FROM publikation_schlüsselwort AS t4 JOIN schlüsselwort AS t1 ON t4.kind = t1.kind JOIN publikation AS t3 ON t3.pid = t4.pid JOIN konferenz AS t2 ON t3.cid = t2.cid WHERE t2.name = "VLDB";	academic
SELECT COUNT ( DISTINCT t1.schlüsselwort ) FROM publikation_schlüsselwort AS t4 JOIN schlüsselwort AS t1 ON t4.kind = t1.kind JOIN publikation AS t2 ON t2.pid = t4.pid JOIN journal AS t3 ON t2.jid = t3.jid WHERE t3.name = "PVLDB";	academic
SELECT COUNT ( DISTINCT t1.schlüsselwort ) FROM organisation AS t6 JOIN autor AS t2 ON t6.oid = t2.oid JOIN schreibt AS t4 ON t4.aid = t2.aid JOIN publikation AS t5 ON t4.pid = t5.pid JOIN publikation_schlüsselwort AS t3 ON t5.pid = t3.pid JOIN schlüsselwort AS t1 ON t3.kind = t1.kind WHERE t6.name = "University of Michigan";	academic
SELECT COUNT ( DISTINCT t5.titel ) FROM publikation_schlüsselwort AS t3 JOIN schlüsselwort AS t1 ON t3.kind = t1.kind JOIN publikation AS t5 ON t5.pid = t3.pid JOIN schreibt AS t4 ON t4.pid = t5.pid JOIN autor AS t2 ON t4.aid = t2.aid WHERE t2.name = "H. V. Jagadish" AND t1.schlüsselwort = "User Study";	academic
SELECT COUNT ( DISTINCT t4.titel ) FROM publikation_schlüsselwort AS t2 JOIN schlüsselwort AS t1 ON t2.kind = t1.kind JOIN publikation AS t4 ON t4.pid = t2.pid JOIN journal AS t3 ON t4.jid = t3.jid WHERE t3.name = "PVLDB" AND t1.schlüsselwort = "Keyword search";	academic
SELECT COUNT ( DISTINCT t4.titel ) FROM publikation_schlüsselwort AS t3 JOIN schlüsselwort AS t1 ON t3.kind = t1.kind JOIN publikation AS t4 ON t4.pid = t3.pid JOIN konferenz AS t2 ON t4.cid = t2.cid WHERE t2.name = "VLDB" AND t1.schlüsselwort = "Information Retrieval";	academic
SELECT COUNT ( DISTINCT t2.name ) FROM publikation_schlüsselwort AS t5 JOIN schlüsselwort AS t1 ON t5.kind = t1.kind JOIN publikation AS t3 ON t3.pid = t5.pid JOIN schreibt AS t4 ON t4.pid = t3.pid JOIN autor AS t2 ON t4.aid = t2.aid WHERE t1.schlüsselwort = "Relational Database";	academic
SELECT SUM ( t3.citation_num ) FROM publikation_schlüsselwort AS t2 JOIN schlüsselwort AS t1 ON t2.kind = t1.kind JOIN publikation AS t3 ON t3.pid = t2.pid WHERE t1.schlüsselwort = "Natural Language";	academic
SELECT COUNT ( DISTINCT name ) FROM organisation;	academic
SELECT COUNT ( DISTINCT name ) FROM organisation WHERE kontinent = "North America";	academic
SELECT COUNT ( DISTINCT t2.name ) FROM domain_autor AS t4 JOIN autor AS t1 ON t4.aid = t1.aid JOIN domain AS t3 ON t3.did = t4.did JOIN organisation AS t2 ON t2.oid = t1.oid WHERE t3.name = "Databases";	academic
SELECT COUNT ( DISTINCT t2.name ) FROM domain_autor AS t4 JOIN autor AS t1 ON t4.aid = t1.aid JOIN domain AS t3 ON t3.did = t4.did JOIN organisation AS t2 ON t2.oid = t1.oid WHERE t3.name = "Databases" AND t2.kontinent = "North America";	academic
SELECT COUNT ( DISTINCT t4.titel ) FROM organisation AS t2 JOIN autor AS t1 ON t2.oid = t1.oid JOIN schreibt AS t3 ON t3.aid = t1.aid JOIN publikation AS t4 ON t3.pid = t4.pid WHERE t2.name = "University of Michigan";	academic
SELECT COUNT ( DISTINCT t4.titel ) FROM domain_autor AS t6 JOIN autor AS t1 ON t6.aid = t1.aid JOIN domain AS t3 ON t3.did = t6.did JOIN bereich_publikation AS t2 ON t3.did = t2.did JOIN organisation AS t5 ON t5.oid = t1.oid JOIN publikation AS t4 ON t4.pid = t2.pid WHERE t3.name = "Databases" AND t5.name = "University of Michigan";	academic
SELECT COUNT ( DISTINCT t4.titel ) FROM organisation AS t2 JOIN autor AS t1 ON t2.oid = t1.oid JOIN schreibt AS t3 ON t3.aid = t1.aid JOIN publikation AS t4 ON t3.pid = t4.pid WHERE t2.name = "University of Michigan" AND t4.jahr > 2000;	academic
SELECT COUNT ( DISTINCT t5.titel ) FROM organisation AS t3 JOIN autor AS t1 ON t3.oid = t1.oid JOIN schreibt AS t4 ON t4.aid = t1.aid JOIN publikation AS t5 ON t4.pid = t5.pid JOIN konferenz AS t2 ON t5.cid = t2.cid WHERE t2.name = "VLDB" AND t3.name = "University of Michigan";	academic
SELECT COUNT ( DISTINCT t5.titel ) FROM organisation AS t2 JOIN autor AS t1 ON t2.oid = t1.oid JOIN schreibt AS t4 ON t4.aid = t1.aid JOIN publikation AS t5 ON t4.pid = t5.pid JOIN journal AS t3 ON t5.jid = t3.jid WHERE t3.name = "PVLDB" AND t2.name = "University of Michigan";	academic
SELECT COUNT ( DISTINCT t5.titel ) FROM organisation AS t2 JOIN autor AS t1 ON t2.oid = t1.oid JOIN schreibt AS t4 ON t4.aid = t1.aid JOIN publikation AS t5 ON t4.pid = t5.pid JOIN journal AS t3 ON t5.jid = t3.jid WHERE t3.name = "PVLDB" AND t2.name = "University of Michigan" AND t5.jahr > 2000;	academic
SELECT SUM ( t4.citation_num ) FROM organisation AS t2 JOIN autor AS t1 ON t2.oid = t1.oid JOIN schreibt AS t3 ON t3.aid = t1.aid JOIN publikation AS t4 ON t3.pid = t4.pid WHERE t2.name = "University of Michigan";	academic
SELECT COUNT ( DISTINCT t1.name ) FROM organisation AS t2 JOIN autor AS t1 ON t2.oid = t1.oid WHERE t2.name = "University of Michigan";	academic
SELECT COUNT ( DISTINCT t1.name ) FROM domain_autor AS t4 JOIN autor AS t1 ON t4.aid = t1.aid JOIN domain AS t3 ON t3.did = t4.did JOIN organisation AS t2 ON t2.oid = t1.oid WHERE t3.name = "Databases" AND t2.name = "University of Michigan";	academic
SELECT COUNT ( DISTINCT t1.name ) FROM publikation AS t4 JOIN journal AS t2 ON t4.jid = t2.jid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t2.name = "PVLDB";	academic
SELECT COUNT ( DISTINCT t1.name ) FROM publikation AS t4 JOIN konferenz AS t2 ON t4.cid = t2.cid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t2.name = "VLDB";	academic
SELECT COUNT ( DISTINCT t2.titel ) FROM publikation AS t2 JOIN journal AS t1 ON t2.jid = t1.jid WHERE t1.name = "PVLDB" AND t2.jahr < 2000;	academic
SELECT COUNT ( DISTINCT t2.titel ) FROM publikation AS t2 JOIN konferenz AS t1 ON t2.cid = t1.cid WHERE t1.name = "VLDB" AND t2.jahr < 2000;	academic
SELECT SUM ( t2.citation_num ) FROM publikation AS t2 JOIN journal AS t1 ON t2.jid = t1.jid WHERE t1.name = "PVLDB";	academic
SELECT t2.citation_num FROM publikation AS t2 JOIN journal AS t1 ON t2.jid = t1.jid WHERE t1.name = "PVLDB";	academic
SELECT SUM ( t2.citation_num ) FROM publikation AS t2 JOIN journal AS t1 ON t2.jid = t1.jid WHERE t1.name = "PVLDB" AND t2.jahr = 2005;	academic
SELECT SUM ( t2.citation_num ) FROM publikation AS t2 JOIN journal AS t1 ON t2.jid = t1.jid WHERE t1.name = "PVLDB" AND t2.jahr < 2005;	academic
SELECT t2.jahr , SUM ( t2.citation_num ) FROM publikation AS t2 JOIN journal AS t1 ON t2.jid = t1.jid WHERE t1.name = "PVLDB" GROUP BY t2.jahr;	academic
SELECT COUNT ( DISTINCT t2.titel ) , t2.jahr FROM publikation AS t2 JOIN journal AS t1 ON t2.jid = t1.jid WHERE t1.name = "PVLDB" GROUP BY t2.jahr;	academic
SELECT SUM ( t2.citation_num ) FROM publikation AS t2 JOIN konferenz AS t1 ON t2.cid = t1.cid WHERE t1.name = "VLDB";	academic
SELECT t2.citation_num FROM publikation AS t2 JOIN konferenz AS t1 ON t2.cid = t1.cid WHERE t1.name = "VLDB";	academic
SELECT SUM ( t2.citation_num ) FROM publikation AS t2 JOIN konferenz AS t1 ON t2.cid = t1.cid WHERE t1.name = "VLDB" AND t2.jahr = 2005;	academic
SELECT SUM ( t2.citation_num ) FROM publikation AS t2 JOIN konferenz AS t1 ON t2.cid = t1.cid WHERE t1.name = "VLDB" AND t2.jahr < 2005;	academic
SELECT t2.jahr , SUM ( t2.citation_num ) FROM publikation AS t2 JOIN konferenz AS t1 ON t2.cid = t1.cid WHERE t1.name = "VLDB" GROUP BY t2.jahr;	academic
SELECT COUNT ( DISTINCT t2.titel ) , t2.jahr FROM publikation AS t2 JOIN konferenz AS t1 ON t2.cid = t1.cid WHERE t1.name = "VLDB" GROUP BY t2.jahr;	academic
SELECT t2.name FROM schreibt AS t4 JOIN autor AS t2 ON t4.aid = t2.aid JOIN publikation AS t7 ON t4.pid = t7.pid JOIN schreibt AS t5 ON t5.pid = t7.pid JOIN schreibt AS t6 ON t6.pid = t7.pid JOIN autor AS t1 ON t5.aid = t1.aid JOIN autor AS t3 ON t6.aid = t3.aid WHERE t1.name = "H. V. Jagadish" AND t3.name = "Divesh Srivastava";	academic
SELECT t2.name FROM schreibt AS t3 JOIN autor AS t2 ON t3.aid = t2.aid JOIN publikation AS t5 ON t3.pid = t5.pid JOIN schreibt AS t4 ON t4.pid = t5.pid JOIN autor AS t1 ON t4.aid = t1.aid WHERE t1.name = "H. V. Jagadish" AND t5.jahr > 2000;	academic
SELECT t5.titel FROM schreibt AS t3 JOIN autor AS t2 ON t3.aid = t2.aid JOIN publikation AS t5 ON t3.pid = t5.pid JOIN schreibt AS t4 ON t4.pid = t5.pid JOIN autor AS t1 ON t4.aid = t1.aid WHERE t2.name = "H. V. Jagadish" AND t1.name = "Divesh Srivastava";	academic
SELECT t5.titel FROM schreibt AS t3 JOIN autor AS t2 ON t3.aid = t2.aid JOIN publikation AS t5 ON t3.pid = t5.pid JOIN schreibt AS t4 ON t4.pid = t5.pid JOIN autor AS t1 ON t4.aid = t1.aid WHERE t2.name = "H. V. Jagadish" AND t1.name = "Yunyao Li" AND t5.jahr > 2005;	academic
SELECT t6.titel FROM publikation AS t6 JOIN journal AS t4 ON t6.jid = t4.jid JOIN schreibt AS t3 ON t3.pid = t6.pid JOIN schreibt AS t5 ON t5.pid = t6.pid JOIN autor AS t1 ON t5.aid = t1.aid JOIN autor AS t2 ON t3.aid = t2.aid WHERE t2.name = "H. V. Jagadish" AND t1.name = "Yunyao Li" AND t4.name = "PVLDB";	academic
SELECT t6.titel FROM publikation AS t6 JOIN journal AS t4 ON t6.jid = t4.jid JOIN schreibt AS t3 ON t3.pid = t6.pid JOIN schreibt AS t5 ON t5.pid = t6.pid JOIN autor AS t1 ON t5.aid = t1.aid JOIN autor AS t2 ON t3.aid = t2.aid WHERE t2.name = "H. V. Jagadish" AND t1.name = "Yunyao Li" AND t4.name = "PVLDB" AND t6.jahr > 2005;	academic
SELECT t2.name FROM schreibt AS t3 JOIN autor AS t2 ON t3.aid = t2.aid JOIN publikation AS t5 ON t3.pid = t5.pid JOIN schreibt AS t4 ON t4.pid = t5.pid JOIN autor AS t1 ON t4.aid = t1.aid WHERE t1.name = "H. V. Jagadish";	academic
SELECT t5.titel FROM schreibt AS t3 JOIN autor AS t2 ON t3.aid = t2.aid JOIN publikation AS t5 ON t3.pid = t5.pid JOIN schreibt AS t4 ON t4.pid = t5.pid JOIN autor AS t1 ON t4.aid = t1.aid WHERE t2.name = "H. V. Jagadish" AND t1.name = "Divesh Srivastava" AND t5.jahr < 2000;	academic
SELECT t2.name FROM publikation AS t7 JOIN cite AS t5 ON t7.pid = t5.citing JOIN publikation AS t6 ON t6.pid = t5.zitiert JOIN schreibt AS t3 ON t3.pid = t7.pid JOIN schreibt AS t4 ON t4.pid = t6.pid JOIN autor AS t2 ON t3.aid = t2.aid JOIN autor AS t1 ON t4.aid = t1.aid WHERE t1.name = "H. V. Jagadish";	academic
SELECT COUNT ( DISTINCT t5.titel ) FROM schreibt AS t3 JOIN autor AS t2 ON t3.aid = t2.aid JOIN publikation AS t5 ON t3.pid = t5.pid JOIN schreibt AS t4 ON t4.pid = t5.pid JOIN autor AS t1 ON t4.aid = t1.aid WHERE t2.name = "H. V. Jagadish" AND t1.name = "Divesh Srivastava";	academic
SELECT COUNT ( DISTINCT t5.titel ) FROM schreibt AS t3 JOIN autor AS t2 ON t3.aid = t2.aid JOIN publikation AS t5 ON t3.pid = t5.pid JOIN schreibt AS t4 ON t4.pid = t5.pid JOIN autor AS t1 ON t4.aid = t1.aid WHERE t2.name = "H. V. Jagadish" AND t1.name = "Divesh Srivastava" AND t5.jahr < 2000;	academic
SELECT COUNT ( DISTINCT t7.titel ) FROM schreibt AS t4 JOIN autor AS t2 ON t4.aid = t2.aid JOIN publikation AS t7 ON t4.pid = t7.pid JOIN schreibt AS t5 ON t5.pid = t7.pid JOIN schreibt AS t6 ON t6.pid = t7.pid JOIN autor AS t1 ON t5.aid = t1.aid JOIN autor AS t3 ON t6.aid = t3.aid WHERE t2.name = "Cong Yu" AND t1.name = "H. V. Jagadish" AND t3.name = "Yunyao Li";	academic
SELECT COUNT ( DISTINCT t2.name ) FROM schreibt AS t3 JOIN autor AS t2 ON t3.aid = t2.aid JOIN publikation AS t5 ON t3.pid = t5.pid JOIN schreibt AS t4 ON t4.pid = t5.pid JOIN autor AS t1 ON t4.aid = t1.aid WHERE t1.name = "H. V. Jagadish";	academic
SELECT COUNT ( DISTINCT t2.name ) FROM publikation AS t7 JOIN cite AS t5 ON t7.pid = t5.citing JOIN publikation AS t6 ON t6.pid = t5.zitiert JOIN schreibt AS t3 ON t3.pid = t7.pid JOIN schreibt AS t4 ON t4.pid = t6.pid JOIN autor AS t2 ON t3.aid = t2.aid JOIN autor AS t1 ON t4.aid = t1.aid WHERE t1.name = "H. V. Jagadish";	academic
SELECT t5.titel FROM schreibt AS t3 JOIN autor AS t2 ON t3.aid = t2.aid JOIN publikation AS t5 ON t3.pid = t5.pid JOIN schreibt AS t4 ON t4.pid = t5.pid JOIN autor AS t1 ON t4.aid = t1.aid WHERE t2.name = "H. V. Jagadish" AND t1.name = "Divesh Srivastava" AND t5.citation_num > 200;	academic
SELECT t2.name FROM publikation_schlüsselwort AS t5 JOIN schlüsselwort AS t1 ON t5.kind = t1.kind JOIN publikation AS t3 ON t3.pid = t5.pid JOIN schreibt AS t4 ON t4.pid = t3.pid JOIN autor AS t2 ON t4.aid = t2.aid WHERE t1.schlüsselwort = "Relational Database" GROUP BY t2.name ORDER BY COUNT ( DISTINCT t3.titel ) DESC LIMIT 1;	academic
SELECT t2.name FROM publikation_schlüsselwort AS t4 JOIN schlüsselwort AS t1 ON t4.kind = t1.kind JOIN publikation AS t3 ON t3.pid = t4.pid JOIN konferenz AS t2 ON t3.cid = t2.cid WHERE t1.schlüsselwort = "Relational Database" GROUP BY t2.name ORDER BY COUNT ( DISTINCT t3.titel ) DESC LIMIT 1;	academic
SELECT t2.name FROM publikation_schlüsselwort AS t4 JOIN schlüsselwort AS t1 ON t4.kind = t1.kind JOIN publikation AS t3 ON t3.pid = t4.pid JOIN konferenz AS t2 ON t3.cid = t2.cid WHERE t1.schlüsselwort = "Relational Database" GROUP BY t2.name ORDER BY COUNT ( DISTINCT t3.titel ) DESC LIMIT 1;	academic
SELECT t3.name FROM publikation_schlüsselwort AS t4 JOIN schlüsselwort AS t1 ON t4.kind = t1.kind JOIN publikation AS t2 ON t2.pid = t4.pid JOIN journal AS t3 ON t2.jid = t3.jid WHERE t1.schlüsselwort = "Relational Database" GROUP BY t3.name ORDER BY COUNT ( DISTINCT t2.titel ) DESC LIMIT 1;	academic
SELECT t3.name FROM publikation_schlüsselwort AS t4 JOIN schlüsselwort AS t1 ON t4.kind = t1.kind JOIN publikation AS t2 ON t2.pid = t4.pid JOIN journal AS t3 ON t2.jid = t3.jid WHERE t1.schlüsselwort = "Relational Database" GROUP BY t3.name ORDER BY COUNT ( DISTINCT t2.titel ) DESC LIMIT 1;	academic
SELECT t1.schlüsselwort FROM publikation_schlüsselwort AS t4 JOIN schlüsselwort AS t1 ON t4.kind = t1.kind JOIN publikation AS t3 ON t3.pid = t4.pid JOIN konferenz AS t2 ON t3.cid = t2.cid WHERE t2.name = "VLDB" GROUP BY t1.schlüsselwort ORDER BY COUNT ( DISTINCT t3.titel ) DESC LIMIT 1;	academic
SELECT t1.schlüsselwort FROM publikation_schlüsselwort AS t4 JOIN schlüsselwort AS t1 ON t4.kind = t1.kind JOIN publikation AS t2 ON t2.pid = t4.pid JOIN journal AS t3 ON t2.jid = t3.jid WHERE t3.name = "PVLDB" GROUP BY t1.schlüsselwort ORDER BY COUNT ( DISTINCT t2.titel ) DESC LIMIT 1;	academic
SELECT t1.schlüsselwort FROM publikation_schlüsselwort AS t5 JOIN schlüsselwort AS t1 ON t5.kind = t1.kind JOIN publikation AS t3 ON t3.pid = t5.pid JOIN schreibt AS t4 ON t4.pid = t3.pid JOIN autor AS t2 ON t4.aid = t2.aid WHERE t2.name = "H. V. Jagadish" GROUP BY t1.schlüsselwort ORDER BY COUNT ( DISTINCT t3.titel ) DESC LIMIT 1;	academic
SELECT t1.name FROM organisation AS t2 JOIN autor AS t1 ON t2.oid = t1.oid JOIN schreibt AS t3 ON t3.aid = t1.aid JOIN publikation AS t4 ON t3.pid = t4.pid WHERE t2.name = "University of Michigan" GROUP BY t1.name ORDER BY SUM ( t4.citation_num ) DESC LIMIT 1;	academic
SELECT t1.name FROM domain AS t4 JOIN bereich_publikation AS t2 ON t4.did = t2.did JOIN publikation AS t5 ON t5.pid = t2.pid JOIN schreibt AS t3 ON t3.pid = t5.pid JOIN autor AS t1 ON t3.aid = t1.aid JOIN organisation AS t6 ON t6.oid = t1.oid WHERE t4.name = "Databases" AND t6.name = "University of Michigan" GROUP BY t1.name ORDER BY SUM ( t5.citation_num ) DESC LIMIT 1;	academic
SELECT t5.titel FROM schreibt AS t3 JOIN autor AS t2 ON t3.aid = t2.aid JOIN publikation AS t5 ON t3.pid = t5.pid JOIN schreibt AS t4 ON t4.pid = t5.pid JOIN autor AS t1 ON t4.aid = t1.aid WHERE t2.name = "Divesh Srivastava" AND t1.name = "H. V. Jagadish" ORDER BY t5.citation_num DESC LIMIT 1;	academic
SELECT t2.name FROM publikation AS t4 JOIN konferenz AS t2 ON t4.cid = t2.cid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t1.name = "H. V. Jagadish" GROUP BY t2.name HAVING COUNT ( DISTINCT t4.titel ) > 10;	academic
SELECT t2.name FROM publikation AS t4 JOIN konferenz AS t2 ON t4.cid = t2.cid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t1.name = "H. V. Jagadish" GROUP BY t2.name ORDER BY COUNT ( DISTINCT t4.titel ) DESC LIMIT 1;	academic
SELECT t2.name FROM publikation AS t4 JOIN journal AS t2 ON t4.jid = t2.jid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t1.name = "H. V. Jagadish" GROUP BY t2.name HAVING COUNT ( DISTINCT t4.titel ) > 10;	academic
SELECT t2.name FROM publikation AS t4 JOIN journal AS t2 ON t4.jid = t2.jid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t1.name = "H. V. Jagadish" GROUP BY t2.name ORDER BY COUNT ( DISTINCT t4.titel ) DESC LIMIT 1;	academic
SELECT titel FROM publikation ORDER BY citation_num DESC LIMIT 1;	academic
SELECT t3.titel FROM domain AS t2 JOIN bereich_publikation AS t1 ON t2.did = t1.did JOIN publikation AS t3 ON t3.pid = t1.pid WHERE t2.name = "Databases" ORDER BY t3.citation_num DESC LIMIT 1;	academic
SELECT t2.titel FROM publikation AS t2 JOIN journal AS t1 ON t2.jid = t1.jid WHERE t1.name = "PVLDB" ORDER BY t2.citation_num DESC LIMIT 1;	academic
SELECT t2.titel FROM publikation AS t2 JOIN konferenz AS t1 ON t2.cid = t1.cid WHERE t1.name = "VLDB" ORDER BY t2.citation_num DESC LIMIT 1;	academic
SELECT t3.titel FROM schreibt AS t2 JOIN autor AS t1 ON t2.aid = t1.aid JOIN publikation AS t3 ON t2.pid = t3.pid WHERE t1.name = "H. V. Jagadish" ORDER BY t3.citation_num DESC LIMIT 1;	academic
SELECT titel FROM publikation WHERE jahr > 2000 ORDER BY citation_num DESC LIMIT 1;	academic
SELECT t3.titel FROM domain AS t2 JOIN bereich_publikation AS t1 ON t2.did = t1.did JOIN publikation AS t3 ON t3.pid = t1.pid WHERE t2.name = "Databases" AND t3.jahr > 2000 ORDER BY t3.citation_num DESC LIMIT 1;	academic
SELECT t2.titel FROM publikation AS t2 JOIN journal AS t1 ON t2.jid = t1.jid WHERE t1.name = "PVLDB" AND t2.jahr > 2000 ORDER BY t2.citation_num DESC LIMIT 1;	academic
SELECT t2.titel FROM publikation AS t2 JOIN konferenz AS t1 ON t2.cid = t1.cid WHERE t1.name = "VLDB" AND t2.jahr > 2000 ORDER BY t2.citation_num DESC LIMIT 1;	academic
SELECT t1.name FROM publikation AS t4 JOIN journal AS t2 ON t4.jid = t2.jid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t2.name = "PVLDB" GROUP BY t1.name HAVING COUNT ( DISTINCT t4.titel ) > 10;	academic
SELECT t1.name FROM publikation AS t4 JOIN journal AS t2 ON t4.jid = t2.jid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t2.name = "PVLDB" GROUP BY t1.name ORDER BY COUNT ( DISTINCT t4.titel ) DESC LIMIT 1;	academic
SELECT t2.name FROM publikation_schlüsselwort AS t5 JOIN schlüsselwort AS t1 ON t5.kind = t1.kind JOIN publikation AS t3 ON t3.pid = t5.pid JOIN schreibt AS t4 ON t4.pid = t3.pid JOIN autor AS t2 ON t4.aid = t2.aid WHERE t1.schlüsselwort = "Relational Database" GROUP BY t2.name HAVING COUNT ( DISTINCT t3.titel ) > 10;	academic
SELECT t2.name FROM publikation_schlüsselwort AS t4 JOIN schlüsselwort AS t1 ON t4.kind = t1.kind JOIN publikation AS t3 ON t3.pid = t4.pid JOIN konferenz AS t2 ON t3.cid = t2.cid WHERE t1.schlüsselwort = "Relational Database" GROUP BY t2.name HAVING COUNT ( DISTINCT t3.titel ) > 60;	academic
SELECT t3.name FROM publikation_schlüsselwort AS t4 JOIN schlüsselwort AS t1 ON t4.kind = t1.kind JOIN publikation AS t2 ON t2.pid = t4.pid JOIN journal AS t3 ON t2.jid = t3.jid WHERE t1.schlüsselwort = "Relational Database" GROUP BY t3.name HAVING COUNT ( DISTINCT t2.titel ) > 60;	academic
SELECT t1.schlüsselwort FROM publikation_schlüsselwort AS t4 JOIN schlüsselwort AS t1 ON t4.kind = t1.kind JOIN publikation AS t3 ON t3.pid = t4.pid JOIN konferenz AS t2 ON t3.cid = t2.cid WHERE t2.name = "VLDB" GROUP BY t1.schlüsselwort HAVING COUNT ( DISTINCT t3.titel ) > 100;	academic
SELECT t1.schlüsselwort FROM publikation_schlüsselwort AS t4 JOIN schlüsselwort AS t1 ON t4.kind = t1.kind JOIN publikation AS t2 ON t2.pid = t4.pid JOIN journal AS t3 ON t2.jid = t3.jid WHERE t3.name = "PVLDB" GROUP BY t1.schlüsselwort HAVING COUNT ( DISTINCT t2.titel ) > 100;	academic
SELECT t1.schlüsselwort FROM publikation_schlüsselwort AS t5 JOIN schlüsselwort AS t1 ON t5.kind = t1.kind JOIN publikation AS t3 ON t3.pid = t5.pid JOIN schreibt AS t4 ON t4.pid = t3.pid JOIN autor AS t2 ON t4.aid = t2.aid WHERE t2.name = "H. V. Jagadish" GROUP BY t1.schlüsselwort HAVING COUNT ( DISTINCT t3.titel ) > 10;	academic
SELECT t1.name FROM publikation AS t4 JOIN konferenz AS t2 ON t4.cid = t2.cid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t2.name = "VLDB" GROUP BY t1.name HAVING COUNT ( DISTINCT t4.titel ) > 10;	academic
SELECT t1.name FROM publikation AS t4 JOIN konferenz AS t2 ON t4.cid = t2.cid JOIN schreibt AS t3 ON t3.pid = t4.pid JOIN autor AS t1 ON t3.aid = t1.aid WHERE t2.name = "VLDB" GROUP BY t1.name ORDER BY COUNT ( DISTINCT t4.titel ) DESC LIMIT 1;	academic
SELECT t1.name FROM organisation AS t2 JOIN autor AS t1 ON t2.oid = t1.oid JOIN schreibt AS t3 ON t3.aid = t1.aid JOIN publikation AS t4 ON t3.pid = t4.pid WHERE t2.name = "University of Michigan" GROUP BY t1.name HAVING SUM ( t4.citation_num ) > 5000;	academic
SELECT t1.name FROM domain_autor AS t6 JOIN autor AS t1 ON t6.aid = t1.aid JOIN domain AS t3 ON t3.did = t6.did JOIN organisation AS t5 ON t5.oid = t1.oid JOIN schreibt AS t2 ON t2.aid = t1.aid JOIN publikation AS t4 ON t2.pid = t4.pid WHERE t3.name = "Databases" AND t5.name = "University of Michigan" GROUP BY t1.name HAVING SUM ( t4.citation_num ) > 5000;	academic
SELECT veröffentlichungsjahr FROM film WHERE titel = "The Imitation Game";	imdb
SELECT veröffentlichungsjahr FROM film WHERE titel = "The Imitation Game";	imdb
SELECT geburtsjahr FROM schauspieler WHERE name = "Benedict Cumberbatch";	imdb
SELECT geburtsjahr FROM schauspieler WHERE name = "Benedict Cumberbatch";	imdb
SELECT nationalität FROM schauspieler WHERE name = "Christoph Waltz";	imdb
SELECT nationalität FROM schauspieler WHERE name = "Christoph Waltz";	imdb
SELECT titel FROM film WHERE veröffentlichungsjahr = 2015;	imdb
SELECT name FROM schauspieler WHERE geburtsstadt = "Tehran";	imdb
SELECT name FROM schauspieler WHERE geburtsstadt = "Tehran";	imdb
SELECT name FROM schauspieler WHERE geburtsstadt = "Tehran";	imdb
SELECT name FROM schauspieler WHERE nationalität = "Afghanistan";	imdb
SELECT name FROM schauspieler WHERE nationalität = "Afghanistan";	imdb
SELECT name FROM schauspieler WHERE nationalität = "Afghanistan";	imdb
SELECT name FROM schauspieler WHERE geburtsjahr = 1984;	imdb
SELECT geburtsjahr FROM schauspieler WHERE name = "actor_name0";	imdb
SELECT geburtsjahr FROM schauspieler WHERE name = "actor_name0";	imdb
SELECT geburtsstadt FROM direktor WHERE name = "director_name0";	imdb
SELECT geburtsstadt FROM direktor WHERE name = "director_name0";	imdb
SELECT nationalität FROM direktor WHERE name = "director_name0";	imdb
SELECT budget FROM film WHERE titel = "Finding Nemo";	imdb
SELECT t3.titel FROM direktor AS t2 JOIN regie AS t1 ON t2.did = t1.did JOIN film AS t3 ON t3.mid = t1.msid WHERE t2.name = "Steven Spielberg" AND t3.veröffentlichungsjahr > 2006;	imdb
SELECT t2.name FROM direktor AS t2 JOIN regie AS t1 ON t2.did = t1.did JOIN film AS t3 ON t3.mid = t1.msid WHERE t3.titel = "James Bond";	imdb
SELECT t2.name FROM direktor AS t2 JOIN regie AS t1 ON t2.did = t1.did JOIN film AS t3 ON t3.mid = t1.msid WHERE t3.titel = "James Bond";	imdb
SELECT t2.name FROM direktor AS t2 JOIN regie AS t1 ON t2.did = t1.did JOIN film AS t3 ON t3.mid = t1.msid WHERE t3.titel = "James Bond";	imdb
SELECT t1.name FROM besetzung AS t2 JOIN schauspieler AS t1 ON t2.aid = t1.aid JOIN film AS t3 ON t3.mid = t2.msid WHERE t2.rolle = "Alan Turing" AND t3.titel = "The Imitation Game";	imdb
SELECT t1.name FROM besetzung AS t2 JOIN schauspieler AS t1 ON t2.aid = t1.aid JOIN film AS t3 ON t3.mid = t2.msid WHERE t2.rolle = "Alan Turing" AND t3.titel = "The Imitation Game";	imdb
SELECT t1.name FROM besetzung AS t2 JOIN schauspieler AS t1 ON t2.aid = t1.aid JOIN film AS t3 ON t3.mid = t2.msid WHERE t2.rolle = "Alan Turing" AND t3.titel = "The Imitation Game";	imdb
SELECT t1.name FROM besetzung AS t2 JOIN schauspieler AS t1 ON t2.aid = t1.aid JOIN film AS t3 ON t3.mid = t2.msid WHERE t2.rolle = "Alan Turing" AND t3.titel = "The Imitation Game";	imdb
SELECT t1.name FROM besetzung AS t2 JOIN schauspieler AS t1 ON t2.aid = t1.aid JOIN film AS t3 ON t3.mid = t2.msid WHERE t2.rolle = "Alan Turing" AND t3.titel = "The Imitation Game";	imdb
SELECT t2.genre FROM genre AS t2 JOIN klassifizierung AS t1 ON t2.gid = t1.gid JOIN film AS t3 ON t3.mid = t1.msid WHERE t3.titel = "Jurassic Park";	imdb
SELECT t2.name FROM direktor AS t2 JOIN regie AS t1 ON t2.did = t1.did JOIN film AS t3 ON t3.mid = t1.msid WHERE t3.veröffentlichungsjahr = 2015 AND t3.titel = "Joy";	imdb
SELECT t1.titel FROM geschrieben_von AS t3 JOIN film AS t1 ON t3.msid = t1.mid JOIN verfasser AS t2 ON t3.wid = t2.wid WHERE t2.name = "Matt Damon";	imdb
SELECT t2.titel FROM film AS t2 JOIN gemacht_von AS t3 ON t2.mid = t3.msid JOIN hersteller AS t1 ON t1.pid = t3.pid JOIN geschrieben_von AS t5 ON t5.msid = t2.mid JOIN verfasser AS t4 ON t5.wid = t4.wid WHERE t1.name = "Woody Allen" AND t4.name = "Woody Allen";	imdb
SELECT t2.titel FROM besetzung AS t3 JOIN schauspieler AS t1 ON t3.aid = t1.aid JOIN film AS t2 ON t2.mid = t3.msid WHERE t1.name = "Robin Wright";	imdb
SELECT t2.titel FROM besetzung AS t3 JOIN schauspieler AS t1 ON t3.aid = t1.aid JOIN film AS t2 ON t2.mid = t3.msid WHERE t1.name = "Robin Wright";	imdb
SELECT t2.titel FROM besetzung AS t3 JOIN schauspieler AS t1 ON t3.aid = t1.aid JOIN film AS t2 ON t2.mid = t3.msid WHERE t1.name = "Robin Wright";	imdb
SELECT budget FROM film WHERE veröffentlichungsjahr = 2007 AND titel = "Juno";	imdb
SELECT t3.titel FROM genre AS t2 JOIN klassifizierung AS t1 ON t2.gid = t1.gid JOIN film AS t3 ON t3.mid = t1.msid WHERE t2.genre = "Sci-Fi" AND t3.veröffentlichungsjahr = 2010;	imdb
SELECT t3.titel FROM genre AS t2 JOIN klassifizierung AS t1 ON t2.gid = t1.gid JOIN film AS t3 ON t3.mid = t1.msid WHERE t2.genre = "Sci-Fi" AND t3.veröffentlichungsjahr = 2010;	imdb
SELECT name FROM schauspieler WHERE geburtsstadt = "Austin" AND geburtsjahr > 1980;	imdb
SELECT name FROM schauspieler WHERE geburtsstadt = "Austin" AND geburtsjahr > 1980;	imdb
SELECT name FROM schauspieler WHERE geburtsstadt = "Austin" AND geburtsjahr > 1980;	imdb
SELECT t3.titel FROM direktor AS t2 JOIN regie AS t1 ON t2.did = t1.did JOIN film AS t3 ON t3.mid = t1.msid WHERE t2.geburtsstadt = "Los Angeles";	imdb
SELECT name FROM schauspieler WHERE geburtsstadt = "New York City" AND geburtsjahr = 1984;	imdb
SELECT t3.titel FROM tags AS t2 JOIN schlüsselwort AS t1 ON t2.kid = t1.id JOIN film AS t3 ON t2.msid = t3.mid WHERE t1.schlüsselwort = "nuclear weapons";	imdb
SELECT t3.titel FROM tags AS t2 JOIN schlüsselwort AS t1 ON t2.kid = t1.id JOIN film AS t3 ON t2.msid = t3.mid WHERE t1.schlüsselwort = "nuclear weapons";	imdb
SELECT t3.titel FROM direktor AS t2 JOIN regie AS t1 ON t2.did = t1.did JOIN film AS t3 ON t3.mid = t1.msid WHERE t2.name = "Alfred Hitchcock";	imdb
SELECT t4.titel FROM besetzung AS t5 JOIN schauspieler AS t1 ON t5.aid = t1.aid JOIN film AS t4 ON t4.mid = t5.msid JOIN regie AS t2 ON t4.mid = t2.msid JOIN direktor AS t3 ON t3.did = t2.did WHERE t1.name = "Taraneh Alidoosti" AND t3.name = "Asghar Farhadi";	imdb
SELECT t4.titel FROM besetzung AS t5 JOIN schauspieler AS t1 ON t5.aid = t1.aid JOIN film AS t4 ON t4.mid = t5.msid JOIN regie AS t2 ON t4.mid = t2.msid JOIN direktor AS t3 ON t3.did = t2.did WHERE t1.name = "Taraneh Alidoosti" AND t3.name = "Asghar Farhadi";	imdb
SELECT t4.titel FROM besetzung AS t5 JOIN schauspieler AS t1 ON t5.aid = t1.aid JOIN film AS t4 ON t4.mid = t5.msid JOIN regie AS t2 ON t4.mid = t2.msid JOIN direktor AS t3 ON t3.did = t2.did WHERE t1.name = "Taraneh Alidoosti" AND t3.name = "Asghar Farhadi";	imdb
SELECT t4.titel FROM besetzung AS t5 JOIN schauspieler AS t1 ON t5.aid = t1.aid JOIN film AS t4 ON t4.mid = t5.msid JOIN regie AS t2 ON t4.mid = t2.msid JOIN direktor AS t3 ON t3.did = t2.did WHERE t1.name = "Taraneh Alidoosti" AND t3.name = "Asghar Farhadi";	imdb
SELECT t2.titel FROM hersteller AS t1 JOIN gemacht_von AS t3 ON t1.pid = t3.pid JOIN tv_serie AS t2 ON t2.sid = t3.msid WHERE t1.name = "Shonda Rhimes";	imdb
SELECT t1.name FROM besetzung AS t3 JOIN schauspieler AS t1 ON t3.aid = t1.aid JOIN tv_serie AS t2 ON t2.sid = t3.msid WHERE t3.rolle = "Olivia Pope" AND t2.titel = "Scandal";	imdb
SELECT t2.name FROM geschrieben_von AS t3 JOIN film AS t1 ON t3.msid = t1.mid JOIN verfasser AS t2 ON t3.wid = t2.wid WHERE t1.titel = "The Truman Show";	imdb
SELECT t2.name FROM geschrieben_von AS t3 JOIN film AS t1 ON t3.msid = t1.mid JOIN verfasser AS t2 ON t3.wid = t2.wid WHERE t1.titel = "The Truman Show";	imdb
SELECT t2.titel FROM besetzung AS t3 JOIN schauspieler AS t1 ON t3.aid = t1.aid JOIN tv_serie AS t2 ON t2.sid = t3.msid WHERE t1.name = "Scott Foley";	imdb
SELECT t2.titel FROM besetzung AS t3 JOIN schauspieler AS t1 ON t3.aid = t1.aid JOIN tv_serie AS t2 ON t2.sid = t3.msid WHERE t1.name = "Scott Foley";	imdb
SELECT t3.name FROM besetzung AS t4 JOIN schauspieler AS t1 ON t4.aid = t1.aid JOIN film AS t5 ON t5.mid = t4.msid JOIN regie AS t2 ON t5.mid = t2.msid JOIN direktor AS t3 ON t3.did = t2.did WHERE t1.name = "Kate Winslet";	imdb
SELECT t1.name FROM besetzung AS t3 JOIN schauspieler AS t2 ON t3.aid = t2.aid JOIN film AS t5 ON t5.mid = t3.msid JOIN gemacht_von AS t4 ON t5.mid = t4.msid JOIN hersteller AS t1 ON t1.pid = t4.pid WHERE t2.name = "Kate Winslet";	imdb
SELECT t2.name FROM direktor AS t2 JOIN regie AS t1 ON t2.did = t1.did JOIN tv_serie AS t3 ON t3.sid = t1.msid WHERE t3.veröffentlichungsjahr = 2013 AND t3.titel = "House of Cards";	imdb
SELECT name FROM schauspieler WHERE geburtsstadt = "Austin" AND geschlecht = "female";	imdb
SELECT name FROM schauspieler WHERE geburtsjahr > 1980 AND nationalität = "Italy";	imdb
SELECT name FROM schauspieler WHERE geburtsstadt = "New York City" AND geburtsjahr > 1980 AND geschlecht = "female";	imdb
SELECT t1.name FROM besetzung AS t2 JOIN schauspieler AS t1 ON t2.aid = t1.aid JOIN film AS t3 ON t3.mid = t2.msid WHERE t1.geschlecht = "female" AND t3.titel = "Saving Private Ryan";	imdb
SELECT name FROM direktor WHERE nationalität = "Afghanistan";	imdb
SELECT t1.name FROM besetzung AS t2 JOIN schauspieler AS t1 ON t2.aid = t1.aid JOIN film AS t3 ON t3.mid = t2.msid WHERE t3.titel = "Camp X-Ray";	imdb
SELECT t1.name FROM besetzung AS t2 JOIN schauspieler AS t1 ON t2.aid = t1.aid JOIN film AS t3 ON t3.mid = t2.msid WHERE t1.nationalität = "Canada" AND t3.titel = "James Bond";	imdb
SELECT t2.titel FROM besetzung AS t3 JOIN schauspieler AS t1 ON t3.aid = t1.aid JOIN film AS t2 ON t2.mid = t3.msid WHERE t1.name = "Rowan Atkinson" AND t3.rolle = "Mr. Bean";	imdb
SELECT t2.geburtsstadt FROM direktor AS t2 JOIN regie AS t1 ON t2.did = t1.did JOIN film AS t3 ON t3.mid = t1.msid WHERE t3.titel = "The Past";	imdb
SELECT t1.name FROM besetzung AS t2 JOIN schauspieler AS t1 ON t2.aid = t1.aid WHERE t2.rolle = "Mr. Bean";	imdb
SELECT t3.genre FROM direktor AS t5 JOIN regie AS t2 ON t5.did = t2.did JOIN film AS t4 ON t4.mid = t2.msid JOIN klassifizierung AS t1 ON t4.mid = t1.msid JOIN genre AS t3 ON t3.gid = t1.gid WHERE t5.name = "Asghar Farhadi";	imdb
SELECT t1.titel FROM film AS t1 JOIN besetzung AS t2 ON t1.mid = t2.msid WHERE t2.rolle = "Daffy Duck";	imdb
SELECT t2.rolle FROM besetzung AS t2 JOIN schauspieler AS t1 ON t2.aid = t1.aid JOIN film AS t3 ON t3.mid = t2.msid WHERE t3.titel = "Daddy Long Legs";	imdb
SELECT t3.name FROM direktor AS t3 JOIN regie AS t2 ON t3.did = t2.did JOIN film AS t4 ON t4.mid = t2.msid JOIN tags AS t5 ON t5.msid = t4.mid JOIN schlüsselwort AS t1 ON t5.kid = t1.id WHERE t1.schlüsselwort = "nuclear weapons";	imdb
SELECT COUNT ( DISTINCT t2.titel ) FROM besetzung AS t3 JOIN schauspieler AS t1 ON t3.aid = t1.aid JOIN film AS t2 ON t2.mid = t3.msid WHERE t1.name = "Jennifer Aniston" AND t2.veröffentlichungsjahr > 2010;	imdb
SELECT COUNT ( DISTINCT t1.name ) FROM besetzung AS t2 JOIN schauspieler AS t1 ON t2.aid = t1.aid JOIN film AS t3 ON t3.mid = t2.msid WHERE t3.titel = "Saving Private Ryan";	imdb
SELECT COUNT ( DISTINCT t1.name ) FROM besetzung AS t2 JOIN schauspieler AS t1 ON t2.aid = t1.aid JOIN film AS t3 ON t3.mid = t2.msid WHERE t3.titel = "Saving Private Ryan";	imdb
SELECT COUNT ( DISTINCT t3.titel ) FROM direktor AS t2 JOIN regie AS t1 ON t2.did = t1.did JOIN film AS t3 ON t3.mid = t1.msid WHERE t2.name = "Steven Spielberg";	imdb
SELECT COUNT ( DISTINCT titel ) FROM film WHERE veröffentlichungsjahr = 2013;	imdb
SELECT COUNT ( DISTINCT titel ) FROM film WHERE veröffentlichungsjahr = 2013;	imdb
SELECT COUNT ( DISTINCT t3.titel ) , t3.veröffentlichungsjahr FROM direktor AS t2 JOIN regie AS t1 ON t2.did = t1.did JOIN film AS t3 ON t3.mid = t1.msid WHERE t2.name = "Woody Allen" GROUP BY t3.veröffentlichungsjahr;	imdb
SELECT COUNT ( DISTINCT t2.titel ) FROM besetzung AS t3 JOIN schauspieler AS t1 ON t3.aid = t1.aid JOIN film AS t2 ON t2.mid = t3.msid WHERE t1.name = "Shahab Hosseini";	imdb
SELECT COUNT ( DISTINCT t2.titel ) FROM besetzung AS t3 JOIN schauspieler AS t1 ON t3.aid = t1.aid JOIN film AS t2 ON t2.mid = t3.msid WHERE t1.name = "Shahab Hosseini";	imdb
SELECT COUNT ( DISTINCT t2.titel ) FROM besetzung AS t3 JOIN schauspieler AS t1 ON t3.aid = t1.aid JOIN film AS t2 ON t2.mid = t3.msid WHERE t1.name = "Shahab Hosseini";	imdb
SELECT COUNT ( DISTINCT t2.titel ) FROM besetzung AS t3 JOIN schauspieler AS t1 ON t3.aid = t1.aid JOIN film AS t2 ON t2.mid = t3.msid WHERE t1.name = "Shahab Hosseini";	imdb
SELECT COUNT ( DISTINCT name ) FROM schauspieler WHERE geburtsstadt = "Los Angeles" AND geburtsjahr > 2000;	imdb
SELECT COUNT ( DISTINCT t2.titel ) FROM besetzung AS t3 JOIN schauspieler AS t1 ON t3.aid = t1.aid JOIN film AS t2 ON t2.mid = t3.msid WHERE t1.name = "Humphrey Bogart" AND t2.veröffentlichungsjahr < 1942;	imdb
SELECT COUNT ( DISTINCT t2.titel ) , t2.veröffentlichungsjahr FROM besetzung AS t3 JOIN schauspieler AS t1 ON t3.aid = t1.aid JOIN film AS t2 ON t2.mid = t3.msid WHERE t1.name = "Brad Pitt" GROUP BY t2.veröffentlichungsjahr;	imdb
SELECT COUNT ( DISTINCT t3.titel ) FROM tags AS t2 JOIN schlüsselwort AS t1 ON t2.kid = t1.id JOIN film AS t3 ON t2.msid = t3.mid WHERE t1.schlüsselwort = "Iraq war" AND t3.veröffentlichungsjahr = 2015;	imdb
SELECT COUNT ( DISTINCT t3.titel ) FROM tags AS t2 JOIN schlüsselwort AS t1 ON t2.kid = t1.id JOIN film AS t3 ON t2.msid = t3.mid WHERE t1.schlüsselwort = "Persians" AND t3.veröffentlichungsjahr > 1990;	imdb
SELECT COUNT ( DISTINCT t3.titel ) FROM direktor AS t2 JOIN regie AS t1 ON t2.did = t1.did JOIN film AS t3 ON t3.mid = t1.msid WHERE t2.name = "Quentin Tarantino" AND t3.veröffentlichungsjahr > 2010;	imdb
SELECT COUNT ( DISTINCT t3.titel ) FROM direktor AS t2 JOIN regie AS t1 ON t2.did = t1.did JOIN film AS t3 ON t3.mid = t1.msid WHERE t2.name = "Quentin Tarantino" AND t3.veröffentlichungsjahr < 2010;	imdb
SELECT COUNT ( DISTINCT t4.titel ) FROM direktor AS t3 JOIN regie AS t2 ON t3.did = t2.did JOIN film AS t4 ON t4.mid = t2.msid JOIN gemacht_von AS t5 ON t4.mid = t5.msid JOIN hersteller AS t1 ON t1.pid = t5.pid WHERE t3.name = "Quentin Tarantino" AND t4.veröffentlichungsjahr < 2010 AND t4.veröffentlichungsjahr > 2002;	imdb
SELECT COUNT ( DISTINCT name ) FROM schauspieler WHERE geburtsstadt = "New York City" AND geburtsjahr > 1980 AND geschlecht = "female";	imdb
SELECT COUNT ( DISTINCT t1.name ) FROM besetzung AS t4 JOIN schauspieler AS t1 ON t4.aid = t1.aid JOIN film AS t5 ON t5.mid = t4.msid JOIN regie AS t2 ON t5.mid = t2.msid JOIN direktor AS t3 ON t3.did = t2.did WHERE t1.nationalität = "Iran" AND t3.name = "Jim Jarmusch";	imdb
SELECT COUNT ( DISTINCT t1.name ) FROM besetzung AS t2 JOIN schauspieler AS t1 ON t2.aid = t1.aid JOIN film AS t3 ON t3.mid = t2.msid WHERE t1.nationalität = "China" AND t3.titel = "Rush Hour 3";	imdb
SELECT t4.titel FROM besetzung AS t5 JOIN schauspieler AS t1 ON t5.aid = t1.aid JOIN film AS t4 ON t4.mid = t5.msid JOIN besetzung AS t3 ON t4.mid = t3.msid JOIN schauspieler AS t2 ON t3.aid = t2.aid WHERE t1.name = "Woody Strode" AND t2.name = "Jason Robards";	imdb
SELECT t4.titel FROM besetzung AS t5 JOIN schauspieler AS t1 ON t5.aid = t1.aid JOIN film AS t4 ON t4.mid = t5.msid JOIN besetzung AS t3 ON t4.mid = t3.msid JOIN schauspieler AS t2 ON t3.aid = t2.aid WHERE t1.name = "Woody Strode" AND t2.name = "Jason Robards";	imdb
SELECT t4.titel FROM besetzung AS t5 JOIN schauspieler AS t1 ON t5.aid = t1.aid JOIN film AS t4 ON t4.mid = t5.msid JOIN besetzung AS t3 ON t4.mid = t3.msid JOIN schauspieler AS t2 ON t3.aid = t2.aid WHERE t1.name = "Woody Strode" AND t2.name = "Jason Robards";	imdb
SELECT t4.titel FROM besetzung AS t5 JOIN schauspieler AS t1 ON t5.aid = t1.aid JOIN film AS t4 ON t4.mid = t5.msid JOIN besetzung AS t3 ON t4.mid = t3.msid JOIN schauspieler AS t2 ON t3.aid = t2.aid WHERE t1.name = "Woody Strode" AND t2.name = "Jason Robards";	imdb
SELECT t1.name FROM besetzung AS t4 JOIN schauspieler AS t1 ON t4.aid = t1.aid JOIN film AS t5 ON t5.mid = t4.msid JOIN besetzung AS t3 ON t5.mid = t3.msid JOIN schauspieler AS t2 ON t3.aid = t2.aid WHERE t2.name = "Tom Hanks";	imdb
SELECT t3.titel FROM direktor AS t5 JOIN regie AS t2 ON t5.did = t2.did JOIN regie AS t1 ON t5.did = t1.did JOIN film AS t4 ON t4.mid = t2.msid JOIN film AS t3 ON t3.mid = t1.msid WHERE t4.titel = "Revolutionary Road";	imdb
SELECT t3.titel FROM genre AS t2 JOIN klassifizierung AS t1 ON t2.gid = t1.gid JOIN film AS t3 ON t3.mid = t1.msid GROUP BY t3.titel ORDER BY COUNT ( DISTINCT t2.genre ) DESC LIMIT 1;	imdb
SELECT t2.titel FROM besetzung AS t3 JOIN schauspieler AS t1 ON t3.aid = t1.aid JOIN film AS t2 ON t2.mid = t3.msid WHERE t1.nationalität = "China" GROUP BY t2.titel ORDER BY COUNT ( DISTINCT t1.name ) DESC LIMIT 1;	imdb
SELECT t1.name FROM besetzung AS t4 JOIN schauspieler AS t1 ON t4.aid = t1.aid JOIN film AS t5 ON t5.mid = t4.msid JOIN regie AS t2 ON t5.mid = t2.msid JOIN direktor AS t3 ON t3.did = t2.did WHERE t3.name = "Quentin Tarantino" ORDER BY t5.veröffentlichungsjahr DESC LIMIT 1;	imdb
SELECT t3.budget , t3.titel FROM direktor AS t2 JOIN regie AS t1 ON t2.did = t1.did JOIN film AS t3 ON t3.mid = t1.msid WHERE t2.name = "Quentin Tarantino" ORDER BY t3.veröffentlichungsjahr DESC LIMIT 1;	imdb
SELECT t3.titel FROM direktor AS t2 JOIN regie AS t1 ON t2.did = t1.did JOIN film AS t3 ON t3.mid = t1.msid WHERE t2.name = "Jim Jarmusch" ORDER BY t3.veröffentlichungsjahr DESC LIMIT 1;	imdb
SELECT t1.name FROM direktor AS t3 JOIN regie AS t2 ON t3.did = t2.did JOIN film AS t4 ON t4.mid = t2.msid JOIN gemacht_von AS t5 ON t4.mid = t5.msid JOIN hersteller AS t1 ON t1.pid = t5.pid GROUP BY t1.name ORDER BY COUNT ( DISTINCT t3.name ) DESC LIMIT 1;	imdb
SELECT t1.name FROM besetzung AS t2 JOIN schauspieler AS t1 ON t2.aid = t1.aid JOIN film AS t3 ON t3.mid = t2.msid WHERE t1.name = "Gabriele Ferzetti" ORDER BY t3.veröffentlichungsjahr DESC LIMIT 1;	imdb
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.name = "buttercup kitchen";	restaurants
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname WHERE t2.region = "bay area" AND t1.speiseart = "chinese";	restaurants
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname WHERE t2.region = "bay area" AND t1.speiseart = "chinese";	restaurants
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname WHERE t2.region = "bay area" AND t1.speiseart = "chinese";	restaurants
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname WHERE t2.region = "bay area" AND t1.speiseart = "chinese";	restaurants
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname WHERE t2.landkreis = "santa cruz county" AND t1.name = "jamerican cuisine";	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t1.name = "jamerican cuisine";	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.speiseart = "french" AND t1.bewertung = ( SELECT MAX ( t1.bewertung ) FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.speiseart = "french" );	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.speiseart = "french" AND t1.bewertung = ( SELECT MAX ( t1.bewertung ) FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.speiseart = "french" );	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.speiseart = "french" AND t1.bewertung = ( SELECT MAX ( t1.bewertung ) FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.speiseart = "french" );	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.speiseart = "french" AND t1.bewertung = ( SELECT MAX ( t1.bewertung ) FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.speiseart = "french" );	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.speiseart = "french" AND t1.bewertung = ( SELECT MAX ( t1.bewertung ) FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.speiseart = "french" );	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.speiseart = "french" AND t1.bewertung = ( SELECT MAX ( t1.bewertung ) FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.speiseart = "french" );	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.speiseart = "french" AND t1.bewertung = ( SELECT MAX ( t1.bewertung ) FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.speiseart = "french" );	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.speiseart = "french" AND t1.bewertung = ( SELECT MAX ( t1.bewertung ) FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.speiseart = "french" );	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.speiseart = "french" AND t1.bewertung = ( SELECT MAX ( t1.bewertung ) FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.speiseart = "french" );	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.speiseart = "french" AND t1.bewertung = ( SELECT MAX ( t1.bewertung ) FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.speiseart = "french" );	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.speiseart = "french" AND t1.bewertung = ( SELECT MAX ( t1.bewertung ) FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.speiseart = "french" );	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "bay area" AND t1.name = "denny";	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "bethel island" AND t2.straßenname = "bethel island rd" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "bethel island" AND t2.straßenname = "bethel island rd" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "bethel island" AND t2.straßenname = "bethel island rd" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "bethel island" AND t2.straßenname = "bethel island rd" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "alameda";	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "alameda";	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "alameda";	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "alameda";	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "alameda";	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t1.speiseart = "french" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t1.speiseart = "french" AND t1.bewertung > 2.5;	restaurants
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "palo alto" AND t1.speiseart = "french";	restaurants
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "palo alto" AND t1.speiseart = "french";	restaurants
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "palo alto" AND t1.speiseart = "french";	restaurants
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "palo alto" AND t1.speiseart = "french";	restaurants
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname WHERE t2.landkreis = "yolo county" AND t1.speiseart = "italian";	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "french";	restaurants
SELECT COUNT ( * ) FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname WHERE t2.region = "bay area" AND t1.name = "denny";	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "alameda" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "alameda" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "alameda" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "alameda" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t2.straßenname = "buchanan" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t2.straßenname = "buchanan" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t2.straßenname = "buchanan" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t2.straßenname = "buchanan" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t2.straßenname = "buchanan" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t2.straßenname = "buchanan" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t2.straßenname = "buchanan" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t2.straßenname = "buchanan" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t2.straßenname = "buchanan" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t2.straßenname = "buchanan" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t2.straßenname = "buchanan" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t2.straßenname = "buchanan" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t2.straßenname = "buchanan" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t2.straßenname = "buchanan" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t2.straßenname = "buchanan" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t2.straßenname = "buchanan" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t2.straßenname = "buchanan" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t2.straßenname = "buchanan" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t2.straßenname = "buchanan" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t2.straßenname = "buchanan" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t2.straßenname = "buchanan" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t2.straßenname = "buchanan" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "bay area" AND t1.speiseart = "french";	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "bethel island" AND t2.straßenname = "bethel island rd";	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "bethel island" AND t2.straßenname = "bethel island rd";	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "bethel island" AND t2.straßenname = "bethel island rd";	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "bethel island" AND t2.straßenname = "bethel island rd";	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "bay area" AND t1.speiseart = "american" AND t1.bewertung = ( SELECT MAX ( t1.bewertung ) FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname WHERE t2.region = "bay area" AND t1.speiseart = "american" );	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "bay area" AND t1.speiseart = "american" AND t1.bewertung = ( SELECT MAX ( t1.bewertung ) FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname WHERE t2.region = "bay area" AND t1.speiseart = "american" );	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "bay area" AND t1.speiseart = "american" AND t1.bewertung = ( SELECT MAX ( t1.bewertung ) FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname WHERE t2.region = "bay area" AND t1.speiseart = "american" );	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "bay area" AND t1.speiseart = "american" AND t1.bewertung = ( SELECT MAX ( t1.bewertung ) FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname WHERE t2.region = "bay area" AND t1.speiseart = "american" );	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "bay area" AND t1.speiseart = "american" AND t1.bewertung = ( SELECT MAX ( t1.bewertung ) FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname WHERE t2.region = "bay area" AND t1.speiseart = "american" );	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "bay area" AND t1.speiseart = "american" AND t1.bewertung = ( SELECT MAX ( t1.bewertung ) FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname WHERE t2.region = "bay area" AND t1.speiseart = "american" );	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "bay area" AND t1.speiseart = "american" AND t1.bewertung = ( SELECT MAX ( t1.bewertung ) FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname WHERE t2.region = "bay area" AND t1.speiseart = "american" );	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "bay area" AND t1.speiseart = "american" AND t1.bewertung = ( SELECT MAX ( t1.bewertung ) FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname WHERE t2.region = "bay area" AND t1.speiseart = "american" );	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "bay area" AND t1.speiseart = "american" AND t1.bewertung = ( SELECT MAX ( t1.bewertung ) FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname WHERE t2.region = "bay area" AND t1.speiseart = "american" );	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "bay area" AND t1.speiseart = "american" AND t1.bewertung = ( SELECT MAX ( t1.bewertung ) FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname WHERE t2.region = "bay area" AND t1.speiseart = "american" );	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "bay area" AND t1.speiseart = "american" AND t1.bewertung = ( SELECT MAX ( t1.bewertung ) FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname WHERE t2.region = "bay area" AND t1.speiseart = "american" );	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "bay area" AND t1.speiseart = "american" AND t1.bewertung = ( SELECT MAX ( t1.bewertung ) FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname WHERE t2.region = "bay area" AND t1.speiseart = "american" );	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "yosemite and mono lake area" AND t1.speiseart = "french" AND t1.bewertung > 2.5;	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "yosemite and mono lake area" AND t1.speiseart = "french" AND t1.bewertung > 2.5;	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "yosemite and mono lake area" AND t1.speiseart = "french" AND t1.bewertung > 2.5;	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "yosemite and mono lake area" AND t1.speiseart = "french" AND t1.bewertung > 2.5;	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "yosemite and mono lake area" AND t1.speiseart = "french" AND t1.bewertung > 2.5;	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "yosemite and mono lake area" AND t1.speiseart = "french" AND t1.bewertung > 2.5;	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "yosemite and mono lake area" AND t1.speiseart = "french" AND t1.bewertung > 2.5;	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "yosemite and mono lake area" AND t1.speiseart = "french" AND t1.bewertung > 2.5;	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "yosemite and mono lake area" AND t1.speiseart = "french" AND t1.bewertung > 2.5;	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "yosemite and mono lake area" AND t1.speiseart = "french" AND t1.bewertung > 2.5;	restaurants
SELECT t3.hausnummer , t1.name FROM restaurant AS t1 JOIN geografisch AS t2 ON t1.stadtname = t2.stadtname JOIN ort AS t3 ON t1.id = t3.restaurant_id WHERE t2.region = "yosemite and mono lake area" AND t1.speiseart = "french" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "mountain view" AND t1.speiseart = "arabic" AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.name = "jamerican cuisine";	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.name = "jamerican cuisine";	restaurants
SELECT t2.hausnummer , t1.name FROM restaurant AS t1 JOIN ort AS t2 ON t1.id = t2.restaurant_id WHERE t2.stadtname = "san francisco" AND t1.name = "jamerican cuisine";	restaurants
SELECT t2.hausnummer , t1.name FROM ort AS t2 JOIN restaurant AS t1 ON t1.id = t2.restaurant_id WHERE t1.stadtname IN ( SELECT stadtname FROM geografisch WHERE region = "bay area" );	restaurants
SELECT t2.hausnummer , t1.name FROM ort AS t2 JOIN restaurant AS t1 ON t1.id = t2.restaurant_id WHERE t1.stadtname IN ( SELECT stadtname FROM geografisch WHERE region = "bay area" );	restaurants
SELECT t2.hausnummer , t1.name FROM ort AS t2 JOIN restaurant AS t1 ON t1.id = t2.restaurant_id WHERE t1.stadtname IN ( SELECT stadtname FROM geografisch WHERE region = "bay area" );	restaurants
SELECT t2.hausnummer , t1.name FROM ort AS t2 JOIN restaurant AS t1 ON t1.id = t2.restaurant_id WHERE t1.stadtname IN ( SELECT stadtname FROM geografisch WHERE region = "bay area" );	restaurants
SELECT t2.hausnummer , t1.name FROM ort AS t2 JOIN restaurant AS t1 ON t1.id = t2.restaurant_id WHERE t1.stadtname IN ( SELECT stadtname FROM geografisch WHERE region = "region0" ) AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM ort AS t2 JOIN restaurant AS t1 ON t1.id = t2.restaurant_id WHERE t1.stadtname IN ( SELECT stadtname FROM geografisch WHERE region = "region0" ) AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM ort AS t2 JOIN restaurant AS t1 ON t1.id = t2.restaurant_id WHERE t1.stadtname IN ( SELECT stadtname FROM geografisch WHERE region = "region0" ) AND t1.bewertung > 2.5;	restaurants
SELECT t2.hausnummer , t1.name FROM ort AS t2 JOIN restaurant AS t1 ON t1.id = t2.restaurant_id WHERE t1.stadtname IN ( SELECT stadtname FROM geografisch WHERE region = "region0" ) AND t1.bewertung > 2.5;	restaurants
