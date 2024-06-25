
IncludeLib("BATTLE"); 
Include("\\script\\item\\battles\\songjinskill.lua");

egg_tbAward = 
{ 
{szName = " kim cuéc chiÕn hån ", nRate = 0.05, tbSkill = {add466}}, 
{szName = " méc cuéc chiÕn hån ", nRate = 0.05, tbSkill = {add466}}, 
{szName = " n­íc cuéc chiÕn hån ", nRate = 0.05, tbSkill = {add466, add469}}, 
{szName = " löa cuéc chiÕn hån ", nRate = 0.05, tbSkill = {add466, add468}}, 
{szName = " ®Êt chi hé gi¸p ", nRate = 0.05, tbSkill = {add466, add467}}, 
{szName = " kim chi hé gi¸p ", nRate = 0.05, tbSkill = {add474}}, 
{szName = " méc chi hé gi¸p ", nRate = 0.05, tbSkill = {add477}}, 
{szName = " n­íc chi hé gi¸p ", nRate = 0.05, tbSkill = {add476}}, 
{szName = " löa chi hé gi¸p ", nRate = 0.05, tbSkill = {add473}}, 
{szName = " ®Êt chi hé gi¸p ", nRate = 0.05, tbSkill = {add475}}, 
{szName = " kim chi l­ìi dao s¾c bÐn ", nRate = 0.05, tbSkill = {add479, add487, add487_1}}, -- script viet hoa By http://tranhba.com  ??? 
{szName = " méc chi l­ìi dao s¾c bÐn ", nRate = 0.05, tbSkill = {add480, add485}}, 
{szName = " n­íc chi l­ìi dao s¾c bÐn ", nRate = 0.05, tbSkill = {add481, add486}}, 
{szName = " löa chi l­ìi dao s¾c bÐn ", nRate = 0.05, tbSkill = {add482}}, 
{szName = " ®Êt chi l­ìi dao s¾c bÐn ", nRate = 0.05, tbSkill = {add483}}, 
{szName = " n¨m hoa lé ", nRate = 0.05, tbSkill = {add472_1, add472_2, add490_1}}, 
{szName = " HËu NghÖ chi m¾t ", nRate = 0.05, tbSkill = {add495}}, 
{szName = " b¹ch c©u hé cæ tay ", nRate = 0.05, tbSkill = {add496}}, 
{szName = " tËt phong ngoa ", nRate = 0.05, tbSkill = {add493}}, 
{szName = " thÇn bÝ vËt phÈm ", nRate = 0.05, tbSkill = {add466, add469, add468, add467, add474, add476, add477, add473, add475, add479, 
add487, add487_1, add480, add485, add481, add486, add472_1, add472_2, add482, add483, add490_1, add493, add495, add496}}, 
} 
egg_nTotalRate = 100; 

function main(nItemIndex) 
local nRate = random(egg_nTotalRate); 
local nNowRate = 0; 
for i = 1, getn(egg_tbAward) do 
		nNowRate = nNowRate + floor(egg_tbAward[i].nRate * egg_nTotalRate);
if (nRate <= nNowRate) then 
egg_addskill(i); 
break; 
end 
end 
end 

function egg_addskill(nIndex) 
local nRate = random(getn(egg_tbAward[nIndex].tbSkill)); 
Msg2Player(format("Chóc mõng ng­¬i gÆp ph¶i <color=yellow>%s<color>", egg_tbAward[nIndex].szName)); 
egg_tbAward[nIndex].tbSkill[nRate](); 

WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\tAward:%s \tProbability:%d", 
" may m¾n ngò th¶i ®¶n ", 
GetLocalDate("%y-%m-%d %H:%M:%S"), 
GetAccount(), 
GetName(), 
egg_tbAward[nIndex].szName, 
egg_tbAward[nIndex].nRate)); 
end
