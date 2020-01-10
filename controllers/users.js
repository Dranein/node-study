let mapping_login = {
  method: 'POST',
  path: '/user',
  fn: async (ctx, next) => {
    let name = ctx.request.body.name || '',
        password = ctx.request.body.password || '';
    console.log(`signin with name: ${name}, password: ${password}`);
    if (name === 'koa' && password === '12345') {
      ctx.response.body = `<h1>Welcome, ${name}!</h1>`;
    } else {
      ctx.response.body = `<h1>Login failed!</h1><p><a href="/login">Try again</a></p>`;
    }
  }
};

module.exports = {
  mapping_login
}