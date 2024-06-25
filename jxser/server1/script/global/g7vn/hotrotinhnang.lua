IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
--Include("\\script\\global\\hotrotanthu.lua")	--hç trî t©n thñ
--Include("\\script\\global\\hotrothem.lua")	-- hç trî ®å xanh
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\global\\platina_upgrade.lua")
Include("\\script\\½­ÄÏÇø\\ÁÙ°²\\ÁÙ°²\\npc\\Ö°ÄÜ_ÉñÃØÉÌÈË.lua")
--Include("\\script\\global\\tamhiep\\ephanche.lua")
Include("\\script\\task\\metempsychosis\\npc_saodiseng.lua")

DANH_HIEU={72,69,76,80,64,67,78,81,73,75}
tbChat = 
{
"<color=green>NhËn Full hç trî miÔn phÝ hoµn toµn <pic=115><pic=115><pic=115>",
"<color=blue> Trang chñ: volamkiemtong.com <pic=5>",
"<color=red><pic=137>18 giê 30 phót ngµy 26 th¸ng 4 - Opend m¸y chñ PhËt S¬n.<pic=115>",
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
SetNpcParam(nNpcIndex,1,1); --set index ®Çu tiªn cña table npc chat.
SetNpcTimer(nNpcIndex,500); --Tuú chØnh thêi gian npc tù chat (20 s)
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
	--NpcChat(nNpcIndex,"<color=orange>Gióp quý nh©n sü tr¶i nghiÖm tÝnh n¨ng ®éc ®¸o <color><pic=139> <enter> * <color=green>mau chãng ®Æt g¹ch nµo!",0)
	local szTitle = "<npc>Xin chµo ! Ta cã thÓ gióp g× ®¹i hiÖp ®iÒu g× ?"
	local tbOpt =
	{
		--{"Hç trî Kinh NghiÖm.",testgame1},
	--	{"Hç trî Kü n¨ng 10-120.",hockynang},
		--{"Hç trî c¸c lo¹i TiÒn.",testgame4},
		--{"Hç trî c¸c lo¹i Trang BÞ xanh.",laydoxanh},
	--	{"Hç trî c¸c lo¹i Trang BÞ AB DQ.",layabdq},
	--	{"Hç trî Trang BÞ M«n Ph¸i.",sethkmp},
	--	{"Hç trî Ngùa.",ngua},
	--	{"Hç trî Vßng S¸ng.",vongsang},
	--	{"TÈy tñy Nh©n VËt.",clear_attibute_point},
	--	{"Thµnh lËp bang héi",dmcreattongtest},
		{"Tho¸t."},
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
	local szTitle = "<npc>Xin chµo ! Ta cã thÓ gióp g× ®¹i hiÖp ®iÒu g× ?"
	local tbOpt =
	{
	--	{"0. Thö nghiÖm R­¬ng B¹ch Kim.",layruongbk},
		{"Trang BÞ Xanh.",laydoxanh},
	--	{"2. Trang BÞ TÝm.",tbtim1},
	--	{"3. Hç trî Trang BÞ M«n Ph¸i.",sethkmp},
	--	{"4. Hç trî Trang BÞ H¹n ChÕ.",gifthanchet7},
	--	{"Trang BÞ AB- §Q- §S. ",setabkphcnt},
	--	{"4. NhÉn V« Danh", nhanvodanh},
		{"Tho¸t."},
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
	local szTitle = "<npc>Mêi b¹n chän danh hiÖu. " 
	local tbOpt = 
	{ 
		{"1. Vâ l©m liªn ®Êu Qu¸n qu©n", abcxyz,{240}}, 
		{"2. Vâ l©m liªn ®Êu ¸ qu©n", abcxyz,{82}}, 
		{"3. Vâ L©m §Ö NhÊt Bang", abcxyz,{105}}, 
		{"4. Vâ L©m Minh Chñ", abcxyz,{3000}}, 
		{"5. Thiªn h¹ ®Ö nhÊt bang", abcxyz,{189}}, 
		{"6. Cao CÊp §Ö NhÊt Bang", abcxyz,{199}}, 
		{"7. Siªu CÊp §Ö NhÊt Bang", abcxyz,{198}}, 
		{"8. Vâ L©m ChÝ T«n", abcxyz,{210}}, 
		{"9. Thiªn H¹ V« Song", abcxyz,{211}}, 
		{"10. Th©n Thñ BÊt Phµm", abcxyz,{256}}, 
		{"11. Vang Danh Tø Ph­¬ng", abcxyz,{257}}, 
		{"12. Vâ Häc Kú Tµi", abcxyz,{258}}, 
		{"13. Thiªn H¹ V« Song", abcxyz,{211}}, 
		{"14. Th©n Thñ BÊt Phµm", abcxyz,{256}}, 
		{"15. Vang Danh Tø Ph­¬ng", abcxyz,{257}}, 
		{"Tho¸t"}, 
	} 
	CreateNewSayEx(szTitle, tbOpt) 
end
--=============tÈy tñy============
function clear_attibute_point()
	local tbOpt =
	{
		{"1. TÈy ®iÓm kü n¨ng.", clear_skill},
		{"2. TÈy ®iÓm tiÒm n¨ng.", clear_prop},
		{"3. KÕt thóc."},
	}
	CreateNewSayEx("<npc>H·y chän hç trî cÇn tÈy tñy.", tbOpt)
end

function clear_skill()
	local tbOpt =
	{
		{"X¸c nhËn.", do_clear_skill},
		{"§Ó ta suy nghÜ l¹i."},
	}
	CreateNewSayEx("<npc>Ng­¬i ®· suy nghÜ kü råi chø?", tbOpt)
end

function do_clear_skill()
	local i = HaveMagic(210)		-- Çá¹¦¸íÝâ²ï×÷
	local j = HaveMagic(400)		-- ¡°½ï¸»¼·Æ¶¡±¸íÝâ²ï×÷
	local n = RollbackSkill()		-- Çå³ý¼¼ÄÜ²¢·µ»ØËùÓÐ¼¼ÄÜ?ã£¨°üµ¨Çá¹¦µÈÌØÊâ¼¼ÄÜ£?
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		-- Õâ¸½¾äÅÐ¶ÏÊÇÅÅ³ý´ÓÎ´Ñ§¹ýÇá¹¦µÄÈË·µ»Ø-1´Ó¶øµ¼Ö¢µãÊý¼ÆËã´íÎóÇé¿ö
	if (j ~= -1) then x = x + j end
	local rollback_point = n - x			-- °Ñ¼¼ÄÜµãµ±×ö¿ÕÏÐµãÊý·µ»¹£¬µ«ÏÈ?Û³ýÇá¹¦µ?
	if (rollback_point + GetMagicPoint() < 0) then		-- Èç¹ûÏ´³É¸Ë¸ºÊý£¬Ôòµ±×÷0£¨ÎªÒÔºó¶µ´ÎÏ´µã±£?ô£?
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210, i) end			-- Èç¹ûÑ§¹uÇá¹¦Ô?¼Ó»ØÔ­ÓÐµÈ¼¶
	if (j ~= -1) then AddMagic(400, j) end			-- Èç¹ûÑ§¹u¡°½ï¸»¼AÆ¶¡±Ý¬Ñù´¦µí
	Msg2Player("TÈy tñy thµnh c«ng! Ng­¬i ca "..rollback_point.." ®iÓm kü n¨ng ®Ó ph©n phèi l¹i.")
	KickOutSelf()
end

function clear_prop()
	local tbOpt =
	{
		{"X¸c nhËn", do_clear_prop},
		{"§Ó ta suy nghÜ l¹i."},
	}
	CreateNewSayEx("<npc>Ng­¬i ®· suy nghÜ kü råi chø?", tbOpt)
end

function do_clear_prop()
	local base_str = {35,20,25,30,20}			-- ÎåÐÐÈËÎïµÄÌìÉúÊôÐÔÖµ
	local base_dex = {25,35,25,20,15}
	local base_vit = {25,20,25,30,25}
	local base_eng = {15,25,25,20,40}
	local player_series = GetSeries() + 1

	local Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))			-- ½«ÒÑ·ÖÅäÇ±ÄÜÖØÖ·£¨task(88)ÊÇÈÎÎñÖÐÖ±½Ó½±µøµÄ¸¦¸¿¡¢Éí·¨µÈ£©
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
end
---------------=================trung sinh=====================
function trungsinh() 
	local szTitle = "<npc>§¹i hiÖp cÇn Gióp g×? " 
	local tbOpt = 
	{ 
		{"1. NhËn B¾c §Èu Tr­êng Sinh ThuËt - C¬ Së Thiªn.", addcosothien}, 
		{"2. TiÕn hµnh trïng sinh nh©n vËt.",zhuansheng_want_learn}, 
		{"3. Tho¸t."}, 
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
	--	{"1. Trang bÞ xanh.", laydoxanh},
	--	{"1. Ph«i TÝm 6 dßng", dotim},
	--	{"2. HuyÒn tinh", huytin},
	--	{"3. §¸ Èn HiÖn", kdb},
		{"4. Thñy tinh", thuytinhquy},
		{"5. Phóc duyªn lé", phucd},
		{"6. THBT", tinhhong},
		{"7. Tho¸t"},
	}
	CreateNewSayEx("<npc> Ng­¬i muèn lÊy mãn g×?", tbOpt)
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
		"Ngù Long TÊn Phong Ph¸t C¬/#gifthanche3t7(793)",
		"V« YÓm Thu Thñy L­u Quang §¸i/#gifthanche3t7(801)",
		"Thiªn Quang §Þa Hµnh Thiªn Lý/#gifthanche3t7(843)",
		"L¨ng Nh¹c V« Ng· Thóc §¸i/#gifthanche3t7(881)",
		"Ma ThÞ LÖ Ma PhÖ T©m §¸i/#gifthanche3t7(876)",
		"§ång Cõu Ngù Long Ngäc Béi/#gifthanche3t7(855)",
		"Ma S¸t Cöu Háa L­u Thiªn Hoµng/#gifthanche3t7(868)",
		"CËp Phong Thóy Ngäc HuyÒn Hoµng UyÓn/#gifthanche3t7(888)",
		"V« Giang Thanh Phong NguyÔn KÞch/#gifthanche3t7(796)",
		"Trang sau/gifthanchet71",
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end

