minetest.register_node("mymod:mynode", {
description = "My node",
tiles = {"mymod_mynode.png"},
groups = {cracky=3}
})
minetest.register_craftitem("mymod:myitem", {
description = "My Item",
inventory_image = "mymod_myitem.png"
})
minetest.register_craftitem("mymod:mycraft", {
description = "My Craft Item",
inventory_image = "mymod_mycraft.png"
})
minetest.register_craft({
output = "mymod:mycraft",
recipe = {
{"mymod:myitem", "" },
{"mymod:myitem","mymod:myitem"},
{"mymod:myitem","mymod:myitem"}
}
})
