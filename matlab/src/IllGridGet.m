% function rawdat = IllGridGet(servAddr, db, user, pwd, gridCol, filename)
% Download data given a filename
%
% rawdat is a char matrix
%
% Long Le
% University of Illinois
% longle1@illinois.edu
%
function rawdat = IllGridGet(servAddr, db, user, pwd, gridCol, filename)

params = {'dbname', db, 'colname', gridCol, 'user', user, 'passwd', pwd, 'filename', filename};
queryString = http_paramsToString(params);
rawdat = urlread2(['http://' servAddr '/gridfs?' queryString], 'GET', [], [], 'READ_TIMEOUT', 15000);
