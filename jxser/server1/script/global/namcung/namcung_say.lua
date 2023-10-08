Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\activitysys\\functionlib.lua");
Include("\\script\\lib\\log.lua");
IncludeLib("SETTING");
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\global\\fuyuan.lua");
Include("\\script\\global\\gmrole.lua");
Include("\\script\\global\\namcung\\hotrogm.lua")
Include("\\script\\global\\namcung\\xephang\\top10_all.lua");
Include("\\script\\task\\partner\\education\\swordking_people.lua");
Include("\\script\\global\\namcung\\hotrotanthu\\doiraclayvk.lua");
Include("\\script\\global\\systemconfig.lua");


function main()
	dofile("script/global/namcung/namcung_say.lua");	
	
	if tbGmRole:CheckAccountAndRoleName() == 1 then
		local szTitle = "<npc><color=red>NhËp Code T©n Thñ<color>.<enter><color=yellow>VOLAM1<color>"
		local tbOpt =
		{
			{"Hæ trî Test", HoTroAdminScriptByYin},
			{"Hæ trî T©n Thñ", HoTroTanThuScriptByYin},
			{"§æi tªn nh©n vËt", DoiTenNV},
			--{"Gäi b¹n ®ång hµnh", partner_getdust1},
			{"NhËn kü n¨ng hæ trî t©n thñ.", hotrotanthu},
			--{"NhËp code nhËn quµ", phanthuong},
			--{"Gia nhËp ph¸i Hoa S¬n", dkgm3},
			--{"Hñy trang bÞ khãa", deltem},
			{"Hñy VËt PhÈm Kh«ng CÇn Khãa",DisposeItem},
			{"Xem Danh ng­êi ch¬i ®ang Online", dkgm9},
			{"§¨ng ký quyÒn h¹n GM", dkgm},
			{"§æi r¸c lÊy vò khÝ ngÉu nhiªn", doirac},
			{"Tho¸t"},
		}
		CreateNewSayEx(szTitle, tbOpt)			
	else --menu nguoi binh thuong
		--Talk(1, "", "<color=red>Hæ trî Test Server<color>.<enter><color=yellow>Vâ L©m TruyÒn Kú<color><enter><color=red>M¸y Chñ <color=yellow>-Thiªn Long<color>.<enter>Hoan nghªnh c¸c anh hïng hµo kiÖt... ! <enter><color=green>Phiªn B¶n Th©n Ph¸p<enter><color=yellow>C©n B»ng M«n Ph¸i<color>")
		str = "Chµo mõng c¸c b¹n ®· tham gia thÕ giíi <color=red>Vâ L©m TruyÒn Kú<color> ®­îc ph¸t triÓn bëi team <color=green>Vâ L©m 1<color> mäi chi tiÕt xin liªn hÖ <color=green>FanPage Vâ L©m 1 - Server Dµnh cho ng­êi viÖt t¹i H¶i Ngo¹i<color> ®Ó nhËn ®­îc sù hæ trî khi cÇn thiÕt."
		AddGlobalCountNews(str, 2)
		local szTitle = "<npc><color=red>NhËp Code T©n Thñ<color>.<enter><color=yellow>VOLAM1<color>"
		local tbOpt =
		{
			--{"§¨ng ký quyÒn h¹n GM", dkgm},	
			--{"Xem Danh ng­êi ch¬i ®ang Online", dkgm9},
			--{"Hæ trî Test", HoTroAdminScriptByYin},
			--{"Gäi b¹n ®ång hµnh", partner_getdust1},
			{"NhËp code nhËn quµ", NhanCodeNhanQua},
			{"NhËn kü n¨ng hæ trî t©n thñ.", hotrotanthu},
			{"Ta muèn häc vâ c«ng", HoTroSkill},
			---{"Gia nhËp ph¸i Hoa S¬n", dkgm3},
			--{"Hñy trang bÞ khãa", deltem},
			{"§æi tªn nh©n vËt", DoiTenNV},
			{"Hñy VËt PhÈm",DisposeItem},
			--{"§æi r¸c lÊy vò khÝ ngÉu nhiªn", doirac},
			{"Tho¸t"},
		}
		CreateNewSayEx(szTitle, tbOpt)	

	end
	

		
