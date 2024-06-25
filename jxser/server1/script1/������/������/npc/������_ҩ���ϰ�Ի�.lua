--description: ¸½ºşÇø °İ¸êÏØ Ò©µêµÏ°å¶Ô»°£¨Ììİõ°ï40¼¶ÈÎÎñ¡¢Ğ¢ÊÖÈÎÎñĞ¡ÓæµùµùµÄ²¡£©
--author: yuanlan	
--date: 2003/4/26
-- Update: Dan_Deng(2003-08-10)
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\lib\\awardtemplet.lua");	
function main(sel)
	UTask_tw = GetTask(3)
	UTask_world18 = GetTask(46)
	if (UTask_tw == 40*256+20) then						-- Ììİõ40¼¶ÈÎÎñ
		Talk(5, "L40_tw_talk2", "ht1", "ht2", "ht3<color=Red>4<color> 5<color=Red>6<color>.7", "ht8")
	elseif(UTask_world18 == 1) then				-- Ğ¢ÊÖ´åĞ¡ÓæÈÎÎñ
		Talk(1,"","H¶?Bè cña TiÓu Ng­ bÖnh µ? Ng­¬i ®Õn chËm råi! Ta võa b¸n viªn Tú Bµ hoµn cuèi cïng cho ®Ö tö Thiªn V­¬ng. Hay lµ ng­¬i hái thö «ng ta xem. ")
		Msg2Player("Chñ d­îc ®iÕm cho biÕt: Tú Bµ Hoµn ®· b¸n hÕt. B¹n h·y ®i hái thö ®Ö tö Thiªn V­¬ng Bang. ")
		AddNote("Chñ d­îc ®iÕm cho biÕt: Tú Bµ Hoµn ®· b¸n hÕt. B¹n h·y ®i hái thö ®Ö tö Thiªn V­¬ng Bang. ")
	elseif (UTask_tw == 40*256+50) then
		Say("ht12<color=Red>13´<color> 14<olor=Red>115<color> 16<color=Red>17<color>, 18<color=Red>19<color>20", 2, "21/yes", "22/no")
	else							-- ·ÇÈÎÎñ×´Ì¬
		--Say("Bæn tiÖm ®Òu lµ thÇn d­îc! Cã bÖnh sÏ khái bÖnh, kh«ng bÖnh sÏ kháe, gi¸ c¶ ph¶i ch¨ng. Mua mét İt chø? ", 4, "Giao dŞch/yes", "Ta ®Õn nhËn nhiÖm vô s¬ nhËp/yboss","Mua M¸u Nhanh/muamauquanhanh","Kh«ng giao dŞch/no");
		Say("Bæn tiÖm ®Òu lµ thÇn d­îc! Cã bÖnh sÏ khái bÖnh, kh«ng bÖnh sÏ kháe, gi¸ c¶ ph¶i ch¨ng. Mua mét İt chø? ", 3, "Giao dŞch/yes", "Mua Tói M¸u T©n Thñ (100 V¹n)/tuimautanthu","Mua M¸u Nhanh (2000 l­îng -1 b×nh)/muamauquanhanh","Kh«ng giao dŞch/no");
	end
end;

function L40_tw_talk2()
	Talk(2,"","ht23<color=Red>24<color> 26<color=Red>27<color>28<color=Red>29<color>,30<color=Red>31<color>32", "33")
	SetTask(3, 40*256+50)								-- Ììİõ40¼¶ÈÎÎñ
	AddNote("ht34")
	Msg2Player("ht35.")
end;

function yes()
	Sale(12);  			--µ¯³ö½»Ò×¿ò
end;

function no()
end;
function tuimautanthu()
	if GetCash()>=1000000 then
		Pay(1000000)
		tbAwardTemplet:GiveAwardByList({{szName = "Tói M¸u",tbProp={6,1,4461,1,1},nCount=1},}, "test", 1);
	else
		Say("Hµnh trang kh«ng cã ®ñ 100 V¹n")
		return
	end
end
function muamauquanhanh()
	local pri = 100
	local totalcount =CalcFreeItemCellCount();
	local money = GetCash()
	local moneymin = (money - mod(money,pri)) / pri
	if totalcount == 0 then 
                       Say("<color=yellow>§¹i hiÖp ®· cã ®Çy r­¬ng m¸u.",0)
	return
	end
	if money>=totalcount*2000 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ngò hoa ngäc lé hoµn", tbProp ={ 1,2,0,5,0,0,0,0}, nRate = 100, nCount= totalcount}}, format("Get %s", "Than pham 1"))
	Pay(totalcount*2000)
	else
		Say("§¹i hiÖp kh«ng ®ñ ng©n l­îng ®Ó mua m¸u nhanh.")
		return
	end
end
