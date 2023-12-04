// Randomly spawn a cloud in the upper half of the screen
if (ds_stack_size(cloud_stack) < 3 && irandom(100) < 5) {
    var cloud = instance_create_layer(irandom(room_width), irandom(room_height / 2), "Instances", Clouds);
    ds_stack_push(cloud_stack, cloud);
}

// Update and check each cloud in the stack
var cloud_count = ds_stack_size(cloud_stack);
for (var i = 0; i < cloud_count; i++) {
    var cloud = ds_stack_top(cloud_stack);

    // Do something with the cloud (e.g., move it)
    cloud.x += cloud.move_speed;

    // Check if the cloud is out of bounds, remove it from the stack
    if (cloud.x < 0 || cloud.x > room_width) {
        instance_destroy(cloud);
        ds_stack_pop(cloud_stack);
    } else {
        ds_stack_push(cloud_stack, ds_stack_pop(cloud_stack));
    }
}