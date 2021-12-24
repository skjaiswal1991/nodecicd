const express = require('express')
const app = new express()

app.get("/",(req,res)=>{
    res.send("Welcome Node throw CI CD pipe line")
})

app.listen(3030,()=>{
    console.log("3030 post start")
})