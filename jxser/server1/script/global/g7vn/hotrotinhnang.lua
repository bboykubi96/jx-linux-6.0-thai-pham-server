IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
--Include("\\script\\global\\hotrotanthu.lua")	--h� tr� t�n th�
--Include("\\script\\global\\hotrothem.lua")	-- h� tr� �� xanh
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\global\\platina_upgrade.lua")
Include("\\script\\������\\�ٰ�\\�ٰ�\\npc\\ְ��_��������.lua")
--Include("\\script\\global\\tamhiep\\ephanche.lua")
Include("\\script\\task\\metempsychosis\\npc_saodiseng.lua")

DANH_HIEU={72,69,76,80,64,67,78,81,73,75}
tbChat = 
{
"<color=green>Nh�n Full h� tr� mi�n ph� ho�n to�n <pic=115><pic=115><pic=115>",
"<color=blue> Trang ch�: volamkiemtong.com <pic=5>",
"<color=red><pic=137>18 gi� 30 ph�t ng�y 26 th�ng 4 - Opend m�y ch� Ph�t S�n.<pic=115>",
}

----------------------------------------
function main1()
 
--	npcchat_npcmacdinh1()
	dialog_mainTN()
end
----------------------------------------------------------------
function npcchat_npcmacdinh1()
local nNpcIndex = GetLastDiagNpc();
local nTaskChat = GetNpcParam(nNpcIndex,1);
if nTaskChat == 0 then 
SetNpcParam(nNpcIndex,1,1); --set index ��u ti�n c�a table npc chat.
SetNpcTimer(nNpcIndex,500); --Tu� ch�nh th�i gian npc t� chat (20 s)
end
end
function OnTimer(nNpcIndex,nTimeOut)
local nTaskChat = GetNpcParam(nNpcIndex,1);
if not nTaskChat or nTaskChat <= 0 then 
nTaskChat = 1;
else
nTaskChat = nTaskChat + 1;
end

if nTaskChat > getn(tbChat) then 
nTaskChat = 1;
end

NpcChat(nNpcIndex,tbChat[nTaskChat],1);
SetNpcParam(nNpcIndex,1,nTaskChat)
SetNpcTimer(nNpcIndex,500);
end

----------------------------------------
function dialog_mainTN()
	--local nNpcIndex = GetLastDiagNpc();
	--NpcChat(nNpcIndex,"<color=orange>Gi�p qu� nh�n s� tr�i nghi�m t�nh n�ng ��c ��o <color><pic=139> <enter> * <color=green>mau ch�ng ��t g�ch n�o!",0)
	local szTitle = "<npc>Xin ch�o ! Ta c� th� gi�p g� ��i hi�p �i�u g� ?"
	local tbOpt =
	{
		--{"H� tr� Kinh Nghi�m.",testgame1},
	--	{"H� tr� K� n�ng 10-120.",hockynang},
		--{"H� tr� c�c lo�i Ti�n.",testgame4},
		--{"H� tr� c�c lo�i Trang B� xanh.",laydoxanh},
	--	{"H� tr� c�c lo�i Trang B� AB DQ.",layabdq},
	--	{"H� tr� Trang B� M�n Ph�i.",sethkmp},
	--	{"H� tr� Ng�a.",ngua},
	--	{"H� tr� V�ng S�ng.",vongsang},
	--	{"T�y t�y Nh�n V�t.",clear_attibute_point},
	--	{"Th�nh l�p bang h�i",dmcreattongtest},
		{"Tho�t."},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
--===============VONGSANG================

function hockynang() 
	HocSkill();
	HocSkill1();
end 
function layabdq() 
	setdq();
	setab();
end 
function abcxyz(nindex) 
	Title_AddTitle(nindex, 1, 4302359); 
	Title_ActiveTitle(nindex); 
	SetTask(1122, nindex); 
end 

function hotrotrangbi()
	local szTitle = "<npc>Xin ch�o ! Ta c� th� gi�p g� ��i hi�p �i�u g� ?"
	local tbOpt =
	{
	--	{"0. Th� nghi�m R��ng B�ch Kim.",layruongbk},
		{"Trang B� Xanh.",laydoxanh},
	--	{"2. Trang B� T�m.",tbtim1},
	--	{"3. H� tr� Trang B� M�n Ph�i.",sethkmp},
	--	{"4. H� tr� Trang B� H�n Ch�.",gifthanchet7},
	--	{"Trang B� AB- �Q- �S. ",setabkphcnt},
	--	{"4. Nh�n V� Danh", nhanvodanh},
		{"Tho�t."},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function layruongbk()
for i =1,50 do
		AddItem(6,1,4278,1,0,0)
	end	
end
function hotrokynang150()
	AddItem(6,1,4270,1,0,0)	
	AddItem(6,1,30446,1,0,0)
	AddItem(6,1,30446,1,0,0)
	AddItem(6,1,30446,1,0,0)

end
function vongsang() 
	local szTitle = "<npc>M�i b�n ch�n danh hi�u. " 
	local tbOpt = 
	{ 
		{"1. V� l�m li�n ��u Qu�n qu�n", abcxyz,{240}}, 
		{"2. V� l�m li�n ��u � qu�n", abcxyz,{82}}, 
		{"3. V� L�m �� Nh�t Bang", abcxyz,{105}}, 
		{"4. V� L�m Minh Ch�", abcxyz,{3000}}, 
		{"5. Thi�n h� �� nh�t bang", abcxyz,{189}}, 
		{"6. Cao C�p �� Nh�t Bang", abcxyz,{199}}, 
		{"7. Si�u C�p �� Nh�t Bang", abcxyz,{198}}, 
		{"8. V� L�m Ch� T�n", abcxyz,{210}}, 
		{"9. Thi�n H� V� Song", abcxyz,{211}}, 
		{"10. Th�n Th� B�t Ph�m", abcxyz,{256}}, 
		{"11. Vang Danh T� Ph��ng", abcxyz,{257}}, 
		{"12. V� H�c K� T�i", abcxyz,{258}}, 
		{"13. Thi�n H� V� Song", abcxyz,{211}}, 
		{"14. Th�n Th� B�t Ph�m", abcxyz,{256}}, 
		{"15. Vang Danh T� Ph��ng", abcxyz,{257}}, 
		{"Tho�t"}, 
	} 
	CreateNewSayEx(szTitle, tbOpt) 
end
--=============t�y t�y============
function clear_attibute_point()
	local tbOpt =
	{
		{"1. T�y �i�m k� n�ng.", clear_skill},
		{"2. T�y �i�m ti�m n�ng.", clear_prop},
		{"3. K�t th�c."},
	}
	CreateNewSayEx("<npc>H�y ch�n h� tr� c�n t�y t�y.", tbOpt)
end

function clear_skill()
	local tbOpt =
	{
		{"X�c nh�n.", do_clear_skill},
		{"�� ta suy ngh� l�i."},
	}
	CreateNewSayEx("<npc>Ng��i �� suy ngh� k� r�i ch�?", tbOpt)
end

function do_clear_skill()
	local i = HaveMagic(210)		-- �Ṧ�������
	local j = HaveMagic(400)		-- ���︻��ƶ���������
	local n = RollbackSkill()		-- ������ܲ��������м���?㣨�����Ṧ�����⼼�ܣ?
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		-- �⸽���ж����ų���δѧ���Ṧ���˷���-1�Ӷ���֢��������������
	if (j ~= -1) then x = x + j end
	local rollback_point = n - x			-- �Ѽ��ܵ㵱�����е�������������?۳��Ṧ�?
	if (rollback_point + GetMagicPoint() < 0) then		-- ���ϴ�ɸ˸���������0��Ϊ�Ժ󶵴�ϴ�㱣?��?
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210, i) end			-- ���ѧ�u�Ṧ�?�ӻ�ԭ�еȼ�
	if (j ~= -1) then AddMagic(400, j) end			-- ���ѧ�u���︻�Aƶ��ݬ������
	Msg2Player("T�y t�y th�nh c�ng! Ng��i ca "..rollback_point.." �i�m k� n�ng �� ph�n ph�i l�i.")
	KickOutSelf()
end

function clear_prop()
	local tbOpt =
	{
		{"X�c nh�n", do_clear_prop},
		{"�� ta suy ngh� l�i."},
	}
	CreateNewSayEx("<npc>Ng��i �� suy ngh� k� r�i ch�?", tbOpt)
end

function do_clear_prop()
	local base_str = {35,20,25,30,20}			-- �����������������ֵ
	local base_dex = {25,35,25,20,15}
	local base_vit = {25,20,25,30,25}
	local base_eng = {15,25,25,20,40}
	local player_series = GetSeries() + 1

	local Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))			-- ���ѷ���Ǳ����ַ��task(88)��������ֱ�ӽ����ĸ��������ȣ�
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
end
---------------=================trung sinh=====================
function trungsinh() 
	local szTitle = "<npc>��i hi�p c�n Gi�p g�? " 
	local tbOpt = 
	{ 
		{"1. Nh�n B�c ��u Tr��ng Sinh Thu�t - C� S� Thi�n.", addcosothien}, 
		{"2. Ti�n h�nh tr�ng sinh nh�n v�t.",zhuansheng_want_learn}, 
		{"3. Tho�t."}, 
	} 
	CreateNewSayEx(szTitle, tbOpt) 
end

function addcosothien()
	AddItem(6,1,1390,1,0,0)	
	AddItem(6,1,1390,1,0,0)	
	AddItem(6,1,1390,1,0,0)	
end

function tbtim1()
	local tbOpt =
	{
	--	{"1. Trang b� xanh.", laydoxanh},
	--	{"1. Ph�i T�m 6 d�ng", dotim},
	--	{"2. Huy�n tinh", huytin},
	--	{"3. �� �n Hi�n", kdb},
		{"4. Th�y tinh", thuytinhquy},
		{"5. Ph�c duy�n l�", phucd},
		{"6. THBT", tinhhong},
		{"7. Tho�t"},
	}
	CreateNewSayEx("<npc> Ng��i mu�n l�y m�n g�?", tbOpt)
end
function thuytinhquy()
AddEventItem(238) 
AddEventItem(239)
AddEventItem(240)  
end
----======================NGUA===============
function ngua()
	AddItem(0,10,6,10,0,0,0)
	AddItem(0,10,7,10,0,0,0)
