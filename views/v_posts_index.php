<h1>Posts by users you follow:</h1>

	<p><a href="/posts/add">Add a new post</a><br><br></p>

<?php foreach($posts as $post): ?>

<article>

    <p><b><?=$post['first_name']?> <?=$post['last_name']?></b> posted:</p>

    <h4><?=$post['content']?></h4>

    <time datetime="<?=Time::display($post['created'],'Y-m-d G:i')?>">
        <?=Time::display($post['created'])?>
    </time>

    <br>
    <br>

</article>

<?php endforeach; ?>