end

function dkgm9()
Msg2Player("<color=yellow>HiÖn t¹i ®ang cã<color><color=green> "..GetPlayerCount().."<color> Ng­­êi Online !.")
end

function dkgm4()
ShowTopList()
end

function dkgm3()
hoason()

end

function HoTroAdminScriptByYin()
namcung2()
end

function HoTroTanThuScriptByYin()
	Msg2Player( "Xin chµo ®¹i hiÖp, chóng t«i sÏ sím hç tr" );
end
--HAM NHAP GIFT CODE
function NhanCodeNhanQua()
	local isServerOpen = IsServerOpen();-- ("\\script\\global\\systemconfig.lua");
	local nCurDate = tonumber(date("%Y%m%d"));--20231007
	local nCurTime = tonumber(GetLocalDate("%H%M"));--2030
	if(isServerOpen == 0) then 		
		Talk(1,"", "Th«ng b¸o: Ch­a tíi giê khai më m¸y chñ, §¹i hiÖp kh«ng thÓ nhËn quµ!");			
		return
	end

	if CalcFreeItemCellCount() < 10 then
			Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 10 « trèng råi h·y më.",0);
			return 1;
	end
	AskClientForString("NhanCodeNhanQuaCheckCode", "", 1, 100, "Xin nhËp code");
