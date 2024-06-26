IncludeLib("FILESYS")
tangburan = "\\settings\\maps\\西北北区\\莫高窟\\tangburanboss.txt"
wangzuo = "\\settings\\maps\\东北区\\漠北草原\\wangzuoboss.txt"
qingxiaoshitai = "\\settings\\maps\\东北区\\漠北草原\\qingxiaoshitaiboss.txt"
shansinan = "\\settings\\maps\\东北区\\漠北草原\\shansinanboss.txt"
yanxiaoqian = "\\settings\\maps\\中原北区\\风陵渡北岸\\yanxiaoqianboss.txt"
baiyingying = "\\settings\\maps\\中原北区\\风陵渡北岸\\baiyingyingboss.txt"
herenwo = "\\settings\\maps\\中原北区\\风陵渡南岸\\herenwoboss.txt"
xuanjizi = "\\settings\\maps\\东北区\\长白山麓\\xuanjiziboss.txt"
xuanjuedashi = "\\settings\\maps\\东北区\\长白山麓\\xuanjuedashiboss.txt"
hanmeng = "\\settings\\maps\\江南区\\西山屿\\hanmengboss.txt"
DAMAHUFILE = "\\settings\\maps\\damahuboss.txt"
DAMAHUMAP = {321, 321, 322, 340, 322, 340, 321}
DAMAHUID = {
			{751, 0},
			{752, 0},
			{753, 1},
			{754, 1},
			{755, 2},
			{756, 2},
			{757, 3},
			{758, 3},
			{759, 4},
			{760, 4}
			}


function main()
	if (tonumber(date("%H")) == 21) then
		damahu_boss()
	end
end
			
function getadata(file)
	local totalcount = GetTabFileHeight(file) - 1;
	id = random(totalcount);
	x = GetTabFileData(file, id + 1, 1);
	y = GetTabFileData(file, id + 1, 2);
	return x,y
end

function GetIniFileData(mapfile, sect, key)
	if (IniFile_Load(mapfile, mapfile) == 0) then 
		print("Load IniFile Error!"..mapfile)
		return ""
	else
		return IniFile_GetData(mapfile, sect, key)	
	end
end

function GetTabFileHeight(mapfile)
	if (TabFile_Load(mapfile, mapfile) == 0) then
		print("Load TabFileError!"..mapfile);
		return 0
	end
	return TabFile_GetRowCount(mapfile)
end;

function GetTabFileData(mapfile, row, col)
	if (TabFile_Load(mapfile, mapfile) == 0) then
		print("Load TabFile Error!"..mapfile)
		return 0
	else
		return tonumber(TabFile_GetCell(mapfile, row, col))
	end
end

function damahu_boss()
	local d = tonumber(date("%d"))
	local m = tonumber(date("%m"))
	local y = tonumber(date("%y"))
	local w = tonumber(date("%W"))
	local xx = tonumber(date("%w"))
	local ss = d + m + y + w + xx
	local zz = mod(xx, 7)
	if (zz == 0) then
		zz = 7
	end
	damahu_mapid = DAMAHUMAP[zz]
    damahu_mapindex = SubWorldID2Idx(damahu_mapid)
    if (damahu_mapid == 321) then
    	mapname = "Trng B筩h s琻 Nam "
    	file = "\\settings\\maps\\东北区\\长白山麓\\xuanjiziboss.txt"
   elseif (damahu_mapid == 322) then
    	mapname = "Trng B筩h s琻 B綾"
    	file = "\\settings\\maps\\东北区\\长白山麓\\xuanjuedashiboss.txt"
    elseif (damahu_mapid == 340) then
    	mapname = "M筩 Cao Qu藅"
    	file = "\\settings\\maps\\西北北区\\莫高窟\\tangburanboss.txt"
    end
    
    if (damahu_mapindex >= 0) then
	rannum = random(10)
    	posx,posy =getadata(file)
    	local npcidx = AddNpcEx(DAMAHUID[rannum][1], 95, DAMAHUID[rannum][2], damahu_mapindex, posx*32, posy*32, 1, "Чi M� H� ", 1)
    	SetNpcDeathScript(npcidx, "\\script\\missions\\boss\\bossdeath.lua");
	WriteLog("Th阨 gian"..date("%H%M%S")..": Xu蕋 hi謓 BOSS Ho祅g Kim 'Чi M� H�' mapid:"..damahu_mapid..", t鋋  x:"..posx..", y:".. posy..". Чi M� H� (ID l�:"..DAMAHUID[rannum][1]..", thu閏 t輓h ng� h祅h:"..DAMAHUID[rannum][2])
	AddGlobalNews("Чi M� H� xu蕋 hi謓 t筰 "..mapname.." ("..floor(posx/8)..","..floor(posy/16)..")")
	end
end
