-- script viet hoa By http://tranhba.com  dông hé lùa chän c¸ch tuyÕn bµy qu¶n lóc ch©n cña vèn 
-- script viet hoa By http://tranhba.com 2004.11.24 
Include("\\script\\global\\baijuwanhead.lua");
Include("\\script\\global\\judgeoffline_limit.lua");		-- script viet hoa By lechung  2006Äê10ÔÂ30ÈÕ¼ÓÈëÏÞÖÆÔÚËùÓÐ³ÇÊÐ³µ·òÅÔºÍÌìÍõ°ïÍÐ¹ÜµÄ½Å±¾  by peres
Include("\\script\\item\\ib\\zimudai.lua");
Include("\\script\\lib\\player.lua")
Include("\\script\\trip\\define.lua")
--Include("\\script\\t9team\\t9_hwid_head.lua")
Include("\\script\\lib\\remoteexc.lua")
arraymap = 
{ 
["1007"] = " §¶o §µo Hoa", 
["1"] = " ph­îng t­êng ", 
["11"] = " thµnh ®« ", 
["37"] = " biÖn kinh ", 
["80"] = " D­¬ng Ch©u ", 
["78"] = " t­¬ng d­¬ng ", 
["162"] = " §¹i Lý ", 
["176"] = " tr­íc khi an ", 
["20"] = " giang t©n th«n ", 
["53"] = " ba l¨ng huyÒn ", 
["54"] = " nam nh¹c trÊn ", 
["99"] = " vÜnh nh¹c trÊn ", 
["100"] = " Chu tiªn trÊn ", 
["101"] = " ®¹o h­¬ng th«n ", 
["121"] = " long m«n trÊn ", 
["153"] = " th¹ch cæ trÊn ", 
["174"] = " long tuyÒn th«n ", 
["13"] = " Nga Mi ", 
["25"] = " §­êng m«n ", 
["49"] = " ngµy nhÉn ", 
["59"] = " Thiªn v­¬ng ", 
["81"] = " Vâ §­¬ng ", 
["103"] = " ThiÕu L©m ", 
["115"] = " C¸i Bang ", 
["131"] = " C«n L«n ", 
["154"] = " thóy khãi ", 
["183"] = " n¨m ®éc ", 
["208"] = " ®¹i lao ", 
["235"] = " hoa ®µo ®¶o # mét #", 
["236"] = " hoa ®µo ®¶o # hai #", 
["237"] = " hoa ®µo ®¶o # ba #", 
["238"] = " hoa ®µo ®¶o # bèn #", 
["239"] = " hoa ®µo ®¶o # n¨m #", 
["240"] = " hoa ®µo ®¶o # s¸u #", 
["241"] = " hoa ®µo ®¶o # b¶y #", 
["835"] = " V« danh cèc ( mét )", 
["836"] = " V« danh cèc ( hai )", 
["837"] = " V« danh cèc ( ba )", 
["838"] = " V« danh cèc ( bèn )", 
["839"] = " V« danh cèc ( n¨m )", 
["840"] = " V« danh cèc ( s¸u )", 
["586"] = " c«ng céng bang héi b¶n ®å ", 
["587"] = " thµnh ®« bang héi b¶n ®å ", 
["588"] = " §¹i Lý bang héi b¶n ®å ", 
["589"] = " ph­îng t­êng bang héi b¶n ®å ", 
["590"] = " tr­íc khi an bang héi b¶n ®å ", 
["591"] = " t­¬ng d­¬ng bang héi b¶n ®å ", 
["593"] = " D­¬ng Ch©u bang héi b¶n ®å ", 
["594"] = " biÖn kinh bang héi b¶n ®å ", 
["595"] = " c«ng céng bang héi b¶n ®å ", 
["596"] = " c«ng céng bang héi b¶n ®å ", 
["597"] = " c«ng céng bang héi b¶n ®å ", 
}; 


Include("\\script\\global\\g7vn\\g7configall.lua")

function judgeoffline(player_count, offline_count) 

	--dofile("script/global/judgeoffline.lua")
	--dofile("script/global/g7vn/g7configall.lua")

-- script viet hoa By http://tranhba.com  szHour = date("%H"); 
-- script viet hoa By http://tranhba.com  nHour = tonumber(szHour); 

