const mysql=require("mysql");
var pool=mysql.createPool({
  host:"127.0.0.1",
  user:"root",
  password:"",
  database:"qk",
  port:3306,
  connectionLimit:10 //连接池10活动连接
});
module.exports=pool;