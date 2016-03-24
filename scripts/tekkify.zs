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
