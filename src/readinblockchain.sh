bg=0
while [ "$bg" -lt 100 ]
do

./bitcash-cli divideutxos
counter=0
while [ "$counter" -lt 20 ]
do
./bitcash-cli readinblockchain
 counter=$((counter+1))
sleep 0.5
 echo "$counter $bg"

done
./sendall.sh
./newwallet.sh

bg=$((bg+1))
done
