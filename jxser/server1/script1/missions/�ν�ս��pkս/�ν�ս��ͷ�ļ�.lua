FRAME2TIME = 18; -- script viet hoa By http://tranhba.com 18 tr�nh tr� ch�i th�i gian t��ng ���ng v�i 1 gi�y 
MAX_S_COUNT = 100; 
MAX_J_COUNT = 100; 
TIMER_1 = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com 20 gi�y c�ng b� m�t c�i chi�n hu�ng 
TIMER_2 = 60 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  giao chi�n th�i gian l� 1 gi� 

MS_STATE = 1; -- script viet hoa By http://tranhba.com  nhi�m v� trung ghi ch�p nhi�m v� tr�ng th�i thay ��i l��ng ID 
-- script viet hoa By http://tranhba.com  n�n thay ��i l��ng ch� h��ng ��ch tr�ng th�i tr� gi� 0 b�y t� chi�n d�ch v� m� ra , 1 b�y t� chi�n d�ch ghi danh trung , 2 b�y t� chi�n d�ch chi�n ��u ti�n h�nh trung , 3 b�y t� chi�n d�ch m�i v�a k�t th�c 

MS_SJTASKID = 20; 
MS_J_DEATHCOUNT = 3; -- script viet hoa By http://tranhba.com  nhi�m v� trung ghi ch�p kim nh� ch�i s� th��ng vong l��ng ��ch thay ��i l��ng ID 
MS_S_DEATHCOUNT = 4; -- script viet hoa By http://tranhba.com  nhi�m v� trung ghi ch�p t�ng nh� ch�i s� th��ng vong l��ng ��ch thay ��i l��ng ID 

MS_S_SIGHCOUNT = 5;-- script viet hoa By http://tranhba.com  nhi�m v� trung t�ng ph��ng c�ng ghi danh nh�n s� c�a 
MS_J_SIGHCOUNT = 6;-- script viet hoa By http://tranhba.com  nhi�m v� trung kim ph��ng c�ng ghi danh nh�n s� c�a 
MS_KEY = 7; -- script viet hoa By http://tranhba.com  ghi ch�p tr��c m�t b�n �� h� nhi�m v� m�t key , t�c m�t ng�u nhi�n sinh th�nh ��m ��nh 

MS_S_NPCDEATH = 8; -- script viet hoa By http://tranhba.com  nhi�m v� trung ghi ch�p t�ng chi�n ��u Npc t� vong s� l��ng ��ch nhi�m v� thay ��i l��ng ID 
MS_J_NPCDEATH = 9; -- script viet hoa By http://tranhba.com  nhi�m v� trung ghi ch�p kim chi�n ��u Npc t� vong s� l��ng ��ch nhi�m v� thay ��i l��ng ID 

MS_NEWSVALUE = 10; -- script viet hoa By http://tranhba.com  nhi�m v� trung c�t gi� tin t�c thay ��i l��ng ��ch ��a ph��ng 

MS_S_SHOWKING = 11; -- script viet hoa By http://tranhba.com 0 means uncondition, 1 means condition but time no come ,2 mean all condition is ok ,and have showed. 
MS_J_SHOWKING = 12; 
MS_FIRSTSHOW = 13; -- script viet hoa By http://tranhba.com 1 means Song , 2 means Jing 


SJTASKID = 230; -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i nhi�m v� tr��c m�t ID 
SJTASKVLAUE = 231; -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i nhi�m v� tr��c m�t ��ch tr� gi� , ghi ch�p s� ch�c ph��ng , t�ng v� 1 , kim v� 2 
SJTASKKEY = 232; -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i nhi�m v� tr��c m�t ��ch key s� 
SJKILLNPC = 233; -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i gi�t Npc s� l��ng 
SJKILLPK = 234; -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i PK nh� ch�i s� l��ng 

MS_TOTALPK = 250; -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i ��nh ch�t k� tha nh� ch�i ��ch t�ng s� l�n 
MS_TOTALKO = 251; -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i � PK chi�n d�ch trung b� ��nh ch�t ��ch t�ng s� l�n 

MS_SHOWKINGCOUNT = 100; -- script viet hoa By http://tranhba.com  m�t ph��ng Npc s� th��ng vong l��ng , khi s� th��ng vong l��ng v��t qua n�n tr� gi� l�c , l� ch� t��ng c� th� xu�t hi�n 
MS_PKCOUNT = 50;-- script viet hoa By http://tranhba.com  m�t ph��ng nh� ch�i s� th��ng vong l��ng , khi s� l��ng v��t qua n�n tr� gi� , l� ch� t��ng c� th� xu�t hi�n 


