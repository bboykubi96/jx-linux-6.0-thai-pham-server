Include("\\script\\tong\\workshop\\workshop_head.lua")

HUODONG_TASKID = {{1015, 1016}, {1017, 1018}, {1019, 1020}};

TK_GUANGHUAN = 2349;--记录玩家帮会光环的编号
TK_SHIJIAN = 2350;--记录玩家帮会光环的有效时间
TK_ISCANCEL = 1757;--记录是否已经取消了光环

aLevelCoef = {}
aLevelLingPaiPrice = {}
aLevelDiziCoef = {}
aLevelDiziDouble = {}
aLevelNianshouCoef = {}
aLevelNianshouDouble = {}
aLevelAuraPrice = {}

SEC_OF_DAY = 86400;


function LoadLevelData()
	local b1 = TabFile_Load("\\settings\\tong\\workshop\\huodong_level_data.txt", "huodongLevelData")
	if b1~=1 then
		print("тc t謕 config ho箃 ng t竎 phng th蕋 b筰!")
		return
	end
	local nRowCount = TabFile_GetRowCount("huodongLevelData")
	for y = 2, nRowCount do
		local nLevel = tonumber(TabFile_GetCell("huodongLevelData", y, "LEVEL"))
		aLevelCoef[nLevel] = tonumber(TabFile_GetCell("huodongLevelData", y, "OUTPUT_COEF"))
		aLevelLingPaiPrice[nLevel] = tonumber(TabFile_GetCell("huodongLevelData", y, "LINGPAI_PRICE"))
		aLevelDiziCoef[nLevel] = tonumber(TabFile_GetCell("huodongLevelData", y, "COUNT_DZLIM"))
		aLevelDiziDouble[nLevel] = tonumber(TabFile_GetCell("huodongLevelData", y, "PRISE_DZDOU"))
		aLevelNianshouCoef[nLevel] = tonumber(TabFile_GetCell("huodongLevelData", y, "COUNT_NSLIM"))
		aLevelNianshouDouble[nLevel] = tonumber(TabFile_GetCell("huodongLevelData", y, "PRISE_NSDOU"))
		aLevelAuraPrice[nLevel] = tonumber(TabFile_GetCell("huodongLevelData", y, "PRISE_AURA"))
	end
	--TabFile_UnLoad("huodongLevelData")
end
LoadLevelData()

if MODEL_GAMESERVER == 1 or MODEL_RELAY == 1 then
--------------------如果非客户端---------------------------

function ws_main(nTongID, nWorkshopID)
	-- TODO: liaozhishan 
	-- 11/7 此处流程需要修改，现在Relay只能处理CallBoss令牌，导致活动报名会产生扣建设基金的异常现象。需要改为能处理多种情况。
	if SVR_CheckUse(nTongID, nWorkshopID, "T鎛g qu秐 Ho箃 ng phng") ~= 1 then
		return 0
	end
	local aryszContent = {
			"Bang v藅/#use_g_4_ok("..nTongID..","..nWorkshopID..")", 
			"Ho箃 ng chi猽 m�  t�/#use_g_2_ok("..nTongID..","..nWorkshopID..")", 
			"Ho箃 ng nh ni猲 th�/#use_g_3_ok("..nTongID..","..nWorkshopID..")", 
			--"帮会收集物品活动/#use_g_5_ok("..nTongID..","..nWorkshopID..")", 	
			};
			
	if (GetProductRegion() == "cn") then
	--	tinsert(aryszContent, "Nh薾 l謓h b礽 g鋓 Boss/#use_g_1_ok("..nTongID..","..nWorkshopID..")");
	end;
	
	tinsert(aryszContent, "Kh玭g c莕 u/cancel");
	
	Say("<#>T鎛g qu秐 Ho箃 ng phng: Ta ph� tr竎h c竎 ho箃 ng chung c馻 to祅 th� bang, l祄 h璶g ph蕁 kh玭g kh� bang h閕 v� tinh th莕 bang ch髇g, m鋓 ngi h穣 c飊g nhau tham gia ho箃 ng!",
		getn(aryszContent),
		aryszContent);
	return 1;
end

----------------------------------------------------------------------------------------------------
function MAINTAIN_R(nTongID, nWorkshopID) --日常活动
	if nWorkshopID <= 0 then
		return 0
	end	
	local eType = TWS_GetType(nTongID, nWorkshopID)
	local nLevel = TWS_GetUseLevel(nTongID, nWorkshopID)
	local nTotal = floor(aLevelCoef[nLevel]*(TONG_GetMemberCount(nTongID)) * 100)
	TWS_ApplyAddDayOutput(nTongID, nWorkshopID, nTotal) --初始化可领取任务数
	return 1
end

