// server.js

const express = require('express');
const mongoose = require('mongoose');
const app = express();
const cors = require('cors');
const https = require('https');

app.use(cors());

// Connect to MongoDB
mongoose.connect('mongodb://localhost:27017/theftdetection', {
    useNewUrlParser: true,
    useUnifiedTopology: true
})
.then(() => console.log('MongoDB Connected'))
.catch(err => console.log(err));


const fs = require('fs');

const options = {
    
    secureOptions: require('constants').SSL_OP_NO_TLSv1 | require('constants').SSL_OP_NO_TLSv1_1 // Adjust TLS options as needed
};

const server = https.createServer(options, app);
// Define routes
// For example, you can define routes to handle CRUD operations on your data

// Start the server
app.get('/data', (req, res) => {
    // Your route handling logic here
    console.log("serverrr");
  });
const port = 3000;
app.listen(port, () => console.log(`Server running on port ${port}`));
