import sys, os, re
sys.path.append('python/')
sys.path.append('../')

import projutils.utils as utils
import projutils.replace_rom_text as replace_rom_text
import projutils.color as color
import projutils.tileset as tileset
import projutils.pattern as pattern
import projutils.rle as rle
import projutils.colorize as colorize
import projutils.config as c


import traceback,time

indexcount = {}
validscene = {}
validpal = {}
validhts = {}
validmtd = {}
validhmtm = {}
validhmcm = {}
validts = {}

headercolllist = []
headerpatternlist = []
headermetatilelist = []
headerbitmapsetlist = []


already_replaced = []

yuklist = {}

inheritparentnames = ["Metatilemap","Collisionmap"]
parsenames = {
    'Palette':{
        0x14BFC0:"Cald_Ashyn_NorthGeyser",
		0x1F06FC:"Cald_Indoors",
		0x1F073C:"Cald_Geyser",
		0x1F077C:"Orothe_Dock",
		0x1F07FC:"Core_End_Bridge",
		0x1F083C:"Naroom_Gia_House_Destroyed",
		0x1F087C:"Core_End_Agram",
		0x1F08BC:"Cald_Caverns",
		0x1F08FC:"Cald_Ashyn",
		0x1F093C:"Core_End_Pathway",
		0x1F097C:"Cald_Vents",
		0x1F09BC:"Naroom_Vash_Training",
		0x1F09FC:"Overworld_Orothe",
		0x1F0A3C:"Naroom_Vash_Main",
		0x1F0ABC:"Naroom_Indoors",
		0x1F0AFC:"Naroom_Glade_Geyser",
		0x1F0B3C:"Naroom_Grove_River",
		0x1F0B7C:"Orothe_Geyser_Indoors",
		0x1F0BBC:"Orothe_Indoors",
		0x1F0BFC:"Orothe_Geyser_Outdoors",
		0x1F0C3C:"Orothe_Mar_Golden",
		0x1F0C7C:"Orothe_Mar_Normal",
		0x1F0CBC:"Orothe_Geyser_Pathway",
		0x1F0CFC:"Orothe_Coral",
		0x1F0D3C:"Core_Shadowhold_Marina",
		0x1F0D7C:"Core_Shadowhold",
		0x1F0DBC:"Orothe_Island_Outside",
		0x1F0DFC:"Misc_Fort_Outside",
		0x1F0E7C:"Misc_StoneWalls",
		0x1F0EBC:"Misc_Geyser",
		0x1F0EFC:"Naroom_Vash_Stairs",
		0x1F0F3C:"Naroom_Forest",
		0x1F0F7C:"Naroom_DeepForest",
		0x1F0FBC:"Misc_Tavel",
		0x1F0FFC:"Core_Smith",
		0x1F103C:"Naroom_Vash_Top_OrwinRoom_Observatory",
		0x1F107C:"Misc_StartScreen",
		0x1F10BC:"Underneath_Tunnels",
		0x1F10FC:"Underneath_Bogrom_Destroyed",
		0x1F123C:"Overworld_Underneath",
		0x1F12BC:"Underneath_Bogrom_Normal",
		0x1F133C:"Naroom_Windmill_Outside",
		0x1F137C:"Underneath_Tunnels_Outside",
		0x1F147C:"Naroom_Gia_House_Normal",
		0x1F14BC:"Core_End_Greenery",
		0x1F153C:"Naroom_River",
		0x1F157C:"Naroom_Cave",
		0x1F15BC:"Overworld_Arderial",
		0x1F15FC:"Arderial_Buildings_Outside",
		0x1F163C:"Orothe_Island_Indoors",
		0x1F16FC:"Arderial_Palace_Throneroom",
		0x1F173C:"Overworld_Cald",
		0x1F177C:"Arderial_Clouds",
		0x1F17BC:"Arderial_Geyser",
		0x1F17FC:"Arderial_Indoors",
		0x1F183C:"Underneath_Mushroom_Stalactite",
		0x1F187C:"Underneath_Mushroom_Normal",
		0x1F18FC:"Underneath_Indoors",
		0x1F197C:"Orothe_Tunnels",
		0x1F19BC:"Orothe_Ruins",
		0x1F1A3C:"Naroom_Overworld",
		0x1F1A7C:"Naroom_Vash_PipesRoom",
    },
    'Tileset':{
        0x140000:"Core_End_Agram_Wall",
        0x141000:"Overworld_Arderial_Scenery",
        0x149C8E:"Cald_Vents_Ground",
        0x14A58E:"Orothe_Dock_FerryBottom",
        0x14AE8E:"Cald_Ashyn_NorthGeyser_BridgeAndHead",
        0x14C000:"Overworld_Underneath_WithTown",
        0x14F3DD:"Orothe_Coral_CoralBackground",
        0x150000:"Orothe_Geyser_Pathway_Ceiling",
        0x150800:"Orothe_Geyser_Pathway_Wall",
        0x151000:"Orothe_Geyser_Indoors_Misc",
        0x151800:"Orothe_Geyser_FloatBottom",
        0x152000:"Orothe_Geyser_FloatTopAndBuilding",
        0x152800:"Orothe_Geyser_Pathway_Path",
        0x153000:"Orothe_Geyser_Indoors_LowerLevel",
        0x153800:"Orothe_Geyser_Indoors_UpperLevel",
        0x154000:"Naroom_Vash_Training_Statues",
        0x154800:"Naroom_Vash_Walls",
        0x155000:"Naroom_Forest_Trees",
        0x155800:"Underneath_Tunnels_Outside_Mouth",
        0x156000:"Naroom_Indoors_Main",
        0x156800:"Naroom_Indoors_Extra",
        0x157000:"Naroom_Weave_Main",
        0x157800:"Orothe_Coral_CoralWall",
        0x158000:"Orothe_Coral_Wall",
        0x158800:"Overworld_Orothe_Mountains",
        0x159000:"Overworld_Orothe_Decoration",
        0x159800:"Naroom_Gia_House_Normal",
        0x15A000:"Orothe_Mar_Town_HouseTop",
        0x15A800:"Naroom_Vash_PipesRoom_BigPipes",
        0x15B000:"Overworld_Underneath_WithWater",
        0x15B800:"Underneath_Bogrom_Main",
        0x15C000:"Naroom_Vash_PipesRoom_BrickWall",
        0x15C800:"Underneath_Bogrom_Destroyed_Houses",
        0x15D000:"Underneath_Bogrom_Treehouse",
        0x15D800:"Underneath_Bogrom_Destroyed_Ground",
        0x15E000:"Underneath_Indoors_Walls",
        0x15F000:"Underneath_Indoors_Misc",
        0x15F800:"Underneath_Indoors_Objects",
        0x160000:"Underneath_Mushroom_MushFieldStalactite",
        0x160800:"Underneath_Mushroom_Decoration",
        0x161000:"Underneath_Mushroom_Vegetation",
        0x161800:"Underneath_Mushroom_House",
        0x162000:"Orothe_Island_Outside_Roof",
        0x162800:"Orothe_Ruins_Walls",
        0x163000:"Orothe_Ruins_Castle",
        0x163800:"Orothe_Indoors_Walls",
        0x164000:"Orothe_Geyser_FloatTopAndFloor",
        0x164800:"Orothe_Island_Outside_Wall",
        0x165000:"Orothe_Indoors_Ground",
        0x165800:"Overworld_Naroom_Buildings",
        0x166000:"Orothe_Tunnels_StairsVault",
        0x166800:"Overworld_Naroom_Volcanos",
        0x167000:"Overworld_Naroom_Mountains",
        0x167800:"Orothe_Tunnels_Water",
        0x168000:"Orothe_Tunnels_Walls",
        0x168800:"Underneath_Tunnels_WoodWalls",
        0x169000:"Underneath_Tunnels_NaturalWalls",
        0x169800:"Cald_Ashyn_NorthGeyser_Head",
        0x16A000:"Cald_Ashyn_Ground",
        0x16A800:"Cald_Ashyn_Building",
        0x16B000:"Cald_Geyser_LavaWall",
        0x16B800:"Cald_Geyser_LavaDam",
        0x16C000:"Cald_Indoors_Objects",
        0x16C800:"Cald_Indoors_Main",
        0x16D000:"Core_End_Ground",
        0x16D800:"Core_End_Bridge_Sky",
        0x16E000:"Core_End_StatuesMain",
        0x16E800:"Cald_Tunnels_Decoration",
        0x16F000:"Cald_Tunnels_NaturalWalls",
        0x16F800:"Cald_Vents_Walls",
        0x170000:"Cald_Tunnels_BrickWalls",
        0x171000:"Arderial_Indoors_Ceiling",
        0x171800:"Arderial_Indoors_Walls",
        0x172000:"Arderial_Buildings_Outside_StructureCorner",
        0x172800:"Arderial_Clouds_YellowBig",
        0x173800:"Arderial_Buildings_Outside_StructureBig",
        0x174000:"Overworld_Cald_Volcano",
        0x174800:"Arderial_Palace_ThroneroomBase",
        0x175000:"Cald_Geyser_Walls",
        0x175800:"Overworld_Cald_Buildings",
        0x176000:"Arderial_Geyser_Floor",
        0x176800:"Arderial_Geyser_PipesKink",
        0x177000:"Arderial_Palace_ThroneroomSky",
        0x177800:"Arderial_Geyser_PipesEntrance",
        0x178000:"Core_Shadowhold_Decoration",
        0x178800:"Misc_Tavel_Ground",
        0x179000:"Core_Shadowhold_Glow",
        0x179800:"Core_Shadowhold_Marina_Walls",
        0x17A000:"Core_Shadowhold_Main",
        0x17A800:"Core_Shadowhold_Marina_Sky",
        0x17B000:"Naroom_Vash_ObservatoryBottom",
        0x17B800:"Naroom_DeepForest_Path",
        0x17C000:"Naroom_DeepForest_Deep",
        0x17C800:"Misc_StartScreen_Top",
        0x17D000:"Misc_Tavel_Walls",
        0x17D800:"Naroom_Windmill_House",
        0x17E000:"Naroom_Vash_ObservatoryTop",
        0x17E800:"Orothe_Dock_FerryTop",
        0x17F000:"Misc_Fort_Diagonal",
        0x17F800:"Misc_Fort_Main",
        0x180000:"Core_End_Bridge_Base",
        0x180800:"Core_End_Bridge_Top",
        0x181000:"Naroom_Gia_House_DestroyedHouse",
        0x181800:"Naroom_Gia_House_DestroyedRoof",
        0x182000:"Misc_StoneWalls_Teleporter",
        0x182800:"Misc_StoneWalls_Ground",
        0x183000:"Sprite_Tony_Main",
        0x183800:"Misc_StoneWalls_Decoration",
        0x184000:"Naroom_Geyser_Interactables",
        0x184800:"Naroom_Geyser_Walls",
        0x185000:"Naroom_Geyser_Tunnel",
        0x196AED:"Misc_StartScreen_Bottom",
        0x1971ED:"Orothe_Mar_Town_Turtle",
        0x19F1ED:"Naroom_Weave_StoneWall",
        0x19F7ED:"Core_End_Agram_Throne",
        0x1A0000:"Orothe_Mar_Town_HouseBottom",
        0x1A8000:"Underneath_Tunnels_Plants",
        0x1A8500:"Naroom_Vash_PipesRoom_WallShadows",
        0x1A8A00:"Arderial_Clouds_Scaffolding",
        0x1AFCFF:"Overworld_Arderial_Buildings",
        0x1B1CAF:"Arderial_Clouds_White",
        0x1B20AF:"Cald_Ashyn_NorthGeyser_Spikes",
        0x1B24AF:"Arderial_Clouds_YellowSmall",
        0x1B28AF:"Sprite_Tony_Swimming",
        0x1B2CAF:"Arderial_Buildings_Outside_Clouds",
        0x1B34AF:"Naroom_Grove_River",
        0x1B38AF:"Naroom_Vash_Training_Walls",
        0x1B4000:"Naroom_Glade_Geyser_Motif",
        0x1B4400:"Naroom_Vash_Stairs",
        0x1B4800:"Naroom_Forest_Shrubbery",
        0x1B4C00:"Naroom_DeepForest_Border",
        0x1C1243:"Underneath_Mushroom_Interactables",
        0x1C1543:"Sprite_MiniTony_Turtle",
        0x1C1843:"Arderial_Clouds_Machinery",
        0x1C56DA:"Cald_Vents_RoofStairs",
        0x1D1D57:"Cald_Ashyn_NorthGeyser_Geyser",
        0x1D1F57:"Naroom_Forest_BrickPath",
        0x1D2157:"Naroom_Vash_Training_Floor",
        0x1D2357:"Naroom_Forest_Rocks",
        0x1D2557:"Arderial_Geyser_PipesMisc",
        0x1D2957:"Cald_Geyser_Interactables",
        0x1D2B57:"Arderial_Buildings_Outside_StructureSmall",
        0x1D2F57:"Orothe_Island_Outside_Unknown",
        0x1D4799:"Cald_Ashyn_Wood",
        0x1D64B1:"Core_End_Bridge_Misc",
        0x1D6671:"Orothe_Geyser_Barrier",
        0x1D6831:"Core_End_StatuesSmall",
        0x1DB833:"Orothe_Geyser_Floor",
        0x1DB9B3:"Naroom_Windmill_Objects",
        0x1DBB33:"Naroom_Weave_Bushes",
        0x1DDE14:"Orothe_Dock_FerryWindows",
        0x1E450B:"Orothe_Coral_SeapodsChest",
        0x1E460B:"Naroom_Vash_Signs",
        0x1E470B:"Sprite_MiniTony_Main",
        0x1E480B:"Core_Shadowhold_Interactables",
        0x1E6CA0:"Underneath_Mushroom_SporeTrail",
        0x1EAB6C:"Underneath_Bogrom_Signs",
        0x1EAC0C:"Cald_Ashyn_Signs",
        0x1ED909:"Naroom_Weave_StonePath",
        0x1ED989:"Orothe_Tunnels_Chest",
        0x1EE721:"Overworld_Orothe_Mar",
        0x1EF11F:"Misc_UnderneathIndoors_Cald_Chest",
        0x1EF17F:"Underneath_Mushroom_Chest",
        0x1EF29F:"Misc_Chest_Default",
        0x1EFED9:"Naroom_Vash_PipesRoom_FlatBlock",
        0x1F07BC:"Misc_CaldVents_UnderneathTunnels_Chest",
        0x1F117C:"Underneath_Geyser_WaneMoonButton",
        0x1F11BC:"Misc_BlankTiles",
        0x1F11FC:"Naroom_Vash_Chest",
        0x1F143C:"Underneath_Geyser_WaxMoonButton",
        0x1F167C:"Underneath_Geyser_WaxMoonBlock",
        0x1F18BC:"Underneath_Geyser_WaneMoonBlock",
        0x1F19FC:"Underneath_Bogrom_Chest",
        0x1F20B8:"Naroom_Vash_PipesRoom_Block",
        0x1F2A4B:"Underneath_Geyser_FullMoonBlock",
        0x1F2A6B:"Underneath_Geyser_NewMoonBlock",
        0x1F2A8B:"Orothe_Geyser_EmptyChest",
        0x1F2AAB:"Orothe_Geyser_FullChest",
        0x1F2ACB:"Cald_Vents_Block",
        0x1F2AEB:"Cald_Vents_FullChest",
        0x1F2B0B:"Cald_Vents_EmptyChest",
        0x1F2B2B:"Underneath_Geyser_NewMoonButton",
        0x1F2B4B:"Underneath_Geyser_FullMoonButton",
        0x1F2BAB:"Naroom_Geyser_FullChest",
        0x1F2BCB:"Naroom_Geyser_EmptyChest",
        0x1F2BEB:"Naroom_Vash_PipesRoom_Unknown",
        
        # straggler assets
        0x170800:"INDIRECT_UNKNOWN_ARDERIAL1",
        0x173000:"INDIRECT_UNKNOWN_ARDERIAL2",
        0x1B30AF:"INDIRECT_UNKNOWN_ARDERIAL3",
        0x1D2757:"INDIRECT_UNKNOWN_ARDERIAL4",
    },
    'Pattern':{
        0x143AC9:"Orothe_Dock",
        0x147A62:"Naroom_Gia_House_Destroyed",
        0x14EBDA:"Orothe_Indoors",
        0x185FF5:"Arderial_Buildings_Outside",
        0x186FD5:"Cald_Vents",
        0x1877C3:"Naroom_Vash_PipesRoom",
        0x188000:"Naroom_DeepForest",
        0x1887D5:"Arderial_Clouds",
        0x189774:"Cald_Geyser",
        0x189F3D:"Orothe_Tunnels",
        0x18A700:"Orothe_Geyser_Pathway",
        0x18B650:"Orothe_Geyser_Outdoors",
        0x18C000:"Underneath_Mushroom_MushField",
        0x18C79C:"Arderial_Geyser",
        0x18CF35:"Underneath_Mushroom_Normal",
        0x18D6C3:"Naroom_Windmill_Outside",
        0x18DE40:"Orothe_Mar_Town",
        0x18E5BC:"Misc_Geyser",
        0x18ED34:"Underneath_Tunnels",
        0x18F4AA:"Cald_Ashyn",
        0x190000:"Core_Shadowhold",
        0x190770:"Orothe_Ruins",
        0x190EDF:"Naroom_Gia_House_Normal",
        0x191645:"Cald_Caverns",
        0x191DA9:"Underneath_Bogrom_Normal",
        0x19250B:"Naroom_Weave_KeyMaze",
        0x192C6B:"Naroom_River",
        0x194000:"Underneath_Bogrom_Destroyed",
        0x1986EB:"Orothe_Coral",
        0x198DD0:"Naroom_Vash_Main",
        0x19A249:"Underneath_Indoors",
        0x19A8FB:"Arderial_Indoors",
        0x19AFA1:"Naroom_Forest",
        0x19C65D:"Core_End_Agram",
        0x19D310:"Misc_Tavel",
        0x19E5B9:"Orothe_Geyser_Indoors",
        0x1A0600:"Orothe_Island_Outside",
        0x1A0BFD:"Naroom_Indoors",
        0x1A11F3:"Misc_StoneWalls",
        0x1A2F27:"Arderial_Palace_Throneroom",
        0x1A3A89:"Naroom_Vash_Stairs",
        0x1A45A4:"Cald_Ashyn_NorthGeyser",
        0x1A6630:"Core_End_Bridge",
        0x1A70BE:"Core_End_Pathway",
        0x1A98C9:"Overworld_Arderial",
        0x1AA247:"Overworld_Cald",
        0x1AB516:"Underneath_Tunnels_Outside",
        0x1AC000:"Overworld_Underneath",
        0x1AF05A:"Overworld_Naroom",
        0x1BCD4F:"Core_Shadowhold_Marina",
        0x1BF0FF:"Overworld_Orothe",
        0x1C0314:"Misc_Fort_Outside",
        0x1C0623:"Misc_StartScreen",
        0x1C1B43:"Naroom_Vash_Training",
        0x1C6A61:"Cald_Indoors",
    },
    'HeaderMetatilemap':{
        0x142000:"Arderial_Geyser_End_GlassMaze",
        0x142DEF:"Arderial_Middle_Intersection",
        0x144000:"Arderial_North_Center",
        0x144BEA:"Cald_Geyser_PuzzlesA",
        0x1457C6:"Orothe_Geyser_Currents",
        0x146390:"Arderial_South_North",
        0x146F09:"Orothe_Mar_Town", # shared with 2 scenes
        0x148000:"Orothe_Coral_End",
        0x1489EA:"Naroom_Forest_Deep_Heart",
        0x149342:"Cald_Geyser_PuzzlesB",
        0x14B78E:"Arderial_Middle_End",
        0x14C900:"Underneath_Mushroom_East",
        0x14D1E1:"Orothe_Geyser_Pathway",
        0x14E34F:"Orothe_Ruins_Blurry",
        0x14FBDD:"Cald_Caverns_Detour_End",
        0x185800:"Orothe_Ruins_Entrance",
        0x1867E5:"Naroom_Glade_Field",
        0x188FA6:"Orothe_Tunnels_PathwayMarB",
        0x18AEAE:"Underneath_Bogrom_Destroyed",
        0x18BDEF:"Cald_Tunnels_PathwayWest",
        0x18FC1B:"Underneath_Geyser_SouthEntrance",
        0x1933C7:"Arderial_Geyser_Remix_Arderial_KeyMaze",
        0x194744:"Orothe_Ruins_Southwest",
        0x195CCA:"Cald_Vents_PathwayA",
        0x198000:"Underneath_Bogrom_Normal",
        0x1994B1:"Core_End_Field",
        0x19B629:"Underneath_Mushroom_North",
        0x19C000:"Arderial_Geyser_Pipes2_GlassField",
        0x19CCB8:"Overworld_Naroom",
        0x19D962:"Cald_Vents_Island",
        0x19DF91:"Naroom_Seers_House",
        0x19EBDA:"Naroom_Weave_Ponds",
        0x19FDED:"Arderial_Geyser_Remix_Cache_West",
        0x1A17E8:"Orothe_Tunnels_PathwayMarA",
        0x1A1DD1:"Orothe_Geyser_Middle",
        0x1A23B0:"Arderial_Palace_Outside",
        0x1A2970:"Cald_Vents_PathwayB",
        0x1A34D9:"Cald_Caverns_PathwayU",
        0x1A4B48:"Arderial_Middle_House",
        0x1A50C7:"Cald_Caverns_IntersectionX",
        0x1A562F:"Core_Shadowhold_Deep_Cells",
        0x1A5B93:"Cald_Caverns_IntersectionTriple",
        0x1A60E4:"Arderial_North_SoutheastEntrance",
        0x1A6B79:"Orothe_Tunnels_IntersectionCache",
        0x1A75C9:"Naroom_Gia_House_Destroyed",
        0x1A93FB:"Naroom_Gia_House_Normal",
        0x1AA705:"Orothe_Coral_Entrance",
        0x1AABC0:"Arderial_North_East",
        0x1AB06F:"Arderial_North_West",
        0x1AB9B8:"Underneath_Geyser_CoreStone",
        0x1ABE52:"Naroom_Geyser_East",
        0x1AC498:"Arderial_South_South",
        0x1AC916:"Core_Shadowhold_Labyrinth_North",
        0x1ACD8A:"Underneath_Geyser_Southeast",
        0x1AD1FB:"Core_End_Greenery",
        0x1AD66B:"Cald_Ashyn_NorthGeyser",
        0x1ADAD0:"Cald_Ashyn_Center",
        0x1ADF2B:"Underneath_Geyser_Northeast",
        0x1AE382:"Naroom_Windmill_Outside",
        0x1AE7D1:"Underneath_Geyser_Northwest",
        0x1AEC17:"Underneath_Geyser_Southwest",
        0x1AF499:"Naroom_Seers_Hyren_UnderwaterExit",
        0x1AF8D4:"Arderial_Geyser_Pipes2_End",
        0x1B0000:"Cald_Vents_PathwayIsland",
        0x1B0425:"Core_Shadowhold_Middle_EastPathway_ArrowRoom",
        0x1B084A:"Orothe_Tunnels_Cache",
        0x1B0C66:"Underneath_Mushroom_South",
        0x1B1494:"Misc_Tavel_Maze",
        0x1B18A3:"Arderial_Middle_PathwayEntrance",
        0x1B3CAF:"Underneath_EastTunnel_Intersection",
        0x1B5000:"Arderial_Geyser_End_CoreStone",
        0x1B53EF:"Core_Smith_Smith",
        0x1B57DA:"Naroom_Seers_Hyren_SeaCave",
        0x1B5BB7:"Arderial_Historian_Outside",
        0x1B635F:"Cald_Caverns_PathwayI",
        0x1B6730:"Cald_Tunnels_IntersectionNorth",
        0x1B6AF9:"Underneath_Tunnels_Hyren_Forest",
        0x1B7285:"Arderial_Middle_PathwayHouse",
        0x1B7A02:"Underneath_Geyser_CulDeSac",
        0x1B7DBA:"Cald_Tunnels_PathwayEast",
        0x1B8000:"Arderial_North_NorthwestExit",
        0x1B83B4:"Cald_Vents_Intersection",
        0x1B8766:"Arderial_North_Southwest",
        0x1B8B15:"Naroom_Weave_KeyMaze",
        0x1B8E9A:"Naroom_Forest_Deep_House",
        0x1B921D:"Overworld_Arderial",
        0x1B9912:"Orothe_Tunnels_Entrance",
        0x1B9FF9:"Naroom_Glade_Cave_Entrance",
        0x1BA36C:"Naroom_Glade_GuardEntrance",
        0x1BA6D5:"Orothe_Tunnels_VaultEntrance",
        0x1BAD9D:"Naroom_Glade_RingRoad",
        0x1BB0FD:"Arderial_Palace_DoubleRoom",
        0x1BB458:"Naroom_Glade_Intersection",
        0x1BB7B3:"Arderial_Geyser_Pipes2_PipeAnalysis",
        0x1BBB0B:"Orothe_Tunnels_PathwayMarUnderwater",
        0x1BC000:"Underneath_Tunnels_IntersectionFort",
        0x1BC354:"Orothe_Tunnels_PathwayMarUnderwater_Unused",
        0x1BC6A8:"Underneath_Tunnels_Outside",
        0x1BC9FC:"Naroom_Vash_BottomStairs",
        0x1BD0A1:"Underneath_Mushroom_WestEntrance",
        0x1BD3EB:"Core_Shadowhold_Deep_NorthPathway",
        0x1BD731:"Arderial_Geyser_Pipes2_Entrance",
        0x1BDA76:"Cald_Tunnels_IntersectionExit",
        0x1BDDB8:"Cald_Vents_BrokenBridge",
        0x1BE0F5:"Arderial_North_Northeast",
        0x1BE430:"Naroom_Weave_Exit",
        0x1BE769:"Cald_Caverns_PathwayU_CacheRoom",
        0x1BEA9E:"Arderial_Middle_Entrance",
        0x1BEDD0:"Naroom_Forest_Deep_Pathway",
        0x1BF42A:"Misc_Tavel_Crystal",
        0x1BF74A:"Arderial_Geyser_Pipes2_MiddlePipeSwitch",
        0x1BFD7D:"Core_Shadowhold_Labyrinth_South",
        0x1C0000:"Naroom_Grove_River",
        0x1C0931:"Cald_Vents_Entrance",
        0x1C0F43:"Naroom_Weave_River",
        0x1C1E3F:"Arderial_Geyser_Pipes1_End",
        0x1C213B:"Underneath_Tunnels_IntersectionHyren",
        0x1C2721:"Cald_Caverns_Entrance",
        0x1C2A10:"Overworld_Orothe",
        0x1C2CFF:"Naroom_Grove_Entrance",
        0x1C32D7:"Underneath_Tunnels_Exit",
        0x1C35C0:"Naroom_Vash_Southwest_PipesRoom_Back",
        0x1C3E6C:"Underneath_Geyser_Altar",
        0x1C4000:"Underneath_Tunnels_PathwayHyrenFortIntersections",
        0x1C42E2:"Cald_Caverns_Exit",
        0x1C489F:"Arderial_Entrance",
        0x1C4B7B:"Core_Shadowhold_Deep_End",
        0x1C4E57:"Cald_Geyser_Entrance",
        0x1C5130:"Core_Shadowhold_Middle_EastPathway_BigPuzzle",
        0x1C5406:"Arderial_Geyser_HorizontalPipe_Unused",
        0x1C59AA:"Orothe_Coral_PathwayHorizontal",
        0x1C5F44:"Arderial_Historian_WestRoom",
        0x1C620F:"Cald_Caverns_PathwayZ",
        0x1C64DA:"Underneath_Tunnels_PathwayFortLoopIntersections_B_Unused",
        0x1C679E:"Naroom_Seers_Hyren_UnderwaterEntrance",
        0x1C6D24:"Naroom_Weave_Entrance",
        0x1C6FE1:"Underneath_Tunnels_Loop_IntersectionEndEastCache",
        0x1C729A:"Core_Shadowhold_Deep_FirstPuzzle",
        0x1C754E:"Naroom_Forest_Deep_Connection",
        0x1C7801:"Cald_Vents_Hyren",
        0x1C7AB4:"Core_End_Entrance",
        0x1C7D64:"Cald_Ashyn_West",
        0x1C8000:"Underneath_Tunnels_PathwayFort",
        0x1C82AF:"Arderial_Geyser_Pipes1_Entrance_BackroomCache",
        0x1C8559:"Arderial_Geyser_Pipes1_PipeToStarryCache",
        0x1C87FF:"Naroom_Vash_North",
        0x1C8AA2:"Orothe_Geyser_West",
        0x1C8D40:"Underneath_Tunnels_PathwayFortLoopIntersections_D",
        0x1C8FDE:"Arderial_Geyser_Pipes1_Entrance",
        0x1C9275:"Overworld_Cald",
        0x1C9CB9:"Naroom_Forest_Deep_Intersection",
        0x1C9F47:"Underneath_Mushroom_House",
        0x1CA458:"Underneath_Tunnels_Hyren_Entrance",
        0x1CA6DC:"Underneath_Tunnels_PathwayFortLoopIntersections_A",
        0x1CABD2:"Core_Shadowhold_Middle_StartCells",
        0x1CAE4D:"Underneath_Tunnels_EastCache",
        0x1CB33C:"Orothe_Coral_PathwayVertical",
        0x1CB5B1:"Cald_Geyser_Antechamber",
        0x1CB823:"Underneath_EastTunnel_PathwayFort",
        0x1CBA95:"Naroom_Vash_ChallengeAgovo",
        0x1CC4DB:"Naroom_Grove_Pathway",
        0x1CC9AA:"Arderial_Geyser_Pipes1_StarryCache",
        0x1CCC0D:"Arderial_Geyser_Pipes1_MiddlePipeSwitch",
        0x1CCE6E:"Underneath_Tunnels_Loop_Center",
        0x1CD0CC:"Cald_Caverns_PathwayEntranceHorizontal",
        0x1CD325:"Naroom_Geyser_North",
        0x1CD57B:"Overworld_Underneath",
        0x1CDA1D:"Core_End_Pathway",
        0x1CE34A:"Naroom_Forest_Exit",
        0x1CE7D6:"Underneath_Tunnels_PathwayFortLoopIntersections_C",
        0x1CEA19:"Cald_Geyser_CoreStone", # shared with 2 scenes
        0x1CEC59:"Cald_Caverns_Pathway7",
        0x1CF30F:"Orothe_Geyser_Entrance",
        0x1CF545:"Misc_Tavel_Entrance",
        0x1CF77A:"Naroom_Forest_Deep_Cache",
        0x1D0000:"Cald_Ashyn_East",
        0x1D0454:"Cald_Tunnels_PathwayCenter",
        0x1D067A:"Core_Smith_Backyard_End",
        0x1D089F:"Underneath_EastTunnel_PathwayTunnels",
        0x1D0AC3:"Underneath_Tunnels_Mouth",
        0x1D0F07:"Arderial_Palace_EntranceRoom",
        0x1D133B:"Orothe_Tunnels_Alcove",
        0x1D1543:"Core_Shadowhold_Labyrinth_PuzzlePathway",
        0x1D174A:"Underneath_Tunnels_Loop_IntersectionWestCache",
        0x1D194F:"Arderial_Geyser_Remix_Cache_East",
        0x1D1B54:"Naroom_Seers_Pathway",
        0x1D3157:"Underneath_Tunnels_Loop_PathwayLoopWestCacheIntersections",
        0x1D3550:"Core_Smith_Backyard_Entrance",
        0x1D3741:"Naroom_Vash_Training",
        0x1D3B1F:"Arderial_Fort_Outside",
        0x1D3D09:"Arderial_Geyser_Remix_Underneath_West",
        0x1D3EF2:"Naroom_Forest_Puzzle_Unsolved",
        0x1D41E9:"Naroom_Vash_TopStairs",
        0x1D4979:"Orothe_Tunnels_IntersectionMain",
        0x1D4B57:"Naroom_Geyser_Center",
        0x1D4F0F:"Core_Shadowhold_Deep_TwoPuzzles",
        0x1D50E7:"Naroom_Geyser_Northeast",
        0x1D52BF:"Orothe_Geyser_North",
        0x1D566A:"Core_Shadowhold_Deep_Intersection",
        0x1D583F:"Underneath_Tunnels_Loop_LoopIntersection",
        0x1D5A0B:"Cald_Caverns_Detour_Pathway",
        0x1D5BD5:"Core_Shadowhold_Middle_Door",
        0x1D5D9E:"Core_Shadowhold_Deep_SouthPathway",
        0x1D62EE:"Underneath_Geyser_CavedIn",
        0x1D6BB1:"Core_Shadowhold_Labyrinth_Entrance",
        0x1D6D71:"Underneath_Tunnels_Exit_CacheRoom",
        0x1D70EF:"Arderial_Geyser_Remix_Underneath_East",
        0x1D72AC:"Naroom_Geyser_Southwest",
        0x1D7624:"Orothe_Tunnels_Whirlpool",
        0x1D77DF:"Arderial_Inn_Room",
        0x1D7999:"Cald_Tunnels_Entrance",
        0x1D7D0D:"Underneath_Tunnels_WestCache_End",
        0x1D8000:"Core_Smith_Backyard_Pathway",
        0x1D81B8:"Underneath_Tunnels_Loop_PathwayLoopEndEastCacheIntersections",
        0x1D836F:"Core_Shadowhold_Middle_SouthPathway_Cell",
        0x1D8524:"Arderial_Palace_SecondFloorRoom",
        0x1D86D8:"Arderial_Historian_EastRoom",
        0x1D8A3C:"Arderial_Geyser_Remix_Arderial_Entrance",
        0x1D8BEB:"Underneath_Mushroom_GrukRoom_TeleportCore",
        0x1D8F41:"Naroom_Vash_South",
        0x1D943A:"Naroom_Vash_Sky",
        0x1D9917:"Arderial_Geyser_Remix_Naroom_West",
        0x1D9C49:"Core_Shadowhold_Marina_FalseIntersection",
        0x1D9DE1:"Underneath_Bogrom_InnRoom",
        0x1D9F78:"Cald_Caverns_PathwayExitHorizontal",
        0x1DA10E:"Arderial_Geyser_VerticalPipe_Unused",
        0x1DA758:"Orothe_Mar_MobisRoom",
        0x1DA8E8:"Underneath_Tunnels_WestCache_Rock",
        0x1DAA77:"Core_Shadowhold_Middle_NorthPathway_Cells",
        0x1DAC03:"Underneath_Tunnels_StairsHyren",
        0x1DAD8E:"Orothe_Geyser_East",
        0x1DB225:"Arderial_Geyser_Remix_Cald_East",
        0x1DB3AB:"Orothe_Tunnels_VaultRoom",
        0x1DB52E:"Naroom_Geyser_West",
        0x1DBE31:"Orothe_Geyser_South",
        0x1DC17D:"Arderial_Geyser_Remix_Orothe_West",
        0x1DC46E:"Arderial_Inn_Outside",
        0x1DC5E5:"Core_Shadowhold_Marina_Room",
        0x1DC8CE:"Arderial_Geyser_Remix_Orothe_East",
        0x1DCA40:"Orothe_Coral_TunnelsChute",
        0x1DCBB1:"Core_Shadowhold_Marina_Jump",
        0x1DCD1F:"Orothe_Geyser_CoreStone",
        0x1DCE8C:"Arderial_Shop_Room",
        0x1DD440:"Orothe_Mar_InnRoom",
        0x1DD5AC:"Core_Shadowhold_Middle_FirstPuzzle",
        0x1DD718:"Arderial_Geyser_Remix_Cald_West",
        0x1DDB4C:"Underneath_Mushroom_East_Ormagon",
        0x1DE0D3:"Misc_Debug",
        0x1DE231:"Core_Shadowhold_Middle_FirstIntersection",
        0x1DE38D:"Core_Shadowhold_Marina_Start",
        0x1DE79A:"Cald_Volcano_Hyren",
        0x1DE8F1:"Naroom_Geyser_South",
        0x1DEE3C:"Orothe_Island_Room",
        0x1DF375:"Cald_Vents_BrokenBridgeEnd",
        0x1DF4C2:"Orothe_Mar_LibraryRoom",
        0x1DF60E:"Core_Shadowhold_Middle_FirstPathway",
        0x1DFB3D:"Orothe_Geyser_Southwest",
        0x1DFDD0:"Naroom_Vash_Southwest_PipesRoom_Pathway",
        0x1DFF15:"Arderial_Historian_UpstairsRoom",
        0x1E0000:"Arderial_Geyser_End_CaldCache",
        0x1E0144:"Naroom_Geyser_Southeast",
        0x1E0285:"Arderial_Shop_Outside",
        0x1E03C4:"Cald_Valkan_House",
        0x1E063E:"Underneath_Fort_Outside",
        0x1E0779:"Underneath_Bogrom_MotashRoom",
        0x1E0B23:"Naroom_Geyser_Entrance",
        0x1E0EC3:"Core_Shadowhold_Middle_EastPathway_Door",
        0x1E1128:"Naroom_Vash_Southeast_Room",
        0x1E15E1:"Orothe_Geyser_Southeast",
        0x1E170B:"Core_Smith_TeleportUnderneath",
        0x1E1834:"Underneath_Mushroom_Geyser",
        0x1E1A84:"Core_Smith_TeleportNaroom",
        0x1E1DF6:"Core_End_Room",
        0x1E1F1A:"Underneath_Garage_Room",
        0x1E2284:"Core_End_Antechamber",
        0x1E23A7:"Core_End_Agram",
        0x1E2946:"Underneath_Mushroom_GrukRoom",
        0x1E2C97:"Naroom_Glade_PreGeyser",
        0x1E2EC4:"Underneath_Whackamole",
        0x1E342F:"Arderial_Geyser_Remix_Naroom_East",
        0x1E3656:"Naroom_Vash_Southwest_InnRoom",
        0x1E3766:"Underneath_Tunnels_FortConnectionCacheRoom",
        0x1E386F:"Naroom_Forest_Puzzle_Solved",
        0x1E4000:"Naroom_Glade_Cave_TeleportCore",
        0x1E4308:"Underneath_Fort_SecondFloorRoom_HunterRoom",
        0x1E440A:"Orothe_Dock_Eastern_Ferry",
        0x1E4C03:"Arderial_Palace_Throneroom",
        0x1E4D00:"Orothe_Dock_Western_Ferry",
        0x1E4EF6:"Underneath_Mushroom_GrukRoom_BasementRoom",
        0x1E50E4:"Naroom_Geyser_Doorway",
        0x1E51DB:"Underneath_Mushroom_Center",
        0x1E54BB:"Misc_StartScreen_Pathway",
        0x1E56A4:"Naroom_Glade_Pathway",
        0x1E5888:"Underneath_Fort_SecondFloorRoom_EmptyRoom",
        0x1E5979:"Naroom_Glade_Geyser",
        0x1E5A6A:"Underneath_Mushroom_East_RescueRoom",
        0x1E5C4A:"Underneath_Garage_House",
        0x1E5E27:"Underneath_Tunnels_WestCache_Pathway",
        0x1E5F15:"Naroom_Forest_Deep_WenceRoom",
        0x1E61DD:"Arderial_Middle_House_BasementRoom",
        0x1E63B3:"Naroom_Vash_Entrance",
        0x1E649C:"Underneath_Bogrom_GenericRoom",
        0x1E6750:"Naroom_Geyser_Northwest",
        0x1E6835:"Cald_Vents_PathwayIsland_RescueRoom",
        0x1E6ADF:"Naroom_Vash_Southeast",
        0x1E6E60:"Underneath_Fort_GroundFloorRoom",
        0x1E7478:"Naroom_Vash_Southeast_CurioRoom",
        0x1E762D:"Cald_Ashyn_Center_AshgarRoom",
        0x1E7C04:"Core_End_Bridge",
        0x1E7DA6:"Naroom_Vash_Training_Closet",
        0x1E819B:"Naroom_Vash_Southwest",
        0x1E8333:"Naroom_Vash_Top_OrwinRoom_Observatory",
        0x1E8659:"Naroom_Vash_North_RoomB",
        0x1E8973:"Naroom_Vash_Northwest_TrynRoom",
        0x1E8AFD:"Cald_Ashyn_West_InnRoom",
        0x1E8BC1:"Cald_Ashyn_SouthBridge",
        0x1E8F88:"Underneath_Tunnels_Hyren_Exit",
        0x1E94AA:"Cald_Ashyn_Center_ErynRoom",
        0x1E9838:"Underneath_Tunnels_Hyren_IntersectionCald",
        0x1E98EB:"Orothe_Ocean_Ferry",
        0x1E999E:"Misc_StartScreen_Jukebox",
        0x1E9D0E:"Cald_Ashyn_West_SmithRoom",
        0x1EA066:"Naroom_Vash_Top_OrwinRoom_Entrance",
        0x1EA110:"Naroom_Vash_Northwest_HistorianRoom",
        0x1EA262:"Naroom_Vash_Northwest",
        0x1EA8E5:"Underneath_Bogrom_GogorRoom",
        0x1EAE8A:"Core_Shadowhold_Middle_SouthPathway_ScrewRoom",
        0x1EB23D:"Naroom_Arderial_TeleportRooms", #shared with 2 scenes
        0x1EB54B:"Naroom_Vash_Southeast_SmithRoom",
        0x1EB5E5:"Naroom_Gia_Room",
        0x1EB67F:"Underneath_Bogrom_BrubRoom",
        0x1EBF47:"Naroom_Vash_North_RoomA",
        0x1EC1B3:"Naroom_Glade_Cave_Exterior",
        0x1EC243:"Cald_Ashyn_East_Room",
        0x1EC3F0:"Naroom_Vash_North_SpookyRoom_Overgrown",
        0x1EC50D:"Naroom_Forest_Puzzle_CacheRoom",
        0x1EC59A:"Underneath_Tunnels_Exit_CacheRoom_RockRoom",
        0x1EC627:"Naroom_Vash_North_SpookyRoom_Normal",
        0x1EC740:"Core_Shadowhold_Marina_Pathway",
        0x1EC858:"Orothe_Island_Outside",
        0x1ECB0C:"Naroom_Forest_Puzzle_CacheRoom_BlastRoom",
        0x1ECB96:"Naroom_Windmill_Room",
        0x1ECE42:"Cald_Ashyn_Center_HistorianRoom",
        0x1ECF52:"Cald_Valkan_Room",
        0x1ED060:"Underneath_EastTunnel_Intersection_BlastRoom",
        0x1ED16B:"Underneath_Tunnels_Loop_PathwayLoopEndEastCacheIntersections_BlastRoom",
        0x1ED273:"Naroom_Geyser_CoreStone",
        0x1ED3FD:"Misc_StartScreen_Main",
        0x1ED889:"Naroom_Grove_Cache",
        0x1EDF5F:"Naroom_Vash_Top",
        0x1EE13C:"Naroom_Vash_Southwest_ShopRoom",
        0x1EE29E:"Naroom_Seers_Room",
        0x1EE473:"Orothe_Geyser_SouthwestPathway",
        0x1EE63E:"Underneath_Bogrom_UlkRoom",
        0x1EE6B0:"Orothe_Geyser_SoutheastPathway",
        0x1EE871:"Underneath_Bogrom_HistorianRoom",
        0x1EE9BD:"Cald_Vents_CacheRoomC",
        0x1EEA2A:"Cald_Vents_CacheRoomA",
        0x1EEA97:"Cald_Vents_CacheRoomB",
        0x1EEB71:"Core_Shadowhold_Middle_NorthPathway_Door",
        0x1EF05C:"Naroom_Vash_South_AgovoRoom",
        0x1EF92F:"Misc_Tavel_Outside",
        0x1EF989:"Orothe_Dock_Eastern_Empty",
        0x1EF9E2:"Cald_Archery",
        0x1EFC40:"Orothe_Dock_Western_Empty",
        0x1F2DD8:"Orothe_Ocean_Raft",
    },
    'HeaderCollisionmap':{
        0x14DAAE:"Orothe_Geyser_Currents",
        0x193B0E:"Cald_Geyser_PuzzlesA",
        0x194E7E:"Arderial_South_North",
        0x1955A8:"Arderial_Geyser_End_GlassMaze",
        0x1978ED:"Arderial_North_Center",
        0x199B83:"Arderial_Middle_Intersection",
        0x19BCAB:"Orothe_Ruins_Southwest",
        0x19FFF9:"Arderial_Geyser_HorizontalPipe_Unused",
        0x1A8F00:"Arderial_Middle_End",
        0x1A9D88:"Cald_Geyser_PuzzlesB",
        0x1B5F8C:"Orothe_Ruins_Blurry",
        0x1B7646:"Arderial_South_South",
        0x1B959A:"Arderial_Geyser_Remix_Arderial_KeyMaze",
        0x1B9C86:"Arderial_North_SoutheastEntrance",
        0x1BAA3C:"Orothe_Ruins_Entrance",
        0x1BBE5F:"Cald_Caverns_IntersectionTriple",
        0x1BFA67:"Cald_Vents_PathwayA",
        0x1BFFF9:"Arderial_Geyser_VerticalPipe_Unused",
        0x1C0C3E:"Orothe_Tunnels_PathwayMarB",
        0x1C2431:"Cald_Ashyn_NorthGeyser",
        0x1C2FED:"Overworld_Naroom",
        0x1C38A5:"Arderial_North_East",
        0x1C3B89:"Underneath_Bogrom_Normal",
        0x1C45C2:"Arderial_North_West",
        0x1C5C78:"Cald_Vents_PathwayB",
        0x1C9507:"Naroom_Weave_Ponds",
        0x1C9799:"Cald_Vents_Island",
        0x1CA1D2:"Underneath_Bogrom_Destroyed",
        0x1CA957:"Orothe_Geyser_Middle",
        0x1CB0C5:"Arderial_Middle_Entrance",
        0x1CBD05:"Naroom_Seers_House",
        0x1CBF73:"Core_Shadowhold_Labyrinth_Entrance",
        0x1CC000:"Core_End_Field",
        0x1CC744:"Underneath_Geyser_Southeast",
        0x1CD7D0:"Cald_Ashyn_Center",
        0x1CE100:"Orothe_Tunnels_PathwayMarA",
        0x1CE592:"Underneath_Mushroom_East",
        0x1CF0D5:"Orothe_Coral_End",
        0x1CF9AE:"Arderial_Geyser_Pipes2_GlassField",
        0x1CFBE0:"Arderial_North_Southwest",
        0x1CFE10:"Naroom_Windmill_Outside",
        0x1D022E:"Orothe_Mar_Town", #shared with 2 scenes
        0x1D0CE5:"Arderial_Middle_PathwayEntrance",
        0x1D1122:"Underneath_Geyser_Northeast",
        0x1D3356:"Arderial_Middle_PathwayHouse",
        0x1D3930:"Orothe_Geyser_Pathway",
        0x1D4000:"Underneath_Geyser_Southwest",
        0x1D43D0:"Orothe_Tunnels_IntersectionCache",
        0x1D45B5:"Arderial_North_Northeast",
        0x1D4D34:"Arderial_North_NorthwestExit",
        0x1D5495:"Cald_Vents_PathwayIsland",
        0x1D5F64:"Naroom_Forest_Deep_Heart",
        0x1D6129:"Core_End_Greenery",
        0x1D69F1:"Misc_Tavel_Maze",
        0x1D6F30:"Cald_Caverns_PathwayU",
        0x1D7469:"Arderial_Geyser_End_CoreStone",
        0x1D7B53:"Underneath_Geyser_Northwest",
        0x1D7EC5:"Cald_Caverns_PathwayU_CacheRoom",
        0x1D8D97:"Arderial_Entrance",
        0x1D90EA:"Core_Smith_Smith",
        0x1D9292:"Cald_Vents_Entrance",
        0x1D95DC:"Orothe_Tunnels_Cache",
        0x1D977A:"Cald_Caverns_IntersectionX",
        0x1D9AB0:"Underneath_Mushroom_North",
        0x1DA435:"Core_Shadowhold_Deep_Cells",
        0x1DA5C7:"Arderial_Palace_Outside",
        0x1DAF17:"Cald_Ashyn_West",
        0x1DB09F:"Arderial_Geyser_Pipes2_End",
        0x1DBCB3:"Core_Shadowhold_Labyrinth_North",
        0x1DBFAE:"Misc_StartScreen_Pathway",
        0x1DC000:"Naroom_Glade_Field",
        0x1DC2F6:"Underneath_Geyser_SouthEntrance",
        0x1DC75B:"Naroom_Weave_River",
        0x1DCFF9:"Core_Shadowhold_Deep_NorthPathway",
        0x1DD166:"Arderial_Geyser_Remix_Underneath_West",
        0x1DD2D3:"Naroom_Weave_KeyMaze",
        0x1DD87F:"Naroom_Weave_Exit",
        0x1DD9E6:"Cald_Vents_BrokenBridge",
        0x1DDCB2:"Underneath_Geyser_CoreStone",
        0x1DDF74:"Naroom_Gia_House_Normal",
        0x1DE4E9:"Cald_Vents_Intersection",
        0x1DE642:"Orothe_Geyser_Entrance",
        0x1DEA45:"Naroom_Seers_Hyren_UnderwaterExit",
        0x1DEB99:"Arderial_Geyser_Remix_Underneath_East",
        0x1DECEC:"Arderial_Middle_House",
        0x1DEF8B:"Underneath_Tunnels_Outside",
        0x1DF0D9:"Naroom_Seers_Hyren_UnderwaterEntrance",
        0x1DF227:"Naroom_Vash_North",
        0x1DF75A:"Naroom_Seers_Hyren_SeaCave",
        0x1DF8A6:"Naroom_Gia_House_Destroyed",
        0x1DF9F2:"Core_Shadowhold_Middle_StartCells",
        0x1DFC88:"Cald_Tunnels_IntersectionNorth",
        0x1E0501:"Core_Shadowhold_Middle_EastPathway_BigPuzzle",
        0x1E09EC:"Orothe_Tunnels_Entrance",
        0x1E0C5A:"Arderial_Historian_Outside",
        0x1E0FF7:"Cald_Caverns_Detour_End",
        0x1E1258:"Arderial_Geyser_Pipes1_StarryCache",
        0x1E1386:"Cald_Ashyn_East",
        0x1E14B4:"Arderial_Geyser_Remix_Orothe_West",
        0x1E195C:"Cald_Tunnels_IntersectionExit",
        0x1E1BAB:"Core_Shadowhold_Middle_EastPathway_ArrowRoom",
        0x1E1CD1:"Orothe_Coral_Entrance",
        0x1E203E:"Misc_Tavel_Crystal",
        0x1E2161:"Arderial_Geyser_Pipes2_PipeAnalysis",
        0x1E24CA:"Underneath_EastTunnel_Intersection",
        0x1E25EC:"Cald_Geyser_Antechamber",
        0x1E270A:"Orothe_Tunnels_PathwayMarUnderwater",
        0x1E2828:"Orothe_Tunnels_PathwayMarUnderwater_Unused",
        0x1E2A63:"Underneath_Tunnels_Hyren_Entrance",
        0x1E2B7E:"Orothe_Tunnels_VaultEntrance",
        0x1E2DAE:"Orothe_Geyser_North",
        0x1E2FDA:"Arderial_Geyser_Pipes2_MiddlePipeSwitch",
        0x1E3543:"Arderial_Geyser_Pipes2_Entrance",
        0x1E3A7D:"Naroom_Weave_Entrance",
        0x1E3B84:"Naroom_Vash_BottomStairs",
        0x1E3C8A:"Arderial_Geyser_Pipes1_Entrance_BackroomCache",
        0x1E3D8F:"Arderial_Geyser_Pipes1_Entrance",
        0x1E3E94:"Naroom_Glade_RingRoad",
        0x1E4103:"Underneath_Tunnels_Hyren_Forest",
        0x1E4206:"Naroom_Grove_River",
        0x1E4A09:"Naroom_Glade_Cave_Entrance",
        0x1E4B06:"Arderial_Geyser_Pipes1_End",
        0x1E4DFD:"Underneath_Tunnels_IntersectionFort",
        0x1E4FED:"Underneath_Tunnels_Loop_IntersectionEndEastCache",
        0x1E52D1:"Underneath_Tunnels_IntersectionHyren",
        0x1E53C6:"Arderial_Palace_DoubleRoom",
        0x1E55B0:"Core_Shadowhold_Labyrinth_South",
        0x1E5797:"Naroom_Glade_GuardEntrance",
        0x1E5B5B:"Cald_Geyser_CoreStone", #shared with 2 scenes
        0x1E5D39:"Underneath_Tunnels_PathwayFort",
        0x1E6003:"Cald_Caverns_Exit",
        0x1E60F0:"Arderial_Geyser_Remix_Cald_West",
        0x1E62C9:"Naroom_Geyser_North",
        0x1E6584:"Orothe_Geyser_West",
        0x1E666A:"Cald_Geyser_Entrance",
        0x1E6919:"Misc_Tavel_Entrance",
        0x1E69FC:"Underneath_Fort_Outside",
        0x1E6BC0:"Underneath_Tunnels_PathwayHyrenFortIntersections",
        0x1E6D80:"Underneath_Tunnels_Exit",
        0x1E6F40:"Cald_Vents_Hyren",
        0x1E7020:"Misc_Debug",
        0x1E7100:"Overworld_Arderial",
        0x1E71DE:"Underneath_Geyser_CulDeSac",
        0x1E72BC:"Arderial_Geyser_Pipes1_MiddlePipeSwitch",
        0x1E7555:"Orothe_Coral_PathwayHorizontal",
        0x1E7705:"Arderial_Geyser_Remix_Orothe_East",
        0x1E77DD:"Core_Shadowhold_Deep_FirstPuzzle",
        0x1E78B4:"Underneath_Tunnels_PathwayFortLoopIntersections_D",
        0x1E798A:"Underneath_EastTunnel_PathwayFort",
        0x1E7A5E:"Naroom_Grove_Entrance",
        0x1E7B32:"Overworld_Orothe",
        0x1E7CD6:"Orothe_Geyser_South",
        0x1E7E76:"Arderial_Geyser_Remix_Cald_East",
        0x1E7F45:"Cald_Tunnels_PathwayEast",
        0x1E8000:"Orothe_Tunnels_VaultRoom",
        0x1E80CE:"Core_Shadowhold_Deep_End",
        0x1E8268:"Naroom_Vash_Southwest_PipesRoom_Back",
        0x1E83FE:"Orothe_Tunnels_Whirlpool",
        0x1E84C9:"Cald_Valkan_House",
        0x1E8591:"Underneath_Tunnels_PathwayFortLoopIntersections_A",
        0x1E8721:"Underneath_Mushroom_South",
        0x1E87E7:"Cald_Caverns_PathwayI",
        0x1E88AD:"Core_End_Entrance",
        0x1E8A38:"Naroom_Grove_Pathway",
        0x1E8C83:"Arderial_Geyser_Remix_Naroom_West",
        0x1E8D45:"Core_Smith_Backyard_Pathway",
        0x1E9048:"Cald_Tunnels_PathwayWest",
        0x1E9106:"Cald_Caverns_Pathway7",
        0x1E91C3:"Underneath_Tunnels_Mouth",
        0x1E927F:"Cald_Caverns_Entrance",
        0x1E9339:"Naroom_Seers_Pathway",
        0x1E93F2:"Orothe_Tunnels_Alcove",
        0x1E9561:"Cald_Tunnels_PathwayCenter",
        0x1E96CF:"Core_Shadowhold_Labyrinth_PuzzlePathway",
        0x1E9A50:"Naroom_Geyser_Center",
        0x1E9B01:"Arderial_Fort_Outside",
        0x1E9BB1:"Orothe_Mar_MobisRoom",
        0x1E9C60:"Orothe_Coral_PathwayVertical",
        0x1E9E66:"Overworld_Underneath",
        0x1E9FBC:"Underneath_Mushroom_WestEntrance",
        0x1EA1B9:"Core_Shadowhold_Middle_SouthPathway_Cell",
        0x1EA30B:"Arderial_Shop_Outside",
        0x1EA3B4:"Naroom_Vash_South",
        0x1EA504:"Arderial_Geyser_Remix_Arderial_Entrance",
        0x1EA5AC:"Arderial_Palace_EntranceRoom",
        0x1EA652:"Core_Shadowhold_Deep_TwoPuzzles",
        0x1EA6F8:"Core_Smith_Backyard_End",
        0x1EA79D:"Core_Shadowhold_Deep_SouthPathway",
        0x1EA841:"Naroom_Glade_Intersection",
        0x1EAA29:"Naroom_Geyser_Northeast",
        0x1EAACB:"Arderial_Inn_Outside",
        0x1EACAC:"Naroom_Vash_Training",
        0x1EAD4C:"Underneath_Tunnels_Loop_PathwayLoopWestCacheIntersections",
        0x1EADEB:"Cald_Caverns_PathwayZ",
        0x1EAF28:"Arderial_Geyser_Pipes1_PipeToStarryCache",
        0x1EAFC6:"Naroom_Geyser_East",
        0x1EB064:"Underneath_Mushroom_GrukRoom_TeleportCore",
        0x1EB102:"Orothe_Tunnels_IntersectionMain",
        0x1EB2DA:"Underneath_Tunnels_WestCache_End",
        0x1EB377:"Underneath_Tunnels_Loop_Center",
        0x1EB413:"Naroom_Geyser_Southwest",
        0x1EB4AF:"Cald_Ashyn_SouthBridge",
        0x1EB718:"Naroom_Vash_ChallengeAgovo",
        0x1EB7B1:"Core_Shadowhold_Middle_NorthPathway_Cells",
        0x1EB8E2:"Underneath_Tunnels_EastCache",
        0x1EBAA6:"Overworld_Cald",
        0x1EBB3C:"Underneath_Tunnels_Exit_CacheRoom",
        0x1EBC68:"Core_Shadowhold_Middle_Door",
        0x1EBCFB:"Core_Shadowhold_Middle_FirstPathway",
        0x1EBD8E:"Underneath_Tunnels_Loop_PathwayLoopEndEastCacheIntersections",
        0x1EBE21:"Arderial_Geyser_Remix_Cache_East",
        0x1EBEB4:"Arderial_Geyser_Remix_Cache_West",
        0x1EC000:"Core_Shadowhold_Middle_FirstIntersection",
        0x1EC091:"Naroom_Forest_Deep_House",
        0x1EC122:"Orothe_Mar_InnRoom",
        0x1EC2D2:"Core_Shadowhold_Middle_FirstPuzzle",
        0x1EC47F:"Naroom_Geyser_West",
        0x1EC6B4:"Underneath_EastTunnel_PathwayTunnels",
        0x1EC8E3:"Underneath_Tunnels_Loop_LoopIntersection",
        0x1ECA82:"Orothe_Mar_LibraryRoom",
        0x1ECC1F:"Core_Smith_Backyard_Entrance",
        0x1ECD31:"Naroom_Vash_TopStairs",
        0x1ECDBA:"Cald_Vents_BrokenBridgeEnd",
        0x1ECECA:"Core_Shadowhold_Deep_Intersection",
        0x1ECFD9:"Underneath_Mushroom_House",
        0x1ED0E6:"Orothe_Geyser_Southwest",
        0x1ED1EF:"Underneath_Tunnels_Loop_IntersectionWestCache",
        0x1ED2F7:"Naroom_Geyser_South",
        0x1ED37A:"Arderial_Geyser_End_CaldCache",
        0x1ED47F:"Core_Smith_TeleportNaroom",
        0x1ED501:"Naroom_Geyser_Southeast",
        0x1ED583:"Core_Smith_TeleportUnderneath",
        0x1ED605:"Naroom_Forest_Puzzle_Unsolved",
        0x1ED686:"Naroom_Forest_Exit",
        0x1ED707:"Core_Shadowhold_Marina_Start",
        0x1ED788:"Underneath_Mushroom_GrukRoom_BasementRoom",
        0x1ED809:"Core_End_Pathway",
        0x1EDA88:"Arderial_Historian_WestRoom",
        0x1EDB07:"Orothe_Island_Outside",
        0x1EDB85:"Arderial_Geyser_Remix_Naroom_East",
        0x1EDC02:"Naroom_Vash_Southeast_CurioRoom",
        0x1EDC7E:"Underneath_Bogrom_MotashRoom",
        0x1EDCFA:"Naroom_Forest_Puzzle_Solved",
        0x1EDD76:"Naroom_Vash_Sky",
        0x1EDDF1:"Orothe_Geyser_East",
        0x1EDE6B:"Core_Shadowhold_Marina_Room",
        0x1EDEE5:"Cald_Vents_PathwayIsland_RescueRoom",
        0x1EDFD7:"Naroom_Forest_Deep_Cache",
        0x1EE04E:"Naroom_Vash_Southwest_InnRoom",
        0x1EE0C5:"Arderial_Palace_Throneroom",
        0x1EE1B2:"Naroom_Vash_Southwest_PipesRoom_Pathway",
        0x1EE228:"Naroom_Vash_Southeast_Room",
        0x1EE314:"Underneath_Tunnels_PathwayFortLoopIntersections_C",
        0x1EE4E7:"Underneath_Tunnels_StairsHyren",
        0x1EE55A:"Naroom_Forest_Deep_Connection",
        0x1EE5CC:"Underneath_Geyser_Altar",
        0x1EE791:"Orothe_Coral_TunnelsChute",
        0x1EE801:"Underneath_Tunnels_FortConnectionCacheRoom",
        0x1EE8E0:"Arderial_Palace_SecondFloorRoom",
        0x1EE94F:"Cald_Volcano_Hyren",
        0x1EEB04:"Naroom_Forest_Deep_Intersection",
        0x1EEBDD:"Underneath_Tunnels_PathwayFortLoopIntersections_B_Unused",
        0x1EEC49:"Naroom_Vash_Top_OrwinRoom_Observatory",
        0x1EED1F:"Underneath_Geyser_CavedIn",
        0x1EED8A:"Cald_Ashyn_Center_AshgarRoom",
        0x1EEDF4:"Naroom_Forest_Deep_WenceRoom",
        0x1EEE5D:"Cald_Tunnels_Entrance",
        0x1EEEC4:"Orothe_Island_Room",
        0x1EEF92:"Naroom_Geyser_Entrance",
        0x1EEFF8:"Cald_Caverns_PathwayEntranceHorizontal",
        0x1EF0BE:"Underneath_Tunnels_WestCache_Rock",
        0x1EF1DF:"Core_Shadowhold_Middle_EastPathway_Door",
        0x1EF23F:"Naroom_Vash_Northwest_TrynRoom",
        0x1EF2FF:"Naroom_Forest_Deep_Pathway",
        0x1EF35F:"Underneath_Bogrom_InnRoom",
        0x1EF3BF:"Naroom_Vash_Entrance",
        0x1EF41E:"Underneath_Mushroom_GrukRoom",
        0x1EF47D:"Naroom_Geyser_Doorway",
        0x1EF4DC:"Cald_Ashyn_West_InnRoom",
        0x1EF53A:"Underneath_Garage_Room",
        0x1EF598:"Arderial_Historian_EastRoom",
        0x1EF5F6:"Cald_Ashyn_West_SmithRoom",
        0x1EF653:"Naroom_Vash_Northwest_HistorianRoom",
        0x1EF6B0:"Underneath_Fort_SecondFloorRoom_HunterRoom",
        0x1EF70D:"Cald_Caverns_PathwayExitHorizontal",
        0x1EF769:"Underneath_Bogrom_GenericRoom",
        0x1EF7C4:"Cald_Caverns_Detour_Pathway",
        0x1EF81F:"Naroom_Glade_Cave_TeleportCore",
        0x1EF87A:"Underneath_Garage_House",
        0x1EFA3A:"Core_Shadowhold_Marina_FalseIntersection",
        0x1EFA92:"Naroom_Glade_Pathway",
        0x1EFAE8:"Naroom_Gia_Room",
        0x1EFB3E:"Naroom_Glade_Geyser", #shared with 2 scenes
        0x1EFB94:"Underneath_Mushroom_Center",
        0x1EFBEA:"Naroom_Vash_North_RoomB",
        0x1EFC95:"Orothe_Geyser_CoreStone",
        0x1EFCE9:"Underneath_Tunnels_WestCache_Pathway",
        0x1EFD3D:"Arderial_Inn_Room",
        0x1EFD90:"Naroom_Vash_Southeast",
        0x1EFDE3:"Naroom_Vash_North_SpookyRoom_Overgrown",
        0x1EFE36:"Underneath_Mushroom_East_RescueRoom",
        0x1EFE89:"Underneath_Bogrom_GogorRoom",
        0x1EFF29:"Core_Shadowhold_Middle_SouthPathway_ScrewRoom",
        0x1EFFC5:"Naroom_Seers_Room",
        0x1F0000:"Cald_Ashyn_Center_ErynRoom",
        0x1F0095:"Underneath_Mushroom_East_Ormagon",
        0x1F00DC:"Arderial_Historian_UpstairsRoom",
        0x1F0123:"Underneath_Fort_SecondFloorRoom_EmptyRoom",
        0x1F016A:"Naroom_Vash_Southwest_ShopRoom",
        0x1F01B1:"Core_End_Agram",
        0x1F01F8:"Underneath_Mushroom_Geyser",
        0x1F023E:"Cald_Ashyn_Center_HistorianRoom",
        0x1F0284:"Misc_StartScreen_Jukebox",
        0x1F02C9:"Naroom_Vash_North_RoomA",
        0x1F030E:"Naroom_Vash_Southeast_SmithRoom",
        0x1F0353:"Underneath_Bogrom_BrubRoom",
        0x1F0397:"Underneath_Tunnels_Hyren_IntersectionCald",
        0x1F03DB:"Arderial_Shop_Room",
        0x1F041F:"Orothe_Geyser_Southeast",
        0x1F0463:"Cald_Ashyn_East_Room",
        0x1F04A7:"Arderial_Middle_House_BasementRoom",
        0x1F04EB:"Core_End_Antechamber",
        0x1F052E:"Cald_Valkan_Room",
        0x1F0571:"Core_End_Room",
        0x1F05B4:"Underneath_Whackamole",
        0x1F0638:"Orothe_Geyser_SouthwestPathway",
        0x1F06BB:"Underneath_Fort_GroundFloorRoom",
        0x1F12FC:"Naroom_Vash_Top_OrwinRoom_Entrance",
        0x1F1ABC:"Naroom_Windmill_Room",
        0x1F1AF9:"Naroom_Vash_North_SpookyRoom_Normal",
        0x1F1B36:"Naroom_Forest_Puzzle_CacheRoom",
        0x1F1C58:"Underneath_Bogrom_UlkRoom",
        0x1F1CCC:"Cald_Archery",
        0x1F1D06:"Orothe_Geyser_SoutheastPathway",
        0x1F1D3F:"Naroom_Vash_Training_Closet",
        0x1F1D78:"Naroom_Geyser_Northwest",
        0x1F1DB0:"Naroom_Vash_Northwest",
        0x1F1E1D:"Naroom_Arderial_TeleportRooms", #shared with 2 scenes
        0x1F1E1D:"Naroom_Vash_Sky_TeleportArderialRoom",
        0x1F1E85:"Cald_Vents_CacheRoomB",
        0x1F1EB9:"Cald_Vents_CacheRoomC",
        0x1F1EED:"Cald_Vents_CacheRoomA",
        0x1F1F55:"Underneath_Bogrom_HistorianRoom",
        0x1F2022:"Naroom_Geyser_CoreStone",
        0x1F2054:"Core_Shadowhold_Middle_NorthPathway_Door",
        0x1F2086:"Naroom_Glade_Cave_Exterior",
        0x1F20E8:"Underneath_Tunnels_Hyren_Exit",
        0x1F2117:"Naroom_Forest_Puzzle_CacheRoom_BlastRoom",
        0x1F2145:"Naroom_Vash_Southwest",
        0x1F2173:"Underneath_Tunnels_Exit_CacheRoom_RockRoom",
        0x1F21CE:"Naroom_Grove_Cache",
        0x1F2597:"Core_End_Bridge",
        0x1F261A:"Underneath_EastTunnel_Intersection_BlastRoom",
        0x1F2645:"Underneath_Tunnels_Loop_PathwayLoopEndEastCacheIntersections_BlastRoom",
        0x1F2698:"Naroom_Vash_South_AgovoRoom",
        0x1F26BF:"Misc_Tavel_Outside",
        0x1F297F:"Naroom_Vash_Top",
        0x1F29A2:"Core_Shadowhold_Marina_Pathway",
        0x1F29C5:"Misc_StartScreen_Main",
        0x1F29E7:"Orothe_Dock_Eastern_Ferry",
        0x1F2A09:"Orothe_Dock_Western_Ferry",
        0x1F2C84:"Core_Shadowhold_Marina_Jump",
        0x1F2DBC:"Orothe_Dock_Eastern_Empty",
        0x1F2DCA:"Orothe_Dock_Western_Empty",
        0x1F2DE3:"Orothe_Ocean_Ferry",
        0x1F2DEA:"Orothe_Ocean_Raft",
    },
    'HeaderTileset':{
        0x1A7FD4:"Core_End_Bridge",
        0x1EECB4:"Misc_Geyser",
        0x1F067A:"Naroom_Vash_PipesRoom",
        0x1F1B70:"Naroom_Gia_House_Destroyed",
        0x1F1BAA:"Arderial_Clouds",
        0x1F1BE4:"Cald_Vents",
        0x1F1C1E:"Naroom_Forest",
        0x1F1C92:"Orothe_Geyser_Outdoors",
        0x1F1F89:"Naroom_River",
        0x1F1FBC:"Naroom_Vash_Training",
        0x1F1FEF:"Underneath_Mushroom_Normal",
        0x1F21FB:"Cald_Ashyn",
        0x1F2227:"Cald_Caverns",
        0x1F2253:"Cald_Ashyn_NorthGeyser",
        0x1F227F:"Cald_Geyser",
        0x1F22AB:"Underneath_Indoors",
        0x1F22D7:"Underneath_Bogrom_Normal",
        0x1F2303:"Orothe_Tunnels",
        0x1F232F:"Overworld_Naroom",
        0x1F235B:"Underneath_Tunnels_Outside",
        0x1F2387:"Naroom_Windmill_Outside",
        0x1F23B3:"Underneath_Tunnels",
        0x1F23DF:"Naroom_Gia_House_Normal",
        0x1F240B:"Naroom_Vash_Top_OrwinRoom_Observatory",
        0x1F2437:"Naroom_DeepForest",
        0x1F2463:"Misc_StoneWalls",
        0x1F248F:"Core_Shadowhold",
        0x1F24BB:"Orothe_Coral",
        0x1F24E7:"Orothe_Geyser_Indoors",
        0x1F2513:"Naroom_Grove_River",
        0x1F253F:"Overworld_Orothe",
        0x1F256B:"Naroom_Glade_Geyser",
        0x1F25C3:"Arderial_Buildings_Outside",
        0x1F26E5:"Orothe_Island_Outside",
        0x1F270A:"Orothe_Indoors",
        0x1F272F:"Naroom_Vash_Stairs",
        0x1F2754:"Naroom_Indoors",
        0x1F2779:"Orothe_Ruins",
        0x1F279E:"Naroom_Vash_Main",
        0x1F27C3:"Overworld_Cald",
        0x1F27E8:"Orothe_Geyser_Pathway",
        0x1F280D:"Misc_Tavel",
        0x1F2832:"Orothe_Mar_Town",
        0x1F2857:"Arderial_Geyser",
        0x1F287C:"Core_End_Pathway",
        0x1F28A1:"Cald_Indoors",
        0x1F28C6:"Overworld_Underneath",
        0x1F28EB:"Underneath_Bogrom_Destroyed",
        0x1F2910:"Underneath_Mushroom_MushField",
        0x1F2935:"Orothe_Dock",
        0x1F2C2A:"Overworld_Arderial",
        0x1F2C48:"Core_End_Agram",
        0x1F2C66:"Misc_Fort_Outside",
        0x1F2CA2:"Core_Shadowhold_Marina",
        0x1F2CC0:"Arderial_Palace_Throneroom",
        0x1F2CDE:"Misc_StartScreen",
        0x1F2CFC:"Arderial_Indoors",
    },
    'Scene':{
        0x13C000:"Naroom_Grove_Pathway",
        0x13C00F:"Naroom_Grove_Entrance",
        0x13C01E:"Naroom_Vash_Entrance",
        0x13C02D:"Naroom_Glade_GuardEntrance",
        0x13C03C:"Naroom_Glade_RingRoad",
        0x13C04B:"Naroom_Glade_Intersection",
        0x13C05A:"Naroom_Glade_Field",
        0x13C069:"Naroom_Glade_Pathway",
        0x13C078:"Naroom_Glade_PreGeyser",
        0x13C087:"Naroom_Glade_Geyser",
        0x13C096:"Naroom_Glade_Cave_Exterior",
        0x13C0A5:"Naroom_Forest_Puzzle_Unsolved",
        0x13C0B4:"Naroom_Forest_Puzzle_Solved",
        0x13C0C3:"Naroom_Forest_Puzzle_CacheRoom",
        0x13C0D2:"Naroom_Forest_Puzzle_CacheRoom_BlastRoom",
        0x13C0E1:"Naroom_Geyser_Southeast",
        0x13C0F0:"Naroom_Geyser_South",
        0x13C0FF:"Naroom_Geyser_Southwest",
        0x13C10E:"Naroom_Geyser_West",
        0x13C11D:"Naroom_Geyser_Center",
        0x13C12C:"Naroom_Geyser_East",
        0x13C13B:"Naroom_Geyser_Northeast",
        0x13C14A:"Naroom_Geyser_North",
        0x13C159:"Naroom_Geyser_Northwest",
        0x13C168:"Naroom_Geyser_Doorway",
        0x13C177:"Naroom_Geyser_CoreStone",
        0x13C186:"Naroom_Geyser_Entrance",
        0x13C195:"Naroom_Forest_Deep_Intersection",
        0x13C1A4:"Naroom_Forest_Deep_Pathway",
        0x13C1B3:"Naroom_Forest_Deep_Connection",
        0x13C1C2:"Naroom_Forest_Deep_Heart",
        0x13C1D1:"Naroom_Forest_Deep_Cache",
        0x13C1E0:"Naroom_Forest_Deep_House",
        0x13C1EF:"Naroom_Forest_Deep_WenceRoom",
        0x13C1FE:"Naroom_Seers_House",
        0x13C20D:"Naroom_Seers_Room",
        0x13C21C:"Naroom_Seers_Pathway",
        0x13C22B:"Naroom_Seers_Hyren_UnderwaterEntrance",
        0x13C23A:"Naroom_Seers_Hyren_SeaCave",
        0x13C249:"Naroom_Seers_Hyren_UnderwaterExit",
        0x13C258:"Naroom_Grove_River",
        0x13C267:"Naroom_Grove_Cache",
        0x13C276:"Misc_Debug",
        0x13C285:"Naroom_Vash_BottomStairs",
        0x13C294:"Naroom_Vash_South",
        0x13C2A3:"Naroom_Vash_South_AgovoRoom",
        0x13C2B2:"Naroom_Vash_ChallengeAgovo",
        0x13C2C1:"Naroom_Vash_Southwest",
        0x13C2D0:"Naroom_Vash_Southeast",
        0x13C2DF:"Naroom_Vash_Sky",
        0x13C2EE:"Naroom_Vash_Sky_TeleportArderialRoom",
        0x13C2FD:"Naroom_Vash_North",
        0x13C30C:"Naroom_Vash_Northwest",
        0x13C31B:"Naroom_Vash_TopStairs",
        0x13C32A:"Naroom_Vash_Top",
        0x13C339:"Naroom_Vash_Southwest_InnRoom",
        0x13C348:"Naroom_Vash_Southwest_PipesRoom_Pathway",
        0x13C357:"Naroom_Vash_Southwest_PipesRoom_Back",
        0x13C366:"Naroom_Vash_Southwest_ShopRoom",
        0x13C375:"Naroom_Vash_Southeast_SmithRoom",
        0x13C384:"Naroom_Vash_Northwest_HistorianRoom",
        0x13C393:"Naroom_Vash_Training",
        0x13C3A2:"Naroom_Vash_Northwest_TrynRoom",
        0x13C3B1:"Naroom_Vash_Top_OrwinRoom_Entrance",
        0x13C3C0:"Naroom_Vash_Top_OrwinRoom_Observatory",
        0x13C3CF:"Naroom_Vash_North_RoomA",
        0x13C3DE:"Naroom_Vash_North_RoomB",
        0x13C3ED:"Naroom_Vash_Southeast_Room",
        0x13C3FC:"Naroom_Vash_North_SpookyRoom_Normal",
        0x13C40B:"Naroom_Vash_North_SpookyRoom_Overgrown",
        0x13C41A:"Naroom_Vash_Training_Closet",
        0x13C429:"Naroom_Vash_Southeast_CurioRoom",
        0x13C438:"Cald_Archery",
        0x13C447:"Naroom_Forest_Exit",
        0x13C456:"Underneath_Bogrom_Normal",
        0x13C465:"Underneath_Bogrom_Destroyed",
        0x13C474:"Underneath_Bogrom_GenericRoom",
        0x13C483:"Underneath_Bogrom_InnRoom",
        0x13C492:"Underneath_Bogrom_HistorianRoom",
        0x13C4A1:"Underneath_Bogrom_GogorRoom",
        0x13C4B0:"Underneath_Bogrom_MotashRoom",
        0x13C4BF:"Underneath_Bogrom_UlkRoom",
        0x13C4CE:"Underneath_Bogrom_BrubRoom",
        0x13C4DD:"Underneath_Whackamole",
        0x13C4EC:"Underneath_Tunnels_Mouth",
        0x13C4FB:"Underneath_Tunnels_IntersectionHyren",
        0x13C50A:"Underneath_Tunnels_StairsHyren",
        0x13C519:"Underneath_Tunnels_PathwayHyrenFortIntersections",
        0x13C528:"Underneath_Tunnels_IntersectionFort",
        0x13C537:"Underneath_Tunnels_PathwayFort",
        0x13C546:"Underneath_Tunnels_PathwayFortLoopIntersections_A",
        0x13C555:"Underneath_Tunnels_PathwayFortLoopIntersections_B_Unused",
        0x13C564:"Underneath_Tunnels_PathwayFortLoopIntersections_C",
        0x13C573:"Underneath_Tunnels_PathwayFortLoopIntersections_D",
        0x13C582:"Underneath_Tunnels_WestCache_Rock",
        0x13C591:"Underneath_Tunnels_WestCache_End",
        0x13C5A0:"Underneath_Tunnels_WestCache_Pathway",
        0x13C5AF:"Underneath_Tunnels_Loop_IntersectionWestCache",
        0x13C5BE:"Underneath_Tunnels_Loop_PathwayLoopWestCacheIntersections",
        0x13C5CD:"Underneath_Tunnels_Loop_LoopIntersection",
        0x13C5DC:"Underneath_Tunnels_Loop_Center",
        0x13C5EB:"Underneath_Tunnels_Loop_PathwayLoopEndEastCacheIntersections",
        0x13C5FA:"Underneath_Tunnels_Loop_PathwayLoopEndEastCacheIntersections_BlastRoom",
        0x13C609:"Underneath_Tunnels_Loop_IntersectionEndEastCache",
        0x13C618:"Underneath_Tunnels_EastCache",
        0x13C627:"Underneath_Tunnels_Exit",
        0x13C636:"Underneath_Tunnels_Exit_CacheRoom",
        0x13C645:"Underneath_Tunnels_Exit_CacheRoom_RockRoom",
        0x13C654:"Underneath_EastTunnel_Intersection",
        0x13C663:"Underneath_EastTunnel_Intersection_BlastRoom",
        0x13C672:"Underneath_EastTunnel_PathwayFort",
        0x13C681:"Underneath_EastTunnel_PathwayTunnels",
        0x13C690:"Underneath_Mushroom_House",
        0x13C69F:"Underneath_Mushroom_GrukRoom",
        0x13C6AE:"Underneath_Mushroom_GrukRoom_BasementRoom",
        0x13C6BD:"Underneath_Mushroom_WestEntrance",
        0x13C6CC:"Underneath_Mushroom_North",
        0x13C6DB:"Underneath_Mushroom_East",
        0x13C6EA:"Underneath_Mushroom_East_RescueRoom",
        0x13C6F9:"Underneath_Mushroom_East_Ormagon",
        0x13C708:"Underneath_Mushroom_South",
        0x13C717:"Underneath_Mushroom_Center",
        0x13C726:"Underneath_Mushroom_Geyser",
        0x13C735:"Underneath_Garage_House",
        0x13C744:"Underneath_Garage_Room",
        0x13C753:"Underneath_Geyser_SouthEntrance",
        0x13C762:"Underneath_Geyser_Southwest",
        0x13C771:"Underneath_Geyser_Altar",
        0x13C780:"Underneath_Geyser_CavedIn",
        0x13C78F:"Underneath_Geyser_Northwest",
        0x13C79E:"Underneath_Geyser_Northeast",
        0x13C7AD:"Underneath_Geyser_CulDeSac",
        0x13C7BC:"Underneath_Geyser_Southeast",
        0x13C7CB:"Underneath_Geyser_CoreStone",
        0x13C7DA:"Cald_Ashyn_NorthGeyser",
        0x13C7E9:"Cald_Ashyn_Center",
        0x13C7F8:"Cald_Ashyn_West",
        0x13C807:"Cald_Ashyn_East",
        0x13C816:"Cald_Ashyn_SouthBridge",
        0x13C825:"Cald_Ashyn_Center_HistorianRoom",
        0x13C834:"Cald_Ashyn_Center_ErynRoom",
        0x13C843:"Cald_Ashyn_Center_AshgarRoom",
        0x13C852:"Cald_Ashyn_East_Room",
        0x13C861:"Cald_Ashyn_West_InnRoom",
        0x13C870:"Cald_Ashyn_West_SmithRoom",
        0x13C87F:"Cald_Valkan_House",
        0x13C88E:"Cald_Valkan_Room",
        0x13C89D:"Cald_Caverns_Entrance",
        0x13C8AC:"Cald_Caverns_PathwayEntranceHorizontal",
        0x13C8BB:"Cald_Caverns_IntersectionX",
        0x13C8CA:"Cald_Caverns_PathwayZ",
        0x13C8D9:"Cald_Caverns_Pathway7",
        0x13C8E8:"Cald_Caverns_PathwayI",
        0x13C8F7:"Cald_Caverns_IntersectionTriple",
        0x13C906:"Cald_Caverns_Detour_Pathway",
        0x13C915:"Cald_Caverns_Detour_End",
        0x13C924:"Cald_Caverns_PathwayU",
        0x13C933:"Cald_Caverns_PathwayU_CacheRoom",
        0x13C942:"Cald_Caverns_PathwayExitHorizontal",
        0x13C951:"Cald_Caverns_Exit",
        0x13C960:"Cald_Tunnels_Entrance",
        0x13C96F:"Cald_Tunnels_IntersectionNorth",
        0x13C97E:"Cald_Tunnels_PathwayWest",
        0x13C98D:"Cald_Tunnels_PathwayCenter",
        0x13C99C:"Cald_Tunnels_PathwayEast",
        0x13C9AB:"Cald_Tunnels_IntersectionExit",
        0x13C9BA:"Cald_Vents_PathwayA",
        0x13C9C9:"Cald_Vents_Hyren",
        0x13C9D8:"Cald_Vents_CacheRoomA",
        0x13C9E7:"Cald_Vents_CacheRoomB",
        0x13C9F6:"Cald_Volcano_Hyren",
        0x13CA05:"Cald_Vents_PathwayB",
        0x13CA14:"Cald_Vents_Intersection",
        0x13CA23:"Cald_Vents_PathwayIsland",
        0x13CA32:"Cald_Vents_PathwayIsland_RescueRoom",
        0x13CA41:"Cald_Vents_Island",
        0x13CA50:"Cald_Vents_CacheRoomC",
        0x13CA5F:"Cald_Vents_BrokenBridge",
        0x13CA6E:"Cald_Vents_Entrance",
        0x13CA7D:"Cald_Vents_BrokenBridgeEnd",
        0x13CA8C:"Orothe_Dock_Western_Empty",
        0x13CA9B:"Orothe_Dock_Western_Ferry",
        0x13CAAA:"Orothe_Dock_Eastern_Empty",
        0x13CAB9:"Orothe_Dock_Eastern_Ferry",
        0x13CAC8:"Orothe_Ocean_Ferry",
        0x13CAD7:"Cald_Geyser_Entrance",
        0x13CAE6:"Cald_Geyser_PuzzlesA",
        0x13CAF5:"Cald_Geyser_PuzzlesB",
        0x13CB04:"Cald_Geyser_Antechamber",
        0x13CB13:"Cald_Geyser_CoreStone",
        0x13CB22:"Cald_Geyser_CoreStone_Unused",
        0x13CB31:"Core_End_Agram",
        0x13CB40:"Core_End_Entrance",
        0x13CB4F:"Core_End_Pathway",
        0x13CB5E:"Core_End_Room",
        0x13CB6D:"Core_End_Field",
        0x13CB7C:"Core_End_Antechamber",
        0x13CB8B:"Core_End_Bridge",
        0x13CB9A:"Underneath_Mushroom_GrukRoom_TeleportCore",
        0x13CBA9:"Core_Smith_TeleportUnderneath",
        0x13CBB8:"Core_Smith_Smith",
        0x13CBC7:"Core_Smith_Backyard_Entrance",
        0x13CBD6:"Core_Smith_Backyard_Pathway",
        0x13CBE5:"Core_Smith_Backyard_End",
        0x13CBF4:"Naroom_Glade_Cave_TeleportCore",
        0x13CC03:"Core_Smith_TeleportNaroom",
        0x13CC12:"Underneath_Tunnels_Hyren_IntersectionCald",
        0x13CC21:"Underneath_Tunnels_Hyren_Entrance",
        0x13CC30:"Underneath_Tunnels_Hyren_Exit",
        0x13CC3F:"Underneath_Tunnels_FortConnectionCacheRoom",
        0x13CC4E:"Underneath_Fort_Outside",
        0x13CC5D:"Underneath_Fort_GroundFloorRoom",
        0x13CC6C:"Underneath_Fort_SecondFloorRoom_EmptyRoom",
        0x13CC7B:"Underneath_Fort_SecondFloorRoom_HunterRoom",
        0x13CC8A:"Arderial_Fort_Outside",
        0x13CC99:"Arderial_Fort_TeleportNaroom",
        0x13CCA8:"Misc_StartScreen_Main",
        0x13CCB7:"Misc_StartScreen_Pathway",
        0x13CCC6:"Misc_StartScreen_Jukebox",
        0x13CCD5:"Misc_Tavel_Outside",
        0x13CCE4:"Misc_Tavel_Entrance",
        0x13CCF3:"Misc_Tavel_Maze",
        0x13CD02:"Misc_Tavel_Crystal",
        0x13CD11:"Naroom_Gia_House_Normal",
        0x13CD20:"Naroom_Gia_House_Destroyed",
        0x13CD2F:"Naroom_Gia_Room",
        0x13CD3E:"Naroom_Weave_Entrance",
        0x13CD4D:"Naroom_Weave_Ponds",
        0x13CD5C:"Naroom_Weave_River",
        0x13CD6B:"Naroom_Glade_Cave_Entrance",
        0x13CD7A:"Naroom_Windmill_Outside",
        0x13CD89:"Naroom_Windmill_Room",
        0x13CD98:"Naroom_Weave_Exit",
        0x13CDA7:"Naroom_Weave_KeyMaze",
        0x13CDB6:"Underneath_Tunnels_Outside",
        0x13CDC5:"Core_End_Greenery",
        0x13CDD4:"Orothe_Mar_Town",
        0x13CDE3:"Orothe_Mar_Town_Cutscene",
        0x13CDF2:"Orothe_Mar_InnRoom",
        0x13CE01:"Orothe_Mar_MobisRoom",
        0x13CE10:"Orothe_Mar_LibraryRoom",
        0x13CE1F:"Orothe_Tunnels_Entrance",
        0x13CE2E:"Orothe_Tunnels_IntersectionMain",
        0x13CE3D:"Orothe_Tunnels_PathwayMarA",
        0x13CE4C:"Orothe_Tunnels_PathwayMarB",
        0x13CE5B:"Orothe_Tunnels_Whirlpool",
        0x13CE6A:"Orothe_Tunnels_Alcove",
        0x13CE79:"Orothe_Tunnels_IntersectionCache",
        0x13CE88:"Orothe_Tunnels_Cache",
        0x13CE97:"Orothe_Tunnels_VaultEntrance",
        0x13CEA6:"Orothe_Tunnels_VaultRoom",
        0x13CEB5:"Orothe_Tunnels_PathwayMarUnderwater",
        0x13CEC4:"Orothe_Ruins_Entrance",
        0x13CED3:"Orothe_Ruins_Blurry",
        0x13CEE2:"Orothe_Ruins_Southwest",
        0x13CEF1:"Orothe_Island_Room",
        0x13CF00:"Orothe_Ocean_Raft",
        0x13CF0F:"Orothe_Island_Outside",
        0x13CF1E:"Orothe_Geyser_Pathway",
        0x13CF2D:"Orothe_Geyser_Middle",
        0x13CF3C:"Orothe_Geyser_North",
        0x13CF4B:"Orothe_Geyser_East",
        0x13CF5A:"Orothe_Geyser_South",
        0x13CF69:"Orothe_Geyser_West",
        0x13CF78:"Orothe_Geyser_SouthwestPathway",
        0x13CF87:"Orothe_Geyser_SoutheastPathway",
        0x13CF96:"Orothe_Geyser_Southeast",
        0x13CFA5:"Orothe_Geyser_Southwest",
        0x13CFB4:"Orothe_Geyser_Currents",
        0x13CFC3:"Orothe_Geyser_Entrance",
        0x13CFD2:"Orothe_Geyser_CoreStone",
        0x13CFE1:"Orothe_Tunnels_PathwayMarUnderwater_Unused",
        0x13CFF0:"Orothe_Coral_Entrance",
        0x13CFFF:"Orothe_Coral_PathwayHorizontal",
        0x13D00E:"Orothe_Coral_PathwayVertical",
        0x13D01D:"Orothe_Coral_End",
        0x13D02C:"Orothe_Coral_TunnelsChute",
        0x13D03B:"Overworld_Naroom",
        0x13D04A:"Underneath_Tunnels_Hyren_Forest",
        0x13D059:"Overworld_Underneath",
        0x13D068:"Overworld_Cald",
        0x13D077:"Overworld_Orothe",
        0x13D086:"Overworld_Arderial",
        0x13D095:"Arderial_Palace_Throneroom",
        0x13D0A4:"Arderial_Palace_Outside",
        0x13D0B3:"Arderial_Inn_Outside",
        0x13D0C2:"Arderial_Historian_Outside",
        0x13D0D1:"Arderial_Shop_Outside",
        0x13D0E0:"Arderial_Palace_EntranceRoom",
        0x13D0EF:"Arderial_Palace_DoubleRoom",
        0x13D0FE:"Arderial_Palace_SecondFloorRoom",
        0x13D10D:"Arderial_Middle_House_BasementRoom",
        0x13D11C:"Arderial_Inn_Room",
        0x13D12B:"Arderial_Historian_WestRoom",
        0x13D13A:"Arderial_Historian_UpstairsRoom",
        0x13D149:"Arderial_Shop_Room",
        0x13D158:"Arderial_Historian_EastRoom",
        0x13D167:"Arderial_Middle_Entrance",
        0x13D176:"Arderial_Middle_PathwayEntrance",
        0x13D185:"Arderial_Middle_Intersection",
        0x13D194:"Arderial_Middle_PathwayHouse",
        0x13D1A3:"Arderial_Middle_House",
        0x13D1B2:"Arderial_Middle_End",
        0x13D1C1:"Arderial_North_SoutheastEntrance",
        0x13D1D0:"Arderial_North_Southwest",
        0x13D1DF:"Arderial_North_East",
        0x13D1EE:"Arderial_North_Center",
        0x13D1FD:"Arderial_North_West",
        0x13D20C:"Arderial_North_Northeast",
        0x13D21B:"Arderial_North_NorthwestExit",
        0x13D22A:"Arderial_Entrance",
        0x13D239:"Arderial_South_North",
        0x13D248:"Arderial_South_South",
        0x13D257:"Arderial_Geyser_Remix_Arderial_Entrance",
        0x13D266:"Arderial_Geyser_Remix_Arderial_KeyMaze",
        0x13D275:"Arderial_Geyser_Remix_Underneath_West",
        0x13D284:"Arderial_Geyser_Remix_Cald_West",
        0x13D293:"Arderial_Geyser_Remix_Underneath_East",
        0x13D2A2:"Arderial_Geyser_Remix_Cald_East",
        0x13D2B1:"Arderial_Geyser_Remix_Cache_East",
        0x13D2C0:"Arderial_Geyser_Remix_Cache_West",
        0x13D2CF:"Arderial_Geyser_Remix_Naroom_West",
        0x13D2DE:"Arderial_Geyser_Remix_Naroom_East",
        0x13D2ED:"Arderial_Geyser_Remix_Orothe_East",
        0x13D2FC:"Arderial_Geyser_Remix_Orothe_West",
        0x13D30B:"Arderial_Geyser_Pipes1_Entrance",
        0x13D31A:"Arderial_Geyser_Pipes1_Entrance_BackroomCache",
        0x13D329:"Arderial_Geyser_Pipes2_MiddlePipeSwitch",
        0x13D338:"Arderial_Geyser_Pipes2_GlassField",
        0x13D347:"Arderial_Geyser_VerticalPipe_Unused",
        0x13D356:"Arderial_Geyser_Pipes2_End",
        0x13D365:"Arderial_Geyser_End_GlassMaze",
        0x13D374:"Arderial_Geyser_Pipes1_MiddlePipeSwitch",
        0x13D383:"Arderial_Geyser_Pipes2_Entrance",
        0x13D392:"Arderial_Geyser_HorizontalPipe_Unused",
        0x13D3A1:"Arderial_Geyser_Pipes1_End",
        0x13D3B0:"Arderial_Geyser_Pipes1_PipeToStarryCache",
        0x13D3BF:"Arderial_Geyser_Pipes1_StarryCache",
        0x13D3CE:"Arderial_Geyser_Pipes2_PipeAnalysis",
        0x13D3DD:"Arderial_Geyser_End_CaldCache",
        0x13D3EC:"Arderial_Geyser_End_CoreStone",
        0x13D3FB:"Core_Shadowhold_Middle_FirstPuzzle",
        0x13D40A:"Core_Shadowhold_Middle_FirstPathway",
        0x13D419:"Core_Shadowhold_Middle_FirstIntersection",
        0x13D428:"Core_Shadowhold_Middle_NorthPathway_Door",
        0x13D437:"Core_Shadowhold_Middle_NorthPathway_Cells",
        0x13D446:"Core_Shadowhold_Middle_SouthPathway_Cell",
        0x13D455:"Core_Shadowhold_Middle_SouthPathway_ScrewRoom",
        0x13D464:"Core_Shadowhold_Middle_EastPathway_Door",
        0x13D473:"Core_Shadowhold_Middle_EastPathway_BigPuzzle",
        0x13D482:"Core_Shadowhold_Middle_EastPathway_ArrowRoom",
        0x13D491:"Core_Shadowhold_Labyrinth_Entrance",
        0x13D4A0:"Core_Shadowhold_Labyrinth_South",
        0x13D4AF:"Core_Shadowhold_Labyrinth_North",
        0x13D4BE:"Core_Shadowhold_Labyrinth_PuzzlePathway",
        0x13D4CD:"Core_Shadowhold_Deep_Cells",
        0x13D4DC:"Core_Shadowhold_Deep_Intersection",
        0x13D4EB:"Core_Shadowhold_Deep_FirstPuzzle",
        0x13D4FA:"Core_Shadowhold_Deep_TwoPuzzles",
        0x13D509:"Core_Shadowhold_Deep_SouthPathway",
        0x13D518:"Core_Shadowhold_Deep_NorthPathway",
        0x13D527:"Core_Shadowhold_Deep_End",
        0x13D536:"Core_Shadowhold_Middle_StartCells",
        0x13D545:"Core_Shadowhold_Middle_Door",
        0x13D554:"Core_Shadowhold_Marina_Start",
        0x13D563:"Core_Shadowhold_Marina_FalseIntersection",
        0x13D572:"Core_Shadowhold_Marina_Room",
        0x13D581:"Core_Shadowhold_Marina_Pathway",
        0x13D590:"Core_Shadowhold_Marina_Jump",
    },
}
scenefolders = {
    0x13C000:"naroom/grove/pathway/",
    0x13C00F:"naroom/grove/entrance/",
    0x13C01E:"naroom/vash/entrance/",
    0x13C02D:"naroom/glade/guardentrance/",
    0x13C03C:"naroom/glade/ringroad/",
    0x13C04B:"naroom/glade/intersection/",
    0x13C05A:"naroom/glade/field/",
    0x13C069:"naroom/glade/pathway/",
    0x13C078:"naroom/glade/pregeyser/",
    0x13C087:"naroom/glade/geyser/",
    0x13C096:"naroom/glade/cave_exterior/",
    0x13C0A5:"naroom/forest/puzzle_unsolved/",
    0x13C0B4:"naroom/forest/puzzle_solved/",
    0x13C0C3:"naroom/forest/puzzle_cacheroom/",
    0x13C0D2:"naroom/forest/puzzle_cacheroom_blastroom/",
    0x13C0E1:"naroom/geyser/southeast/",
    0x13C0F0:"naroom/geyser/south/",
    0x13C0FF:"naroom/geyser/southwest/",
    0x13C10E:"naroom/geyser/west/",
    0x13C11D:"naroom/geyser/center/",
    0x13C12C:"naroom/geyser/east/",
    0x13C13B:"naroom/geyser/northeast/",
    0x13C14A:"naroom/geyser/north/",
    0x13C159:"naroom/geyser/northwest/",
    0x13C168:"naroom/geyser/doorway/",
    0x13C177:"naroom/geyser/corestone/",
    0x13C186:"naroom/geyser/entrance/",
    0x13C195:"naroom/forest/deep_intersection/",
    0x13C1A4:"naroom/forest/deep_pathway/",
    0x13C1B3:"naroom/forest/deep_connection/",
    0x13C1C2:"naroom/forest/deep_heart/",
    0x13C1D1:"naroom/forest/deep_cache/",
    0x13C1E0:"naroom/forest/deep_house/",
    0x13C1EF:"naroom/forest/deep_wenceroom/",
    0x13C1FE:"naroom/seers/house/",
    0x13C20D:"naroom/seers/room/",
    0x13C21C:"naroom/seers/pathway/",
    0x13C22B:"naroom/seers/hyren_underwaterentrance/",
    0x13C23A:"naroom/seers/hyren_seacave/",
    0x13C249:"naroom/seers/hyren_underwaterexit/",
    0x13C258:"naroom/grove/river/",
    0x13C267:"naroom/grove/cache/",
    0x13C276:"misc/debug/",
    0x13C285:"naroom/vash/bottomstairs/",
    0x13C294:"naroom/vash/south/",
    0x13C2A3:"naroom/vash/south_agovoroom/",
    0x13C2B2:"naroom/vash/challengeagovo/",
    0x13C2C1:"naroom/vash/southwest/",
    0x13C2D0:"naroom/vash/southeast/",
    0x13C2DF:"naroom/vash/sky/",
    0x13C2EE:"naroom/vash/sky_teleportarderialroom/",
    0x13C2FD:"naroom/vash/north/",
    0x13C30C:"naroom/vash/northwest/",
    0x13C31B:"naroom/vash/topstairs/",
    0x13C32A:"naroom/vash/top/",
    0x13C339:"naroom/vash/southwest_innroom/",
    0x13C348:"naroom/vash/southwest_pipesroom_pathway/",
    0x13C357:"naroom/vash/southwest_pipesroom_back/",
    0x13C366:"naroom/vash/southwest_shoproom/",
    0x13C375:"naroom/vash/southeast_smithroom/",
    0x13C384:"naroom/vash/northwest_historianroom/",
    0x13C393:"naroom/vash/training/",
    0x13C3A2:"naroom/vash/northwest_trynroom/",
    0x13C3B1:"naroom/vash/top_orwinroom_entrance/",
    0x13C3C0:"naroom/vash/top_orwinroom_observatory/",
    0x13C3CF:"naroom/vash/north_rooma/",
    0x13C3DE:"naroom/vash/north_roomb/",
    0x13C3ED:"naroom/vash/southeast_room/",
    0x13C3FC:"naroom/vash/north_spookyroom_normal/",
    0x13C40B:"naroom/vash/north_spookyroom_overgrown/",
    0x13C41A:"naroom/vash/training_closet/",
    0x13C429:"naroom/vash/southeast_curioroom/",
    0x13C438:"cald/archery/",
    0x13C447:"naroom/forest/exit/",
    0x13C456:"underneath/bogrom/normal/",
    0x13C465:"underneath/bogrom/destroyed/",
    0x13C474:"underneath/bogrom/genericroom/",
    0x13C483:"underneath/bogrom/innroom/",
    0x13C492:"underneath/bogrom/historianroom/",
    0x13C4A1:"underneath/bogrom/gogorroom/",
    0x13C4B0:"underneath/bogrom/motashroom/",
    0x13C4BF:"underneath/bogrom/ulkroom/",
    0x13C4CE:"underneath/bogrom/brubroom/",
    0x13C4DD:"underneath/whackamole/",
    0x13C4EC:"underneath/tunnels/mouth/",
    0x13C4FB:"underneath/tunnels/intersectionhyren/",
    0x13C50A:"underneath/tunnels/stairshyren/",
    0x13C519:"underneath/tunnels/pathwayhyrenfortintersections/",
    0x13C528:"underneath/tunnels/intersectionfort/",
    0x13C537:"underneath/tunnels/pathwayfort/",
    0x13C546:"underneath/tunnels/pathwayfortloopintersections_a/",
    0x13C555:"underneath/tunnels/pathwayfortloopintersections_b_unused/",
    0x13C564:"underneath/tunnels/pathwayfortloopintersections_c/",
    0x13C573:"underneath/tunnels/pathwayfortloopintersections_d/",
    0x13C582:"underneath/tunnels/westcache_rock/",
    0x13C591:"underneath/tunnels/westcache_end/",
    0x13C5A0:"underneath/tunnels/westcache_pathway/",
    0x13C5AF:"underneath/tunnels/loop_intersectionwestcache/",
    0x13C5BE:"underneath/tunnels/loop_pathwayloopwestcacheintersections/",
    0x13C5CD:"underneath/tunnels/loop_loopintersection/",
    0x13C5DC:"underneath/tunnels/loop_center/",
    0x13C5EB:"underneath/tunnels/loop_pathwayloopendeastcacheintersections/",
    0x13C5FA:"underneath/tunnels/loop_pathwayloopendeastcacheintersections_blastroom/",
    0x13C609:"underneath/tunnels/loop_intersectionendeastcache/",
    0x13C618:"underneath/tunnels/eastcache/",
    0x13C627:"underneath/tunnels/exit/",
    0x13C636:"underneath/tunnels/exit_cacheroom/",
    0x13C645:"underneath/tunnels/exit_cacheroom_rockroom/",
    0x13C654:"underneath/easttunnel/intersection/",
    0x13C663:"underneath/easttunnel/intersection_blastroom/",
    0x13C672:"underneath/easttunnel/pathwayfort/",
    0x13C681:"underneath/easttunnel/pathwaytunnels/",
    0x13C690:"underneath/mushroom/house/",
    0x13C69F:"underneath/mushroom/grukroom/",
    0x13C6AE:"underneath/mushroom/grukroom_basementroom/",
    0x13C6BD:"underneath/mushroom/westentrance/",
    0x13C6CC:"underneath/mushroom/north/",
    0x13C6DB:"underneath/mushroom/east/",
    0x13C6EA:"underneath/mushroom/east_rescueroom/",
    0x13C6F9:"underneath/mushroom/east_ormagon/",
    0x13C708:"underneath/mushroom/south/",
    0x13C717:"underneath/mushroom/center/",
    0x13C726:"underneath/mushroom/geyser/",
    0x13C735:"underneath/garage/house/",
    0x13C744:"underneath/garage/room/",
    0x13C753:"underneath/geyser/southentrance/",
    0x13C762:"underneath/geyser/southwest/",
    0x13C771:"underneath/geyser/altar/",
    0x13C780:"underneath/geyser/cavedin/",
    0x13C78F:"underneath/geyser/northwest/",
    0x13C79E:"underneath/geyser/northeast/",
    0x13C7AD:"underneath/geyser/culdesac/",
    0x13C7BC:"underneath/geyser/southeast/",
    0x13C7CB:"underneath/geyser/corestone/",
    0x13C7DA:"cald/ashyn/northgeyser/",
    0x13C7E9:"cald/ashyn/center/",
    0x13C7F8:"cald/ashyn/west/",
    0x13C807:"cald/ashyn/east/",
    0x13C816:"cald/ashyn/southbridge/",
    0x13C825:"cald/ashyn/center_historianroom/",
    0x13C834:"cald/ashyn/center_erynroom/",
    0x13C843:"cald/ashyn/center_ashgarroom/",
    0x13C852:"cald/ashyn/east_room/",
    0x13C861:"cald/ashyn/west_innroom/",
    0x13C870:"cald/ashyn/west_smithroom/",
    0x13C87F:"cald/valkan/house/",
    0x13C88E:"cald/valkan/room/",
    0x13C89D:"cald/caverns/entrance/",
    0x13C8AC:"cald/caverns/pathwayentrancehorizontal/",
    0x13C8BB:"cald/caverns/intersectionx/",
    0x13C8CA:"cald/caverns/pathwayz/",
    0x13C8D9:"cald/caverns/pathway7/",
    0x13C8E8:"cald/caverns/pathwayi/",
    0x13C8F7:"cald/caverns/intersectiontriple/",
    0x13C906:"cald/caverns/detour_pathway/",
    0x13C915:"cald/caverns/detour_end/",
    0x13C924:"cald/caverns/pathwayu/",
    0x13C933:"cald/caverns/pathwayu_cacheroom/",
    0x13C942:"cald/caverns/pathwayexithorizontal/",
    0x13C951:"cald/caverns/exit/",
    0x13C960:"cald/tunnels/entrance/",
    0x13C96F:"cald/tunnels/intersectionnorth/",
    0x13C97E:"cald/tunnels/pathwaywest/",
    0x13C98D:"cald/tunnels/pathwaycenter/",
    0x13C99C:"cald/tunnels/pathwayeast/",
    0x13C9AB:"cald/tunnels/intersectionexit/",
    0x13C9BA:"cald/vents/pathwaya/",
    0x13C9C9:"cald/vents/hyren/",
    0x13C9D8:"cald/vents/cacherooma/",
    0x13C9E7:"cald/vents/cacheroomb/",
    0x13C9F6:"cald/volcano_hyren/",
    0x13CA05:"cald/vents/pathwayb/",
    0x13CA14:"cald/vents/intersection/",
    0x13CA23:"cald/vents/pathwayisland/",
    0x13CA32:"cald/vents/pathwayisland_rescueroom/",
    0x13CA41:"cald/vents/island/",
    0x13CA50:"cald/vents/cacheroomc/",
    0x13CA5F:"cald/vents/brokenbridge/",
    0x13CA6E:"cald/vents/entrance/",
    0x13CA7D:"cald/vents/brokenbridgeend/",
    0x13CA8C:"orothe/dock/western_empty/",
    0x13CA9B:"orothe/dock/western_ferry/",
    0x13CAAA:"orothe/dock/eastern_empty/",
    0x13CAB9:"orothe/dock/eastern_ferry/",
    0x13CAC8:"orothe/ocean/ferry/",
    0x13CAD7:"cald/geyser/entrance/",
    0x13CAE6:"cald/geyser/puzzlesa/",
    0x13CAF5:"cald/geyser/puzzlesb/",
    0x13CB04:"cald/geyser/antechamber/",
    0x13CB13:"cald/geyser/corestone/",
    0x13CB22:"cald/geyser/corestone_unused/",
    0x13CB31:"core/end/agram/",
    0x13CB40:"core/end/entrance/",
    0x13CB4F:"core/end/pathway/",
    0x13CB5E:"core/end/room/",
    0x13CB6D:"core/end/field/",
    0x13CB7C:"core/end/antechamber/",
    0x13CB8B:"core/end/bridge/",
    0x13CB9A:"underneath/mushroom/grukroom_teleportcore/",
    0x13CBA9:"core/smith/teleportunderneath/",
    0x13CBB8:"core/smith/smith/",
    0x13CBC7:"core/smith/backyard_entrance/",
    0x13CBD6:"core/smith/backyard_pathway/",
    0x13CBE5:"core/smith/backyard_end/",
    0x13CBF4:"naroom/glade/cave_teleportcore/",
    0x13CC03:"core/smith/teleportnaroom/",
    0x13CC12:"underneath/tunnels/hyren_intersectioncald/",
    0x13CC21:"underneath/tunnels/hyren_entrance/",
    0x13CC30:"underneath/tunnels/hyren_exit/",
    0x13CC3F:"underneath/tunnels/fortconnectioncacheroom/",
    0x13CC4E:"underneath/fort/outside/",
    0x13CC5D:"underneath/fort/groundfloorroom/",
    0x13CC6C:"underneath/fort/secondfloorroom_emptyroom/",
    0x13CC7B:"underneath/fort/secondfloorroom_hunterroom/",
    0x13CC8A:"arderial/fort/outside/",
    0x13CC99:"arderial/fort/teleportnaroom/",
    0x13CCA8:"misc/startscreen/main/",
    0x13CCB7:"misc/startscreen/pathway/",
    0x13CCC6:"misc/startscreen/jukebox/",
    0x13CCD5:"misc/tavel/outside/",
    0x13CCE4:"misc/tavel/entrance/",
    0x13CCF3:"misc/tavel/maze/",
    0x13CD02:"misc/tavel/crystal/",
    0x13CD11:"naroom/gia/house_normal/",
    0x13CD20:"naroom/gia/house_destroyed/",
    0x13CD2F:"naroom/gia/room/",
    0x13CD3E:"naroom/weave/entrance/",
    0x13CD4D:"naroom/weave/ponds/",
    0x13CD5C:"naroom/weave/river/",
    0x13CD6B:"naroom/glade/cave_entrance/",
    0x13CD7A:"naroom/windmill/outside/",
    0x13CD89:"naroom/windmill/room/",
    0x13CD98:"naroom/weave/exit/",
    0x13CDA7:"naroom/weave/keymaze/",
    0x13CDB6:"underneath/tunnels/outside/",
    0x13CDC5:"core/end/greenery/",
    0x13CDD4:"orothe/mar/town/",
    0x13CDE3:"orothe/mar/town_cutscene/",
    0x13CDF2:"orothe/mar/innroom/",
    0x13CE01:"orothe/mar/mobisroom/",
    0x13CE10:"orothe/mar/libraryroom/",
    0x13CE1F:"orothe/tunnels/entrance/",
    0x13CE2E:"orothe/tunnels/intersectionmain/",
    0x13CE3D:"orothe/tunnels/pathwaymara/",
    0x13CE4C:"orothe/tunnels/pathwaymarb/",
    0x13CE5B:"orothe/tunnels/whirlpool/",
    0x13CE6A:"orothe/tunnels/alcove/",
    0x13CE79:"orothe/tunnels/intersectioncache/",
    0x13CE88:"orothe/tunnels/cache/",
    0x13CE97:"orothe/tunnels/vaultentrance/",
    0x13CEA6:"orothe/tunnels/vaultroom/",
    0x13CEB5:"orothe/tunnels/pathwaymarunderwater/",
    0x13CEC4:"orothe/ruins/entrance/",
    0x13CED3:"orothe/ruins/blurry/",
    0x13CEE2:"orothe/ruins/southwest/",
    0x13CEF1:"orothe/island/room/",
    0x13CF00:"orothe/ocean/raft/",
    0x13CF0F:"orothe/island/outside/",
    0x13CF1E:"orothe/geyser/pathway/",
    0x13CF2D:"orothe/geyser/middle/",
    0x13CF3C:"orothe/geyser/north/",
    0x13CF4B:"orothe/geyser/east/",
    0x13CF5A:"orothe/geyser/south/",
    0x13CF69:"orothe/geyser/west/",
    0x13CF78:"orothe/geyser/southwestpathway/",
    0x13CF87:"orothe/geyser/southeastpathway/",
    0x13CF96:"orothe/geyser/southeast/",
    0x13CFA5:"orothe/geyser/southwest/",
    0x13CFB4:"orothe/geyser/currents/",
    0x13CFC3:"orothe/geyser/entrance/",
    0x13CFD2:"orothe/geyser/corestone/",
    0x13CFE1:"orothe/tunnels/pathwaymarunderwater_unused/",
    0x13CFF0:"orothe/coral/entrance/",
    0x13CFFF:"orothe/coral/pathwayhorizontal/",
    0x13D00E:"orothe/coral/pathwayvertical/",
    0x13D01D:"orothe/coral/end/",
    0x13D02C:"orothe/coral/tunnelschute/",
    0x13D03B:"overworld/naroom/",
    0x13D04A:"underneath/tunnels/hyren_forest/",
    0x13D059:"overworld/underneath/",
    0x13D068:"overworld/cald/",
    0x13D077:"overworld/orothe/",
    0x13D086:"overworld/arderial/",
    0x13D095:"arderial/palace/throneroom/",
    0x13D0A4:"arderial/palace/outside/",
    0x13D0B3:"arderial/inn/outside/",
    0x13D0C2:"arderial/historian/outside/",
    0x13D0D1:"arderial/shop/outside/",
    0x13D0E0:"arderial/palace/entranceroom/",
    0x13D0EF:"arderial/palace/doubleroom/",
    0x13D0FE:"arderial/palace/secondfloorroom/",
    0x13D10D:"arderial/middle/house_basementroom/",
    0x13D11C:"arderial/inn/room/",
    0x13D12B:"arderial/historian/westroom/",
    0x13D13A:"arderial/historian/upstairsroom/",
    0x13D149:"arderial/shop/room/",
    0x13D158:"arderial/historian/eastroom/",
    0x13D167:"arderial/middle/entrance/",
    0x13D176:"arderial/middle/pathwayentrance/",
    0x13D185:"arderial/middle/intersection/",
    0x13D194:"arderial/middle/pathwayhouse/",
    0x13D1A3:"arderial/middle/house/",
    0x13D1B2:"arderial/middle/end/",
    0x13D1C1:"arderial/north/southeastentrance/",
    0x13D1D0:"arderial/north/southwest/",
    0x13D1DF:"arderial/north/east/",
    0x13D1EE:"arderial/north/center/",
    0x13D1FD:"arderial/north/west/",
    0x13D20C:"arderial/north/northeast/",
    0x13D21B:"arderial/north/northwestexit/",
    0x13D22A:"arderial/entrance/",
    0x13D239:"arderial/south/north/",
    0x13D248:"arderial/south/south/",
    0x13D257:"arderial/geyser/remix_arderial_entrance/",
    0x13D266:"arderial/geyser/remix_arderial_keymaze/",
    0x13D275:"arderial/geyser/remix_underneath_west/",
    0x13D284:"arderial/geyser/remix_cald_west/",
    0x13D293:"arderial/geyser/remix_underneath_east/",
    0x13D2A2:"arderial/geyser/remix_cald_east/",
    0x13D2B1:"arderial/geyser/remix_cache_east/",
    0x13D2C0:"arderial/geyser/remix_cache_west/",
    0x13D2CF:"arderial/geyser/remix_naroom_west/",
    0x13D2DE:"arderial/geyser/remix_naroom_east/",
    0x13D2ED:"arderial/geyser/remix_orothe_east/",
    0x13D2FC:"arderial/geyser/remix_orothe_west/",
    0x13D30B:"arderial/geyser/pipes1_entrance/",
    0x13D31A:"arderial/geyser/pipes1_entrance_backroomcache/",
    0x13D329:"arderial/geyser/pipes2_middlepipeswitch/",
    0x13D338:"arderial/geyser/pipes2_glassfield/",
    0x13D347:"arderial/geyser/verticalpipe_unused/",
    0x13D356:"arderial/geyser/pipes2_end/",
    0x13D365:"arderial/geyser/end_glassmaze/",
    0x13D374:"arderial/geyser/pipes1_middlepipeswitch/",
    0x13D383:"arderial/geyser/pipes2_entrance/",
    0x13D392:"arderial/geyser/horizontalpipe_unused/",
    0x13D3A1:"arderial/geyser/pipes1_end/",
    0x13D3B0:"arderial/geyser/pipes1_pipetostarrycache/",
    0x13D3BF:"arderial/geyser/pipes1_starrycache/",
    0x13D3CE:"arderial/geyser/pipes2_pipeanalysis/",
    0x13D3DD:"arderial/geyser/end_caldcache/",
    0x13D3EC:"arderial/geyser/end_corestone/",
    0x13D3FB:"core/shadowhold/middle_firstpuzzle/",
    0x13D40A:"core/shadowhold/middle_firstpathway/",
    0x13D419:"core/shadowhold/middle_firstintersection/",
    0x13D428:"core/shadowhold/middle_northpathway_door/",
    0x13D437:"core/shadowhold/middle_northpathway_cells/",
    0x13D446:"core/shadowhold/middle_southpathway_cell/",
    0x13D455:"core/shadowhold/middle_southpathway_screwroom/",
    0x13D464:"core/shadowhold/middle_eastpathway_door/",
    0x13D473:"core/shadowhold/middle_eastpathway_bigpuzzle/",
    0x13D482:"core/shadowhold/middle_eastpathway_arrowroom/",
    0x13D491:"core/shadowhold/labyrinth_entrance/",
    0x13D4A0:"core/shadowhold/labyrinth_south/",
    0x13D4AF:"core/shadowhold/labyrinth_north/",
    0x13D4BE:"core/shadowhold/labyrinth_puzzlepathway/",
    0x13D4CD:"core/shadowhold/deep_cells/",
    0x13D4DC:"core/shadowhold/deep_intersection/",
    0x13D4EB:"core/shadowhold/deep_firstpuzzle/",
    0x13D4FA:"core/shadowhold/deep_twopuzzles/",
    0x13D509:"core/shadowhold/deep_southpathway/",
    0x13D518:"core/shadowhold/deep_northpathway/",
    0x13D527:"core/shadowhold/deep_end/",
    0x13D536:"core/shadowhold/middle_startcells/",
    0x13D545:"core/shadowhold/middle_door/",
    0x13D554:"core/shadowhold/marina_start/",
    0x13D563:"core/shadowhold/marina_falseintersection/",
    0x13D572:"core/shadowhold/marina_room/",
    0x13D581:"core/shadowhold/marina_pathway/",
    0x13D590:"core/shadowhold/marina_jump/",
}

        
class GetParseName:
    savefile = {
        # human-readable file
        "Palette":".pal.png",
        "Tileset":".tileset.png",
        "Pattern":".pattern", #.tilemap/.attrmap
        "Metatilemap":".metatile.tilemap",
        "Collisionmap":".collision.tilemap",
        "HeaderMetatilemap":".metatile.asm",
        "HeaderCollisionmap":".collision.asm",
        "HeaderTileset":".bitmapset.asm",
        "Scene":".scene.asm",
        }
    makedfile = {
        # compiled file
        "Palette":".pal",
        "Tileset":".tileset",
        "Pattern":".pattern",
        "Metatilemap":".metatile.tilemap",
        "Collisionmap":".collision.tilemap",
        "HeaderMetatilemap":".metatile.asm",
        "HeaderCollisionmap":".collision.asm",
        "HeaderTileset":".bitmapset.asm",
        "Scene":".scene.asm",
        }
    includetype = {
        #include prefix
        "Palette":'    INCBIN "{}"',
        "Tileset":'    INCBIN "{}"',
        "Pattern":'    INCBIN "{}"',
        "Metatilemap":'    INCBIN "{}"',
        "Collisionmap":'    INCBIN "{}"',
        "HeaderMetatilemap":'    INCLUDE "{}"',
        "HeaderCollisionmap":'    INCLUDE "{}"',
        "HeaderTileset":'    INCLUDE "{}"',
        "Scene":'    INCLUDE "{}"',
        }
    includepath = {
        #file location to include
        "Palette":'autogenerated/assets/scenes/graphics/palettes/',
        "Tileset":'autogenerated/assets/scenes/graphics/tilesets/',
        "Pattern":'autogenerated/assets/scenes/graphics/patterns/',
        "Metatilemap":'autogenerated/assets/scenes/scenes/',
        "Collisionmap":'autogenerated/assets/scenes/scenes/',
        "HeaderMetatilemap":'autogenerated/assets/scenes/scenes/',
        "HeaderCollisionmap":'autogenerated/assets/scenes/scenes/',
        "HeaderTileset":'autogenerated/assets/scenes/graphics/bitmapsets/',
        "Scene":'autogenerated/assets/scenes/scenes/',
        }
    labelname = {
        #prefix
        "Palette":"PAL_",
        "Tileset":"BITMAP_",
        "Pattern":"PATTERN_",
        "Metatilemap":"METAMAP_RAW_",
        "Collisionmap":"COLLMAP_RAW_",
        "HeaderMetatilemap":"METAMAP_",
        "HeaderCollisionmap":"COLLMAP_",
        "HeaderTileset":"BITSET_",
        "Scene":"SCENE_",
        }
    def GetBaseName(self):
        if(self.parsetype in indexcount):
            indexcount[self.parsetype] += 1
        else:
            indexcount[self.parsetype] = 0
        if(self.parsetype in inheritparentnames or nameoverride):
            # Just take parent's name or use hex address
            name = self.rawname
            if(name == "{}"):
                name = "{:06X}_".format(self.address.getPos())
        else:
            try:
                name = self.rawname.format(parsenames[self.parsetype][self.address.getPos()])
            except (KeyError, IndexError):
                regex = r'\{[^}]*\}'
                self.rawname = re.sub(regex,'{:04X}',self.rawname)
                name = self.rawname.format(indexcount[self.parsetype])
                name = "{:06X}_".format(self.address.getPos()) + name
                pass
        #if(self.parsetype == "Tileset"): Get all the possible image colorization variants
        #    name += "{:04}".format(indexcount[self.parsetype])
        return name
        
    def __init__(self,parsetype,name,address):
        if(parsetype[:4] == "RLE_"):
            parsetype = parsetype[4:]
        self.parsetype = parsetype
        self.rawname = name
        self.address = address
        self.name = self.GetBaseName()
        self.rlename = ""
        
    def addRLE(self,mode):
        #Adds RLEX to the end of the base name
        self.rlename = mode
        
    def getName(self):
        # Base name
        return self.name
    def getSaveFile(self,comment="",scenefolder=""):
        # Where to save the extracted file
        os.makedirs(c.outdir + GetParseName.includepath[self.parsetype] + scenefolder, exist_ok=True)
        return c.outdir + GetParseName.includepath[self.parsetype] + scenefolder + self.name + self.rlename + comment + GetParseName.savefile[self.parsetype]
    def getMakedFile(self,include,scenefolder=""):
        # The name of the file to be included that is generated from the extracted file
        # if include = True, will add INCBIN or INCLUDE
        base = GetParseName.includepath[self.parsetype] + scenefolder + self.name + GetParseName.makedfile[self.parsetype] + (".rle" if self.rlename else "")
        if(include):
            return GetParseName.includetype[self.parsetype].format(base)
        return base
    def getLabelName(self,includecolon):
        return GetParseName.labelname[self.parsetype] + self.name + ("RLE" if self.rlename else "") + ("::" if includecolon else "")

