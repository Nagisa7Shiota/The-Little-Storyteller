/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if keyboard_check(ord("C"))
and obj_inventory.gui_visible
	{
	if obj_inventory.inventory.item_find("rock") >= 0
	and obj_inventory.inventory.item_find("tree") < 0
	and array_length(obj_inventory.inventory._inventory_items) = 1
	and obj_item_tree._is_unlocked == false
	{
		obj_inventory.inventory_player.item_add("tree",spr_elements_tree);
	}
	if obj_inventory.inventory.item_find("rock") >= 0
	and obj_inventory.inventory.item_find("tree") >= 0
	and obj_inventory.inventory.item_find("cloud") < 0
	and array_length(obj_inventory.inventory._inventory_items) = 2
	and obj_item_cloud._is_unlocked == false
	{
		obj_inventory.inventory_player.item_add("cloud",spr_elements_cloud);
	}
	if obj_inventory.inventory.item_find("rock") >= 0
	and obj_inventory.inventory.item_find("cloud") >= 0
	and obj_inventory.inventory.item_find("moon") < 0
	and array_length(obj_inventory.inventory._inventory_items) = 2
	and obj_item_moon._is_unlocked == false
	{
		obj_inventory.inventory_player.item_add("moon",spr_elements_moon);
	}
	if obj_inventory.inventory.item_find("tree") >= 0
	and obj_inventory.inventory.item_find("cloud") >= 0
	and obj_inventory.inventory.item_find("sun") < 0
	and array_length(obj_inventory.inventory._inventory_items) = 2
	and obj_item_sun._is_unlocked == false
	{
		obj_inventory.inventory_player.item_add("sun",spr_elements_sun);
	}
	if obj_inventory.inventory.item_find("sun") >= 0
	and obj_inventory.inventory.item_find("moon") >= 0
	and obj_inventory.inventory.item_find("star") < 0
	and array_length(obj_inventory.inventory._inventory_items) = 2
	and obj_item_star._is_unlocked == false
	{
		obj_inventory.inventory_player.item_add("star",spr_elements_star);
	}
	if obj_inventory.inventory.item_find("rock") >= 0
	and obj_inventory.inventory.item_find("moon") >= 0
	and obj_inventory.inventory.item_find("sun") >= 0
	and obj_inventory.inventory.item_find("star") >= 0
	and obj_inventory.inventory.item_find("cloud") >= 0
	and obj_inventory.inventory.item_find("tree") >= 0
	and obj_inventory.inventory.item_find("rose") < 0
	and array_length(obj_inventory.inventory._inventory_items) >= 5
	and obj_item_rose._is_unlocked == false
	{
		obj_inventory.inventory_player.item_add("rose", spr_elements_rose);
	}
}

if keyboard_check(ord("T"))
and obj_inventory.gui_visible
{	
	tls_element_text_list = [];
	
	var tls_element_text_function = function(_element){
		switch _element.name{
			case "rock":
			array_push(tls_element_text_list, "On a small landscape, there was a rock.")
			; break;
			case "tree":
			array_push(tls_element_text_list, "Here, a tree was standing randomly around.")
			; break;
			case "cloud":
			array_push(tls_element_text_list, "The sky had a few clouds, exactly only one.")
			; break;
			case "sun":
			array_push(tls_element_text_list, "Tho, the sun in this world shined bright today.")
			; break;
			case "moon":
			array_push(tls_element_text_list, "Tho, the moon in this world was full today.")
			; break;
			case "rose":
			array_push(tls_element_text_list, "The little fellow of a rose has a unique feature but what could it be?")
			; break;
			case "star":
			array_push(tls_element_text_list, "The sky showed a true beauty. A star.")
			; break;
		}
		};
	
	array_foreach(obj_inventory.inventory._inventory_items, tls_element_text_function);
	
	
	if obj_inventory.inventory.item_find("rock") >= 0
	and array_length(obj_inventory.inventory._inventory_items) = 1
	and array_length(obj_inventory.inventory_player._inventory_items) = 0
	{	
		array_push(tls_element_text_list,"'IT'S A ROCK!' said the little white one and had a new idea to create.");
		obj_item_tree._is_unlocked = false;
	}
	if obj_inventory.inventory.item_find("rock") >= 0
	and obj_inventory.inventory.item_find("tree") >= 0
	and obj_inventory.inventory.item_find("cloud") < 0
	and array_length(obj_inventory.inventory._inventory_items) = 2
	{
		array_push(tls_element_text_list,"A rock and a tree. Those two combined could create something unexpected.");
		obj_item_cloud._is_unlocked = false;
	}
	if obj_inventory.inventory.item_find("rock") >= 0
	and obj_inventory.inventory.item_find("cloud") >= 0
	and obj_inventory.inventory.item_find("moon") < 0
	and array_length(obj_inventory.inventory._inventory_items) = 2
	{
		array_push(tls_element_text_list,"Certain, it would be an idea if the rock would fly like a cloud.");
		obj_item_moon._is_unlocked = false;
	}
	if obj_inventory.inventory.item_find("tree") >= 0
	and obj_inventory.inventory.item_find("cloud") >= 0
	and obj_inventory.inventory.item_find("sun") < 0
	and array_length(obj_inventory.inventory._inventory_items) = 2
	{
		array_push(tls_element_text_list,"The tree looks lonely and the cloud might hinder its grow. How about something, which let the tree grow higher?");
		obj_item_sun._is_unlocked = false;
	}
	if obj_inventory.inventory.item_find("sun") >= 0
	and obj_inventory.inventory.item_find("moon") >= 0
	and obj_inventory.inventory.item_find("star") < 0
	and array_length(obj_inventory.inventory._inventory_items) = 2
	{
		array_push(tls_element_text_list,"Wait, a sun and a moon at the same time? The little fellow remembers about a song with 'Sonne', 'Mond' and...");
		obj_item_star._is_unlocked = false;
	}
	if obj_inventory.inventory.item_find("rock") >= 0
	and obj_inventory.inventory.item_find("moon") >= 0
	and obj_inventory.inventory.item_find("sun") >= 0
	and obj_inventory.inventory.item_find("star") >= 0
	and obj_inventory.inventory.item_find("cloud") >= 0
	and obj_inventory.inventory.item_find("tree") >= 0
	and obj_inventory.inventory.item_find("rose") < 0
	and array_length(obj_inventory.inventory._inventory_items) >= 5
	{
		array_push(tls_element_text_list,"After looking around, the one little fellow felt loney and was thinking of create something important.");
		obj_item_rose._is_unlocked = false;
	}
	if obj_inventory.inventory.item_find("rose") == 0
	and array_length(obj_inventory.inventory._inventory_items) >= 5
	{
		array_push(tls_element_text_list,"Ah yes, it remembered about something important. Love.");
	}
	
	
	tls_counter = array_length(tls_element_text_list);
	if(tls_counter > 0){
		obj_inventory.gui_visible = !obj_inventory.gui_visible;
		tls_stop = !tls_stop;
		show_debug_message("Close UI");
	}
	show_debug_message(tls_element_text_list);
	alarm[0] = 1;
}