GO_TIME = 1800 * FRAME2TIME / TIMER_1; -- script viet hoa By http://tranhba.com  ghi danh th�i gian l� n�a gi� 
SHOWKINGTIME1 = 3600 * FRAME2TIME / TIMER_1 ; 
SHOWKINGTIME2 = 4200 * FRAME2TIME / TIMER_1; 

MS_SIGN_MONEY = 3000; -- script viet hoa By http://tranhba.com  ti�n ghi danh 


sj_aryItems = { 
{ " ti�n th�o l� ", {6,1,71,1,0,0}, 20 }, 
{ " th�m ch�y ho�n ", {6,0,2,1,0,0}, 5 }, 
{ " trung h�c �� nh� c�p ho�n ", {6,0,5,1,0,0}, 5 }, 
{ " cao nhanh ch�ng ho�n ", {6,0,4,1,0,0}, 5 }, 
{ " tr��ng m�nh ho�n ", {6,0,1,1,0,0}, 5 }, 
{ " nhanh ch�ng ho�n ", {6,0,6,1,0,0}, 5 }, 
{ " ��c ph�ng ho�n ", {6,0,10,1,0,0}, 5 }, 
{ " b�ng ph�ng ho�n ", {6,0,7,1,0,0}, 5 }, 
{ " l�a ph�ng ho�n ", {6,0,9,1,0,0}, 5 }, 
{ " l�i ph�ng ho�n ", {6,0,8,1,0,0}, 5 }, 
{ " ��i l�c ho�n ", {6,0,3,1,0,0}, 30 }, 
{ " ph�o b�ng ", {6,0,11,1,0,0}, 1 }, 
{ " hoa h�ng m�a ", {6,0,20,1,0,0}, 2 }, 
{ " t�m t�m t��ng �nh ph� ", {6,1,18,1,0,0}, 5 }, 
} 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function GameOver() 
idx = 0; 

for i = 1 , 500 do 
idx, pidx = GetNextPlayer(1,idx, 0); 
if (idx == 0) then 
break 
end; 
if ( GetMSIdxGroup(1, idx) == 2) then -- script viet hoa By http://tranhba.com jing 
PlayerIndex = pidx; 
camp = GetCamp(); 
SetCurCamp(camp); 
SetTaskTemp(200,0); 
SetLogoutRV(0); 
SetCreateTeam(1); 
SetDeathScript(""); 
SetRevPos(100,45) 
-- script viet hoa By http://tranhba.com  SetFightState(1) 
SetFightState(0) -- script viet hoa By http://tranhba.com  ��nh gi�c xong sau ��i th�nh kh�ng ph�i l� tr�ng th�i chi�n ��u #by Dan_Deng# 
SetPunish(1) 
SetPKFlag(0) 
NewWorld(44, 1585,3215); 
else -- script viet hoa By http://tranhba.com song 
PlayerIndex = pidx; 
camp = GetCamp(); 
SetCurCamp(camp); 
SetTaskTemp(200,0) 
SetLogoutRV(0); 
SetCreateTeam(1); 
SetDeathScript(""); 
SetRevPos(78,33) 
-- script viet hoa By http://tranhba.com  SetFightState(1) 
SetFightState(0) -- script viet hoa By http://tranhba.com  ��nh gi�c xong sau ��i th�nh kh�ng ph�i l� tr�ng th�i chi�n ��u #by Dan_Deng# 
SetPunish(1) 
SetPKFlag(0) 
NewWorld(44, 886,4499); 
end; 
end; 


end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - chi�n ��u h�y b� l�i c�a , tr� l�i nh� ch�i ��ch ti�n ghi danh -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function GiveBackBonus() 
idx = 0; 
for i = 1 , 500 do 
idx, pidx = GetNextPlayer(1, idx, 0); 
if (idx == 0) then 
break 
end; 

if (pidx > 0) then 
PlayerIndex = pidx; 
Earn(MS_SIGN_MONEY); 
end; 
end; 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function WinBonus(WinGroup, LoserGroup) 
resultstr = ""; 
LCount = GetMissionV(LoserGroup + 4);
WCount = GetMissionV(WinGroup + 4);

TotalMoney = (LCount + WCount) * MS_SIGN_MONEY * 0.9 
Winner = GetMSPlayerCount(1, WinGroup); 
if (Winner > 0) then 
Bonus = TotalMoney / Winner; 
else 
Bonus = MS_SIGN_MONEY; 
end; 

