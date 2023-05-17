const express = require('express')
const bodyParser = require('body-parser')

const app = express()
app.use(bodyParser.urlencoded({ extended: false}))
app.use(bodyParser.json())

const port = 3030
const usersStatic = [
    {
        id: 1,
        name: "Arief",
        hobby: "Eat",
        type_data: "premium"
    },
    {
        id: 2,
        name: "Binto",
        hobby: "Sleep",
        type_data: "basic"
    },
    {
        id: 3,
        name: "Geri",
        hobby: "Reading",
        type_data: "premium"
    },
    {
        id: 4,
        name: "Popa",
        hobby: "Cooking",
        type: "basic"
    },
    {
        id: 5,
        name: "Panpan",
        hobby: "Shopping",
        type_data: "premium"
    }



]

let checkData = (req,res, next) => {
    console.log(`Saya Mengecek Data Ini : ${req.body}`)
    next()
}

app.use(checkData)

app.get("/", (req, res) => {
    res.send("Hello Nakama Skilvul, Ini Adalah Root")
})

app.get("/users", (req, res) => {
    res.json(
        usersStatic
    )
})

app.get("/users/:id", (req, res) => {
    let response = usersStatic[req.params.id - 1]
    res.json(
        response
    )
})

app.post("/users", (req, res) => {
    let response = {
        id: usersStatic.length + 1,
        name: req.body.name,
        hobby: req.body.hobby
    }
    usersStatic.push(response)
    res.json(response)
})

app.put("/users/:id", (req, res) => {
    let incomingUpdateDate = {
        id: req.params.id,
        name: req.body.name,
        hobby: req.body.hobby
    }
    usersStatic[req.params.id - 1] = incomingUpdateDate

    res.json(usersStatic[req.params.id - 1])
    
})

app.delete("/users/:id", (req, res) => {
    usersStatic.splice(req.params.id - 1, 1)
    res.status(204)
    res.send()
})

app.listen(port, () => {
    console.log(`This Application Run on Port : ${port}`)
})