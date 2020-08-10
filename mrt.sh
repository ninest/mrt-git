rm -rf .git
git init

git add .
git commit -m "add scripts"

# start EW separate from master
git checkout --orphan EW


./add_station.sh 'Tuas Link'
./add_station.sh 'Tuas West Road'
./add_station.sh 'Tuas Crescent'
./add_station.sh 'Gul Circle'
./add_station.sh 'Joo Koon'
./add_station.sh 'Pioneer'
./add_station.sh 'Boon Lay'
./add_station.sh 'Lakeside'
./add_station.sh 'Chinese Gardens'

# # first NS station
./add_station.sh 'Jurong East' 
git branch NS

./add_station.sh 'Clementi'
./add_station.sh 'Dover'

# need to start CC for Buona Vista
git checkout --orphan CC

./add_station.sh 'HarborFront'
./add_station.sh 'Telok Blangah'
./add_station.sh 'Labrador Park'
./add_station.sh 'Pasir Panjang'
./add_station.sh 'Haw Par Villa'
./add_station.sh 'Kent Ridge'
./add_station.sh 'one-north'

# create interchange buona vista CC-EW
git merge EW -m 'Buona Vista'
git checkout EW
git merge CC




# continue NS line
# git checkout NS

# ./add_station.sh 'Bukit Batok'
# ./add_station.sh 'Bukit Gombak'
# ./add_station.sh 'Choa Chu Kang'
# ./add_station.sh 'Yew Tee'
# ./add_station.sh 'Kranji'
# ./add_station.sh 'Marsiling'
# ./add_station.sh 'Woodlands'
# ./add_station.sh 'Admiralty'
# ./add_station.sh 'Sembawang'
# ./add_station.sh 'Yishun'
# ./add_station.sh 'Khatib'
# ./add_station.sh 'Yio Chu Kang'
# ./add_station.sh 'Ang Mo Kio'



./push.sh