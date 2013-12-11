<h1>This is the profile of <?=$user->first_name?></h1>

	<p><a href="/posts/add">Add a new post</a><br><br></p>

<?php foreach($posts as $post): ?>

<article>
	<h4>
	<?=$post['content']?>
	</h4>

    <p><?=$post['first_name']?> <?=$post['last_name']?> 
    	posted:
    		<time datetime="<?=Time::display($post['created'],'Y-m-d G:i')?>">
    		<?=Time::display($post['created'])?>
    		</time>
    </p>   

    <p> <a href='/posts/edit/<?=$post['post_id']; ?>' > 
        Edit</a>
        —
        <a href='/posts/p_delete/<?=$post['post_id']; ?>'>
    	Delete</a>
    </p>
    <br>

</article>

<?php endforeach; ?>