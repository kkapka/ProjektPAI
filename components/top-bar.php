<?php

function setTopBarTitle($name){
    echo<<<echo_end

	<div class="row">
		<div class="col-1">
			<div class="bar">$name</div>
		</div>
	</div>

echo_end;

}

?>