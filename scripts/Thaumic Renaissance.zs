import mods.thaumcraft.Crucible;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.ArcaneWorkbench;

#botania tweakes
//Recipes copies from GT: NewHorizons modpack;
//owner and author: combuster and DreamMasterXXL
//flower craft, dupe and disassemble
var flowers as IItemStack[] = [
    <botania:flower:0>,
    <botania:flower:1>,
    <botania:flower:2>,
    <botania:flower:3>,
    <botania:flower:4>,
    <botania:flower:5>,
    <botania:flower:6>,
    <botania:flower:7>,
    <botania:flower:8>,
    <botania:flower:9>,
    <botania:flower:10>,
    <botania:flower:11>,
    <botania:flower:12>,
    <botania:flower:13>,
    <botania:flower:14>,
    <botania:flower:15>
];

var petals as IItemStack[] = [
    <botania:petal:0>,
    <botania:petal:1>,
    <botania:petal:2>,
    <botania:petal:3>,
    <botania:petal:4>,
    <botania:petal:5>,
    <botania:petal:6>,
    <botania:petal:7>,
    <botania:petal:8>,
    <botania:petal:9>,
    <botania:petal:10>,
    <botania:petal:11>,
    <botania:petal:12>,
    <botania:petal:13>,
    <botania:petal:14>,
    <botania:petal:15>
];

var mushrooms as IItemStack[] = [
    <botania:mushroom:0>,
    <botania:mushroom:1>,
    <botania:mushroom:2>,
    <botania:mushroom:3>,
    <botania:mushroom:4>,
    <botania:mushroom:5>,
    <botania:mushroom:6>,
    <botania:mushroom:7>,
    <botania:mushroom:8>,
    <botania:mushroom:9>,
    <botania:mushroom:10>,
    <botania:mushroom:11>,
    <botania:mushroom:12>,
    <botania:mushroom:13>,
    <botania:mushroom:14>,
    <botania:mushroom:15>
];

var dyes as IOreDictEntry[] = [
    <ore:dyeWhite>,
        <ore:dyeOrange>,
            <ore:dyeMagenta>,
                <ore:dyeLightBlue>,
                    <ore:dyeYellow>,
                        <ore:dyeLime>,
                            <ore:dyePink>,
                                <ore:dyeGray>,
                                    <ore:dyeLightGray>,
                                        <ore:dyeCyan>,
                                            <ore:dyePurple>,
                                                <ore:dyeBlue>,
                                                    <ore:dyeBrown>,
                                                        <ore:dyeGreen>,
                                                            <ore:dyeRed>,
    <ore:dyeBlack>
];

for i, flower in flowers{
    var mushroom = mushrooms[i];
    var petal = petals[i];
    var dye = dyes[i];

    Crucible.registerRecipe("mushroom_to_flower" + i, "BASICBOTABY", flower, mushroom, [<aspect:praecantatio>*10, <aspect:victus>*10]);
    
    Crucible.registerRecipe("flower_to_mushroom" + i, "BOTANYDECREASE", mushroom, flower, [<aspect:tenebrae>*10]);

    Crucible.registerRecipe("flower_dupe" + i, "FLOWERDUPE", flower * 2, flower, [<aspect:tinctura>*15, <aspect:victus> * 5, <aspect:herba> * 5, <aspect:victus>]);

    Infusion.registerRecipe("flower_exchange" + i, "FLOWEREXCHANGE", flower ,4, [<aspect:herba>*15, <aspect:permutatio>*15, <aspect:sensus>*25], <botania:flower:*>, [dye, dye, dye, dye]); 
}

//botany brewery
recipes.remove(<botania:brewery>);
Infusion.registerRecipe("botany_brewery", "PLANTBREWERY", <botania:brewery> , 7, [<aspect:humanus>*50, <aspect:machina>*100, <aspect:praecantatio>*50], <minecraft:brewing_stand>, [<ore:ingotGold>, <botania:managlass>, <botania:livingrock0slab>, <botania:livingrock0slab>, <botania:livingrock0slab>, <botania:managlass>, <ore:ingotGold>, <botania:managlass>, <botania:livingrock0slab>, <botania:livingrock0slab>, <botania:livingrock0slab>, <botania:managlass>]); 

//botany virus
recipes.remove(<botania:virus:*>);
ArcaneWorkbench.registerShapedRecipe("zombie_virus", "HORSEVIRUS", 50, [<aspect:aqua> * 2, <aspect:perditio> * 2], <botania:virus:0>, [[<minecraft:skull:2>, <botania:vineball>, <ore:oreCrystalTaint>], [<ore:manaPearl>, <minecraft:magma_cream>, <minecraft:fermented_spider_eye>]]);
ArcaneWorkbench.registerShapedRecipe("skeleton_virus", "HORSEVIRUS", 50, [<aspect:aqua> * 2, <aspect:perditio> * 2], <botania:virus:1>, [[<minecraft:skull:0>, <botania:vineball>, <ore:oreCrystalTaint>], [<ore:manaPearl>, <minecraft:magma_cream>, <minecraft:fermented_spider_eye>]]);

