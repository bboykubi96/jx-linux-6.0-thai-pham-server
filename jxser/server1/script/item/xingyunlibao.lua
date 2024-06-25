-- script viet hoa By http://tranhba.com  may m¾n lÔ tói 
-- script viet hoa By http://tranhba.com by tiÓu l·ng nhiÒu h¬n 
-- script viet hoa By http://tranhba.com 2007.04.13 

TB_LIBAO = 
{ 
1000000,-- script viet hoa By http://tranhba.com  tæng x¸c suÊt 
{0.00125, {"Chİn ®u«i b¹ch hå gi¶ bé ", 0,2,9,10,2,}}, -- script viet hoa By http://tranhba.com  chİn ®u«i b¹ch hå cõu [ n­íc thuéc tİnh ] 
{0.00125, {"Chİn ®u«i b¹ch hå gi¶ bé ", 0,2,9,10,3,}}, -- script viet hoa By http://tranhba.com  chİn ®u«i b¹ch hå cõu [ háa thuéc tİnh ] 
{0.00125, {"TuyÒn long bµo ", 0,2,6,10,2,}}, -- script viet hoa By http://tranhba.com  tuyÒn long bµo [ n­íc thuéc tİnh ] 
{0.00125, {"TuyÒn long bµo ", 0,2,6,10,3,}}, -- script viet hoa By http://tranhba.com  tuyÒn long bµo [ háa thuéc tİnh ] 
{0.00125, {"Thiªn tµm ®ai l­ng ", 0,6,0,10,2,}}, -- script viet hoa By http://tranhba.com  thiªn tµm ®ai l­ng [ n­íc thuéc tİnh ] 
{0.00125, {"Thiªn tµm ®ai l­ng ", 0,6,0,10,3,}}, -- script viet hoa By http://tranhba.com  thiªn tµm ®ai l­ng [ háa thuéc tİnh ] 
{0.00125, {"B¹ch kim ®ai l­ng ", 0,6,1,10,2,}}, -- script viet hoa By http://tranhba.com  b¹ch kim ®ai l­ng [ n­íc thuéc tİnh ] 
{0.00125, {"B¹ch kim ®ai l­ng ", 0,6,1,10,3,}}, -- script viet hoa By http://tranhba.com  b¹ch kim ®ai l­ng [ háa thuéc tİnh ] 
{0.15, {"Tiªn th¶o lé ", 6,1,71,1,}}, -- script viet hoa By http://tranhba.com  tiªn th¶o lé 
{0.1796, {"Hoa quÕ r­îu ", 6,1,125,1,}}, -- script viet hoa By http://tranhba.com  hoa quÕ r­îu 
{0.0001, {"An bang b¨ng tinh th¹ch gi©y chuyÒn ", 0,164,}}, -- script viet hoa By http://tranhba.com  an bang – b¨ng tinh th¹ch gi©y chuyÒn 
{0.0001, {"An bang hoa cóc th¹ch chiÕc nhÉn ", 0,165,}}, -- script viet hoa By http://tranhba.com  an bang – hoa cóc th¹ch chiÕc nhÉn 
{0.0001, {"An bang m¸u gµ th¹ch chiÕc nhÉn ", 0,167,}}, -- script viet hoa By http://tranhba.com  an bang – m¸u gµ th¹ch chiÕc nhÉn 
{0.0001, {"An bang ®iÒn hoµng th¹ch ngäc béi ", 0,166,}}, -- script viet hoa By http://tranhba.com  an bang – ®iÒn hoµng th¹ch ngäc béi 
{0.0004, {"§Şnh n­íc « sa ph¸t quan ", 0,160,}}, -- script viet hoa By http://tranhba.com  ®Şnh n­íc – « sa ph¸t quan 
{0.0004, {"§Şnh n­íc lôa máng xanh tr­êng sam ", 0,159,}}, -- script viet hoa By http://tranhba.com  ®Şnh n­íc – lôa máng xanh tr­êng sam 
{0.0004, {"§Şnh n­íc lôa máng xanh tr­êng sam ", 0,162,}}, -- script viet hoa By http://tranhba.com  ®Şnh n­íc – tö ®»ng hé cæ tay 
{0.0004, {"§Şnh n­íc ng©n tµm ®ai l­ng ", 0,163,}}, -- script viet hoa By http://tranhba.com  ®Şnh n­íc – ng©n tµm ®ai l­ng 
{0.0004, {"§Şnh n­íc xİch quyªn mÒm ngoa ", 0,161,}}, -- script viet hoa By http://tranhba.com  ®Şnh n­íc – xİch quyªn mÒm ngoa 
{0.0002, {"Theo ®ªm ngäc s­ tö ", 0,10,5,10,}}, -- script viet hoa By http://tranhba.com  theo ®ªm ngäc s­ tö 80 cÊp m· 
{0.0002, {"Xİch thá ", 0,10,5,2,}}, -- script viet hoa By http://tranhba.com  xİch thá 80 cÊp m· 
{0.0002, {"Vâ l©m mËt tŞch ", 6,1,26,1,}}, -- script viet hoa By http://tranhba.com  vâ l©m mËt tŞch 
{0.0002, {"TÈy Tñy Kinh ", 6,1,22,1,}}, -- script viet hoa By http://tranhba.com  TÈy Tñy Kinh 
{0.65, {"ChiÕn c«ng hoa ", 6,1,1414,1,}} -- script viet hoa By http://tranhba.com  chiÕn c«ng hoa 
} 

function main(sel) 
local nDate = tonumber(GetLocalDate("%y%m%d")); 
if (nDate > 070513) then 
return 0 
end; 
if (GetLevel() < 50) then 
Msg2Player("50 cÊp trë lªn ®· sung trŞ gi¸ nhµ ch¬i míi cã thÓ sö dông ."); 
return 1; 
end; 
if ( CalcFreeItemCellCount() < 12 ) then 
Say("Xin/mêi lÇn n÷a an bµi trang bŞ b¶o ®¶m cã 12 c¸ chç trèng .",0); 
return 1; 
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
Msg2Player("Ngµi ®¹t ®­îc mét "..item[1]); 
WriteLog(format("[xingyunlibao]\t date:%s \t Account:%s \t Name:%s \t GetItem:%s \t",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),item[1])); 

end
