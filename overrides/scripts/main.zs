import crafttweaker.api.recipe.FurnaceRecipeManager;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.ItemDefinition;

//Altimeter compat
<tag:items:supplementaries:altimeters>.add(<item:caverns_and_chasms:depth_gauge>);

//Silver compat
//recipes.remove(<item:caverns_and_chasms:silver_ingot>);
recipes.removeByName("caverns_and_chasms:silver_ingot_from_smelting_soul_silver_ore");
furnace.addRecipe("silver_ingot_from_smelting_soul_silver_ore_compat", <item:oreganized:silver_ingot>, <item:caverns_and_chasms:soul_silver_ore>, 1.0, 200);
recipes.removeByName("caverns_and_chasms:silver_ingot_from_blasting_soul_silver_ore");
blastFurnace.addRecipe("silver_ingot_from_blasting_soul_silver_ore_compat", <item:oreganized:silver_ingot>, <item:caverns_and_chasms:soul_silver_ore>, 1.0, 100);

craftingTable.addShaped("silver_block_compat", <item:oreganized:silver_block>, [
    [<tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>],
    [<tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>],
    [<tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>]]);

recipes.removeByName("galosphere:silver_panel");	
craftingTable.addShaped("silver_panel_compat", <item:galosphere:silver_panel> * 8, [
    [<item:oreganized:silver_block>, <item:oreganized:silver_block>],
    [<item:oreganized:silver_block>, <item:oreganized:silver_block>]]);
stoneCutter.addRecipe("silver_panel_from_cutting_compat", <item:galosphere:silver_panel> * 2, <item:oreganized:silver_block>);

<tag:items:custom:silver_tools>.add(<tag:items:caverns_and_chasms:magic_damage_items>);
<tag:items:custom:silver_tools>.add(<item:caverns_and_chasms:silver_helmet>);
<tag:items:custom:silver_tools>.add(<item:caverns_and_chasms:silver_chestplate>);
<tag:items:custom:silver_tools>.add(<item:caverns_and_chasms:silver_leggings>);
<tag:items:custom:silver_tools>.add(<item:caverns_and_chasms:silver_boots>);
recipes.removeByName("caverns_and_chasms:silver_nugget_from_smelting");
recipes.removeByName("caverns_and_chasms:silver_nugget_from_blasting");
furnace.addRecipe("silver_nugget_from_smelting_compat", <item:oreganized:silver_nugget>, <tag:items:custom:silver_tools>, 0.1, 200);
blastFurnace.addRecipe("silver_nugget_from_blasting_compat", <item:oreganized:silver_nugget>, <tag:items:custom:silver_tools>, 0.1, 100) ;

<tag:items:minecraft:beacon_payment_items>.add(<tag:items:forge:ingots/silver>);
<tag:items:minecraft:beacon_base_blocks>.add(<item:oreganized:silver_block>);

//Spectre Flair Fix
recipes.removeByName("galosphere:spectre_flare");	
craftingTable.addShaped("spectre_flare_fix", <item:galosphere:spectre_flare>, [
    [<item:galosphere:bottle_of_spectre>],
	[<tag:items:forge:ingots/silver>],
    [<item:minecraft:stick>]]);

//Quark Oddities Magnet Recipe
recipes.removeByName("quark:oddities/crafting/magnet");
craftingTable.addShaped("new_magnet_block_recipe", <item:quark:magnet>, [
    [<tag:items:forge:cobblestone>, <item:minecraft:iron_ingot>, <tag:items:forge:cobblestone>],
    [<item:minecraft:lapis_lazuli>, <item:spelunkery:raw_magnetite_block>, <item:spelunkery:cinnabar>],
    [<tag:items:forge:cobblestone>, <item:minecraft:iron_ingot>, <tag:items:forge:cobblestone>]]);
	
//Patina Stuff
recipes.removeByName("caverns_and_chasms:cupric_torch");
craftingTable.addShaped("new_cupric_torch", <item:caverns_and_chasms:cupric_torch>, [
    [<tag:items:c:coal>],
    [<item:minecraft:stick>],
    [<item:copperative:patina>]
]);

recipes.removeByName("caverns_and_chasms:cupric_campfire");
craftingTable.addShaped("new_cupric_campfire", <item:caverns_and_chasms:cupric_campfire>, [
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
    [<item:minecraft:stick>, <item:copperative:patina>, <item:minecraft:stick>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
]);

recipes.removeByName("caverns_and_chasms:cupric_brazier");
craftingTable.addShaped("new_cupric_brazier", <item:caverns_and_chasms:cupric_brazier>, [
    [<item:oreganized:silver_ingot>, <item:copperative:patina>, <item:oreganized:silver_ingot>],
    [<item:minecraft:air>, <item:oreganized:silver_ingot>, <item:minecraft:air>]
]);

recipes.removeByName("buzzier_bees:candles/cupric_candle");
craftingTable.addShaped("new_cupric_candle", <item:buzzier_bees:cupric_candle>, [
    [<item:minecraft:string>],
    [<item:minecraft:honeycomb>],
    [<item:copperative:patina>]
]);

//Permfrost Replacer
Replacer.create().replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <item:quark:permafrost>, <item:immersive_weathering:permafrost>).execute();

