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
    <TConstruct:metalPattern:21>,

    // OpenComputers
    <OpenComputers:item:62>,
    
    // Forestry
    <Forestry:factory:7>,
    
    // MineFactory Reloaded
    <MineFactoryReloaded:fishingrod>,
    <MineFactoryReloaded:needlegun.ammo.lava>,
    <MineFactoryReloaded:needlegun.ammo.sludge>,
    <MineFactoryReloaded:needlegun.ammo.sewage>,
    <MineFactoryReloaded:needlegun.ammo.fire>,
    <MineFactoryReloaded:needlegun.ammo.anvil>,
    <MineFactoryReloaded:rocketlauncher>,
    <MineFactoryReloaded:rocket:*>,
    
    // Railcraft
    <Railcraft:cart.gift>
];

for item in toRemove {
    recipes.remove(item);

    // Disabled for production, bit buggy with reloads
    //NEI.hide(item);
}

// MineFactory Reloaded

recipes.remove(<MineFactoryReloaded:safarinet.singleuse>);
recipes.addShaped(<MineFactoryReloaded:safarinet.singleuse>, [[null, <minecraft:ender_pearl>, null], [<minecraft:string>, <minecraft:egg>, <minecraft:string>], [null, <ore:slimeball>, null]]);

recipes.remove(<MineFactoryReloaded:safarinet.reusable>);
recipes.addShaped(<MineFactoryReloaded:safarinet.reusable>, [[null, <minecraft:ghast_tear>, null], [<ore:itemSkull>, <MineFactoryReloaded:safarinet.singleuse>, <ore:itemSkull>], [null, <ore:ingotEnderium>, null]]);

recipes.remove(<MineFactoryReloaded:machine.1:14>); # Meat Packer
recipes.remove(<MineFactoryReloaded:stone:11>);

recipes.addShaped(<MineFactoryReloaded:machine.1:14>, [[<ore:sheetPlastic>, <minecraft:flint_and_steel>, <ore:sheetPlastic>], [<minecraft:brick_block>, <ThermalExpansion:Frame:0>, <minecraft:brick_block>], [<minecraft:brick_block>, <ThermalExpansion:material:1>, <minecraft:brick_block>]]);

recipes.addShaped(<MineFactoryReloaded:stone:11> * 4, [[<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>], [<minecraft:stone_slab>, <minecraft:sugar>, <minecraft:stone_slab>], [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]]);
recipes.addShapeless(<MineFactoryReloaded:stone:11> * 2, [<MineFactoryReloaded:stone:1>, <MineFactoryReloaded:stone:1>]);

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

Modifiers.remove("Flux");
