function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    apiurl: 'https://api.realworld.io/'
  }
  if (env == 'dev') {

    config.email = '2704@test.com'
    config.password = '2704'
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}