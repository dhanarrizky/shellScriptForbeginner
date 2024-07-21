pad=$(printf "_%.0s" {1..100})

create_fractal_pattern() {
    local left_length=${1}
    local right_length=${2}
    local branch_size=${3}
    local depth=${4}

    if [[ ${depth} == 0 ]]
    then
        return
    fi

    local left_child=( $(create_fractal_pattern $(( left_length - branch_size )) ${branch_size} $(( branch_size / 2 )) $(( depth - 1 ))) )
    local right_child=( $(create_fractal_pattern $(( branch_size - 1 )) $(( right_length - branch_size )) $(( branch_size / 2 )) $(( depth - 1 ))) )

    declare -a tree
    for (( i=0; i<${#left_child[@]}; i+=1 ))
    do
        tree[${i}]="${left_child[${i}]}${right_child[${i}]}"
    done
    echo "${tree[@]}"

    for (( i=${branch_size}-1; i>=0; i-=1 ))
    do
        printf "%s1%s1%s\n" "${pad:1:left_length-i-1}" "${pad:1:i*2+1}" "${pad:1:right_length-i-1}"
    done

    for (( i=0; i<${branch_size}; i+=1 ))
    do
        printf "%s1%s\n" ${pad:1:left_length} ${pad:1:right_length}
    done
}

draw_fractal() {
    local width=${1}
    local branch_size=${2}
    local depth=${3}
    local left_bound=$(( (width + 1) / 2 -1 ))
    local right_bound=$(( width / 2 ))
    local upper_bound=$(( 63 - ( 64 - (2 ** (6 - depth)) ) ))
    for (( i=0; i<${upper_bound}; i+=1 ))
    do
        printf "%s\n" ${pad}
    done
    
    create_fractal_pattern ${left_bound} ${right_bound} ${branch_size} ${depth}
}

read N

fractal=$(draw_fractal 100 16 ${N})
echo ${fractal} | tr ' ' '\n'