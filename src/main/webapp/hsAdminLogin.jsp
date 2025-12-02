<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Hospital Login</title>
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
  <style>
    *,
    *:before,
    *:after {
      padding: 0;
      margin: 0;
      box-sizing: border-box;
    }

    body {
      background-color: #080710;
      font-family: 'Poppins', sans-serif;
    }

    .background {
      width: 430px;
      height: 520px;
      position: absolute;
      transform: translate(-50%, -50%);
      left: 50%;
      top: 50%;
    }

    .background .shape {
      height: 200px;
      width: 200px;
      position: absolute;
      border-radius: 50%;
    }

    .shape:first-child {
      background: linear-gradient(#1845ad, #23a2f6);
      left: -80px;
      top: -80px;
    }

    .shape:last-child {
      background: linear-gradient(to right, #ff512f, #f09819);
      right: -30px;
      bottom: -80px;
    }

    .tab-container {
      position: absolute;
      transform: translate(-50%, -50%);
      top: 50%;
      left: 50%;
      width: 400px;
      background-color: rgba(255, 255, 255, 0.13);
      border-radius: 10px;
      backdrop-filter: blur(10px);
      border: 2px solid rgba(255, 255, 255, 0.1);
      box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);
      overflow: hidden;
    }

    .tab-buttons {
      display: flex;
    }

    .tab-button {
      flex: 1;
      padding: 15px 0;
      text-align: center;
      cursor: pointer;
      color: #fff;
      background-color: rgba(255, 255, 255, 0.1);
      font-weight: 500;
      transition: 0.3s;
    }

    .tab-button.active {
      background-color: #ffffff;
      color: #080710;
      font-weight: 600;
    }

    form {
      display: none;
      flex-direction: column;
      padding: 40px 35px;
      color: #fff;
    }

    form.active {
      display: flex;
    }

    form h3 {
      text-align: center;
      margin-bottom: 20px;
      font-size: 28px;
      font-weight: 500;
    }

    label {
      margin-top: 20px;
      font-size: 16px;
      font-weight: 500;
    }

    input {
      height: 45px;
      background-color: rgba(255, 255, 255, 0.07);
      border-radius: 3px;
      padding: 0 10px;
      margin-top: 8px;
      color: #fff;
    }

    ::placeholder {
      color: #e5e5e5;
    }

    button {
      margin-top: 35px;
      background-color: #ffffff;
      color: #080710;
      padding: 12px 0;
      font-size: 17px;
      font-weight: 600;
      border-radius: 5px;
      cursor: pointer;
    }
  </style>
</head>
<body>
  <div class="background">
    <div class="shape"></div>
    <div class="shape"></div>
  </div>

  <div class="tab-container">
    <!-- Tabs -->
    <div class="tab-buttons">
      <div class="tab-button active" id="patient-tab">Patient</div>
      <div class="tab-button" id="admin-tab">Admin</div>
    </div>

    <!-- Patient Form -->
    <form id="patient-form" class="active" action="HsLoginController" method="post">

      <h3>Patient Signup</h3>

      <label for="pname">Full Name</label>
      <input type="text" id="pname" name="names" placeholder="Enter your name" required>

      <label for="pemail">Email</label>
      <input type="email" id="pemail" name="email" placeholder="Enter your email" required>

      <label for="pcontact">Contact no.</label>
      <input type="phone" id="pphone" name="number" placeholder="Enter your Phone no." required>

      <button type="submit">Sign Up</button>
    </form>

    <!-- Admin Form -->
    <form id="admin-form" action="HsAdminLoginController" method="post">
      <h3>Admin Login</h3>

      <label for="username">Username</label>
      <input type="text" name="admin_id" placeholder="Email or Phone" id="username" required>

      <label for="password">Password</label>
      <input type="password" name="password" placeholder="Password" id="password" required>

      <button type="submit">Log In</button>
    </form>
  </div>

  <script>
    const patientTab = document.getElementById('patient-tab');
    const adminTab = document.getElementById('admin-tab');
    const patientForm = document.getElementById('patient-form');
    const adminForm = document.getElementById('admin-form');

    patientTab.addEventListener('click', () => {
      patientTab.classList.add('active');
      adminTab.classList.remove('active');
      patientForm.classList.add('active');
      adminForm.classList.remove('active');
    });

    adminTab.addEventListener('click', () => {
      adminTab.classList.add('active');
      patientTab.classList.remove('active');
      adminForm.classList.add('active');
      patientForm.classList.remove('active');
    });
  </script>
</body>
</html>
