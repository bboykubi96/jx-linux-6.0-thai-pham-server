-- script viet hoa By http://tranhba.com  t­ëng th­ëng .lua ( bang héi ®¸nh n¨m thó ho¹t ®éng ) 
if (not __SF_AWARD_H__) then 
__SF_AWARD_H__ = 1; 

IncludeLib("FILESYS"); 
Include("\\script\\missions\\tong\\tong_springfestival\\head.lua");
SFHD_DATAFILE = [[\settings\tong\workshop\huodong_level_data.txt]]; 



function springfestival_aword(nTongID, nWorkshopID) 
if (GetTaskTemp(193) == 1) then 
return 
end; 
SetTaskTemp(193, 1); 
-- script viet hoa By http://tranhba.com  ®¹t ®­îc ho¹t ®éng ph­êng cÊp bËc 
local nLevel = TWS_GetLevel(nTongID, nWorkshopID); 
if (nLevel < 1 or nLevel > 10) then 
Say("Ng­¬i bang héi cßn ch­a x©y dùng nªn x­ëng .", 1,"Ta biÕt !/festival06_Cancal") 
return 0; 
end; 

local nGetCount = GetTask(SF_COUNT_ONETIME); 
local nRank = GetTask(SF_TK_RANK); 
SetTask(SF_COUNT_ONETIME, 0); 
SetTask(SF_TK_RANK, 0); 
if (nGetCount <= 0 or nRank <= 0) then 
Say("Ho¹t ®éng ph­êng tæng qu¶n : gièng nh­ ng­¬i cßn ch­a ®i ®¸nh n¨m thó , muèn dÉn t­ëng , nhanh ®i ®¸nh n¨m thó tr­íc ®i .", 1,"Chê coi /festival06_Cancal"); 
SetTaskTemp(193, 0); 
return 
end; 
local strniaoshou = " qu¸ nguy hiÓm , ng­¬i míi võa bÞ qu¸i thó x©m nhËp , may m¾n lµ mäi ng­êi hîp lùc ®uæi ®i qu¸i vËt . v× c¶m t¹ ng­¬i dòng c¶m , ta cã mét chót t©m ý , xin/mêi tiÕp n¹p . "; 
local stryongshi = " lµm rÊt tèt , ng­¬i ®· dïng ph¸o tr­îng ®¸nh tróng n¨m thó <color=yellow>"..nGetCount.."<color> lÇn , ®øng hµng thø ?<color=yellow>"..nRank.."<color>, ®©y lµ ®­a cho ng­¬i lÔ phÈm , cÇm ®i . "; 

festival_addaward(nRank); 
local isDouble = festival_double(nLevel);-- script viet hoa By http://tranhba.com  xem mét chót cã hay kh«ng ®¹t ®­îc gÊp ®«i 
if (1 == isDouble) then 
strniaoshou = " thËt lµ may m¾n , ng­¬i ®¹t ®­îc <color=red> gÊp ®«i t­ëng th­ëng <color>, "..strniaoshou; 
stryongshi = " thËt lµ may m¾n , ng­¬i ®¹t ®­îc <color=red> gÊp ®«i t­ëng th­ëng <color>, "..stryongshi; 
festival_addaward(nRank);-- script viet hoa By http://tranhba.com  gÊp ®«i t­ëng th­ëng 
end; 
if (GetTask(TK_GROUPID) > SF_SMALLMAPCOUNT) then 
Say(strniaoshou, 1,"NhËn lÊy lÔ vËt ./festival06_Cancal"); 
else 
Say(stryongshi, 1,"NhËn lÊy lÔ vËt ./festival06_Cancal"); 
end; 
SetTaskTemp(193, 0); 
end; 

-- script viet hoa By http://tranhba.com  lÊy ra tab v¨n kiÖn ®Ých néi dung 
function gettabfiledata(mapfile, row, col) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFile Error!"..mapfile) 
return 0 
else 
return tonumber(TabFile_GetCell(mapfile, row, col)) 
end 
end 

function festival_double(nLevel) 
local nResult = 0; 
local nSeed = random(100); 
	local nRate = tonumber(gettabfiledata(SFHD_DATAFILE, nLevel + 1, 7));
if (nSeed <= nRate * 100) then 
nResult = 1; 
end; 
return nResult; 
end; 

festival_tabExp = { 
5000000, 
4000000, 
3000000, 
2000000, 
1500000, 
1000000, 
500000, 
500000, 
}; 
festival_tabRate = { 
{0 ,0 ,0 ,0.464 ,0.2 ,0.175 ,0.15 ,0.01 ,0.001 ,0 }, 
{0 ,0 ,0 ,0.5562 ,0.2 ,0.145 ,0.09 ,0.008 ,0.0008 ,0 } , 
{0 ,0 ,0.3845 ,0.3 ,0.15 ,0.1 ,0.06 ,0.005 ,0.0005 ,0 } , 
{0 ,0 ,0.546 ,0.2 ,0.12 ,0.085 ,0.045 ,0.004 ,0 ,0 } , 
{0 ,0 ,0.653 ,0.15 ,0.09 ,0.075 ,0.03 ,0.002 ,0 ,0.01 } , 
{0 ,0.295 ,0.4 ,0.15 ,0.076 ,0.068 ,0.01 ,0.001 ,0 ,0 } , 
{0.267 ,0.3 ,0.2 ,0.12 ,0.08 ,0.03 ,0.003 ,0 ,0 ,0 } , 
{0.586 ,0.2 ,0.12 ,0.06 ,0.03 ,0.004 ,0 ,0 ,0 ,0 } 
}; 

