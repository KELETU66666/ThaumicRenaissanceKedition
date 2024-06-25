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
Infusion.registerRecipe("terrasword", "TERRASWORD", <botania:terrasword> , 8, [<aspect:bestia> * 65, <aspect:aversio>*225, <aspect:praecantatio> * 75, <aspect:terra>*110], <thaumcraft:elemental_sword:*>, [<ore:blockEmerald>, <ore:livingwoodTwig>, <forbiddenmagicre:resourceshard:1>, <thaumicbases:crystalblockearth>, <forbiddenmagicre:resourceshard:1>, <ore:livingwoodTwig>, <ore:blockEmerald>, <ore:livingwoodTwig>, <forbiddenmagicre:resourceshard:1>, <thaumicbases:crystalblockearth>, <forbiddenmagicre:resourceshard:1>, <ore:livingwoodTwig>]);

recipes.remove(<botania:terrapick>);
Infusion.registerRecipe("terrapick", "TERRAPICK", <botania:terrapick> , 8, [<aspect:instrumentum> *250, <aspect:praecantatio> * 75, <aspect:terra>*110], <thaumcraft:elemental_pick:*>, [<ore:blockEmerald>, <ore:livingwoodTwig>, <forbiddenmagicre:resourceshard:1>, <thaumicbases:crystalblockearth>, <forbiddenmagicre:resourceshard:1>, <ore:livingwoodTwig>, <ore:blockEmerald>, <ore:livingwoodTwig>, <forbiddenmagicre:resourceshard:1>, <thaumicbases:crystalblockearth>, <forbiddenmagicre:resourceshard:1>, <ore:livingwoodTwig>]);

recipes.remove(<botania:terraaxe>);
Infusion.registerRecipe("terraaxe", "TERRAAXE", <botania:terraaxe> , 8, [<aspect:instrumentum> * 65, <aspect:herba>*175, <aspect:praecantatio> * 75, <aspect:terra>*110], <thaumcraft:elemental_axe:*>, [<ore:blockEmerald>, <ore:livingwoodTwig>, <forbiddenmagicre:resourceshard:1>, <thaumicbases:crystalblockearth>, <forbiddenmagicre:resourceshard:1>, <ore:livingwoodTwig>, <ore:blockEmerald>, <ore:livingwoodTwig>, <forbiddenmagicre:resourceshard:1>, <thaumicbases:crystalblockearth>, <forbiddenmagicre:resourceshard:1>, <ore:livingwoodTwig>]);

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

#Witchery

var items as IItemStack[] = [
<witchery:spinning_wheel>,
<witchery:kettle>,
<witchery:poppet>,
<witchery:attuned_stone>,
<witchery:altar> * 3,
<witchery:quartz_sphere>,
<witchery:anointing_paste>,
<witchery:chalice>,
<witchery:candelabra>,
<witchery:filtered_fume_funnel> * 1,
<witchery:circle_talisman>,
<witchery:ritual_circle_glyph> * 2,
<witchery:fume_filter>,
<witchery:arthana>
            ];

//Witches Oven
recipes.remove(<witchery:witches_oven>);
ArcaneWorkbench.registerShapedRecipe("witches_oven", "WITCHESOVEN", 500,
    [<aspect:ignis> * 2, <aspect:aqua> * 2,<aspect:perditio> * 2], <witchery:witches_oven>, [
    [<ore:plateIron>, <thaumcraft:metal_alchemical>, <ore:plateIron>],
    [<thaumcraft:smelter_vent>, <thaumcraft:smelter_thaumium>, <thaumcraft:smelter_vent>],
    [<ore:plateIron>, <minecraft:iron_bars>, <ore:plateIron>]
    ]);

//Fume Funnel
recipes.remove(<witchery:fume_funnel>);
ArcaneWorkbench.registerShapedRecipe("fume_funnel", "FUMEFUNNEL", 300,
    [<aspect:aqua> * 4], <witchery:fume_funnel>, [
    [<minecraft:bucket>, <ore:nitor>, <minecraft:bucket>],
    [<minecraft:bucket>, <minecraft:glowstone>, <minecraft:bucket>],
    [<thaumcraft:metal_alchemical>, <thaumcraft:smelter_aux>, <thaumcraft:metal_alchemical>]
    ]);

//Distillery
recipes.remove(<witchery:distillery>);
ArcaneWorkbench.registerShapedRecipe("distillery", "MACHINES", 200,
    [<aspect:aqua> * 4], <witchery:distillery>, [
    [<witchery:clay_jar>, <ore:plateIron>, <witchery:clay_jar>],
    [<ore:plateAlkimium>, <thaumcraft:alembic>, <ore:plateAlkimium>],
    [<ore:plateIron>, <witchery:attuned_stone>, <ore:plateIron>]
    ]);

