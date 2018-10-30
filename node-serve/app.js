const express=require("express");
const routerImgList=require("./router/imagelist");

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
app.use("/imagelist",routerImgList);
