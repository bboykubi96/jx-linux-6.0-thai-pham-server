Include("\\script\\lib\\awardtemplet.lua")
local tbItem = 
{
{szName=" Hång ¶nh ThÈm Viªn UyÓn ", nQuality=1, tbProp={0, 434},nExpiredTime = 10080, nBindState = -2}, 
{szName=" Hång ¶nh KiÕm Bµi ", nQuality=1, tbProp={0, 435},nExpiredTime = 10080, nBindState = -2}, 
{szName="Hång ¶nh Môc Tóc ", nQuality=1, tbProp={0, 436},nExpiredTime = 10080, nBindState = -2}, 
{szName=" Hång ¶nh Tô Chiªu ", nQuality=1, tbProp={0, 437},nExpiredTime = 10080, nBindState = -2},  
}
function main()
	
	if  CountFreeRoomByWH(2, 5, 1) < 1 then
       Talk(1, "", format("V× b¶o ®¶m ®¹i hiÖp tµi s¶n an toµn , xin/mêi l­u l¹i %d %dx%d trang bÞ chç trèng ", 1, 2, 5)) 
		return 1
	end
	tbAwardTemplet:GiveAwardByList(%tbItem, "hongying baoxiang")
	
end