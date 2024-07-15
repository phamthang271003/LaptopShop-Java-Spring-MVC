<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!doctype html>
            <html lang="en" data-bs-theme="dark">

            <head>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <title>Dashboard</title>
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

            </head>

            <body>
                <jsp:include page="../layout/header.jsp" />
                <jsp:include page="../layout/sidebar.jsp" />

                <main class="main-wrapper">
                    <div class="main-content">
                        <!--breadcrumb-->
                        <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                            <div class="breadcrumb-title pe-3">eCommerce</div>
                            <div class="ps-3">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb mb-0 p-0">
                                        <li class="breadcrumb-item"><a href="javascript:;"><i
                                                    class="bx bx-home-alt"></i></a>
                                        </li>
                                        <li class="breadcrumb-item active" aria-current="page">Products</li>
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
                                            href="javascript:;">Separated link</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--end breadcrumb-->

                        <div
                            class="product-count d-flex align-items-center gap-3 gap-lg-4 mb-4 fw-medium flex-wrap font-text1">
                            <a href="javascript:;"><span class="me-1">All</span><span
                                    class="text-secondary">(88754)</span></a>
                            <a href="javascript:;"><span class="me-1">Published</span><span
                                    class="text-secondary">(56242)</span></a>
                            <a href="javascript:;"><span class="me-1">Drafts</span><span
                                    class="text-secondary">(17)</span></a>
                            <a href="javascript:;"><span class="me-1">On Discount</span><span
                                    class="text-secondary">(88754)</span></a>
                        </div>

                        <div class="row g-3">
                            <div class="col-auto">
                                <div class="position-relative">
                                    <input class="form-control px-5" type="search" placeholder="Search Products">
                                    <span
                                        class="material-icons-outlined position-absolute ms-3 translate-middle-y start-0 top-50 fs-5">search</span>
                                </div>
                            </div>
                            <div class="col-auto flex-grow-1 overflow-auto">
                                <div class="btn-group position-static">
                                    <div class="btn-group position-static">
                                        <button type="button" class="btn btn-filter dropdown-toggle px-4"
                                            data-bs-toggle="dropdown" aria-expanded="false">
                                            Category
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="javascript:;">Action</a></li>
                                            <li><a class="dropdown-item" href="javascript:;">Another action</a></li>
                                            <li>
                                                <hr class="dropdown-divider">
                                            </li>
                                            <li><a class="dropdown-item" href="javascript:;">Something else here</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="btn-group position-static">
                                        <button type="button" class="btn btn-filter dropdown-toggle px-4"
                                            data-bs-toggle="dropdown" aria-expanded="false">
                                            Vendor
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="javascript:;">Action</a></li>
                                            <li><a class="dropdown-item" href="javascript:;">Another action</a></li>
                                            <li>
                                                <hr class="dropdown-divider">
                                            </li>
                                            <li><a class="dropdown-item" href="javascript:;">Something else here</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="btn-group position-static">
                                        <button type="button" class="btn btn-filter dropdown-toggle px-4"
                                            data-bs-toggle="dropdown" aria-expanded="false">
                                            Collection
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="javascript:;">Action</a></li>
                                            <li><a class="dropdown-item" href="javascript:;">Another action</a></li>
                                            <li>
                                                <hr class="dropdown-divider">
                                            </li>
                                            <li><a class="dropdown-item" href="javascript:;">Something else here</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-auto">
                                <div class="d-flex align-items-center gap-2 justify-content-lg-end">
                                    <button class="btn btn-filter px-4"><i
                                            class="bi bi-box-arrow-right me-2"></i>Export</button>
                                    <button class="btn btn-primary px-4"><i class="bi bi-plus-lg me-2"></i>Add
                                        Product</button>
                                </div>
                            </div>
                        </div><!--end row-->

                        <div class="card mt-4">
                            <div class="card-body">
                                <div class="product-table">
                                    <div class="table-responsive white-space-nowrap">
                                        <table class="table align-middle">
                                            <thead class="table-light">
                                                <tr>
                                                    <th>
                                                        <input class="form-check-input" type="checkbox">
                                                    </th>
                                                    <th>Product Name</th>
                                                    <th>Price</th>
                                                    <th>Category</th>
                                                    <th>Tags</th>
                                                    <th>Rating</th>
                                                    <th>Vendor</th>
                                                    <th>Date</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <input class="form-check-input" type="checkbox">
                                                    </td>
                                                    <td>
                                                        <div class="d-flex align-items-center gap-3">
                                                            <div class="product-box">
                                                                <img src="/admin/images/orders/01.png" width="70"
                                                                    class="rounded-3" alt="">
                                                            </div>
                                                            <div class="product-info">
                                                                <a href="javascript:;" class="product-title">Women Pink
                                                                    Floral Printed</a>
                                                                <p class="mb-0 product-category">Category : Fashion</p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>$49</td>
                                                    <td>Palazzos</td>
                                                    <td>
                                                        <div class="product-tags">
                                                            <a href="javascript:;" class="btn-tags">Jeans</a>
                                                            <a href="javascript:;" class="btn-tags">iPhone</a>
                                                            <a href="javascript:;" class="btn-tags">Laptops</a>
                                                            <a href="javascript:;" class="btn-tags">Mobiles</a>
                                                            <a href="javascript:;" class="btn-tags">Wallets</a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="product-rating">
                                                            <i
                                                                class="bi bi-star-fill text-warning me-2"></i><span>5.0</span>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;">Michle Shoes England</a>
                                                    </td>
                                                    <td>
                                                        Nov 12, 10:45 PM
                                                    </td>
                                                    <td>
                                                        <div class="dropdown">
                                                            <button
                                                                class="btn btn-sm btn-filter dropdown-toggle dropdown-toggle-nocaret"
                                                                type="button" data-bs-toggle="dropdown">
                                                                <i class="bi bi-three-dots"></i>
                                                            </button>
                                                            <ul class="dropdown-menu">
                                                                <li><a class="dropdown-item" href="#">Action</a></li>
                                                                <li><a class="dropdown-item" href="#">Another action</a>
                                                                </li>
                                                                <li><a class="dropdown-item" href="#">Something else
                                                                        here</a></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <input class="form-check-input" type="checkbox">
                                                    </td>
                                                    <td>
                                                        <div class="d-flex align-items-center gap-3">
                                                            <div class="product-box">
                                                                <img src="/admin/images/orders/02.png" width="70"
                                                                    class="rounded-3" alt="">
                                                            </div>
                                                            <div class="product-info">
                                                                <a href="javascript:;" class="product-title">Women Pink
                                                                    Floral Printed</a>
                                                                <p class="mb-0 product-category">Category : Fashion</p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>$49</td>
                                                    <td>Palazzos</td>
                                                    <td>
                                                        <div class="product-tags">
                                                            <a href="javascript:;" class="btn-tags">Jeans</a>
                                                            <a href="javascript:;" class="btn-tags">iPhone</a>
                                                            <a href="javascript:;" class="btn-tags">Laptops</a>
                                                            <a href="javascript:;" class="btn-tags">Mobiles</a>
                                                            <a href="javascript:;" class="btn-tags">Wallets</a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="product-rating">
                                                            <i
                                                                class="bi bi-star-fill text-warning me-2"></i><span>5.0</span>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;">Michle Shoes England</a>
                                                    </td>
                                                    <td>
                                                        Nov 12, 10:45 PM
                                                    </td>
                                                    <td>
                                                        <div class="dropdown">
                                                            <button
                                                                class="btn btn-sm btn-filter dropdown-toggle dropdown-toggle-nocaret"
                                                                type="button" data-bs-toggle="dropdown">
                                                                <i class="bi bi-three-dots"></i>
                                                            </button>
                                                            <ul class="dropdown-menu">
                                                                <li><a class="dropdown-item" href="#">Action</a></li>
                                                                <li><a class="dropdown-item" href="#">Another action</a>
                                                                </li>
                                                                <li><a class="dropdown-item" href="#">Something else
                                                                        here</a></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <input class="form-check-input" type="checkbox">
                                                    </td>
                                                    <td>
                                                        <div class="d-flex align-items-center gap-3">
                                                            <div class="product-box">
                                                                <img src="/admin/images/orders/03.png" width="70"
                                                                    class="rounded-3" alt="">
                                                            </div>
                                                            <div class="product-info">
                                                                <a href="javascript:;" class="product-title">Women Pink
                                                                    Floral Printed</a>
                                                                <p class="mb-0 product-category">Category : Fashion</p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>$49</td>
                                                    <td>Palazzos</td>
                                                    <td>
                                                        <div class="product-tags">
                                                            <a href="javascript:;" class="btn-tags">Jeans</a>
                                                            <a href="javascript:;" class="btn-tags">iPhone</a>
                                                            <a href="javascript:;" class="btn-tags">Laptops</a>
                                                            <a href="javascript:;" class="btn-tags">Mobiles</a>
                                                            <a href="javascript:;" class="btn-tags">Wallets</a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="product-rating">
                                                            <i
                                                                class="bi bi-star-fill text-warning me-2"></i><span>5.0</span>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;">Michle Shoes England</a>
                                                    </td>
                                                    <td>
                                                        Nov 12, 10:45 PM
                                                    </td>
                                                    <td>
                                                        <div class="dropdown">
                                                            <button
                                                                class="btn btn-sm btn-filter dropdown-toggle dropdown-toggle-nocaret"
                                                                type="button" data-bs-toggle="dropdown">
                                                                <i class="bi bi-three-dots"></i>
                                                            </button>
                                                            <ul class="dropdown-menu">
                                                                <li><a class="dropdown-item" href="#">Action</a></li>
                                                                <li><a class="dropdown-item" href="#">Another action</a>
                                                                </li>
                                                                <li><a class="dropdown-item" href="#">Something else
                                                                        here</a></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <input class="form-check-input" type="checkbox">
                                                    </td>
                                                    <td>
                                                        <div class="d-flex align-items-center gap-3">
                                                            <div class="product-box">
                                                                <img src="/admin/images/orders/04.png" width="70"
                                                                    class="rounded-3" alt="">
                                                            </div>
                                                            <div class="product-info">
                                                                <a href="javascript:;" class="product-title">Women Pink
                                                                    Floral Printed</a>
                                                                <p class="mb-0 product-category">Category : Fashion</p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>$49</td>
                                                    <td>Palazzos</td>
                                                    <td>
                                                        <div class="product-tags">
                                                            <a href="javascript:;" class="btn-tags">Jeans</a>
                                                            <a href="javascript:;" class="btn-tags">iPhone</a>
                                                            <a href="javascript:;" class="btn-tags">Laptops</a>
                                                            <a href="javascript:;" class="btn-tags">Mobiles</a>
                                                            <a href="javascript:;" class="btn-tags">Wallets</a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="product-rating">
                                                            <i
                                                                class="bi bi-star-fill text-warning me-2"></i><span>5.0</span>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;">Michle Shoes England</a>
                                                    </td>
                                                    <td>
                                                        Nov 12, 10:45 PM
                                                    </td>
                                                    <td>
                                                        <div class="dropdown">
                                                            <button
                                                                class="btn btn-sm btn-filter dropdown-toggle dropdown-toggle-nocaret"
                                                                type="button" data-bs-toggle="dropdown">
                                                                <i class="bi bi-three-dots"></i>
                                                            </button>
                                                            <ul class="dropdown-menu">
                                                                <li><a class="dropdown-item" href="#">Action</a></li>
                                                                <li><a class="dropdown-item" href="#">Another action</a>
                                                                </li>
                                                                <li><a class="dropdown-item" href="#">Something else
                                                                        here</a></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <input class="form-check-input" type="checkbox">
                                                    </td>
                                                    <td>
                                                        <div class="d-flex align-items-center gap-3">
                                                            <div class="product-box">
                                                                <img src="/admin/images/orders/05.png" width="70"
                                                                    class="rounded-3" alt="">
                                                            </div>
                                                            <div class="product-info">
                                                                <a href="javascript:;" class="product-title">Women Pink
                                                                    Floral Printed</a>
                                                                <p class="mb-0 product-category">Category : Fashion</p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>$49</td>
                                                    <td>Palazzos</td>
                                                    <td>
                                                        <div class="product-tags">
                                                            <a href="javascript:;" class="btn-tags">Jeans</a>
                                                            <a href="javascript:;" class="btn-tags">iPhone</a>
                                                            <a href="javascript:;" class="btn-tags">Laptops</a>
                                                            <a href="javascript:;" class="btn-tags">Mobiles</a>
                                                            <a href="javascript:;" class="btn-tags">Wallets</a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="product-rating">
                                                            <i
                                                                class="bi bi-star-fill text-warning me-2"></i><span>5.0</span>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;">Michle Shoes England</a>
                                                    </td>
                                                    <td>
                                                        Nov 12, 10:45 PM
                                                    </td>
                                                    <td>
                                                        <div class="dropdown">
                                                            <button
                                                                class="btn btn-sm btn-filter dropdown-toggle dropdown-toggle-nocaret"
                                                                type="button" data-bs-toggle="dropdown">
                                                                <i class="bi bi-three-dots"></i>
                                                            </button>
                                                            <ul class="dropdown-menu">
                                                                <li><a class="dropdown-item" href="#">Action</a></li>
                                                                <li><a class="dropdown-item" href="#">Another action</a>
                                                                </li>
                                                                <li><a class="dropdown-item" href="#">Something else
                                                                        here</a></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <input class="form-check-input" type="checkbox">
                                                    </td>
                                                    <td>
                                                        <div class="d-flex align-items-center gap-3">
                                                            <div class="product-box">
                                                                <img src="/admin/images/orders/06.png" width="70"
                                                                    class="rounded-3" alt="">
                                                            </div>
                                                            <div class="product-info">
                                                                <a href="javascript:;" class="product-title">Women Pink
                                                                    Floral Printed</a>
                                                                <p class="mb-0 product-category">Category : Fashion</p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>$49</td>
                                                    <td>Palazzos</td>
                                                    <td>
                                                        <div class="product-tags">
                                                            <a href="javascript:;" class="btn-tags">Jeans</a>
                                                            <a href="javascript:;" class="btn-tags">iPhone</a>
                                                            <a href="javascript:;" class="btn-tags">Laptops</a>
                                                            <a href="javascript:;" class="btn-tags">Mobiles</a>
                                                            <a href="javascript:;" class="btn-tags">Wallets</a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="product-rating">
                                                            <i
                                                                class="bi bi-star-fill text-warning me-2"></i><span>5.0</span>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;">Michle Shoes England</a>
                                                    </td>
                                                    <td>
                                                        Nov 12, 10:45 PM
                                                    </td>
                                                    <td>
                                                        <div class="dropdown">
                                                            <button
                                                                class="btn btn-sm btn-filter dropdown-toggle dropdown-toggle-nocaret"
                                                                type="button" data-bs-toggle="dropdown">
                                                                <i class="bi bi-three-dots"></i>
                                                            </button>
                                                            <ul class="dropdown-menu">
                                                                <li><a class="dropdown-item" href="#">Action</a></li>
                                                                <li><a class="dropdown-item" href="#">Another action</a>
                                                                </li>
                                                                <li><a class="dropdown-item" href="#">Something else
                                                                        here</a></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <input class="form-check-input" type="checkbox">
                                                    </td>
                                                    <td>
                                                        <div class="d-flex align-items-center gap-3">
                                                            <div class="product-box">
                                                                <img src="/admin/images/orders/07.png" width="70"
                                                                    class="rounded-3" alt="">
                                                            </div>
                                                            <div class="product-info">
                                                                <a href="javascript:;" class="product-title">Women Pink
                                                                    Floral Printed</a>
                                                                <p class="mb-0 product-category">Category : Fashion</p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>$49</td>
                                                    <td>Palazzos</td>
                                                    <td>
                                                        <div class="product-tags">
                                                            <a href="javascript:;" class="btn-tags">Jeans</a>
                                                            <a href="javascript:;" class="btn-tags">iPhone</a>
                                                            <a href="javascript:;" class="btn-tags">Laptops</a>
                                                            <a href="javascript:;" class="btn-tags">Mobiles</a>
                                                            <a href="javascript:;" class="btn-tags">Wallets</a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="product-rating">
                                                            <i
                                                                class="bi bi-star-fill text-warning me-2"></i><span>5.0</span>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;">Michle Shoes England</a>
                                                    </td>
                                                    <td>
                                                        Nov 12, 10:45 PM
                                                    </td>
                                                    <td>
                                                        <div class="dropdown">
                                                            <button
                                                                class="btn btn-sm btn-filter dropdown-toggle dropdown-toggle-nocaret"
                                                                type="button" data-bs-toggle="dropdown">
                                                                <i class="bi bi-three-dots"></i>
                                                            </button>
                                                            <ul class="dropdown-menu">
                                                                <li><a class="dropdown-item" href="#">Action</a></li>
                                                                <li><a class="dropdown-item" href="#">Another action</a>
                                                                </li>
                                                                <li><a class="dropdown-item" href="#">Something else
                                                                        here</a></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <input class="form-check-input" type="checkbox">
                                                    </td>
                                                    <td>
                                                        <div class="d-flex align-items-center gap-3">
                                                            <div class="product-box">
                                                                <img src="assets/images/orders/08.png" width="70"
                                                                    class="rounded-3" alt="">
                                                            </div>
                                                            <div class="product-info">
                                                                <a href="javascript:;" class="product-title">Women Pink
                                                                    Floral Printed</a>
                                                                <p class="mb-0 product-category">Category : Fashion</p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>$49</td>
                                                    <td>Palazzos</td>
                                                    <td>
                                                        <div class="product-tags">
                                                            <a href="javascript:;" class="btn-tags">Jeans</a>
                                                            <a href="javascript:;" class="btn-tags">iPhone</a>
                                                            <a href="javascript:;" class="btn-tags">Laptops</a>
                                                            <a href="javascript:;" class="btn-tags">Mobiles</a>
                                                            <a href="javascript:;" class="btn-tags">Wallets</a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="product-rating">
                                                            <i
                                                                class="bi bi-star-fill text-warning me-2"></i><span>5.0</span>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;">Michle Shoes England</a>
                                                    </td>
                                                    <td>
                                                        Nov 12, 10:45 PM
                                                    </td>
                                                    <td>
                                                        <div class="dropdown">
                                                            <button
                                                                class="btn btn-sm btn-filter dropdown-toggle dropdown-toggle-nocaret"
                                                                type="button" data-bs-toggle="dropdown">
                                                                <i class="bi bi-three-dots"></i>
                                                            </button>
                                                            <ul class="dropdown-menu">
                                                                <li><a class="dropdown-item" href="#">Action</a></li>
                                                                <li><a class="dropdown-item" href="#">Another action</a>
                                                                </li>
                                                                <li><a class="dropdown-item" href="#">Something else
                                                                        here</a></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <input class="form-check-input" type="checkbox">
                                                    </td>
                                                    <td>
                                                        <div class="d-flex align-items-center gap-3">
                                                            <div class="product-box">
                                                                <img src="assets/images/orders/09.png" width="70"
                                                                    class="rounded-3" alt="">
                                                            </div>
                                                            <div class="product-info">
                                                                <a href="javascript:;" class="product-title">Women Pink
                                                                    Floral Printed</a>
                                                                <p class="mb-0 product-category">Category : Fashion</p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>$49</td>
                                                    <td>Palazzos</td>
                                                    <td>
                                                        <div class="product-tags">
                                                            <a href="javascript:;" class="btn-tags">Jeans</a>
                                                            <a href="javascript:;" class="btn-tags">iPhone</a>
                                                            <a href="javascript:;" class="btn-tags">Laptops</a>
                                                            <a href="javascript:;" class="btn-tags">Mobiles</a>
                                                            <a href="javascript:;" class="btn-tags">Wallets</a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="product-rating">
                                                            <i
                                                                class="bi bi-star-fill text-warning me-2"></i><span>5.0</span>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;">Michle Shoes England</a>
                                                    </td>
                                                    <td>
                                                        Nov 12, 10:45 PM
                                                    </td>
                                                    <td>
                                                        <div class="dropdown">
                                                            <button
                                                                class="btn btn-sm btn-filter dropdown-toggle dropdown-toggle-nocaret"
                                                                type="button" data-bs-toggle="dropdown">
                                                                <i class="bi bi-three-dots"></i>
                                                            </button>
                                                            <ul class="dropdown-menu">
                                                                <li><a class="dropdown-item" href="#">Action</a></li>
                                                                <li><a class="dropdown-item" href="#">Another action</a>
                                                                </li>
                                                                <li><a class="dropdown-item" href="#">Something else
                                                                        here</a></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>


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