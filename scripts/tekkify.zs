import minetweaker.item.IItemStack;

import mods.nei.NEI;

import mods.appeng.Inscriber;

import mods.tconstruct.Casting;
import mods.tconstruct.Modifiers;
import mods.tconstruct.Smeltery;

var toRemove = [] as IItemStack[];

toRemove = [
    // Biomes o' Plenty
    <BiomesOPlenty:enderporter>,

    // Storage Drawers
    <StorageDrawers:upgrade:4>,
    <StorageDrawers:upgrade:6>,

    // Tinkers Construct
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
    <Railcraft:cart.gift>,

    // Galacticraft
    <GalacticraftCore:tile.solar:*>,
    <GalacticraftCore:tile.machine>,
    <GalacticraftCore:tile.machineTiered:*>,
    <GalacticraftCore:item.basicItem>,
    <GalacticraftCore:item.basicItem:1>,
    <GalacticraftCore:item.basicItem:12>,
    <GalacticraftMars:item.itemAstroMiner>,
    <GalacticraftMars:item.orionDrive>,
    <GalacticraftMars:item.itemBasicAsteroids:0>,
    <GalacticraftMars:item.itemBasicAsteroids:1>,
    <GalacticraftMars:item.itemBasicAsteroids:2>,

    // Pam's Harvestcraft
    <harvestcraft:market>
];

for item in toRemove {
    recipes.remove(item);
    item.addTooltip(format.red("Disabled"));
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

// Applied Energistics 2

Inscriber.addRecipe([<TConstruct:heavyPlate:2>], <minecraft:iron_ingot>, <minecraft:redstone>, <appliedenergistics2:item.ItemMultiMaterial:13>, "Press");
Inscriber.addRecipe([<TConstruct:heavyPlate:2>], <Railcraft:ingot>, <minecraft:redstone>, <appliedenergistics2:item.ItemMultiMaterial:14>, "Press");
Inscriber.addRecipe([<TConstruct:heavyPlate:2>], <minecraft:iron_ingot>, <minecraft:redstone_torch>, <appliedenergistics2:item.ItemMultiMaterial:15>, "Press");
Inscriber.addRecipe([<TConstruct:heavyPlate:2>], <minecraft:iron_ingot>, <ProjRed|Core:projectred.core.part:12>, <appliedenergistics2:item.ItemMultiMaterial:19>, "Press");
Inscriber.addRecipe([<TConstruct:heavyPlate:2>], <minecraft:iron_ingot>, <minecraft:paper>, <appliedenergistics2:item.ItemMultiMaterial:21>, "Press");

// Solar Flux

recipes.remove(<SolarFlux:solar1>);
recipes.addShaped(<SolarFlux:solar1>, [[<SolarFlux:mirror>, <SolarFlux:mirror>, <SolarFlux:mirror>], [<ore:ingotIron>, <Forestry:chipsets:1>, <ore:ingotIron>], [<Forestry:chipsets>, <ore:ingotLead>, <Forestry:chipsets>]]);

recipes.remove(<SolarFlux:solar2>);
recipes.addShaped(<SolarFlux:solar2>, [[null, <SolarFlux:solar1>, null], [<SolarFlux:solar1>, <ThermalExpansion:material:2>, <SolarFlux:solar1>], [null, <SolarFlux:solar1>, null]]);