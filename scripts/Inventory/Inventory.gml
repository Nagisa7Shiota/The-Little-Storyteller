// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar
function Inventory() constructor{
 _inventory_items = [];
 item_set = function(_name, _sprite){
	array_push(_inventory_items, {
		name: _name,
		sprite: _sprite,
	});
 }
 
 item_find = function(_name){
	 for(var i = 0; i < array_length(_inventory_items); i++){
		if(_name == _inventory_items[i].name){
			return i;
		}
	 }
	 return -1;
 }
 
 item_add = function(_name, _sprite){
	if(item_find(_name) < 0){
		item_set(_name, _sprite);
	}
 }
 
 item_remove = function(_name){
	array_delete(_inventory_items, item_find(_name),1);
 }
 
 item_get = function(){
	return _inventory_items;
 }
 
 toString = function() {
	return json_stringify(_inventory_items);
 }
 
}
