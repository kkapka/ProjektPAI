<?php

    header("Cache-Control: no-store, no-cache, must-revalidate");
    header("Cache-Control: post-check=0, pre-check=0, max-age=0", false);
    header("Pragma: no-cache");

    include_once "connect.php";
    include_once "./components/generate_token.php";
?>