def ParseAssets(rom,bankaddress,parsetype,name,args={}):
    global arderial_pattern, arderial_palette
    assert isinstance(rom,utils.Rom)
    assert isinstance(bankaddress,utils.BankAddress)
    
    replace_rom_text.reset_files([bankaddress.getBank()])
    name = GetParseName(parsetype,name,bankaddress)
    
    #Required:
    #   start defined
    #   end defined
    #   romreplacetext defined, or otherwise skipreplace=True
    
    start = bankaddress
    curpos = bankaddress
    skipreplace = False
    outdata = {}
    
    if(parsetype[0:4] == "RLE_"):
        parsetype = parsetype[4:]
        rlemode = True
        data,mode,end = rle.decompress(rom,start,name.getName()+name.getLabelName(False))
        name.addRLE(mode)
    else:
        rlemode = False
        
    if(parsetype == "Palette"):
        assert rlemode == False
        size = args["size"]
        
        romreplacetext = name.getMakedFile(True)
        data = rom.getRawSection(curpos,size)
        color.data_to_png(name.getSaveFile(),data)
        
        end = curpos + size

    if(parsetype == "Tileset"):
        size = args["size"]
        width = args["pixelwidth"]
        
        romreplacetext = name.getMakedFile(True)
        if(rlemode):
            tileset.data_to_png(name.getSaveFile(comment="_({})".format(args["parentname"])),data,width)
        else:
            data = rom.getRawSection(curpos,size)
            tileset.data_to_png(name.getSaveFile(comment="_({})".format(args["parentname"])),data,width)
            end = curpos + size
            
    if(parsetype == "Pattern"):
        assert rlemode == True
        
        romreplacetext = name.getMakedFile(True)
        pat = pattern.Pattern()
        pat._load_processed(data)
        pat.save_original_file(name.getSaveFile())
        
    if(parsetype == "Metatilemap"):
        if("scenefolder" not in args):
            args["scenefolder"]="UNKNOWNFOLDER/"
            
        assert rlemode == True
        skipreplace = True
        outdata["size"] = len(data)
        with open(name.getSaveFile(scenefolder=args["scenefolder"]),"wb") as f:
            f.write(data)
            
    if(parsetype == "Collisionmap"):
        if("scenefolder" not in args):
            args["scenefolder"]="UNKNOWNFOLDER/"
            
        assert rlemode == True
        skipreplace = True
        outdata["size"] = len(data)
        with open(name.getSaveFile(scenefolder=args["scenefolder"]),"wb") as f:
            f.write(data)
        romreplacetext = name.getMakedFile(True,scenefolder=args["scenefolder"]) #Only used if args["force_romreplace"]==True
        
    if(parsetype == "HeaderCollisionmap"):
        if("scenefolder" not in args):
            args["scenefolder"]="UNKNOWNFOLDER/"
            
        width = rom.getByte(curpos)
        unc_size = rom.getWord(curpos+1)
        curpos += 3
        end,collisionmapname,real_size = ParseAssets(rom,curpos,"RLE_Collisionmap",name.getName(),{"scenefolder":args["scenefolder"]})
        real_size = real_size["size"]
        
        object_file_buffer = [
            "    db {: <10}; wTilemap_Width".format(width),
            ]
        object_file_buffer.append("    dw ${:04X}     ; Uncompressed file size (excluding header)".format(unc_size))
        if(unc_size != real_size):
            object_file_buffer.append("    ; The imported file size was actually ${:04X} because 3 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error".format(real_size))
        object_file_buffer.append(collisionmapname.getMakedFile(True,scenefolder=args["scenefolder"]))
            
        object_file_buffer = '\n'.join(object_file_buffer)
        with open(name.getSaveFile(scenefolder=args["scenefolder"]),"w") as f:
            f.write(object_file_buffer)
        romreplacetext = name.getMakedFile(True,scenefolder=args["scenefolder"])
        
    if(parsetype == "HeaderMetatilemap"):
        if("scenefolder" not in args):
            args["scenefolder"]="UNKNOWNFOLDER/"
            
        width = rom.getByte(curpos)
        ymappad = rom.getWord(curpos+1)
        hstop = rom.getByte(curpos+3)
        vstop = rom.getByte(curpos+4)
        unc_size = rom.getWord(curpos+5)
        curpos += 7
        end,metatilemapname,real_size = ParseAssets(rom,curpos,"RLE_Metatilemap",name.getName(),{"scenefolder":args["scenefolder"]})
        real_size = real_size["size"]

        object_file_buffer = [
            "    db {: <10}; wTilemap_Width".format(width),
            "    dw ${:04X}     ; wTilemap_YMapPad".format(ymappad),
            "    db {: <10};".format(hstop),
            "    db {: <10}; wTilemap_VStop".format(vstop),
        ]
        object_file_buffer.append("    dw ${:04X}     ; Uncompressed file size (excluding header)".format(unc_size))
        if(unc_size != real_size):
            object_file_buffer.append("    ; The imported file size was actually ${:04X} because 7 extra (unused) $00 bytes (equal to the size of the header) were appended to the end in error".format(real_size))
        object_file_buffer.append(metatilemapname.getMakedFile(True,scenefolder=args["scenefolder"]))
        
        object_file_buffer = '\n'.join(object_file_buffer)
        with open(name.getSaveFile(scenefolder=args["scenefolder"]),"w") as f:
            f.write(object_file_buffer)
        romreplacetext = name.getMakedFile(True,scenefolder=args["scenefolder"])

    if(parsetype == "HeaderTileset"):
        assert rlemode == False
        
        object_file_buffer = []
        
        for j in range(2):
            outdata[j] = []
            entrysize = rom.getByte(curpos)
            object_file_buffer.append("    db {: <10};VRAM{} entries".format(entrysize,j))
            object_file_buffer.append("")
            object_file_buffer.append("    ; Destination, Source, Width, Height")
            curpos += 1
            for i in range(entrysize):
                destadr = rom.getWord(curpos)
                sourceadr = rom.getWord(curpos+2)
                width = rom.getByte(curpos+4)
                height = rom.getByte(curpos+5)
                sourcebank = rom.getByte(curpos+6)
                sourcelabel = ParseAssets(rom,utils.BankAddress(sourcebank,sourceadr),"Tileset","{}",{"size":width*height*16,"pixelwidth":width*8,"parentname":name.getName()})
                curpos += 7
                object_file_buffer.append("        LoadBitmap {},{},{},{}".format(utils.AsmWords(destadr,0),sourcelabel[1].getLabelName(False),utils.AsmBytes(width,0),utils.AsmBytes(height,0)))
                outdata[j].append((sourcelabel,destadr,utils.BankAddress(sourcebank,sourceadr)))
            if(j==0):
                object_file_buffer.append("")
        object_file_buffer = '\n'.join(object_file_buffer)
        with open(name.getSaveFile(),"w") as f:
            f.write(object_file_buffer)
        romreplacetext = name.getMakedFile(True)
        end = curpos
    
    if(parsetype == "Scene"):
        assert rlemode == False
        
        scenefolder = scenefolders[start.getPos()]
        
        scene_addresses = [rom.getAddressBank(curpos+i*3) for i in range(5)]
    
        labels = []
        labels.append(ParseAssets(rom,scene_addresses[0],"Palette","{}",{"size":64}))
        labels.append(ParseAssets(rom,scene_addresses[1],"HeaderTileset","{}"))
        labels.append(ParseAssets(rom,scene_addresses[2],"RLE_Pattern","{}"))
        labels.append(ParseAssets(rom,scene_addresses[3],"HeaderMetatilemap","{}",{"scenefolder":scenefolder}))
        labels.append(ParseAssets(rom,scene_addresses[4],"HeaderCollisionmap","{}",{"scenefolder":scenefolder}))
        object_file_buffer = "\n".join(["    AddressBank {}".format(i[1].getLabelName(False)) for i in labels])
        
        romreplacetext = name.getMakedFile(True,scenefolder=scenefolder)

        with open(name.getSaveFile(scenefolder=scenefolder),"w") as f:
            f.write(object_file_buffer)
        
        # Colorize tilesets
        tilemap = labels[2][1].getSaveFile()+".tilemap"
        attrmap = labels[2][1].getSaveFile()+".attrmap"
        for i in range(2):
            vbk = i
            tslist = labels[1][2][i]
            for ts in tslist:
                imagefile = ts[0][1].getSaveFile()
                imagefile = imagefile[:-12]+"_({})".format(labels[1][1].getName())+".tileset.png"
                tilesetaddress = ts[1]
                if(tilesetaddress < 0x8800):
                    pal = c.projfiles + "AllSprites.pal.png"
                else:
                    pal = labels[0][1].getSaveFile()
                colorize.colorTileset(imagefile,tilemap,attrmap,vbk,tilesetaddress,pal,paletteoffset=0,addgreyscale=True,defaultpalette=0)
        
        if(start.getPos() not in validscene):
            validscene[start.getPos()] = start
        if(scene_addresses[0].getPos() not in validpal):
            validpal[scene_addresses[0].getPos()] = scene_addresses[0]
        if(scene_addresses[1].getPos() not in validhts):
            validhts[scene_addresses[1].getPos()] = scene_addresses[1]
        if(scene_addresses[2].getPos() not in validmtd):
            validmtd[scene_addresses[2].getPos()] = scene_addresses[2]
        if(scene_addresses[3].getPos() not in validhmtm):
            validhmtm[scene_addresses[3].getPos()] = scene_addresses[3]
        if(scene_addresses[4].getPos() not in validhmcm):
            validhmcm[scene_addresses[4].getPos()] = scene_addresses[4]
        headercolllist.append([start.getPos(),scene_addresses[4].getPos(),name.getName()])
        headerpatternlist.append([start.getPos(),scene_addresses[2].getPos(),name.getName()])
        headermetatilelist.append([start.getPos(),scene_addresses[3].getPos(),name.getName()])
        headerbitmapsetlist.append([start.getPos(),scene_addresses[1].getPos(),name.getName(),labels[2][1].getName()])
        for i in range(2):
            for ts in labels[1][2][i]:
                if(ts[2].getPos() not in validts):
                    validts[ts[2].getPos()] = ts[2]

        end = curpos + 3*5
        
        if(scene_addresses[2].getPos() == 0x185FF5): #pattern Arderial_Buildings_Outside
            arderial_pattern = labels[2]
            arderial_palette = labels[0]
        
        #mark valid entries

    time.sleep(0.01) #sometimes there's file opening conflicts
    if("force_romreplace" in args and args["force_romreplace"]==True):
        skipreplace = False
    if(not(skipreplace)):
        if not(start.getPos() in already_replaced):
            already_replaced.append(start.getPos())
            if("scenefolder" not in args):
                args["scenefolder"]=""
            #replace_rom_text.replace_rom_text(start,end,name.getLabelName(True),romreplacetext)
            addToYukList(name,start,end,args["scenefolder"])
    time.sleep(0.01) #sometimes there's file opening conflicts
    return end,name,outdata
        
