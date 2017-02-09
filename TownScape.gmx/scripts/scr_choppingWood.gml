

/*
if (distance_to_object(obj_tree) < 16 && dir == 0.5) {
    sprite_index = spr_Char_ChopBack;
    image_speed = 0.25;
    
}


var tree = instance_place(x, y, obj_tree);
    
    with(tree) {
        treeHealth -= 0.05
        sprite_index = spr_Tree_Hit;
        image_index = 0.1;
        if (treeHealth <= 0) {
            instance_create(tree.x, tree.y, obj_stump);
            instance_destroy();
        }
    }
}


/*