//Tallow & Wax Fixes
<tag:items:copperative:wax_indicators>.add(<item:immersive_weathering:tallow>);

//Slime Food
<tag:items:spelunkery:slime_foods>.add(<item:environmental:duck>);

//Supplementaries Weird Slime Ball Fix
recipes.removeByName("supplementaries:slime_ball");

//Remove Astral Potion Recipe
brewing.removeRecipeByOutputPotion(<potion:galosphere:astral>);

//Tuning Fork
recipes.removeByName("caverns_and_chasms:tuning_fork");
craftingTable.addShaped("new_tuning_fork", <item:caverns_and_chasms:tuning_fork>, [
    [<item:spelunkery:copper_nugget>, <item:minecraft:air>, <item:spelunkery:copper_nugget>],
    [<item:spelunkery:copper_nugget>, <item:minecraft:stick>, <item:spelunkery:copper_nugget>],
    [<item:minecraft:air>, <item:minecraft:copper_ingot>, <item:minecraft:air>]
]);

//Wicker Fence
recipes.removeByName("supplementaries:wicker_fence");
craftingTable.addShaped("new_wicker_fence", <item:supplementaries:wicker_fence>, [
    [<item:minecraft:stick>, <item:supplementaries:flax>, <item:minecraft:stick>],
    [<item:minecraft:stick>, <item:supplementaries:flax>, <item:minecraft:stick>]
]);

//Diet Food Groups
<tag:items:diet:fruits>.add(<item:hauntedharvest:rotten_apple>);
<tag:items:diet:fruits>.add(<item:atmospheric:passion_fruit>);
<tag:items:diet:fruits>.add(<item:atmospheric:shimmering_passion_fruit>);
<tag:items:diet:fruits>.add(<item:atmospheric:dragon_fruit>);
<tag:items:diet:fruits>.add(<item:atmospheric:golden_dragon_fruit>);
<tag:items:diet:fruits>.add(<item:atmospheric:currant>);
<tag:items:diet:fruits>.add(<item:atmospheric:orange>);
<tag:items:diet:fruits>.add(<item:atmospheric:blood_orange>);
<tag:items:diet:fruits>.add(<item:environmental:plum>);
<tag:items:diet:fruits>.add(<item:quark:ancient_fruit>);
<tag:items:diet:fruits>.add(<item:overweight_farming:melon_juice>);
<tag:items:diet:fruits>.add(<item:supplementaries:lumisene_bottle>);
<tag:items:diet:vegetables>.add(<item:hauntedharvest:corn>);
<tag:items:diet:vegetables>.add(<item:immersive_weathering:moss_clump>);
<tag:items:diet:vegetables>.add(<item:immersive_weathering:enchanted_golden_moss_clump>);
<tag:items:diet:vegetables>.add(<item:upgrade_aquatic:boiled_pickerelweed>);
<tag:items:diet:vegetables>.add(<item:spelunkery:portabella>);
<tag:items:diet:vegetables>.add(<item:minecraft:red_mushroom>);
<tag:items:diet:vegetables>.add(<item:minecraft:brown_mushroom>);
<tag:items:diet:vegetables>.add(<item:galosphere:lichen_cordyceps>);
<tag:items:diet:protein>.add(<item:goated:chevon>);
<tag:items:diet:protein>.add(<item:environmental:duck>);

//Cupric candle fix
recipes.removeByName("supplementaries:candle_holders/candle_holder_cupric");
craftingTable.addShaped("new_cupric_candle_holder", <item:supplementaries:candle_holder_cupric>, [
    [<item:buzzier_bees:cupric_candle>],
    [<item:minecraft:iron_ingot>]
]);

//Blank recipe fixes
recipes.removeByName("galosphere:barometer");
recipes.removeByName("galosphere:pink_salt_lamp");
recipes.removeByName("galosphere:silver_lattice");
recipes.removeByName("galosphere:silver_upgrade_smithing_template");

//Conflict fixes
recipes.removeByName("endergetic:cracked_end_stone_bricks");

recipes.removeByName("quark:building/crafting/mud_pillar");
craftingTable.addShaped("new_mud_pillar", <item:quark:mud_pillar>, [
    [<item:minecraft:mud_bricks>],
    [<item:minecraft:mud_bricks>]
]);

