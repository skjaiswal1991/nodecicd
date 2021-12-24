const express = require('express')
const app = new express()

app.get("/",(req,res)=>{
    res.send("Welcome back node sanjay CI CD pipe line")
})
app.get("/app",(req,res)=>{
    res.send("Welcome Node throw again chnage CI CD pipe line")
})

app.listen(3030,()=>{
    console.log("3030 post start")
})