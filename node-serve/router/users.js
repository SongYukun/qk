const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.post('/add',(req,res)=>{
  var obj=req.body;
  var $uname = obj.uname;
  if(!$uname){
    res.send({code: 401, msg: 'uname required'});
	  return;
  }
  var $upwd = obj.upwd;
  if(!$upwd){
    res.send({code: 402, msg: 'upwd required'});
	  return;
  }
  var sql = 'INSERT INTO qk_user VALUES(NULL,?,?)';
  pool.query(sql,[$uname,$upwd],(err,result)=>{
    if(err) throw err;
	  res.send({code: 200, msg: 'register suc'});
  });
});

router.post("/signin",(req,res)=>{
  var {uname,upwd}=req.body;
  var sql="select * from qk_user where uname=? and upwd=?";
  pool.query(sql,[uname,upwd],(err,result)=>{
    if(err) console.log(err);
    res.writeHead(200,{
      "Content-Type":"application/json;charset=utf-8"
    });
    if(result.length>0){
      req.session.uid=result[0].uid;
      res.write(JSON.stringify({ok:1}))
    }else
      res.write(JSON.stringify({
        ok:0, msg:"用户名或密码错误"
      }))
    res.end();
    //http://localhost:3000/users/signin/?uname=dingding&upwd=123456
  })
})
router.get("/islogin",(req,res)=>{
  if(req.session.uid!==undefined){
    var uid=req.session.uid;
    var sql="select * from qk_user where uid=?";
    pool.query(sql,[uid],(err,result)=>{
      if(err) console.log(err);
      res.send({ok:1,uname:result[0].uname})
    })
  }else{
    res.send({ok:0})
  }
})
router.get("/signout",(req,res)=>{
 req.session.uid=undefined;
 res.send();
})


module.exports=router;