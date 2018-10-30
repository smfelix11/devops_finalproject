<html>

<head>
    <title>Addition of Numbers</title>
    <link href="css/style.css" rel="stylesheet" id="custom-css">
    <link rel="stylesheet" href="webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="webjars/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>

<body>
    <div class="container-fluid">
        <div class="card">
            <br>
            <h1 style="text-align:center;">Addition of Two Numbers</h1>
            <br>
            <div class="box">

                <div class="form-group">
                    <input type="text" class="form-control" id="number1" placeholder="Enter First Number" name="number1">
                </div>
                <h4>+</h4>
                <div class="form-group">
                    <input type="text" class="form-control" id="number2" placeholder="Enter Second Number" name="number2">
                </div>
                <h4>=</h4>
                <h2 id="error-head" style="visibility:hidden;">
        <span id="error" ></span>
        </h2>
                <div class="form-group">
                    <input type="text" class="form-control" id="sum" name="sum" style="visibility:hidden;">
                </div>
                <button class="btn btn-primary btn-block btn-lg" onclick="addNum()"><i class="fa fa-plus" aria-hidden="true"></i>&nbsp; &nbsp;Add</button>

            </div>
        </div>
    </div>
    <script src="webjars/jquery/3.1.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
    <script>
        function addNum() {
            if (document.getElementById("number1").value == '' || document.getElementById("number2").value == '') {
                $('#error-head').css({
                    "visibility": "visible"
                });
                document.getElementById("error").innerHTML = "Empty Fields Not Allowed.";
                $('#sum').css({
                    "visibility": "hidden"
                });
            } else if (!isNaN(document.getElementById("number1").value) && !isNaN(document.getElementById("number2").value)) {
                var firstNum = parseFloat(document.getElementById("number1").value);
                var secondNum = parseFloat(document.getElementById("number2").value);
                var sum = firstNum + secondNum;
                $('#sum').val(sum);
                $('#sum').css({
                    "visibility": "visible"
                });
                $('#error-head').css({
                    "visibility": "hidden"
                });

            } else {
                $('#error-head').css({
                    "visibility": "visible"
                });
                document.getElementById("error").innerHTML = "Number Format Error. Strings not allowed.";
                $('#sum').css({
                    "visibility": "hidden"
                });
            }

        }
    </script>
</body>

</html>