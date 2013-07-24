#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: "test1@test.com",password:"12345678",password_confirmation:"12345678")

Snippet.create(name:"欢迎使用Mycode", description:"这是一个实现代码高亮的rails 网站项目。它可以对200多种编程语言片段进行高亮，格式化，并且可以分享，收藏代码。您可以使用以下帐号登录： 用户名：test1@test.com 密码：12345678")