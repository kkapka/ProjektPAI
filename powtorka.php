<?php
global $granica;
global $wartosc;
global $licznik;
global $mianownik;

function taylor($x){
    $granica=100;
    $licznik=0;
    $mianownik=0;

    for($i=0;$i<$granica;$i++){
        $licznik+=(pow(-1,$i)/(silnia(2*$i+1)))*pow($x,2*$i+1);
        $mianownik+=(pow(-1,$i)/(silnia(2*$i)))*pow($x,2*$i);
    }

    return $licznik/$mianownik;
}


function silnia($n){
    $wynik=1;
    for($i=2;$i<=$n;$i++){
        $wynik*=$i;
    }

    return $wynik;
}

echo tan(0.2);
echo " ";
echo taylor(0.2);
?>