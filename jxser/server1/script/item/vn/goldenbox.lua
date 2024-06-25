Include("\\script\\lib\\award.lua")
-- script viet hoa By http://tranhba.com award_give 
function main(nItemIdx) 
local nDate = tonumber(GetLocalDate("%y%m%d")); 
if (nDate >= 70331) then 
Msg2Player("B¶o r­¬ng ®· sinh tó , kh«ng thÓ sö dông ."); 
return 0; 
end; 

local tb_goldenbox = { 
{1, {6,1,124,1,0,0,0}, 1, 38340,"Phóc duyªn lé ( ®¹i ) ", 0}, 
{1, {4,353,1,1,0,0}, 1, 18320,"Tinh hång b¶o th¹ch ", 0}, 
{1, {6,1,71,1,0,0}, 1, 17200,"Tiªn th¶o lé ", 0}, 
{1, {4,238,1,1,0,0}, 1, 15320, " lam thñy tinh ", 0}, 
{1, {6,1,147,3,0,0}, 1, 10320, "3 cÊp huyÒn tinh qu¸ng th¹ch ", 0}, 
{1, {6,1,26,1,0,0,0}, 1, 100,"Vâ l©m bÝ tÞch ", 0}, 
{1, {6,1,22,1,0,0,0}, 1, 100,"TÈy Tñy Kinh ", 0}, 
{1, {6,1,147,4,0,0}, 1, 100, "4 cÊp huyÒn tinh qu¸ng th¹ch ", 0}, 
{2, {0,164}, 1, 20,"An bang b¨ng tinh th¹ch gi©y chuyÒn ", 1}, 
{2, {0,165}, 1, 20,"An bang hoa cóc th¹ch chiÕc nhÉn ", 1}, 
{2, {0,166}, 1, 20,"An bang ®iÒn hoµng th¹ch ngäc béi ", 1}, 
{2, {0,167}, 1, 20,"An bang m¸u gµ th¹ch chiÕc nhÉn ", 1}, 
{1, {6,1,147,5,0,0}, 1, 20, "5 cÊp huyÒn tinh qu¸ng th¹ch ", 0}, 
{2, {0,159}, 1, 20,"§Þnh n­íc lôa máng xanh tr­êng sam ", 1}, 
{2, {0,160}, 1, 20,"§Þnh n­íc « sa ph¸t quan ", 1}, 
{2, {0,161}, 1, 20,"§Þnh n­íc xÝch quyªn mÒm ngoa ", 1}, 
{2, {0,162}, 1, 20,"§Þnh n­íc tö ®»ng hé cæ tay ", 1}, 
{2, {0,163}, 1, 20,"§Þnh n­íc ng©n tµm ®ai l­ng ", 1}, 
}; 
local sum = 0; 
local nrand = random(100000); 
local strInfo=format("%s\t%s\tName:%s\tAccount:%s\t", 
" bÝ ®å m¶nh vôn thu tËp ho¹t ®éng ", 
GetLocalDate("%Y-%m-%d %H:%M"), 
GetName(), GetAccount()); 
for i = 1, getn(tb_goldenbox) do 
		sum = sum + tb_goldenbox[i][4]
if (sum >= nrand) then 
award_give(tb_goldenbox[i]); 
Msg2Player(format("Chóc mõng ngµi ®¹t ®­îc - %s",tb_goldenbox[i][5])); 
WriteLog(strInfo..format("Më ra kim r­¬ng ho¹t ®éng %s", tb_goldenbox[i][5])); 
if (tb_goldenbox[i][6] == 1) then 
AddGlobalNews(format("%s ®· tham gia thÇn bÝ quyÓn trôc thu tËp ho¹t ®éng !", GetName())); 
end; 
return 0; 
end; 
end; 
return 1; 
end; 
