enemyArray = ds_list_create(); // Use a ds_list to manage the fixed array
maxEnemies = 4; // Maximum number of enemies allowed
function spawnEnemy() {
    var newEnemy = instance_create_layer(random(room_width), random(room_height), "Enemies", Obj_eye); // Replace "LayerName" with the appropriate layer
    ds_list_add(enemyArray, newEnemy); // Add the new enemy to the list
}


// Spawn initial enemies
for (var i = 0; i < maxEnemies; i++) {
    spawnEnemy();
}
