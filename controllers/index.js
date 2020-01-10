let mapping_index = {
  method: 'GET',
  path: '/',
  fn: async (ctx, next) => {
    ctx.response.body = `<h1>Index</h1>`;
  }
}

let mapping_hello = {
  method: 'GET',
  path: '/hello',
  fn: async (ctx, next) => {
    ctx.response.body = `<h1>hello</h1>`;
  }
}

module.exports =  {
  mapping_index,
  mapping_hello
}