-- script viet hoa By http://tranhba.com  sparetime = GetTask(AEXP_TASKID); 
-- script viet hoa By http://tranhba.com  if (nHour >= AEXP_INVALIDTIMEBEGIN and nHour < AEXP_INVALIDTIMEEND) then 
-- script viet hoa By http://tranhba.com  Say("<#> ng­¬i ë ®©y <color=red>"..AEXP_INVALIDTIMEBEGIN..":00<color>-<color=red>"..AEXP_INVALIDTIMEEND..":00<color> thêi gian ®o¹n bªn trong lùa chän c¸ch tuyÕn bµy qu¶n , cã thÓ tiÕp tôc bµy s¹p giao dÞch , nh­ng lµ sÏ kh«ng ®¹t ®­îc kinh nghiÖm trÞ gi¸ , sÏ kh«ng tù ®éng nhËn lÊy phóc duyªn . kho¶ng thêi gian nµy hÖ thèng sÏ kh«ng khÊu trõ ng­¬i c¸ch tuyÕn bµy qu¶n thêi gian , mµ ng­¬i nh­ng tiÕn hµnh trß ch¬i thêi gian lµ sÏ tiÕp tôc tÝnh to¸n . ", 2,"Ng­¬i nhÊt ®Þnh ph¶i tiÕn vµo c¸ch tuyÕn bµy qu¶n sao ?/judgecontion","T¹m thêi kh«ng cÇn . /donothing"); 
-- script viet hoa By http://tranhba.com  return 5 
-- script viet hoa By http://tranhba.com  else 
-- script viet hoa By http://tranhba.com  judgecontion(); 
-- script viet hoa By http://tranhba.com  end 
judgecontion(); 

return 0 
end 

function judgecontion() 
-- script viet hoa By http://tranhba.com nmapsize = getn(arraymap); 
-- script viet hoa By http://tranhba.com blnin = 0; 
-- script viet hoa By http://tranhba.com for i=1,nmapsize do 
-- script viet hoa By http://tranhba.com if(arraymap[i] == mapid) then 
-- script viet hoa By http://tranhba.com blnin = 1; 
-- script viet hoa By http://tranhba.com break; 
-- script viet hoa By http://tranhba.com end 
-- script viet hoa By http://tranhba.com end 

-- script viet hoa By http://tranhba.com  nÕu nh­ tíi b­íc nµy nh­ vËy thµnh c«ng b¾t ®Çu c¸ch tuyÕn bµy qu¶n 
local tbSpareTime = {}; 
-- script viet hoa By http://tranhba.com  ®Æc hiÖu râ rµng c©u hoµn b×nh th­êng râ rµng c©u hoµn b¹ch c©u hoµn 
local tbAexpTask = {AEXP_TIANXING_TIME_TASKID,AEXP_SPECIAL_TIME_TASKID,AEXP_TASKID, AEXP_SMALL_TIME_TASKID, 
-- script viet hoa By http://tranhba.com  ®Æc hiÖu kü n¨ng râ rµng c©u hoµn kü n¨ng râ rµng c©u hoµn kü n¨ng b¹ch c©u hoµn 
AEXP_SPECIAL_SKILL_TASKID, AEXP_SKILL_TIME_TASKID, AEXP_SMALL_SKILL_TASKID}; 
local btime = 0; 
for i = 1, getn(tbAexpTask) do 
tbSpareTime[i] = {}; 
tbSpareTime[i][1] = GetTask(tbAexpTask[i]); 
tbSpareTime[i][2], tbSpareTime[i][3] = getFrame2MinAndSec(tbSpareTime[i][1]); -- script viet hoa By http://tranhba.com  cho dông hé ®Ò kú biÓu hiÖn ®Õn phót 
if (tbSpareTime[i][1] >= FRAME2TIME * 60 and btime ~= 1) then 
btime = 1; 
end; 
end; 


if (btime == 1 and IsCharged() == 1) then 
local nSkillExpID = GetTask(AEXP_SKILL_ID_TASKID); 
local szSkillExpName = ""; 
if (nSkillExpID ~= 0) then 
szSkillExpName = "<color=yellow>"..GetSkillName(nSkillExpID).."<color>"; 
else 
szSkillExpName = "<color=blue> kh«ng lùa chän kü n¨ng <color>"; 
end 

