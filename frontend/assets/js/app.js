console.log("Frontend cargado.");

// API Python
fetch("http://localhost:5001/data")
  .then(res => res.json())
  .then(data => console.log("API Python:", data))
  .catch(err => console.error(err));

// API Node.js
fetch("http://localhost:3000/users")
  .then(res => res.json())
  .then(users => console.log("API Node:", users))
  .catch(err => console.error(err));

// API C#
fetch("http://localhost:5000/Auth/status")
  .then(res => res.json())
  .then(status => console.log("API C#:", status))
  .catch(err => console.error(err));