MaxNpc_idx = 0; 
MaxPK_idx = 0; 
MaxNpc_c = 0; 
MaxPK_c = 0; 
sj_itemcount = getn(sj_aryItems) 
idx = 0; 
for i = 1 , 500 do 
idx, pidx = GetNextPlayer(1, idx, WinGroup); 
if (idx == 0) then 
break 
end; 

if (pidx > 0) then 
PlayerIndex = pidx; 
   		Earn(Bonus + MS_SIGN_MONEY);
AddLeadExp(500); -- script viet hoa By http://tranhba.com  By Dan( th�ng su�t kinh nghi�m t� 1000 ��i th�nh 500) 
AddRepute(3); -- script viet hoa By http://tranhba.com  By Dan( danh v�ng t� 20 ��i th�nh 3) 
Msg2Player("Ch�c m�ng qu� ph��ng ��t ���c th�ng l�i # ng��i danh v�ng gia t�ng 3 �i�m , th�ng l�nh kinh nghi�m gia t�ng 500 �i�m !") 


randitem = random(1, sj_itemcount); 
if (randitem > 0) then 
local szItemName = sj_aryItems[randitem][1]; 
local arySelItemID = sj_aryItems[randitem][2]; 
AddItem( arySelItemID[1], arySelItemID[2], arySelItemID[3], arySelItemID[4], arySelItemID[5], arySelItemID[6], 0); 
Msg2Player("Ch�c m�ng ng��i ��t ���c <#>"..szItemName); 
end; 


if (GetTask(SJKILLNPC) > MaxNpc_c) then 
MaxNpc_idx = pidx 
MaxNpc_c = GetTask(SJKILLNPC) 
end; 

if (GetTask(SJKILLPK) > MaxPK_c) then 
MaxPK_idx = pidx; 
MaxPK_c = GetTask(SJKILLPK) 
end; 
end; 
end; 


-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - gi�t Npc nhi�u nh�t ng��i l�y ���c m�t m�n trang b� 
if (MaxNpc_idx > 0) then 
PlayerIndex = MaxNpc_idx ; 
sex = GetSex(); 
if (sex == 0) then -- script viet hoa By http://tranhba.com  nam trang 
-- script viet hoa By http://tranhba.com  cho y ph�c , tham s� v� 0,2,0-13(0,6 nam , 7,13 n� ),8-9,0-4,70-99 
p1 = random(0,6); 
p2 = random(8,9); 
p3 = random(0,4); 
p4 = random(50,70); 
AddItem(0,2,p1,p2,p3,p4,6,6,0,0,0,0); 
resultstr = "<#> ng��i gi�t NPC ��ch nh�n cao nh�t ph�n s� v� "..GetName().."<#>, ng��i gi�t ch�t "..MaxNpc_c.."<#> ��ch nh�n !"; 
else 
-- script viet hoa By http://tranhba.com  cho y ph�c , tham s� v� 0,2,0-13(0,6 nam , 7,13 n� ),8-9,0-4,70-99 
p1 = random(7,13); 
p2 = random(8,9); 
p3 = random(0,4); 
p4 = random(50,70); 
AddItem(0,2,p1,p2,p3,p4,6,6,0,0,0,0); 
resultstr = "<#> ng��i gi�t NPC ��ch nh�n cao nh�t ph�n s� v� "..GetName().."<#>, ng��i gi�t ch�t "..MaxNpc_c.."<#> ��ch nh�n !"; 
end; 
AddRepute(30) 
Msg2Player("Ng��i ��t ���c 30 �i�m danh ng�m tr� gi� c�ng m�t b� trang b� !"); 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -PK nh�n s� nhi�u nh�t ng��i l�y ���c m�t thanh v� kh� 
if (MaxPK_idx > 0) then 
PlayerIndex = MaxPK_idx ; 
-- script viet hoa By http://tranhba.com p1 = random(0,5); 
-- script viet hoa By http://tranhba.com p2 = random(8,9); 
-- script viet hoa By http://tranhba.com p3 = random(0,4); 
-- script viet hoa By http://tranhba.com p4 = random(70,99); 
-- script viet hoa By http://tranhba.com AddItem(0,0,p1,p2,p3,p4,7,7,7,0,0,0); 
-- script viet hoa By http://tranhba.com Msg2Player("Ng��i thu ���c m�t thanh v� kh� !"); 
AddRepute(15) 
AddLeadExp(5000); -- script viet hoa By http://tranhba.com  By Dan( th�ng su�t kinh nghi�m t� 1000 ��i th�nh 500) 
Msg2Player("Ch�c m�ng , � ch� n�y l�n chi�n d�ch trung , ng��i l� c� PK tr� gi� cao nh�t ng��i , ��t ���c 15 �i�m danh ng�m tr� gi� , th�ng l�nh kinh nghi�m gia t�ng 5000 �i�m !") 
resultstr = resultstr .."<#> . PK nh� ch�i ng��i cao nh�t v� "..GetName().."<#>, s� l��ng :"..MaxPK_c; 
end; 

