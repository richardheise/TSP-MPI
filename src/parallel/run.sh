make clean 
make
echo -n 'Running code...'
echo ''
mpirun -np $1 ./tsp < ../../data/$2.in