function gifthanchet71()
	local tab_Content = {
		"Tø Kh«ng §¹t Ma T¨ng Hµi/#gifthanche3t7(776)",
		"Minh Hoang Song Hoµn Xµ KhÊu/#gifthanche3t7(829)",
		"Thª Hoµng HuÖ T©m Tr­êng Sinh KhÊu/#gifthanche3t7(811)",
		"BÝch H¶i Hoµng Ch©u Tuyªn Thanh C©n/#gifthanche3t7(816)",
		"L«i Khung linh Ngäc Èn L«i/#gifthanche3t7(898)",
		"Chó Träc Trïng Cèt Ngäc Béi/#gifthanche3t7(834)",
		"§Þa Ph¸ch Phong Hoµng Thóc Yªn/#gifthanche3t7(854)",
		"Ma Hoµng Dung Kim §o¹n NhËt Giíi/#gifthanche3t7(874)",
		"S­¬ng Tinh L­u TØnh C¶n NguyÖt KhÊu/#gifthanche3t7(891)",
		"Phôc Ma V« L­îng Kim Cang UyÓn/#gifthanche3t7(771)",
		"Méng Long Tö Kim B¸t Nh·/#gifthanche3t7(769)",
		"Trang tr­íc/gifthanchet7",
		"Tho¸t/no",
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end

function gifthanche3t7(nId)
	tbGoldEquip = {
		{szName ="Trang bÞ h¹n chÕ M«n Ph¸i", tbProp = {0,nId},nQuality = 1}, --,nExpiredTime=10800
		};
		tbAwardTemplet:Give(tbGoldEquip[1], 1,{"",""});
end
--=====================================
----------------NhËn Th­ëng H»ng Ngµy----------------------------------
function NhanThuongHN()
local nNam = tonumber(GetLocalDate("%Y")); 
local nThang = tonumber(GetLocalDate("%m")); 
local nNgay = tonumber(GetLocalDate("%d")); 
local PTTanThu = 
{
{szName="<color=yellow>Ngò hoa ngäc lé hoµn cÈm nang", tbProp={6,1,2564}, nCount = 1, nBindState = -2},
{szName="<color=yellow>S¸t Thñ Gi¶n", tbProp={6,1,400,90,0,0}, nCount = 1, nExpiredTime = 1440, nBindState = -2},
{szName="<color=yellow>LÖnh Bµi Phong L¨ng §é", tbProp={4,489}, nCount = 1, nExpiredTime = 1440, nBindState = -2},
{szName="<color=yellow>Tiªn Th¶o Lé", tbProp={6,1,71}, nCount = 2, nExpiredTime = 1440, nBindState = -2},
}
	local EMPTY = 10
	if (CalcFreeItemCellCount() < EMPTY) then
	Say("H·y thu dän hµnh trang cßn <color=yellow>"..EMPTY.."<color> chæ trèng.", 0)
	return
	end
    local nTaskDayCount = PlayerFunLib:GetTaskDailyCount(nTaskDayhangngay)
    if nTaskDayCount > 0 then 
    Talk(1, "", "H«m nay ng­¬i ®· nhËn phÇn th­ëng nµy råi, h«m sau h·y quay l¹i.") 
    return 1; 
   else
    PlayerFunLib:AddTaskDaily(nTaskDayhangngay, 1)
	tbAwardTemplet:GiveAwardByList(PTTanThu, "PhÇn th­ëng");
	Msg2Player("NhËn phÇn th­ëng ngµy  <color=yellow>"..nNgay.." - "..nThang.." - "..nNam.."<color> thµnh c«ng."); 
    end 
end
--====================================Hç trî t©n thñ============================
function testgame1()
	local tbOpt =
	{
		{"1. Lªn lever 159. ", level_up_to200},
		{"2. NhËn ®iÓm Danh Väng. ", diemdanhvong},
		{"3. NhËn ®iÓm Phóc duyªn. ", diemphucduyen},
		{"4. NhËn ®iÓm Cèng hiÕn. ", conghien},
		{"5. NhËn ®iÓm tµi l·nh ®¹o. ", lanhdao},
		{"6. §æi mµu PK. ", trangthai},
		{"7. Tho¸t"},
	}
	CreateNewSayEx("<npc> Ng­¬i muèn lÊy mãn g×?", tbOpt)
end

function level_up_to150()
	local nCurLevel = GetLevel()
	if nCurLevel < 150 then
		ST_LevelUp(150- nCurLevel)
	end
	local tbItem = {
		{szName="Thæ §Þa Phï", tbProp={6,1,438,1,0,0}, nCount = 1},	
		{szName="ThÇn Hµnh Phï", tbProp={6,1,2841,1,0,0}, nCount = 1},
	}
	tbAwardTemplet:GiveAwardByList(tbItem, "Thuèc L¾c", 1)
end

function level_up_to200()
	local n_transcount = ST_GetTransLifeCount()
	if (n_transcount >3) then	
		Msg2Player("Trïng Sinh 3 trë ®i kh«ng thÓ nhËn hç trî TEST nµy."); 
	return end;

	local nCurLevel = GetLevel();

	if (n_transcount <=3) then
	ST_LevelUp(150- nCurLevel);
	end
	local tbItem = {
		{szName="Thæ §Þa Phï", tbProp={6,1,438,1,0,0}, nCount = 1},	
		{szName="ThÇn Hµnh Phï", tbProp={6,1,1266,1,0,0}, nCount = 1},
	}
	tbAwardTemplet:GiveAwardByList(tbItem, "Thuèc L¾c", 1)
end
function testgame4()
	local tbOpt =
	{
		{"1. 500 tiÒn ®ång. ", laytiendong},
		{"2. 50 ngµn v¹n.", laytienvan},
		{"3. 100k TÝch Lòy Tèng Kim.", diemtk},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc> Ng­¬i muèn lÊy  g×?", tbOpt)
end
function diemtk()
SetTask(747,GetTask (747)+100000)
end
function testgame6()
for i = 3093,3102 do 
	local tbItem = {
		{szName="Tr¸i C©y Bèn Mïa", tbProp={6,1,i,1,0,0}, nCount = 50},
	}
	tbAwardTemplet:GiveAwardByList(tbItem, "Nguyªn liÖu Event", 1)
end
end

function testgame7()
	local tbItem = {
		{szName="ChiÕn Cæ", tbProp={6,1,156,1,0,0}, nCount = 10},	
		{szName="LÖnh Bµi", tbProp={6,1,157,1,0,0}, nCount = 10},
		{szName="Phi Tèc", tbProp={6,1,190,1,0,0}, nCount = 10},	
	}
	tbAwardTemplet:GiveAwardByList(tbItem, "Thuèc L¾c", 1)

end

function testgame8()
	local tbItem = {
		{szName="Phi Tèc LÔ Bao", tbProp={6,1,2520,1,0,0}, nCount = 1},
		{szName="§¹i Lùc LÔ Bao", tbProp={6,1,2517,1,0,0}, nCount = 1},
		{szName="Thæ §Þa Phï", tbProp={6,1,438,1,0,0}, nCount = 1},	
		{szName="ThÇn Hµnh Phï", tbProp={6,1,2841,1,0,0}, nCount = 1},
		{szName="Tói m¸u- Ngò Hoa Lé", tbProp={6,1,4300,1,0,0}, nCount = 1},	
	}
	tbAwardTemplet:GiveAwardByList(tbItem, "Thuèc L¾c", 1)

end

function testchetao1()
	local tbItem = {
		{szName="Hoµng Kim B¶o R­¬ng", tbProp={6,1,4278,1,0,0}, nCount = 10},	
	}
	tbAwardTemplet:GiveAwardByList(tbItem, "HKBR", 1)
end
--=============================================================================================================================
function moreitem()
	local tab_Content = {
		" LÊy 500 tiÒn ®ång /laytiendong",
		" LÊy 50 ngµn v¹n l­îng /laytienvan",
		" NhËn ®iÓm Danh Väng /diemdanhvong",
		" NhËn ®iÓm Phóc duyªn /diemphucduyen",
		" NhËn ®iÓm Vinh Dù /diemvinhdu",
		" NhËn ®iÓm Cèng hiÕn /conghien",
		" NhËn ®iÓm tµi l·nh ®¹o /lanhdao",
		" Gia nhËp m«n ph¸i vµ häc skill 10 - 120./choose_faction",
		" Häc vâ c«ng 10 - 60./HoTroSkill",
		" Lªn lever 190./level_up_to190",
		" Lªn lever 79./level_up_to79",
		" 100 cuèn M§TB /mdtb",
		" §æi mµu PK /trangthai",
		" S¸t thñ gi¶n /stg",
		" KÕt thóc."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;

function tbhoangkimbk()
	local tbOpt =
	{
		{"500 tiÒn ®ång. ", laytiendong},
		{"10 ngµn v¹n.", laytienvan},
		--{"Lªn cÊp 199", level_up_to199},
		--{"Gia nhËp m«n ph¸i vµ häc skill 10 - 120", choose_faction},
		{"§iÓm Phóc Duyªn.",diemphucduyen},
		{"Trang bÞ xanh", tbtim1},
		--{"Set Trang bÞ M«n ph¸i", sethkmp},
		--{"Trang bÞ H¹n chÕ.", settbhanche},
		--{"ChÕ t¹o Trang BÞ B¹ch Kim.", chetaoBachKim},
		{"NhÉn V« Danh", nhanvodanh},
		{"NhËn set An Bang, §Þnh Quèc.",setabkphcnt},
		{"§¹i Thµnh BÝ KÝp", daithanhbk}, 
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc> Ng­¬i muèn lÊy mãn g×?", tbOpt)
end


function chetaoBachKim()
	local tbOpt =
	{
		{"ChÕ t¹o Trang BÞ B¹ch Kim (th­êng).", platina_main},
		{"ChÕ t¹o Trang BÞ B¹ch Kim (®Æc biÖt).", dialog_mainBK},
		{"Nguyªn liÖu chÕ t¹o trang bÞ B¹ch Kim.", nguyenlieuBK},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc> Ng­¬i muèn lÊy mãn g×?", tbOpt)
end


function nguyenlieuBK()
	if(CalcFreeItemCellCount() < 20)then
		Talk(1,"no","§Ó ®¶m b¶o kh«ng r¬i vËt phÈm ra ngoµi, cÇn 20 « trèng trong hµnh trang.")
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
			{szName="§¹i Thµnh BÝ KÝp 9x", tbProp={6,1,2424,1, 0, 0}, nCount = 2},
			{szName="§¹i Thµnh BÝ KÝp 12x", tbProp={6,1,2425,1, 0, 0}, nCount = 1},
		}			
	tbAwardTemplet:GiveAwardByList(ttltem, "PhÇn th­ëng t©n thñ");	
		
end

function settbhanche()
	local tbOpt =
	{
		{"H¹n chÕ ThiÕu L©m", hanchetl},
		{"H¹n chÕ Thiªn V­¬ng", hanchetv},
		{"H¹n chÕ Nga Mi", hanchenm},
		{"H¹n chÕ Thóy Yªn", hanchety},
		{"H¹n chÕ Ngñ §éc", hanchend},
		{"H¹n chÕ §­êng M«n", hanchedm},
		{"H¹n chÕ C¸i Bang", hanchecb},
		{"H¹n chÕ Thiªn NhÈn", hanchetn},
		{"H¹n chÕ Vâ §ang", hanchevd},
		{"H¹n chÕ C«n L«n", hanchecl},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc> Ng­¬i muèn lÊy mãn g×?", tbOpt)
end

function hanchetl()
	AddGoldItem(0, 769)-- thiÕu l©m
	AddGoldItem(0, 771)
	AddGoldItem(0, 776)
end
function hanchetv()
	AddGoldItem(0, 793) -- Thiªn v­¬ng ®ao
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
	AddGoldItem(0, 855) -- c¸i bang
end
function hanchetn()
	AddGoldItem(0, 868) -- thiªn nhÈn
	AddGoldItem(0, 874)
	AddGoldItem(0, 876)
end
function hanchevd()
	AddGoldItem(0, 881) -- vâ ®ang
	AddGoldItem(0, 888)
end
function hanchecl()
	AddGoldItem(0, 891) -- c«n l«n
	AddGoldItem(0, 898)
	AddGoldItem(0, 901)
end
function hanchety()
	AddGoldItem(0, 811) -- Thóy Yªn
	AddGoldItem(0, 816) -- Thóy Yªn
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
		{"Tr¾ng", mautrang},
		{"ChÝnh ph¸i", mauvang},
		{"Tµ ph¸i", mautim},
		{"Trung lËp", mauxanh},
		{"S¸t Thñ", maudo},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc>Chän mµu", tbOpt)
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
		{"ThiÕu l©m", bktl},
		{"Thiªn v­¬ng", bktv},
		{"§­êng m«n", bkdm},
		{"Ngò ®éc", bk5d},
		{"Nga mi", bknm},
		{"Thuý yªn", bkty},
		{"C¸i bang", bkcb},
		{"Thiªn nhÉn", bktn},
		{"Vâ ®ang", bkvd},
		{"C«n l«n", bkcl},
		{"Trë l¹i", dialog_main},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc>Chän m«n ph¸i?", tbOpt)
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
	Msg2Player("NhËn ®­îc 1000 ®iÓm danh väng.");
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
		Talk(1, "", "TiÒn ®ång trong tói ng­¬i dïng ch­a hÕt th× lÊy lµm g× cho nhiÒu.")
	else
		AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		Msg2Player("NhËn ®­îc 500 tiÒn ®ång.");
	end
end;

function laytienvan()
	if (GetCash() >= 500000000) then 	--  50 ngµn v¹n
		Talk(1, "", "Ng©n l­îng trong tói ng­¬i dïng ch­a hÕt th× lÊy lµm g× cho nhiÒu.")
	else
		Earn(500000000)
		Msg2Player("NhËn ®­îc 500000000 v¹n l­îng.");
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
	g_AskClientNumberEx(0, nMaxCount, "Xin mêi ®­a vµo nhËn lÊy", {get_item_back, {nIndex}})
end

function get_item_back(nIndex, nCount)
	if nCount <= 0 then
		return
	end
	if CalcFreeItemCellCount() < nCount then
		Talk(1, "", format("CÇn Ýt nhÊt <color=yellow>%d<color> « trèng trong hµnh trang", nCount))
		return
	end
	local szLogTitle = format("[liguan]get_free_item_%s", %tbFreeItem[nIndex].szName)
	tbAwardTemplet:GiveAwardByList(%tbFreeItem[nIndex], szLogTitle, nCount)
end

function get_single_item(nIndex)
	local tbItem = %tbFreeItem[nIndex]
	if CountFreeRoomByWH(tbItem.nWidth, tbItem.nHeigth) < 1 then
		Talk(1, "", format("CÇn Ýt nhÊt 1 %dx%d «  trèng trong hµnh trang.", tbItem.nWidth, tbItem.nHeigth))
		return
	end
	local szLogTitle = format("[liguan]get_free_item_%s", tbItem.szName)
	tbAwardTemplet:GiveAwardByList(tbItem, szLogTitle)
end


function write_info()
	tbInputDialog:InputServer()
end

function dotim()	local tab_Content = {
		"Vò KhÝ/weapon",
		"Y Phôc/shirt",
		"§Ønh M¹o/hat",
		"Hæ UyÓn/glove",
		"Yªu §¸i/belt",
		"Hµi Tö/shoe",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;


function weapon()
	local tab_Content = {
		"KiÕm/kiem",
		"§ao/dao",
		"Bæng/bong",
		"Th­¬ng/kick",
		"Chïy/chuy",
		"Song §ao/songdao",
		"Phi Tiªu/phitieu",
		"Phi §ao/phidao",
		"Tô TiÔn/tutien",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"ThÊt B¶o Cµ Sa/aothieulam",
		"Ch©n Vò Th¸nh Y/aovodang",
		"Thiªn NhÉn MËt Trang/aothiennhan",
		"Gi¸ng Sa Bµo/sabao",
		"§­êng Nghª Gi¸p/dng",
		"V¹n L­u Quy T«ng Y/aocaibang",
		"TuyÒn Long Bµo/longbao",
		"Long Tiªu §¹o Y/daoy",
		"Cöu VÜ B¹ch Hå Trang/hotrang",
		"TrÇm H­¬ng Sam/huongsam",
		"TÝch LÞch Kim Phông Gi¸p/kimphung",
		"V¹n Chóng TÒ T©m Y/tamy",
		"L­u Tiªn QuÇn/tienquan",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"Tú L« M·o/lomao",
		"Ngò L·o Qu¸n/laoquan",
		"Tu La Ph¸t KÕt/phatket",
		"Th«ng Thiªn Ph¸t Qu¸n/phatquan",
		"YÓm NhËt Kh«i/nhatkhoi",
		"TrÝch Tinh Hoµn/tinhhoan",
		"¤ Tµm M·o/tammao",
		"Quan ¢m Ph¸t Qu¸n/quanam",
		"¢m D­¬ng V« Cùc Qu¸n/amduong",
		"HuyÒn Tª DiÖn Tr¸o/dientrao",
		"Long HuyÕt §Çu Hoµn/longhuyet",
		"Long L©n Kh«i/lankhoi",
		"Thanh Tinh Thoa/tinhthoa",
		"Kim Phông TriÓn SÝ/triensi",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"Long Phông HuyÕt Ngäc Tr¹c/ngoctrac",
		"Thiªn Tµm Hé UyÓn/houyen",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"Thiªn Tµm Yªu §¸i/thientamyeu",
		"B¹ch Kim Yªu §¸i/bachkimyendai",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"Cöu TiÕt X­¬ng VÜ Ngoa/cuutien",
		"Thiªn Tµm Ngoa/thientam",
		"Kim Lò Hµi/kimlu",
		"Phi Phông Ngoa/phiphung",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		{"ThiÕu l©m", bktl},
		{"Thiªn v­¬ng", bktv},
		{"®­êng m«n", bkdm},
		{"Ngò ®éc", bk5d},
		{"Nga mi", bknm},
		{"Thuý yªn", bkty},
		{"C¸i bang", bkcb},
		{"Thiªn nhÉn", bktn},
		{"Vâ ®ang", bkvd},
		{"C«n l«n", bkcl},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc>Chän m«n ph¸i?", tbOpt)
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
		"Rêi khái/no",
		"ThiÕu L©m QuyÒn/#setsonglo1(1)",
		"ThiÕu L©m C«n/#setsonglo1(2)",
		"ThiÕu L©m §ao/#setsonglo1(3)",
		"Thiªn V­¬ng chïy/#setsonglo1(4)",
		"Thiªn V­¬ng th­¬ng/#setsonglo1(5)",
		"Thiªn V­¬ng ®ao/#setsonglo1(6)",
		"Nga My KiÕm/#setsonglo1(7)",
		"Nga My ch­ëng/#setsonglo1(8)",
		"Nga My buff/#setsonglo1(9)",
		"Thóy Yªn ®ao/#setsonglo1(10)",
		"Thóy Yªn song ®ao/#setsonglo1(11)",
		"Ngò §éc ch­ëng/#setsonglo1(12)",
		"Ngò §éc ®ao/#setsonglo1(13)",
		"Ngò §éc bïa/#setsonglo1(14)",
		"Trang sau/setsonglo2",
		
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function setsonglo2()
	local tab_Content = {
		"Rêi khái/no",
		"§­êng M«n phi ®ao/#setsonglo1(15)",
		"§­êng M«n tô tiÔn/#setsonglo1(16)",
		"§­êng M«n phi tiªu/#setsonglo1(17)",
		"§­êng M«n bÉy/#setsonglo1(18)",
		"C¸i Bang rång/#setsonglo1(19)",
		"C¸i Bang bæng/#setsonglo1(20)",
		"Thiªn NhÉn kÝch/#setsonglo1(21)",
		"Thiªn NhÉn ®ao/#setsonglo1(22)",
		"Thiªn NhÉn bïa/#setsonglo1(23)",
		"Vâ §ang khÝ /#setsonglo1(24)",
		"Vâ §ang kiÕm/#setsonglo1(25)",
		"C«n L«n ®ao/#setsonglo1(26)",
		"C«n L«n kiÕm/#setsonglo1(27)",
		"C«n L«n bïa/#setsonglo1(28)",
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function setsonglo1(nId)
for i=2975,2985 do AddGoldItem(0,10*nId+i-10) end
end


function sethkmp()
	local tab_Content = {
		"Rêi khái/no",
		"ThiÕu L©m quyÒn/#sethkmp1(1)",
		"ThiÕu L©m c«n/#sethkmp1(2)",
		"ThiÕu L©m ®ao/#sethkmp1(3)",
		"Thiªn V­¬ng chïy/#sethkmp1(4)",
		"Thiªn V­¬ng th­¬ng/#sethkmp1(5)",
		"Thiªn V­¬ng ®ao/#sethkmp1(6)",
		"Nga My kiÕm/#sethkmp1(7)",
		"Nga My ch­ëng/#sethkmp1(8)",
		"Nga My buff/#sethkmp1(9)",
		"Thóy Yªn ®ao/#sethkmp1(10)",
		"Thóy Yªn song ®ao/#sethkmp1(11)",
		"Ngò §éc ch­ëng/#sethkmp1(12)",
		"Ngò §éc ®ao/#sethkmp1(13)",
		"Ngò §éc bïa/#sethkmp1(14)",
		"Trang sau/sethkmp2",
		
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function sethkmp2()
	local tab_Content = {
		"Rêi khái/no",
		"§­êng M«n phi ®ao/#sethkmp1(15)",
		"§­êng M«n tô tiÔn/#sethkmp1(16)",
		"§­êng M«n phi tiªu/#sethkmp1(17)",
		"§­êng M«n bÉy/#sethkmp1(18)",
		"C¸i Bang rång/#sethkmp1(19)",
		"C¸i Bang bæng/#sethkmp1(20)",
		"Thiªn NhÉn kÝch/#sethkmp1(21)",
		"Thiªn NhÉn ®ao/#sethkmp1(22)",
		"Thiªn NhÉn bïa/#sethkmp1(23)",
		"Vâ §ang khÝ /#sethkmp1(24)",
		"Vâ §ang kiÕm/#sethkmp1(25)",
		"C«n L«n ®ao/#sethkmp1(26)",
		"C«n L«n kiÕm/#sethkmp1(27)",
		"C«n L«n bïa/#sethkmp1(28)",
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function sethkmp1(nId)
	for i=1,5 do AddGoldItem(0,5*nId+i-5) end
end

function setxl()
local tab_Content = {
"Rêi Khái/no",
"ThiÕu L©m QuyÒn/#setxl1(1)",
"ThiÕu L©m Bçng/#setxl1(2)",
"ThiÕu L©m §ao/#setxl1(3)",
"Thiªn V­¬ng Chïy/#setxl1(4)",
"Thiªn V­¬ng Th­¬ng/#setxl1(5)",
"Thiªn V­¬ng §ao/#setxl1(6)",
"Nga My KiÕm/#setxl1(7)",
"Nga My Ch­ëng/#setxl1(8)",
"Thóy Yªn §ao/#setxl1(9)",
"Thóy Yªn Song §ao/#setxl1(10)",
"Ngò §éc Chuáng/#setxl1(11)",
"Ngò §éc §ao/#setxl1(12)",
"§­êng M«n Phi §ao/#setxl1(13)",
"§­¬ng M«n Nâ/#setxl1(14)",
"Trang sau/setxl2",

}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function setxl2()
local tab_Content = {
"Rêi Khái/no",
"§­êng M«n Phi Tiªu/#setxl1(15)",
"C¸i Bang Rång/#setxl1(16)",
"C¸i Bang Bçng/#setxl1(17)",
"Thiªn NhÈn KÝch/#setxl1(18)",
"Thiªn NhÉn §ao/#setxl1(19)",
"Vâ §ang KiÕm/#setxl1(20)",
"Vâ §ang QuyÒn/#setxl1(21)",
"C«n L«n §ao/#setxl1(22)",
"C«n L«n KiÕm/#setxl1(23)",

}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function setxl1(nId)
for i=2515,2525 do AddGoldItem(0,10*nId+i-10) end
end

function setmp()
local tab_Content = {
"Rêi Khái/no",
"ThiÕu L©m QuyÒn/#setmp1(1)",
"ThiÕu L©m Bçng/#setmp1(2)",
"ThiÕu L©m §ao/#setmp1(3)",
"Thiªn V­¬ng Chïy/#setmp1(4)",
"Thiªn V­¬ng Th­¬ng/#setmp1(5)",
"Thiªn V­¬ng §ao/#setmp1(6)",
"Nga My KiÕm/#setmp1(7)",
"Nga My Ch­ëng/#setmp1(8)",
"Thóy Yªn §ao/#setmp1(9)",
"Thóy Yªn Song §ao/#setmp1(10)",
"Ngò §éc Chuáng/#setmp1(11)",
"Ngò §éc §ao/#setmp1(12)",
"§­êng M«n Phi §ao/#setmp1(13)",
"§­¬ng M«n Nâ/#setmp1(14)",
"Trang sau/setmp2",

}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function setmp2()
local tab_Content = {
"Rêi Khái/no",
"§­êng M«n Phi Tiªu/#setmp1(15)",
"C¸i Bang Rång/#setmp1(16)",
"C¸i Bang Bçng/#setmp1(17)",
"Thiªn NhÈn KÝch/#setmp1(18)",
"Thiªn NhÉn §ao/#setmp1(19)",
"Vâ §ang KiÕm/#setmp1(20)",
"Vâ §ang QuyÒn/#setmp1(21)",
"C«n L«n §ao/#setmp1(22)",
"C«n L«n KiÕm/#setmp1(23)",

}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function setmp1(nId)
for i=2745,2755 do AddGoldItem(0,10*nId+i-10) end
end

tbDoXanh =
{
[1]=
{
szName = "D©y chuyÒn",
tbEquip =
{
{"Toµn th¹ch h¹ng liªn",0,4,0},
{"Lôc PhØ Thóy Hé Th©n phï ",0,4,1},
}
},
[2]=
{
szName = "¸o gi¸p",
tbEquip =
{
{"ThÊt B¶o Cµ Sa",0,2,0},
{"Ch©n Vò Th¸nh Y",0,2,1},
{"Thiªn NhÉn MËt Trang",0,2,2},
{"Gi¸ng Sa Bµo",0,2,3},
{"§­êng Nghª gi¸p",0,2,4},
{"V¹n L­u Quy T«ng Y",0,2,5},
{"TuyÒn Long bµo",0,2,6},
{"Long Tiªu ®¹o Y",0,2,8},
{"Cöu VÜ B¹ch Hå trang",0,2,9},
{"TrÇm H­¬ng sam",0,2,10},
{"TÝch LÞch Kim Phông gi¸p",0,2,11},
{"V¹n Chóng TÒ T©m Y",0,2,12},
{"L­u Tiªn QuÇn",0,2,13},
}
},
[3]=
{
szName = "§ai l­ng",
tbEquip =
{
{"Thiªn Tµm Yªu §¸i",0,6,0},
{"B¹ch Kim Yªu §¸i",0,6,1},
}
},
[4]=
{
szName = "Giµy",
tbEquip =
{
{"Cöu TiÕt X­¬ng VÜ Ngoa",0,5,0},
{"Thiªn Tµm Ngoa",0,5,1},
{"Kim Lò hµi",0,5,2},
{"Phi Phông Ngoa",0,5,3},
}
},
[5]=
{
szName = "Bao tay",
tbEquip =
{
{"Long Phông HuyÕt Ngäc Tr¹c",0,8,0},
{"Thiªn Tµm Hé UyÓn",0,8,1},
}
},
[6]=
{
szName = "Nãn",
tbEquip =
{
{"Tú L« m·o",0,7,0},
{"Ngò l·o qu¸n",0,7,1},
{"Tu La Ph¸t kÕt",0,7,2},
{"Th«ng Thiªn Ph¸t Qu¸n",0,7,3},
{"YÓm NhËt kh«i",0,7,4},
{"TrÝch Tinh hoµn",0,7,5},
{"¤ Tµm M·o",0,7,6},
{"Quan ¢m Ph¸t Qu¸n",0,7,7},
{"¢m D­¬ng V« Cùc qu¸n",0,7,8},
{"HuyÒn Tª DiÖn Tr¸o",0,7,9},
{"Long HuyÕt §Çu hoµn",0,7,10},
{"Long L©n Kh«i",0,7,11},
{"Thanh Tinh Thoa",0,7,12},
{"Kim Phông TriÓn SÝ ",0,7,13},
}
},
[7]=
{
szName = "Vò khÝ c©n chiÕn",
tbEquip =
{
{"HuyÒn ThiÕt KiÕm",0,0,0},
{"§¹i Phong §ao",0,0,1},
{"Kim C« Bæng",0,0,2},
{"Ph¸ Thiªn KÝch",0,0,3},
{"Ph¸ Thiªn chïy",0,0,4},
{"Th«n NhËt Tr·m",0,0,5},
}
},
[8]=
{
szName = "Ngäc béi",
tbEquip =
{
{"Long Tiªn H­¬ng Nang",0,9,0},
{"D­¬ng Chi B¹ch Ngäc",0,9,1},
}
},
[9]=
{
szName = "Vò khÝ tÇm xa",
tbEquip =
{
{"B¸ V­¬ng Tiªu",0,1,0},
{"To¸i NguyÖt §ao",0,1,1},
{"Khæng T­íc Linh",0,1,2},
}
},
[10]=
{
szName = "NhÉn",
tbEquip =
{
{"Toµn Th¹ch Giíi ChØ ",0,3,0},
}
},
}

function laydoxanh()
	local tbOpt = {}
	for i=1, getn(tbDoXanh) do
	tinsert(tbOpt, {tbDoXanh[i].szName, laydoxanh1, {i}})
end

tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
CreateNewSayEx("<npc>Xin mêi lùa chän trang bÞ:", tbOpt)
end

function laydoxanh1(nType)
	local tbEquip = %tbDoXanh[nType]["tbEquip"]
	local tbOpt = {}
	for i=1, getn(tbEquip) do
	tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType}})
end

tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
local szTitle = format("<npc>Xin mêi lùa chän trang bÞ:")
CreateNewSayEx(szTitle, tbOpt)
end

function laydoxanh2(nIndex, nType)
	local tbOpt = {}
	tinsert(tbOpt, {"Kim", laydoxanh3, {nIndex, nType, 0}})
	tinsert(tbOpt, {"Méc", laydoxanh3, {nIndex, nType, 1}})
	tinsert(tbOpt, {"Thñy", laydoxanh3, {nIndex, nType, 2}})
	tinsert(tbOpt, {"Háa", laydoxanh3, {nIndex, nType, 3}})
	tinsert(tbOpt, {"Thæ ", laydoxanh3, {nIndex, nType, 4}})
	tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
	local szTitle = format("<npc>Chän hÖ:")
	CreateNewSayEx(szTitle, tbOpt)
end

function laydoxanh3(nIndex, nType, nSeries)
	g_AskClientNumberEx(0, 500, "NhËp sè l­îng:", {laydoxanh4, {nIndex, nType, nSeries}})
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
		"Rêi khái/no",
		"ThiÕu L©m quyÒn/#sethkmp1(1)",
		"ThiÕu L©m c«n/#sethkmp1(2)",
		"ThiÕu L©m ®ao/#sethkmp1(3)",
		"Thiªn V­¬ng chïy/#sethkmp1(4)",
		"Thiªn V­¬ng th­¬ng/#sethkmp1(5)",
		"Thiªn V­¬ng ®ao/#sethkmp1(6)",
		"Nga My kiÕm/#sethkmp1(7)",
		"Nga My ch­ëng/#sethkmp1(8)",
		"Nga My buff/#sethkmp1(9)",
		"Thóy Yªn ®ao/#sethkmp1(10)",
		"Thóy Yªn song ®ao/#sethkmp1(11)",
		"Ngò §éc ch­ëng/#sethkmp1(12)",
		"Ngò §éc ®ao/#sethkmp1(13)",
		"Ngò §éc bïa/#sethkmp1(14)",
		"Trang sau/sethkmp2",
		
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end

function sethkmp2()
	local tab_Content = {
		"Rêi khái/no",
		"§­êng M«n phi ®ao/#sethkmp1(15)",
		"§­êng M«n tô tiÔn/#sethkmp1(16)",
		"§­êng M«n phi tiªu/#sethkmp1(17)",
		"§­êng M«n bÉy/#sethkmp1(18)",
		"C¸i Bang rång/#sethkmp1(19)",
		"C¸i Bang bæng/#sethkmp1(20)",
		"Thiªn NhÉn kÝch/#sethkmp1(21)",
		"Thiªn NhÉn ®ao/#sethkmp1(22)",
		"Thiªn NhÉn bïa/#sethkmp1(23)",
		"Vâ §ang khÝ /#sethkmp1(24)",
		"Vâ §ang kiÕm/#sethkmp1(25)",
		"C«n L«n ®ao/#sethkmp1(26)",
		"C«n L«n kiÕm/#sethkmp1(27)",
		"C«n L«n bïa/#sethkmp1(28)",
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end

function setabkphcnt()
	local tab_Content = {
		"1. Set §Þnh Quèc Cùc PhÈm/setdqcp",
		"2. Set An Bang Cùc PhÈm/setabcp",
		"3. Set HiÖp Cèt Nhu T×nh Cùc PhÈm /sethcntcp",
		"4. Set §éng s¸t /setds",
		"5. Rêi khái/no",
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
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
--======================= ®å phæ
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
--====================================== ®å phæ
--========================== m¶nh hoµng kim
function manhhoangkim12()
	local tbOpt =
	{
		{"M¶nh Tôc NghiÖp B¹ch Hæ V« Song KhÊu", mhkphai1},
		{"M¶nh Vô Ho¸n Hñ Cèt Hé UyÓn", mhkphai2},
		{"M¶nh §Þch Kh¸i CÈu TÝch B× Hé UyÓn", mhkphai3},
		{"M¶nh Tø Kh«ng Hé Ph¸p Yªu §¸i", mhkphai4},
		{"M¶nh V« Gian PhÊt V©n Ty §¸i", mhkphai5},
		{"M¶nh B¨ng Hµn T©m TiÔn Yªu KhÊu", mhkphai6},
		{"M¶nh L¨ng Nh¹c Né L«i Ph¸p Giíi", mhkphai7},
		{"M¶nh Thª Hoµng Phong TuyÕt B¹ch V©n Yªu §¸i", mhkphai8},
		{"M¶nh S­¬ng Tinh Thanh Phong L÷ §¸i", mhkphai9},
		{"M¶nh Ma S¸t Tµn D­¬ng ¸nh HuyÕt Gi¸p", mhkphai10},
		{"Trang 2", mhktrangke},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc> Ng­¬i muèn lÊy mãn g×?", tbOpt)
end

function mhktrangke()
	local tbOpt =
	{
		{"M¶nh Tø Kh«ng Gi¸ng Ma Giíi ®ao", mhkphai11},
		{"M¶nh Phôc Ma Tö Kim C«n", mhkphai12},
		{"M¶nh §¹i Nh·n ThÇn Chïy", mhkphai13},
		{"M¶nh B«n L«i Toµn Long Th­¬ng", mhkphai14},
		{"M¶nh L­îng Ng©n B¶o §ao", mhkphai15},
		{"M¶nh U Lung Kim Xµ Ph¸t ®¸i", mhkphai16},
		{"M¶nh Minh ¶o Tµ S¸t §éc NhËn", mhkphai17},
		{"M¶nh Hoa Vò M¹n Thiªn", mhkphai18},
		{"M¶nh B¨ng Hµn §µn ChØ Phi §ao", mhkphai19},
		{"M¶nh Phi Tinh §o¹t Hån", mhkphai20},
		{"M¶nh TÈy T­îng Ngäc KhÊu", mhkphai21},
		{"M¶nh Hång Truy NhuyÔn Th¸p hµi", mhkphai22},
		{"Trang 3", mhktrangke1},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc> Ng­¬i muèn lÊy mãn g×?", tbOpt)
end

function mhktrangke1()
	local tbOpt =
	{
		{"M¶nh V« Gian û Thiªn KiÕm", mhkphai23},
		{"M¶nh Tª Hoµng Phông NghÜa §ao", mhkphai24},
		{"M¶nh Thª Hoµng B¨ng Tuy CÈm UyÓn", mhkphai25},
		{"M¶nh U Minh Th­¬ng", mhkphai26},
		{"M¶nh Ma ThÞ s¬n  H¶i Phi Hång Lý", mhkphai27},
		{"M¶nh §ång Cõu Gi¸ng Long C¸i Y", mhkphai28},
		{"M¶nh §ång Cõu Kh¸ng Long Hé UyÓn", mhkphai29},
		{"M¶nh Lôc Ngäc Tr­îng", mhkphai30},
		{"M¶nh L«i Khung Hµn Tïng B¨ng B¸ch Qu¸n", mhkphai31},
		{"M¶nh Thiªn Niªn Hµn ThiÕt", mhkphai32},
		{"M¶nh Ch©n Vò KiÕm", mhkphai33},
		{"M¶nh L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi", mhkphai34},
		{"Trang ®Çu", manhhoangkim12},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc> Ng­¬i muèn lÊy mãn g×?", tbOpt)
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

--========================================== m¶nh hoµng kim


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
	Talk(1, "", "Gia nhËp m«n ph¸i ®i ®¶ råi quay l¹i t×m ta. ")
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
	Talk(1, "", "Gia nhËp m«n ph¸i ®i ®¶ råi quay l¹i t×m ta. ")
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
	Talk(1, "", "LÜnh héi kü n¨ng 10-120 thµnh c«ng.");
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
		szShowName = "ThiÕu L©m",
		szFaction = "shaolin",
		nShortFaction = "sl",
		tbSkill = {318, 319, 321, 709, 1055, 1056, 1057},
	},
	[2] =
	{
		szShowName = "Thiªn V­¬ng Bang",
		szFaction = "tianwang",
		nShortFaction = "tw",
		tbSkill = {322, 325, 323, 708, 1058, 1059, 1060},
	},
	[3] =
	{
		szShowName = "§­êng M«n",
		szFaction = "tangmen",
		nShortFaction = "tm",
		tbSkill = {339, 302, 342, 710, 1069, 1070, 1071},
	},
	[4] =
	{
		szShowName = "Ngò §éc Gi¸o",
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
		szShowName = "Thóy Yªn",
		szFaction = "cuiyan",
		nShortFaction = "cy",
		tbSkill = {336, 337, 713, 1063, 1065},
	},
	[7] =
	{
		szShowName = "C¸i Bang",
		szFaction = "gaibang",
		nShortFaction = "gb",
		tbSkill = {357, 359, 714, 1073, 1074},
	},
	[8] =
	{
		szShowName = "Thiªn NhÉn Gi¸o",
		szFaction = "tianren",
		nShortFaction = "tr",
		tbSkill = {361, 362, 715, 1075, 1076},
	},
	[9] =
	{
		szShowName = "Vâ §ang",
		szFaction = "wudang",
		nShortFaction = "wd",
		tbSkill = {365, 368, 716, 1078, 1079},
	},
	[10] =
	{
		szShowName = "C«n L«n",
		szFaction = "kunlun",
		nShortFaction = "kl",
		tbSkill = {372, 375, 717, 1080, 1081},
	},
}

local tbEquipFreeCell =
{
	{2, 1}, {2, 2}, {1, 1}, {1, 2}, {2, 1}, --¾±´ø£¬¶¥´÷£¬ÉÏ½ä£¬»¤Ýó£¬Ñü´ø
	{2, 3}, {2, 4}, {2, 2}, {1, 2}, {1, 1}, --?¢Îï£¬ÎäÆ÷£¬Ñ¥×Ó£¬Ñü×¹£¬Ï¢½ä
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
		Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i råi cßn muèn g× n÷a.")
		return
	end

	local nSeries = GetSeries() + 1
	local tbOpt = {}
	for i=1, getn(%tbFactionSeries[nSeries]) do
		local nIndex = %tbFactionSeries[nSeries][i]
		tinsert(tbOpt, {%tbFaction[nIndex].szShowName, set_faction, {nIndex}})
	end
	tinsert(tbOpt, {"Trë vª", gm_tntn})
	tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
	CreateNewSayEx("<npc>Mét khi gia nhËp m«n ph¸i kh«ng thÓ thay ®æi, h·y suy nghÜ kü.", tbOpt)
end

function set_faction(nIndex)
	local szTitle = format("<npc>X¸c nhËn muèn gia nhËp m«n ph¸i ?<color=yellow>%s<color> m«n ph¸i?", %tbFaction[nIndex].szShowName)
	local tbOpt =
	{
		{"X¸c nhËn!", do_set_faction, {nIndex}},
		{"Trë vª.", choose_faction},
		{"Kªt thóc ®èi tho¹i."},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function danhhieu()
	local nFaction = GetLastFactionNumber() + 1
	if nFaction==0 then
		Say("Kh«ng cã m«n ph¸i mµ ®ßi nhËn danh hiÖu, ta kh«ng cã thêi gian ®ïa víi ng­¬i", 0)
		return
	end
	SetRank(DANH_HIEU[nFaction])
end

function do_set_faction(nIndex)
	if check_faction() ~= 1 then
		Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i.")
		return
	end

	if(GetLevel()<=119)then
		Talk(1,"no","CÊp bËc cña ng­¬i qu¸ thÊp, tÝnh n¨ng nµy chØ hç trî tõ cÊp 120 trë ®i. H·y vÒ rÌn luyÖn thªm ®i sau nµy h·y tíi t×m ta.")
		return
	end

	local nResult = SetFaction(%tbFaction[nIndex].szFaction)
	if nResult == 0 then
		return
	end

	DynamicExecuteByPlayer(PlayerIndex, "\\script\\gmscript.lua", "AddSkillsTest", %tbFaction[nIndex].nShortFaction, 0)	-- Hµm nµy thªm c¸c skill 1x ®Õn 15x
	for i=1, getn(%tbFaction[nIndex].tbSkill) do		-- 90 , 120 , 150 hµm nµy add kü n¨ng 150 vµ th¨ng cÊp c¸c kü n¨ng lªn 20 -- khái nuèt ®¹i thµnh bÝ kÝp
		AddMagic(%tbFaction[nIndex].tbSkill[i], 20)
	end
	AddMagic(210, 1) ---------- Khinh C«ng
	danhhieu();
	Talk(1, "KickOutSelf", format("Ng­¬i ®· gia nhËp thµnh c«ng ph¸i %s", %tbFaction[nIndex].szShowName))
end
--=============================== End Vao Phai Hoc Skill


--==========================================================================================

function dmcreattongtest1()
local strTongName = GetTongName()
local tszTitle = "Chµo mong b¹n ®· tham gia hÖ thèng <color=yellow>Bang Héi<color>"
if (strTongName == nil or strTongName == "") then
	Say(tszTitle,4," NhËn ®iÒu kiÖn t¹o bang héi/dmcreatetong","Gia nhËp bang héi/dmjointong","T¹o bang héi/dmcreateit","KÕt thóc ®èi tho¹i")
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
Msg2Player("<color=yellow>Ng­êi ®· héi ®ñ tÊt c¶ ®iªu kiÖn ®Ó t¹o Bang Héi!<color>")
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
Msg2Player("<color=yellow>Gia nhËp Bang héi thµnh c«ng!<color>")
else
end
end

function dmcreateit()
	Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 1) then
		Say("TiÕp tôc t¹o bang." ,2,"T¹o bang/Direct_CreateTong","Chß mét phót/wait_a_moment")
	elseif (oper == 0) and (GetCamp() == 4) and (GetLevel() >= 50) and (GetReputeLevel(GetRepute()) >= 6) and (GetLeadLevel() >= 30) and (HaveItem(195) == 1) then
		Talk(6,"create_pay", "Ng­êi ch¬i: KiÕm hiÖp ch­ëng m«n nh©n, xin hái ta ph¶i lµm nh­ thÕ nµo míi ca thÓ khai t«ng lËp ph¸i trë thµnh Bang chñ ®©y?", "KiÕm hiÖp ch­ëng m«n nh©n: §Çu tiªn ng­¬i ph¶i ca ®ñ n¨ng lùc l·nh ®¹o, ca 16 ng­êi cïng chU h­íng cïng ng­¬i lËp bang, tr¶i qua 3 ngµy Kh¶o NghiÖm Kú ", "Ch­ëng m«n nh©n:  NOu trong 3 ngµy ca ng­êi rêi bang th× néi trong 3 ngµy ®a ng­êi ph¶i t×m ng­êi kh¸c thay thO.", "Ch­ëng m«n nh©n:  Ng­¬i ph¶i ca ®ñ tµi l·nh ®¹o vµ tUn vËt ®a lµ Nh¹c V­¬ng KiOm", "Ng­êi ch¬i: Nh¹c V­¬ng KiOm ? Ng­êi nai lµ thanh kiOm nµy µ ? ", "KiOm hiÖp ch­ëng m«n nh©n : Th× ra lµ ng­¬i ®· ca na... Kh«ng tÖ, qu¶ nhiªn tuæi trÎ tµi cao!!! ")
	else	
		i = random(0,1)
		if (i == 0) then
			Talk(1,"", "KiÕm hiÖp ch­ëng m«n nh©n: nÕu nh­ t­ëng thµnh lËp chÝnh ®Ých bang héi, sÏ v× tha nç lùc ®¹i l­îng thêi gian tinh lùc d÷ t©m huyÕt, thiÕt bÊt kh¶ bá vë nöa chõng")
		else
			Talk(6,"", "KiÕm hiÖp ch­ëng m«n nh©n: ng­¬i vÊn thµnh lËp bang héi h÷u ®iÒu kiÖn g×, ta lai chËm r·i ®Ých gi¶ng cho ng­¬i nghe", "KiÕm hiÖp ch­ëng m«n nh©n: ®Çu tiªn ng­¬i ph¶i ®· xuÊt s­ ®éc lËp míi b­íc ch©n vµo giang hå; thø nh× ng­¬i kh«ng thÓ t¹i bÊt luËn c¸i g× bang héi trung; lÇn thø hai ng­¬i yÕu cã nhÊt ®Þnh ®Ých giang hå danh väng; tèi hËu cña ng­¬i chØ huy lùc bÊt n¨ng nhá 30 cÊp")
		end
	end
end

function create_pay()
	Say("KiÕm hiÖp ch­ëng m«n nh©n: Ng­¬i cÇn lÖ phi lµ 100 v¹n l­îng b¹c." ,2,"Kh«ng thµnh vÊn ®ª, ta ca ®em 100v l­îng ®©y! /create_pay_yes","H©y dµ, ta kh«ng ®em ®ñ tiªn råi. /create_pay_no")
end
function create_pay_yes()

--	if (GetCash() >= 1000000) then
--		Pay(1000000)				-- ÊÕ·Ñ
		DelItem(195)			-- É¾³ýÏµ¹Øµµ¾ß
		SetTask(99,1)				-- ²¢´òÉÏ±ê¼Ç£¨Ý¬Ê±¶¨ÒåÎª°ïÅÉÖÐµÄµóÒ»¸öÈË£¨¼´°ïÖ÷±¾ÈË£©£©
		Direct_CreateTong()		-- ¿ªÊ¼½¨°ï
		
--	else
--		Talk(1,"", "KiÕm hiÖp ch­ëng m«n nh©n: ViÖc duy tr× bang héi rÊt tèn tiÒn, ng­êi ph¶i cè g¾ng cïng mäi ng­êi tUch gap ®Ó bang ®­îc giµu m¹nh. ")	end
end


function Direct_CreateTong()
	CreateTong(1)				-- µ¯³ö½¨°ï¶Ô»°¿ò£¬½áÊø½Å±¾¿ØÖÆ
end

function hockhinhcong()
	AddMagic(210, 1)--hockhinhcong
end

--==========================================================================================
function gochienlong()
	Say("H·y chän cæng mµ b¹n muèn!", 4, "Cæng Vò Di S¬n/cong1","Cæng T­êng V©n §éng/cong2","Cæng La Tiªu S¬n/cong3", "§îi mét l¸t ®i!/OnCancel")
end

function cong1()
	Msg2Player("§· ®Õn ChiÕn Long §éng!")
	NewWorld(959, 1418, 3005);
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
end
function cong2()
	Msg2Player("§· ®Õn ChiÕn Long §éng!")
	NewWorld(959, 1548, 2995);
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
end
function cong3()
	Msg2Player("§· ®Õn ChiÕn Long §éng!")
	NewWorld(959, 1701, 3152);
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
end


function nhanmau01()
	AddItem(6,1,2527,1,0,0)
end

function duatop10() 	-- hµm thö ®ua top
DynamicExecute("\\script\\vng_feature\\top10\\vngtop10.lua", "tbTop10:MainDialog", PlayerIndex) -------------- ch¹y thö hµm ®ua top
end 

function Quit()
end

function no()
end

