-- script viet hoa By http://tranhba.com  ti�p nh�n v� ��ch Npc 
-- script viet hoa By http://tranhba.com # tham d� ��ch nh� ch�i c�p b�c nh�t ��nh ph�i l�n h�n 40 c�p # 
-- script viet hoa By http://tranhba.com # t�ng ph��ng ��ch nh� ch�i nh�t ��nh ph�i ��n H�nh S�n ��c c� ki�m ch� ghi danh # 
-- script viet hoa By http://tranhba.com # kim ph��ng ��ch nh� ch�i nh�t ��nh ph�i ��n bi�n kinh c�a nha m�n kim qu�c v� t��ng ch� ghi danh # 
-- script viet hoa By http://tranhba.com # ghi danh l�c c�n giao n�p nh�t ��nh kim ti�n # 
-- script viet hoa By http://tranhba.com  Update by Dan_Deng(2003-10-23) th�ng qua ��i tho�i thi�t ��i ��n chi�n tr��ng b�n ngo�i ��ch , c�n s�a ��i tr�ng th�i chi�n ��u v� 1 

Include("\\script\\missions\\�ν�ս��PKս\\�ν�ս��ͷ�ļ�.lua");


function main() 


local State = GetMissionV(1) 

-- script viet hoa By http://tranhba.com  kh�ng b�t ��u 
if (State == 0 ) then 
Say("��i qu�n ta c�n ch�a l�n ���ng , xin/m�i t�m th�i ngh� ng�i ch� tin t�c !",0); 
-- script viet hoa By http://tranhba.com  NewWorld(44, 1585,3215) 
NewWorld(100,1406,3486) 
SetFightState(1) 
return 
end; 

-- script viet hoa By http://tranhba.com  t�nh hu�ng d� th��ng tr�c ti�p th�i lui ra 
if (State > 2) then 
-- script viet hoa By http://tranhba.com  NewWorld(44, 1585,3215) 
NewWorld(100,1406,3486) 
SetFightState(1) 
return 
end; 

local GroupV = GetTask(SJTASKVLAUE); 
result = 0; 
-- script viet hoa By http://tranhba.com  n�u nh� n�n nh� ch�i l� �� ghi danh tr�i qua , �o�n tuy�n n�ng ngay c� ti�n v�o , l� n�m v�o �i 
result = CheckLastBattle(2, State) 
if (result == 1) then 
return 
end 

if (result == 2) then 
-- script viet hoa By http://tranhba.com  n�y c�u l� ��ch qu�n nh� ch�i c�ng ��i ph��ng ghi danh Npc ��ch ��i tho�i 
-- script viet hoa By http://tranhba.com  t� nh� c�c ng��i nh�ng th� n�y t�ng n��c ��ch c� d�n ! ch�ng ta ��i kim qu�c c�c t��ng s� c�c c�c thi�n chi�n tr� d�ng , thi�t k� tung ho�nh ...... ch� , c� ph�i l� �nh m�t nh�n 
Say("Ch�ng ta kim qu�c , ai c�ng ki�u d�ng thi�n chi�n , c�c ng��i t�ng qu�c nh�n l�m sao c� th� x�ng v�i l� ��ng tay ��y ?!",0) 
end 

-- script viet hoa By http://tranhba.com  ghi danh th�i k� 
if (State == 1 or State == 2) then 
MSDIdx = PIdx2MSDIdx(1, PlayerIndex); 
if (MSDIdx > 0) then 
nGroup = GetMSIdxGroup(1, MSDIdx); 

if ( nGroup == 2 ) then 
-- script viet hoa By http://tranhba.com  n�y c�u l� b�n ph��ng �� ghi danh ��ch nh� ch�i c�ng ghi danh Npc ��ch ��i tho�i 
Say("Ch�t c�ng mu�n trung th�nh v�i ��i kim qu�c , c�c v� kim qu�c d�ng s� !",0) 
else 
Say("Ch�ng ta kim qu�c , ai c�ng ki�u d�ng thi�n chi�n , c�c ng��i t�ng qu�c nh�n l�m sao c� th� x�ng v�i l� ��ng tay ��y ?!",0); 
end 

return 
end; 
end; 

if (State == 1) then 
if (GetMSPlayerCount(1,2) >= MAX_J_COUNT) then 
Say("Qu�n l�c c�a ch�ng ta tr��c m�t �� �� ti�u di�t t�ng n��c , tr�ng s� xin ch� ch�t m�t l�n �i !", 0) 
return 
end; 

-- script viet hoa By http://tranhba.com  t� nh� , tr��c m�t t�ng n��c qu�c l�c kh�ng ch�n , t�ng n��c d�n ch�ng sinh linh �� th�n , ch�ng ta ��i kim qu�c . . . . 
Say("T�ng tri�u �� ��n mau b�i m�t ��ch l�c , c�c v� mu�n c�ng ch�ng ta c�ng nhau h��ng th� vinh hoa ph� qu� sao ? ch� c�n ��t t�i 40 c�p tr� l�n , �ng h� 3000 hai l� c� th� xung phong gi�t ��ch !",2,"Ta tham gia . /Yes","�� cho ta mu�n mu�n !/No"); 
end; 

-- script viet hoa By http://tranhba.com  giao chi�n th�i k� 
if (State == 2) then 
-- script viet hoa By http://tranhba.com  ��y l� �ang chi�n ��u ch�nh th�c ��nh vang sau , k� tha kh�ng ghi danh nh� ch�i c�ng ghi danh Npc ��ch ��i tho�i 
Say("Ph�a tr��c �ang ph�t sinh chi�n tranh , c�c v� h��ng th�n xin/m�i t�m tr�nh n� ��ch ��a ph��ng ",0); 
return 
end; 

end; 

function Yes() 
if (GetMissionV(1) ~= 1) then 
return 
end 
if (GetLevel() >= 40) then 
if (Pay(MS_SIGN_MONEY) == 1) then 
Msg2Player("Hoan ngh�nh ng��i gia nh�p , kim qu�c ��ch d�ng s� , nhanh l�n ti�n v�o chi�n tr��ng �i !"); 
V = GetMissionV(6); 
  SetMissionV(6, V + 1);
SJ_JoinJ(); 
SetTask(SJKILLNPC,0); 
SetTask(SJKILLPK,0); 
-- script viet hoa By http://tranhba.com CheckGoFight() 
return 
end; 
end; 

Say("Ng��i kh�ng �� 40 c�p ho�c l� kh�ng c� mang �� ti�n ",0); 
end; 

function No() 
Say("Mau tr� v� suy ngh� m�t ch�t , th�i gian kh�ng nhi�u l�m !",0); 
end; 
