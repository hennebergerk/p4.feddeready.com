<?php
class practice_controller extends base_controller {
/*------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------*/
	public function test_db() {


		/*
		$q = 'INSERT INTO users
			SET first_name = "Albert",
			last_name = "Einstein"';

		echo $q;
		*/

		/*
		$q = 'UPDATE users
		SET email = "albert@aol.com"
		WHERE first_name = "Albert"';

		DB::instance(DB_NAME)->query($q);
		*/

		/*
		$new_user = Array(
			'first_name' => 'Albert',
			'last_name' => 'Einstein',
			'email' => 'albert@gmail.com',

			);

			DB::instance(DB_NAME)->insert('users',$new_user);
		*/
			#Lets pretend this is data we got from a form
			$_POST['first_name'] = 'Albert';

			# Make sure it's sanitized
			$_POST = DB::instance(DB_NAME)->sanitize($_POST);

			# Build the query
			$q = 'SELECT email
				FROM users
				WHERE first_name = "'.$POST['first_name'].'"';

			echo DB::instance(DB_NAME)->select_field($q);



}








}

/*------------------------------

	public function test1() {

	$imageObj = new Image('http://placekitten.com/1000/1000')
	$imageObj->resize

	}
}
-------------------------------*/