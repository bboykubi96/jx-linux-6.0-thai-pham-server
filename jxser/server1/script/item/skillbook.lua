-- script viet hoa By http://tranhba.com  k� n�ng 
IncludeLib("SETTING"); 
Include("\\script\\global\\login_head.lua")
-- script viet hoa By http://tranhba.com  ItemParticular={MagicID,IniLevel, NeedFaction, BookName, SkillName} 
local faction_skill_list = { 
[0] = {[90] = {318, 319, 321}, [120] = {709}, [150] = {1055, 1056, 1057},}, 
[1] = {[90] = {322, 325, 323}, [120] = {708}, [150] = {1058, 1059, 1060},}, 
[2] = {[90] = {339, 302, 342, 351,}, [120] = {710}, [150] = {1069, 1070, 1071, 1110},}, 
[3] = {[90] = {353, 355, 390}, [120] = {711}, [150] = {1066, 1067},}, 
[4] = {[90] = {380, 328, 332}, [120] = {712}, [150] = {1061, 1062, 1114},}, 
[5] = {[90] = {336, 337}, [120] = {713}, [150] = {1063, 1065},}, 
[6] = {[90] = {357, 359}, [120] = {714}, [150] = {1073, 1074}}, 
[7] = {[90] = {361, 362, 391}, [120] = {715}, [150] = {1075, 1076},}, 
[8] = {[90] = {365, 368}, [120] = {716}, [150] = {1078, 1079},}, 
[9] = {[90] = {372, 375, 394}, [120] = {717}, [150] = {1080, 1081},}, 
} 

sbook_list = 
{ -- script viet hoa By http://tranhba.com  c�ch th�c #{ k� n�ng ID, k� n�ng c�p b�c , bang ph�i ID, c�n c�p b�c , k� n�ng t�n s�ch x�ng , k� n�ng t�n } 
[27] = {302, 1, 2, 80, "' t� t�i b�n cung . m�a sa l� hoa ' ","M�a sa l� hoa "}, 
[28] = {351, 0, 2, 80, "' v�i l�p t�nh thu�t . lo�n ��nh tr� ' ", " lo�n ��nh tr� "}, 
[33] = {365, 1, 8, 80,"Th�i c�c quy�n ph� - cu�n 3 ","Thi�n ��a V� C�c "}, 
[34] = {368, 1, 8, 80, "' Th�i c�c quy�n ph� - cu�n 2' ","Ng��i ki�m h�p nh�t "}, 
[35] = {361, 1, 7, 80, "' v�n long k�ch . m�u ph�p ' ","V�n long k�ch "}, 
[36] = {362, 1, 7, 80, "' l�u tinh . �ao ph�p ' ","Thi�n ngo�i l�u tinh "}, 
[37] = {325, 1, 1, 80, "' Thi�n v��ng ch�y ph�p . cu�n 1' ","�u�i phong quy�t "}, 
[38] = {323, 1, 1, 80,"Thi�n v��ng th��ng ph�p - cu�n 2 ","�u�i tinh tr�c th�ng "}, 
[39] = {322, 1, 1, 80,"Thi�n v��ng �ao ph�p - cu�n 3 ","X� tr�i ch�m "}, 
[40] = {336, 1, 5, 80, "' th�y kh�i �ao ph�p ' ","B�ng t�ng v� �nh "}, 
[41] = {337, 1, 5, 80, "' th�y kh�i song �ao ' ","B�ng t�m ti�n t� "}, 
[42] = {328, 1, 4, 80, "' di�t ki�m b� t�ch ","Ba nga �� tuy�t "}, 
[43] = {380, 1, 4, 80, "' Nga Mi ph�t quang ch��ng b� t�ch ' ","Phong s��ng b� �nh "}, 
[45] = {339, 1, 2, 80, "' phi �ao thu�t . nhi�p h�n b�ng tr�ng ' ","Nhi�p h�n b�ng tr�ng "}, 
[46] = {342, 1, 2, 80, "' phi ti�u thu�t . c�u cung bay tinh ' ","C�u cung bay tinh "}, 
[47] = {353, 1, 3, 80, "' n�m ��c ch��ng ph�p . cu�n 1' ", "# �m d��ng th�c c�t "}, 
[48] = {355, 1, 3, 80, "' n�m ��c �ao ph�p . cu�n 2' ","Huy�n �m ch�m "}, 
[49] = {390, 0, 3, 80, "' n�m ��c nhi�p t�m thu�t . cu�n 3' ", "# �o�n g�n h� c�t "}, 
[50] = {372, 1, 9, 80, "' ng� phong thu�t ' ","Ng�o tuy�t ti�u ng�n n�i "}, 
[51] = {375, 1, 9, 80, "' ng� l�i thu�t ' ", " l�i ��ng c�u thi�n "}, 
[52] = {394, 0, 9, 80, "' ng� t�m thu�t ' ","Say ti�n ��nh c�t "}, 
[53] = {391, 0, 7, 80,"Nhi�p h�n - nguy�n r�a ","Nhi�p h�n lo�n t�m "}, 
[54] = {357, 1, 6, 80, "' C�i Bang ch��ng ph�p ' ","Phi long � tr�n tr�i "}, 
[55] = {359, 1, 6, 80,"C�i Bang c�n ph�p ","Thi�n h� v� ch� "}, 
[56] = {318, 1, 0, 80, "' Thi�u L�m quy�n ph�p . cu�n 1' ","��t Ma �� giang "}, 
[57] = {319, 1, 0, 80, "' Thi�u L�m c�n ph�p . cu�n 2' ","Ho�nh t�o thi�n qu�n "}, 
[58] = {321, 1, 0, 80, "' Thi�u L�m �ao ph�p . cu�n 3' ","V� t��ng ch�m "}, 
[59] = {332, 0, 4, 80, "' ph� �� b� t�ch ' ","Ph� �� ch�ng sanh "}, 
} 

