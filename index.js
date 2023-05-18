const express = require('express')
const bodyParser = require('body-parser')
const jwt = require('jsonwebtoken');
const dotenv = require('dotenv');

// get config vars
dotenv.config();

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

const dataUsers = [
    {
        "user_id": 11,
        "email": "arief@gmail.com",
        "password": "12345678",
        "role": "admin",
    },
    {
        "user_id": 12,
        "email": "arisandi@gmail.com",
        "password": "abcdefg",
        "role": "premium",
    },
    {
        "user_id": 13,
        "email": "dhian@gmail.com",
        "password": "abcdefg",
        "role": "basic",
    }
]

let checkData = (req,res, next) => {
    // console.log(`Saya Mengecek Data Ini : ${req.body}`)
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
        hobby: req.body.hobby,
        type_data: req.body.type_data
    }
    usersStatic.push(response)
    res.json(response)
})

app.put("/users/:id", (req, res) => {
    let incomingUpdateDate = {
        id: req.params.id,
        name: req.body.name,
        hobby: req.body.hobby,
        type_data: req.body.type_data
    }
    console.log(incomingUpdateDate.type_data);
    usersStatic[req.params.id - 1] = incomingUpdateDate

    res.json(incomingUpdateDate)
})

app.delete("/users/:id", (req, res) => {
    usersStatic.splice(req.params.id - 1, 1)
    res.status(204)
    res.send()
})

app.post("/login", (req, res) => {
    let email = req.body.email
    let password = req.body.password

    let response = {}
    let foundUser = {}

    for(let i=0;i < dataUsers.length; i++) {
        if(dataUsers[i].email == email) {
            foundUser = dataUsers[i]
        }
    }

    if(Object.keys(foundUser).length == 0) {
        response = {
            status: "ERROR",
            message: "User not Found"
        }
        res.status(401).json(response)
        return
    }

    if(foundUser.password != password) {
        response = {
            status: "ERROR",
            message: "Combination Email and Password not Match"
        }
        res.status(401).json(response)
        return
    }

    let jwt_payload = {
        user_id: foundUser.user_id
    }

    let access_token = jwt.sign(jwt_payload, process.env.TOKEN_SECRET, { expiresIn: '1800s' });
    response = {
        status: "SUCCESS",
        access_token: access_token
    }
    res.json(response)
})

app.listen(port, () => {
    console.log(`This Application Run on Port : ${port}`)
})