//Spinning Wheel
recipes.remove(<witchery:distillery>);
ArcaneWorkbench.registerShapedRecipe("spinning_wheel", "MACHINES", 150,
    [<aspect:aer> * 2, <aspect:ordo> * 2], <witchery:spinning_wheel>, [
    [<witchery:silver_deposits>, <minecraft:item_frame>, <witchery:silver_deposits>],
    [<minecraft:item_frame>, <tg:spinning_wheel>, <minecraft:item_frame>],
    [<witchery:silver_deposits>,<witchery:attuned_stone>, <witchery:silver_deposits>]
    ]);

//Kettle
recipes.remove(<witchery:kettle>);
ArcaneWorkbench.registerShapedRecipe("kettle", "MACHINES", 150,
    [<aspect:ignis> * 2, <aspect:aqua> * 2], <witchery:kettle>, [
    [<thaumcraft:plank_greatwood>, <tg:yarn_thanium>, <thaumcraft:plank_greatwood>],
    [<tg:yarn_thanium>, <witchery:attuned_stone>, <tg:yarn_thanium>],
    [null,<thaumcraft:crucible>, null]
    ]);

//Poppet
recipes.remove(<witchery:poppet>);
ArcaneWorkbench.registerShapedRecipe("poppet", "POPPET", 150,
    [<aspect:aer> * 1, <aspect:aqua> * 1, <aspect:ordo> * 1, <aspect:perditio> * 1, <aspect:ignis> * 1, <aspect:terra> * 1], <witchery:poppet>, [
    [<thaumcraft:fabric>, <witchery:spanish_moss>, <thaumcraft:fabric>],
    [<witchery:bone_needle>, <witchery:spanish_moss>, <tg:yarn_ether>],
    [<thaumcraft:fabric>, <forbiddenmagicre:resourceshard:3>, <thaumcraft:fabric>]
    ]);

//Attuned Stone
recipes.remove(<witchery:attuned_stone>);
ArcaneWorkbench.registerShapedRecipe("attunedstone", "ATTUNEDSTONE", 150,
    [<aspect:aer> * 1, <aspect:aqua> * 1, <aspect:ordo> * 1, <aspect:perditio> * 1, <aspect:ignis> * 1, <aspect:terra> * 1], <witchery:attuned_stone>, [
    [<thaumcraft:salis_mundus>, <witchery:magic_whiff>, <thaumcraft:salis_mundus>],
    [<thaumcraft:salis_mundus>, <ore:gemDiamond>, <thaumcraft:salis_mundus>],
    [<thaumcraft:salis_mundus>,<minecraft:lava_bucket>, <thaumcraft:salis_mundus>]
    ]);

//Altar
recipes.remove(<witchery:altar>);
ArcaneWorkbench.registerShapedRecipe("witcheryaltar", "WALTAR", 150,
    [<aspect:aer> * 2, <aspect:aqua> * 2, <aspect:ordo> * 2, <aspect:perditio> * 2, <aspect:ignis> * 2, <aspect:terra> * 2], <witchery:altar> * 2, [
    [<witchery:horned_one_exhale>, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "praecantatio"}]}), <witchery:goddess_breath>],
    [<thaumcraft:stone_arcane_brick>, <witchery:rowan_log>, <thaumcraft:stone_arcane_brick>],
    [<thaumcraft:stone_arcane_brick>,<witchery:rowan_log>, <thaumcraft:stone_arcane_brick>]
    ]);

//Quartz Sphere
recipes.remove(<witchery:quartz_sphere>);
ArcaneWorkbench.registerShapedRecipe("quartzsphere", "QUARTZ", 200,
    [<aspect:aer> * 1, <aspect:aqua> * 1, <aspect:ordo> * 1, <aspect:perditio> * 1, <aspect:ignis> * 1, <aspect:terra> * 1], <witchery:quartz_sphere> * 2, [
    [<ore:gemQuartz>, <ore:blockQuartzDark>, <ore:gemQuartz>],
    [<ore:blockQuartzDark>, <witchery:rowan_log>, <ore:blockQuartzDark>],
    [<ore:gemQuartz>,<ore:blockQuartzDark>, <ore:gemQuartz>]
    ]);

