<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
      $(function () {
        function ajaxProcess(type, url, dataType) {
          $.ajax({
            type: type,
            url: url,
            dataType: dataType,
            error: function () {
              alert('Ajax Error');
            },

            success: function (data) {
              $("div").html(data);
            }
          })
        }

        $("button").click(function () {
          if (this.id == 'c1') {
            ajaxProcess('GET', '/view/jquery/jquery-data/jquery-data1.jsp', 'text');
          }

          if (this.id == 'c2') {
            ajaxProcess('GET', '/view/jquery/jquery-data/jquery-data2.jsp', 'text');
          }
        })
      });
    </script>
</head>
<body>

<button value="Click1" id="c1">Click1</button>
<button value="Click2" id="c2">Click2</button>
<button value="Click3" id="c3">Click3</button>
<button value="Click4" id="c4">Click4</button>
<button value="Click5" id="c5">Click5</button>

<div></div>
<div></div>
<div></div>
<div></div>

</body>
</html>
