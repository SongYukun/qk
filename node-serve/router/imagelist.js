const express=require("express");
const pool=require("../pool");

const router=express.Router();

router.get("/list",(req,res)=>{
  var sql="SELECT id,img_url,title FROM qk_imagelist";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:result})
  })
})

router.get("/nav",(req,res)=>{
  var sql="SELECT id, img_url, href, title FROM qk_nav";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:result})
  })
})

router.get("/productt",(req,res)=>{
  var sql="SELECT id,title, img_url, href, avatar FROM qk_product WHERE avatar=1";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:result})
  })
})

router.get("/productb",(req,res)=>{
  var sql="SELECT id,title, img_url, href, avatar FROM qk_product WHERE avatar=2";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:result})
  })
})

router.get("/topic",(req,res)=>{
  var sql="SELECT id,img_url, href FROM  qk_topic";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1,msg:result})
  })
})


module.exports=router;