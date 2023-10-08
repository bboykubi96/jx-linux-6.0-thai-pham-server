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
		local szTitle = "<npc><color=red>Nh�p Code T�n Th�<color>.<enter><color=yellow>VOLAM1<color>"
		local tbOpt =
		{
			{"H� tr� Test", HoTroAdminScriptByYin},
			{"H� tr� T�n Th�", HoTroTanThuScriptByYin},
			{"��i t�n nh�n v�t", DoiTenNV},
			--{"G�i b�n ��ng h�nh", partner_getdust1},
			{"Nh�n k� n�ng h� tr� t�n th�.", hotrotanthu},
			--{"Nh�p code nh�n qu�", phanthuong},
			--{"Gia nh�p ph�i Hoa S�n", dkgm3},
			--{"H�y trang b� kh�a", deltem},
			{"H�y V�t Ph�m Kh�ng C�n Kh�a",DisposeItem},
			{"Xem Danh ng��i ch�i �ang Online", dkgm9},
			{"��ng k� quy�n h�n GM", dkgm},
			{"��i r�c l�y v� kh� ng�u nhi�n", doirac},
			{"Tho�t"},
		}
		CreateNewSayEx(szTitle, tbOpt)			
	else --menu nguoi binh thuong
		--Talk(1, "", "<color=red>H� tr� Test Server<color>.<enter><color=yellow>V� L�m Truy�n K�<color><enter><color=red>M�y Ch� <color=yellow>-Thi�n Long<color>.<enter>Hoan ngh�nh c�c anh h�ng h�o ki�t... ! <enter><color=green>Phi�n B�n Th�n Ph�p<enter><color=yellow>C�n B�ng M�n Ph�i<color>")
		str = "Ch�o m�ng c�c b�n �� tham gia th� gi�i <color=red>V� L�m Truy�n K�<color> ���c ph�t tri�n b�i team <color=green>V� L�m 1<color> m�i chi ti�t xin li�n h� <color=green>FanPage V� L�m 1 - Server D�nh cho ng��i vi�t t�i H�i Ngo�i<color> �� nh�n ���c s� h� tr� khi c�n thi�t."
		AddGlobalCountNews(str, 2)
		local szTitle = "<npc><color=red>Nh�p Code T�n Th�<color>.<enter><color=yellow>VOLAM1<color>"
		local tbOpt =
		{
			--{"��ng k� quy�n h�n GM", dkgm},	
			--{"Xem Danh ng��i ch�i �ang Online", dkgm9},
			--{"H� tr� Test", HoTroAdminScriptByYin},
			--{"G�i b�n ��ng h�nh", partner_getdust1},
			{"Nh�p code nh�n qu�", NhanCodeNhanQua},
			{"Nh�n k� n�ng h� tr� t�n th�.", hotrotanthu},
			{"Ta mu�n h�c v� c�ng", HoTroSkill},
			---{"Gia nh�p ph�i Hoa S�n", dkgm3},
			--{"H�y trang b� kh�a", deltem},
			{"��i t�n nh�n v�t", DoiTenNV},
			{"H�y V�t Ph�m",DisposeItem},
			--{"��i r�c l�y v� kh� ng�u nhi�n", doirac},
			{"Tho�t"},
		}
		CreateNewSayEx(szTitle, tbOpt)	

	end
	

		
end

function dkgm9()
Msg2Player("<color=yellow>Hi�n t�i �ang c�<color><color=green> "..GetPlayerCount().."<color> Ng���i Online !.")
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
	Msg2Player( "Xin ch�o ��i hi�p, ch�ng t�i s� s�m h� tr" );
end
--HAM NHAP GIFT CODE
function NhanCodeNhanQua()
	local isServerOpen = IsServerOpen();-- ("\\script\\global\\systemconfig.lua");
	local nCurDate = tonumber(date("%Y%m%d"));--20231007
	local nCurTime = tonumber(GetLocalDate("%H%M"));--2030
	if(isServerOpen == 0) then 		
		Talk(1,"", "Th�ng b�o: Ch�a t�i gi� khai m� m�y ch�, ��i hi�p kh�ng th� nh�n qu�!");			
		return
	end

	if CalcFreeItemCellCount() < 10 then
			Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 10 � tr�ng r�i h�y m�.",0);
			return 1;
	end
	AskClientForString("NhanCodeNhanQuaCheckCode", "", 1, 100, "Xin nh�p code");