function USE_R(nTongID, nWorkshopID)
	local nLinPaiLeft = TWS_GetDayOutput(nTongID, nWorkshopID)
	if (TWS_IsOpen(nTongID, nWorkshopID) ~= 1 or nLinPaiLeft < 100) then
		return 0
	end
	local nLevel = TWS_GetUseLevel(nTongID, nWorkshopID)
	if nLevel < 1 then
		return 0
	end
	if (TONG_GetBuildFund(nTongID) < aLevelLingPaiPrice[nLevel]) then
		return 0
	end
	if (TONG_ApplyAddBuildFund(nTongID, -aLevelLingPaiPrice[nLevel]) == 1) then
		TWS_ApplyAddDayOutput(nTongID, nWorkshopID,  -100)
		TONG_ApplyAddTaskValue(nTongID, TONGTSK_WEEK_WSCONSUME, 2688)
		TONG_ApplyAddTaskValue(nTongID, TONGTSK_WEEK_BFCONSUME, aLevelLingPaiPrice[nLevel])	
		return 1
	end
	return 0	
end

function USE_G_1(nTongID, nWorkshopID)
	ws_main(nTongID, nWorkshopID)
end

function use_g_1_ok(nTongID, nWorkshopID)
	local nTongLevel = TONG_GetBuildLevel(nTongID)
	if (nTongLevel < 2)then
		Say("<#>T鎛g qu秐 Ho箃 ng phng: L謓h b礽 g鋓 Boss i h醝 ng c蕄 ki課 thi誸 ph秈 t c蕄 <color=red>2<color> m韎 c� th� ch� t筼, trc m総 c莕 ph秈 ra s鴆 x﹜ d鵱g bang !", 0)
		return
	end
	if (TONGM_CheckRight(nTongID, GetName(), RIGHTID_WORKSHOP) ~= 1) then
		Say("<#>T鎛g qu秐 Ho箃 ng phng: Ngi kh玭g c� quy襫 h筺 qu秐 l� t竎 phng, kh玭g th� nh薾 L謓h b礽 g鋓 Boss!", 0)
		return
	end
	_dbgMsg("S� l莕 nh薾 c遪 l筰 * 100: "..TWS_GetDayOutput(nTongID, nWorkshopID))
	if (TWS_GetDayOutput(nTongID, nWorkshopID) < 100) then
		Say("<#>T鎛g qu秐 Ho箃 ng phng: H玬 nay l謓h b礽 g鋓 Boss  ph﹏ ph竧 h誸 r錳, ng祔 mai h穣 n nh�!", 0)
		return 0;
	end
	local nLevel = TWS_GetUseLevel(nTongID, nWorkshopID)
	Say("<#>T鎛g qu秐 Ho箃 ng phng: Ph秈 ti猽 t鑞 <color=water>"..aLevelLingPaiPrice[nLevel].."<color> v筺 ng﹏ s竎h ki課 thi誸 bang  nh薾 1 l謓h b礽 g鋓 Boss, ngi ng � kh玭g?", 2,
		"Ti誴 nh薾/#use_g_1_ok2".."("..nTongID..","..nWorkshopID..")", "H駓 b� /cancel")
end

function use_g_1_ok2(nTongID, nWorkshopID)
	local nLevel = TWS_GetUseLevel(nTongID, nWorkshopID)
	if (TONG_GetBuildFund(nTongID) < aLevelLingPaiPrice[nLevel]) then
		Say("<#>T鎛g qu秐 Ho箃 ng phng: Kh玭g 頲 r錳, ng﹏ s竎h ki課 thi誸 bang kh玭g !", 0)
		return
	end
	TWS_ApplyUse(nTongID, nWorkshopID, 1)
end

function use_g_2_ok(nTongID, nWorkshopID)
	USE_G_2(nTongID, nWorkshopID, 2)
end

function use_g_3_ok(nTongID, nWorkshopID)
	USE_G_2(nTongID, nWorkshopID, 3)
end

function use_g_4_ok(nTongID, nWorkshopID)
	USE_G_2(nTongID, nWorkshopID, 4)
end

function use_g_5_ok(nTongID, nWorkshopID)
	USE_G_2(nTongID, nWorkshopID, 5)
end

function USE_G_2(nTongID, nWorkshopID, nUse)
	if (nUse == 1)then
		local nLevel = TWS_GetUseLevel(nTongID, nWorkshopID)
		local szMsg = GetName().." ti猽 t鑞 "..aLevelLingPaiPrice[nLevel].." v筺 ng﹏ s竎h ki課 thi誸 bang  i l蕐 1 l謓h b礽 g鋓 Boss c蕄 "..nLevel.."!"
		Msg2Tong(nTongID, szMsg)
		TONG_ApplyAddEventRecord(nTongID, szMsg)
		AddItem(6, 1, 1022, nLevel, 0, 0, 0);
	elseif (nUse == 2)then	
		Sel_ZhaoDizhi(nTongID, nWorkshopID)	--招募弟子
	elseif (nUse == 3)then
		Sel_DaNianShou(nTongID, nWorkshopID)	--打年兽
	elseif (nUse == 4)then
		Sel_techan(nTongID, nWorkshopID)		--特产
	elseif (nUse == 5) then
		Sel_shoujiwupin(nTongID, nWorkshopID);	--收集物品
	end	