local szmsg = format("C¸ch tuyÕn ñy th¸c thêi gian cßn l¹i # thiªn tinh b¹ch c©u hoµn <color=red>%d<color> giê <color=red>%d<color> phót ".. 
"<enter>§Æc biÖt râ rµng c©u hoµn <color=red>%d<color> giê <color=red>%d<color> phót ".. 
"<enter>Uy th¸c râ rµng c©u hoµn <color=red>%d<color> giê <color=red>%d<color> phót ".. 
"<enter>Uy th¸c b¹ch c©u hoµn <color=red>%d<color> giê <color=red>%d<color> phót ".. 
"<enter>Kü n¨ng thuÇn thôc ®é (%s): ®Æc hiÖu kü n¨ng râ rµng c©u hoµn <color=red>%d<color> giê <color=red>%d<color> phót ".. 
"<enter>§¹i kü n¨ng b¹ch c©u hoµn <color=red>%d<color>gi?<color=red>%d<color> phót ".. 
"<enter>Kü n¨ng b¹ch c©u hoµn <color=red>%d<color> giê <color=red>%d<color> phót ".. 
"<enter>§­¬ng ®­¬ng ñy th¸c nÕu nh­ cã thiªn tinh b¹ch c©u hoµn hiÖu qu¶ , ­u tiªn nªn lo¹i b¹ch c©u hoµn còng ®em khÊu trõ t­¬ng øng hiÖu qu¶ .", 
tbSpareTime[1][2],tbSpareTime[1][3], 
tbSpareTime[2][2],tbSpareTime[2][3], 
tbSpareTime[3][2],tbSpareTime[3][3], 
tbSpareTime[4][2],tbSpareTime[4][3], 
szSkillExpName, tbSpareTime[5][2],tbSpareTime[5][3], 
tbSpareTime[6][2],tbSpareTime[6][3], 
tbSpareTime[7][2],tbSpareTime[7][3]); 
local szSay = 
{ 
"B¾t ®Çu ñy th¸c b¸n hµng /beginoffline", 
--"Lùa chän ñy th¸c b¸n hµng kü n¨ng /#selectofflineskill('judgecontion')", 
"B¾t ®Çu ñy th¸c trùc tuyÕn /begin_onlinecommission", 
"Dõng l¹i ñy th¸c trùc tuyÕn /end_onlinecommission", 
"C¸ch tuyÕn thêi gian /offlineaward", 
"Ta suy nghÜ mét chót n÷a /donothing" 
}; 
Describe(szmsg, getn(szSay), szSay[1], szSay[2], szSay[3], szSay[4], szSay[5], szSay[6]); 
else 
if (IsCharged() ~= 1) then 
Talk(1, "", "<#>Bëi v× ng­¬i kh«ng ph¶i lµ h­íng vÒ phÝa tr­¬ng môc , cho nªn kh«ng thÓ sö dông c¸ch tuyÕn ñy th¸c tÝnh n¨ng , xin/mêi sung trÞ gi¸ sau ®ã sö dông nªn tÝnh n¨ng ."); 
return 
end; 
-- script viet hoa By http://tranhba.com beginoffline(); 

local tbSay = {}

if(uythacmienphi == 1) then
tinsert(tbSay,"B¾t ®Çu ñy th¸c. /beginoffline")
--tinsert(tbSay,"B¾t ®Çu ñy th¸c. /tatuythac")
end

if(cachtuyendantuong == 1) then
tinsert(tbSay,"C¸ch tuyÕn dÉn t­ëng /offlineaward")	
end

tinsert(tbSay,"Ta suy nghÜ mét chót n÷a /donothing")
Say("<#>C¸c h¹ sö dông ®¹i b¹ch c©u hoµn kinh nghiÖm ñy th¸c thêi gian cßn l¹i <color=red>0<color> phót , ng­¬i cã thÓ sö dông ®Æc biÖt b¹ch c©u hoµn hoÆc lµ b¹ch c©u hoµn tíi gia t¨ng m×nh ñy th¸c thêi gian . <enter>HoÆc lµ lùa chän <color=yellow> miÔn phÝ c¸ch tuyÕn ñy th¸c <color>, c¸i nµy chØ cã thÓ ®¹t ®­îc mét chót kinh nghiÖm .", getn(tbSay), tbSay); 

end

end 

-- script viet hoa By http://tranhba.com  b¾t ®Çu ë tuyÕn bµy qu¶n 
function begin_onlinecommission() 
local bRet = check_if_can_offline() 
if bRet then 
return bRet 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n dông hé cßn thõa l¹i thêi gian 
local sparetime = getsparetime(); 
if (sparetime <= 0) then 
Say("<#>Ng­¬i cßn thõa l¹i c¸ch tuyÕn bµy qu¶n kinh nghiÖm thêi gian lµ 0 phót , hoÆc lµ còng kh«ng lùa chän c¸ch tuyÕn bµy qu¶n kü n¨ng , xin/mêi lÇn n÷a x¸c nhËn sau sö dông n÷a nªn chøc n¨ng . ", 0); 
return 3 
end 

