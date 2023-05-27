import sys, os, re
sys.path.append('python/')
sys.path.append('../')

import projutils.utils as utils
import projutils.replace_rom_text as replace_rom_text
import projutils.color as color
import projutils.tileset as tileset
import projutils.metatiledef as metatiledef
import projutils.rle as rle
import projutils.colorize as colorize
import projutils.config as c


import traceback,time

indexcount = {}
validhsd = {}
validpal = {}
validhts = {}
validmtd = {}
validhmtm = {}
validhmcm = {}
validts = {}


parsenames = {
    'PALETTE':{
        #"First",
        #"Second",
    }, #for example
    'HeaderSceneData':{
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
        0x13C276:"Special_Debug",
        0x13C285:"Naroom_Vash_BottomStairs",
        0x13C294:"Naroom_Vash_South",
        0x13C2A3:"Naroom_Vash_South_AgovoRoom",
        0x13C2B2:"Challenge_Agovo",
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
        0x13C438:"Challenge_Archery",
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
        0x13C4DD:"Challenge_Whackamole",
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
        0x13CB31:"Core_End_Agram_Agram",
        0x13CB40:"Core_End_Entrance_Entrance",
        0x13CB4F:"Core_End_Pathway_Pathway",
        0x13CB5E:"Core_End_Room_Room",
        0x13CB6D:"Core_End_Field_Field",
        0x13CB7C:"Core_End_Antechamber_Antechamber",
        0x13CB8B:"Core_End_Bridge_Bridge",
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
        0x13CCA8:"Special_StartScreen",
        0x13CCB7:"Special_StartScreen_Pathway",
        0x13CCC6:"Special_StartScreen_Jukebox",
        0x13CCD5:"Special_Tavel_Outside",
        0x13CCE4:"Special_Tavel_Entrance",
        0x13CCF3:"Special_Tavel_Maze",
        0x13CD02:"Special_Tavel_Crystal",
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
        0x13CF1E:"Orothe_Geyser_Outside",
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
        }
}



        
class GetParseName:
    savefile = {
        "PALETTE":".pal.png",
        "TILESET":".tileset.png",
        "METATILEDEF":".mtiledef", #.tilemap/.attrmap
        "METATILEMAP":".mtilemap.tilemap",
        "METACOLLISIONMAP":".mcollisionmap.tilemap",
        "HeaderMetatilemap":".hmtm.mop",
        "HeaderMetacollisionmap":".hmcm.mop",
        "HeaderTileset":".hts.mop",
        "Scene":".hsd.mop",
        }
    makedfile = {
        "PALETTE":".pal",
        "TILESET":".tileset",
        "METATILEDEF":".mtiledef",
        "METATILEMAP":".mtilemap.tilemap",
        "METACOLLISIONMAP":".mcollisionmap.tilemap",
        "HeaderMetatilemap":"hmtm.asm",
        "HeaderMetacollisionmap":".hmcm.asm",
        "HeaderTileset":".hts.asm",
        "Scene":".hsd.asm",
        }
    includetype = {
        "PALETTE":'    INCBIN "{}"',
        "TILESET":'    INCBIN "{}"',
        "METATILEDEF":'    INCBIN "{}"', #Pattern
        "METATILEMAP":'    INCBIN "{}"',
        "METACOLLISIONMAP":'    INCBIN "{}"',
        "HeaderMetatilemap":'    INCLUDE "{}"',
        "HeaderMetacollisionmap":'    INCLUDE "{}"',
        "HeaderTileset":'    INCLUDE "{}"',
        "Scene":'    INCLUDE "{}"',
        }
    labelname = {
        "PALETTE":"p",
        "TILESET":"ts",
        "METATILEDEF":"mtd",
        "METATILEMAP":"mtm", #Should be unused except for RLE debugging
        "METACOLLISIONMAP":".mcm", #Should be unused except for RLE debugging
        "HeaderMetatilemap":"hmtm",
        "HeaderMetacollisionmap":"hmcm",
        "HeaderTileset":"hts",
        "Scene":"Scene_",
        }
    def GetBaseName(self):
        if(self.parsetype in indexcount):
            indexcount[self.parsetype] += 1
        else:
            indexcount[self.parsetype] = 0
        try:
            name = self.rawname.format(parsenames[self.parsetype][self.address.getPos()])
        except (KeyError, IndexError):
            regex = r'\{[^}]*\}'
            self.rawname = re.sub(regex,'{:04X}',self.rawname)
            name = self.rawname.format(indexcount[self.parsetype])
            name = "{:06X}_".format(self.address.getPos()) + name
            pass
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
    def getSaveFile(self):
        # Where to save the extracted file
        return c.outdir + self.name + self.rlename + GetParseName.savefile[self.parsetype]
    def getMakedFile(self,include):
        # The name of the file to be included that is generated from the extracted file
        # if include = True, will add INCBIN or INCLUDE
        base = c.outdir + self.name + GetParseName.makedfile[self.parsetype] + (".rle" if self.rlename else "")
        if(include):
            return GetParseName.includetype[self.parsetype].format(base)
        return base
    def getLabelName(self,includecolon):
        return GetParseName.labelname[self.parsetype] + self.name + ("RLE" if self.rlename else "") + ("::" if includecolon else "")