end

function cancel()
end

--光环的表
tc_detail = {[5] = {"V遪g s竛g Thng D╪g", "T鎛g qu秐 Ho箃 ng phng: Mu鑞 tr秈 nghi謒 c秏 gi竎 n ru錳 qu﹜ quanh kh玭g? Trc y ch� c�  t� C竔 Bang m韎 hi觰 頲 c秏 gi竎 n祔. Nh薾 v遪g Thng D╪g c莕 b� ra <color=yellow>50<color> 甶觤 c鑞g hi課, th阨 gian s� d鬾g l� 1 tu莕."},
			[6] = {"V遪g s竛g Hng Ti猽", "T鎛g qu秐 Ho箃 ng phng: Зy l� v遪g danh hi謚 mang s綾 th竔 phng Nam. Nh薾 v遪g Hng Ti猽 c莕 b� ra <color=yellow>65<color> 甶觤 c鑞g hi課, th阨 gian s� d鬾g l� 1 tu莕."},
			[7] = {"V遪g s竛g Thng g", "T鎛g qu秐 Ho箃 ng phng: Ngi th輈h bay ln kh玭g? v遪g danh hi謚 n祔 mang l筰 c秏 gi竎 m閠 con chim g bay � ph輆 sau. Mu鑞 nh薾 v遪g danh hi謚 n祔 c莕 b� ra <color=yellow>80<color> 甶觤 c鑞g hi課, th阨 gian s� d鬾g l� 1 tu莕."},
			[8] = {"V遪g s竛g H醓 Di謒", "T鎛g qu秐 Ho箃 ng phng: Nghe n c� m閠 s� cao nh﹏ v� l﹎ khi v薾 c玭g th� to祅 th﹏ s� t醓 ra l祅 kh鉯 tr緉g. v遪g danh hi謚 n祔 s� gi髉 ngi th� nghi謒 頲 c秏 gi竎 m� c竎 cao nh﹏  tr秈 qua. Mu鑞 nh薾 v遪g danh hi謚 n祔 c莕 b� ra <color=yellow>100<color> 甶觤 c鑞g hi課, th阨 gian s� d鬾g l� 1 tu莕."},
			[9] = {"V遪g s竛g 竚 秐h", "T鎛g qu秐 Ho箃 ng phng: V遪g danh hi謚 n祔 s� cho ngi m閠 c秏 gi竎 th﹎ s﹗ huy襫 秓. Mu鑞 nh薾 v遪g danh hi謚 n祔 c莕 b� ra <color=yellow>115<color> 甶觤 c鑞g hi課, th阨 gian s� d鬾g l� 1 tu莕."},
			[10] = {"V遪g s竛g Th蕋 Ki誱", "T鎛g qu秐 Ho箃 ng phng: V遪g danh hi謚 n祔 l� bi觰 tr璶g c馻 nh鱪g bang h閕 danh ti課g. Mu鑞 nh薾 v遪g danh hi謚 n祔 c莕 b� ra <color=yellow>130<color> 甶觤 c鑞g hi課, th阨 gian s� d鬾g l� 1 tu莕."}
};

function Sel_techan(nTongID, nWorkshopID)--帮会特产功能
	local nLevel = TWS_GetUseLevel(nTongID, nWorkshopID);
	
	Say("Ngi mu鑞 t譵 hi觰 <color=yellow>V遪g danh hi謚 bang h閕<color> c nh蕋 v� nh� n祔 hay kh玭g?", 2,
	"V遪g danh hi謚 bang h閕/#enter_guanghuan("..nLevel..")",
	"K誸 th骳 i tho筰/oncancel");
end;


function enter_guanghuan(nLevel)
	if (nLevel < 5) then
		Say("Ho箃 ng phng v蒼 ch璦 t n c蕄 <color=yellow>5<color>, khi t n c蕄 5 h穣 quay l筰 nh�.", 0);
		return
	end;
	local tab_gh_content = {};
	tinsert(tab_gh_content, "T譵 hi觰 V遪g danh hi謚/tong_gh_about");
	tinsert(tab_gh_content, "Nh薾 v遪g danh hi謚  c�/#tong_gh_getagain(0, 1)");
	for i = 5, nLevel do
		tinsert(tab_gh_content, "Ta mu鑞 mua "..tc_detail[i][1].."/#tong_gh_get("..i..")");
	end;
	tinsert(tab_gh_content, "H駓 b� v遪g danh hi謚/#delguanghuan( 1 )");
	tinsert(tab_gh_content, "Ta bi誸 r錳!/oncancel");
	Say("Ho箃 ng phng 產ng ph﹏ ph竧 c竎 lo筰 v遪g danh hi謚, ngi mu鑞 l祄 g�?", getn(tab_gh_content), tab_gh_content);
