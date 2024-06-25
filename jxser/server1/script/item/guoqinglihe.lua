-- script viet hoa By http://tranhba.com  quèc kh¸nh hép quµ 
-- script viet hoa By http://tranhba.com by tiÓu l·ng nhiÒu h¬n 
-- script viet hoa By http://tranhba.com 2007.08.08 

TB_LIBAO = 
{ 
1000000,-- script viet hoa By http://tranhba.com  tæng x¸c suÊt 
{0.968, {"Quèc kh¸nh huy ch­¬ng ", 6,1,1496,1,}},-- script viet hoa By http://tranhba.com  quèc kh¸nh huy ch­¬ng 
{0.003, {"Tµng b¶o ®å m¶nh vôn 1", 4,490,1,1,}}, -- script viet hoa By http://tranhba.com  b¶n ®å m¶nh vôn 1 
{0.001, {"Tµng b¶o ®å m¶nh vôn 2", 4,491,1,1,}}, -- script viet hoa By http://tranhba.com  b¶n ®å m¶nh vôn 2 
{0.003, {"Tµng b¶o ®å m¶nh vôn 3", 4,492,1,1,}}, -- script viet hoa By http://tranhba.com  b¶n ®å m¶nh vôn 3 
{0.003, {"Tµng b¶o ®å m¶nh vôn 4", 4,493,1,1,}}, -- script viet hoa By http://tranhba.com  b¶n ®å m¶nh vôn 4 
{0.003, {"Tµng b¶o ®å m¶nh vôn 5", 4,494,1,1,}}, -- script viet hoa By http://tranhba.com  b¶n ®å m¶nh vôn 5 
{0.003, {"Tµng b¶o ®å m¶nh vôn 6", 4,495,1,1,}}, -- script viet hoa By http://tranhba.com  b¶n ®å m¶nh vôn 6 
{0.003, {"Tµng b¶o ®å m¶nh vôn 7", 4,496,1,1,}}, -- script viet hoa By http://tranhba.com  b¶n ®å m¶nh vôn 7 
{0.003, {"Tµng b¶o ®å m¶nh vôn 8", 4,497,1,1,}}, -- script viet hoa By http://tranhba.com  b¶n ®å m¶nh vôn 8 
{0.001, {"Tµng b¶o ®å m¶nh vôn 9", 4,498,1,1,}}, -- script viet hoa By http://tranhba.com  b¶n ®å m¶nh vôn 9 
{0.003, {"Tµng b¶o ®å m¶nh vôn 10",4,499,1,1,}}, -- script viet hoa By http://tranhba.com  b¶n ®å m¶nh vôn 10 
{0.003, {"Tµng b¶o ®å m¶nh vôn 11",4,500,1,1,}}, -- script viet hoa By http://tranhba.com  b¶n ®å m¶nh vôn 11 
{0.003, {"Tµng b¶o ®å m¶nh vôn 12",4,501,1,1,}}, -- script viet hoa By http://tranhba.com  b¶n ®å m¶nh vôn 12 
} 
GUOQINGLIHE_DATE_END = 070924 -- script viet hoa By http://tranhba.com  hép quµ cuèi cïng thêi gian sö dông 
function main(sel) 
local nData = tonumber(GetLocalDate("%y%m%d")) 
if nData >= GUOQINGLIHE_DATE_END then 
Talk(1,"","Ch­a ®ñ chç trèng , thØnh an lËp trang bÞ .") 
return 0 
end 
if ( CalcFreeItemCellCount() < 5 ) then 
Talk(1,"","Ch­a ®ñ chç trèng , thØnh an lËp trang bÞ .") 
return 1 
end 
local SumPe = TB_LIBAO[1]; 
local Rand = random(1,SumPe); 
local Sum = 0; 
for i=2,getn(TB_LIBAO) do 
local pnum = TB_LIBAO[i][1]; 
local item = TB_LIBAO[i][2]; 
		Sum = Sum + pnum * SumPe;
if Rand < Sum then 
award_item(item); 
break; 
end 
end 
end 

function award_item(item) 
local nidx ; 
if getn(item) == 3 then 
nidx = AddGoldItem(item[2], item[3]); 
elseif getn(item) == 5 then 
nidx = AddItem(item[2], item[3], item[4], item[5],0,0); 
elseif getn(item) == 6 then 
nidx = AddQualityItem(2,item[2], item[3], item[4], item[5],item[6],255,-1,-1,-1,-1,-1,-1) 
end 
Msg2Player(format("Ngµi ®¹t ®­îc 1 <color=yellow>%s<color>",item[1])); 
WriteLog(format("[GuoQingLiHe]\t date:%s \t Account:%s \t Name:%s \t GetItem:%s \t",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),item[1])); 

end
