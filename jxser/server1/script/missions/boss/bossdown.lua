---------------------------------***Edit*By*Heart*Doldly***------------------------------------
IncludeLib("FILESYS")
tangburan = "\\settings\\maps\\��������\\Ī�߿�\\tangburanboss.txt"
wangzuo = "\\settings\\maps\\������\\Į����ԭ\\wangzuoboss.txt"
qingxiaoshitai = "\\settings\\maps\\������\\Į����ԭ\\qingxiaoshitaiboss.txt"
shansinan = "\\settings\\maps\\������\\Į����ԭ\\shansinanboss.txt"
yanxiaoqian = "\\settings\\maps\\��ԭ����\\����ɱ���\\yanxiaoqianboss.txt"
baiyingying = "\\settings\\maps\\��ԭ����\\����ɱ���\\baiyingyingboss.txt"
herenwo = "\\settings\\maps\\��ԭ����\\������ϰ�\\herenwoboss.txt"
xuanjizi = "\\settings\\maps\\������\\����ɽ´\\xuanjiziboss.txt"
xuanjuedashi = "\\settings\\maps\\������\\����ɽ´\\xuanjuedashiboss.txt"
hanmeng = "\\settings\\maps\\������\\��ɽ��\\hanmengboss.txt"
DAMAHUFILE = "\\settings\\maps\\damahuboss.txt"
DAMAHUMAP = {321, 321, 322, 340, 322, 340, 321}

DAMAHUID = 
{
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
    	mapname = "Tr��ng B�ch s�n Nam "
    	file = "\\settings\\maps\\������\\����ɽ´\\xuanjiziboss.txt"
   elseif (damahu_mapid == 322) then
    	mapname = "Tr��ng B�ch s�n B�c"
    	file = "\\settings\\maps\\������\\����ɽ´\\xuanjuedashiboss.txt"
    elseif (damahu_mapid == 340) then
    	mapname = "M�c Cao Qu�t"
    	file = "\\settings\\maps\\��������\\Ī�߿�\\tangburanboss.txt"
    end
    
    if (damahu_mapindex >= 0) then
	rannum = random(10)
    	posx,posy =getadata(file)
    	local npcidx = AddNpcEx(DAMAHUID[rannum][1], 95, DAMAHUID[rannum][2], damahu_mapindex, posx*32, posy*32, 1, "��i M� H� ", 1)
    	SetNpcDeathScript(npcidx, "\\script\\missions\\boss\\bossdeath.lua");
	WriteLog("Th�i gian"..date("%H%M%S")..": Xu�t hi�n BOSS Ho�ng Kim '��i M� H�' mapid:"..damahu_mapid..", t�a �� x:"..posx..", y:".. posy..". ��i M� H� (ID l�:"..DAMAHUID[rannum][1]..", thu�c t�nh ng� h�nh:"..DAMAHUID[rannum][2])
	AddGlobalNews("��i M� H� xu�t hi�n t�i "..mapname.." ("..floor(posx/8)..","..floor(posy/16)..")")
	end
end