end
-----------------------------------------GIFT HAN CHE----------------------------------------------------------------------------------------------------------------------------
function gifthanchet7()
	local tab_Content = {
		"Ng� Long T�n Phong Ph�t C�/#gifthanche3t7(793)",
		"V� Y�m Thu Th�y L�u Quang ��i/#gifthanche3t7(801)",
		"Thi�n Quang ��a H�nh Thi�n L�/#gifthanche3t7(843)",
		"L�ng Nh�c V� Ng� Th�c ��i/#gifthanche3t7(881)",
		"Ma Th� L� Ma Ph� T�m ��i/#gifthanche3t7(876)",
		"��ng C�u Ng� Long Ng�c B�i/#gifthanche3t7(855)",
		"Ma S�t C�u H�a L�u Thi�n Ho�ng/#gifthanche3t7(868)",
		"C�p Phong Th�y Ng�c Huy�n Ho�ng Uy�n/#gifthanche3t7(888)",
		"V� Giang Thanh Phong Nguy�n K�ch/#gifthanche3t7(796)",
		"Trang sau/gifthanchet71",
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end

function gifthanchet71()
	local tab_Content = {
		"T� Kh�ng ��t Ma T�ng H�i/#gifthanche3t7(776)",
		"Minh Hoang Song Ho�n X� Kh�u/#gifthanche3t7(829)",
		"Th� Ho�ng Hu� T�m Tr��ng Sinh Kh�u/#gifthanche3t7(811)",
		"B�ch H�i Ho�ng Ch�u Tuy�n Thanh C�n/#gifthanche3t7(816)",
		"L�i Khung linh Ng�c �n L�i/#gifthanche3t7(898)",
		"Ch� Tr�c Tr�ng C�t Ng�c B�i/#gifthanche3t7(834)",
		"��a Ph�ch Phong Ho�ng Th�c Y�n/#gifthanche3t7(854)",
		"Ma Ho�ng Dung Kim �o�n Nh�t Gi�i/#gifthanche3t7(874)",
		"S��ng Tinh L�u T�nh C�n Nguy�t Kh�u/#gifthanche3t7(891)",
		"Ph�c Ma V� L��ng Kim Cang Uy�n/#gifthanche3t7(771)",
		"M�ng Long T� Kim B�t Nh�/#gifthanche3t7(769)",
		"Trang tr��c/gifthanchet7",
		"Tho�t/no",
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end

function gifthanche3t7(nId)
	tbGoldEquip = {
		{szName ="Trang b� h�n ch� M�n Ph�i", tbProp = {0,nId},nQuality = 1}, --,nExpiredTime=10800
		};
		tbAwardTemplet:Give(tbGoldEquip[1], 1,{"",""});
end
--=====================================
----------------Nh�n Th��ng H�ng Ng�y----------------------------------
function NhanThuongHN()
local nNam = tonumber(GetLocalDate("%Y")); 
local nThang = tonumber(GetLocalDate("%m")); 
local nNgay = tonumber(GetLocalDate("%d")); 
local PTTanThu = 
{
{szName="<color=yellow>Ng� hoa ng�c l� ho�n c�m nang", tbProp={6,1,2564}, nCount = 1, nBindState = -2},
{szName="<color=yellow>S�t Th� Gi�n", tbProp={6,1,400,90,0,0}, nCount = 1, nExpiredTime = 1440, nBindState = -2},
{szName="<color=yellow>L�nh B�i Phong L�ng ��", tbProp={4,489}, nCount = 1, nExpiredTime = 1440, nBindState = -2},
{szName="<color=yellow>Ti�n Th�o L�", tbProp={6,1,71}, nCount = 2, nExpiredTime = 1440, nBindState = -2},
}
	local EMPTY = 10
	if (CalcFreeItemCellCount() < EMPTY) then
	Say("H�y thu d�n h�nh trang c�n <color=yellow>"..EMPTY.."<color> ch� tr�ng.", 0)
	return
	end
    local nTaskDayCount = PlayerFunLib:GetTaskDailyCount(nTaskDayhangngay)
    if nTaskDayCount > 0 then 
    Talk(1, "", "H�m nay ng��i �� nh�n ph�n th��ng n�y r�i, h�m sau h�y quay l�i.") 
    return 1; 
   else
    PlayerFunLib:AddTaskDaily(nTaskDayhangngay, 1)
	tbAwardTemplet:GiveAwardByList(PTTanThu, "Ph�n th��ng");
	Msg2Player("Nh�n ph�n th��ng ng�y  <color=yellow>"..nNgay.." - "..nThang.." - "..nNam.."<color> th�nh c�ng."); 
    end 
end
--====================================H� tr� t�n th�============================
function testgame1()
	local tbOpt =
	{
		{"1. L�n lever 159. ", level_up_to200},
		{"2. Nh�n �i�m Danh V�ng. ", diemdanhvong},
		{"3. Nh�n �i�m Ph�c duy�n. ", diemphucduyen},
		{"4. Nh�n �i�m C�ng hi�n. ", conghien},
		{"5. Nh�n �i�m t�i l�nh ��o. ", lanhdao},
		{"6. ��i m�u PK. ", trangthai},
		{"7. Tho�t"},
	}
	CreateNewSayEx("<npc> Ng��i mu�n l�y m�n g�?", tbOpt)
end

function level_up_to150()
	local nCurLevel = GetLevel()
	if nCurLevel < 150 then
		ST_LevelUp(150- nCurLevel)
	end
	local tbItem = {
		{szName="Th� ��a Ph�", tbProp={6,1,438,1,0,0}, nCount = 1},	
		{szName="Th�n H�nh Ph�", tbProp={6,1,2841,1,0,0}, nCount = 1},
	}
	tbAwardTemplet:GiveAwardByList(tbItem, "Thu�c L�c", 1)
end

function level_up_to200()
	local n_transcount = ST_GetTransLifeCount()
	if (n_transcount >3) then	
		Msg2Player("Tr�ng Sinh 3 tr� �i kh�ng th� nh�n h� tr� TEST n�y."); 
	return end;

	local nCurLevel = GetLevel();

	if (n_transcount <=3) then
	ST_LevelUp(150- nCurLevel);
	end
	local tbItem = {
		{szName="Th� ��a Ph�", tbProp={6,1,438,1,0,0}, nCount = 1},	
		{szName="Th�n H�nh Ph�", tbProp={6,1,1266,1,0,0}, nCount = 1},
	}
	tbAwardTemplet:GiveAwardByList(tbItem, "Thu�c L�c", 1)
end
function testgame4()
	local tbOpt =
	{
		{"1. 500 ti�n ��ng. ", laytiendong},
		{"2. 50 ng�n v�n.", laytienvan},
		{"3. 100k T�ch L�y T�ng Kim.", diemtk},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc> Ng��i mu�n l�y  g�?", tbOpt)
end
function diemtk()
SetTask(747,GetTask (747)+100000)
end
function testgame6()
for i = 3093,3102 do 
	local tbItem = {
		{szName="Tr�i C�y B�n M�a", tbProp={6,1,i,1,0,0}, nCount = 50},
	}
	tbAwardTemplet:GiveAwardByList(tbItem, "Nguy�n li�u Event", 1)
end
end

function testgame7()
	local tbItem = {
		{szName="Chi�n C�", tbProp={6,1,156,1,0,0}, nCount = 10},	
		{szName="L�nh B�i", tbProp={6,1,157,1,0,0}, nCount = 10},
		{szName="Phi T�c", tbProp={6,1,190,1,0,0}, nCount = 10},	
	}
	tbAwardTemplet:GiveAwardByList(tbItem, "Thu�c L�c", 1)

end

function testgame8()
	local tbItem = {
		{szName="Phi T�c L� Bao", tbProp={6,1,2520,1,0,0}, nCount = 1},
		{szName="��i L�c L� Bao", tbProp={6,1,2517,1,0,0}, nCount = 1},
		{szName="Th� ��a Ph�", tbProp={6,1,438,1,0,0}, nCount = 1},	
		{szName="Th�n H�nh Ph�", tbProp={6,1,2841,1,0,0}, nCount = 1},
		{szName="T�i m�u- Ng� Hoa L�", tbProp={6,1,4300,1,0,0}, nCount = 1},	
	}
	tbAwardTemplet:GiveAwardByList(tbItem, "Thu�c L�c", 1)

end

function testchetao1()
	local tbItem = {
		{szName="Ho�ng Kim B�o R��ng", tbProp={6,1,4278,1,0,0}, nCount = 10},	
	}
	tbAwardTemplet:GiveAwardByList(tbItem, "HKBR", 1)
end
--=============================================================================================================================
function moreitem()
	local tab_Content = {
		" L�y 500 ti�n ��ng /laytiendong",
		" L�y 50 ng�n v�n l��ng /laytienvan",
		" Nh�n �i�m Danh V�ng /diemdanhvong",
		" Nh�n �i�m Ph�c duy�n /diemphucduyen",
		" Nh�n �i�m Vinh D� /diemvinhdu",
		" Nh�n �i�m C�ng hi�n /conghien",
		" Nh�n �i�m t�i l�nh ��o /lanhdao",
		" Gia nh�p m�n ph�i v� h�c skill 10 - 120./choose_faction",
		" H�c v� c�ng 10 - 60./HoTroSkill",
		" L�n lever 190./level_up_to190",
		" L�n lever 79./level_up_to79",
		" 100 cu�n M�TB /mdtb",
		" ��i m�u PK /trangthai",
		" S�t th� gi�n /stg",
		" K�t th�c."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;

function tbhoangkimbk()
	local tbOpt =
	{
		{"500 ti�n ��ng. ", laytiendong},
		{"10 ng�n v�n.", laytienvan},
		--{"L�n c�p 199", level_up_to199},
		--{"Gia nh�p m�n ph�i v� h�c skill 10 - 120", choose_faction},
		{"�i�m Ph�c Duy�n.",diemphucduyen},
		{"Trang b� xanh", tbtim1},
		--{"Set Trang b� M�n ph�i", sethkmp},
		--{"Trang b� H�n ch�.", settbhanche},
		--{"Ch� t�o Trang B� B�ch Kim.", chetaoBachKim},
		{"Nh�n V� Danh", nhanvodanh},
		{"Nh�n set An Bang, ��nh Qu�c.",setabkphcnt},
		{"��i Th�nh B� K�p", daithanhbk}, 
		{"Tho�t"},
	}
	CreateNewSayEx("<npc> Ng��i mu�n l�y m�n g�?", tbOpt)
end


function chetaoBachKim()
	local tbOpt =
	{
		{"Ch� t�o Trang B� B�ch Kim (th��ng).", platina_main},
		{"Ch� t�o Trang B� B�ch Kim (��c bi�t).", dialog_mainBK},
		{"Nguy�n li�u ch� t�o trang b� B�ch Kim.", nguyenlieuBK},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc> Ng��i mu�n l�y m�n g�?", tbOpt)
end


function nguyenlieuBK()
	if(CalcFreeItemCellCount() < 20)then
		Talk(1,"no","�� ��m b�o kh�ng r�i v�t ph�m ra ngo�i, c�n 20 � tr�ng trong h�nh trang.")
	return end
	AddItem(6,1,2127,1,0,0)	
	AddItem(6,1,398,1,0,0)
	AddItem(6,1,1473,1,0,0)
	for i=1,10 do
		AddItem(6,1,1309,1,0,0)
		AddItem(6,1,147,8,0,0,0)
	end
end


function daithanhbk() 
	local ttltem ={
			{szName="��i Th�nh B� K�p 9x", tbProp={6,1,2424,1, 0, 0}, nCount = 2},
			{szName="��i Th�nh B� K�p 12x", tbProp={6,1,2425,1, 0, 0}, nCount = 1},
		}			
	tbAwardTemplet:GiveAwardByList(ttltem, "Ph�n th��ng t�n th�");	
		
end

function settbhanche()
	local tbOpt =
	{
		{"H�n ch� Thi�u L�m", hanchetl},
		{"H�n ch� Thi�n V��ng", hanchetv},
		{"H�n ch� Nga Mi", hanchenm},
		{"H�n ch� Th�y Y�n", hanchety},
		{"H�n ch� Ng� ��c", hanchend},
		{"H�n ch� ���ng M�n", hanchedm},
		{"H�n ch� C�i Bang", hanchecb},
		{"H�n ch� Thi�n Nh�n", hanchetn},
		{"H�n ch� V� �ang", hanchevd},
		{"H�n ch� C�n L�n", hanchecl},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc> Ng��i mu�n l�y m�n g�?", tbOpt)
end

function hanchetl()
	AddGoldItem(0, 769)-- thi�u l�m
	AddGoldItem(0, 771)
	AddGoldItem(0, 776)
end
function hanchetv()
	AddGoldItem(0, 793) -- Thi�n v��ng �ao
end
function hanchenm()
	AddGoldItem(0, 796)	-- nga mi
	AddGoldItem(0, 801)
end
function hanchend()
	AddGoldItem(0, 834)	-- ngu doc
	AddGoldItem(0, 829)
end
function hanchedm()
	AddGoldItem(0, 843) -- duong mon
	AddGoldItem(0, 854)
end
function hanchecb()
	AddGoldItem(0, 855) -- c�i bang
end
function hanchetn()
	AddGoldItem(0, 868) -- thi�n nh�n
	AddGoldItem(0, 874)
	AddGoldItem(0, 876)
end
function hanchevd()
	AddGoldItem(0, 881) -- v� �ang
	AddGoldItem(0, 888)
end
function hanchecl()
	AddGoldItem(0, 891) -- c�n l�n
	AddGoldItem(0, 898)
	AddGoldItem(0, 901)
end
function hanchety()
	AddGoldItem(0, 811) -- Th�y Y�n
	AddGoldItem(0, 816) -- Th�y Y�n
end
function nhanvodanh()
	AddGoldItem(0, 141)
	AddGoldItem(0, 142)
end

function tinhhong()
for i=1,6 do
	AddItem(4,353, 0, 0, 1, 1,0) 
end

end

----------------------------------------------
function trangthai()
	local tbOpt =
	{
		{"Tr�ng", mautrang},
		{"Ch�nh ph�i", mauvang},
		{"T� ph�i", mautim},
		{"Trung l�p", mauxanh},
		{"S�t Th�", maudo},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Ch�n m�u", tbOpt)
end

function mauvang()
		SetCurCamp(1)
		SetCamp(1)
end
function mautim()
		SetCurCamp(2)
		SetCamp(2)
end
function mauxanh()
		SetCurCamp(3)
		SetCamp(3)
end
function maudo()
		SetCurCamp(4)
		SetCamp(4)
end
function mautrang()
		SetCurCamp(0)
		SetCamp(0)
end

function cucphkhac()
	dohoangkim()
end

function vukhimonphai()
	local tbOpt =
	{
		{"Thi�u l�m", bktl},
		{"Thi�n v��ng", bktv},
		{"���ng m�n", bkdm},
		{"Ng� ��c", bk5d},
		{"Nga mi", bknm},
		{"Thu� y�n", bkty},
		{"C�i bang", bkcb},
		{"Thi�n nh�n", bktn},
		{"V� �ang", bkvd},
		{"C�n l�n", bkcl},
		{"Tr� l�i", dialog_main},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Ch�n m�n ph�i?", tbOpt)
end

function bktl()
AddGoldItem(0, 11)
AddGoldItem(0, 6)
end
function bktv()
AddGoldItem(0, 16)
AddGoldItem(0, 21)
AddGoldItem(0, 26)
end
function bknm()
AddGoldItem(0, 31)
end
function bkty()
AddGoldItem(0, 46)
end
function bk5d()
AddGoldItem(0, 61)
end
function bkdm()
AddGoldItem(0, 71)
AddGoldItem(0, 76)
AddGoldItem(0, 81)
end
function bkcb()
AddGoldItem(0, 96)
end
function bktn()
AddGoldItem(0, 101)
end

function bkvd()
for i=4346,4355 do
AddPlatinaItem(3, i)
end
end

function bkcl()
AddGoldItem(0, 126)
end
------------------------------------

function mdtb()
AddStackItem(100,6,1,196,1,0,0)
end

function lanhdao()
	for i=1,20 do
AddLeadExp(10000000)
end
end

function diemdanhvong()
	AddRepute(1000);
	Msg2Player("Nh�n ���c 1000 �i�m danh v�ng.");
end

function diemphucduyen()
	FuYuan_Start();
	FuYuan_Add(1000);
end

function conghien()
AddContribution(100000)
end

function laytiendong()
	if (CalcEquiproomItemCount(4,417,1,-1)>=2000) then
		Talk(1, "", "Ti�n ��ng trong t�i ng��i d�ng ch�a h�t th� l�y l�m g� cho nhi�u.")
	else
		AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		Msg2Player("Nh�n ���c 500 ti�n ��ng.");
	end
end;

function laytienvan()
	if (GetCash() >= 500000000) then 	--  50 ng�n v�n
		Talk(1, "", "Ng�n l��ng trong t�i ng��i d�ng ch�a h�t th� l�y l�m g� cho nhi�u.")
	else
		Earn(500000000)
		Msg2Player("Nh�n ���c 500000000 v�n l��ng.");
	end
end

function tbcucph()
	cucpham()	
end;

function goiboss()
	AddItem(6,1,1022,0,0,0)
end;

function huytinh()
dotim()
end

function pro1()
for i=430,441 do
AddGoldItem(0, i)
end
end
function dongsat()
for i=494,497 do
AddGoldItem(0, i)
end
for i=378,379 do
AddGoldItem(0, i)
end
end	

function xb_jz()
	AddGoldItem(0, 508)
end	
function zy_jz()
	AddGoldItem(0, 509)
end	
function sf_jz()
	AddGoldItem(0, 510)
end	
function sh_jz()
	AddGoldItem(0, 511)
end	
function dh_jz()
	AddGoldItem(0, 530)
end	
function tz_jz()
	AddGoldItem(0, 531)
end	
function sz_jz()
	AddGoldItem(0, 498)
end	
function jz08()
	AddGoldItem(0, 3878)
end	
function jz08x()
	AddGoldItem(0, 3541)
end	

function get_item(nIndex)
	local nMaxCount = CalcFreeItemCellCount()
	g_AskClientNumberEx(0, nMaxCount, "Xin m�i ��a v�o nh�n l�y", {get_item_back, {nIndex}})
end

function get_item_back(nIndex, nCount)
	if nCount <= 0 then
		return
	end
	if CalcFreeItemCellCount() < nCount then
		Talk(1, "", format("C�n �t nh�t <color=yellow>%d<color> � tr�ng trong h�nh trang", nCount))
		return
	end
	local szLogTitle = format("[liguan]get_free_item_%s", %tbFreeItem[nIndex].szName)
	tbAwardTemplet:GiveAwardByList(%tbFreeItem[nIndex], szLogTitle, nCount)
end

function get_single_item(nIndex)
	local tbItem = %tbFreeItem[nIndex]
	if CountFreeRoomByWH(tbItem.nWidth, tbItem.nHeigth) < 1 then
		Talk(1, "", format("C�n �t nh�t 1 %dx%d �  tr�ng trong h�nh trang.", tbItem.nWidth, tbItem.nHeigth))
		return
	end
	local szLogTitle = format("[liguan]get_free_item_%s", tbItem.szName)
	tbAwardTemplet:GiveAwardByList(tbItem, szLogTitle)
end


function write_info()
	tbInputDialog:InputServer()
end

function dotim()	local tab_Content = {
		"V� Kh�/weapon",
		"Y Ph�c/shirt",
		"��nh M�o/hat",
		"H� Uy�n/glove",
		"Y�u ��i/belt",
		"H�i T�/shoe",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function weapon()
	local tab_Content = {
		"Ki�m/kiem",
		"�ao/dao",
		"B�ng/bong",
		"Th��ng/kick",
		"Ch�y/chuy",
		"Song �ao/songdao",
		"Phi Ti�u/phitieu",
		"Phi �ao/phidao",
		"T� Ti�n/tutien",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function kiem()
		AddQualityItem(2,0,0,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function dao()
		AddQualityItem(2,0,0,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function bong()
		AddQualityItem(2,0,0,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function kick()
		AddQualityItem(2,0,0,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function chuy()
		AddQualityItem(2,0,0,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function songdao()
		AddQualityItem(2,0,0,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function phitieu()
		AddQualityItem(2,0,1,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function phidao()
		AddQualityItem(2,0,1,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function tutien()
		AddQualityItem(2,0,1,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function shirt()
	local tab_Content = {
		"Th�t B�o C� Sa/aothieulam",
		"Ch�n V� Th�nh Y/aovodang",
		"Thi�n Nh�n M�t Trang/aothiennhan",
		"Gi�ng Sa B�o/sabao",
		"���ng Ngh� Gi�p/dng",
		"V�n L�u Quy T�ng Y/aocaibang",
		"Tuy�n Long B�o/longbao",
		"Long Ti�u ��o Y/daoy",
		"C�u V� B�ch H� Trang/hotrang",
		"Tr�m H��ng Sam/huongsam",
		"T�ch L�ch Kim Ph�ng Gi�p/kimphung",
		"V�n Ch�ng T� T�m Y/tamy",
		"L�u Ti�n Qu�n/tienquan",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function aothieulam()
		AddQualityItem(2,0,2,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aovodang()
		AddQualityItem(2,0,2,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aothiennhan()
		AddQualityItem(2,0,2,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function sabao()
		AddQualityItem(2,0,2,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,4,0,-1,-1,-1,-1,-1,-1)
end


function dng()
		AddQualityItem(2,0,2,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aocaibang()
		AddQualityItem(2,0,2,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,7,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,4,0,-1,-1,-1,-1,-1,-1)
end


function longbao()
		AddQualityItem(2,0,2,6,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,4,0,-1,-1,-1,-1,-1,-1)
end


function daoy()
		AddQualityItem(2,0,2,8,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,4,0,-1,-1,-1,-1,-1,-1)
end


function hotrang()
		AddQualityItem(2,0,2,9,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,4,0,-1,-1,-1,-1,-1,-1)
end


function huongsam()
		AddQualityItem(2,0,2,10,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,4,0,-1,-1,-1,-1,-1,-1)
end


function kimphung()
		AddQualityItem(2,0,2,11,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tamy()
		AddQualityItem(2,0,2,12,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tienquan()
		AddQualityItem(2,0,2,13,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,4,0,-1,-1,-1,-1,-1,-1)
end


function hat()
	local tab_Content = {
		"T� L� M�o/lomao",
		"Ng� L�o Qu�n/laoquan",
		"Tu La Ph�t K�t/phatket",
		"Th�ng Thi�n Ph�t Qu�n/phatquan",
		"Y�m Nh�t Kh�i/nhatkhoi",
		"Tr�ch Tinh Ho�n/tinhhoan",
		"� T�m M�o/tammao",
		"Quan �m Ph�t Qu�n/quanam",
		"�m D��ng V� C�c Qu�n/amduong",
		"Huy�n T� Di�n Tr�o/dientrao",
		"Long Huy�t ��u Ho�n/longhuyet",
		"Long L�n Kh�i/lankhoi",
		"Thanh Tinh Thoa/tinhthoa",
		"Kim Ph�ng Tri�n S�/triensi",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function lomao()
		AddQualityItem(2,0,7,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function laoquan()
		AddQualityItem(2,0,7,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phatket()
		AddQualityItem(2,0,7,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phatquan()
		AddQualityItem(2,0,7,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,4,0,-1,-1,-1,-1,-1,-1)
end


function nhatkhoi()
		AddQualityItem(2,0,7,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tinhhoan()
		AddQualityItem(2,0,7,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tammao()
		AddQualityItem(2,0,7,6,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,4,0,-1,-1,-1,-1,-1,-1)
end


function quanam()
		AddQualityItem(2,0,7,7,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,4,0,-1,-1,-1,-1,-1,-1)
end


function amduong()
		AddQualityItem(2,0,7,8,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,4,0,-1,-1,-1,-1,-1,-1)
end


function dientrao()
		AddQualityItem(2,0,7,9,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,4,0,-1,-1,-1,-1,-1,-1)
end


function longhuyet()
		AddQualityItem(2,0,7,10,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,4,0,-1,-1,-1,-1,-1,-1)
end


function lankhoi()
		AddQualityItem(2,0,7,11,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tinhthoa()
		AddQualityItem(2,0,7,12,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,4,0,-1,-1,-1,-1,-1,-1)
end


function triensi()
		AddQualityItem(2,0,7,13,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,4,0,-1,-1,-1,-1,-1,-1)
end


function glove()
	local tab_Content = {
		"Long Ph�ng Huy�t Ng�c Tr�c/ngoctrac",
		"Thi�n T�m H� Uy�n/houyen",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function ngoctrac()
		AddQualityItem(2,0,8,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function houyen()
		AddQualityItem(2,0,8,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function belt()
	local tab_Content = {
		"Thi�n T�m Y�u ��i/thientamyeu",
		"B�ch Kim Y�u ��i/bachkimyendai",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function thientamyeu()
		AddQualityItem(2,0,6,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function bachkimyendai()
		AddQualityItem(2,0,6,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function shoe()
	local tab_Content = {
		"C�u Ti�t X��ng V� Ngoa/cuutien",
		"Thi�n T�m Ngoa/thientam",
		"Kim L� H�i/kimlu",
		"Phi Ph�ng Ngoa/phiphung",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function cuutien()
		AddQualityItem(2,0,5,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function thientam()
		AddQualityItem(2,0,5,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function kimlu()
		AddQualityItem(2,0,5,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phiphung()
		AddQualityItem(2,0,5,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,4,0,-1,-1,-1,-1,-1,-1)
end

function huytin()
AddItem(6,1,147,1,0,0,0) 
AddItem(6,1,147,2,0,0,0) 
AddItem(6,1,147,3,0,0,0) 
AddItem(6,1,147,4,0,0,0) 
AddItem(6,1,147,5,0,0,0) 
AddItem(6,1,147,6,0,0,0) 
AddItem(6,1,147,7,0,0,0) 
AddItem(6,1,147,8,0,0,0) 
AddItem(6,1,147,9,0,0,0) 
AddItem(6,1,147,10,0,0,0) 	
end


function kdb()
AddItem(6,1,149,1,0,0,0)
AddItem(6,1,150,1,0,0,0) 
AddItem(6,1,150,1,1,0,0) 
AddItem(6,1,150,1,2,0,0) 
AddItem(6,1,150,1,3,0,0) 
AddItem(6,1,150,1,4,0,0) 

AddItem(6,1,151,1,0,0,0)
AddItem(6,1,152,1,0,0,0) 
AddItem(6,1,152,1,1,0,0) 
AddItem(6,1,152,1,2,0,0)
AddItem(6,1,152,1,3,0,0)
AddItem(6,1,152,1,4,0,0)

AddItem(6,1,153,1,0,0,0)
AddItem(6,1,154,1,0,0,0) 
AddItem(6,1,154,1,1,0,0) 	
AddItem(6,1,154,1,2,0,0) 	
AddItem(6,1,154,1,3,0,0) 	
AddItem(6,1,154,1,4,0,0) 	
end


function stg()
AddItem(6,1,400,90,0,0,0)
AddItem(6,1,400,90,1,0,0) 
AddItem(6,1,400,90,2,0,0) 	
AddItem(6,1,400,90,3,0,0) 	
AddItem(6,1,400,90,4,0,0) 		
end

function thuyti() 
AddEventItem(238) 
AddEventItem(239)
AddEventItem(237) 		
end

function phucd()
AddItem(6,1,122,1,0,0,0)
AddItem(6,1,123,1,0,0,0) 
AddItem(6,1,124,1,0,0,0)
end
function bachkim()
	local tbOpt =
	{
		{"Thi�u l�m", bktl},
		{"Thi�n v��ng", bktv},
		{"���ng m�n", bkdm},
		{"Ng� ��c", bk5d},
		{"Nga mi", bknm},
		{"Thu� y�n", bkty},
		{"C�i bang", bkcb},
		{"Thi�n nh�n", bktn},
		{"V� �ang", bkvd},
		{"C�n l�n", bkcl},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Ch�n m�n ph�i?", tbOpt)
end
function bktl()
AddGoldItem(0, 11)
AddGoldItem(0, 6)
end
function bktv()
AddGoldItem(0, 16)
AddGoldItem(0, 21)
AddGoldItem(0, 26)
end
function bknm()
AddGoldItem(0, 31)
end
function bkty()
AddGoldItem(0, 46)
end
function bk5d()
AddGoldItem(0, 61)
end
function bkdm()
AddGoldItem(0, 71)
AddGoldItem(0, 76)
AddGoldItem(0, 81)
end
function bkcb()
AddGoldItem(0, 96)
end
function bktn()
AddGoldItem(0, 101)
end
function bkvd()
for i=4346,4355 do
AddPlatinaItem(3, i)
end
end
function bkcl()
AddGoldItem(0, 126)
end

function tongh()
		AddGoldItem(0,3506)
		AddGoldItem(0,3530)
		AddGoldItem(0,3541)
		AddGoldItem(0,3880)
		AddGoldItem(0,3881)
		AddGoldItem(0,3882)
		AddGoldItem(0,3883)
		AddGoldItem(0,3884)
		AddGoldItem(0,3885)
		AddGoldItem(0,3886)
		AddGoldItem(0,3887)
		AddGoldItem(0,3888)
end

function trangs()
		AddGoldItem(0,3507)
		AddGoldItem(0,3508)
		AddGoldItem(0,3509)
		AddGoldItem(0,3510)
		AddGoldItem(0,3511)
		AddGoldItem(0,3512)
		AddGoldItem(0,3513)
		AddGoldItem(0,3514)
		AddGoldItem(0,3515)
		AddGoldItem(0,3516)
		AddGoldItem(0,3517)
		AddGoldItem(0,3518)
		AddGoldItem(0,3519)
		AddGoldItem(0,3520)
end

function cpds()
AddGoldItem(0,494)
AddGoldItem(0,495)
AddGoldItem(0,496)
AddGoldItem(0,497)
end

function diemvinhdu()		
AddItem(6,1,1254,1,0,0)
AddItem(6,1,1254,1,0,0)
AddItem(6,1,1254,1,0,0)
AddItem(6,1,1254,1,0,0)
AddItem(6,1,1254,1,0,0)
AddItem(6,1,1254,1,0,0)
AddItem(6,1,1254,1,0,0)
AddItem(6,1,1254,1,0,0)
AddItem(6,1,1254,1,0,0)
AddItem(6,1,1254,1,0,0)
AddItem(6,1,1254,1,0,0)
AddItem(6,1,1254,1,0,0)
AddItem(6,1,1254,1,0,0)
end

function setsonglo()
	local tab_Content = {
		"R�i kh�i/no",
		"Thi�u L�m Quy�n/#setsonglo1(1)",
		"Thi�u L�m C�n/#setsonglo1(2)",
		"Thi�u L�m �ao/#setsonglo1(3)",
		"Thi�n V��ng ch�y/#setsonglo1(4)",
		"Thi�n V��ng th��ng/#setsonglo1(5)",
		"Thi�n V��ng �ao/#setsonglo1(6)",
		"Nga My Ki�m/#setsonglo1(7)",
		"Nga My ch��ng/#setsonglo1(8)",
		"Nga My buff/#setsonglo1(9)",
		"Th�y Y�n �ao/#setsonglo1(10)",
		"Th�y Y�n song �ao/#setsonglo1(11)",
		"Ng� ��c ch��ng/#setsonglo1(12)",
		"Ng� ��c �ao/#setsonglo1(13)",
		"Ng� ��c b�a/#setsonglo1(14)",
		"Trang sau/setsonglo2",
		
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setsonglo2()
	local tab_Content = {
		"R�i kh�i/no",
		"���ng M�n phi �ao/#setsonglo1(15)",
		"���ng M�n t� ti�n/#setsonglo1(16)",
		"���ng M�n phi ti�u/#setsonglo1(17)",
		"���ng M�n b�y/#setsonglo1(18)",
		"C�i Bang r�ng/#setsonglo1(19)",
		"C�i Bang b�ng/#setsonglo1(20)",
		"Thi�n Nh�n k�ch/#setsonglo1(21)",
		"Thi�n Nh�n �ao/#setsonglo1(22)",
		"Thi�n Nh�n b�a/#setsonglo1(23)",
		"V� �ang kh� /#setsonglo1(24)",
		"V� �ang ki�m/#setsonglo1(25)",
		"C�n L�n �ao/#setsonglo1(26)",
		"C�n L�n ki�m/#setsonglo1(27)",
		"C�n L�n b�a/#setsonglo1(28)",
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setsonglo1(nId)
for i=2975,2985 do AddGoldItem(0,10*nId+i-10) end
end


function sethkmp()
	local tab_Content = {
		"R�i kh�i/no",
		"Thi�u L�m quy�n/#sethkmp1(1)",
		"Thi�u L�m c�n/#sethkmp1(2)",
		"Thi�u L�m �ao/#sethkmp1(3)",
		"Thi�n V��ng ch�y/#sethkmp1(4)",
		"Thi�n V��ng th��ng/#sethkmp1(5)",
		"Thi�n V��ng �ao/#sethkmp1(6)",
		"Nga My ki�m/#sethkmp1(7)",
		"Nga My ch��ng/#sethkmp1(8)",
		"Nga My buff/#sethkmp1(9)",
		"Th�y Y�n �ao/#sethkmp1(10)",
		"Th�y Y�n song �ao/#sethkmp1(11)",
		"Ng� ��c ch��ng/#sethkmp1(12)",
		"Ng� ��c �ao/#sethkmp1(13)",
		"Ng� ��c b�a/#sethkmp1(14)",
		"Trang sau/sethkmp2",
		
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function sethkmp2()
	local tab_Content = {
		"R�i kh�i/no",
		"���ng M�n phi �ao/#sethkmp1(15)",
		"���ng M�n t� ti�n/#sethkmp1(16)",
		"���ng M�n phi ti�u/#sethkmp1(17)",
		"���ng M�n b�y/#sethkmp1(18)",
		"C�i Bang r�ng/#sethkmp1(19)",
		"C�i Bang b�ng/#sethkmp1(20)",
		"Thi�n Nh�n k�ch/#sethkmp1(21)",
		"Thi�n Nh�n �ao/#sethkmp1(22)",
		"Thi�n Nh�n b�a/#sethkmp1(23)",
		"V� �ang kh� /#sethkmp1(24)",
		"V� �ang ki�m/#sethkmp1(25)",
		"C�n L�n �ao/#sethkmp1(26)",
		"C�n L�n ki�m/#sethkmp1(27)",
		"C�n L�n b�a/#sethkmp1(28)",
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function sethkmp1(nId)
	for i=1,5 do AddGoldItem(0,5*nId+i-5) end
end

function setxl()
local tab_Content = {
"R�i Kh�i/no",
"Thi�u L�m Quy�n/#setxl1(1)",
"Thi�u L�m B�ng/#setxl1(2)",
"Thi�u L�m �ao/#setxl1(3)",
"Thi�n V��ng Ch�y/#setxl1(4)",
"Thi�n V��ng Th��ng/#setxl1(5)",
"Thi�n V��ng �ao/#setxl1(6)",
"Nga My Ki�m/#setxl1(7)",
"Nga My Ch��ng/#setxl1(8)",
"Th�y Y�n �ao/#setxl1(9)",
"Th�y Y�n Song �ao/#setxl1(10)",
"Ng� ��c Chu�ng/#setxl1(11)",
"Ng� ��c �ao/#setxl1(12)",
"���ng M�n Phi �ao/#setxl1(13)",
"���ng M�n N�/#setxl1(14)",
"Trang sau/setxl2",

}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setxl2()
local tab_Content = {
"R�i Kh�i/no",
"���ng M�n Phi Ti�u/#setxl1(15)",
"C�i Bang R�ng/#setxl1(16)",
"C�i Bang B�ng/#setxl1(17)",
"Thi�n Nh�n K�ch/#setxl1(18)",
"Thi�n Nh�n �ao/#setxl1(19)",
"V� �ang Ki�m/#setxl1(20)",
"V� �ang Quy�n/#setxl1(21)",
"C�n L�n �ao/#setxl1(22)",
"C�n L�n Ki�m/#setxl1(23)",

}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setxl1(nId)
for i=2515,2525 do AddGoldItem(0,10*nId+i-10) end
end

function setmp()
local tab_Content = {
"R�i Kh�i/no",
"Thi�u L�m Quy�n/#setmp1(1)",
"Thi�u L�m B�ng/#setmp1(2)",
"Thi�u L�m �ao/#setmp1(3)",
"Thi�n V��ng Ch�y/#setmp1(4)",
"Thi�n V��ng Th��ng/#setmp1(5)",
"Thi�n V��ng �ao/#setmp1(6)",
"Nga My Ki�m/#setmp1(7)",
"Nga My Ch��ng/#setmp1(8)",
"Th�y Y�n �ao/#setmp1(9)",
"Th�y Y�n Song �ao/#setmp1(10)",
"Ng� ��c Chu�ng/#setmp1(11)",
"Ng� ��c �ao/#setmp1(12)",
"���ng M�n Phi �ao/#setmp1(13)",
"���ng M�n N�/#setmp1(14)",
"Trang sau/setmp2",

}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setmp2()
local tab_Content = {
"R�i Kh�i/no",
"���ng M�n Phi Ti�u/#setmp1(15)",
"C�i Bang R�ng/#setmp1(16)",
"C�i Bang B�ng/#setmp1(17)",
"Thi�n Nh�n K�ch/#setmp1(18)",
"Thi�n Nh�n �ao/#setmp1(19)",
"V� �ang Ki�m/#setmp1(20)",
"V� �ang Quy�n/#setmp1(21)",
"C�n L�n �ao/#setmp1(22)",
"C�n L�n Ki�m/#setmp1(23)",

}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setmp1(nId)
for i=2745,2755 do AddGoldItem(0,10*nId+i-10) end
end

tbDoXanh =
{
[1]=
{
szName = "D�y chuy�n",
tbEquip =
{
{"To�n th�ch h�ng li�n",0,4,0},
{"L�c Ph� Th�y H� Th�n ph� ",0,4,1},
}
},
[2]=
{
szName = "�o gi�p",
tbEquip =
{
{"Th�t B�o C� Sa",0,2,0},
{"Ch�n V� Th�nh Y",0,2,1},
{"Thi�n Nh�n M�t Trang",0,2,2},
{"Gi�ng Sa B�o",0,2,3},
{"���ng Ngh� gi�p",0,2,4},
{"V�n L�u Quy T�ng Y",0,2,5},
{"Tuy�n Long b�o",0,2,6},
{"Long Ti�u ��o Y",0,2,8},
{"C�u V� B�ch H� trang",0,2,9},
{"Tr�m H��ng sam",0,2,10},
{"T�ch L�ch Kim Ph�ng gi�p",0,2,11},
{"V�n Ch�ng T� T�m Y",0,2,12},
{"L�u Ti�n Qu�n",0,2,13},
}
},
[3]=
{
szName = "�ai l�ng",
tbEquip =
{
{"Thi�n T�m Y�u ��i",0,6,0},
{"B�ch Kim Y�u ��i",0,6,1},
}
},
[4]=
{
szName = "Gi�y",
tbEquip =
{
{"C�u Ti�t X��ng V� Ngoa",0,5,0},
{"Thi�n T�m Ngoa",0,5,1},
{"Kim L� h�i",0,5,2},
{"Phi Ph�ng Ngoa",0,5,3},
}
},
[5]=
{
szName = "Bao tay",
tbEquip =
{
{"Long Ph�ng Huy�t Ng�c Tr�c",0,8,0},
{"Thi�n T�m H� Uy�n",0,8,1},
}
},
[6]=
{
szName = "N�n",
tbEquip =
{
{"T� L� m�o",0,7,0},
{"Ng� l�o qu�n",0,7,1},
{"Tu La Ph�t k�t",0,7,2},
{"Th�ng Thi�n Ph�t Qu�n",0,7,3},
{"Y�m Nh�t kh�i",0,7,4},
{"Tr�ch Tinh ho�n",0,7,5},
{"� T�m M�o",0,7,6},
{"Quan �m Ph�t Qu�n",0,7,7},
{"�m D��ng V� C�c qu�n",0,7,8},
{"Huy�n T� Di�n Tr�o",0,7,9},
{"Long Huy�t ��u ho�n",0,7,10},
{"Long L�n Kh�i",0,7,11},
{"Thanh Tinh Thoa",0,7,12},
{"Kim Ph�ng Tri�n S� ",0,7,13},
}
},
[7]=
{
szName = "V� kh� c�n chi�n",
tbEquip =
{
{"Huy�n Thi�t Ki�m",0,0,0},
{"��i Phong �ao",0,0,1},
{"Kim C� B�ng",0,0,2},
{"Ph� Thi�n K�ch",0,0,3},
{"Ph� Thi�n ch�y",0,0,4},
{"Th�n Nh�t Tr�m",0,0,5},
}
},
[8]=
{
szName = "Ng�c b�i",
tbEquip =
{
{"Long Ti�n H��ng Nang",0,9,0},
{"D��ng Chi B�ch Ng�c",0,9,1},
}
},
[9]=
{
szName = "V� kh� t�m xa",
tbEquip =
{
{"B� V��ng Ti�u",0,1,0},
{"To�i Nguy�t �ao",0,1,1},
{"Kh�ng T��c Linh",0,1,2},
}
},
[10]=
{
szName = "Nh�n",
tbEquip =
{
{"To�n Th�ch Gi�i Ch� ",0,3,0},
}
},
}

function laydoxanh()
	local tbOpt = {}
	for i=1, getn(tbDoXanh) do
	tinsert(tbOpt, {tbDoXanh[i].szName, laydoxanh1, {i}})
end

tinsert(tbOpt, {"K�t th�c ��i tho�i."})
CreateNewSayEx("<npc>Xin m�i l�a ch�n trang b�:", tbOpt)
end

function laydoxanh1(nType)
	local tbEquip = %tbDoXanh[nType]["tbEquip"]
	local tbOpt = {}
	for i=1, getn(tbEquip) do
	tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType}})
end

tinsert(tbOpt, {"K�t th�c ��i tho�i."})
local szTitle = format("<npc>Xin m�i l�a ch�n trang b�:")
CreateNewSayEx(szTitle, tbOpt)
end

function laydoxanh2(nIndex, nType)
	local tbOpt = {}
	tinsert(tbOpt, {"Kim", laydoxanh3, {nIndex, nType, 0}})
	tinsert(tbOpt, {"M�c", laydoxanh3, {nIndex, nType, 1}})
	tinsert(tbOpt, {"Th�y", laydoxanh3, {nIndex, nType, 2}})
	tinsert(tbOpt, {"H�a", laydoxanh3, {nIndex, nType, 3}})
	tinsert(tbOpt, {"Th� ", laydoxanh3, {nIndex, nType, 4}})
	tinsert(tbOpt, {"K�t th�c ��i tho�i."})
	local szTitle = format("<npc>Ch�n h�:")
	CreateNewSayEx(szTitle, tbOpt)
end

function laydoxanh3(nIndex, nType, nSeries)
	g_AskClientNumberEx(0, 500, "Nh�p s� l��ng:", {laydoxanh4, {nIndex, nType, nSeries}})
end

function laydoxanh4(nIndex, nType, nSeries, nCount)
	local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
--	for x=6,9 do 
		for i=1,nCount do 
			AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4], 10, nSeries, 100, 10)
		 end
--	end
end

function sethkmp()
	local tab_Content = {
		"R�i kh�i/no",
		"Thi�u L�m quy�n/#sethkmp1(1)",
		"Thi�u L�m c�n/#sethkmp1(2)",
		"Thi�u L�m �ao/#sethkmp1(3)",
		"Thi�n V��ng ch�y/#sethkmp1(4)",
		"Thi�n V��ng th��ng/#sethkmp1(5)",
		"Thi�n V��ng �ao/#sethkmp1(6)",
		"Nga My ki�m/#sethkmp1(7)",
		"Nga My ch��ng/#sethkmp1(8)",
		"Nga My buff/#sethkmp1(9)",
		"Th�y Y�n �ao/#sethkmp1(10)",
		"Th�y Y�n song �ao/#sethkmp1(11)",
		"Ng� ��c ch��ng/#sethkmp1(12)",
		"Ng� ��c �ao/#sethkmp1(13)",
		"Ng� ��c b�a/#sethkmp1(14)",
		"Trang sau/sethkmp2",
		
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end

function sethkmp2()
	local tab_Content = {
		"R�i kh�i/no",
		"���ng M�n phi �ao/#sethkmp1(15)",
		"���ng M�n t� ti�n/#sethkmp1(16)",
		"���ng M�n phi ti�u/#sethkmp1(17)",
		"���ng M�n b�y/#sethkmp1(18)",
		"C�i Bang r�ng/#sethkmp1(19)",
		"C�i Bang b�ng/#sethkmp1(20)",
		"Thi�n Nh�n k�ch/#sethkmp1(21)",
		"Thi�n Nh�n �ao/#sethkmp1(22)",
		"Thi�n Nh�n b�a/#sethkmp1(23)",
		"V� �ang kh� /#sethkmp1(24)",
		"V� �ang ki�m/#sethkmp1(25)",
		"C�n L�n �ao/#sethkmp1(26)",
		"C�n L�n ki�m/#sethkmp1(27)",
		"C�n L�n b�a/#sethkmp1(28)",
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end

function setabkphcnt()
	local tab_Content = {
		"1. Set ��nh Qu�c C�c Ph�m/setdqcp",
		"2. Set An Bang C�c Ph�m/setabcp",
		"3. Set Hi�p C�t Nhu T�nh C�c Ph�m /sethcntcp",
		"4. Set ��ng s�t /setds",
		"5. R�i kh�i/no",
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end

function setds()
for i=143,146 do AddGoldItem (0,i) end
end

function setdq()
	for i=159,163 do AddGoldItem(0,i) end
end
function setdqcp()
	for i=403,407 do AddGoldItem(0,i) end
end
function setab()
	for i=164,167 do AddGoldItem(0,i) end
end
function setabhm()
	for i=210,213 do AddGoldItem(0,i) end
end
function setabcp()
	for i=408,411 do AddGoldItem(0,i) end
end
function setth()
	for i=168,176 do AddGoldItem(0,i) end
end
function settoainhan()
	for i=442,451 do AddGoldItem(0,i) end
end
function setphuchy()
	for i=452,461 do AddGoldItem(0,i) end
end
function setnuoa()
	for i=462,471 do AddGoldItem(0,i) end
end
function setchucdung()
	for i=472,481 do AddGoldItem(0,i) end
end
function setthannong()
	for i=482,491 do AddGoldItem(0,i) end
end
function sethcnt()
	for i=186,193 do AddGoldItem(0,i) end
end
function sethcntcp()
	for i=412,419 do AddGoldItem(0,i) end
end
function setkp()
	for i=177,185 do AddGoldItem(0,i) end
end

function no()
end;
--======================= �� ph�
function dphkthieulam()
for i=240,254 do
AddItem(6,1,i,1,0,0)
end
end

function dphkthienvuong()
for i=255,269 do AddItem (0,i) end
end

function dphkngami()
for i=270,284 do
AddItem(6,1,i,1,0,0)
end
end

function dphkthuyyen()
for i=285,294 do
AddItem(6,1,i,1,0,0)
end
end

function dphkngudoc()
for i=286,309 do
AddItem(6,1,i,1,0,0)
end
end

function dphkduongmon()
for i=310,329 do
AddItem(6,1,i,1,0,0)
end
end

function dphkcaibang()
for i=330,339 do
AddItem(6,1,i,1,0,0)
end
end

function dphkthiennhan()
for i=340,354 do
AddItem(6,1,i,1,0,0)
end
end

function dphkvodang()
for i=355,364 do
AddItem(6,1,i,1,0,0)
end
end

function dphkconlon()
for i=365,379 do
AddItem(6,1,i,1,0,0)
end
end

function dphkdongsat()
for i=380,383 do
AddItem(6,1,i,1,0,0)
end
end

function dphkdinhquoc()
for i=384,388 do
AddItem(6,1,i,1,0,0)
end
end

function dphkanbang()
for i=389,392 do
AddItem(6,1,i,1,0,0)
end
end
--====================================== �� ph�
--========================== m�nh ho�ng kim
function manhhoangkim12()
	local tbOpt =
	{
		{"M�nh T�c Nghi�p B�ch H� V� Song Kh�u", mhkphai1},
		{"M�nh V� Ho�n H� C�t H� Uy�n", mhkphai2},
		{"M�nh ��ch Kh�i C�u T�ch B� H� Uy�n", mhkphai3},
		{"M�nh T� Kh�ng H� Ph�p Y�u ��i", mhkphai4},
		{"M�nh V� Gian Ph�t V�n Ty ��i", mhkphai5},
		{"M�nh B�ng H�n T�m Ti�n Y�u Kh�u", mhkphai6},
		{"M�nh L�ng Nh�c N� L�i Ph�p Gi�i", mhkphai7},
		{"M�nh Th� Ho�ng Phong Tuy�t B�ch V�n Y�u ��i", mhkphai8},
		{"M�nh S��ng Tinh Thanh Phong L� ��i", mhkphai9},
		{"M�nh Ma S�t T�n D��ng �nh Huy�t Gi�p", mhkphai10},
		{"Trang 2", mhktrangke},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc> Ng��i mu�n l�y m�n g�?", tbOpt)
end

function mhktrangke()
	local tbOpt =
	{
		{"M�nh T� Kh�ng Gi�ng Ma Gi�i �ao", mhkphai11},
		{"M�nh Ph�c Ma T� Kim C�n", mhkphai12},
		{"M�nh ��i Nh�n Th�n Ch�y", mhkphai13},
		{"M�nh B�n L�i To�n Long Th��ng", mhkphai14},
		{"M�nh L��ng Ng�n B�o �ao", mhkphai15},
		{"M�nh U Lung Kim X� Ph�t ��i", mhkphai16},
		{"M�nh Minh �o T� S�t ��c Nh�n", mhkphai17},
		{"M�nh Hoa V� M�n Thi�n", mhkphai18},
		{"M�nh B�ng H�n ��n Ch� Phi �ao", mhkphai19},
		{"M�nh Phi Tinh �o�t H�n", mhkphai20},
		{"M�nh T�y T��ng Ng�c Kh�u", mhkphai21},
		{"M�nh H�ng Truy Nhuy�n Th�p h�i", mhkphai22},
		{"Trang 3", mhktrangke1},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc> Ng��i mu�n l�y m�n g�?", tbOpt)
end

function mhktrangke1()
	local tbOpt =
	{
		{"M�nh V� Gian � Thi�n Ki�m", mhkphai23},
		{"M�nh T� Ho�ng Ph�ng Ngh�a �ao", mhkphai24},
		{"M�nh Th� Ho�ng B�ng Tuy C�m Uy�n", mhkphai25},
		{"M�nh U Minh Th��ng", mhkphai26},
		{"M�nh Ma Th� s�n  H�i Phi H�ng L�", mhkphai27},
		{"M�nh ��ng C�u Gi�ng Long C�i Y", mhkphai28},
		{"M�nh ��ng C�u Kh�ng Long H� Uy�n", mhkphai29},
		{"M�nh L�c Ng�c Tr��ng", mhkphai30},
		{"M�nh L�i Khung H�n T�ng B�ng B�ch Qu�n", mhkphai31},
		{"M�nh Thi�n Ni�n H�n Thi�t", mhkphai32},
		{"M�nh Ch�n V� Ki�m", mhkphai33},
		{"M�nh L�ng Nh�c V� C�c Huy�n Ng�c B�i", mhkphai34},
		{"Trang ��u", manhhoangkim12},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc> Ng��i mu�n l�y m�n g�?", tbOpt)
end


function mhkphai1()
	for i=1146,1151 do AddEventItem(i) end
end

function mhkphai2()
	for i=1194,1199 do AddEventItem(i) end
end

function mhkphai3()
	for i=1091,1096 do AddEventItem(i) end
end

function mhkphai4()
	for i=1134,1139 do AddEventItem(i) end
end

function mhkphai5()
	for i=1158,1163 do AddEventItem(i) end
end

function mhkphai6()
	for i=1206,1211 do AddEventItem(i) end
end

function mhkphai7()
	for i=1260,1265 do AddEventItem(i) end
end

function mhkphai8()
	for i=1176,1181 do AddEventItem(i) end
end

function mhkphai9()
	for i=1272,1277 do AddEventItem(i) end
end

function mhkphai10()
	for i=1097,1102 do AddEventItem(i) end
end

function mhkphai11()
	for i=585,593 do AddEventItem(i) end
end

function mhkphai12()
	for i=576,584 do AddEventItem(i) end
end

function mhkphai13()
	for i=594,602 do AddEventItem(i) end
end

function mhkphai14()
	for i=603,611 do AddEventItem(i) end
end

function mhkphai15()
	for i=612,620 do AddEventItem(i) end
end

function mhkphai16()
	for i=825,830 do AddEventItem(i) end
end

function mhkphai17()
	for i=648,656 do AddEventItem(i) end
end

function mhkphai18()
	for i=657,665 do AddEventItem(i) end
end

function mhkphai19()
	for i=980,988 do AddEventItem(i) end
end

function mhkphai20()
	for i=666,674 do AddEventItem(i) end
end

function mhkphai21()
	for i=801,806 do AddEventItem(i) end
end

function mhkphai22()
	for i=807,812 do AddEventItem(i) end
end

function mhkphai23()
	for i=621,629 do AddEventItem(i) end
end

function mhkphai24()
	for i=630,638 do AddEventItem(i) end
end

function mhkphai25()
	for i=1055,1060 do AddEventItem(i) end
end

function mhkphai26()
	for i=684,692 do AddEventItem(i) end
end

function mhkphai27()
	for i=873,878 do AddEventItem(i) end
end

function mhkphai28()
	for i=849,854 do AddEventItem(i) end
end

function mhkphai29()
	for i=855,860 do AddEventItem(i) end
end

function mhkphai30()
	for i=675,683 do AddEventItem(i) end
end

function mhkphai31()
	for i=1004,1009 do AddEventItem(i) end
end

function mhkphai32()
	for i=702,710 do AddEventItem(i) end
end

function mhkphai33()
	for i=693,701 do AddEventItem(i) end
end

function mhkphai34()
	for i=879,884 do AddEventItem(i) end
end

--========================================== m�nh ho�ng kim


------------------------------------------------------
tbAllSkill = {
	shaolin = {
		[1] = {10,14},
		[2] = {4,6,8},
		[3] = {15},
		[4] = {16},
		[5] = {20},
		[6] = {11,19,271},
		[7] = {21,273},
	},
	tianwang = {
		[1] = {29,30,34},
		[2] = {23,24,26},
		[3] = {33},
		[4] = {31,35,37},
		[5] = {40},
		[6] = {42},
		[7] = {32,36,41,324},
	},
	tangmen = {
		[1] = {45},
		[2] = {43,347},
		[3] = {303},
		[4] = {47,50,54,343},
		[5] = {345},
		[6] = {349},
		[7] = {48,58,249,341},
	},
	wudu = {
		[1] = {63,65},
		[2] = {60,62,67},
		[3] = {66,70},
		[4] = {64,68,69,384},
		[5] = {73,356},
		[6] = {72},
		[7] = {71,74,75},
	},
	emei = {
		[1] = {80,85},
		[2] = {77,79},
		[3] = {93},
		[4] = {82,89,385},
		[5] = {86},
		[6] = {92},
		[7] = {88,91,252,282},
	},
	cuiyan = {
		[1] = {99,102},
		[2] = {95,97},
		[3] = {269},
		[4] = {105,113},
		[5] = {100},
		[6] = {109},
		[7] = {108,111,114},
	},
	gaibang = {
		[1] = {119,122},
		[2] = {115,116},
		[3] = {129},
		[4] = {124,274},
		[5] = {277},
		[6] = {125,128},
		[7] = {130,360},
	},
	tianren = {
		[1] = {135,145},
		[2] = {131,132,136},
		[3] = {137},
		[4] = {138,140,141},
		[5] = {364},
		[6] = {143},
		[7] = {142,148,150},
	},
	wudang = {
		[1] = {153,155},
		[2] = {151,152},
		[3] = {159},
		[4] = {158,164},
		[5] = {160},
		[6] = {157},
		[7] = {165,166,267},
	},
	kunlun = {
		[1] = {169,179},
		[2] = {167,168,171,392},
		[3] = {174},
		[4] = {172,173,178,393},
		[5] = {175,181},
		[6] = {90,176},
		[7] = {182,275,630},
	},
}

function HocSkill()
	local szFaction = GetFaction()
	if tbAllSkill[szFaction] == nil then
	Talk(1, "", "Gia nh�p m�n ph�i �i �� r�i quay l�i t�m ta. ")
		return
	end
	for i=1,7 do
		if tbAllSkill[szFaction][i] ~= nil then
			for j=1, getn(tbAllSkill[szFaction][i]) do
				if HaveMagic(tbAllSkill[szFaction][i][j]) == -1 then
						AddMagic(tbAllSkill[szFaction][i][j])
				end
			end
		end
	end

end

------------------------------------------------------
tbAllSkill1 = {
	shaolin = {
		[1] = {318,319,321,709},
	},
	tianwang = {
		[1] = {322,323,325,708},
	},
	tangmen = {
		[1] = {339,302,342,351,710},
	},
	wudu = {
		[1] = {353,355,390,711},
	},
	emei = {
		[1] = {328,332,380,712},
	},
	cuiyan = {
		[1] = {336,337,713},
	},
	gaibang = {
		[1] = {357,359,714},
	},
	tianren = {
		[1] = {361,362,391,715},
	},
	wudang = {
		[1] = {365,368,716},
	},
	kunlun = {
		[1] = {372,375,394,717},
	},
}
function HocSkill1()
	local szFaction = GetFaction()
	if tbAllSkill1[szFaction] == nil then
	Talk(1, "", "Gia nh�p m�n ph�i �i �� r�i quay l�i t�m ta. ")
		return
	end
	for i=1,10 do
		if tbAllSkill1[szFaction][i] ~= nil then
			for j=1, getn(tbAllSkill1[szFaction][i]) do
				if HaveMagic(tbAllSkill1[szFaction][i][j]) == -1 then
						AddMagic(tbAllSkill1[szFaction][i][j],20)
				end
			end
		end
	end
	AddItem(6,1,2424,1,0,0)
	AddItem(6,1,2424,1,0,0)
	AddItem(6,1,2424,1,0,0)
	AddItem(6,1,2425,1,0,0)
	Talk(1, "", "L�nh h�i k� n�ng 10-120 th�nh c�ng.");
end

--==================================end ho tro hoc vo cong tan thu

function level_up_to79()
	local nCurLevel = GetLevel()
	local nAddLevel = 79 - nCurLevel
	ST_LevelUp(nAddLevel)
end

function level_up_to199()
	local nCurLevel = GetLevel()
	local nAddLevel =199 - nCurLevel
	ST_LevelUp(nAddLevel);
end

--================================ End Vao Phai Hoc Skill
SKILL_180 = {1220,1221,1223,1222,1224,1225,1227,1226,1228,1229}
local tbFaction =
{
	[1] =
	{
		szShowName = "Thi�u L�m",
		szFaction = "shaolin",
		nShortFaction = "sl",
		tbSkill = {318, 319, 321, 709, 1055, 1056, 1057},
	},
	[2] =
	{
		szShowName = "Thi�n V��ng Bang",
		szFaction = "tianwang",
		nShortFaction = "tw",
		tbSkill = {322, 325, 323, 708, 1058, 1059, 1060},
	},
	[3] =
	{
		szShowName = "���ng M�n",
		szFaction = "tangmen",
		nShortFaction = "tm",
		tbSkill = {339, 302, 342, 710, 1069, 1070, 1071},
	},
	[4] =
	{
		szShowName = "Ng� ��c Gi�o",
		szFaction = "wudu",
		nShortFaction = "wu",
		tbSkill = {353, 355, 711, 1066, 1067},
	},
	[5] =
	{
		szShowName = "Nga Mi",
		szFaction = "emei",
		nShortFaction = "em",
		tbSkill = {380, 328, 712, 1061, 1062, 1114},
	},
	[6] =
	{
		szShowName = "Th�y Y�n",
		szFaction = "cuiyan",
		nShortFaction = "cy",
		tbSkill = {336, 337, 713, 1063, 1065},
	},
	[7] =
	{
		szShowName = "C�i Bang",
		szFaction = "gaibang",
		nShortFaction = "gb",
		tbSkill = {357, 359, 714, 1073, 1074},
	},
	[8] =
	{
		szShowName = "Thi�n Nh�n Gi�o",
		szFaction = "tianren",
		nShortFaction = "tr",
		tbSkill = {361, 362, 715, 1075, 1076},
	},
	[9] =
	{
		szShowName = "V� �ang",
		szFaction = "wudang",
		nShortFaction = "wd",
		tbSkill = {365, 368, 716, 1078, 1079},
	},
	[10] =
	{
		szShowName = "C�n L�n",
		szFaction = "kunlun",
		nShortFaction = "kl",
		tbSkill = {372, 375, 717, 1080, 1081},
	},
}

local tbEquipFreeCell =
{
	{2, 1}, {2, 2}, {1, 1}, {1, 2}, {2, 1}, --�������������Ͻ䣬��������
	{2, 3}, {2, 4}, {2, 2}, {1, 2}, {1, 1}, --?��������ѥ�ӣ���׹��Ϣ��
}


local tbFactionSeries =
{
	[1] = {1, 2},
	[2] = {3, 4},
	[3] = {5, 6},
	[4] = {7, 8},
	[5] = {9, 10},
}

function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return
	end
	return 1
end

function choose_faction()
	if check_faction() ~= 1 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i r�i c�n mu�n g� n�a.")
		return
	end

	local nSeries = GetSeries() + 1
	local tbOpt = {}
	for i=1, getn(%tbFactionSeries[nSeries]) do
		local nIndex = %tbFactionSeries[nSeries][i]
		tinsert(tbOpt, {%tbFaction[nIndex].szShowName, set_faction, {nIndex}})
	end
	tinsert(tbOpt, {"Tr� v�", gm_tntn})
	tinsert(tbOpt, {"K�t th�c ��i tho�i."})
	CreateNewSayEx("<npc>M�t khi gia nh�p m�n ph�i kh�ng th� thay ��i, h�y suy ngh� k�.", tbOpt)
end

function set_faction(nIndex)
	local szTitle = format("<npc>X�c nh�n mu�n gia nh�p m�n ph�i ?<color=yellow>%s<color> m�n ph�i?", %tbFaction[nIndex].szShowName)
	local tbOpt =
	{
		{"X�c nh�n!", do_set_faction, {nIndex}},
		{"Tr� v�.", choose_faction},
		{"K�t th�c ��i tho�i."},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function danhhieu()
	local nFaction = GetLastFactionNumber() + 1
	if nFaction==0 then
		Say("Kh�ng c� m�n ph�i m� ��i nh�n danh hi�u, ta kh�ng c� th�i gian ��a v�i ng��i", 0)
		return
	end
	SetRank(DANH_HIEU[nFaction])
end

function do_set_faction(nIndex)
	if check_faction() ~= 1 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i.")
		return
	end

	if(GetLevel()<=119)then
		Talk(1,"no","C�p b�c c�a ng��i qu� th�p, t�nh n�ng n�y ch� h� tr� t� c�p 120 tr� �i. H�y v� r�n luy�n th�m �i sau n�y h�y t�i t�m ta.")
		return
	end

	local nResult = SetFaction(%tbFaction[nIndex].szFaction)
	if nResult == 0 then
		return
	end

	DynamicExecuteByPlayer(PlayerIndex, "\\script\\gmscript.lua", "AddSkillsTest", %tbFaction[nIndex].nShortFaction, 0)	-- H�m n�y th�m c�c skill 1x ��n 15x
	for i=1, getn(%tbFaction[nIndex].tbSkill) do		-- 90 , 120 , 150 h�m n�y add k� n�ng 150 v� th�ng c�p c�c k� n�ng l�n 20 -- kh�i nu�t ��i th�nh b� k�p
		AddMagic(%tbFaction[nIndex].tbSkill[i], 20)
	end
	AddMagic(210, 1) ---------- Khinh C�ng
	danhhieu();
	Talk(1, "KickOutSelf", format("Ng��i �� gia nh�p th�nh c�ng ph�i %s", %tbFaction[nIndex].szShowName))
end
--=============================== End Vao Phai Hoc Skill


--==========================================================================================

function dmcreattongtest1()
local strTongName = GetTongName()
local tszTitle = "Ch�o mong b�n �� tham gia h� th�ng <color=yellow>Bang H�i<color>"
if (strTongName == nil or strTongName == "") then
	Say(tszTitle,4," Nh�n �i�u ki�n t�o bang h�i/dmcreatetong","Gia nh�p bang h�i/dmjointong","T�o bang h�i/dmcreateit","K�t th�c ��i tho�i")
else
	Say(tszTitle,0)
end	
end

function dmcreatetong()	
if  GetCamp() ~= 4 then
		SetCamp(4)
		SetCurCamp(4)
		AddRepute(100000)
		AddLeadExp(1000000)
		AddLeadExp(1000000)
		AddLeadExp(1000000)
		AddEventItem(195)
	--	Earn(1000000)
		if GetLevel() <= 100 then
			for i=1,100 do
				AddOwnExp(100000000)
			end
		end
Msg2Player("<color=yellow>Ng��i �� h�i �� t�t c� �i�u ki�n �� t�o Bang H�i!<color>")
else
end
end

function dmjointong()
if  GetCamp() ~= 4 then

		if GetLevel() <= 100 then
			for i=1,100 do
				AddOwnExp(100000000)
			end
		end

		SetCamp(4)
		SetCurCamp(4)
Msg2Player("<color=yellow>Gia nh�p Bang h�i th�nh c�ng!<color>")
else
end
end

function dmcreateit()
	Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 1) then
		Say("Ti�p t�c t�o bang." ,2,"T�o bang/Direct_CreateTong","Ch� m�t ph�t/wait_a_moment")
	elseif (oper == 0) and (GetCamp() == 4) and (GetLevel() >= 50) and (GetReputeLevel(GetRepute()) >= 6) and (GetLeadLevel() >= 30) and (HaveItem(195) == 1) then
		Talk(6,"create_pay", "Ng��i ch�i: Ki�m hi�p ch��ng m�n nh�n, xin h�i ta ph�i l�m nh� th� n�o m�i ca th� khai t�ng l�p ph�i tr� th�nh Bang ch� ��y?", "Ki�m hi�p ch��ng m�n nh�n: ��u ti�n ng��i ph�i ca �� n�ng l�c l�nh ��o, ca 16 ng��i c�ng chU h��ng c�ng ng��i l�p bang, tr�i qua 3 ng�y Kh�o Nghi�m K� ", "Ch��ng m�n nh�n:  NOu trong 3 ng�y ca ng��i r�i bang th� n�i trong 3 ng�y �a ng��i ph�i t�m ng��i kh�c thay thO.", "Ch��ng m�n nh�n:  Ng��i ph�i ca �� t�i l�nh ��o v� tUn v�t �a l� Nh�c V��ng KiOm", "Ng��i ch�i: Nh�c V��ng KiOm ? Ng��i nai l� thanh kiOm n�y � ? ", "KiOm hi�p ch��ng m�n nh�n : Th� ra l� ng��i �� ca na... Kh�ng t�, qu� nhi�n tu�i tr� t�i cao!!! ")
	else	
		i = random(0,1)
		if (i == 0) then
			Talk(1,"", "Ki�m hi�p ch��ng m�n nh�n: n�u nh� t��ng th�nh l�p ch�nh ��ch bang h�i, s� v� tha n� l�c ��i l��ng th�i gian tinh l�c d� t�m huy�t, thi�t b�t kh� b� v� n�a ch�ng")
		else
			Talk(6,"", "Ki�m hi�p ch��ng m�n nh�n: ng��i v�n th�nh l�p bang h�i h�u �i�u ki�n g�, ta lai ch�m r�i ��ch gi�ng cho ng��i nghe", "Ki�m hi�p ch��ng m�n nh�n: ��u ti�n ng��i ph�i �� xu�t s� ��c l�p m�i b��c ch�n v�o giang h�; th� nh� ng��i kh�ng th� t�i b�t lu�n c�i g� bang h�i trung; l�n th� hai ng��i y�u c� nh�t ��nh ��ch giang h� danh v�ng; t�i h�u c�a ng��i ch� huy l�c b�t n�ng nh� 30 c�p")
		end
	end
end

function create_pay()
	Say("Ki�m hi�p ch��ng m�n nh�n: Ng��i c�n l� phi l� 100 v�n l��ng b�c." ,2,"Kh�ng th�nh v�n ��, ta ca �em 100v l��ng ��y! /create_pay_yes","H�y d�, ta kh�ng �em �� ti�n r�i. /create_pay_no")
end
function create_pay_yes()

--	if (GetCash() >= 1000000) then
--		Pay(1000000)				-- �շ�
		DelItem(195)			-- ɾ��ϵ�ص���
		SetTask(99,1)				-- �����ϱ�ǣ�ݬʱ����Ϊ�����еĵ�һ���ˣ����������ˣ���
		Direct_CreateTong()		-- ��ʼ����
		
--	else
--		Talk(1,"", "Ki�m hi�p ch��ng m�n nh�n: Vi�c duy tr� bang h�i r�t t�n ti�n, ng��i ph�i c� g�ng c�ng m�i ng��i tUch gap �� bang ���c gi�u m�nh. ")	end
end


function Direct_CreateTong()
	CreateTong(1)				-- ��������Ի��򣬽����ű�����
end

function hockhinhcong()
	AddMagic(210, 1)--hockhinhcong
end

--==========================================================================================
function gochienlong()
	Say("H�y ch�n c�ng m� b�n mu�n!", 4, "C�ng V� Di S�n/cong1","C�ng T��ng V�n ��ng/cong2","C�ng La Ti�u S�n/cong3", "��i m�t l�t �i!/OnCancel")
end

function cong1()
	Msg2Player("�� ��n Chi�n Long ��ng!")
	NewWorld(959, 1418, 3005);
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
end
function cong2()
	Msg2Player("�� ��n Chi�n Long ��ng!")
	NewWorld(959, 1548, 2995);
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
end
function cong3()
	Msg2Player("�� ��n Chi�n Long ��ng!")
	NewWorld(959, 1701, 3152);
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
end


function nhanmau01()
	AddItem(6,1,2527,1,0,0)
end

function duatop10() 	-- h�m th� �ua top
DynamicExecute("\\script\\vng_feature\\top10\\vngtop10.lua", "tbTop10:MainDialog", PlayerIndex) -------------- ch�y th� h�m �ua top
end 

function Quit()
end

function no()
end

