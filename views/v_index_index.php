<div class="container">
    <div class="page-header">
		<h1>Welcome to <?=APP_NAME?><?php if($user) echo ', '.$user->first_name; ?></h1>
 	</div>

    <?php if($user): ?>

    <p>
    <a href="/posts/add">Add a post</a><br>
    <a href="/posts/users">Browse/follow users</a><br>
    <a href="/posts">Posts by users you follow</a> 
    </p>

<?php else: ?>

    <p>
    <a href='/users/signup'>Sign up</a><br>
    <a href='/users/login'>Log in</a>
    <p>+1 features:</p>
        <ul>
			<li>Delete a post</li>
			<li>Edit a post</li>
		</ul>

<?php endif; ?>
</div>