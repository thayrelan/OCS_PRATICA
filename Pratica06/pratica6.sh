calcula_diagonal(){
    echo Digite os valores das medidas do paralelepipedo, hondinha. 
    read x y z
    p=$x*$x+$y*$y+$z*$z
    p=$(echo "sqrt($p)" | bc -l)
    echo Valor diagonal eh igual a $p 

}


calcula_MDC(){
    if [ "$1" -ge "$2" ]
        then
        tmp1=$1
        tmp2=$2
        else
        tmp1=$2
        tmp2=$1
    fi
    resto=1
    while [ $resto -ne 0 ]; do
        resto=$[($tmp1%$tmp2)]
        tmp1=$tmp2
        tmp2=$resto
        MDC=$tmp1
        done

    if [ "$3" -ge "$MDC" ]
        then
        tmp3=$3
        tmp2=$MDC
        else
        tmp3=$MDC
        tmp2=$3
    fi
    resto=1
    while [ $resto -ne 0 ]; do
        resto=$[($tmp3%$MDC)]
        tmp3=$MDC
        MDC=$resto
        final=$tmp3
    done
    echo "O mdc eh $final"
}

case $1 in
diagonal) calcula_diagonal;;
MDC) calcula_MDC $2 $3 $4;;
*) echo "Deu erro :(";;
esac