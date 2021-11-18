<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Data</title>
<style>
*{
    margin: 0;
    padding: 0;
}
.fl{
    float: left;
}
.warpper{
    width: 100%;
    height: 200vh;
    background-image: url("Image/img.jpg");
    background-repeat: no-repeat;
    background-size: cover;
}
.main{
    width: 30%;
    height: 850px;
    background-color: rgba(7, 47, 79, 0.63);
    margin: 50px 35%;
    border-radius: 20px 20px 30px 30px;
}
.head{
    width: 100%;
    background-color: #9979d9;
    height: 40px;
    border-radius: 20px 20px 0 0;
}
.head p{
    line-height: 40px;
    text-align: center;
    font-size: 25px;
    font-weight: bold;
    color: #fff;
}
.form{
    width: 100%;
    height: 780px;
}
.name{
    font-size: 16px;
    color: #fff;
    margin: 15px 0 0 5%;
}
.name-inp{
    width: 90%;
    height: 30px;
    margin: 5px 0 0 5%;
    font-size: 16px;
    padding: 2px;
    color: rgb(17, 67, 107);
    border: 1px solid rgb(17, 67, 107);
    background-color: rgb(216, 230, 227);
}

.type{
    margin: 15px 0 0 5%;
    color: #fff;
    font-size: 16px;
}
.typ{
    font-size: 18px;
}
.typo{
    margin-left: 5%;
}
.sub{
    width: 90%;
    margin: 15px 0 0 5%;
    font-size: 16px;
    height: 40px;
    background-color: #031c30;
    border: 1px solid rgb(17, 67, 107);
    color: #fff;
}
.sub:hover{
    background-color: #01e943;
    color: #fff;
}

</style>
</head>
<body>
<div class="warpper fl">
	<div class="main">
       <div class="head">
			<p> Enter Student Data </p>
		</div>
	<div class="form fl">
			<form action="saveLoc" method="post">
				<p class="name">
						NAME :</p>
				<p>
					<input type="text" name="sName"  class="name-inp"></P>
									<p class="name">
					Father NAME :</p>
				<p>
					<input type="text" name="sFName"  class="name-inp"></P>
									<p class="name">
						Registration # :</p>
				<p>
					<input type="text" name="sRegistrattion"  class="name-inp"></P>
									<p class="name">
						CNIC :</p>
				<p>
					<input type="text" name="sCnic"  class="name-inp"></P>
									<p class="name">
						Phone # :</p>
				<p>
					<input type="text" name="phone"  class="name-inp"></P>
									<p class="name">
						Email :</p>
				<p>
					<input type="email" name="email"  class="name-inp"></P>
						<p class="type">
							<span class="typ">Gender</span>
                    	    <input type="radio" name="sGender" value="Male" class="typo">Male
                        	<input type="radio" name="sGender" value="Female" class="typo">Female
                </p>

				<p class="name">
						Date of Vacination :</p>
				<p>
					<input type="date" name="sDateOfVacination"  class="name-inp"></P>
 				<p class="name">
						Vacine Name :</p>
				<p>
					<input type="text" name="vacineName"  class="name-inp"></P>
				
					<br>
					<input type="submit" name="submit" value="SUBMIT" class="sub">		
			</form>
			<input type="submit" name="submit" onclick="window.location.href='displayData'"; value="View All Data" class="sub"></p>		
			<br>
			${msg}
			
		</div>
		
	    </div>
	</div>
</body>
</html>