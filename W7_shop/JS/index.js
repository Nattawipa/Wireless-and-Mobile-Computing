/* Form Handling */
const express = require("express");
const app = express();
const cors = require("cors");

// Register the router
app.use(
    express.urlencoded({
        extended: true,
    })
);
app.use(cors());

app.get("/",async(req,res)=>{
    res.send([
        {
          "name": "Kani Kama Nigiri",
          "price": 30,
          "image": 'assets/images/1Nigiri.png'
        },
        {
          "name": "Hamachi Nigiri",
          "price": 70,
          "image": 'assets/images/2Hamachi.jpg'
        },
        {"name": "Saba Bouzushi", "price": 60, "image": 'assets/images/3Saba.jpg'},
        {"name": "Ebi Nigiri", "price": 70, "image": 'assets/images/4ebi.jpg'},
        {"name": "Unagi Nigiri", "price": 60, "image": 'assets/images/5Unagi.jpg'},
        {"name": "Tamago Nigiri", "price": 30, "image": 'assets/images/6Tamago.jpg'},
        {"name": "Maguro Nigiri", "price": 60, "image": 'assets/images/7Maguro.png'},
        {
          "name": "Kani Salad Nigiri",
          "price": 40,
          "image": 'assets/images/8Kani.jpg'
        },
        {
          "name": "Aburi Salmon Nigiri",
          "price": 70,
          "image": 'assets/images/9Aburi.png'
        },
        {"name": "Salmon Nigiri", "price": 60, "image": 'assets/images/10Salmon.jpg'}
      ]);
});

app.listen(8080, ()=>{
    console.log("listen at Port 8080");
});