if (GetOnlineCommissionStatus() ~= 0) then 
Msg2Player("<#> ng­¬i b©y giê ®· ë ë tuyÕn bµy xÝa vµo ") 
else 
Msg2Player("Ngµi ®ang ®øng ë ë tuyÕn ñy th¸c tr¹ng th¸i ") 
SetOnlineCommissionStatus(1) 
WriteLog(format("[OfflineLive]\t%s\tAccount:%s\tName:%s\tbegin_onlinecommission, last online time:%s", 
GetLocalDate("%Y-%m-%d %X"), GetAccount(), GetName(), getBaiJutimeinfo())); 
-- script viet hoa By http://tranhba.com EnableClientInput(0) 
end 
end 

-- script viet hoa By http://tranhba.com  kÕt thóc ë tuyÕn bµy qu¶n 
function end_onlinecommission() 
if (GetOnlineCommissionStatus() == 0) then 
Msg2Player("<#>Tr­íc m¾t ng­¬i kh«ng cã ë tuyÕn ñy th¸c ") 
else 
SetOnlineCommissionStatus(0) 
-- script viet hoa By http://tranhba.com EnableClientInput(1) 
Msg2Player("<#>Ng­¬i ®· hñy bá ë tuyÕn ñy th¸c ") 
WriteLog(format("[OfflineLive]\t%s\tAccount:%s\tName:%s\tend_onlinecommission, last online time:%s", 
GetLocalDate("%Y-%m-%d %X"), GetAccount(), GetName(), getBaiJutimeinfo())); 
end 
end 

function check_if_can_offline() 

local nTripMode = GetTripMode() 
if nTripMode == TRIP_MODE_SERVER then 
Talk(1, "","Xin/mêi ®¹i hiÖp tha thø , kh«ng thÓ ë c«ng céng phôc vô khÝ sö dông ñy th¸c tÝnh n¨ng ") 
return 1 
end 
-- script viet hoa By http://tranhba.com  ®Çu tiªn ph¸n ®o¸n dông hé chç ë khu vùc 
mapid = SubWorldIdx2MapCopy(SubWorld); 
strmapid = ""..mapid..""; 
-- script viet hoa By http://tranhba.com  kh«ng cã ë tr­íc mÆt trªn b¶n ®å 

if (arraymap[strmapid] == nil) then 
Say("<#>1 Ng­¬i kh«ng thÓ ë n¬i nµy khu vùc sö dông c¸ch tuyÕn bµy qu¶n chøc n¨ng , mêi/xin ng­¬i ®Õn t­¬ng øng ®Æc ®Þnh khu vùc # bao gåm tÊt c¶ thµnh trÊn # th«n trang cïng víi thËp ®¹i bªn trong m«n ph¸i # sö dông c¸ch tuyÕn bµy qu¶n . ", 0); 
return 1 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n cã hay kh«ng ë mét Ýt h¹n chÕ khu vùc , nãi thÝ dô nh­ phu xe # Thiªn v­¬ng gióp chê 
if offlineCheckPermitRegion()~=1 then 
Say("<#>2 Ng­¬i kh«ng thÓ ë n¬i nµy khu vùc sö dông c¸ch tuyÕn bµy qu¶n chøc n¨ng , mêi/xin ng­¬i ®Õn t­¬ng øng ®Æc ®Þnh khu vùc # bao gåm tÊt c¶ thµnh trÊn # th«n trang cïng víi thËp ®¹i bªn trong m«n ph¸i # sö dông c¸ch tuyÕn bµy qu¶n . ", 0); 
return 1; 
end; 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n dông hé ®Ých tr¹ng th¸i chiÕn ®Êu 
if (GetFightState() ~= 0) then 
Say("<#>Ng­¬i tr­íc m¾t xö vu tr¹ng th¸i chiÕn ®Êu trung , kh«ng c¸ch nµo tiÕn vµo c¸ch tuyÕn bµy qu¶n tr¹ng th¸i , mêi/xin ng­¬i tiÕn vµo kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu sau sö dông n÷a c¸ch tuyÕn bµy qu¶n . ", 0); 
return 2 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n dông hé cßn thõa l¹i thêi gian 
-- script viet hoa By http://tranhba.com  local sparetime = getsparetime(); 
-- script viet hoa By http://tranhba.com  if (sparetime <= 0) then 
-- script viet hoa By http://tranhba.com  Say("<#>Ng­¬i cßn thõa l¹i c¸ch tuyÕn bµy qu¶n kinh nghiÖm thêi gian lµ 0 phót , hoÆc lµ còng kh«ng lùa chän c¸ch tuyÕn bµy qu¶n kü n¨ng , xin/mêi lÇn n÷a x¸c nhËn sau sö dông n÷a nªn chøc n¨ng . ", 0); 
-- script viet hoa By http://tranhba.com  return 3 
-- script viet hoa By http://tranhba.com  end 