recipes.removeByName("caverns_and_chasms:dripstone_shingles");
craftingTable.addShaped("new_dripstone_shingles", <item:caverns_and_chasms:dripstone_shingles>, [
    [<item:minecraft:dripstone_block>, <item:minecraft:pointed_dripstone>],
    [<item:minecraft:pointed_dripstone>, <item:minecraft:dripstone_block>]
]);
craftingTable.addShaped("new_dripstone_shingles_alt", <item:caverns_and_chasms:dripstone_shingles>, [
    [<item:minecraft:pointed_dripstone>, <item:minecraft:dripstone_block>],
    [<item:minecraft:dripstone_block>, <item:minecraft:pointed_dripstone>]
]);

//Post Fixes
//recipes.removeByName("everycomp:q/atmospheric/rosewood_post");
//craftingTable.addShaped("rosewood_post_fix", <item:everycomp:q/atmospheric/rosewood_post>, [
//    [<item:atmospheric:rosewood_log>],
//	[<item:atmospheric:rosewood_log>],
//    [<item:atmospheric:rosewood_log>]
//]);
//recipes.removeByName("everycomp:q/atmospheric/stripped_rosewood_post");
//craftingTable.addShaped("stripped_rosewood_post_fix", <item:everycomp:q/atmospheric/stripped_rosewood_post>, [
//    [<item:atmospheric:stripped_rosewood_log>],
//	[<item:atmospheric:stripped_rosewood_log>],
//    [<item:atmospheric:stripped_rosewood_log>]
//]);
//recipes.removeByName("everycomp:q/atmospheric/grimwood_post");
//craftingTable.addShaped("grimwood_post_fix", <item:everycomp:q/atmospheric/grimwood_post>, [
//    [<item:atmospheric:grimwood_log>],
//	[<item:atmospheric:grimwood_log>],
//    [<item:atmospheric:grimwood_log>]
//]);
//recipes.removeByName("everycomp:q/atmospheric/stripped_grimwood_post");
//craftingTable.addShaped("stripped_grimwood_post_fix", <item:everycomp:q/atmospheric/stripped_grimwood_post>, [
//    [<item:atmospheric:stripped_grimwood_log>],
//	[<item:atmospheric:stripped_grimwood_log>],
//    [<item:atmospheric:stripped_grimwood_log>]
//]);
//recipes.removeByName("everycomp:q/upgrade_aquatic/driftwood_post");
//craftingTable.addShaped("driftwood_post_fix", <item:everycomp:q/upgrade_aquatic/driftwood_post>, [
//    [<item:upgrade_aquatic:driftwood_log>],
//	[<item:upgrade_aquatic:driftwood_log>],
//    [<item:upgrade_aquatic:driftwood_log>]
//]);
//recipes.removeByName("everycomp:q/upgrade_aquatic/stripped_driftwood_post");
//craftingTable.addShaped("stripped_driftwood_post_fix", <item:everycomp:q/upgrade_aquatic/stripped_driftwood_post>, [
//    [<item:upgrade_aquatic:stripped_driftwood_log>],
//	[<item:upgrade_aquatic:stripped_driftwood_log>],
//    [<item:upgrade_aquatic:stripped_driftwood_log>]
//]);

//Slab Fixes
//recipes.removeByName("stonezone:q/immersive_weathering/sandy_stone_vertical_slab_1");
//craftingTable.addShaped("sandy_stone_vertical_slab_fix", <item:stonezone:q/immersive_weathering/sandy_stone_vertical_slab>, [
//    [<item:immersive_weathering:sandy_stone>],
//	[<item:immersive_weathering:sandy_stone>],
//    [<item:immersive_weathering:sandy_stone>]
//]);
//recipes.removeByName("stonezone:q/immersive_weathering/snowy_stone_vertical_slab_1");
//craftingTable.addShaped("snowy_stone_vertical_slab_fix", <item:stonezone:q/immersive_weathering/snowy_stone_vertical_slab>, [
//    [<item:immersive_weathering:snowy_stone>],
//	[<item:immersive_weathering:snowy_stone>],
//    [<item:immersive_weathering:snowy_stone>]
//]);
//recipes.removeByName("stonezone:q/immersive_weathering/mossy_stone_vertical_slab_1");
//craftingTable.addShaped("mossy_stone_vertical_slab_fix", <item:stonezone:q/immersive_weathering/mossy_stone_vertical_slab>, [
//    [<item:immersive_weathering:mossy_stone>],
//	[<item:immersive_weathering:mossy_stone>],
//   [<item:immersive_weathering:mossy_stone>]
//]);