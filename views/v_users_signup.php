<h2>Sign up</h2>

<form action="/users/p_signup" method="POST">
    <p>
    First Name (4 characters minimum):
    <input type='text' name="first_name" data-validation="length" data-validation-length="min4">
    </p>
    <p>
    Last Name (4 characters minimum):
    <input type='text' name="last_name" data-validation="length" data-validation-length="min4">
    </p>
    <p>
    Email:
    <input type='text' name="email" data-validation="email">
    </p>
    <p>
    Password (4 characters minimum):
    <input type='password' name="password" data-validation="length" data-validation-length="min4">
    </p>


    <?php if(isset($error) && $error == 'email-exists'): ?>
        <div class='error'>
            There is already an account associated with this email. 
            <a href="/users/login">Login</a>
        </div>
    <?php endif; ?>

    <input type='submit' value='Sign up'>
</form>
 
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.1.27/jquery.form-validator.min.js"></script>
<script> $.validate(); </script>