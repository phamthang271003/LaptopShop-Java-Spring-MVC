<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <!doctype html>
            <html lang="en" data-bs-theme="dark">

            <head>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <title>Create new user</title>
                <!--favicon-->
                <link rel="icon" href="/admin/images/favicon-32x32.png" type="image/png">
                <!-- loader-->
                <link href="/admin/css/pace.min.css" rel="stylesheet">
                <script src="/admin/js/pace.min.js"></script>

                <!--plugins-->
                <link href="/admin/plugins/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet">
                <link rel="stylesheet" type="text/css" href="/admin/plugins/metismenu/metisMenu.min.css">
                <link rel="stylesheet" type="text/css" href="/admin/plugins/metismenu/mm-vertical.css">
                <link rel="stylesheet" type="text/css" href="/admin/plugins/simplebar/css/simplebar.css">
                <!--bootstrap css-->
                <link href="/admin/css/bootstrap.min.css" rel="stylesheet">
                <link href="/admin/css/font2.css" rel="stylesheet">
                <link href="/admin/css/font1.css" rel="stylesheet">
                <link href="/admin/css/bootstrap-extended.css" rel="stylesheet">
                <link href="/admin/sass/main.css" rel="stylesheet">
                <link href="/admin/sass/dark-theme.css" rel="stylesheet">
                <link href="/admin/sass/blue-theme.css" rel="stylesheet">
                <link href="/admin/sass/semi-dark.css" rel="stylesheet">
                <link href="/admin/sass/bordered-theme.css" rel="stylesheet">
                <link href="/admin/sass/responsive.css" rel="stylesheet">
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script>
                    $(document).ready(() => {
                        const avatarFile = $("#avatarFile");
                        avatarFile.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#avatarPreview").attr("src", imgURL);
                            $("#avatarPreview").css({ "display": "block" });
                        });
                    });

                    document.addEventListener("DOMContentLoaded", function () {
                        var today = new Date().toISOString().split('T')[0];
                        document.getElementById('bsValidation8').value = today;
                    });
                </script>
            </head>

            <body>
                <jsp:include page="../layout/header.jsp" />
                <jsp:include page="../layout/sidebar.jsp" />


                <main class="main-wrapper">
                    <div class="main-content">
                        <!--breadcrumb-->
                        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                            <div class="breadcrumb-title pe-3">Components</div>
                            <div class="ps-3">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb mb-0 p-0">
                                        <li class="breadcrumb-item"><a href="javascript:;"><i
                                                    class="bx bx-home-alt"></i></a>
                                        </li>
                                        <li class="breadcrumb-item active" aria-current="page">Validations</li>
                                    </ol>
                                </nav>
                            </div>
                            <div class="ms-auto">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-primary">Settings</button>
                                    <button type="button"
                                        class="btn btn-primary split-bg-primary dropdown-toggle dropdown-toggle-split"
                                        data-bs-toggle="dropdown"> <span class="visually-hidden">Toggle Dropdown</span>
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-right dropdown-menu-lg-end"> <a
                                            class="dropdown-item" href="javascript:;">Action</a>
                                        <a class="dropdown-item" href="javascript:;">Another action</a>
                                        <a class="dropdown-item" href="javascript:;">Something else here</a>
                                        <div class="dropdown-divider"></div> <a class="dropdown-item"
                                            href="javascript:;">Separated
                                            link</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--end breadcrumb-->


                        <div class="row">
                            <div class="col-xl-6 mx-auto">
                                <div class="card">
                                    <div class="card-header px-4 py-3">
                                        <h5 class="mb-0">Create a User</h5>
                                    </div>
                                    <div class="card-body p-4">
                                        <form:form action="/admin/user/create" class="row g-3 needs-validation"
                                            novalidate="" method="post" modelAttribute="newUser"
                                            enctype="multipart/form-data">
                                            <c:set var="errorEmail">
                                                <form:errors path="email" cssClass="invalid-feedback" />
                                            </c:set>

                                            <c:set var="errorPassword">
                                                <form:errors path="password" cssClass="invalid-feedback" />
                                            </c:set>

                                            <c:set var="errorFullName">
                                                <form:errors path="fullName" cssClass="invalid-feedback" />
                                            </c:set>

                                            <c:set var="errorPhone">
                                                <form:errors path="phone" cssClass="invalid-feedback" />
                                            </c:set>

                                            <c:set var="errorAddress">
                                                <form:errors path="address" cssClass="invalid-feedback" />
                                            </c:set>

                                            <div class="col-md-6">
                                                <label for="bsValidation4" class="form-label">Email</label>
                                                <form:input type="email"
                                                    class="form-control ${not empty errorEmail ? 'is-invalid' : ''}"
                                                    id="bsValidation4" placeholder="Email" path="email" required="" />
                                                ${errorEmail}
                                            </div>

                                            <div class="col-md-6">
                                                <label for="bsValidation5" class="form-label">Password</label>
                                                <form:input type="password"
                                                    class="form-control ${not empty errorPassword ? 'is-invalid' : ''}"
                                                    id="bsValidation5" placeholder="Password" required=""
                                                    path="password" />
                                                ${errorPassword}
                                            </div>

                                            <div class="col-md-6">
                                                <label for="bsValidation1" class="form-label">Full Name</label>
                                                <form:input type="text"
                                                    class="form-control ${not empty errorFullName ? 'is-invalid' : ''}"
                                                    id="bsValidation1" placeholder="First Name" value="" required=""
                                                    path="fullName" />
                                                ${errorFullName}
                                            </div>

                                            <div class="col-md-6">
                                                <label for="bsValidation3" class="form-label">Phone</label>
                                                <form:input type="text"
                                                    class="form-control ${not empty errorPhone ? 'is-invalid' : ''}"
                                                    id="bsValidation3" placeholder="Phone" required="" path="phone" />
                                                ${errorPhone}
                                            </div>
                                            <div class="col-md-12">
                                                <label for="bsValidation13" class="form-label">Address</label>
                                                <form:textarea
                                                    class="form-control ${not empty errorAddress ? 'is-invalid' : ''}"
                                                    id="bsValidation13" placeholder="Address ..." rows="3" required=""
                                                    path="address" />

                                                ${errorAddress}
                                            </div>

                                            <div class="col-md-12">
                                                <label for="bsValidation8" class="form-label">Created At</label>
                                                <form:input type="date" class="form-control" id="bsValidation8"
                                                    required="" path="createdAt" />

                                            </div>
                                            <div class="col-md-6">
                                                <label for="bsValidation9" class="form-label">Role</label>
                                                <form:select id="bsValidation9" class="form-select" required=""
                                                    path="role.name">
                                                    <form:option value="ADMIN">Admin</form:option>
                                                    <form:option value="USER">User</form:option>
                                                </form:select>

                                            </div>

                                            <div class="col-md-6">
                                                <label for="avatarFile" class="form-label">Avatar:</label>
                                                <input class="form-control" type="file" id="avatarFile"
                                                    accept=".png,.jpg,.jpeg" name="file" />
                                            </div>
                                            <div class="col-md-12">
                                                <div class="row mb-4">
                                                    <img style="max-height: 250px;display: none;" alt="avatar preview"
                                                        id="avatarPreview">
                                                </div>
                                            </div>

                                            <div class="col-md-12">
                                                <div class="d-md-flex d-grid align-items-center gap-3">
                                                    <button type="submit"
                                                        class="btn btn-grd-primary px-4">Submit</button>
                                                    <button type="reset" class="btn btn-grd-info px-4">Reset</button>
                                                </div>
                                            </div>
                                        </form:form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--end row-->



                    </div>
                </main>


                <!--start overlay-->
                <div class="overlay btn-toggle"></div>
                <!--end overlay-->


                <!--start footer-->
                <jsp:include page="../layout/footer.jsp" />
                <!--end footer-->

                <!--start cart-->
                <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasCart">
                    <div class="offcanvas-header border-bottom h-70">
                        <h5 class="mb-0" id="offcanvasRightLabel">8 New Orders</h5>
                        <a href="javascript:;" class="primaery-menu-close" data-bs-dismiss="offcanvas">
                            <i class="material-icons-outlined">close</i>
                        </a>
                    </div>
                    <div class="offcanvas-body p-0">
                        <div class="order-list">
                            <div class="order-item d-flex align-items-center gap-3 p-3 border-bottom">
                                <div class="order-img">
                                    <img src="/admin/images/orders/01.png" class="img-fluid rounded-3" width="75"
                                        alt="">
                                </div>
                                <div class="order-info flex-grow-1">
                                    <h5 class="mb-1 order-title">White Men Shoes</h5>
                                    <p class="mb-0 order-price">$289</p>
                                </div>
                                <div class="d-flex">
                                    <a class="order-delete"><span class="material-icons-outlined">delete</span></a>
                                    <a class="order-delete"><span class="material-icons-outlined">visibility</span></a>
                                </div>
                            </div>

                            <div class="order-item d-flex align-items-center gap-3 p-3 border-bottom">
                                <div class="order-img">
                                    <img src="/admin/images/orders/02.png" class="img-fluid rounded-3" width="75"
                                        alt="">
                                </div>
                                <div class="order-info flex-grow-1">
                                    <h5 class="mb-1 order-title">Red Airpods</h5>
                                    <p class="mb-0 order-price">$149</p>
                                </div>
                                <div class="d-flex">
                                    <a class="order-delete"><span class="material-icons-outlined">delete</span></a>
                                    <a class="order-delete"><span class="material-icons-outlined">visibility</span></a>
                                </div>
                            </div>

                            <div class="order-item d-flex align-items-center gap-3 p-3 border-bottom">
                                <div class="order-img">
                                    <img src="/admin/images/orders/03.png" class="img-fluid rounded-3" width="75"
                                        alt="">
                                </div>
                                <div class="order-info flex-grow-1">
                                    <h5 class="mb-1 order-title">Men Polo Tshirt</h5>
                                    <p class="mb-0 order-price">$139</p>
                                </div>
                                <div class="d-flex">
                                    <a class="order-delete"><span class="material-icons-outlined">delete</span></a>
                                    <a class="order-delete"><span class="material-icons-outlined">visibility</span></a>
                                </div>
                            </div>

                            <div class="order-item d-flex align-items-center gap-3 p-3 border-bottom">
                                <div class="order-img">
                                    <img src="/admin/images/orders/04.png" class="img-fluid rounded-3" width="75"
                                        alt="">
                                </div>
                                <div class="order-info flex-grow-1">
                                    <h5 class="mb-1 order-title">Blue Jeans Casual</h5>
                                    <p class="mb-0 order-price">$485</p>
                                </div>
                                <div class="d-flex">
                                    <a class="order-delete"><span class="material-icons-outlined">delete</span></a>
                                    <a class="order-delete"><span class="material-icons-outlined">visibility</span></a>
                                </div>
                            </div>

                            <div class="order-item d-flex align-items-center gap-3 p-3 border-bottom">
                                <div class="order-img">
                                    <img src="/admin/images/orders/05.png" class="img-fluid rounded-3" width="75"
                                        alt="">
                                </div>
                                <div class="order-info flex-grow-1">
                                    <h5 class="mb-1 order-title">Fancy Shirts</h5>
                                    <p class="mb-0 order-price">$758</p>
                                </div>
                                <div class="d-flex">
                                    <a class="order-delete"><span class="material-icons-outlined">delete</span></a>
                                    <a class="order-delete"><span class="material-icons-outlined">visibility</span></a>
                                </div>
                            </div>

                            <div class="order-item d-flex align-items-center gap-3 p-3 border-bottom">
                                <div class="order-img">
                                    <img src="/admin/images/orders/06.png" class="img-fluid rounded-3" width="75"
                                        alt="">
                                </div>
                                <div class="order-info flex-grow-1">
                                    <h5 class="mb-1 order-title">Home Sofa Set </h5>
                                    <p class="mb-0 order-price">$546</p>
                                </div>
                                <div class="d-flex">
                                    <a class="order-delete"><span class="material-icons-outlined">delete</span></a>
                                    <a class="order-delete"><span class="material-icons-outlined">visibility</span></a>
                                </div>
                            </div>

                            <div class="order-item d-flex align-items-center gap-3 p-3 border-bottom">
                                <div class="order-img">
                                    <img src="/admin/images/orders/07.png" class="img-fluid rounded-3" width="75"
                                        alt="">
                                </div>
                                <div class="order-info flex-grow-1">
                                    <h5 class="mb-1 order-title">Black iPhone</h5>
                                    <p class="mb-0 order-price">$1049</p>
                                </div>
                                <div class="d-flex">
                                    <a class="order-delete"><span class="material-icons-outlined">delete</span></a>
                                    <a class="order-delete"><span class="material-icons-outlined">visibility</span></a>
                                </div>
                            </div>

                            <div class="order-item d-flex align-items-center gap-3 p-3 border-bottom">
                                <div class="order-img">
                                    <img src="/admin/images/orders/08.png" class="img-fluid rounded-3" width="75"
                                        alt="">
                                </div>
                                <div class="order-info flex-grow-1">
                                    <h5 class="mb-1 order-title">Goldan Watch</h5>
                                    <p class="mb-0 order-price">$689</p>
                                </div>
                                <div class="d-flex">
                                    <a class="order-delete"><span class="material-icons-outlined">delete</span></a>
                                    <a class="order-delete"><span class="material-icons-outlined">visibility</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="offcanvas-footer h-70 p-3 border-top">
                        <div class="d-grid">
                            <button type="button" class="btn btn-grd btn-grd-primary" data-bs-dismiss="offcanvas">View
                                Products</button>
                        </div>
                    </div>
                </div>
                <!--end cart-->



                <!--start switcher-->
                <button
                    class="btn btn-grd btn-grd-primary position-fixed bottom-0 end-0 m-3 d-flex align-items-center gap-2"
                    type="button" data-bs-toggle="offcanvas" data-bs-target="#staticBackdrop">
                    <i class="material-icons-outlined">tune</i>Customize
                </button>

                <div class="offcanvas offcanvas-end" data-bs-scroll="true" tabindex="-1" id="staticBackdrop">
                    <div class="offcanvas-header border-bottom h-70">
                        <div class="">
                            <h5 class="mb-0">Theme Customizer</h5>
                            <p class="mb-0">Customize your theme</p>
                        </div>
                        <a href="javascript:;" class="primaery-menu-close" data-bs-dismiss="offcanvas">
                            <i class="material-icons-outlined">close</i>
                        </a>
                    </div>
                    <div class="offcanvas-body">
                        <div>
                            <p>Theme variation</p>

                            <div class="row g-3">
                                <div class="col-12 col-xl-6">
                                    <input type="radio" class="btn-check" name="theme-options" id="BlueTheme"
                                        checked="">
                                    <label
                                        class="btn btn-outline-secondary d-flex flex-column gap-1 align-items-center justify-content-center p-4"
                                        for="BlueTheme">
                                        <span class="material-icons-outlined">contactless</span>
                                        <span>Blue</span>
                                    </label>
                                </div>
                                <div class="col-12 col-xl-6">
                                    <input type="radio" class="btn-check" name="theme-options" id="LightTheme">
                                    <label
                                        class="btn btn-outline-secondary d-flex flex-column gap-1 align-items-center justify-content-center p-4"
                                        for="LightTheme">
                                        <span class="material-icons-outlined">light_mode</span>
                                        <span>Light</span>
                                    </label>
                                </div>
                                <div class="col-12 col-xl-6">
                                    <input type="radio" class="btn-check" name="theme-options" id="DarkTheme">
                                    <label
                                        class="btn btn-outline-secondary d-flex flex-column gap-1 align-items-center justify-content-center p-4"
                                        for="DarkTheme">
                                        <span class="material-icons-outlined">dark_mode</span>
                                        <span>Dark</span>
                                    </label>
                                </div>
                                <div class="col-12 col-xl-6">
                                    <input type="radio" class="btn-check" name="theme-options" id="SemiDarkTheme">
                                    <label
                                        class="btn btn-outline-secondary d-flex flex-column gap-1 align-items-center justify-content-center p-4"
                                        for="SemiDarkTheme">
                                        <span class="material-icons-outlined">contrast</span>
                                        <span>Semi Dark</span>
                                    </label>
                                </div>
                                <div class="col-12 col-xl-6">
                                    <input type="radio" class="btn-check" name="theme-options" id="BoderedTheme">
                                    <label
                                        class="btn btn-outline-secondary d-flex flex-column gap-1 align-items-center justify-content-center p-4"
                                        for="BoderedTheme">
                                        <span class="material-icons-outlined">border_style</span>
                                        <span>Bordered</span>
                                    </label>
                                </div>
                            </div><!--end row-->

                        </div>
                    </div>
                </div>
                <!--start switcher-->

                <!--bootstrap js-->
                <script src="/admin/js/bootstrap.bundle.min.js"></script>

                <!--plugins-->
                <script src="/admin/js/jquery.min.js"></script>
                <!--plugins-->
                <script src="/admin/plugins/perfect-scrollbar/js/perfect-scrollbar.js"></script>
                <script src="/admin/plugins/metismenu/metisMenu.min.js"></script>
                <script src="/admin/plugins/apexchart/apexcharts.min.js"></script>
                <script src="/admin/plugins/simplebar/js/simplebar.min.js"></script>
                <script src="/admin/plugins/peity/jquery.peity.min.js"></script>
                <script>
                    $(".data-attributes span").peity("donut")
                </script>
                <script src="/admin/js/dashboard2.js"></script>
                <script src="/admin/js/main.js"></script>


            </body>

            </html>