
# 项目初始化过程(自动代码生成的过程)
## 自动产生代码-
padrino g project shen_xin  -d mongoid -t minitest -e haml


## 启动后台MongoDB数据库
mongod --fork --logpath=/data/db/mongodb.log --dbpath=/data/db
可以预先利用手动创建数据库，数据库名字见config文件夹


## 建立notice 模型


padrino g model notice num:Integer title:string toname:string body:string sig:string attach:string sname:string snumber:string sorg:string  togroup:Array tognum:Array over:string ack:boolean remind:boolean status:string priority:string


## 建立group模型

padrino g model group num:integer name:string  invitec:string inviteb:string member:Array owner:integer admin:Array


##  建立用户模型

padrino g model users app_id:Array number:integer email:string mphone:string name:string cnumber:string passwd:string


# 自动创建后台应用admin
paddrino g admin

# 自动产生模型的CRUD页面

padrino g admin_page notice
padrino g admin_page group
padrino g admin_page user

## 增加thin web 服务器
add a line in Gemfile 
gem 'thin'

# 项目安装
##  Ruby Install on Linux , google it
##  git clone https://github.com/grasp/shen_xin/shen_xin.git master --depth=1
##  cd shen_xin ;  bundle install来安装所有的GEM 依赖库
##  启动项目 bundle exec thin start
##  visit localhost:3000




