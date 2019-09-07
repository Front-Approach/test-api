'use strict';

module.exports = app => {
    class login extends app.Service {
        constructor(ctx) {
            super(ctx);
        }   

        async login(options) {
            const db1 = this.ctx.app.mysql.get('db1');
            const {username, password} = options;
            const getUserSql = 'select * from users where userName=? AND password=?';
            let userInfo = await db1.query(getUserSql, [username, password]);
            if (userInfo.length <= 0) {
                throw Error('What\'s your problem');
            }
            return {
                successful: true,
                code: 201
            };
        }
    }

    return login;
}