end;

function delguanghuan(IsWantCancel)--去掉光环效果
	if (IsWantCancel == 1) then	--如果想取消光环，如果想取消光环则设上取消的任务变量
		SetTask(TK_ISCANCEL, 1);
	end;
	
	for i = 726, 731 do
		AddSkillState(i, 1, 0, 0);
	end;
end;

function tong_gh_getagain(bExchangeIn, bPlayer)	--得到原有的光环；
	local nRemainSec = getremaintime();
	if (nRemainSec == 0) then
		if (bPlayer == 1 and bExchangeIn ~= 1) then	--是否要提示
			Say("Ch璦 s� h鱱 v遪g danh hi謚 n祇.", 0);
			Msg2Player("Ch璦 s� h鱱 v遪g danh hi謚 n祇.");
		end;
		return
	end;
	
	if (bPlayer == 1 or GetTask(TK_ISCANCEL) ~= 1) then
		local nSkillID = GetTask(TK_GUANGHUAN);
		AddSkillState(nSkillID, 1, 0, nRemainSec * 18);
		SetTask(TK_ISCANCEL, 0);
	end;
end;


tab_Level = {[5] = 5, [6] = 6, [7] = 7, [8] = 8, [9] = 9, [10] = 10}
function tong_gh_get(nLevel)
	Say(tc_detail[nLevel][2], 2, "Ta mu鑞 mua /#tong_gh_buy("..tab_Level[nLevel]..")", "R阨 kh醝/oncancel");
end;

function tong_gh_buy(nLevel)
	local nPrice = aLevelAuraPrice[nLevel];
	if (GetContribution() < nPrice) then
		Say("觤 c鑞g hi課 kh玭g  <color=yellow>"..nPrice.."<color> 甶觤, kh玭g th� i l蕐 v遪g danh hi謚.");
		Msg2Player("觤 c鑞g hi課 c馻 b筺 kh玭g .");
		return
	end;
	SetTask(TK_ISCANCEL, 0);
	AddContribution(-1 * nPrice);--减少贡献度。
	Msg2Player(format("B筺 d飊g <color=yellow>%d<color> 甶觤 c鑞g hi課 i l蕐 1 <color=yellow>%s<color>.", nPrice, tc_detail[nLevel][1]));

	local nSkillID = nLevel + 726 - 5;
	SetTask(TK_GUANGHUAN, nSkillID);
	local nLimitDate = GetCurrentTime() + SEC_OF_DAY * 7;--光环时间为7天
	SetTask(TK_SHIJIAN, nLimitDate)

	delguanghuan();
	AddSkillState(726 + nLevel - 5, 1, 0, SEC_OF_DAY * 7 * 18);
end;

function getremaintime()	--得到光环还剩多少时间,返回还有多少个小时
	local nRemainTime = GetTask(TK_SHIJIAN) - GetCurrentTime();
	if (nRemainTime < 0) then
		nRemainTime = 0;
	end;
	return nRemainTime;
end;

function tong_gh_about()
	Say("<#>T鎛g qu秐 Ho箃 ng phng: K� t� c蕄 5 tr� 甶, Ho箃 ng phng s� cung c蕄 c竎 lo筰 v遪g danh hi謚 (<color=green>c蕄 5: v遪g thng d╪g, c蕄 6: v遪g hng ti猽, c蕄 7: v遪g thng 璶g, c蕄 8: v遪g h醓 di謒, c蕄 9: v遪g ﹎ 秐h, c蕄 10: v遪g th蕋 ki誱.<color>). V遪g danh hi謚 c� th阨 h筺 s� d鬾g l� 1 tu莕, trong v遪g 1 tu莕, n誹 v遪g danh hi謚 b� m蕋 th� c� th�   nh薾 l筰 b蕋 c� l骳 n祇.", 0);
end;

if (MODEL_GAMESERVER == 1) then --如果是GameServer
---------------一下由小山加------------------------
Include([[\script\missions\tong\tong_disciple\head.lua]]);
Include([[\script\missions\tong\tong_disciple\dis_gmscript.lua]]);
Include([[\script\missions\tong\tong_disciple\award.lua]]);
Include([[\script\missions\tong\tong_springfestival\head.lua]]);
Include([[\script\missions\tong\tong_springfestival\sf_gmscript.lua]]);
Include([[\script\missions\tong\tong_springfestival\award.lua]]);

Include([[\script\missions\tong\collectgoods\head.lua]]);
Include([[\script\missions\tong\collectgoods\collg_gmscript.lua]]);
Include([[\script\missions\tong\collectgoods\award.lua]]);
end