return resultstr; 

end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function SJ_JoinJ() 
LeaveTeam() 
AddMSPlayer(1,2); 
SetCurCamp(2); 
SetTaskTemp(200,1) 
SetFightState(0); 
SetLogoutRV(1); 
SetPos(47584/32, 106880/32); 
SetPunish(0); 
-- script viet hoa By http://tranhba.com SetRevPos(100,45) 
SetRevPos(44,50) 
SetTempRevPos(44, 1573*32 ,3874 * 32); 
SetCreateTeam(0); 
SetTask(SJTASKID, MS_SJTASKID); 
SetTask(SJTASKKEY, GetMissionV(MS_KEY)); 
SetTask(SJTASKVLAUE, 2); 
str = GetName().."<#> gia nh�p kim ph��ng tr�n doanh "; 
Msg2MSAll(1,str); 
SetPKFlag(1) 
ForbidChangePK(1); 
SetDeathScript("\\script\\missions\\�ν�ս��pkս\\��������1.lua");

-- script viet hoa By http://tranhba.com  ��y l� nh� ch�i n�p ti�n ghi danh , ch�nh th�c gia nh�p ��i ng� l� �� k� ��i tho�i 

Talk(2, "","Kim qu�c ��ch d�ng s� , hoan ngh�nh ng��i ��n # b�y gi� t�ng qu�n ch�a xu�t hi�n , m�i ng��i tr��c h�i chuy�n ngh� ng�i . ","Ph�t hi�n t�ng qu�n sau , m�i ng��i ph�i nghe t� th� l�nh hi�u l�nh , tr��c l�y t�ng qu�n ch� t��ng th� c�p ng��i c� tr�ng th��ng !"); 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function SJ_JoinS() 
LeaveTeam() 
AddMSPlayer(1,1); 
SetCurCamp(1); 
SetTaskTemp(200,1); 
SetFightState(0); 
str = GetName().."<#> gia nh�p t�ng ph��ng tr�n doanh "; 
SetDeathScript("\\script\\missions\\�ν�ս��pkս\\��������.lua");
SetLogoutRV(1); 
SetCreateTeam(0); 
SetPunish(0) 
-- script viet hoa By http://tranhba.com SetRevPos(78,33) 
SetRevPos(44,49) 
SetPos(31168/32, 133472/32); 
SetTempRevPos(44, 1515 * 32, 3980 * 32); 
Msg2MSAll(1,str); 
SetTask(SJTASKID, MS_SJTASKID); 
SetTask(SJTASKKEY, GetMissionV(MS_KEY)); 
SetTask(SJTASKVLAUE, 1); 
SetPKFlag(1) 
ForbidChangePK(1); 
Talk(2,"","Ng��i m�nh kh�e , hoan ngh�nh ng��i gia nh�p t�ng qu�n , b�y gi� qu�n Kim ch�a xu�t hi�n , m�i ng��i tr��c h�i chuy�n ngh� ng�i . ","M�t khi ph�a tr��c k�n hi�u th�i vang , chi�n ��u s� b�t ��u . "); 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com Group b�y t� ��i tho�i ��ch ch� qu�n l� kia ph��ng ��ch , 1 v� t�ng , 2 v� kim ph��ng 
-- script viet hoa By http://tranhba.com State b�y t� tr��c m�t chi�n d�ch ��ch tr�ng th�i 
function CheckLastBattle(Group, State) 

if (Group == 1) then 
JoinFun = SJ_JoinS; 
else 
JoinFun = SJ_JoinJ; 
end; 

local MKey = GetMissionV(MS_KEY); -- script viet hoa By http://tranhba.com  tr��c m�t chi�n d�ch ��ch duy nh�t Key con ng�a 
local Taskid = GetTask(SJTASKID); -- script viet hoa By http://tranhba.com  n�n chi�n d�ch lo�i h�nh ID 
local TaskV = GetTask(SJTASKVLAUE); 

