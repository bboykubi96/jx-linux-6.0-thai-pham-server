-- script viet hoa By http://tranhba.com  vò thÇn ban phóc 
-- script viet hoa By http://tranhba.com wushenbless.lua 
-- script viet hoa By http://tranhba.com  sö dông sau nh­ng ®¹t ®­îc 2 giê ( hÖ thèng thêi gian ) ë tèng kim # tin/th¬ khiÕn cho # x«ng quan # liªn cuéc so tµi # d· tÈu # huy hoµng chi trong ®ªm ®é cèng hiÕn gÊp ®«i tr¹ng th¸i 
-- script viet hoa By http://tranhba.com Task2509 
Include("\\script\\lib\\awardtemplet.lua")
local tbBATTLEMAP = {44, 326, 327, 328, 329, 330, 331,333, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 868, 869, 870,876,877,878,879,880,881,883,884,885, 898, 899, 900, 902, 903, 904,970,971};--ËùÓÐÕ½ÒÛÓÃµ½µÄµØÍ¼ÁÐ±í

function main(nItemIdx) 
-- Say("TÝnh n¨ng t¹m thêi ®ãng ®Ó kiÓm tra lçi ph¸t sinh. §¹i hiÖp th«ng c¶m.")
do return  end
local nCurrentMinute = GetCurServerTime()
Msg2Player("Thoi gian "..nCurrentMinute)
local nLastMinute = GetTask(2999)
if abs(nCurrentMinute - nLastMinute) < 300 and nLastMinute ~=0 then
Msg2Player("Mçi 5 phót ng­êi ch¬i míi cã thÓ sö dông tói m¸u 1 lÇn. §¹i hiÖp th«ng c¶m. ")
return 1
end
local nW,_,_=GetWorldPos()
for _,nBattleMapId in %tbBATTLEMAP do
	if nW == nBattleMapId then
		Msg2Player("§¹o cô nµy kh«ng thÓ sö dông trong map Tèng Kim",0)
		return 1
	end
end
if GetPK() > 5 then
Msg2Player("PK trªn 5 kh«ng ®­îc nhËn sù hç trî nµy.",0)
return 1
end
if CalcFreeItemCellCount() < 30 then
	Msg2Player("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng råi quay l¹i gÆp ta",0);
	return 1;
end
if GetLevel() >= 81 then
Msg2Player("CÊp 81 trë lªn ng­¬i ®· ®¸nh mÊt ®Æc ©n nµy råi. Th«ng c¶m.", 0);
return 
end
local tbAwards={
{szName = "Ngò hoa ngäc lé hoµn",tbProp={1, 2, 0, 5, 0, 0},nBindState=-2,nCount=30,},
}
tbAwardTemplet:GiveAwardByList(tbAwards, "Nhan ho tro mau tan thu")
SetTask(2999,nCurrentMinute)
return 1
end; 
