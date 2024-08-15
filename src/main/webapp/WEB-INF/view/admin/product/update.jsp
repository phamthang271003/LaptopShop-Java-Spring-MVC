<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!doctype html>
            <html lang="en" data-bs-theme="dark">

            <head>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <title>Maxton | Bootstrap 5 Admin Dashboard Template</title>
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
                <!--main css-->
                <link href="/admin/css/bootstrap-extended.css" rel="stylesheet">
                <link href="/admin/sass/main.css" rel="stylesheet">
                <link href="/admin/sass/dark-theme.css" rel="stylesheet">
                <link href="/admin/sass/blue-theme.css" rel="stylesheet">
                <link href="/admin/sass/semi-dark.css" rel="stylesheet">
                <link href="/admin/sass/bordered-theme.css" rel="stylesheet">
                <link href="/admin/sass/responsive.css" rel="stylesheet">
                <script src="/static/ckeditor/ckeditor.js"></script>


                <script>
                    document.addEventListener("DOMContentLoaded", function () {
                        const productFile = document.getElementById("productFile");
                        const previewContainer = document.getElementById("previewContainer");

                        productFile.addEventListener("change", function (e) {
                            // Clear previous previews
                            previewContainer.innerHTML = "";

                            const files = e.target.files;
                            for (let i = 0; i < files.length; i++) {
                                const imgURL = URL.createObjectURL(files[i]);

                                // Create an image element
                                const imgElement = document.createElement("img");
                                imgElement.src = imgURL;
                                imgElement.style.maxHeight = "100px";
                                imgElement.style.display = "block";
                                imgElement.alt = "product preview";

                                // Append the image to the preview container
                                const colElement = document.createElement("div");
                                colElement.className = "col-md-2";
                                colElement.appendChild(imgElement);

                                previewContainer.appendChild(colElement);
                            }
                        });

                        var today = new Date().toISOString().split('T')[0];
                        document.getElementById('bsValidation8').value = today;



                    });
                </script>



            </head>

            <body>
                <jsp:include page="../layout/header.jsp" />
                <jsp:include page="../layout/sidebar.jsp" />

                <!--start main wrapper-->
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
                                        <li class="breadcrumb-item active" aria-current="page">Starter Page</li>
                                    </ol>
                                </nav>
                            </div>
                            <div class="ms-auto">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-primary">Settings</button>
                                    <button type="button"
                                        class="btn btn-primary split-bg-primary dropdown-toggle dropdown-toggle-split"
                                        data-bs-toggle="dropdown"> <span class="visually-hidden">Toggle
                                            Dropdown</span>
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
                        <div class="row">
                            <div class="col-12 col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <form:form action="/admin/product/update" method="post"
                                            modelAttribute="newProduct" enctype="multipart/form-data">
                                            <div class="row">
                                                <div class="row mb-4" style="display: none;">
                                                    <div class="col"> <label class="form-label">Id:</label>
                                                        <form:input type="text" class="form-control" path="id" />
                                                    </div>
                                                </div>

                                                <div class="col-md-6 mb-4">
                                                    <h5 class="mb-3">Name</h5>
                                                    <form:input type="text" class="form-control"
                                                        placeholder="write name here...." path="name" />
                                                </div>

                                                <div class="col-md-6 mb-4">
                                                    <h5 class="mb-3">Price</h5>
                                                    <form:input type="text" class="form-control"
                                                        placeholder="write price here...." path="price" />
                                                </div>
                                                <div class="col-md-6 mb-4">
                                                    <h5 class="mb-3">Quantity</h5>
                                                    <form:input type="number" class="form-control"
                                                        placeholder="write quantity here...." path="quantity" />
                                                </div>
                                                <div class="col-md-6 mb-4">
                                                    <h5 class="mb-3">Sale</h5>
                                                    <form:input type="number" class="form-control"
                                                        placeholder="write title here...." path="discount" />
                                                </div>
                                                <div class="col-md-6 mb-4">
                                                    <label for="AddCategory" class="form-label">Category</label>

                                                    <form:select class="form-select" id="AddCategory"
                                                        path="category.id">
                                                        <c:forEach var="category" items="${categories}">
                                                            <form:option value="${category.id}">${category.name}
                                                            </form:option>
                                                        </c:forEach>
                                                    </form:select>

                                                </div>
                                                <div class="col-md-6 mb-4">
                                                    <label for="AddBrand" class="form-label">Brand</label>
                                                    <form:select class="form-select" id="AddBrand" path="brand.id">
                                                        <c:forEach var="brand" items="${brands}">
                                                            <form:option value="${brand.id}">${brand.name}
                                                            </form:option>
                                                        </c:forEach>
                                                    </form:select>
                                                </div>

                                                <div class="col-md-6 mb-4">
                                                    <label for="bsValidation8" class="form-label">Updated At</label>
                                                    <form:input type="date" class="form-control" id="bsValidation8"
                                                        required="" path="updatedAt" />
                                                </div>
                                                <div class="col-md-6 mb-4">
                                                    <label for="AddBrand" class="form-label">Status</label>
                                                    <form:select class="form-select" id="AddBrand" path="status">
                                                        <form:option value="IN STOCK">In Stock
                                                        </form:option>
                                                        <form:option value="OUT OF STOCK">Out Of Stock
                                                        </form:option>
                                                    </form:select>
                                                </div>

                                                <div class="mb-4">
                                                    <h5 class="mb-3">Product images</h5>
                                                    <input class="form-control" type="file" id="productFile"
                                                        name="files" multiple accept=".png, .jpg, .jpeg" />
                                                </div>
                                                <div class="row mb-4" id="previewContainer">

                                                    <c:forEach var="image" items="${productImages}">
                                                        <div class="col-md-2">
                                                            <img src="/admin/images/top-products/${image.image}"
                                                                style="max-height: 100px;" alt="product preview">
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                                <div class="col-md-12 mb-4">
                                                    <h5 class="mb-3">Outstanding Description</h5>
                                                    <form:textarea class="form-control" cols="4" rows="6"
                                                        placeholder="write a outstanding description here.."
                                                        path="outStandingDesc" name="outStandingDesc"
                                                        id="outStandingDesc" />

                                                </div>

                                                <div class="col-md-12 mb-4">
                                                    <h5 class="mb-3">Parameter Description</h5>
                                                    <form:textarea class="form-control" cols="4" rows="6"
                                                        placeholder="write a parameter description here.."
                                                        path="parameterDesc" name="parameterDesc" id="parameterDesc" />
                                                </div>
                                                <div class="col-md-12 mb-4">
                                                    <h5 class="mb-3">Detail Description</h5>
                                                    <form:textarea class="form-control" cols="4" rows="6"
                                                        placeholder="write a detail description here.."
                                                        path="detailDesc" name="detailDesc" id="detailDesc" />
                                                </div>

                                                <div class="col-md-12">
                                                    <div class="d-grid">
                                                        <button type="submit" class="btn btn-primary">Update</button>
                                                    </div>
                                                </div>
                                                <!-- </div> -->
                                            </div>
                                        </form:form>
                                    </div>

                                </div>




                            </div>
                        </div>

                </main>
                <!--end main wrapper-->


                <!--start overlay-->
                <div class="overlay btn-toggle"></div>
                <!--end overlay-->

                <!--start footer-->
                <jsp:include page="../layout/footer.jsp" />
                <!--top footer-->

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
                <!-- <script src="/admin/plugins/simplebar/js/simplebar.min.js"></script> -->
                <script src="/admin/js/main.js"></script>

                <script>
                    CKEDITOR.replace('detailDesc', {
                        filebrowserBrowseUrl: '/ckfinder/static/ckfinder.html',
                        filebrowserImageBrowseUrl: '/ckfinder/static/ckfinder.html?type=Images',
                        filebrowserUploadUrl: '/ckfinder/static/core/connector/java/connector.java?command=QuickUpload&type=Files',
                        filebrowserImageUploadUrl: '/ckfinder/static/core/connector/java/connector.java?command=QuickUpload&type=Images'

                    });
                    CKEDITOR.replace('parameterDesc', {
                        filebrowserBrowseUrl: '/ckfinder/static/ckfinder.html',
                        filebrowserImageBrowseUrl: '/ckfinder/static/ckfinder.html?type=Images',
                        filebrowserUploadUrl: '/ckfinder/static/core/connector/java/connector.java?command=QuickUpload&type=Files',
                        filebrowserImageUploadUrl: '/ckfinder/static/core/connector/java/connector.java?command=QuickUpload&type=Images'
                    });
                    CKEDITOR.replace('outStandingDesc', {
                        filebrowserBrowseUrl: '/ckfinder/static/ckfinder.html',
                        filebrowserImageBrowseUrl: '/ckfinder/static/ckfinder.html?type=Images',
                        filebrowserUploadUrl: '/ckfinder/static/core/connector/java/connector.java?command=QuickUpload&type=Files',
                        filebrowserImageUploadUrl: '/ckfinder/static/core/connector/java/connector.java?command=QuickUpload&type=Images'
                    });
                </script>
            </body>

            </html>