def pointerlistGenerate(varname, filename):
    with open(c.outdir + filename + ".txt","w") as f:
        f.write('\n'.join([str(a)[:7] for a in varname.values()]))
        f.write('\n')
        f.write('\n')
        f.write('\n')
        f.write('\n'.join(["{:06X}".format(a) for a in varname.keys()]))
    return
def autoNameGenerate(varname, filename):
    with open(c.outdir + filename + ".txt","w") as f:
        f.write('\n'.join(['        0x{:06X}:"{}",'.format(a[1],a[2]) for a in varname]))
def autoNameGenerateBitmap(varname, filename):
    with open(c.outdir + filename + ".txt","w") as f:
        f.write('\n'.join(['        0x{:06X}:"{}", #{}'.format(a[1],a[3],a[2]) for a in varname]))
    
def addToYukList(name,start,end,scenefolder):
    yuklist[start.getPos()]=[start,end,name.getLabelName(False),name.getMakedFile(False,scenefolder=scenefolder)]


def writeYukList():
    newlist = sorted(yuklist.values(), key=lambda x:x[0].getPos())
    curbank = 0x00
    curaddress = 0x8000
    bankdata = []
    for item in newlist:
        bank = item[0].getBank()
        addressstart = item[0].getAddress()
        addressend = item[1].getAddress(end=True)
        
        assert bank >= curbank
        if(bank > curbank):
            if(curaddress != 0x8000):
                bankdata[-1].append([utils.BankAddress(curbank,curaddress),utils.BankAddress(curbank,0x8000),"UNKNOWN"])
            curaddress = 0x4000
            curbank = bank
            bankdata.append([])
            
        assert addressstart >= curaddress
        if(addressstart > curaddress):
            bankdata[-1].append([utils.BankAddress(curbank,curaddress),utils.BankAddress(curbank,addressstart),"UNKNOWN"])
            curaddress = addressstart
        
        bankdata[-1].append(item)
        curaddress = addressend
        
        #Finish last bank
    if(curaddress != 0x8000):
        bankdata[-1].append([utils.BankAddress(curbank,curaddress),utils.BankAddress(curbank,0x8000),"UNKNOWN"])
    
    writelines = []
            
    with open(c.outdir + "yuklist.txt","w") as f:
        f.write("START-END - STARTPOS - SIZE - NAME\n\n")
        for bank in bankdata:
            f.write("BANK {:02X}".format(bank[0][0].getBank())+"\n\n")
            f.write('\n'.join(["{:04X}-{:04X} - {:06X} - {:04X} - {}".format(item[0].getAddress(),item[1].getAddress(end=True),item[0].getPos(),item[1].getPos()-item[0].getPos(),item[2]) for item in bank]))
            f.write("\n\n")