festival_tab_Goods = { 
{"Phóc duyªn lé ( tiÓu ) ", 1, 122 }, 
{"Phóc duyªn lé ( trung ) ", 1, 123 }, 
{"Phóc duyªn lé ( ®¹i ) ", 1, 124 }, 
{"HuyÒn tinh 3 cÊp ", 3, 147 }, 
{"Tiªn th¶o lé ", 1, 71 }, 
{"HuyÒn tinh 4 cÊp ", 4, 147 }, 
{"HuyÒn tinh 5 cÊp ", 5, 147 }, 
{"HuyÒn tinh 6 cÊp ", 6, 147 }, 
{"HuyÒn tinh 7 cÊp ", 7, 147 }, 
{"Ngµy lÔ ph¸o tr­îng ", 1, 1345 }, -- script viet hoa By http://tranhba.com  x¸c suÊt ®iÒu v× 0 , kh«ng sinh ra 
}; 
function festival_addaward(nRank) 
if (nRank > getn(festival_tabExp)) then 
nRank = getn(festival_tabExp); 
end; 
nRank = festival_award_rank(nRank); 
festival_expaward(nRank); 
festival_goodsaward(nRank); 
-- script viet hoa By http://tranhba.com  if (nRank <= 2) then 
-- script viet hoa By http://tranhba.com  local nSeed = random(1, 100); 
-- script viet hoa By http://tranhba.com  if (nSeed <= 2) then 
-- script viet hoa By http://tranhba.com  AddItem(0, 11, 263, 1, 0, 0, 0); 
-- script viet hoa By http://tranhba.com  Msg2Player("Ng­¬i thu ®­îc mét <color=yellow> n¨m thó mÆt n¹ <color>") 
-- script viet hoa By http://tranhba.com  end; 
-- script viet hoa By http://tranhba.com  end; 
end; 

function festival_goodsaward(nRank) 
local nGroup = GetTask(TK_GROUPID); 
local nGoodsType = festival_getgoodtype(nRank, nGroup); 
local strsay = ""; 
if (festival_tab_Goods[nGoodsType][2] == 1) then 
AddItem(6, 1, festival_tab_Goods[nGoodsType][3], 1, 0, 0, 0); 
else 
AddItem(6, 1, festival_tab_Goods[nGoodsType][3], festival_tab_Goods[nGoodsType][2], 0, 0, 0); 
end; 
Msg2Player("Ng­¬i ®¹t ®­îc <color=yellow>"..festival_tab_Goods[nGoodsType][1].."<color>."); 
end; 

function festival_getgoodtype(nRank, nGroup) 
local nSeed = random(100); 
local nRate = {} 
local i; 
for i = 1, 10 do 
nRate[i] = festival_tabRate[nRank][i] * 100; 
end; 
local nBase = 0; 
for i = 1, 10 do 
		nBase = nBase + nRate[i];
if (nBase >= nSeed) then 
return i; 
end; 
end; 
end; 

function festival_expaward(nRank) 
if (nRank < 1) then 
nRank = 1; 
end; 
if (nRank > 8) then 
nRank = 8; 
end; 
local nCount = festival_tabExp[nRank]; 
AddOwnExp(nCount); 
Msg2Player("Ng­¬i ®¹t ®­îc <color=yellow>"..nCount.."<color> kinh nghiÖm trÞ gi¸ ") 
end; 

function festival_addpkwan() 
local itemidx = random(1, 10); 
AddItem(6, 0, itemidx, 1, 0, 0, 0); 
tab_pkwan_name = {"Tr­êng mÖnh hoµn ","Thªm ch¹y hoµn ","§¹i lùc hoµn ","Cao nhanh chãng hoµn ","Trung häc ®Ö nhÞ cÊp hoµn ","Nhanh chãng hoµn ","B¨ng phßng hoµn ", " l«i phßng hoµn ", " löa phßng hoµn ","§éc phßng hoµn "}; 
return tab_pkwan_name[itemidx]; 
end; 

function festival_award_rank(nRank) 
local nGroup = GetTask(TK_GROUPID); 
if (nGroup > SF_SMALLMAPCOUNT) then 
if (nRank == 1) then 
nRank = 3; 
else 
nRank = 8; 
end; 
end; 
return nRank; 
end; 

function festival06_Cancal() 

end; 

end; -- script viet hoa By http://tranhba.com // end of __SF_AWARD_H__