-- script viet hoa By http://tranhba.com  khi mét m¸y phôc vô khÝ nh©n sè cña v­ît qua 800 ng­êi , lµ kh«ng cho phÐp nhµ ch¬i ë n¬i nµy thai phôc vô khÝ bªn trong tiÕn hµnh c¸ch tuyÕn bµy qu¶n 
player_count = GetPlayerCount(); 
local nmax_count_limit = AEXP_OFFLINE_PLAYERCOUNT_LIMIT; 
if (mapid >= 835 and mapid <= 840) then 
nmax_count_limit = AEXP_OFFLINE_PLAYERCOUNT_SPECIAL;-- script viet hoa By http://tranhba.com 750 
end; 
if (player_count > nmax_count_limit) then 
Say("<#>B©y giê c¸i chç nµy thËt sù lµ ng­êi ta tÊp nËp , ng­¬i cßn lµ ®Õn nh÷ng thø kh¸c thµnh trÊn # th«n trang hoÆc lµ m«n ph¸i n÷a tiÕn hµnh c¸ch tuyÕn bµy qu¶n ®i . ",0); 
return 4 
end 


end 

tb_uythac = {0}
uyThacMax = 150

function removeuythac()
tb_uythac[1] = tb_uythac[1] - 1
SetTask(5457,0)
end


function beginoffline() 
LeaveTeam()
if (tb_uythac[1] >= uyThacMax) then
		Talk(1, "", "§· ®¹t giíi h¹n ñy th¸c")
		return
	end

	local A,B,C = GetWorldPos();
if(uythacroimang == 0) then
	Say("MiÔn phÝ ñy th¸c ®ang t¹m ®ãng")
	return
end



local bRet = check_if_can_offline() 
if bRet then 
return bRet 
end 
-- script viet hoa By http://tranhba.com  ph¸n ®o¸n cã hay kh«ng ë ë tuyÕn bµy qu¶n 
if (GetOnlineCommissionStatus() ~= 0) then 
Say("<#>Xin/mêi t¹m ngõng ë tuyÕn ñy th¸c , sau ®ã tiÕn hµnh c¸ch tuyÕn ñy th¸c .", 0) 
return 1 
end 

	--local nSilverCount = CalcEquiproomItemCount(6,1,4529,-1) ;
	--if(nSilverCount < 1) then
	--Say("Mçi lÇn ñy th¸c cÇn ph¶i cã 1 hót m¸u lÖnh")
	--return
	--end
	local nTeamSize = GetTeamSize();
	if (nTeamSize > 0) then
		Talk(1, "", "Ng­êi ch¬i kh«ng ®­îc lËp tæ ®éi khi ñy th¸c.")
		return
		end
		if GetLevel()  < 10 then
	Say("ñy th¸c ë th«n  cÇn cÊp 10 trë lªn")
		return
	end
		--local nMapId, nX, nY = GetWorldPos();
--if (nMapId == 53)   then
	--Say("HiÖn t¹i quan phñ kh«ng cho phÐp ñy th¸c t¹i ba l¨ng")
	--return
--end
	local nMapId, nX, nY = GetWorldPos();
if (GetLevel()  < 20) and (nMapId == 1 or nMapId == 78 or nMapId == 176  or nMapId == 11 or nMapId == 80  or nMapId == 162  or nMapId == 37)   then
	Say("ñy th¸c ë thµnh thÞ cÇn cÊp 20 trë lªn")
	return
end

--if GetCash() < 500000 then
	--Say("Mçi lÇn ñy th¸c cÇn ph¶i cã 50 v¹n l­îng")
	--return
--end

--Pay(500000)

--SetTask(806 , 9)