end
tbitem  =
	{
		[1]	={szName = "Tiªn th¶o lé", tbProp = {6, 1, 71, 1,0,0}, nCount = 20, nExpiredTime = 10080, nBindState = -2},
		[2]	={szName = "Håi thµnh phï (nhá)", tbProp = {6, 1, 1082,1,0,0}, nCount = 1, nExpiredTime = 43200, nBindState = -2},
		[3]	={szName = "Tiªn Th¶o Lé (§Æc BiÖt)", tbProp = {6, 1, 1181,1,0,0}, nCount = 5, nExpiredTime = 10080, nBindState = -2},
		[4]	={szName = "Håi thiªn t¸i t¹o lÔ bao", tbProp = {6, 1, 2527,1,0,0}, nCount = 2, nExpiredTime = 43200, nBindState = -2},
		[5]	={szName="ThÇn Hµnh Phï",tbProp={6,1,1266,1,0,0},nCount=1,nExpiredTime=43200,nBindState = -2},
		[6]	={szName="T©n Thñ LÖnh",tbProp={6,1,4265,1,0,0},nCount=1,nBindState = -2},
		[7]	={szName="Tóc S­¬ng",tbProp={0,10,2,9,0,0},nCount=1,nBindState = -2},
	}
	function NhanCodeNhanQuaCheckCode(stringCode)
	if stringsCode=="THODIAPHU"then
		--AddStackItem(100,4,417,1,1,0,0,0)
		--AddStackItem(100,4,417,1,1,0,0,0)
		--AddStackItem(100,4,417,1,1,0,0,0)
		--AddStackItem(100,4,417,1,1,0,0,0)
		--AddStackItem(100,4,417,1,1,0,0,0)
		SetItemBindState(AddItem(6,1,1082,1,0,0), -2)
	end
	if GetTask(3000)==1 then
		Talk(1, "", "B¹n ®· nhËn råi mµ ");
		return
	end
	if stringCode == SERVER_OPEN_CODE then	

		AddLeadExp(1000000000)
		AddRepute(450)
		local nLevel = GetLevel()
		ST_LevelUp(30 - nLevel)
		local nItemIndex =AddGoldItem(0,184);
		local nExpiredTime = 7*60*24;
		--SetSpecItemParam(nItemIndex, 1, nExpireTime);
		ITEM_SetExpiredTime(nItemIndex, nExpiredTime);--thoi han su dung
		SyncItem(nItemIndex);--dong bo xuong lai client
		SetItemBindState(nItemIndex, -2);--khoa vinh vien
		SyncItem(nItemIndex);--dong bo xuong lai client

		local nItemIndex =AddGoldItem(0,179);
		local nExpiredTime = 14*60*24;
		ITEM_SetExpiredTime(nItemIndex, nExpiredTime);
		SyncItem(nItemIndex);
		SetItemBindState(nItemIndex, -2);
		SyncItem(nItemIndex);

		local nItemIndex =AddGoldItem(0,177);
		local nExpiredTime = 14*60*24;
		ITEM_SetExpiredTime(nItemIndex, nExpiredTime);
		SyncItem(nItemIndex);
		SetItemBindState(nItemIndex, -2);
		SyncItem(nItemIndex);

		local nItemIndex =AddGoldItem(0,178);
		local nExpiredTime = 14*60*24;
		ITEM_SetExpiredTime(nItemIndex, nExpiredTime);
		SyncItem(nItemIndex);
		SetItemBindState(nItemIndex, -2);
		SyncItem(nItemIndex);

		local nItemIndex =AddGoldItem(0,180);
		local nExpiredTime = 14*60*24;
		ITEM_SetExpiredTime(nItemIndex, nExpiredTime);
		SyncItem(nItemIndex);
		SetItemBindState(nItemIndex, -2);
		SyncItem(nItemIndex);

		local nItemIndex =AddGoldItem(0,183);
		local nExpiredTime = 14*60*24;
		ITEM_SetExpiredTime(nItemIndex, nExpiredTime);
		SyncItem(nItemIndex);
		SetItemBindState(nItemIndex, -2);
		SyncItem(nItemIndex);
	
		local nItemIndex =AddGoldItem(0,181);
		local nExpiredTime = 14*60*24;
		ITEM_SetExpiredTime(nItemIndex, nExpiredTime);
		SyncItem(nItemIndex);
		SetItemBindState(nItemIndex, -2);
		SyncItem(nItemIndex);
	
		local nItemIndex =AddGoldItem(0,182);
		local nExpiredTime = 14*60*24;
		ITEM_SetExpiredTime(nItemIndex, nExpiredTime);
		SyncItem(nItemIndex);
		SetItemBindState(nItemIndex, -2);
		SyncItem(nItemIndex);
	
		local nItemIndex =AddGoldItem(0,185);
		local nExpiredTime = 14*60*24;
		ITEM_SetExpiredTime(nItemIndex, nExpiredTime);
		SyncItem(nItemIndex);
		SetItemBindState(nItemIndex, -2);
		SyncItem(nItemIndex);
	
		--SetItemBindState(AddGoldItem(0,179), -2)
		--SetItemBindState(AddGoldItem(0,177), -2)
		--SetItemBindState(AddGoldItem(0,178), -2)
		--SetItemBindState(AddGoldItem(0,180), -2)
		--setItemBindState(AddGoldItem(0,183), -2)
		--SetItemBindState(AddGoldItem(0,181), -2)
		--SetItemBindState(AddGoldItem(0,182), -2)
		--SetItemBindState(AddGoldItem(0,185), -2)
		Msg2Player("B¹n nhËn ®­îc Trang BÞ Kim Phong!");
		tbAwardTemplet:GiveAwardByList(tbitem, "PhÇn th­ëng t©n thñ");
		SetTask(3000,1)
	else
		Talk(1, "", "Code sai");
	end
end

function hotrotanthu()
	if GetLevel()<79 then
		AddSkillState(531,10,1,60*60*24*30)	--Ng«i sao
		AddSkillState(461,1, 1,60*60*24*30)
		AddSkillState(314,50,1,60*60*24*30)
		AddSkillState(512,20,1,60*60*24*30)
		AddSkillState(527,5,1,60*60*24*30)
		AddSkillState(313,5,1,60*60*24*30)  	--Vong duoi chan
		AddSkillState(314,50,1,60*60*24*30)	 --Vong duoi chan
		AddSkillState(546,1,1,60*60*24*30)		 --Rong bay
		Talk(1, "", "B¹n sÏ ®­îc nhËn hæ trî kü n¨ng nµy ®Õn cÊp 79");
		Msg2Player( "NhËp m· <color=yellow>VOLAM1<color> ®Ó ®­îc tÆng th­ëng nhÐ" );
		tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn th­ëng t©n thñ");
	end
