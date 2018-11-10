const express=require("express");
const router=express.Router();
const pool=require("../pool");
var session=[];

/**注册用户 */
router.post("/register",(req,res)=>{
  var uname=req.body.uname;
  var upwd=req.body.upwd;
  var cpwd=req.body.cpwd;
  var reg=/^\w{3,12}$/;
  if(!reg.test(uname)){
    res.send({code:3,msg:"用户名在3-12位"})
    return
  }
  if(upwd.length<6||upwd.length>16){
    res.send({code:4,msg:"密码在6-15位"})
    return
  }
  if(!cpwd==upwd){
    res.send({code:5,msg:"两次密码输入不一致"})
    return
  }
  var sql="insert into qk_user values(null,?,?,?)";
  pool.query(sql,[uname,upwd,cpwd],(err,result) =>{
    if(err) console.log(err);
    if(result.affectedRows>0){
      res.send({code:1,msg:"注册成功"})
    }else{
      res.send({code:2,msg:"注册失败"})
    }
  })
})

/**登录状态 */
router.post("/signin",(req,res)=>{
  var uname=req.body.uname;
  var upwd=req.body.upwd;
  var sql="select * from qk_user where uname=? and upwd=?";
  pool.query(sql,[uname,upwd],(err,result)=>{
    if(err) console.log(err);
    if(result.length>0){
      session.uid=result[0].uid;
      res.send({code:1,msg:result});
    }else{
      res.send({code:2,msg:"账户或密码不正确"})
    }
  })
})
/*是否登录 */
router.get("/islogin",(req,res)=>{
  if(session.uid!==undefined){
    var uid=session.uid;
    var sql="select * from qk_user where uid=?";
    pool.query(sql,[uid],(err,result)=>{
      if(err) console.log(err);
      res.send({ok:1,msg:result})
    })
  }else{
    res.send({ok:2,msg:"未登录"})
  }
})
/**注销账户 */
router.get("/signout",(req,res)=>{
 session.uid=undefined;
 res.send({ok:1})
})

router.post("/checkUname",(req,res)=>{
  var uname=req.body.uname;
  var sql='select * from qk_user where uname=?';
  pool.query(sql,[uname],(err,result)=>{
    if(err) console.log(err);
    if(result.length>0){
      res.send({code:1,msg:"用户名已存在"})
    }else{
      res.send({code:2,msg:"用户名可用"})
    }					
  })
});

module.exports=router;