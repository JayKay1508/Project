<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>category</title>

<style>
.jumbotron {
	background-color: white;
	color: #27A4F7;
}
button {
	background-color: white;
	color: #27A4F7;
	width: 180px;
}
}
</style>
<script type="text/javascript">
	function formCategory() {
		// Make quick references to our fields
		var name = document.getElementById('name');
		var description = document.getElementById('description');
		
		if (notEmpty(name, "Category Name Should not be empty")) {
			if (notEmpty(description, "Description Should not be empty")) {
				return true;
			}
		}
		return false;
	}
	
	function notEmpty(elem, helperMsg) {
		if (elem.value.length == 0) {
			alert(helperMsg);
			elem.focus(); // set the focus to this input
			return false;
		}
		return true;
	}

	
	</script>
</head>
<body>


	<div class="container" style="color: #1F618D"> 
		<div class="jumbotron" style="background-color:#EAECEE"> 
			
			<h3 align="center" style="color: #27A4F7">Create a new category</h3>

			<form action="newCategory" onsubmit="return formCategory()" class="form-horizontal"  method="post"   role="form" name="category">
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Description about category:</label> 
					<input  name="categoryName"class="form-control" placeholder="categoryName" type="text"  id="name"  >
				</div>
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Description about category Details:</label> 
					<input  name="categoryDetails"class="form-control" placeholder="categoryDetails" type="text"  id="description"  >
				</div>
				
				<button style="background-color: #27A4F7;color:white" type="submit" value="submit" class="btn btn-default">Upload</button>
				
				</form>

</body>
</html>