end

function partner_getdust1()
partner_givetodo()
end

function DoiTenNV()
	AskClientForString("danhten", "", 1, 100, "Xin nhËp tªn muèn ®æi");
end

function danhten(strings)
	RenameRole(strings)
end

function dkgm()
	n_title = 5000 -- S?a ID danh hi?u vào
	local nServerTime = GetCurServerTime()+ 1728000; --20*24*60*60
	local nDate = FormatTime2Number(nServerTime);
	local nDay = floor(mod(nDate,1000000) / 10000);
	local nMon = mod(floor(nDate / 1000000) , 100)
	local nTime = nMon * 1000000 + nDay * 10000 
	Title_AddTitle(n_title, 2, nTime)
	Title_ActiveTitle(n_title)
	local nCurLevel = GetLevel()
	if nCurLevel < 150 then
		ST_LevelUp(150 - nCurLevel)
	end
	SetFightState(1)
	SetCamp(6)
	SetCurCamp(6)
	AddMagic(732, 50) --Skill GM
	AddMagic(733, 50) --Skill GM
	if CalcFreeItemCellCount() >= 1 then
		local tbItem = {szName="LÖnh bµi Gm", tbProp={6,1,4257,1,0,0}, nBindState=-2}
		tbAwardTemplet:GiveAwardByList(tbItem, "LÖnh bµi Gm", 1)
	end
end

function deltem()
	if (GetBoxLockState() ~= 0) then
		Say("Xin më khãa r­¬ng tr­íc !", 0)
		return
	end
	GiveItemUI("Hñy vËt phÈm", "§¹i hiÖp h·y cÈn träng trong viÖc hñy vËt phÈm!", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
	if (nCount ~= 1) then 
		Talk(1, "", "Mçi lÇn chØ cã thÓ hñy ®­îc mét vËt phÈm!!");
		return
	end
	
	local nItemIndex = GetGiveItemUnit(nCount)	
	local nBindState = GetItemBindState(nItemIndex)
	
	if (nBindState >=0)  then
		Talk(1, "", "VËt phÈm cÇn hñy ph¶i lµ vËt phÈm khãa!");
		return
	end
	local strItem = GetItemName(nItemIndex)
	RemoveItemByIndex(nItemIndex)
	Talk(1, "", "§¹i hiÖp cã thÓ s¾p xÕp l¹i r­¬ng chøa ®å råi!");
	Msg2Player("§¹i hiÖp võa hñy vËt phÈm thµnh c«ng")
	WriteLog(date("%Y%m%d %H%M%S").."\t".." Hñy item khãa "..GetAccount().."\t"..GetName().."\t".." Huû item "..strItem)
end

function doirac()
weapon_ring()
end

function DisposeItem()
	GiveItemUI("Hñy vËt phÈm", "§¹i hiÖp xin h·y cÈn thËn trong viÖc hñy vËt phÈm!", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i);
		local strItem = GetItemName(nItemIndex);
		RemoveItemByIndex(nItemIndex);
		Talk(1, "", "§¹i hiÖp cã thÓ s¾p xÕp l¹i r­¬ng chøa ®å råi!");
		Msg2Player("§¹i hiÖp võa hñy vËt phÈm thµnh c«ng");
		WriteLog(date("%Y%m%d %H%M%S").."\t".." GM Hñy Item "..GetAccount().."\t"..GetName().."\t".." Huû item "..strItem)
	end
end

function HoTroSkill()
	local szFaction = GetFaction()
	if tbAllSkill[szFaction] == nil then
		return
	end
	for i=1, 7 do
		if tbAllSkill[szFaction][i] ~= nil then
			for j=1, getn(tbAllSkill[szFaction][i]) do
				if HaveMagic(tbAllSkill[szFaction][i][j]) == -1 then
						AddMagic(tbAllSkill[szFaction][i][j])
				end
			end
		end
	end
	Talk(1, "", "Xin chóc mõng b¹n ®· nhËn ®­îc hæ trî kü n¨ng tõ BQT");
end