//botany bottle
recipes.remove(<botania:vial:1>);
ArcaneWorkbench.registerShapedRecipe("vial_big", "LARGERVIAL", 150, [<aspect:aqua> * 2], <botania:vial:1>, [[<botania:elfglass>, <thaumicaugmentation:warded_button_greatwood>, <botania:elfglass>], [<botania:elfglass>, null, <botania:elfglass>], [<botania:elfglass>, <botania:elfglass>, <botania:elfglass>]]);

//rune altar
recipes.remove(<botania:runealtar>);
Infusion.registerRecipe("runealtar", "BOTANYALTAR@3", <botania:runealtar> , 8, [<aspect:auram>*50, <aspect:fabrico>*200, <aspect:herba>*200, <aspect:praecantatio>*100], <thaumcraft:infusion_matrix>, [<ore:livingrock>, <ore:ingotManasteel>, <ore:gemPrismarine>, <ore:manaPearl>, <ore:livingrock>, <ore:ingotManasteel>, <ore:gemPrismarine>, <ore:manaPearl>]);

//alchemy catalyst
recipes.remove(<botania:alchemycatalyst>);
ArcaneWorkbench.registerShapedRecipe("alchemycatalyst", "ALCHEMYCATALYST", 300, [<aspect:ordo> * 2, <aspect:terra> * 1, <aspect:aqua> * 1], <botania:alchemycatalyst>, [[<ore:livingrock>, <ore:manaPearl>, <ore:livingrock>], [<minecraft:brewing_stand>, <thaumcraft:metal_alchemical>, <minecraft:brewing_stand>], [<ore:livingrock>, <ore:ingotManasteel>, <ore:livingrock>]]);

//terra plate
recipes.remove(<botania:terraplate>);
Infusion.registerRecipe("terraplate", "TERRAPLATE", <botania:terraplate> , 12, [<aspect:auram>*50, <aspect:fabrico>*200, <aspect:desiderium>*200, <aspect:permutatio>*100, <aspect:praecantatio> * 100, <aspect:terra>*250], <botania:runealtar>, [<thaumicbases:thauminite_ingot>, <botania:storage>, <ore:blockLapis>, <ore:livingrock>, <ore:runeWaterB>, <ore:runeFireB>, <ore:runeEarthB>, <ore:runeAirB>, <ore:runeSpringB>, <ore:runeSummerB>, <ore:runeAutumnB>, <ore:runeWinterB>, <thaumicbases:thauminite_ingot>, <botania:storage>, <ore:blockLapis>, <ore:livingrock>, <ore:runeManaB>, <ore:runeLustB>, <ore:runeGluttonyB>, <ore:runeGreedB>, <ore:runeSlothB>, <ore:runeWrathB>, <ore:runeEnvyB>, <ore:runePrideB>]);

//terra tools
recipes.remove(<botania:terrasword>);
Infusion.registerRecipe("terrasword", "TERRASWORD", <botania:terrasword> , 8, [<aspect:bestia> * 65, <aspect:aversio>*225, <aspect:praecantatio> * 75, <aspect:terra>*110], <thaumcraft:elemental_sword:*>, [<ore:blockEmerald>, <ore:livingwoodTwig>, <forbiddenmagicre:resourcenethershard:1>, <thaumicbases:crystalblockearth>, <forbiddenmagicre:resourcenethershard:1>, <ore:livingwoodTwig>, <ore:blockEmerald>, <ore:livingwoodTwig>, <forbiddenmagicre:resourcenethershard:1>, <thaumicbases:crystalblockearth>, <forbiddenmagicre:resourcenethershard:1>, <ore:livingwoodTwig>]);

recipes.remove(<botania:terrapick>);
Infusion.registerRecipe("terrapick", "TERRAPICK", <botania:terrapick> , 8, [<aspect:instrumentum> *250, <aspect:praecantatio> * 75, <aspect:terra>*110], <thaumcraft:elemental_pick:*>, [<ore:blockEmerald>, <ore:livingwoodTwig>, <forbiddenmagicre:resourcenethershard:1>, <thaumicbases:crystalblockearth>, <forbiddenmagicre:resourcenethershard:1>, <ore:livingwoodTwig>, <ore:blockEmerald>, <ore:livingwoodTwig>, <forbiddenmagicre:resourcenethershard:1>, <thaumicbases:crystalblockearth>, <forbiddenmagicre:resourcenethershard:1>, <ore:livingwoodTwig>]);

