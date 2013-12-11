<form method ='POST' action ='/posts/p_edit/<?=$post['post_id']; ?>'>

<h4>Edit your post:</h4>
        <br>
        <textarea id='myPost' cols="20" rows="2" type='text' name='content' required><?=nl2br($post['content'])?></textarea>
                <br><br>
    <input class="buttons" type='submit' value='Edit Post'>
</form>