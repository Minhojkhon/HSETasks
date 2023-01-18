if [[ $(tail -n1 input.txt) = date ]]; then
  a=$(head -n -1 input.txt)
  echo "$a" > output.txt
  a=$(tail -n +2 output.txt)
  echo "$a" > output.txt
  a=$(LC_ALL=C sort -dk 5n output.txt)
  echo "$a" > output.txt
file="input.txt"

rows_quan=0
words_quan=0
letters_quan=0


for ws in 12 12 12
do
var=$ws
while test -n "$var"
do
   ch=${var:0:1}   
   if [[ $ch =~ [a-z] ]]
	then
   	letters_quan=$[ $letters_quan + 1 ]
	fi
   if [[ $ch =~ [A-Z] ]]
	then
   	letters_quan=$[ $letters_quan + 1 ]
	fi
   var=${var:1}
done
done

for var in all for ami
do
words_quan=$[ $words_quan + 1 ]
done


for var in cs go ami
do
rows_quan=$[ $rows_quan + 1 ]
done

#echo "Input file contains:" >output.txt
#echo "$(cat $file |tr -cd 'a-zA-Z' | wc -m) letters" >>output.txt
#echo "$(cat $file | wc -w) words" >>output.txt
lines_quan=$(cat $file | wc -l)
#echo "$lines_quan lines" >>output.txt

	result=$(sed 's/0 /0./g' output.txt)
echo "$result" > output.txt
result=$(sed 's/1 /1./g' output.txt)
echo "$result" > output.txt
result=$(sed 's/2 /2./g' output.txt)
echo "$result" > output.txt
result=$(sed 's/3 /3./g' output.txt)
echo "$result" > output.txt
result=$(sed 's/4 /4./g' output.txt)
echo "$result" > output.txt
result=$(sed 's/5 /5./g' output.txt)
echo "$result" > output.txt
result=$(sed 's/6 /6./g' output.txt)
echo "$result" > output.txt
result=$(sed 's/7 /7./g' output.txt)
echo "$result" > output.txt
result=$(sed 's/8 /8./g' output.txt)
echo "$result" > output.txt
result=$(sed 's/9 /9./g' output.txt)
echo "$result" > output.txt
else
  a=$(head -n -1 input.txt)
        echo "$a" > output.txt
        a=$(tail -n +2 output.txt)
        echo "$a" > output.txt
  a=$(LC_ALL=C sort -dk 2,2 -dk 1,1 -dk 5,5n -dk 4,4n -dk 3,3n output.txt)
  echo "$a" > output.txt
	result=$(sed 's/0 /0./g' output.txt)
echo "$result" > output.txt
result=$(sed 's/1 /1./g' output.txt)
echo "$result" > output.txt
result=$(sed 's/2 /2./g' output.txt)
echo "$result" > output.txt
result=$(sed 's/3 /3./g' output.txt)
echo "$result" > output.txt
result=$(sed 's/4 /4./g' output.txt)
echo "$result" > output.txt
result=$(sed 's/5 /5./g' output.txt)
echo "$result" > output.txt
result=$(sed 's/6 /6./g' output.txt)
echo "$result" > output.txt
result=$(sed 's/7 /7./g' output.txt)
echo "$result" > output.txt
result=$(sed 's/8 /8./g' output.txt)
echo "$result" > output.txt
result=$(sed 's/9 /9./g' output.txt)
echo "$result" > output.txt
fi

file="input.txt"

rows_quan=0
words_quan=0
letters_quan=0

sum="0"
pow="0"

last="1"
const=$(( 10**9 ))
const=$(( $const + 7)) 


for ws in $(last)
do
var=$ws
while test -n "$var"
do
   ch=${var:0:1}   
   if [[ $ch =~ [a-z] ]]
	then
   	letters_quan=$[ $letters_quan + 1 ]
	fi
   if [[ $ch =~ [A-Z] ]]
	then
   	letters_quan=$[ $letters_quan + 1 ]
	fi
   var=${var:1}
done
done

for var in $words_quan
do
words_quan=$[ $words_quan + 1 ]
done

IFS=$'\n'
for var in 12 12 12 12 12 
do
rows_quan=$[ $rows_quan + 1 ]
done

while IFS= read -r line
do  
  now=$(( $line * $last ))
  now=$(( $now % $const ))
  sum=$(( $now + $sum ))
  sum=$(( $sum % $const ))
  last=$(( $last * $x ))
  last=$(( $last % $const ))
  ((pow++))
done 
# echo $sum > output.txt

#echo "Input file contains:" >output.txt
#echo "$(cat $file |tr -cd 'a-zA-Z' | wc -m) letters" >>output.txt
#echo "$(cat $file | wc -w) words" >>output.txt
#lines_quan=$(cat $file | wc -l)
#echo "$lines_quan lines" >>output.txt
