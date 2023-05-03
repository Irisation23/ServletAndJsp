<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script>
      $(function () {
        $("button").click(function () {
          // alert($(this).val());
          // $(this).text('hello');
          // alert($(this).attr("id"));

          switch ($(this).attr("id")) {
            case "c1":
              $(this).text(this.id);
              break;

            case "c2":
              $(this).text('Test');
              break

            default:
              break;
          }

          $("input[value='Click3']").click(function () {
            alert('c3');
          })

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
</body>
</html>
