fp () { #find and list processes matching a case-insensitive partial-match string
    ps Ao pid,comm|awk '{match($0,/[^\/]+$/); print substr($0,RSTART,RLENGTH)": "$1}'|grep -i $1|grep -v grep
}

fk () { # build menu to kill process
    IFS=$'\n'
    PS3='Kill which process? (1 to Cancel): '
    select OPT in "Cancel" $(fp $1); do
        if [ $OPT != "Cancel" ]; then
            kill $(echo $OPT|awk '{print $NF}')
        fi
        break
    done
    unset IFS
}