--招蓦弟子
function Sel_ZhaoDizhi(nTongID, nWorkshopID)
	Describe("<#>T鎛g qu秐 Ho箃 ng phng: Ho箃 ng chi猽 m�  t� b総 u v祇 m鏸 0h, 3h, 6h�21h v� b総 u cho b竜 danh v祇 ph髏 th� 15, 30, 45. C騨g n l骳 bang h閕 ch髇g ta ph秈 chi猽 m� th猰 nh﹏ t礽 r錳.", 
		4, 
		"Tham gia ho箃 ng chi猽 m�  t�/#wantjoin_disciple("..nTongID..","..nWorkshopID..")",
--		 "开启帮会招募弟子活动/#tong_opendisciple(821)", 
		"Nh薾 ph莕 thng/#disciple_aword("..nTongID..","..nWorkshopID..")",
		"T譵 hi觰 ho箃 ng chi猽 m�  t�/disciple_about", "Nh﹏ ti謓 gh� qua th玦/festival06_Cancal");
end;

function wantjoin_disciple(nTongID, nWorkshopID)
	Describe("T鎛g qu秐 Ho箃 ng phng:  Tham gia ho箃 ng chi猽 m�  t� ti猽 hao <color=yellow>800<color> 甶觤 c鑞g hi課 bang h閕, ngi mu鑞 tham gia kh玭g?", 2, 
	"Tham gia ho箃 ng chi猽 m�  t�/#joindisciple("..nTongID..","..nWorkshopID..")",
	"в ta suy ngh� k� l筰 xem/festival06_Cancal");
end;

function disciple_about()
	Describe("T鎛g qu秐 Ho箃 ng phng: M閠 t ho箃 ng chi猽 m�  t� s� m蕋 <color=yellow>15<color> ph髏, trong  bao g錷 <color=yellow>5<color> ph髏  chu萵 b�, "..
		"sau khi b竜 danh ngi s� 頲 a n khu v鵦 chu萵 b�, khi ho箃 ng b総 u s� ti誴 t鬰 頲 chuy觧 n n琲 c竎  t� t� t藀. "..
			"Trong th阨 gian n祔, n誹 tr玭g th蕐 <color=yellow> t�<color> n祇 n鉯 chuy謓 ch� c莕 nh蕄 tr竔 chu閠<color=yellow>"..
			" <color>v祇 ngi  t� 蕐 l� 頲, d� nhi猲 ngi c騨g s� b� nh鱪g ngi ch琲 kh竎 ng╪ c秐. "..
			"L骳 n祔 ngi c� th� d飊g o c�  ch鑞g tr�, ch� c莕 t譵 th蕐  s� <color=yellow>"..
			" t�<color> th� s� nh薾 頲 nh鱪g l� v藅 x鴑g ng.", 1,
			"Ta mu鑞 th� m閠 chuy課./oncancel");
end;

--打年兽
function Sel_DaNianShou(nTongID, nWorkshopID)
	Describe("<#>T鎛g qu秐 Ho箃 ng phng: Ho箃 ng nh ni猲 th� s� di詎 ra l骳 1h, 4h, 7h�22h v� b総 u cho b竜 danh v祇 ph髏 th� 14, 30 v� 45. N╩ nay qu� th藅 l� n╩ ni猲 th� xu蕋 hi謓 nhi評 h筰 d﹏ l祅h.", 4, 
		"Ho箃 ng nh ni猲 th�/#wantjoin_springfestival("..nTongID.. ","..nWorkshopID..")",
--		"开启帮会打年兽活动/#tong_openspringfestival(823)", 
		"Nh薾 ph莕 thng/#springfestival_aword("..nTongID..","..nWorkshopID..")", 
		"T譵 hi觰 ho箃 ng nh ni猲 th�/springfestival_about", "Nh﹏ ti謓 gh� qua th玦/festival06_Cancal");
end;

function wantjoin_springfestival(nTongID, nWorkshopID)
	Describe("Th竛g gi猲g c騨g  qua 甶, ni猲 th� g﹜ h筰  b� b総 nh鑤 t筰 nha m玭, nh鱪g ngi b� h筰  d莕 kh玦 ph鬰 tinh th莕 v� s鴆 kh醗. Th� nh璶g, nh鱪g t� ni謒 m� ni猲 th�  l筰 tr猲 ngi h� v蒼 c遪 ti襪 萵. M閠 ng祔 kia, m閠 thi誹 ph� t鮪g b� ni猲 th� b竚 v祇 ngi  n n琲 ni猲 th� xu蕋 hi謓  m芻 ni謒 ngi ch錸g v� anh em trong cu閏 chi課 kinh ho祅g ...V祇 th阨 kh綾 產u bu錸 n祔, b�  ph竧 hi謓 nh鱪g d蕌 ch﹏ ni猲 th� 產n xen th祅h nh鱪g h譶h th� k� l�, tr玭g nh� l� t� ", 2, "sau  th� sao /#wantjoin_springfestival_next("..nTongID..","..nWorkshopID..")",
	"kh玭g mu鑞 nh綾 l筰 chuy謓 x璦/festival06_Cancal");
