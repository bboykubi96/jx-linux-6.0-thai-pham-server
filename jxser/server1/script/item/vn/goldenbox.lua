Include("\\script\\lib\\award.lua")
-- script viet hoa By http://tranhba.com award_give 
function main(nItemIdx) 
local nDate = tonumber(GetLocalDate("%y%m%d")); 
if (nDate >= 70331) then 
Msg2Player("B�o r��ng �� sinh t� , kh�ng th� s� d�ng ."); 
return 0; 
end; 

local tb_goldenbox = { 
{1, {6,1,124,1,0,0,0}, 1, 38340,"Ph�c duy�n l� ( ��i ) ", 0}, 
{1, {4,353,1,1,0,0}, 1, 18320,"Tinh h�ng b�o th�ch ", 0}, 
{1, {6,1,71,1,0,0}, 1, 17200,"Ti�n th�o l� ", 0}, 
{1, {4,238,1,1,0,0}, 1, 15320, " lam th�y tinh ", 0}, 
{1, {6,1,147,3,0,0}, 1, 10320, "3 c�p huy�n tinh qu�ng th�ch ", 0}, 
{1, {6,1,26,1,0,0,0}, 1, 100,"V� l�m b� t�ch ", 0}, 
{1, {6,1,22,1,0,0,0}, 1, 100,"T�y T�y Kinh ", 0}, 
{1, {6,1,147,4,0,0}, 1, 100, "4 c�p huy�n tinh qu�ng th�ch ", 0}, 
{2, {0,164}, 1, 20,"An bang b�ng tinh th�ch gi�y chuy�n ", 1}, 
{2, {0,165}, 1, 20,"An bang hoa c�c th�ch chi�c nh�n ", 1}, 
{2, {0,166}, 1, 20,"An bang �i�n ho�ng th�ch ng�c b�i ", 1}, 
{2, {0,167}, 1, 20,"An bang m�u g� th�ch chi�c nh�n ", 1}, 
{1, {6,1,147,5,0,0}, 1, 20, "5 c�p huy�n tinh qu�ng th�ch ", 0}, 
{2, {0,159}, 1, 20,"��nh n��c l�a m�ng xanh tr��ng sam ", 1}, 
{2, {0,160}, 1, 20,"��nh n��c � sa ph�t quan ", 1}, 
{2, {0,161}, 1, 20,"��nh n��c x�ch quy�n m�m ngoa ", 1}, 
{2, {0,162}, 1, 20,"��nh n��c t� ��ng h� c� tay ", 1}, 
{2, {0,163}, 1, 20,"��nh n��c ng�n t�m �ai l�ng ", 1}, 
}; 
local sum = 0; 
local nrand = random(100000); 
local strInfo=format("%s\t%s\tName:%s\tAccount:%s\t", 
" b� �� m�nh v�n thu t�p ho�t ��ng ", 
GetLocalDate("%Y-%m-%d %H:%M"), 
GetName(), GetAccount()); 
for i = 1, getn(tb_goldenbox) do 
		sum = sum + tb_goldenbox[i][4]
if (sum >= nrand) then 
award_give(tb_goldenbox[i]); 
Msg2Player(format("Ch�c m�ng ng�i ��t ���c - %s",tb_goldenbox[i][5])); 
WriteLog(strInfo..format("M� ra kim r��ng ho�t ��ng %s", tb_goldenbox[i][5])); 
if (tb_goldenbox[i][6] == 1) then 
AddGlobalNews(format("%s �� tham gia th�n b� quy�n tr�c thu t�p ho�t ��ng !", GetName())); 
end; 
return 0; 
end; 
end; 
return 1; 
end; 
