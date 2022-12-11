
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    </head>
    <body style="background: url(img/black-wood-texture-background-wood-texture-with-natural-pattern-soft-natural-wood-aesthetic-creative-design_364465-197.jpg); background-size: cover; background-attachment: fixed">
        <div class="container">
            <div class="row">
                <div class="col m6 offset-m3">
                    <div class="card">
                        <div class="card-content"> 
                            <h3>Register Here!! </h3>
                            <h5 id="msg"></h5>
                            <div class="form center-align">
                                <!--creating form-->
                                <form action ="Register" method="POST" id="myform">
                                    <input type="text" name="user_name" placeholder="enter user name">
                                    <input type="password" name="user_password" placeholder="enter password">
                                    <input type="email" name="user_email" placeholder="enter email">
                                    <div class="file-field input-field">
                                        <div class="btn">
                                            <span>File</span>
                                            <input name ="image" type="file">
                                        </div>
                                        <div class="file-path-wrapper">
                                            <input class="file-path validate" type="text">
                                        </div>
                                    </div>
                                    <button type="submit" class="btn">submit</button>
                                </form>
                            </div>
                            <div class="loader center-align" style="margin-top: 10px; display:none;">

                                <div class="preloader-wrapper big active">
                                    <div class="spinner-layer spinner-blue-only">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>
                                </div>
                                <h5>Please Wait...</h5>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <script
            src="https://code.jquery.com/jquery-3.6.1.min.js"
            integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
        crossorigin="anonymous"></script>
        <script>
            $(document).ready(function () {
                console.log("Page is ready");

                $("#myform").on('submit', function (event) {
                    event.preventDefault();
                   // var f = $(this).serialize();  if there is no file on text data we convert dom into string 
                    let f=new FormData(this); 
                   
                    $('.loader').show(); // DOM manipulation
                    $('form').hide();
                    $.ajax({
                        url: 'Register',
                        data: f,
                        type: 'POST',
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            console.log("Success");
                            $('.loader').hide(); 
                            $('form').show();
                                $('#msg').html("Succesfully Updated");
                                $('#msg').addClass('green-text');
                     
                            
                        }
                        , error: function (jqXHR, textStatus, errorThrown) {
                            console.log(data);
                            console.log("Error");
                            $('.loader').hide();
                            $('form').show();
                            $('#msg').html("Something went wrong");
                            $('#msg').addClass('red-text');

                        },
                        processData:false,
                        contentType:false 

                    }
                    )
                })
            })

        </script>
    </body>
</html>
