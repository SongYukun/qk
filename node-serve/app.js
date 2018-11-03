const express=require("express");
const session=require("express-session");
const imgList=require("./router/imagelist");
const users=require("./router/users")

const bodyParse=require("body-parser");

var app=express();
app.use(bodyParse.urlencoded({extended:false}));
const cors=require("cors");
app.use(cors({
	origin:["http://localhost:8080"],
	credentials:true
}));

app.listen(3000,()=>{
  console.log("服务器创建成功")
});

app.use(express.static(__dirname+"/public"));
app.use(session({
	secret:'随机字符串',
	resave:false,
	saveUninitialized:true
}));
app.use("/imagelist",imgList);
app.use("/users",users);