recipes.remove(<botania:terraaxe>);
Infusion.registerRecipe("terraaxe", "TERRAAXE", <botania:terraaxe> , 8, [<aspect:instrumentum> * 65, <aspect:herba>*175, <aspect:praecantatio> * 75, <aspect:terra>*110], <thaumcraft:elemental_axe:*>, [<ore:blockEmerald>, <ore:livingwoodTwig>, <forbiddenmagicre:resourcenethershard:1>, <thaumicbases:crystalblockearth>, <forbiddenmagicre:resourcenethershard:1>, <ore:livingwoodTwig>, <ore:blockEmerald>, <ore:livingwoodTwig>, <forbiddenmagicre:resourcenethershard:1>, <thaumicbases:crystalblockearth>, <forbiddenmagicre:resourcenethershard:1>, <ore:livingwoodTwig>]);

//alf portal
recipes.remove(<botania:livingwood:5>);
ArcaneWorkbench.registerShapedRecipe("livingwood_glowing", "ALFPORTAL", 100, [<aspect:terra> * 5, <aspect:aqua> * 5], <botania:livingwood:5> * 4, [[<ore:ingotSteeleaf>, <ore:livingwood>, <ore:ingotSteeleaf>], [<ore:livingwood>, <ore:glowstone>, <ore:livingwood>], [<ore:ingotSteeleaf>, <ore:livingwood>, <ore:ingotSteeleaf>]]);

recipes.remove(<botania:alfheimportal>);
Infusion.registerRecipe("alfheimportal", "ALFPORTAL", <botania:alfheimportal> , 16, [<aspect:vacuos>*125, <aspect:praecantatio>*250, <aspect:motus>*250, <aspect:alienis> * 250, <aspect:herba>*250], <botania:alchemycatalyst>, [<ore:ingotFiery>, <ore:ingotTerrasteel>, <thaumcraft:metal_alchemical>, <botania:livingwood:5>, <ore:glowstone>, <thaumcraft:metal_alchemical>, <botania:livingwood:5>, <ore:ingotFiery>, <ore:ingotTerrasteel>, <thaumcraft:metal_alchemical>, <botania:livingwood:5>, <ore:glowstone>, <thaumcraft:metal_alchemical>, <botania:livingwood:5>]);

//pylons
recipes.remove(<botania:pylon:*>);
ArcaneWorkbench.registerShapedRecipe("pylon_mana", "MANACRYSTAL", 100, [<aspect:aqua> * 2, <aspect:ordo> * 2, <aspect:aer> * 2], <botania:pylon>, [[<thaumicbases:crystalblockwater>, <botania:storage>, <thaumicbases:crystalblockwater>], [<ore:ingotGold>, <botania:storage:3>, <ore:ingotGold>], [<thaumicbases:crystalblockwater>, <botania:storage>, <thaumicbases:crystalblockwater>]]);
ArcaneWorkbench.registerShapedRecipe("pylon_alf", "ALFCRYSTAL", 200, [<aspect:terra> * 5, <aspect:ordo> * 10, <aspect:aer> * 5], <botania:pylon:1>, [[<thaumicbases:crystalblockearth>, <ore:ingotTerrasteel>, <thaumicbases:crystalblockearth>], [<ore:ingotSteeleaf>, <botania:pylon:0>, <ore:ingotSteeleaf>], [<thaumicbases:crystalblockearth>, <ore:ingotTerrasteel>, <thaumicbases:crystalblockearth>]]);
Infusion.registerRecipe("pylon_boss", "WORLDOFGAIA", <botania:pylon:2> , 32, [<aspect:tenebrae>*125, <aspect:praecantatio>*250, <aspect:vinculum>*250, <aspect:vitreus> * 125, <aspect:herba>*250], <botania:pylon:0>, [<tg:fabric_void>, <ore:plateVoid>,<ore:plateThaumium>, <ore:plateThaumium>, <ore:elvenDragonstone>, <ore:plateVoid>, <tg:fabric_void>, <ore:plateVoid>,<ore:plateThaumium>, <ore:plateThaumium>, <ore:elvenDragonstone>, <ore:plateVoid>]);

#ThaumAdditions

Crucible.removeRecipe(<thaumadditions:vis_seeds/aer>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/terra>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/ignis>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/aqua>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/ordo>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/perditio>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/lux>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/vacuos>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/motus>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/gelum>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/vitreus>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/metallum>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/victus>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/mortuus>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/potentia>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/praecantatio>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/permutatio>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/tenebrae>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/volatus>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/herba>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/instrumentum>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/vinculum>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/spiritus>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/exanimis>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/bestia>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/fluctus>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/infernum>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/auram>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/alkimia>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/vitium>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/alienis>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/fabrico>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/machina>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/cognitio>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/sensus>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/aversio>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/praemunio>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/desiderium>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/humanus>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/sonus>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/exitium>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/ventus>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/caeles>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/visum>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/imperium>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/draco>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/tempus>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/tinctura>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/superbia>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/desidia>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/ira>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/infernus>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/luxuria>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/gula>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/invidia>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/corpus>);
Crucible.removeRecipe(<thaumadditions:vis_seeds/fames>);

Infusion.removeRecipe(<thaumadditions:seal_symbol:*>);