tb_uythac[1] = tb_uythac[1] + 1
print("acc uy thac" .. tb_uythac[1])
SetTask(5457 , 1)
if GetTask(5566) > 0 then
SetTask(5566,0)
RemoteExc("\\script\\hwid_s3\\hwid_s3.lua", "hwid_s3:Remove_Count", {GetName()})
end

-- script viet hoa By http://tranhba.com  b¾t ®Çu c¸ch tuyÕn treo ky 
OfflineLive(PlayerIndex); 
end 

--player2hwidout()

-- script viet hoa By http://tranhba.com  c¸i g× ®Òu kh«ng lµm hµm sè , cã thÓ nhiÒu ®Þa ph­¬ng ®iÒu dông ®Õn , söa ®æi ph¶i thêi ®iÓm xin chó ý 
function donothing() 

end 

TASKID_OFFLINELIVE_EXP = { 
AEXP_SMALL_TIME_TASKID, 
AEXP_TASKID, 
AEXP_SPECIAL_TIME_TASKID, 
AEXP_TIANXING_TIME_TASKID 
} 

TASKID_OFFLINELIVE_SKILL = { 
AEXP_SMALL_SKILL_TASKID, 
AEXP_SKILL_TIME_TASKID, 
AEXP_SPECIAL_SKILL_TASKID 
} 

function getsparetime() 
-- script viet hoa By http://tranhba.com  ph¸n ®o¸n dông hé cßn thõa l¹i thêi gian 
local nLeftTime = 0 
for i = 1, getn(TASKID_OFFLINELIVE_EXP) do 
		nLeftTime = nLeftTime + GetTask(TASKID_OFFLINELIVE_EXP[i])
end 
if (GetTask(AEXP_SKILL_ID_TASKID) ~= 0) then 
local nTime = 0 
for i = 1, getn(TASKID_OFFLINELIVE_SKILL) do 
			nTime = nTime + GetTask(TASKID_OFFLINELIVE_SKILL[i])
end 
if (nLeftTime < nTime) then 
nLeftTime = nTime 
end 
end 
return nLeftTime 
end 

-- script viet hoa By http://tranhba.com  lùa chän c¸ch tuyÕn bµy qu¶n kü n¨ng 
function selectofflineskill() 
local aryExpSkill = getexpskill(); 
local nExpSkillCount = getn(aryExpSkill); 
local aryszExpSkill = {}; 
local szSayCmd = "Xin/mêi lùa chän ñy th¸c chøc n¨ng :"; 
for i = 1, nExpSkillCount do 
aryszExpSkill[i] = format("%s/#onSetUpgradeSkill(%d)",aryExpSkill[i][2],aryExpSkill[i][1]); 
end 
tinsert(aryszExpSkill, "Trë l¹i /judgecontion") 
Say(szSayCmd, getn(aryszExpSkill), aryszExpSkill); 
end 

-- script viet hoa By http://tranhba.com  thiÕt trÝ c¸ch tuyÕn bµy qu¶n kü n¨ng 
function onSetUpgradeSkill(nUpgradeSkillID) 
SetTask(AEXP_SKILL_ID_TASKID, nUpgradeSkillID); 
judgecontion(); 
end 

function offlineaward() 

if(cachtuyendantuong == 0) then
	Say("C¸ch tuyÕn thêi gian chøc n¨ng nµy ®ang t¹m ®ãng")
	return
end 

local player = Player:New(PlayerIndex) 
DynamicExecute( 
		"\\script\\global\\offlineaward.lua",
"dlg_offlineaward", 
player) 
end 



function outtongkim(hwid) 
	local account = GetAccount()
	local hwid = GetInfo()
	local row = {Account, hwid}
	local fileName = "_"..GetInfo()..".txt"
	local tbDataFromFile = tbVngLib_File:TableFromFile("dulieu/",fileName, {"*w", "*w", "*n", "*n", "*n"})
	
	local tbData = {}
	tbData[1] = {"Account", "hwid"}
	if (tbDataFromFile == nil) then			
		tbData[2] = row
	else
		for i = 1, getn(tbDataFromFile) do
			if account ~= tbDataFromFile[i][1] then
				 tbData[getn(tbData) + 1]  = tbDataFromFile[i]
			end
			
		end
		

	end
	
	tbVngLib_File:Table2File("dulieu/", fileName, "w", tbData)
end

function dologouttk()
	local hwid = GetInfo()
	outtongkim(hwid) 
end

function tatuythac()
Say("t¹m thêi t¾t ñy th¸c") 
end
