% function resp = IllGridPost(servAddr, db, user, pwd, col, filename, data)
%
% Long Le <longle1@illinois.edu>
% University of Illinois
%
function resp = IllGridPost(servAddr, db, user, pwd, col, filename, data)

params = {'dbname', db, 'colname', col, 'user', user, 'passwd', pwd, 'filename', filename};
queryString = http_paramsToString(params);
resp = urlread2(['http://' servAddr '/gridfs?' queryString], 'POST', data, [], 'READ_TIMEOUT', 15000);
