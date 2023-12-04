for (var i = 0; i < ds_list_size(enemyArray); i++) {
    var enemy = ds_list_find_value(enemyArray, i);

    // Check if the enemy instance exists (if it's not dead)
    if (!instance_exists(enemy)) {
        // Remove the dead enemy from the list
        ds_list_delete(enemyArray, i);
        // Spawn a new enemy to refill the list
        spawnEnemy();
    }
}

