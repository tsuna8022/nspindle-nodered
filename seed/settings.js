module.exports = {
  flowFile: 'flows.json',
  uiPort: process.env.PORT || 1880,

  // 以后你可以加管理员账号，这里先不启用
  // adminAuth: {
  //   type: "credentials",
  //   users: [
  //     { username: "admin", password: "<bcrypt-hash>", permissions: "*" }
  //   ]
  // },

  editorTheme: { tours: false },
  functionGlobalContext: {},

  // 静态资源目录，指向 /data/public
  httpStatic: 'public',

  // 暂时不启用 httpNodeAuth / httpAdminAuth
  httpNodeAuth: null,
  httpAdminAuth: null
}
