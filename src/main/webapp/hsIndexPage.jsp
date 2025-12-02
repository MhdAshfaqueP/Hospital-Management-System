<!DOCTYPE html>
<html lang="en">


    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!-- Title  -->
        <title>Medilife - Health &amp; Medical Template | Home</title>

        <!-- Favicon  -->
        <link rel="icon" href="img/core-img/favicon.ico">

        <!-- Style CSS -->
        <link rel="stylesheet" href="style.css">

    </head>

    <body>
        <!-- Preloader -->
        <div id="preloader">
            <div class="medilife-load"></div>
        </div>

        <!-- ***** Header Area Start ***** -->
        <header class="header-area">
            <!-- Top Header Area -->
            <div class="top-header-area">
                <div class="container h-100">
                    <div class="row h-100">
                        <div class="col-12 h-100">
                            <div class="h-100 d-md-flex justify-content-between align-items-center">
                                <p>Welcome to <span>Medifile</span> template</p>
                                <p>Opening Hours : Monday to Saturday - 8am to 10pm Contact : <span>+12-823-611-8721</span></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Main Header Area -->
            <div class="main-header-area" id="stickyHeader">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12 h-100">
                            <div class="main-menu h-100">
                                <nav class="navbar h-100 navbar-expand-lg">
                                    <!-- Logo Area  -->
                                    <a class="navbar-brand" href="hsIndexPage.jsp"><img src="img/core-img/logo.png" alt="Logo"></a>

                                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#medilifeMenu" aria-controls="medilifeMenu" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

                                    <div class="collapse navbar-collapse" id="medilifeMenu">
                                        <!-- Menu Area -->
                                        <ul class="navbar-nav ml-auto">
                                            <li class="nav-item active">
                                                <a class="nav-link" href="hsIndexPage.jsp">Home <span class="sr-only">(current)</span></a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="hsAboutUs.jsp">About Us</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="hsServices.jsp">Services</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="hsContact.jsp">Contact</a>
                                            </li>
                                        </ul>
                                        <!-- logout Button -->
                                        <a href="hsAdminLogin.jsp" class="btn medilife-appoint-btn ml-30" onclick="logoutUser()">Logout</a>
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- ***** Header Area End ***** -->

        <!-- ***** Book An Appoinment Area Start ***** -->
        <div class="medilife-book-an-appoinment-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="appointment-form-content">
                            <div class="row no-gutters align-items-center">
                                <div class="col-12 col-lg-9">
                                    <div class="medilife-appointment-form">
                                        <form id="appointment-form" class="active" action="HsAppointmentController" method="post">
                                            <div class="row align-items-end">
                                                <div class="col-12 col-md-4">
                                                    <div class="form-group">
                                                        <select class="form-control" id="speciality" name="speciality">
                                                            <option value="Dentist">Dentist</option>
                                                            <option value="Cardiologist">Cardiologist</option>
                                                            <option value="Neurologist">Neurologist</option>
                                                            <option value="Pediatrician">Pediatrician</option>
                                                            <option value="Dermatologist">Dermatologist</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-12 col-md-4">
                                                    <div class="form-group">
                                                        <select class="form-control" id="doctors" name="doctor">
                                                            <option value="">Select Doctor</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-12 col-md-2">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" name="date" id="date" placeholder="Date">
                                                    </div>
                                                </div>
                                                <div class="col-12 col-md-2">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" name="time" id="time" placeholder="Time">
                                                    </div>
                                                </div>

                                                <div class="col-12 col-md-5 mb-0">
                                                    <div class="form-group mb-0">
                                                        <button type="submit" class="btn medilife-btn">Make an Appointment <span>+</span></button>
                                                    </div>
                                                </div>
                                            </div>
                                            <input type="hidden" name="names" value="<%= session.getAttribute("p_name")%>">
                                            <input type="hidden" name="email" value="<%= session.getAttribute("p_email")%>">
                                            <input type="hidden" name="number" value="<%= session.getAttribute("p_phone")%>">

                                        </form>
                                    </div>
                                </div>
                                <div class="col-12 col-lg-3">
                                    <div class="medilife-contact-info">
                                        <!-- Single Contact Info -->
                                        <div class="single-contact-info mb-30">
                                            <img src="img/icons/alarm-clock.png" alt="">
                                            <p>Mon - Sat 08:00 - 21:00 <br>Sunday CLOSED</p>
                                        </div>
                                        <!-- Single Contact Info -->
                                        <div class="single-contact-info mb-30">
                                            <img src="img/icons/envelope.png" alt="">
                                            <p>0080 673 729 766 <br>contact@business.com</p>
                                        </div>
                                        <!-- Single Contact Info -->
                                        <div class="single-contact-info">
                                            <img src="img/icons/map-pin.png" alt="">
                                            <p>Kadavanthra<br>Kochi</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- ***** Book An Appoinment Area End ***** -->

        <!-- ***** About Us Area Start ***** -->
        <section class="medica-about-us-area section-padding-100-20">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-4">
                        <div class="medica-about-content">
                            <h2>We always put our patients first</h2>
                            <p>Every decision we make is guided by your well-being. From personalized treatment plans to attentive support at every step, our priority is to ensure you feel heard, respected, and cared for throughout your healthcare experience.</p>
                            <a href="#" class="btn medilife-btn mt-50">View the services <span>+</span></a>
                        </div>
                    </div>
                    <div class="col-12 col-lg-8">
                        <div class="row">
                            <!-- Single Service Area -->
                            <div class="col-12 col-sm-6">
                                <div class="single-service-area d-flex">
                                    <div class="service-icon">
                                        <i class="icon-doctor"></i>
                                    </div>
                                    <div class="service-content">
                                        <h5>The Best Doctors</h5>
                                        <p>Our team brings together highly skilled, compassionate physicians who are leaders in their fields. They combine advanced medical expertise with genuine patient-centered care, ensuring you receive the highest standard of treatment with clarity, confidence, and comfort.</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Service Area -->
                            <div class="col-12 col-sm-6">
                                <div class="single-service-area d-flex">
                                    <div class="service-icon">
                                        <i class="icon-blood-donation-1"></i>
                                    </div>
                                    <div class="service-content">
                                        <h5>Baby Nursery</h5>
                                        <p>Our baby nursery provides a warm, nurturing environment designed for your little ones comfort and safety.</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Service Area -->
                            <div class="col-12 col-sm-6">
                                <div class="single-service-area d-flex">
                                    <div class="service-icon">
                                        <i class="icon-flask-2"></i>
                                    </div>
                                    <div class="service-content">
                                        <h5>Laboratory</h5>
                                        <p>Equipped with advanced technology and staffed by skilled professionals, we ensure every test is handled with precision, efficiency, and the highest standards of quality.</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Service Area -->
                            <div class="col-12 col-sm-6">
                                <div class="single-service-area d-flex">
                                    <div class="service-icon">
                                        <i class="icon-emergency-call-1"></i>
                                    </div>
                                    <div class="service-content">
                                        <h5>Emergency Room</h5>
                                        <p>With a dedicated team available around the clock, we respond quickly, treat efficiently, and ensure every patient receives urgent, compassionate attention in critical moments.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** About Us Area End ***** -->

        <!-- ***** Gallery Area Start ***** -->

        <!-- ***** Gallery Area End ***** -->

        <!-- ***** Features Area Start ***** -->
        <div class="medilife-features-area section-padding-100">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12 col-lg-6">
                        <div class="features-content">
                            <p>A new way to treat pacients in a revolutionary facility</p>
                            <p>We have reimagined healthcare with an innovative facility designed to elevate every aspect of the patient experience. Combining cutting-edge technology, modern comfort, and a forward-thinking approach to treatment, we deliver care that is more efficient, more personalized, and truly transformative.</p>
                            <a href="#" class="btn medilife-btn mt-50">View the services <span>+</span></a>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6">
                        <div class="features-thumbnail">
                            <img src="img/bg-img/medical1.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ***** Features Area End ***** -->


        <!-- ***** Emergency Area Start ***** -->
        <div class="medilife-emergency-area section-padding-100-50">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-6">
                        <div class="emergency-content">
                            <i class="icon-smartphone"></i>
                            <h2>For Emergency calls</h2>
                            <h3>+12-823-611-8721</h3>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- ***** Emergency Area End ***** -->

        <!-- Bottom Footer Area -->
        <div class="bottom-footer-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="bottom-footer-content">
                            <!-- Copywrite Text -->
                            <div class="copywrite-text">
                                <p><a target="_blank" href="https://www.templateshub.net">Templates Hub</a>
                                </p>                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ***** Footer Area End ***** -->

    <!-- jQuery (Necessary for All JavaScript Plugins) -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/active.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


    <script>
                                            $(document).ready(function () {
                                                $('#speciality').change(function () {
                                                    var depId = $(this).val();
                                                    $('#doctors').empty().append('<option value="">Loading...</option>');

                                                    $.ajax({
                                                        url: '<%=request.getContextPath()%>/GetDoctorsServlet',
                                                        method: 'GET',
                                                        data: {speciality: depId},
                                                        dataType: 'json',
                                                        success: function (response) {
                                                            console.log(response);
                                                            $('#doctors').empty().append('<option value="">Select Doctor</option>');
                                                            $.each(response, function (index, doctor) {
                                                                $('#doctors').append('<option value="' + doctor.id + '">' + doctor.name + '</option>');
                                                            });
                                                        },
                                                        error: function (xhr, status, error) {
                                                            console.error("AJAX Error:", status, error);
                                                            $('#doctors').empty().append('<option value="">Error loading doctors</option>');
                                                        }
                                                    });
                                                });
                                            });
    </script>

    <script>
        document.getElementById("appointment-form").addEventListener("submit", function (event) {
            event.preventDefault();
            Swal.fire({
                icon: 'success',
                title: 'Appointment Scheduled!',
                text: 'Your appointment has been successfully booked.',
                confirmButtonColor: '#007bff'
            }).then(() => {
                this.submit();
            });
        });
    </script>

    <script>
        function logoutUser() {
            // Clear client-side data
            sessionStorage.clear();
            localStorage.clear();

            // Redirect without adding to history
            window.location.replace("hsAdminLogin.jsp");
        }
    </script>
</body>


</html>