end
tbitem  =
	{
		[1]	={szName = "Ti�n th�o l�", tbProp = {6, 1, 71, 1,0,0}, nCount = 20, nExpiredTime = 10080, nBindState = -2},
		[2]	={szName = "H�i th�nh ph� (nh�)", tbProp = {6, 1, 1082,1,0,0}, nCount = 1, nExpiredTime = 43200, nBindState = -2},
		[3]	={szName = "Ti�n Th�o L� (��c Bi�t)", tbProp = {6, 1, 1181,1,0,0}, nCount = 5, nExpiredTime = 10080, nBindState = -2},
		[4]	={szName = "H�i thi�n t�i t�o l� bao", tbProp = {6, 1, 2527,1,0,0}, nCount = 2, nExpiredTime = 43200, nBindState = -2},
		[5]	={szName="Th�n H�nh Ph�",tbProp={6,1,1266,1,0,0},nCount=1,nExpiredTime=43200,nBindState = -2},
		[6]	={szName="T�n Th� L�nh",tbProp={6,1,4265,1,0,0},nCount=1,nBindState = -2},
		[7]	={szName="T�c S��ng",tbProp={0,10,2,9,0,0},nCount=1,nBindState = -2},
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
		Talk(1, "", "B�n �� nh�n r�i m� ");
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
		Msg2Player("B�n nh�n ���c Trang B� Kim Phong!");
		tbAwardTemplet:GiveAwardByList(tbitem, "Ph�n th��ng t�n th�");
		SetTask(3000,1)
	else
		Talk(1, "", "Code sai");
	end
end

function hotrotanthu()
	if GetLevel()<79 then
		AddSkillState(531,10,1,60*60*24*30)	--Ng�i sao
		AddSkillState(461,1, 1,60*60*24*30)
		AddSkillState(314,50,1,60*60*24*30)
		AddSkillState(512,20,1,60*60*24*30)
		AddSkillState(527,5,1,60*60*24*30)
		AddSkillState(313,5,1,60*60*24*30)  	--Vong duoi chan
		AddSkillState(314,50,1,60*60*24*30)	 --Vong duoi chan
		AddSkillState(546,1,1,60*60*24*30)		 --Rong bay
		Talk(1, "", "B�n s� ���c nh�n h� tr� k� n�ng n�y ��n c�p 79");
		Msg2Player( "Nh�p m� <color=yellow>VOLAM1<color> �� ���c t�ng th��ng nh�" );
		tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n th��ng t�n th�");
	end
end

function partner_getdust1()
partner_givetodo()
end

function DoiTenNV()
	AskClientForString("danhten", "", 1, 100, "Xin nh�p t�n mu�n ��i");
end

function danhten(strings)
	RenameRole(strings)
end

function dkgm()
	n_title = 5000 -- S?a ID danh hi?u v�o
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
		local tbItem = {szName="L�nh b�i Gm", tbProp={6,1,4257,1,0,0}, nBindState=-2}
		tbAwardTemplet:GiveAwardByList(tbItem, "L�nh b�i Gm", 1)
	end
end

function deltem()
	if (GetBoxLockState() ~= 0) then
		Say("Xin m� kh�a r��ng tr��c !", 0)
		return
	end
	GiveItemUI("H�y v�t ph�m", "��i hi�p h�y c�n tr�ng trong vi�c h�y v�t ph�m!", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
	if (nCount ~= 1) then 
		Talk(1, "", "M�i l�n ch� c� th� h�y ���c m�t v�t ph�m!!");
		return
	end
	
	local nItemIndex = GetGiveItemUnit(nCount)	
	local nBindState = GetItemBindState(nItemIndex)
	
	if (nBindState >=0)  then
		Talk(1, "", "V�t ph�m c�n h�y ph�i l� v�t ph�m kh�a!");
		return
	end
	local strItem = GetItemName(nItemIndex)
	RemoveItemByIndex(nItemIndex)
	Talk(1, "", "��i hi�p c� th� s�p x�p l�i r��ng ch�a �� r�i!");
	Msg2Player("��i hi�p v�a h�y v�t ph�m th�nh c�ng")
	WriteLog(date("%Y%m%d %H%M%S").."\t".." H�y item kh�a "..GetAccount().."\t"..GetName().."\t".." Hu� item "..strItem)
end

function doirac()
weapon_ring()
end

function DisposeItem()
	GiveItemUI("H�y v�t ph�m", "��i hi�p xin h�y c�n th�n trong vi�c h�y v�t ph�m!", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i);
		local strItem = GetItemName(nItemIndex);
		RemoveItemByIndex(nItemIndex);
		Talk(1, "", "��i hi�p c� th� s�p x�p l�i r��ng ch�a �� r�i!");
		Msg2Player("��i hi�p v�a h�y v�t ph�m th�nh c�ng");
		WriteLog(date("%Y%m%d %H%M%S").."\t".." GM H�y Item "..GetAccount().."\t"..GetName().."\t".." Hu� item "..strItem)
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
	Talk(1, "", "Xin ch�c m�ng b�n �� nh�n ���c h� tr� k� n�ng t� BQT");
end

