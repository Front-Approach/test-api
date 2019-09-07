'use strict';

const Controller = require('egg').Controller;
const formatOutput = require('../utils/formatOutput.js');
const jwt = require('jsonwebtoken');

class LoginController extends Controller {
    async login() {
        let ctx = this.ctx;
        const keysRule = {
            username: 'string',
            password: 'string'
        }

        try {
            const {
                username,
                password
            } = ctx.request.body;
            const options = {
                username,
                password,
            };
            ctx.validate(keysRule, options);
            const result = await ctx.service.login.login(options);
            formatOutput(ctx, 'post', result);
            ctx.cookies.set('user_id', decodeURIComponent('' + username));
            
        }
        catch (error) {
            ctx.cookies.set('user_id', null);
            formatOutput(ctx, 'error', error, 422);
        }
    }
}

module.exports = LoginController;