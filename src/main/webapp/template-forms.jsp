<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <title>Modernize Free</title>
    <link href="./assets/images/logos/favicon.png" rel="shortcut icon" type="image/png"/>
    <link href="./assets/css/styles.min.css" rel="stylesheet"/>
</head>

<body>
<!--  Body Wrapper -->
<div class="page-wrapper" data-header-position="fixed" data-layout="vertical" data-navbarbg="skin6" data-sidebar-position="fixed"
     data-sidebartype="full" id="main-wrapper">
    <!-- Sidebar Start -->
    <jsp:include page="layout/sidebar-layout.jsp"/>
    
    <!--  Main wrapper -->
    <div class="body-wrapper">
        <!--  Header Start -->
        <jsp:include page="layout/header-layout.jsp"/>
        <!--  Header End -->
        <div class="container-fluid">
            <div class="container-fluid">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title fw-semibold mb-4">Forms</h5>
                        <div class="card">
                            <div class="card-body">
                                <form>
                                    <div class="mb-3">
                                        <label class="form-label" for="exampleInputEmail1">Email address</label>
                                        <input aria-describedby="emailHelp" class="form-control" id="exampleInputEmail1"
                                               type="email">
                                        <div class="form-text" id="emailHelp">We'll never share your email with anyone
                                            else.
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="exampleInputPassword1">Password</label>
                                        <input class="form-control" id="exampleInputPassword1" type="password">
                                    </div>
                                    <div class="mb-3 form-check">
                                        <input class="form-check-input" id="exampleCheck1" type="checkbox">
                                        <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                    </div>
                                    <button class="btn btn-primary" type="submit">Submit</button>
                                </form>
                            </div>
                        </div>
                        <h5 class="card-title fw-semibold mb-4">Disabled forms</h5>
                        <div class="card mb-0">
                            <div class="card-body">
                                <form>
                                    <fieldset disabled>
                                        <legend>Disabled fieldset example</legend>
                                        <div class="mb-3">
                                            <label class="form-label" for="disabledTextInput">Disabled input</label>
                                            <input class="form-control" id="disabledTextInput" placeholder="Disabled input"
                                                   type="text">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" for="disabledSelect">Disabled select menu</label>
                                            <select class="form-select" id="disabledSelect">
                                                <option>Disabled select</option>
                                            </select>
                                        </div>
                                        <div class="mb-3">
                                            <div class="form-check">
                                                <input class="form-check-input" disabled
                                                       id="disabledFieldsetCheck" type="checkbox">
                                                <label class="form-check-label" for="disabledFieldsetCheck">
                                                    Can't check this
                                                </label>
                                            </div>
                                        </div>
                                        <button class="btn btn-primary" type="submit">Submit</button>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="./assets/libs/jquery/dist/jquery.min.js"></script>
<script src="./assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="./assets/js/sidebarmenu.js"></script>
<script src="./assets/js/app.min.js"></script>
<script src="./assets/libs/simplebar/dist/simplebar.js"></script>
</body>

</html>