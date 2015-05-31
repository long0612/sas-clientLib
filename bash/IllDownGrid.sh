#!/bin/bash

# $1 - db name, i.e. publicDb
# $2 - username, i.e. publicUser
# $3 - password, i.e. publicPwd
# $4 - gridfs collection name, i.e. data
# $5 - filename, i.e. tmp.wav
#curl -k "https://acoustic.ifp.illinois.edu:8081/gridfs/$1/$4?user=$2&passwd=$3&filename=$5"
curl -k "http://acoustic.ifp.illinois.edu:8956/gridfs/$1/$4?user=$2&passwd=$3&filename=$5"
