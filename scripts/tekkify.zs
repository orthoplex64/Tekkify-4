/*

-- Seems to be broken in this version of MineTweaker.

var toRemove = [
    // Vanilla
    <minecraft:diamond_pickaxe>,
    <minecraft:iron_pickaxe>,

    // Tinkers Construct
    <TConstruct:ToolForgeBlock:*>,
    <TConstruct:CraftingSlab:5>
] as IItemStack[];

for item in toRemove {
    recipes.remove(item);
}

*/

recipes.remove(<minecraft:stone_pickaxe>);
recipes.remove(<minecraft:iron_pickaxe>);
recipes.remove(<minecraft:diamond_pickaxe>);

recipes.remove(<TConstruct:ToolForgeBlock:*>);
recipes.remove(<TConstruct:CraftingSlab:5>);

// Tinkers Construct

//mods.tconstruct.Modifiers.remove("Flux");