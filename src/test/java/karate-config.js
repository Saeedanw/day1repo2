function fn() {
var env = karate.env;
if(!env) {
env = 'res';
}




var config = {
env: 'dev',
url1:'https://gorest.co.in',
url2:'https://reqres.in/',
tokenID: '92021ae10cf3512e73bf83739469f9dd4c2c2c708b468c6e8a8119e2c7939819'
}

if(env=='res'){
	config.url1 = 'https://gorest.co.in';
}
else if(env=='dev'){
	config.url2 = 'https://reqres.in/';
}
return config;
}