//Chalice
recipes.remove(<witchery:chalice>);
ArcaneWorkbench.registerShapedRecipe("chalice", "RELICS", 100,
    [<aspect:aer> * 1, <aspect:aqua> * 1, <aspect:ordo> * 1, <aspect:perditio> * 1, <aspect:ignis> * 1, <aspect:terra> * 1], <witchery:chalice>, [
    [<ore:nuggetGold>, <witchery:attuned_stone>, <ore:nuggetGold>],
    [<ore:nuggetGold>, <witchery:glass_goblet>, <ore:nuggetGold>],
    [<thaumcraft:salis_mundus>,<ore:ingotGold>, <thaumcraft:salis_mundus>]
    ]);

//Fume Filter
recipes.remove(<witchery:fume_filter>);
ArcaneWorkbench.registerShapedRecipe("fumefilter", "FUMEFILTER", 250,
    [], <witchery:fume_filter>, [
    [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
    [<ore:plateThaumium>, <witchery:charged_attuned_stone>, <ore:plateThaumium>],
    [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
    ]);

//Candelabra
recipes.remove(<witchery:candelabra>);
ArcaneWorkbench.registerShapedRecipe("candelabra", "RELICS", 100,
    [<aspect:aer> * 2, <aspect:ignis> * 2, <aspect:ordo> * 2], <witchery:candelabra>, [
    [<thaumcraft:candle_white>, <thaumcraft:candle_white>, <thaumcraft:candle_white>],
    [<ore:ingotIron>, <witchery:attuned_stone>, <ore:ingotIron>],
    [<ore:plateIron>, <ore:ingotThaumium>, <ore:plateIron>]
    ]);

//Circle Talisman
recipes.remove(<witchery:circle_talisman>);
ArcaneWorkbench.registerShapedRecipe("circle_talisman", "TAILSMAN", 75,
    [<aspect:aer> * 1, <aspect:aqua> * 1, <aspect:ordo> * 1, <aspect:perditio> * 1, <aspect:ignis> * 1, <aspect:terra> * 1], <witchery:circle_talisman>, [
    [<tg:nugget_shade>, <tg:nugget_light>, <tg:nugget_shade>],
    [<tg:nugget_light>, <ore:gemDiamond>, <tg:nugget_light>],
    [<tg:nugget_shade>, <tg:nugget_light>, <tg:nugget_shade>]
    ]);

//Ritual Circle Glyph
recipes.remove(<witchery:ritual_circle_glyph>);
ArcaneWorkbench.registerShapedRecipe("glyph", "GLYPH", 150,
    [], <witchery:ritual_circle_glyph> * 2, [
    [<witchery:wood_ash>, <witchery:goddess_tear>, <witchery:wood_ash>],
    [<witchery:wood_ash>, <witchery:gypsum>, <witchery:wood_ash>],
    [<witchery:wood_ash>, <witchery:gypsum>, <witchery:wood_ash>]
    ]);

//Arthana
recipes.remove(<witchery:arthana>);
ArcaneWorkbench.registerShapedRecipe("arthana", "ARTHANA", 200,
    [<aspect:aer> * 1, <aspect:aqua> * 1, <aspect:ordo> * 1, <aspect:perditio> * 1, <aspect:ignis> * 1, <aspect:terra> * 1], <witchery:arthana>, [
    [<ore:nuggetQuicksilver>, <ore:nuggetThaumium>, <ore:gemEmerald>],
    [<ore:nuggetThaumium>, <minecraft:iron_sword:*>, <ore:nuggetThaumium>],
    [<ore:stickWood>, <ore:nuggetThaumium>, <ore:nuggetQuicksilver>]
    ]);

//Warm Blood
Crucible.registerRecipe("warm_blood", "WARMBLOOD",<witchery:warm_blood>, <twilightforest:fiery_blood>,
    [<aspect:exanimis> * 10,<aspect:infernus> * 10,<aspect:desiderium> * 10]);

//Filtered Fume Funnel
recipes.remove(<witchery:filtered_fume_funnel>);
Infusion.registerRecipe("filteredfumefunnel", "FILTERED_FUME_FUNNEL", <witchery:filtered_fume_funnel>, 4,
    [<aspect:fabrico> * 30, <aspect:permutatio> * 30, <aspect:ordo> * 30], <witchery:fume_funnel>,
    [<witchery:fume_filter>, <ore:ingotThaumium>, <thaumcraft:filter>, <ore:ingotThaumium>, <thaumicaugmentation:augment_builder_effect>.withTag({id: "thaumicaugmentation:effect_power"}), <ore:ingotThaumium>, <thaumcraft:filter>, <ore:ingotThaumium>]);