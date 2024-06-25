--add all npc edit by mcteam
Include("\\script\\missions\\maze\\head.lua")
Include("script\\missions\\bairenleitai\\head.lua")
Include("\\script\\missions\\maze\\addstatdata.lua")
Include( "\\script\\global\\addxishancunnpc.lua" )
Include( "\\script\\task\\tollgate\\killbosshead.lua" )
Include( "\\script\\task\\tollgate\\addtollgatenpc.lua" ) --¼ÓÔØ¹Ø¿¨ÈÎÎñÉæ¼°µÄNPC
Include( "\\script\\task\\partner\\partner_head.lua" )    --¼ÓÔØÍ¬°éÈÎÎñÉæ¼°µÄNPC
Include ("\\script\\missions\\freshman_match\\add_championnpc.lua")
Include("\\script\\event\\mid_autumn\\add_zhongqiunpc.lua")
Include("\\script\\missions\\newcitydefence\\cd_addsignnpc.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include ("\\script\\missions\\leaguematch\\wlls_autoexec.lua")	--WLLS ÎäÁÖÁªÈü
Include ("\\script\\missions\\statinfo\\head.lua")	--Êı¾İÍ³¼Æ
Include("\\script\\event\\wulin_2nd\\wulin_addmaster.lua")
Include("\\script\\global\\addspreadernpc.lua")			--ÓÎÏ·ÍÆ¹ãÔ±
Include("\\script\\missions\\tongwar\\tongwar_autoexec.lua")
Include("\\script\\task\\lv120skill\\head.lua")	-- 120¼¶¼¼ÄÜÈÎÎñ
Include("\\script\\tong\\addtongnpc.lua")
Include("\\script\\ÖĞÔ­±±Çø\\ãê¾©\\ãê¾©\\trap\\bianjing_ximen_trap.lua")
Include("\\script\\½­ÄÏÇø\\½ğÉ½µº\\addnpcandtrap.lua")
Include("\\script\\event\\jiefang_jieri\\200904\\denggao\\npc.lua");	-- »ÆÁ¬ÀÏÛÅ
Include("\\script\\event\\change_destiny\\npc.lua");	-- ÄæÌì¸ÄÃü
Include("\\script\\missions\\newpracticemap\\addnpc.lua");	-- ĞÂÁ·¼¶µØÍ¼	
Include("\\script\\event\\jiefang_jieri\\201004\\beat_tiger\\head.lua"); -- Ñ°»¨´ò»¢
Include("\\script\\misc\\timeline\\timelinemanager.lua") --Ê±¼äÖá
Include("\\script\\global\\autoexec_head.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\Î÷ÄÏÄÏÇø\\´óÀí¸®\\´óÀí¸®\\trap\\dali_heidong_trap.lua")
Include("\\script\\global\\quanlygame\\sukien\\loidaicacuoc\\library.lua");
Include("\\script\\global\\quanlygame\\addnpc.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\event\\springfestival08\\allbrother\\npc_cailao.lua")--Cai Lao Hoan Dong
--Include("\\script\\update_feature\\duanguaxephang\\duanguainit.lua")--Dua Ngua Xep Hang

if (GetProductRegion() =="cn" or GetProductRegion() == "cn_ib") then
	-- ¶ÁÈëÕĞÄ¼Ê¹ÈÎÎñÍ·ÎÄ¼ş
	Include("\\script\\task\\lord\\head.lua");
end

if (GetProductRegion() == "vn") then
	-- 2006 ÖĞÇï½Ú»î¶¯Í·ÎÄ¼ş
	Include("\\script\\event\\mid_autumn06\\autoexe.lua");
	Include("\\script\\global\\judgeoffline_special.lua")	--ÓÃÓÚÎŞÃû¹È¡ª¡ªÍĞ¹Ü·şÎñÆ÷µØÍ¼
	Include("\\script\\event\\collect_juanzhou\\autoaddnpc.lua")--ÊÕ¼¯ÉñÃØ¾íÖáÈÎÎñ£¬Ã÷ÔÂÕònpc
	Include("\\script\\event\\act2years_yn\\head.lua")       --Ô½ÄÏÁ½ÖÜÄê»î¶¯£¬Ã÷ÔÂÕònpc
	Include("\\script\\event\\vnchristmas2007\\addnpc.lua") --Ô½ÄÏ2007Ê¥µ®½Ú,±ù¶ùnpc
	Include("\\script\\event\\newyear_2008\\cailu\\addnpc.lua")	--Ô½ÄÏ2008´º½Ú²ÉÂ»npc
	Include("\\script\\Á½ºşÇø\\ÄÏÔÀÕò\\heisha_autoexec.lua")	-- Ô½ÄÏÔö¼ÓÄÏÔÀÕòtoºÚÉ³¶´trapµã
	
	Include("\\script\\event\\great_night\\great_night_head.lua")	--Ë«Áú¶´»Æ½ğÖ®ºË
end
	

MSID_LOCALNEWS = 17 --ÏµÍ³×Ô¶¯·¢ËÍLocalNews¼ÆÊ±Æ÷ÊÂ¼ş±àºÅ

maptab={};
maptab[1]=209;
maptab[2]=210;
maptab[3]=211;
maptab[1]=212;
clearskillmap = {243, 245, 247, 249, 251, 253,255}

adddialognpc = {

	-- {822, 53,1641,3188, "\\script\\global\\g7vn\\shoptienvan.lua","Shop TiÒn V¹n"},
	-- {822, 78,1579,3248, "\\script\\global\\g7vn\\shoptienvan.lua","Shop TiÒn V¹n"},
	-- {1443,78,1540,3229,"\\script\\misc\\daiyitoushi\\toushi_function.lua","Sø Gi¶ M«n Ph¸i"},
	{1443,53,1624,3165,"\\script\\misc\\daiyitoushi\\toushi_function.lua","Sø Gi¶ M«n Ph¸i"},
	-- {1443,37,1724,3091,"\\script\\misc\\daiyitoushi\\toushi_function.lua","Sø Gi¶ M«n Ph¸i"},
-------------------------------------------------phongky
	--{1460,53,1623,3199,"\\script\\activitysys\\npcdailog.lua","Phong Kú Phe Tèng Bang ......."},
	--{1419,53,1616,3205,"\\script\\activitysys\\npcdailog.lua","Cao Thñ Tèng:.........."},
--------------------
      -- {1458,53,1624,3188,"\\script\\update_feature\\npc_duatop.lua","§ua Top ...!"},
       --  {1419,53,1616,3205,"\\script\\activitysys\\npcdailog.lua","Cao Thñ Tèng:.........."},
	--{1422,53,1630,3184,"\\script\\battles\\battlesaward.lua","Vâ L©m Chİ T«n:•“MrÄCãc•§¹i…”•@ "},
	-- {1997,325,1578,3093,"\\script\\battles\\battlesaward.lua","Cao Thñ ChiÕn ThÇn "},
	-- {1999,325,1540,3173,"\\script\\battles\\battlesaward.lua","Cao Thñ ChiÕn ThÇn"},
------------------------------------------------------------	
        -- {1525, 78,1556,3245, "\\script\\global\\g7vn\\thientaidongtu.lua","ThiÖn Tµi §ång Tö"},  ---kevin109 cai lao
	-- {1525, 53,1616,3215, "\\script\\global\\g7vn\\thientaidongtu.lua","ThiÖn Tµi §ång Tö"},
	-- {1525, 37,1700,3116, "\\script\\global\\g7vn\\thientaidongtu.lua","ThiÖn Tµi §ång Tö"},
        --{218, 1005,2067,3424,"\\script\\update_feature\\shopxukhoa.lua","Nam H¶i Gép Nguyªn LiÖu"},
        -- {1571, 78,1586,3221,"\\script\\update_feature\\shopxukhoa.lua","Thèng So¸i Tèng Kim"},

	
	--{1997, 53,1618,3194,"\\script\\activitysys\\npcdailog.lua","Qu¸n Qu©n: Ä•Nh­ÄHång•@"},
	--{1998, 78,1586,3221,"\\script\\activitysys\\npcdailog.lua","Qu¸n Qu©n:Bang Héi Bª §ª"},
	--{1999, 53,1605,3210,"\\script\\activitysys\\npcdailog.lua","Top 2:  KenÄNyÙ1"},
	{822,387,1306,2564,"\\script\\task\\tollgate\\messenger\\fengzhiqi\\messenger_flynpc.lua","B¹ch dùc "},
	{822,388,1306,2564,"\\script\\task\\tollgate\\messenger\\fengzhiqi\\messenger_flynpc.lua","B¹ch dùc "},
	{822,389,1306,2564,"\\script\\task\\tollgate\\messenger\\fengzhiqi\\messenger_flynpc.lua","B¹ch dùc "},
	{832,390,1586,2600,"\\script\\task\\tollgate\\messenger\\shanshenmiao\\messenger_temnpc.lua","N¹p lan thanh thµnh "},
	{832,391,1586,2600,"\\script\\task\\tollgate\\messenger\\shanshenmiao\\messenger_temnpc.lua","N¹p lan thanh thµnh "},
	{832,392,1586,2600,"\\script\\task\\tollgate\\messenger\\shanshenmiao\\messenger_temnpc.lua","N¹p lan thanh thµnh "},
	{842,393,1386,2442,"\\script\\task\\tollgate\\messenger\\qianbaoku\\messenger_turenpc.lua","Tiªu trÊn "},
	{842,394,1386,2442,"\\script\\task\\tollgate\\messenger\\qianbaoku\\messenger_turenpc.lua","Tiªu trÊn "},
	{842,395,1386,2442,"\\script\\task\\tollgate\\messenger\\qianbaoku\\messenger_turenpc.lua","Tiªu trÊn "},

	{377,387,1570,3132,"\\script\\task\\tollgate\\messenger\\messenger_flyrukou.lua","DŞch quan "},--DŞch quan cho phĞp ®i vµo b¶n ®å lµm nv tİn sø
	{377,388,1570,3132,"\\script\\task\\tollgate\\messenger\\messenger_flyrukou.lua","DŞch quan "},
	{377,389,1570,3132,"\\script\\task\\tollgate\\messenger\\messenger_flyrukou.lua","DŞch quan "},

	{377,390,1320,3185,"\\script\\task\\tollgate\\messenger\\messenger_templerukou.lua","DŞch quan "},
	{377,391,1320,3185,"\\script\\task\\tollgate\\messenger\\messenger_templerukou.lua","DŞch quan "},
	{377,392,1320,3185,"\\script\\task\\tollgate\\messenger\\messenger_templerukou.lua","DŞch quan "},

	{377,393,1412,3203,"\\script\\task\\tollgate\\messenger\\messenger_turerukou.lua","DŞch quan "},
	{377,394,1412,3203,"\\script\\task\\tollgate\\messenger\\messenger_turerukou.lua","DŞch quan "},
	{377,395,1412,3203,"\\script\\task\\tollgate\\messenger\\messenger_turerukou.lua","DŞch quan "},
	{769,11,3210,4974,"\\script\\task\\tollgate\\killer\\nieshichen.lua","NhiÕp  thİ  trÇn "},
	{769,1,1506,3198,"\\script\\task\\tollgate\\killer\\nieshichen.lua","NhiÕp  thİ  trÇn "},
	{769,37,1647,3050,"\\script\\task\\tollgate\\killer\\nieshichen.lua","NhiÕp  thİ  trÇn "},
	{769,176,1372,3010,"\\script\\task\\tollgate\\killer\\nieshichen.lua","NhiÕp  thİ  trÇn "},
	{769,162,1573,3227,"\\script\\task\\tollgate\\killer\\nieshichen.lua","NhiÕp  thİ  trÇn "},
	{769,78,1512,3206,"\\script\\task\\tollgate\\killer\\nieshichen.lua","NhiÕp  thİ  trÇn "},
	{769,80,1700,2963,"\\script\\task\\tollgate\\killer\\nieshichen.lua","NhiÕp  thİ  trÇn "},
}

nw_npclist = {
	{1434, 176, 1478, 3238, "\\script\\nationalwar\\npc.lua", "Néi c¸c th­îng th­ "},	-- ÄÚ¸óÉĞÊé£¨ËÎ£©
	{1435, 37,  1785, 3041, "\\script\\nationalwar\\npc.lua", "Néi c¸c th­îng th­ "},	-- ÄÚ¸óÉĞÊé£¨½ğ£©
	 -- {200,53,1615,3169,"\\script\\½­ÄÏÇø\\ÁÙ°²\\ÁÙ°²\\npc\\Ö°ÄÜ_ÉñÃØÌú½³.lua","ThÇn Bİ ThiÕt T­îng"},
	-- {200,78,1577,3229,"\\script\\½­ÄÏÇø\\ÁÙ°²\\ÁÙ°²\\npc\\Ö°ÄÜ_ÉñÃØÌú½³.lua","ThÇn Bİ ThiÕt T­îng"},
       --{198,1005,2042,3441,"\\script\\thoren\\thoren.lua","BËc ThÇy Kh¶m Phi Phong"},
	--{447,78,1578,3213,"\\script\\thoren\\thoren.lua","Thî May Phi Phong"},
	--{198,37,1718,3086,		  "\\script\\thoren\\thoren.lua","Thîi RÌn ThÇn Bİ"},
	{1571,37,1743,3072,"\\script\\global\\quanlygame\\sukien\\loidaicacuoc\\npcdialog.lua","L«i §µi"},
	--{1998,78,1570,3228,"\\script\\global\\quanlygame\\sukien\\loidaicacuoc\\npcdialog.lua","L«i §µi"},
  ------------------------

	{227,53,1632,3174,"\\script\\global\\vn\\gamebank_proc.lua","TiÒn Trang"},
	-- {227,78,1592,3215,"\\script\\global\\vn\\gamebank_proc.lua","NG©n Hµng Giao DŞch"},
	-- {227,20,3545,6196,"\\script\\global\\vn\\gamebank_proc.lua","TiÒn Trang"},

}

npclist_sevencity = {
	{950, 1, 	1642, 3270, "\\script\\missions\\sevencity\\dialog_npc.lua", "Xa phu c«ng thµnh"},
	{950, 11, 	3186, 5182, "\\script\\missions\\sevencity\\dialog_npc.lua", "Xa phu c«ng thµnh"},
	{950, 162, 	1680, 3276, "\\script\\missions\\sevencity\\dialog_npc.lua", "Xa phu c«ng thµnh"},
	{950, 37, 	1692, 3212, "\\script\\missions\\sevencity\\dialog_npc.lua", "Xa phu c«ng thµnh"},
	{950, 78, 	1582, 3380, "\\script\\missions\\sevencity\\dialog_npc.lua", "Xa phu c«ng thµnh"},
	{950, 80, 	1692, 3218, "\\script\\missions\\sevencity\\dialog_npc.lua", "Xa phu c«ng thµnh"},
	{950, 176, 	1689, 3289, "\\script\\missions\\sevencity\\dialog_npc.lua", "Xa phu c«ng thµnh"},

	-- {87,20,3546,6226,	"\\script\\global\\g7vn\\event\\"..linkevent.."\\eventmain.lua","Tæng Qu¶n sù kiÖn"},
	--{87,53,1618,3176,	"\\script\\global\\g7vn\\event\\"..linkevent.."\\eventmain.lua","Tæng Qu¶n sù kiÖn"}, 
	--{87,37,1754,3055,	"\\script\\global\\g7vn\\event\\"..linkevent.."\\eventmain.lua","Tæng Qu¶n sù kiÖn"}, 
       
}


addnewtasknpc={
{389,80,4,851,1577,3184,0,"Chñ d­îc ®iÕm",0,"\\script\\missions\\yandibaozang\\npc\\yaoshang.lua"},
{389,80,4,851,1607,3178,0,"Chñ d­îc ®iÕm",0,"\\script\\missions\\yandibaozang\\npc\\yaoshang.lua"},

----Ñ×µÛ±¦²Ønpc
{1321,80,4,176,1420,3309,0,"B×nh B×nh C« N­¬ng",0,"\\script\\missions\\yandibaozang\\npc\\yandibaozang_main.lua"},
{1321,80,4,176,1664,3244,0,"B×nh B×nh C« N­¬ng",0,"\\script\\missions\\yandibaozang\\npc\\yandibaozang_main.lua"},
{1321,80,4,176,1559,2917,0,"B×nh B×nh C« N­¬ng",0,"\\script\\missions\\yandibaozang\\npc\\yandibaozang_main.lua"},
{1321,80,4,176,1373,2970,0,"B×nh B×nh C« N­¬ng",0,"\\script\\missions\\yandibaozang\\npc\\yandibaozang_main.lua"},
{1320,80,4,37,1714,3173,0,"B×nh B×nh C« N­¬ng",0,"\\script\\missions\\yandibaozang\\npc\\yandibaozang_main.lua"},
{1320,80,4,37,1642,3145,0,"B×nh B×nh C« N­¬ng",0,"\\script\\missions\\yandibaozang\\npc\\yandibaozang_main.lua"},
{1320,80,4,37,1622,3019,0,"B×nh B×nh C« N­¬ng",0,"\\script\\missions\\yandibaozang\\npc\\yandibaozang_main.lua"},
{1320,80,4,37,1857,2968,0,"Viªm  ®Õ b¶o tµng",0,"\\script\\missions\\yandibaozang\\npc\\yandibaozang_main.lua"},

 --{625,80,4,1008,2079,3422,0,"R­¬ng Chøa §å",0,"\\script\\fwcloud\\dautruongsinhtu\\npc\\box.lua",},
 --{625,80,4,1006,1889,3583,0,"R­¬ng Chøa §å",0,"\\script\\fwcloud\\dautruongsinhtu\\npc\\box.lua",},

 --{625,80,4,1007,1563,2801,0,"Tæng Qu¶n HËu CÇn",0,"\\script\\fwcloud\\dautruongsinhtu\\npc\\box.lua",},

{389,80,4,851,1577,3184,0,"D­îc th­¬ng",0,"\\script\\missions\\yandibaozang\\npc\\yaoshang.lua"},
{389,80,4,851,1607,3178,0,"D­îc th­¬ng",0,"\\script\\missions\\yandibaozang\\npc\\yaoshang.lua"},
{389,80,4,852,1577,3184,0,"D­îc th­¬ng",0,"\\script\\missions\\yandibaozang\\npc\\yaoshang.lua"},
{389,80,4,852,1607,3178,0,"D­îc th­¬ng",0,"\\script\\missions\\yandibaozang\\npc\\yaoshang.lua"},
{447,1,4,37,1850,3679,0,"TiÕp nhËn tiªu bang",0,"\\script\\global\\quanlygame\\sukien\\vantieubanghoi\\npcdichden.lua",},

}


addmasknpc = {

}


Include([[\script\event\springfestival07\head.lua]]);

tab_springfestivalNPC = {
--2007 bac dau lao nhan
	-- {108,78,1581,3233,[[\script\event\springfestival08\allbrother\beidoulaoren.lua]],"B¾c §Èu L·o Nh©n"},
	-- {108,53,1630,3182,[[\script\event\springfestival08\allbrother\beidoulaoren.lua]],"B¾c §Èu L·o Nh©n"},
	-- {108,53,1607,3209,[[\script\event\springfestival08\allbrother\beidoulaoren.lua]],"B¾c §Èu L·o Nh©n"},
	-- {108,11,3137,5078,[[\script\event\springfestival08\allbrother\beidoulaoren.lua]],"B¾c §Èu L·o Nh©n"},
	-- {108,37,1753,3073,[[\script\event\springfestival08\allbrother\beidoulaoren.lua]],"B¾c §Èu L·o Nh©n"},
	-- {108,176,1576,3111,[[\script\event\springfestival08\allbrother\beidoulaoren.lua]],"B¾c §Èu L·o Nh©n"},
	-- {108,80,1750,3001,[[\script\event\springfestival08\allbrother\beidoulaoren.lua]],"B¾c §Èu L·o Nh©n"},
	-- {108,53,1617,3205,[[\script\event\springfestival08\allbrother\beidoulaoren.lua]],"B¾c §Èu L·o Nh©n"},
	
};

tab_zingplay_npc = {

}

--220/192
local tbActNpcList =
{
};

Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\event\\other\\shensuanzi\\class.lua")
Include("\\script\\activitysys\\functionlib.lua")

Include("\\script\\task\\150skilltask\\g_task.lua")

function main()
   -- dofile("script/global/autoexec.lua");
   BattleChallenge:AddNpcDialog();   
	DynamicExecute("\\script\\missions\\tianchimijing\\floor1\\gamefloor1.lua","GameFloor1:Start")
	DynamicExecute("\\script\\missions\\tianchimijing\\floor2\\gamefloor2.lua","GameFloor2:Start")
	DynamicExecute("\\script\\missions\\tianchimijing\\floor3\\gamefloor3.lua","GameFloor3:Start")
	DynamicExecute("\\script\\missions\\tianchimijing\\floor4\\gamefloor4.lua","GameFloor4:Start")
	
--ÔÂ¸èµº
	DynamicExecute("\\script\\missions\\yuegedao\\yuegedao\\yuegedaoworld.lua", "YueGeDaoWorld:Start")
	DynamicExecute("\\script\\missions\\yuegedao\\yuegemigu\\yuegemiguworld.lua", "YueGeMiGuWorld:Start")

	DynamicExecute("\\script\\changefeature\\initmap.lua", "AddDailogNpc")
	DynamicExecute("\\script\\global\\npc\\huoke.lua", "CallHuoKeInit")
	DynamicExecute("\\script\\missions\\tianchimijing\\floor1\\yunchihead.lua", "AddEnterNpc")
	tbShenSuanZi:Init()
	
	OpenGlbMission(8)
	
	-- Æô¶¯Êı¾İÍ³¼ÆÈÎÎñ
	OpenGlbMission(MSID_STAT_GOODS_SALE)
	
	mapcount = getn(maptab)
	for i = 1, mapcount do 
		idx = SubWorldID2Idx(maptab[i]);
		if (idx ~= -1) then 
			SubWorld = idx;
			OpenMission(2);
		end;
	end
	add_development(npchotrotanthu)
	buildAllCityInfoLeague()
	
	-- ¹Ò»úµØÍ¼ÈÎÎñ
	load_mission_aexp();
	add_dialognpc(adddialognpc);
	add_dialognpc(nw_npclist)
	add_dialognpc(npclist_sevencity)
	add_newtasknpc(addnewtasknpc);
	add_xishancunnpc(xishancunnpc);



	add_spreadernpc(spreadernpc);		--¼ÓÔØÓÎÏ·ÍÆ¹ãÔ±
	add_killertasknpc(addkillertasknpc);
	add_alltollgatenpc();   --¼ÓÔØ¹Ø¿¨ÈÎÎñµÄÏà¹Ønpc
	--add_allpartnernpc();     --¼ÓÔØÍ¬°éÈÎÎñµÄÏà¹Ønpc
	--add_zhongqiunpc();		--¼ÓÔØÖĞÇï»î¶¯npc
	cd_addsignnpc()			--¼ÓÔØÎÀ¹úÕ½Õù±¨ÃûµãNPC
	wlls_autoexe()	--WLLS ÎäÁÖÁªÈü
	--addNPCQuanLyDuaNgua()--Dua Ngua Xep Hang 
	add_dialognpc(%tbActNpcList)
	tongwar_addsignnpc()
	add_tongnpc()	--¼ÓÔØ°ï»áÏà¹Ønpc
	local n_date = tonumber(GetLocalDate("%Y%m%d"));
	local szRegion = GetProductRegion();
	if (szRegion == "cn" or szRegion == "cn_ib") then
		add_dialognpc(addmasknpc)	--7´ó³ÇÊĞ¼ÓÔØÒ×ÈİÊõÊ¿
		add_wulinnpc_2nd()	--µÚ¶ş½ìÎäÁÖ´ó»á¹ÙÔ±
		
		add_lv120skillnpc()		-- 120¼¶¼¼ÄÜÈÎÎñ
		-- 2006 Ê¥µ®»î¶¯
		add_dialognpc(ch06_addchristmasnpc);
		add_lottery_npc();	--ÎäÁÖÄ¼¾è»î¶¯Ôö¼Ó 4¸öÏåÑôÀñ¹Ù£»3ÔÂ³õÉ¾³ı
	--	addGraveStone(); -- 2006 ÇåÃ÷½Ú»î¶¯
		qm07_addGraveStone()
	end

	if (szRegion == "cn_ib") then
		addEmissaryNpc()        -- ÕĞÄ¼Ê¹ÁúÂöÈÎÎñ
	end

	if (szRegion == "vn") then
		add_dialognpc(ACT2YEAR_YN_NPC);	--Á½ÖÜÄê»î¶¯NPC   by×Ó·ÇÓã 2008-10-09É¾³ı¹ıÆÚNPC
		AnonymVale_auto();			--ÍĞ¹ÜµØÍ¼
		add_dialognpc(tab_springfestivalNPC);
		add_dialognpc(addmoontown_mulao);	--ÊÕ¼¯ÉñÃØ¾íÖáÈÎÎñ£¬Ã÷ÔÂÕònpc by×Ó·ÇÓã 2008-10-09É¾³ı¹ıÆÚNPC
		--add_dialognpc(tbxmas2007_girl_binger) --2007Ê¥µ®»î¶¯£¬±ù¶ù
		--add_dialognpc(newyear_2008_chunjiecailu) --2008ĞÂÄê²ÉÂ»»î¶¯
		--Î÷É½Óì
		add_dialognpc(tbaddJinShanDao_NpcAndTrap.tbDialogNpc);--Ôö¼Ó¶Ô»°npc
		tbaddJinShanDao_NpcAndTrap:AddTrapR()--Ôö¼ÓÓÒtrapµã
		tbaddJinShanDao_NpcAndTrap:AddTrapL()--Ôö¼Ó×ótrapµã
		tbaddJinShanDao_NpcAndTrap:AddMons()--Ôö¼Ó¹ÖÎï

		--add_obstacle_map();
		if (n_date <= 20200101) then			-- JxWeb»î¶¯½áÊøÊ±¼ä
			add_dialognpc(tab_zingplay_npc);
		end
		if(SubWorldID2Idx(11) >= 0) then
			local npcidx = AddNpc(245, 1, SubWorldID2Idx(11), 390 * 8 * 32, 317 * 16 * 32, 1, "»ÆÁ¬ÀÑÀÑ");
			SetNpcScript(npcidx, "\\script\\event\\jiefang_jieri\\200904\\denggao\\npc.lua");
		end
		add_dialognpc(au06_tab_kidnpc);
		
		tbChangeDestiny:addNpc();	-- ÄæÌì¸ÄÃü
		tbNewPracticeMap:addNpc();	-- ĞÂÁ·¼¶µØÍ¼
		tbBeatTiger:AddNpc();		-- Ñ°»¨´ò»¢

	end
	--Ôö¼Ó´óÀíºÚ¶´trapµã
	add_trap_daliheidong()
	--Ôö¼Óãê¾©Î÷³ÇÃÅtrapµã
	add_trap_bianjingximen()
	add_heisha_entertrap();
	
	G_ACTIVITY:LoadActivitys()
	G_TASK:LoadAllConfig()
	G_ACTIVITY:OnMessage("ServerStart");
	
	tbTimeLineManager:LoadAllTimeLine(tbTimeLineList);
	AutoFunctions:Run()
	
	local szFile = "\\script\\event\\great_night\\great_night_head.lua"
	DynamicExecute(szFile, "OnGreatNightServerStart")
end;

function load_mission_aexp()
	mapTab = {235, 236, 237, 238, 239, 240, 241};
	nCount = getn(mapTab);
	
	oldSubWorld = SubWorld;
	for i = 1, nCount do
		idx = SubWorldID2Idx(mapTab[i]);
		if (idx ~= -1) then 
			SubWorld = idx;
			OpenMission(9);	-- 9Îª¹Ò»úMission ID
		end;
	end;
	
	SubWorld = oldSubWorld;
end;

function add_dialognpc(Tab)
	for i = 1 , getn(Tab) do 
		local itemlist = Tab[i]
		SId = SubWorldID2Idx(itemlist[2]);
		if (SId >= 0) then
			
			npcindex = AddNpc(itemlist[1], 1, SId, itemlist[3] * 32, itemlist[4] * 32, 1, itemlist[6]);
			SetNpcScript(npcindex, itemlist[5]);
		else
			if itemlist[1] == 1454 then
				print(itemlist[6], itemlist[2])
			end
		end;
	end	
end;

function add_newtasknpc(Tab1)
	for i = 1 , getn(Tab1) do
		Mid = SubWorldID2Idx(Tab1[i][4]);
		if (Mid >= 0 ) then
			TabValue5 = Tab1[i][5] * 32
			TabValue6 = Tab1[i][6] * 32
			newtasknpcindex = AddNpc(Tab1[i][1],Tab1[i][2],Mid,TabValue5,TabValue6,Tab1[i][7],Tab1[i][8]);
			SetNpcScript(newtasknpcindex, Tab1[i][10]);
		end;
	end;
end;

function add_development(npchotrotanthu)
	for i = 1 , getn(npchotrotanthu) do
		Mid = SubWorldID2Idx(npchotrotanthu[i][4]);
		if (Mid >= 0 ) then
			TabValue5 = npchotrotanthu[i][5] * 32;
			TabValue6 = npchotrotanthu[i][6] * 32;
			local nNpcIdx = AddNpc(npchotrotanthu[i][1],npchotrotanthu[i][2],Mid,TabValue5,TabValue6,npchotrotanthu[i][7],npchotrotanthu[i][8]);
			SetNpcTimer(nNpcIdx,5*18)
			SetNpcScript(nNpcIdx, npchotrotanthu[i][10]);
		end;
	end;
end
