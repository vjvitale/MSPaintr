<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="stylesheet" type="text/css" href="/App.css"/>
	<script src="app.js"></script>
	<title>Home</title>
</head>
<body>
	<div class="LeftAlign">
        <a href="/home">MSPaintr</a>
        <br />
                <a href="/login">Sign in</a>
          <br />
                <a href="/profile">Profile</a>
          <br />
                <a href="/directmessages">DMs</a>
          <br />
          	<a href="/newpost">Add Post</a>
           <br />
          <input type ="text" id="search" />
	      <input type ="submit" value="Search"/>
      <br />
    </div>
	<img src="MSPaintRLogo.png" class="Profile-Logo"/>
	<div class="SubscriptionFeed">
		% for post in posts:
			<div class="Post">
			
				<p>POSTED BY: {{post["user_name"]}}</p>
				<img class="Post-Image" id={{post["post_id"]}} src={{post["post_image"]}} alt="Cannot Veiw Image"/>
	     		 <br/>
		         <input type ="text" id="user_name" />
		        <input type ="submit" value="Add Comment"/>
			  	<button  class="Profile-Button" onclick="updoot('{{post["post_image"]}}');"><span id="count{{post["post_image"]}}">{{post["likes"]}}</span>⭐</button>
			  	<br>
			  	<a href= seemore/{{post["post_id"]}}>See More</a>
			
			</div>
		% end
		
	</div>
</body>