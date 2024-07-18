/// @description Insert description here
// You can write your code in this editor
txtb_spr = spr_textbox;
txtb_img = 0;
txtb_spr_w = 0;
txtb_spr_h = 0;
txtb_spd = 0.5;
txtb_width = 580;
txtb_height = 300;
depth = -100

items = 
[
	["Kick", spr_test, "6 Damage, 0.25s Cooldown", "Make them bite the dust."],
	["placeHolder", spr_test, "Stats", "Description"],
	["placeHolder1", spr_test, "Stats", "Description"],
	["placeHolder2", spr_test, "Stats", "Description"],
	["placeHolder3", spr_test, "Stats", "Description"],
	["placeHolder4", spr_test, "Stats", "Description"],
]

itemCount = array_length(items)
selectedItem = 0
itemDistance = 64

global.deck =
[
    
]