def ParseAssets(rom,bankaddress,parsetype,name,args={}):
    assert isinstance(rom,utils.Rom)
    assert isinstance(bankaddress,utils.BankAddress)
    
    replace_rom_text.reset_files([bankaddress.getBank()])
    name = GetParseName(parsetype,name,bankaddress)
    
    #Required:
    #   start defined
    #   end defined
    #   contents defined
    
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
        
    if(parsetype == "PALETTE"):
        assert rlemode == False
        size = args["size"]
        
        contents = name.getMakedFile(True)
        data = rom.getRawSection(curpos,size)
        color.data_to_png(name.getSaveFile(),data)
        
        end = curpos + size

    if(parsetype == "TILESET"):
        size = args["size"]
        width = args["pixelwidth"]
        
        contents = name.getMakedFile(True)
        if(rlemode):
            tileset.data_to_png(name.getSaveFile(),data,width)
        else:
            data = rom.getRawSection(curpos,size)
            tileset.data_to_png(name.getSaveFile(),data,width)
            end = curpos + size
        
    if(parsetype == "METATILEDEF"):
        assert rlemode == True
        
        contents = name.getMakedFile(True)
        metatiledef.data_to_file(name.getSaveFile(),data)
        
    if(parsetype == "METATILEMAP"):
        assert rlemode == True
        skipreplace = True
        if(args["assertsize"] != len(data)):
            print("Metatilemap assertsize mismatch: {}, {}".format(args["assertsize"],len(data)))
        with open(name.getSaveFile(),"wb") as f:
            f.write(data)
            
    if(parsetype == "METACOLLISIONMAP"):
        assert rlemode == True
        skipreplace = True
        if(args["assertsize"] != len(data)):
            print("Metacollisionmap assertsize mismatch: {}, {}".format(args["assertsize"],len(data)))
        with open(name.getSaveFile(),"wb") as f:
            f.write(data)
        
    if(parsetype == "HeaderMetacollisionmap"):
        width = rom.getByte(curpos)
        unc_size = rom.getWord(curpos+1)
        curpos += 3
        end,metacollisionmapname,unused = ParseAssets(rom,curpos,"RLE_METACOLLISIONMAP",name.getName(),{"assertsize":unc_size})
        
        filecontents = [
            "    Align[${:02X}:${:04X}]".format(start.getBank(),start.getAddress()),
            "    HeaderMetacollisionmap({},{})".format(utils.AsmBytes(width,0),metacollisionmapname.getMakedFile(False)),
            ]
        filecontents = '\n'.join(filecontents)
        with open(name.getSaveFile(),"w") as f:
            f.write(filecontents)
        contents = name.getMakedFile(True)
        
    if(parsetype == "HeaderMetatilemap"):
        width = rom.getByte(curpos)
        wraparoundsouth = rom.getWord(curpos+1)
        widthborder = rom.getByte(curpos+3)
        unknownval = rom.getByte(curpos+4)
        unc_size = rom.getWord(curpos+5)
        curpos += 7
        end,metatilemapname,unused = ParseAssets(rom,curpos,"RLE_METATILEMAP",name.getName(),{"assertsize":unc_size})

        filecontents = [
            "    Align[${:02X}:${:04X}]".format(start.getBank(),start.getAddress()),
            "    HeaderMetatilemap({},{},{},{},{})".format(utils.AsmBytes(width,0),utils.AsmWords(wraparoundsouth,0),utils.AsmBytes(widthborder,0),utils.AsmBytes(unknownval,0),metatilemapname.getMakedFile(False)),
            ]
        filecontents = '\n'.join(filecontents)
        
        with open(name.getSaveFile(),"w") as f:
            f.write(filecontents)
        contents = name.getMakedFile(True)

    if(parsetype == "HeaderTileset"):
        assert rlemode == False
        filecontents = ["    Align[${:02X}:${:04X}]".format(curpos.getBank(),curpos.getAddress())]
        for j in range(2):
            outdata[j] = []
            filecontents.append("    HeaderTileset(){")
            entrysize = rom.getByte(curpos)
            curpos += 1
            for i in range(entrysize):
                destadr = rom.getWord(curpos)
                sourceadr = rom.getWord(curpos+2)
                width = rom.getByte(curpos+4)
                height = rom.getByte(curpos+5)
                sourcebank = rom.getByte(curpos+6)
                sourcelabel = ParseAssets(rom,utils.BankAddress(sourcebank,sourceadr),"TILESET",name.getName()+"_{}",{"size":width*height*16,"pixelwidth":width*8})
                curpos += 7
                filecontents.append("        HeaderTilesetEntry({},{},{},{})".format(utils.AsmWords(destadr,0),sourcelabel[1].getLabelName(False),utils.AsmBytes(width,0),utils.AsmBytes(height,0)))
                outdata[j].append((sourcelabel,destadr,utils.BankAddress(sourcebank,sourceadr)))
            filecontents.append("    }")
        filecontents = '\n'.join(filecontents)
        with open(name.getSaveFile(),"w") as f:
            f.write(filecontents)
        contents = name.getMakedFile(True)
        end = curpos
    
    if(parsetype == "Scene"):
        if(start.getPos() in validhsd):
            print("Skipping duplicate")
            return
        assert rlemode == False
        
        contentspointers = [rom.getAddressBank(curpos+i*3) for i in range(5)]
        labels = []
        labels.append(ParseAssets(rom,contentspointers[0],"PALETTE",name.getName(),{"size":64}))
        labels.append(ParseAssets(rom,contentspointers[1],"HeaderTileset",name.getName()))
        labels.append(ParseAssets(rom,contentspointers[2],"RLE_METATILEDEF",name.getName()))
        labels.append(ParseAssets(rom,contentspointers[3],"HeaderMetatilemap",name.getName()))
        labels.append(ParseAssets(rom,contentspointers[4],"HeaderMetacollisionmap",name.getName()))
        contents = "\n".join(["    AddressBank {}".format(i) for i in labels])
        
        filecontents = [
                "    Align[${:02X}:${:04X}]".format(curpos.getBank(),curpos.getAddress()),
                "    HeaderSceneData({},{},{},{},{})".format(*[label[1].getLabelName(False) for label in labels])
            ]
        filecontents = '\n'.join(filecontents)
        with open(name.getSaveFile(),"w") as f:
            f.write(filecontents)
        
        # Colorize tilesets
        tilemap = labels[2][1].getSaveFile()+".tilemap"
        attrmap = labels[2][1].getSaveFile()+".attrmap"
        for i in range(2):
            vbk = i
            tslist = labels[1][2][i]
            for ts in tslist:
                imagefile = ts[0][1].getSaveFile()
                tilesetaddress = ts[1]
                if(tilesetaddress < 0x8800):
                    pal = c.projfiles + "AllSprites.pal.png"
                else:
                    pal = labels[0][1].getSaveFile()
                colorize.colorTileset(imagefile,tilemap,attrmap,vbk,tilesetaddress,pal,paletteoffset=0,addgreyscale=True,defaultpalette=0)
        
        if(start.getPos() not in validhsd):
            validhsd[start.getPos()] = start
        if(contentspointers[0].getPos() not in validpal):
            validpal[contentspointers[0].getPos()] = contentspointers[0]
        if(contentspointers[1].getPos() not in validhts):
            validhts[contentspointers[1].getPos()] = contentspointers[1]
        if(contentspointers[2].getPos() not in validmtd):
            validmtd[contentspointers[2].getPos()] = contentspointers[2]
        if(contentspointers[3].getPos() not in validhmtm):
            validhmtm[contentspointers[3].getPos()] = contentspointers[3]
        if(contentspointers[4].getPos() not in validhmcm):
            validhmcm[contentspointers[4].getPos()] = contentspointers[4]
        for i in range(2):
            for ts in labels[1][2][i]:
                if(ts[2].getPos() not in validts):
                    validts[ts[2].getPos()] = ts[2]

        end = curpos + 3*5
        
        #mark valid entries

    time.sleep(0.025) #sometimes there's file opening conflicts
    if(not(skipreplace)):
        pass #replace_rom_text.replace_rom_text(start,end,name.getLabelName(True),contents)
    time.sleep(0.025) #sometimes there's file opening conflicts
    return end,name,outdata
        
