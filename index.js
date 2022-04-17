const express = require('express')
const app = express()
const PORT = 3020

app.get('/',(req,res)=>{
    res.send("<h1>Hello accenture</h1>")
})

app.listen(PORT, () => {
    console.log(`app listening on port ${PORT}`)
})
