#/bin/zsh

all=$(jq -n '[]')
literal=""

tiramisu --format="{\"summary\": \"#summary\", \"source\": \"#source\", \"body\": \"#body\"}" | while read -r noti
do
    all=$(echo "$all" | jq --argjson noti "$noti" '. += [$noti]')
    for notification in "$all"
    do
        echo "$notification"
        #summary=$(echo "$notification" | jq '.summary')
        #source=$(echo "$notification" | jq '.source')
        #body=$(echo "body" | jq '.body')
        #newliteral='(notibody :summary $"summary" :source $"source" :body $"body") '
        #literal=$literal$newliteral
    done
    #echo "$literal"
done
