import minetweaker.item.IItemStack;

import mods.nei.NEI;

import mods.tconstruct.Casting;
import mods.tconstruct.Modifiers;

var toRemove = [] as IItemStack[];

toRemove = [
    // Vanilla
    <minecraft:stone_pickaxe>,
    <minecraft:iron_pickaxe>,
    <minecraft:golden_pickaxe>,
    <minecraft:diamond_pickaxe>,

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

//Modifiers.remove("Flux");