def writeYukConfig():
    newlist = sorted(yuklist.values(), key=lambda x:x[0].getPos())
    with open(c.outdir + "autopack.config","w") as f:
        f.write("STARTBANK=$50\nENDBANK=$80\n")
        for item in newlist:
            f.write("{:04X},{},{}\n".format(item[1].getPos()-item[0].getPos(),item[2],item[3]))
        
       
rom = utils.Rom(c.projfiles+"MN.gbc")

# Iterate over all the scenes, which covers about 1100/1170 of all the assets
nameoverride = False
print("SCENEASSETS")
for x in range(utils.BankAddress(0x4F,0x4000).getPos(),utils.BankAddress(0x4F,0x559F).getPos(),15):
    print(utils.BankAddress(x))
    ParseAssets(rom,utils.BankAddress(x),"Scene","{}")

# Parse extra assets not directly referenced in the loading of scene data:
nameoverride = True
straggler_assets = [
    

    [0x143FE0,0x0020,"Tileset","Underneath_Geyser_NewMoonBlockPressed",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x147FEB,0x0015,"HeaderMetatilemap","INDIRECT_Naroom_Vash_Southeast_CurioDoorMask"],
    [0x15E800,0x0800,"Tileset","INDIRECT_UNKNOWN1",{"size":0x0800,"pixelwidth":128,"parentname":"UNKNOWN"}],
    [0x187FA8,0x0058,"HeaderMetatilemap","INDIRECT_UNKNOWN4"],
    [0x193FFC,0x0004,"HeaderCollisionmap","INDIRECT_Misc_Null"], # This is not an assets. But we need to fill it with something to squeeze in the ghost at 0x1D3FFC
    [0x1963E0,0x070D,"HeaderMetatilemap","INDIRECT_Cald_Geyser_PuzzlesA_Mask"],
    [0x197FE9,0x0016,"HeaderMetatilemap","INDIRECT_Naroom_Vash_South_AgovoDoorMask"],
    [0x1A4000,0x05A4,"RLE_Pattern","INDIRECT_UNKNOWN5"],
    [0x1A7AD0,0x0504,"HeaderCollisionmap","INDIRECT_Cald_Geyser_PuzzlesA_Mask"],
    [0x1B107F,0x0415,"HeaderMetatilemap","INDIRECT_Cald_Geyser_PuzzlesB_Mask"],
    [0x1B6EBF,0x03C6,"HeaderCollisionmap","INDIRECT_Cald_Geyser_PuzzlesB_Mask"],
    [0x1C9A2A,0x028F,"HeaderMetatilemap","INDIRECT_UNKNOWN_SUSPECTED_Arderial_Geyser_Pipes2_Entrance_Mask"],
    [0x1CC26E,0x026D,"HeaderMetatilemap","INDIRECT_UNKNOWN_SUSPECTED_Arderial_Geyser_Pipes2_PipeAnalysis_Mask"],
    [0x1CDC69,0x024C,"HeaderMetatilemap","INDIRECT_UNKNOWN_SUSPECTED_Cald_Ashyn_NorthGeyser_Mask"],
    [0x1CDEB5,0x024B,"HeaderMetatilemap","INDIRECT_UNKNOWN_COULDBE_Naroom_Forest_Exit_Mask"],
    [0x1CEE98,0x023D,"HeaderMetatilemap","INDIRECT_UNKNOWN_COULDBE_Underneath_Geyser_CavedIn"],
    [0x1D2D57,0x0200,"Tileset","INDIRECT_UNKNOWN6",{"size":0x0200,"pixelwidth":128,"parentname":"ARDERIALPARENT"}], #Possibly 64 width? To verify
    [0x1D3FFC,0x0004,"RLE_Collisionmap","INDIRECT_HEADERLESS_UNKNOWN_01",{"force_romreplace":True}], #Looks like an empty collisionmap without a header of uncompressed size 0x0068; Suspected ghost of Collmap_Underneath_Tunnels_IntersectionFort (last 4 bytes)
    [0x1D888C,0x01B0,"HeaderMetatilemap","INDIRECT_UNKNOWN7"],
    [0x1DA2A2,0x0193,"HeaderMetatilemap","INDIRECT_UNKNOWN8"],
    [0x1DB6B1,0x0182,"HeaderMetatilemap","INDIRECT_UNKNOWN9"],
    [0x1E08B3,0x0139,"HeaderMetatilemap","INDIRECT_UNKNOWN_10"],
    [0x1E0D8F,0x0134,"HeaderCollisionmap","INDIRECT_UNKNOWN_11"],
    [0x1E30F0,0x0116,"HeaderMetatilemap","INDIRECT_UNKNOWN_12"],
    [0x1E3206,0x0115,"HeaderMetatilemap","INDIRECT_UNKNOWN_13"],
    [0x1E331B,0x0114,"HeaderMetatilemap","INDIRECT_UNKNOWN_14"],
    [0x1E3976,0x0107,"HeaderMetatilemap","INDIRECT_UNKNOWN_15"],
    [0x1E3F98,0x0068,"HeaderMetatilemap","INDIRECT_UNKNOWN_16"],
    [0x1E490B,0x00FE,"HeaderCollisionmap","INDIRECT_UNKNOWN_17"],
    [0x1E739A,0x00DE,"HeaderCollisionmap","INDIRECT_UNKNOWN_18"],
    [0x1E8E07,0x00C1,"HeaderCollisionmap","INDIRECT_UNKNOWN_19"],
    [0x1E8EC8,0x00C0,"Tileset","INDIRECT_UNKNOWN_20",{"size":0x00C0,"pixelwidth":96,"parentname":"UNKNOWNPARENT"}], #UNKNOWN WIDTH
    [0x1E9618,0x00B7,"HeaderCollisionmap","INDIRECT_UNKNOWN_20"],
    [0x1E9785,0x00B3,"HeaderMetatilemap","INDIRECT_UNKNOWN_21"],
    [0x1E9DBA,0x00AC,"HeaderMetatilemap","INDIRECT_UNKNOWN_22"],
    [0x1E9F12,0x00AA,"HeaderMetatilemap","INDIRECT_UNKNOWN_23"],
    [0x1EA45C,0x00A8,"HeaderMetatilemap","INDIRECT_UNKNOWN_24"],
    [0x1EA987,0x00A2,"HeaderMetatilemap","INDIRECT_UNKNOWN_25"],
    [0x1EB1A0,0x009D,"HeaderCollisionmap","INDIRECT_UNKNOWN_26"],
    [0x1EB84A,0x0098,"HeaderMetatilemap","INDIRECT_UNKNOWN_27"],
    [0x1EB97A,0x0096,"HeaderCollisionmap","INDIRECT_UNKNOWN_29"],
    [0x1EBA10,0x0096,"HeaderMetatilemap","INDIRECT_UNKNOWN_29"],
    [0x1EBBD2,0x0096,"HeaderCollisionmap","INDIRECT_UNKNOWN_30"],
    [0x1EBFD8,0x0028,"HeaderMetatilemap","INDIRECT_UNKNOWN_31"],
    [0x1EC361,0x008F,"HeaderMetatilemap","INDIRECT_UNKNOWN_32"],
    [0x1EC7CC,0x008C,"HeaderMetatilemap","INDIRECT_UNKNOWN_33"],
    [0x1EC96E,0x008A,"HeaderMetatilemap","INDIRECT_UNKNOWN_34"],
    [0x1EC9F8,0x008A,"HeaderMetatilemap","INDIRECT_UNKNOWN_35"],
    [0x1ECCA8,0x0089,"HeaderCollisionmap","INDIRECT_UNKNOWN_36"],
    [0x1EDA09,0x007F,"HeaderCollisionmap","INDIRECT_UNKNOWN_37"],
    [0x1EE389,0x0075,"HeaderCollisionmap","INDIRECT_UNKNOWN_38"],
    [0x1EE3FE,0x0075,"HeaderCollisionmap","INDIRECT_UNKNOWN_39"],
    [0x1EEF2B,0x0067,"HeaderCollisionmap","INDIRECT_UNKNOWN_40"],
    [0x1EF8D5,0x005A,"HeaderCollisionmap","INDIRECT_UNKNOWN_41"],
    [0x1EFF78,0x004D,"HeaderMetatilemap","INDIRECT_UNKNOWN_42"],
    [0x1F004B,0x004A,"HeaderMetatilemap","INDIRECT_UNKNOWN_43"],
    [0x1F05F6,0x0042,"HeaderCollisionmap","INDIRECT_UNKNOWN_44"],
    
    [0x1F0A7C,0x0040,"Palette","INDIRECT_UNKNOWN_60",{"size":64}],
    [0x1F0E3C,0x0040,"Palette","INDIRECT_Core_End_Pathway_AliveStatuesFade",{"size":64}],
    [0x1F113C,0x0040,"Palette","INDIRECT_UNKNOWN_62",{"size":64}],
    [0x1F127C,0x0040,"HeaderCollisionmap","INDIRECT_UNKNOWN_45"],
    [0x1F13BC,0x0040,"Tileset","Underneath_Geyser_WaneMoonButtonPressed",{"size":0x0040,"pixelwidth":32,"parentname":"Misc_Geyser"}],
    [0x1F13FC,0x0040,"Tileset","Underneath_Geyser_WaxMoonButtonPressed",{"size":0x0040,"pixelwidth":32,"parentname":"Misc_Geyser"}],
    [0x1F14FC,0x0040,"Tileset","INDIRECT_UNKNOWN_55",{"size":0x0040,"pixelwidth":16,"parentname":"UNKNOWN"}],
    [0x1F16BC,0x0040,"Tileset","Underneath_Geyser_WaxMoonBlockPressed",{"size":0x0040,"pixelwidth":32,"parentname":"Misc_Geyser"}],
    [0x1F193C,0x0040,"Tileset","Underneath_Geyser_WaneMoonBlockPressed",{"size":0x0040,"pixelwidth":32,"parentname":"Misc_Geyser"}],
    
    [0x1F1DE8,0x0035,"HeaderCollisionmap","INDIRECT_UNKNOWN_46"],
    [0x1F1E51,0x0034,"HeaderCollisionmap","INDIRECT_UNKNOWN_47"],
    [0x1F1F21,0x0034,"HeaderCollisionmap","INDIRECT_UNKNOWN_48"],
    [0x1F21A1,0x002D,"HeaderMetatilemap","INDIRECT_UNKNOWN_49"],
    [0x1F25EF,0x002B,"HeaderCollisionmap","INDIRECT_UNKNOWN_50"],
    [0x1F266F,0x0029,"HeaderMetatilemap","INDIRECT_UNKNOWN_51"],
    
    [0x1F295A,0x0025,"HeaderTileset","INDIRECT_VRAM"], #VRAM
        # Related tilesets that will be generated automatically
        #[0x170800,0x0800,"Tileset","INDIRECT_UNKNOWN2",{"size":0x0800,"pixelwidth":128,"parentname":"UNKNOWN"}],
        #[0x173000,0x0800,"Tileset","INDIRECT_UNKNOWN3",{"size":0x0800,"pixelwidth":128,"parentname":"UNKNOWN"}],
        #[0x1B30AF,0x0400,"Tileset","INDIRECT_UNKNOWN_ARDERIAL1",{"size":0x0400,"pixelwidth":128,"parentname":"ARDERIALPARENT"}],
        #[0x1D2757,0x0200,"Tileset","INDIRECT_UNKNOWN_ARDERIAL2",{"size":0x0200,"pixelwidth":128,"parentname":"ARDERIALPARENT"}],
    
    [0x1F2A2B,0x0020,"Tileset","Underneath_Geyser_FullMoonBlockPressed",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x1F2B6B,0x0020,"Tileset","Underneath_Geyser_NewMoonButtonPressed",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x1F2B8B,0x0020,"Tileset","Underneath_Geyser_FullMoonButtonPressed",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    
    [0x1F2C0B,0x001F,"HeaderCollisionmap","INDIRECT_UNKNOWN_52"],
    [0x1F2D1A,0x001D,"HeaderMetatilemap","INDIRECT_UNKNOWN_53"],
    [0x1F2D37,0x001A,"HeaderCollisionmap","INDIRECT_UNKNOWN_54"],
    [0x1F2D51,0x001A,"HeaderCollisionmap","INDIRECT_UNKNOWN_55"],
    [0x1F2D6B,0x001A,"HeaderCollisionmap","INDIRECT_UNKNOWN_56"],
    [0x1F2D85,0x0018,"HeaderCollisionmap","INDIRECT_UNKNOWN_57"],
    [0x1F2D9D,0x0010,"HeaderCollisionmap","INDIRECT_UNKNOWN_58"],
    [0x1F2DAD,0x000F,"HeaderCollisionmap","INDIRECT_UNKNOWN_59"],
]
print("STRAGGLERASSETS")
for asset in straggler_assets:
    print(utils.BankAddress(asset[0]))
    if(len(asset)>4):
        ParseAssets(rom,utils.BankAddress(asset[0]),asset[2],asset[3],asset[4])
    else:
        ParseAssets(rom,utils.BankAddress(asset[0]),asset[2],asset[3])
        

# Generate debug info
pointerlistGenerate(validscene,"scenes")
pointerlistGenerate(validpal,"palettes")
pointerlistGenerate(validhts,"headertileset")
pointerlistGenerate(validmtd,"pattern")
pointerlistGenerate(validhmtm,"headermetatilemap")
pointerlistGenerate(validhmcm,"headercollision")
pointerlistGenerate(validts,"tileset")
autoNameGenerate(headercolllist,"HeaderCollList")
autoNameGenerate(headerpatternlist,"HeaderPatternList")
autoNameGenerate(headermetatilelist,"HeaderMetatilemapList")
autoNameGenerateBitmap(headerbitmapsetlist,"BitmapSetList")

writeYukList()
writeYukConfig()

# After writing the pointer lists and yuklist, decode the ghost data
# The ghost data is identical to the yuklist, except where there are comments
nameoverride = True
ghost_assets = [
    [0x1F2DF1,0x0020,"RLE_Collisionmap","Ghost_Core_Shadowhold_Marina_Pathway",{"force_romreplace":True}], #$0023 IN SIZE but first 3 bytes cut off
    [0x1F2E11,0x0022,"HeaderCollisionmap","Ghost_Misc_StartScreen"],
    [0x1F2E33,0x0022,"HeaderCollisionmap","Ghost_Orothe_Dock_Eastern_Ferry"],
    [0x1F2E55,0x0022,"HeaderCollisionmap","Ghost_Orothe_Dock_Western_Ferry"],
    [0x1F2E77,0x0020,"Tileset","Ghost_Underneath_Geyser_FullMoonBlockPressed",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x1F2E97,0x0020,"Tileset","Ghost_Underneath_Geyser_FullMoonBlock",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x1F2EB7,0x0020,"Tileset","Ghost_Underneath_Geyser_NewMoonBlock",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x1F2ED7,0x0020,"Tileset","Ghost_Orothe_Geyser_EmptyChest",{"size":0x0020,"pixelwidth":16,"parentname":"Orothe_Geyser_Outdoors"}],
    [0x1F2EF7,0x0020,"Tileset","Ghost_Orothe_Geyser_FullChest",{"size":0x0020,"pixelwidth":16,"parentname":"Orothe_Geyser_Outdoors"}],
    [0x1F2F17,0x0020,"Tileset","Ghost_Cald_Vents_Block",{"size":0x0020,"pixelwidth":16,"parentname":"Cald_Vents"}],
    [0x1F2F37,0x0020,"Tileset","Ghost_Cald_Vents_FullChest",{"size":0x0020,"pixelwidth":16,"parentname":"Cald_Vents"}],
    [0x1F2F57,0x0020,"Tileset","Ghost_Cald_Vents_EmptyChest",{"size":0x0020,"pixelwidth":16,"parentname":"Cald_Vents"}],
    [0x1F2F77,0x0020,"Tileset","Ghost_Underneath_Geyser_NewMoonButton",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x1F2F97,0x0020,"Tileset","Ghost_Underneath_Geyser_FullMoonButton",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x1F2FB7,0x0020,"Tileset","Ghost_Underneath_Geyser_NewMoonButtonPressed",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x1F2FD7,0x0020,"Tileset","Ghost_Underneath_Geyser_FullMoonButtonPressed",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x1F2FF7,0x0020,"Tileset","Ghost_Naroom_Geyser_FullChest",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x1F3017,0x0020,"Tileset","Ghost_Naroom_Geyser_EmptyChest",{"size":0x0020,"pixelwidth":16,"parentname":"Misc_Geyser"}],
    [0x1F3037,0x0020,"Tileset","Ghost_Naroom_Vash_PipesRoom_Unknown",{"size":0x0020,"pixelwidth":16,"parentname":"Naroom_Vash_PipesRoom"}],
    [0x1F3057,0x001F,"HeaderCollisionmap","Ghost_INDIRECT_UNKNOWN_52"],
    [0x1F3076,0x001E,"HeaderTileset","Ghost_SIZE1EBITMAPSETTOVERIFY_01"],
    [0x1F3094,0x001E,"HeaderTileset","Ghost_SIZE1EBITMAPSETTOVERIFY_02"],
    [0x1F30B2,0x001E,"HeaderTileset","Ghost_SIZE1EBITMAPSETTOVERIFY_03"],
    [0x1F30D0,0x001E,"HeaderCollisionmap","Ghost_Core_Shadowhold_Marina_Jump"],
    [0x1F30EE,0x001E,"HeaderTileset","Ghost_SIZE1EBITMAPSETTOVERIFY_04"],  #HeaderTilesets point to slightly different addresses due to changes in pointer location
    [0x1F310C,0x001E,"HeaderTileset","Ghost_SIZE1EBITMAPSETTOVERIFY_05"],  #check order of HeaderTilesets
    [0x1F312A,0x001E,"HeaderTileset","Ghost_SIZE1EBITMAPSETTOVERIFY_06"],
    [0x1F3148,0x001E,"HeaderTileset","Ghost_SIZE1EBITMAPSETTOVERIFY_07"],
    [0x1F3166,0x001D,"HeaderMetatilemap","Ghost_INDIRECT_UNKNOWN_53"],
    [0x1F3183,0x001A,"HeaderCollisionmap","Ghost_INDIRECT_UNKNOWN_55"], #Order swap: second one in original
    [0x1F319D,0x001A,"HeaderCollisionmap","Ghost_INDIRECT_UNKNOWN_56"], #            third one in original
    [0x1F31B7,0x001A,"HeaderCollisionmap","Ghost_INDIRECT_UNKNOWN_54"], #            first one in original
    [0x1F31D1,0x0018,"HeaderCollisionmap","Ghost_INDIRECT_UNKNOWN_57"],
    [0x1F31E9,0x0010,"HeaderCollisionmap","Ghost_INDIRECT_UNKNOWN_58"],
    [0x1F31F9,0x000F,"HeaderCollisionmap","Ghost_INDIRECT_UNKNOWN_59"],
    [0x1F3208,0x000E,"HeaderCollisionmap","Ghost_Orothe_Dock_Eastern_Empty"],
    [0x1F3216,0x000E,"HeaderCollisionmap","Ghost_Orothe_Dock_Western_Empty"],
    [0x1F3224,0x000B,"HeaderMetatilemap","Ghost_Orothe_Ocean_Raft"],
    [0x1F322F,0x0007,"HeaderCollisionmap","Ghost_Arderial_Geyser_HorizontalPipe_Unused"], #different order
    [0x1F3236,0x0007,"HeaderCollisionmap","Ghost_Orothe_Ocean_Raft"], #Order swap: second one in original
    [0x1F323D,0x0007,"HeaderCollisionmap","Ghost_Orothe_Ocean_Ferry"], #           first one in original
]

print("GHOSTASSETS")
for asset in ghost_assets:
    print(utils.BankAddress(asset[0]))
    if(len(asset)>4):
        ParseAssets(rom,utils.BankAddress(asset[0]),asset[2],asset[3],asset[4])
    else:
        ParseAssets(rom,utils.BankAddress(asset[0]),asset[2],asset[3])
        
# Load the pattern and palette from Arderial_Palace_Outside as reference
#ParseAssets(rom,u.BankAddress(0x13D0A4),"Scene","{}") #"Arderial_Palace_Outside"
#arderial_pattern = ParseAssets(rom,u.BankAddress(0x1A4000),"RLE_Pattern","{}") #"Unlabelled pattern"
#arderial_palette = ParseAssets(rom,u.BankAddress(0x1F113C),"Palette","{}",{"size":64}) #"Unlabelled palette"
#0x1F0A7C
#0x1F0E3C
#0x1F113C
#arderial_special_headertileset = ParseAssets(rom,u.BankAddress(0x1F295A),"HeaderTileset","{}")
#geyser_special_headertileset = ParseAssets(rom,u.BankAddress(0x1F3076),"HeaderTileset","{}")
#
# Colorize this tileset using pattern Arderial_Buildings_Outside
#tilemap = arderial_pattern[1].getSaveFile()+".tilemap"
#attrmap = arderial_pattern[1].getSaveFile()+".attrmap"
#for i in range(2):
#    vbk = i
#    tslist = arderial_special_headertileset[2][i]
#    for ts in tslist:
#        imagefile = ts[0][1].getSaveFile()
#        imagefile = imagefile[:-12]+"_({})".format(arderial_special_headertileset[1].getName())+".tileset.png"
#        tilesetaddress = ts[1]
#        if(tilesetaddress < 0x8800):
#            pal = c.projfiles + "AllSprites.pal.png"
#        else:
#            pal = arderial_palette[1].getSaveFile()
#        colorize.colorTileset(imagefile,tilemap,attrmap,vbk,tilesetaddress,pal,paletteoffset=0,addgreyscale=True,defaultpalette=0)