end;

function wantjoin_springfestival_next(nTongID, nWorkshopID)
	Describe("ch�. Theo c﹗ ni謒 c馻 thi誹 ph�, b颽 ch� khi課 cho t� ni謒 m� ni猲 th�  l筰 tr猲 ngi b� tho竧 ra...T筰 nha m玭, t� ch� t鎛g qu秐 產ng ng�, t nhi猲 c� m閠 b祅 tay ng鋍 th� th� v祇 chi誧 ch譨 kh鉧 ng鬰 giam c莔 ni猲 th�....Bu鎖 chi襲 h玬 sau, m閠 s� a tr� ngo礽 th祅h b� m蕋 t輈h kh玭g r� nguy猲 do, ch� ch鮝 l筰 s頸 d﹜ v秈 v� chi誧 b玭g v� n籱 . V� m閠 gi蔯 m閚g tr� th�...<enter>Tham gia ho箃 ng nh ni猲 th� c莕 ti猽 ph� <color=yellow>500<color> 甶觤 c鑞g hi課, ngi mu鑞 tham gia kh玭g?", 2, "Ho箃 ng nh ni猲 th�/#joinspringfestival("..nTongID..","..nWorkshopID..")",
	"в ta suy ngh� k� l筰 xem/festival06_Cancal");
end;

function springfestival_about()
	Describe("T鎛g qu秐 Ho箃 ng phng: M閠 t ho箃 ng nh ni猲 th� l� <color=yellow>15<color>ph髏, trong  bao g錷 <color=yellow>5<color> ph髏  chu萵 b�. "..
		"Sau khi b竜 danh tham gia, ngi s� 頲 a n khu v鵦 chu萵 b�. Khi ho箃 ng b総 u s� ti誴 t鬰 頲 a n n琲 ni猲 th� thng xu蕋 hi謓."..
		"color=yellow>15<color> gi﹜ sau khi ho箃 ng b総 u, trong s� nh鱪g ngi tham gia s� c� 1 n 2 ngi b� ni猲 th� b竚 v祇 ngi "..
		"v� bi課 th祅h ni猲 th�. H� s� 甶 quanh khu v鵦  b総 nh鱪g '<color=yellow>a tr� m蕋 t輈h<color>'.", 2, 
		"Trang k� /festival06_next", "K誸 th骳 i tho筰./festival06_Cancal");
end;

function festival06_next()
    Describe("T鎛g qu秐 Ho箃 ng phng: Trong khi nh鱪g ngi kh竎 s� s� d鬾g '<color=yellow>ph竜 hoa<color>'  nh 畊鎖 ni猲 th�, "..
    	"ng th阨 ng╪ c秐 ni猲 th� b総 nh鱪g a tr�. Sau khi ho箃 ng k誸 th骳, '<color=yellow>T鎛g qu秐 Ho箃 ng phng<color>' "..
    	"s� d鵤 tr猲 b秐g x誴 h筺g s� l莕 n衜 tr髇g <color=yellow>ph竜 hoa<color> v祇 ni猲 th�  ph竧 thng.", 1,  
    	"Ta  bi誸 r錳. /festival06_Cancal");
end

function Sel_shoujiwupin(nTongID, nWorkshopID)	--帮会收集物品活动
	local tab_gh_content = {
			"Tham gia ho箃 ng thu th藀 v藅 ph萴/#wantjoin_collection("..nTongID..","..nWorkshopID..")",
--			"开启帮会收集物品活动/#collg_opencellectgoods( 827 )", 
			"Nh薾 ph莕 thng/#collg_aword("..nTongID..","..nWorkshopID..")",
			"T譵 hi觰 ho箃 ng thu th藀 v藅 ph萴/collg_about",
			"Nh﹏ ti謓 gh� qua th玦/festival06_Cancal"
	};

	Say("<#>T鎛g qu秐 Ho箃 ng phng:  Ho箃 ng thu th藀 v藅 ph萴 b総 u l骳 2h, 5h, 8h�22h v� b総 u cho b竜 danh v祇 ph髏 th� 15, 30, 45. Mong m鋓 ngi h穣 g鉷 s鴆 tham gia ho箃 ng.", getn(tab_gh_content), tab_gh_content);
end;

function wantjoin_collection(nTongID, nWorkshopID)
	Say("T鎛g qu秐 Ho箃 ng phng: Ngi ng � gi髉  th藅 qu� t鑤 r錳, c� 甶襲 ta nghe nh鱪g thng nh﹏ c遪 s鑞g s鉻 n鉯 l� t筰 n琲 c蕀 a 蕐 c� m閠 c� quan b� hi觤, tr玭g nh� m閠 vi猲 ph竜, ch髇g s� b竚 ch苩 v祇 th﹏ ngi, tr� khi ngi n衜 n� v祇 ngi kh竎 th� th玦, kh玭g th� n� c� b竚 v祇 ngi kh玭g d鴗 ra 頲, xin h穣 h誸 s鴆 c萵 th薾.", 2, 
	"Ta s� c萵 th薾, h穣 mau a ta n n琲 蕐./#collg_joindisciple("..nTongID..","..nWorkshopID..")", 
	"N誹  nh� th�, ta c莕 c� th阨 gian  chu萵 b�./OnCancel");
