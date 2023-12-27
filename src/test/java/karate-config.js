function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myVarName: 'someValue',
    sampleURL:'http://reqres.in/'
  }
  if (env == 'dev') {
   config.testVar='DEV'
  } else if (env == 'e2e') {
    config.testVar='PROD'
  }
  return config;
}