rom = utils.Rom(c.projfiles+"MN.gbc")
for x in range(utils.BankAddress(0x4F,0x4000).getPos(),utils.BankAddress(0x4F,0x559F).getPos(),15):
    print(utils.BankAddress(x))
    ParseAssets(rom,utils.BankAddress(x),"Scene","Scene_{}")

            
with open(c.outdir +"validhsd.txt","w") as f:
    f.write('\n'.join([str(a)[:7] for a in validhsd.values()]))
with open(c.outdir +"validpal.txt","w") as f:
    f.write('\n'.join([str(a)[:7] for a in validpal.values()]))
with open(c.outdir +"validhts.txt","w") as f:
    f.write('\n'.join([str(a)[:7] for a in validhts.values()]))
with open(c.outdir +"validmtd.txt","w") as f:
    f.write('\n'.join([str(a)[:7] for a in validmtd.values()]))
with open(c.outdir +"validhmtm.txt","w") as f:
    f.write('\n'.join([str(a)[:7] for a in validhmtm.values()]))
with open(c.outdir +"validhmcm.txt","w") as f:
    f.write('\n'.join([str(a)[:7] for a in validhmcm.values()]))
with open(c.outdir +"validts.txt","w") as f:
    f.write('\n'.join([str(a)[:7] for a in validts.values()]))

#curpos = u.BankAddress(0x4F,0)
#test = [rom.getAddressBank(curpos+i*3) for i in range(5)]
#ParseAssets(rom,u.BankAddress(0x4F,0x4CA8),"HeaderSceneData","Scene_{}")
#ParseAssets(rom,u.BankAddress(0x4F,0x47E9),"HeaderSceneData","Test")