if (Taskid == MS_SJTASKID) then 
local TaskKey = GetTask(SJTASKKEY) 
if (TaskKey == MKey) then 
if (TaskV == Group) then 
JoinFun(); 
if (State == 2) then 
SetFightState(1); 
end; 
Msg2Player("Hoan ngh�nh ng��i l�n n�a tr� l�i chi�n tr��ng !"); 
elseif (State == 2) then 
return 2 -- script viet hoa By http://tranhba.com  b�y t� kh�ng ph�i l� tr��c m�t tr�n doanh 
else 
return 0 
end 
return 1; 
else 
-- script viet hoa By http://tranhba.com  Say("Ng��i thi�n ti�n r�i ch�c th� �i t�i sai l�m chi�n tr��ng #",0); 
return 0; 
end; 
end; 
return 0; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function CheckGoFight() 
V1 = GetMissionV(5); 
V2 = GetMissionV(6); 
if (V1 >= MAX_S_COUNT and V2 >= MAX_J_COUNT) then 
RunMission(1); 
end; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - �em gi�y truy�n ��i th�nh ph�n c�ng gi�y , t� nh� 62s = 1m2s 
function GetMinAndSec(nSec) 
nRestMin = floor(nSec / 60); 
nRestSec = mod(nSec,60) 
return nRestMin, nRestSec; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  ki�m tra c� ���c hay kh�ng �� cho ch� t��ng xu�t hi�n -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function CheckShowKing(Group) 

if (Group == 1) then 
groupvalue1 = MS_S_NPCDEATH; -- script viet hoa By http://tranhba.com  ghi ch�p S ph��ng Npc t� vong s� l��ng ��ch tham s� Id 
groupvalue2 = MS_S_DEATHCOUNT;-- script viet hoa By http://tranhba.com  ghi ch�p S ph��ng nh� ch�i t� vong s� l��ng ��ch tham s� Id 
else 
groupvalue1 = MS_J_NPCDEATH; 
groupvalue2 = MS_J_DEATHCOUNT; 
end; 

NpcDCount = GetMissionV(groupvalue1); 

if (NpcDCount < MS_SHOWKINGCOUNT) then 
return 0; 
end; 

PlayerDCount = GetMissionV(groupvalue2); 

if (PlayerDCount < MS_PKCOUNT) then 
return 0; 
end; 

if (Group == 1) then 
SetMissionV(MS_S_SHOWKING, 1) 
else 
SetMissionV(MS_J_SHOWKING, 1) 
end; 

return 1; 

end; 

function ShowTheKing(Group) 

if (Group == 1) then 
HideNpc("Nam T�ng t��ng qu�n ",1); 
str1 = " t�nh b�o : tr��c m�t phe ta chi�n s� �n ch�c , ��i t��ng qu�n �� t� m�nh ��n tr�n ti�n ��c chi�n , th� v�i tr�n ��a c�ng ch�t s�ng ! c�c t��ng s� c� g�ng l�n ��nh lui t�i ph�m ��ch qu�n , l�p b�o ��i t��ng qu�n v� ng�i !"; 
str2 =" t�nh b�o : c�c t��ng s� ! ��ch qu�n th��ng vong th�m tr�ng , ��ch qu�n ��i t��ng �� kh�ng ng�i y�n ! c�c t��ng s� ti�p t�c c� g�ng , gi�t ch�t ��ch qu�n ��i t��ng !"; 
Msg2MSGroup(1,str1, 1); 
Msg2MSGroup(1,str2, 2); 
str3 = "<#> t�ng kim ��i chi�n chi�n d�ch b�o c�o : t�ng ph��ng ch� t��ng �� � t�ng doanh trung xu�t hi�n !"; 
AddGlobalCountNews(str3 , 3); 
return 0 
end; 

if (Group == 2) then 
HideNpc("Kim qu�c ��i t��ng ",1); 
str1 = " t�nh b�o : tr��c m�t phe ta chi�n s� �n ch�c , ��i t��ng qu�n �� t� m�nh ��n tr�n ti�n ��c chi�n , th� v�i tr�n ��a c�ng ch�t s�ng ! c�c t��ng s� c� g�ng l�n ��nh lui t�i ph�m ��ch qu�n , l�p b�o ��i t��ng qu�n v� ng�i !"; 
str2 = " t�nh b�o : c�c t��ng s� ! ��ch qu�n th��ng vong th�m tr�ng , ��ch qu�n ��i t��ng �� kh�ng ng�i y�n ! c�c t��ng s� ti�p t�c c� g�ng , gi�t ch�t ��ch qu�n ��i t��ng !"; 
Msg2MSGroup(1,str1, 2); 
Msg2MSGroup(1,str2, 1); 
str3 = "<#> t�ng kim ��i chi�n chi�n d�ch b�o c�o : kim qu�c ch� t��ng �� � tr�n doanh xu�t hi�n , t� m�nh ��c chi�n !"; 
AddGlobalCountNews(str3 , 3); 
return 0 
end; 

return 1; 

end; 
