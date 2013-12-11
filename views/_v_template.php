<!DOCTYPE html>
<html>
<head>
	<title><?php if(isset($title)) echo $title; ?></title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

	<!-- Bootstrap -->
    <link href="/css/bootstrap.min.css" rel="stylesheet" media="screen">
				
	<!-- Controller Specific JS/CSS -->
	<?php if(isset($client_files_head)) echo $client_files_head; ?>
</head>

<body>
    <div id="wrap">
        <div class="container">
            <div id='menu'>

                <a href='/'>Home</a>

                <!-- Menu for users who are logged in -->
                <?php if($user): ?>

                    <a href='/users/profile'>Profile</a>
                    <a href='/users/logout'>Logout</a>

                <!-- Menu options for users who are not logged in -->
                <?php else: ?>

                    <a href='/users/signup'>Sign up</a>
                    <a href='/users/login'>Log in</a>

                <?php endif; ?>

            </div>
            <div>
            <?php if(isset($content)) echo $content; ?>
            </div>
        </div>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="//code.jquery.com/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

</body>
</html>