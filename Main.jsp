<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
/* Center-align the hotel name */
h2 {
	text-align: center;
	background-image: linear-gradient(to right, orange, white);
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	font-size: 36px;
}

.form-container {
	border: 1px solid #ccc;
	padding: 20px;
	max-width: 300px;
	margin: auto;
	font-family: Arial, sans-serif;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
}

.form-container label {
	font-weight: bold;
	display: block;
	margin-bottom: 5px;
}

.form-container input[type="text"], .form-container input[type="file"] {
	width: 100%;
	padding: 8px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

.form-container input[type="submit"] {
	background-color: #4CAF50;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 100%;
	font-size: 16px;
}

.form-container input[type="submit"]:hover {
	background-color: #45a049;
}
</style>
</head>
<body style="background-color: 	 #ffffff;">
	<!-- Center-aligned hotel name with gradient effect -->
	<h2>
		<img width="300" height="80" src="logo.webp"
			class="attachment-full size-full wp-image-2833 entered lazyloaded"
			alt="Hotel Ratna Palace, Hotels &amp; Villas - Logo"
			data-lazy-src="logo.png" data-ll-status="loaded">
	</h2>

	<div class="form-container" style="background-color: #ffe6e6;">

		<form action="Registration" method="post" id="Process"
			enctype="multipart/form-data">
			<label for="name">Name:</label> <input type="text" id="name"
				name="name" value="" required> <label for="aadhar">Aadhar
				card:</label> <input type="text" id="aadhar" name="aadhar" value=""
				pattern="\d{12}" title="Aadhar number should be 12 digits" required>
			<label for="capture">Photo Capture </label><input type="file"
				accept="image/*" capture="camera" name="files[]" multiple required>
			<label for="mob">Mobile Number:</label> <input type="text" id="mob"
				name="mob" value="" pattern="\d{10}"
				title="Mobile number should be 10 digits" required> <label
				for="mob">Room Number:</label> <input type="text" id="room"
				name="room" value="" title="Enter Room Number" required> <label
				for="file">Upload Document:</label> <input type="file" id="file"
				name="file" required multiple="multiple"> <input
				type="submit" id="process" name="process" value="Process"
				onclick="CallProcess();">
		</form>
	</div>

	<script>
		function CallProcess() {
			document
					.getElementById('Process')
					.addEventListener(
							'submit',
							function(event) {
								// Perform custom validations here
								const fname = document.getElementById('fname').value;
								const aadhar = document
										.getElementById('aadhar').value;
								const mob = document.getElementById('mob').value;
								const file = document.getElementById('file').files[0];

								if (!fname || !aadhar.match(/^\d{12}$/)
										|| !mob.match(/^\d{10}$/) || !file) {
									alert('Please ensure all fields are filled correctly.');
									event.preventDefault(); // Prevent the form from submitting
								}
							});
		}
	</script>
</body>
</html>
