var toRemove = [
    // Tinkers Construct
    <TConstruct:ToolForgeBlock:*>,
    <TConstruct:CraftingSlab:5>
] as IItemStackAny[];

for item in toRemove {
    recipes.remove(item);
}

// Tinkers Construct

//mods.tconstruct.Modifiers.remove("Flux");