Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("FILESYS");
IncludeLib("RELAYLADDER");	
Include("\\script\\task\\newtask\\tasklink\\tasklink_head.lua");
Include("\\script\\task\\newtask\\tasklink\\tasklink_award.lua");
Include("\\script\\event\\storm\\function.lua")	--Storm
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\global\\seasonnpc.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")

LANTERN_TSKID_DATE	= 1607;
LANTERN_TSKID_WCNT	= 1605;
LANTERN_TSKID_RESET	= 1606;

function main()

	--dofile("script/global/g7vn/item/hoadangbibao.lua")

	local nDay = tonumber(GetLocalDate("%m%d"))
	if ( GetTask(LANTERN_TSKID_DATE) ~= nDay ) then
		SetTask(LANTERN_TSKID_RESET, 0)
	end

	if GetTask(LANTERN_TSKID_RESET) >= 5 then
		Say("VËt phÈm nµy kh«ng sö dông qu¸ 5 lÇn 1 ngµy")
		return 1
	end

	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Hoa §¨ng BÝ B¶o<color> t¹i npc TiÓu Ph­¬ng (T­¬ng D­¬ng 195/201) ®Ó tiÕp tôc ®o¸n Hoa §¨ng")
	
	SetTask(LANTERN_TSKID_DATE, nDay)
	SetTask(LANTERN_TSKID_WCNT, 0)
	SetTask(LANTERN_TSKID_RESET, GetTask(LANTERN_TSKID_RESET) + 1)

	local tbAward = 
	{	
		{szName = "Hång ¶nh 1", tbProp={0,204}, nQuality = 1, nCount=1,nRate=5,nExpiredTime=60*24*7},
		{szName = "Hång ¶nh 2", tbProp={0,205}, nQuality = 1, nCount=1,nRate=5,nExpiredTime=60*24*7},
		{szName = "Hång ¶nh 3", tbProp={0,206}, nQuality = 1, nCount=1,nRate=5,nExpiredTime=60*24*7},
		{szName = "Hång ¶nh 4", tbProp={0,207}, nQuality = 1, nCount=1,nRate=5,nExpiredTime=60*24*7},
		{szName = "MÆt n¹ v­¬ng gi¶ 7 ngµy",				tbProp={0,11,561,1,0,0},nExpiredTime=60*24*7,nCount=1,nRate=1},
		{szName = "ChiÕn m· Phi V©n",						tbProp={0,10,8,1,5,0},nCount=1,nRate=1,nExpiredTime=7*60*24},
		{szName = "§¹i thµnh bÝ kÝp 90",					tbProp={6,1,2424,1,0,0},nCount=1,nRate=3},
		{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 70000000,nRate=30},
		{szName = "Thiªn Hoµng 1", tbProp={0,168}, nQuality = 1, nCount=1,nRate=5,nExpiredTime=60*24*7},
		{szName = "Thiªn Hoµng 2", tbProp={0,169}, nQuality = 1, nCount=1,nRate=5,nExpiredTime=60*24*7},
		{szName = "Thiªn Hoµng 3", tbProp={0,170}, nQuality = 1, nCount=1,nRate=5,nExpiredTime=60*24*7},
		{szName = "Thiªn Hoµng 4", tbProp={0,171}, nQuality = 1, nCount=1,nRate=5,nExpiredTime=60*24*7},
		{szName = "Thiªn Hoµng 5", tbProp={0,172}, nQuality = 1, nCount=1,nRate=5,nExpiredTime=60*24*7},
		{szName = "Thiªn Hoµng 6", tbProp={0,173}, nQuality = 1, nCount=1,nRate=5,nExpiredTime=60*24*7},
		{szName = "Thiªn Hoµng 7", tbProp={0,174}, nQuality = 1, nCount=1,nRate=5,nExpiredTime=60*24*7},
		{szName = "Thiªn Hoµng 8", tbProp={0,175}, nQuality = 1, nCount=1,nRate=5,nExpiredTime=60*24*7},
		{szName = "Thiªn Hoµng 9", tbProp={0,176}, nQuality = 1, nCount=1,nRate=5,nExpiredTime=60*24*7},
	}
	tbAwardTemplet:Give(tbAward, 1, {"SuDungHoaDangChiBao", "SuDungHoaDangChiBao"})

	--if GetLevel() > 100 and  GetLevel() < 155 then
	--	local tbExpAward = 
	--	{
	--		{szName = "§iÓm kinh nghiÖm", nExp_tl = 1000000000},
	--	}
	--	tbAwardTemplet:Give(tbExpAward, 1 , {"ThuongThemMoHoaDangBiBao", "ThuongThemMoHoaDangBiBao"})
	--end

end