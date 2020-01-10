let mapping_login = {
  method: 'GET',
  path: '/login',
  fn: async (ctx, next) => {
    ctx.response.body = `
      <h1>Login</h1>
      <form action="/user" method="post">
        <p>Name: <input name="name" value="koa"></p>
        <p>Password: <input name="password" type="password"></p>
        <p><input type="submit" value="Submit"></p>
      </form>
    `;
  }
}

module.exports =  {
  mapping_login
}