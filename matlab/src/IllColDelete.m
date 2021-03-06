% function resp = IllColDelete(servAddr, db, user, pwd, col, filename)
%
% Long Le
% University of Illinois
% longle1@illinois.edu
%
function resp = IllColDelete(servAddr, db, user, pwd, col, filename)

params = {'dbname', db, 'colname', col, 'user', user, 'passwd', pwd, 'filename', filename};
queryString = http_paramsToString(params);
resp = urlread2(['http://' servAddr '/col?' queryString], 'DELETE', [], [], 'READ_TIMEOUT', 15000);
