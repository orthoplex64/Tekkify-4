import minetweaker.item.IItemStack;

import mods.nei.NEI;

import mods.tconstruct.Casting;
import mods.tconstruct.Modifiers;
import mods.tconstruct.Smeltery;

var toRemove = [] as IItemStack[];

toRemove = [
    // Vanilla
    <minecraft:stone_pickaxe>,
    <minecraft:iron_pickaxe>,
    <minecraft:golden_pickaxe>,
    <minecraft:diamond_pickaxe>,

    // Biomes o' Plenty
    <BiomesOPlenty:enderporter>,

    // Storage Drawers
    <StorageDrawers:upgrade:4>,
    <StorageDrawers:upgrade:6>,

    // Tinkers Construct
    <TConstruct:ToolForgeBlock:*>,
    <TConstruct:CraftingSlab:5>,

    <TConstruct:woodPattern:17>,
    <TConstruct:woodPattern:19>,
    <TConstruct:woodPattern:21>,

    <TConstruct:metalPattern:17>,
    <TConstruct:metalPattern:19>,
    <TConstruct:metalPattern:21>
];

for item in toRemove {
    recipes.remove(item);

    // Disabled for production, bit buggy with reloads
    //NEI.hide(item);
}

// Storage Drawers

<StorageDrawers:upgrade:5>.displayName = "Storage Upgrade (IV)";

var stick = <ore:stickWood>;

var gold = <ore:ingotGold>;
var diamond = <ore:gemDiamond>;

recipes.remove(<StorageDrawers:upgrade:3>);
recipes.addShaped(<StorageDrawers:upgrade:3>, [[gold, stick, gold], [stick, <StorageDrawers:upgrade:2>, stick], [gold, stick, gold]]);

recipes.remove(<StorageDrawers:upgrade:5>);
recipes.addShaped(<StorageDrawers:upgrade:5>, [[diamond, stick, diamond], [stick, <StorageDrawers:upgrade:3>, stick], [diamond, stick, diamond]]);

// Tinkers Construct

toRemove = [
    <TConstruct:metalPattern:17>,
    <TConstruct:metalPattern:19>,
    <TConstruct:metalPattern:21>
];

for item in toRemove {
    Casting.removeTableRecipe(item);
}

toRemove = [
    <minecraft:anvil:0>,
    <minecraft:anvil:1>,
    <minecraft:anvil:2>,
    <minecraft:stone>,
];

for item in toRemove {
    Smeltery.removeMelting(item);
}

//Modifiers.remove("Flux");