function CheckIsCanGet150SkillTask() 
if 1==1 then
return
end
-- script viet hoa By http://tranhba.com  m� ra nhi�m v� nh�n 150 k� n�ng - Modified By NgaVN - 20121207 
local nValue = GetTask(2885) 
if nValue > 0 then 
return 
end 
-- script viet hoa By http://tranhba.com  s�a ch�a ��t ���c 150 k� n�ng nhi�m v� c�n s�ng l�i 2 l�n tr� l�n - Modified By NgaVN - 20121207 
local nTransLife = ST_GetTransLifeCount() 
local nHaveTSFlag = 0; 
if(nTransLife > 1 ) then 
nHaveTSFlag = 1 
end 

local nFact = GetLastFactionNumber() 
if nFact == nil or nFact < 0 or nFact > 9 then 
return 
end 
local tb90Skill = %faction_skill_list[nFact][90] 
local nHave90SkillFlag = 0 
for i = 1, getn(tb90Skill) do 
if HaveMagic(tb90Skill[i]) >= 0 then 
nHave90SkillFlag = 1 
break 
end 
end 
local tb120Skill = %faction_skill_list[nFact][120] 
local nHave120SkillFlag = 0 
for i = 1, getn(tb120Skill) do 
if HaveMagic(tb120Skill[i]) >= 0 then 
nHave120SkillFlag = 1 
break 
end 
end 
local tb150Skill = %faction_skill_list[nFact][150] 
local nHave150SkillFlag = 0 
for i = 1, getn(tb150Skill) do 
if HaveMagic(tb150Skill[i]) >= 0 then 
nHave150SkillFlag = 1 
break 
end 
end 
if nHave150SkillFlag == 0 then 
if nHaveTSFlag ==1 and nHave90SkillFlag == 1 and nHave120SkillFlag == 1 and GetLevel() >= 150 then 
Msg2Player("<color=yellow> b�y gi� ng��i c� th� nh�n 150 c�p k� n�ng nhi�m v� <enter>") 
else 
local szMsg = " ng��i ngh� nh�n 150 c�p k� n�ng nhi�m v� c�n " 
local nFlag = 0 

if nHave90SkillFlag == 0 then 
if nFlag == 1 then 
szMsg = format("%s,", szMsg) 
end 
szMsg = format("%s h�c ���c 90 k� n�ng ", szMsg) 
nFlag = 1 
end 
if nHave120SkillFlag == 0 then 
if nFlag == 1 then 
szMsg = format("%s,", szMsg) 
end 
szMsg = format("%s h�c ���c 120 c�p k� n�ng ", szMsg) 
nFlag = 1 
end 

-- script viet hoa By http://tranhba.com - s�a ch�a ��t ���c 150 k� n�ng nhi�m v� c�n s�ng l�i 2 l�n tr� l�n - Modified By NgaVN - 20121207 
if nHaveTSFlag == 0 then 
if nFlag == 1 then 
szMsg = format("%s,", szMsg) 
end 
szMsg = format("%s s�ng l�i 2 l�n tr� l�n ", szMsg) 
nFlag = 1 
end 

if GetLevel() < 150 then 
if nFlag == 1 then 
szMsg = format("%s,", szMsg) 
end 
szMsg = format("%s ��t t�i 150 c�p ", szMsg) 
nFlag = 1 
end 
szMsg = format("<color=yellow>%s<color>", szMsg) 
Msg2Player(szMsg) 
end 
end 
end 

function LearnSkillByBook(index, list) 

if(GetLastFactionNumber() ~= list[index][3]) then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� ch� ��nh m�n ph�i 
Msg2Player("Ng��i c�m "..list[index][5].." nghi�n c�u �� l�u , k�t qu� c�n l� c�i g� c�ng kh�ng c� l�nh ng� ") 
return 1 
end 
if(GetLevel() < list[index][4]) then -- script viet hoa By http://tranhba.com  nh�ng ch�a t�i ch� ��nh c�p b�c 
Msg2Player("Ng��i c�m "..list[index][5].." nghi�n c�u �� l�u , k�t qu� l�nh h�i r�t �t . ") 
return 1 
end 
if HaveMagic(list[index][1]) >= list[index][2] then -- script viet hoa By http://tranhba.com  �� h�c qua n�n k� n�ng 
Msg2Player("Ng��i �� c�m "..list[index][5].." ngh� t�i ngh� lui , nh�ng l� c�ng kh�ng c� h�c ���c c�i g� # ") 
return 1 
end 

AddMagic(list[index][1], list[index][2]) -- script viet hoa By http://tranhba.com  h�c ���c k� n�ng 

CheckIsCanGet150SkillTask() 

WriteLog(date("%H%M%S")..": tr��ng m�c :"..GetAccount()..", nhi�m v� :"..GetName()..", s� d�ng : "..list[index][5].." �� h�c ���c : "..list[index][6]); 
Msg2Player("�� h�c ���c k� n�ng "..list[index][6].."'. ") 
return 0 

end 

function main(sel) 
Genre, DetailType, Particular=GetItemProp(sel) 
return LearnSkillByBook(Particular, sbook_list); 
end 

-- script viet hoa By http://tranhba.com  m� ra nhi�m v� nh�n 150 c�p k� n�ng - Modified By NgaVN - 20121207 
if login_add then login_add(CheckIsCanGet150SkillTask, 2) end
