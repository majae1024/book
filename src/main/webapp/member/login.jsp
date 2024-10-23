<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
  <head>
    <meta charset="UTF-8" />

    <title>Insert title here</title>

    <link rel="stylesheet" type="text/css" href="css/loginPage.css?after" />
  </head>

  <body>
    <div id="bclr">
      <div id="box">
        <form action="login.do" method="post" name="frm">
        
        	<h3>login</h3>
          <table>
            <tr>
              <td>
              <input type="text" name="userid" value="${userid}" placeholder="ID" class="user" />
              
              </td>
            </tr>

            <tr>
            	<td>
            		<input type="password" name="pwd" placeholder="Password" class="user" />
            	</td>
            </tr>
			
            
            <tr>
              <td colspan="2" align="center">
                <input type="submit" value="LOGIN" onclick="return loginCheck()" class="btn" />
              	<input type="button" value="SIGNUP" onclick="location.href='join.do'" class="btn" />
              </td>
            </tr>

            <tr>
              <td colspan="2">${message}</td>
            </tr>
          </table>
        </form>
	        
      </div>
      <div class="logoBox">
        	<a href="index.jsp"><img src="img/borovone_logo1.png"></a>
        </div>
    </div>
  </body>
  <script type="text/javascript" src="js/login.js"></script>
</html>