end;

else
-----------------如果是客户端---------------
function GET_DESC(nTongID, nWorkshopID, nType)
	if (nTongID == 0) then
		return "<color=water>Kh玭g c� bang h閕"	
	end
	local bOpen	--是否开启
	local bPause --是否暂停
	local nCurLevel --当前等级
	local nUseLevel --当前使用等级
	local nOpenFund --当前开启消耗
	local nMaintainFund --当前维护消耗
	local nPrice  --当前换取boss召唤符的建设基金
	local dTokenCount	--当前每日boss召唤符产出总量提高
	local nDoubleOdds  --当前召唤出2个黄金Boss的几率
	local dDiziCount	--当前每日参加招募弟子活动人次提高
	local nDiziDoubleOdds	--当前招募弟子活动给与双倍奖励的几率
	local dNianshouCount	--当前每日参加帮会打年兽活动人次提高
	local nNianshouDoubleOdds		--当前帮会打年兽活动给与双倍奖励的几率
	if (nWorkshopID ~= 0)then
		bOpen = TWS_IsOpen(nTongID, nWorkshopID) 
		bPause = TONG_GetPauseState(nTongID) 
		nCurLevel = TWS_GetLevel(nTongID, nWorkshopID) 
		nUseLevel = TWS_GetUseLevel(nTongID, nWorkshopID)
		nOpenFund = wsGetOpenCost(nTongID, nType, nUseLevel) 
		nMaintainFund = wsGetMaintainCost(nTongID, nType, nUseLevel, bOpen)  
		if(nUseLevel > 0)then		
			nPrice = aLevelLingPaiPrice[nUseLevel]
			dTokenCount = format("%.2f", aLevelCoef[nUseLevel] / aLevelCoef[1])	
			nDoubleOdds = 160 - (nUseLevel - 1) * 10
			dDiziCount = format("%.2f", aLevelDiziCoef[nUseLevel] / aLevelDiziCoef[1])	
			nDiziDoubleOdds = floor(aLevelDiziDouble[nUseLevel] * 100)
			dNianshouCount = format("%.2f", aLevelNianshouCoef[nUseLevel] / aLevelNianshouCoef[1])	
			nNianshouDoubleOdds = floor(aLevelNianshouDouble[nUseLevel] * 100)
		else
			nPrice = "--"
			dTokenCount = "--"
			nDoubleOdds = "--"
			dDiziCount = "--"
			nDiziDoubleOdds = "--"
			dNianshouCount = "--"
			nNianshouDoubleOdds = "--"
		end
	else	--作坊未建立时只显示下一级信息
		nCurLevel = 0
		bOpen = 1
		nUseLevel = 0
	end
	--下级信息
	local nUpgradeCostFund, nNextMaintainFund, nNextPrice, nNextOpenFund, dNextTokenCount,nNextDoubleOdds,dNextDiziCount,nNextDiziDoubleOdds,dNextNianshouCount,nNextNianshouDoubleOdds
	if (nCurLevel < wsGetMaxLevel(nTongID, nType))then
		nUpgradeCostFund = wsGetUpgradeCostFund(nTongID, nType, nCurLevel)  --升级消耗
	else
		nUpgradeCostFund = "--"
	end
	if (nUseLevel < wsGetMaxLevel(nTongID, nType))then		
		nNextMaintainFund = wsGetMaintainCost(nTongID, nType, nUseLevel+1, bOpen)  --下级维护消耗
		nNextOpenFund = wsGetOpenCost(nTongID, nType, nUseLevel+1) 	--下级开启消耗
		nNextPrice = aLevelLingPaiPrice[nUseLevel + 1] --下级换取boss召唤符的建设基金
		dNextTokenCount = format("%.2f", aLevelCoef[nUseLevel + 1] / aLevelCoef[1]) --下级每日boss召唤符产出总量提高
		nNextDoubleOdds = 160 - nCurLevel * 10 --下级召唤出2个黄金Boss的几率
		dNextDiziCount = format("%.2f", aLevelDiziCoef[nUseLevel + 1] / aLevelDiziCoef[1])	
		nNextDiziDoubleOdds = format(aLevelDiziDouble[nUseLevel + 1] * 100)
		dNextNianshouCount = format("%.2f", aLevelNianshouCoef[nUseLevel + 1] / aLevelNianshouCoef[1])	
		nNextNianshouDoubleOdds = format(aLevelNianshouDouble[nUseLevel + 1] * 100)
	else		
		nNextMaintainFund = "--"
		nNextOpenFund = "--"
		nNextPrice = "--"
		dNextTokenCount = "--"
		nNextDoubleOdds = "--"
		dNextDiziCount = "--"
		nNextDiziDoubleOdds = "--"
		dNextNianshouCount = "--"
		nNextNianshouDoubleOdds = "--"
	end	
	if (nWorkshopID ~= 0)then
		local state 
		if bPause == 1 then state="<color=yellow>T筸 ng鮪g" elseif bOpen == 1 then state="<color=green>Khai m�" else state="<color=red>сng c鯽" end
		local szMsg = "Tr筺g th竔 t竎 phng: "..state.."<color>\n"..
			"Ъng c蕄 t竎 phng: <color=gold>"..nCurLevel.."<color>\n"..
			"Ъng c蕄 s� d鬾g hi謓 t筰: <color=gold>"..nUseLevel.."<color>\n"..
			--"Boss召唤符日产量上限提高：<color=gold>"..dTokenCount.."<color>倍\n"..	
			--"召唤符召出第2个Boss的几率：<color=gold>1/"..nDoubleOdds.."<color>\n"..		
			--"换取Boss召唤符所需建设基金：<color=gold>"..nPrice.."万<color>\n"..
			"Lt ngi m鏸 ng祔 c� th� tham gia ho箃 ng t╪g: <color=gold>"..dDiziCount.."<color> l莕\n"..
			"X竎 su蕋 bang h閕 nh薾 頲 ph莕 thng nh﹏ i: <color=gold>"..nDiziDoubleOdds.."%<color>\n"..
			"Ng﹏ s竎h chi課 b� chi cho ph� b秓 tr� bang m鏸 ng祔: <color=gold>"..nMaintainFund.." v筺<color>\n"..
			"Ng﹏ s竎h ki課 thi誸 ban u: <color=gold>"..nOpenFund.." v筺<color>\n"..
			"Ng﹏ s竎h ki課 thi誸  n﹏g c蕄: <color=gold>"..nUpgradeCostFund.." v筺<color>\n"..
			"<color=green>Ъng c蕄 s� d鬾g k� ti誴 <color>\n"..
			--"<color=water>Boss召唤符日产量上限提高：<color=Violet>"..dNextTokenCount.."<color>倍\n"..
			--"召唤符召出第2个Boss的几率：<color=Violet>1/"..nNextDoubleOdds.."<color>\n"..	
			--"换取Boss召唤符所需建设基金：<color=Violet>"..nNextPrice.."万<color>\n"..
			"<color=water>Lt ngi m鏸 ng祔 c� th� tham gia ho箃 ng t╪g: <color=Violet>"..dNextDiziCount.."<color> l莕\n"..
			"X竎 su蕋 ho箃 ng bang h閕 nh薾 頲 ph莕 thng nh﹏ i: <color=Violet>"..nNextDiziDoubleOdds.."%<color>\n"..
			"Ng﹏ s竎h chi課 b� chi cho ph� b秓 tr� bang m鏸 ng祔: <color=Violet>"..nNextMaintainFund.." v筺<color>\n"..
			"Ng﹏ s竎h ki課 thi誸 ban u: <color=Violet>"..nNextOpenFund.." v筺<color>\n"

		return szMsg
	else
		local szMsg = "Tr筺g th竔 t竎 phng: <color=water>Ch璦 th祅h l藀<color>\n"..
			"Ng﹏ s竎h ki課 th誸 c莕  x﹜ d鵱g: <color=gold>"..nUpgradeCostFund.." v筺<color>\n"..
			"<color=green>Ъng c蕄 k� ti誴 <color>\n"..
			--"<color=water>Boss召唤符日产量上限提高：<color=Violet>"..dNextTokenCount.."<color>倍\n"..
			--"召唤符召出第2个Boss的几率：<color=Violet>1/"..nNextDoubleOdds.."<color>\n"..
			--"换取Boss召唤符所需建设基金：<color=Violet>"..nNextPrice.."万<color>\n"..
			"<color=water>Lt ngi m鏸 ng祔 c� th� tham gia ho箃 ng t╪g: <color=Violet>"..dNextDiziCount.."<color> l莕\n"..
			"X竎 su蕋 ho箃 ng bang h閕 nh薾 頲 ph莕 thng nh﹏ i: <color=Violet>"..nNextDiziDoubleOdds.."%<color>\n"..
			"Ng﹏ s竎h chi課 b� chi cho ph� b秓 tr� bang m鏸 ng祔: <color=Violet>"..nNextMaintainFund.." v筺<color>\n"..
			"Ng﹏ s竎h ki課 thi誸 ban u: <color=Violet>"..nNextOpenFund.." v筺<color>\n"
		return szMsg
	end
end
----------------------------------------------
end