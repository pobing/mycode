# mycode app

这是一个实现代码高亮的rails 网站项目。它可以对200多种编程语言片段进行高亮，格式化，并且可以分享，收藏代码。
支持github 帐号和微博帐号登录。


## 技术

  * ruby 1.9.3
  * rails 3.2.3
  * mysql
  * resque
  * redis
  ...

##使用

  $ cd /tmp
  $ git clone git@github.com:pobing/mycode.git
  $ cd mycode
  $ bundle install
  $ bundle exec rake setup
  $ rails s

##参考资源

  * [http://railscasts.com/episodes/271-resque?view=asciicast](http://railscasts.com/episodes/271-resque?view=asciicast)
  * [http://pygments.org/](http://pygments.org/)

## 未完待续