--Vo danh tang vo danh bi canh
-- script viet hoa By http://tranhba.com  t�m k� n�ng �i�m ��ch ph�n b�i t�ng 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-08-29) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-02-04) t�m �i�m s�a ��i v� c� th� t�m 255 l�n 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-27) ti�u nhi m�t t�ch nhi�m v� (Uworld42 = GetTask(42)) 
-- script viet hoa By http://tranhba.com  t�m th�i thay ��i l��ng thi�t ��nh : l�n ��u k� n�ng (1), l�n ��u th�y tinh (257), nhi�u l�n th�y tinh (10), mi�n ph� (1024) 
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\vng_event\\tochieukynang150\\head.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")

function main() 

--dofile("script/������/�һ�Դ/npc/�һ�Դ_ϴ�����ɮ.lua")
--dofile("script/global/g7vn/g7configall.lua")

if vodanhtang150 == 0 then
Say("T�nh n�ng v� danh b� c�nh t�m th�i �ang ��ng") 
return
end

-- script viet hoa By http://tranhba.com  Uworld137 = GetTask(137) 
-- script viet hoa By http://tranhba.com  UTask_world13 = GetTask(13) 
Uworld42 = GetTask(42) 
tbTrainSkill150:ResetDailyTask() 
-- script viet hoa By http://tranhba.com  SetTaskTemp(1,0) -- script viet hoa By http://tranhba.com  ph�c v� , tr�nh kh�i b�t k� qu�y nhi�u 
if (Uworld42 == 40) then -- script viet hoa By http://tranhba.com  ti�u nhi m�t t�ch nhi�m v� 
Talk(12,"","Ta ��n t�m m�t t�ch ��a tr� ! ","A di �� ph�t , ta l� ng��i trong s�ch , kh�ng hi�u , kh�ng hi�u . ","Hy v�ng ��i s� t� bi , n�i cho ta nghe !","N�m �y ta b� tr�c xu�t s� m�n , ph��ng tr��ng c� t� bi sao ","Kh�ng hi�u ��i s� v� sao chuy�n m� b� tr�c xu�t s� m�n ? ","Ng��i h�i nhi�u nh� v�y l�m g� ? ha ha ha , l�o n�p kh�ng ch� c� mu�n c�ng ng��i n�i t�i sao b� tr�c xu�t s� m�n , c�n ph�i n�i cho ng��i bi�t m�t t�ch ��a tr� chuy�n c�a ","Ha ha , th� ra l� h�a th��ng ph�m gi�i li�u ","A di �� ph�t , thi�n tai thi�n tai !","R��u th�t �� �n r�i , t�m kh�ng h��ng ph�t li�u . ","Ha ha , h�o . ng��i c�ng ta c� duy�n , ta cho ng��i bi�t !","��i s� , m��i ng��i m�nh kh�ng ph�i l� n�i gi�n ��ch ","H�o , ng��i �i t�m m�t ng��i g�i long �u�i v� , ch� c� h�n m�i bi�t ng��i kia � ��u trong ") 
SetTask(42,50) 
AddNote("M�t t�ch ��a tr� nhi�m v� # �i t�m long �u�i v� , h�i th�m m�t t�ch ��a tr� ��ch tin t�c . ") 
Msg2Player("M�t t�ch ��a tr� nhi�m v� # �i t�m long �u�i v� , h�i th�m m�t t�ch ��a tr� ��ch tin t�c . ") 
-- script viet hoa By http://tranhba.com  elseif (GetLevel() >= 50) then -- script viet hoa By http://tranhba.com  and (GetCamp() == 4) then -- script viet hoa By http://tranhba.com  cho ph�p t�m �i�m # kh�ng h� n�a h�n ch� h�ng danh t�m �i�m # 
-- script viet hoa By http://tranhba.com  if (Uworld137 > 20) and (Uworld137 <= 30) then -- script viet hoa By http://tranhba.com  2004-06-11 k� n�ng ��i m�i cho m�t l�n mi�n ph� t�m �i�m # kh�ng bao g�m b�ch t�n # 
-- script viet hoa By http://tranhba.com  Say("Th�ch minh # nh�n � ng��i c�ng l� l�o Giang h� ��ch ph�n th��ng , kh�ng c� th�y tinh ta c�ng cho ng��i n�ng thi�t k� n�ng 1 l�n , c� mu�n hay kh�ng n�m ch�c c� h�i n�y ? ",2,"H�o , ta mu�n n�ng thi�t k� n�ng /rollback_0611","Ta c�n l� ch�m m�t ch�t tr� l�i �i /no") 
-- script viet hoa By http://tranhba.com  elseif (UTask_world13 == 0) then -- script viet hoa By http://tranhba.com  kh�ng t�m �i�m # cho ph�p d�ng k� n�ng ho�c b�o th�ch t�m # 
-- script viet hoa By http://tranhba.com  Talk(1,"rollback_get","Th�ch minh # ti�p nh�n <color=red> d�ch c�n t�y t�y <color> ��i v�i ng��i ��ch c�n c�t s� t�o th�nh nh�t ��nh t�n th��ng , ng��i v�n mu�n ta thay ng��i t�y t�y ? ") 
-- script viet hoa By http://tranhba.com  elseif (UTask_world13 == 511) then -- script viet hoa By http://tranhba.com  t�m �i�m �� ��t th��ng h�n , kh�ng th� n�a l�m b�t k� t�m �i�m thao t�c 
-- script viet hoa By http://tranhba.com  Talk(1,"","Th�ch minh # ng��i t�y t�y ��ch s� l�n b�y gi� qu� nhi�u , kh�ng th� l�m ti�p li�u . n�u nh� m�nh h�n ���c n�a t�y t�y l�i c�a , s� r�ng s� kinh m�ch ��t �o�n , tr� th�nh ph� nh�n #") 
-- script viet hoa By http://tranhba.com  elseif (UTask_world13 == 255) then -- script viet hoa By http://tranhba.com  t�m �i�m �� ��t th��ng h�n , nh�ng ch�a d�ng b�o th�ch ��i tr� v� k� n�ng �i�m 
-- script viet hoa By http://tranhba.com  Say("Th�ch minh # ng��i t�y t�y ��ch s� l�n b�y gi� qu� nhi�u , kh�ng th� l�m ti�p li�u . ngo�i ra ng��i n�u nh� c� th� t�m ���c ba vi�n t� thi�n ��a v�n v�t chi nguy�n kh� th�y tinh l�i c�a , c�n c� th� l�i d�ng n� tu b� ng��i m�t ch�t � l�n ��u ti�n t�y t�y l�c kinh m�ch b� t�n th��ng . ",2,"Ta �� mang theo ba vi�n th�y tinh t�i /found_jewel_yes","V�y coi nh� xong /no") 
-- script viet hoa By http://tranhba.com  elseif (UTask_world13 >= 257) and (UTask_world13 < 511) then -- script viet hoa By http://tranhba.com  nhi�u l�n t�m �i�m # v� b�o th�ch ��i tr� v� k� n�ng ch�c n�ng # 
-- script viet hoa By http://tranhba.com  Say("Th�ch minh # c�n mu�n t�y t�y l�i c�a , tr� m��i v�n l��ng b�c c�n nh�t ��nh ph�i c� th�y tinh b�o v� l�ng c�a ng��i m�ch , n�u kh�ng l�y ng��i kia �� c� t�n th��ng kinh m�ch b�y gi� qu� m�c hung hi�m . ",2,"Ch� b�n s� v�t �� chu�n b� th�a ��ng /NEWpay_yes","V�y coi nh� xong /rollback_no") 
-- script viet hoa By http://tranhba.com  elseif (UTask_world13 >= 1) and (UTask_world13 < 256) then -- script viet hoa By http://tranhba.com  nhi�u l�n t�m �i�m # h�n n�a c� th� d�ng b�o th�ch ��i tr� v� k� n�ng �i�m # 
-- script viet hoa By http://tranhba.com  Say("Th�ch minh # c�n mu�n t�y t�y l�i c�a , tr� m��i v�n l��ng b�c c�n nh�t ��nh ph�i c� th�y tinh b�o v� l�ng c�a ng��i m�ch , n�u kh�ng l�y ng��i kia �� c� t�n th��ng kinh m�ch b�y gi� qu� m�c hung hi�m . kh�c , n�u nh� ng��i c� ba vi�n th�y tinh , t�t nh�t hay l� tr��c �em m�t l�n t�y t�y l�c trong kinh m�ch l�u l�i t�n th��ng tr��c cho tu b� li�u , l�u th� b�t l�i . ",3,"Xin gi�p ta tu b� l�n tr��c kinh m�ch b� t�n th��ng /found_jewel_yes","Ta mu�n tr��c t�m th�m l�n n�a t�y /NEWpay_yes","V�y coi nh� xong /rollback_no") 
-- script viet hoa By http://tranhba.com  else 
-- script viet hoa By http://tranhba.com  Talk(1,"","Khai ph�t ng��i # t�m �i�m tr�ng th�i xu�t hi�n sai l�m , xin/m�i c�ng tr� ch�i nh�n vi�n qu�n l� (GM) li�n l�c . ") 
-- script viet hoa By http://tranhba.com  end 
else 
-- script viet hoa By http://tranhba.com  thi�u t�nh ��i tho�i # gi�i th�ch t�m �i�m s�a ��i # 
local szTitle = " th�ch minh # b�y gi� ch� c�n t�m t�y ti�n th�nh th� n�o ��ch phu xe , c�ng c� th� ��a ng��i �i � t�y t�y ��o � , so b�n t�ng t�y t�y c�ng th�m ph��ng ti�n . " 
szTitle = szTitle .. " b�t qu� ta b�n n�y c� th� ��a c�c ng��i �i <color=yellow> v� danh b� k�nh <color> , � n�i n�o c� th� d�ng kinh nghi�m �� ��i l�y m�t �t k� n�ng ��ch �� thu�n th�c . " 

local tbOpt = {} 
-- script viet hoa By http://tranhba.com - gia t�ng v�t ph�m ��a 150 tu luy�n tr� gi� -- script viet hoa By http://tranhba.com  Modified By NgaVN - 20121207 
tinsert(tbOpt, {"��ng v�t ph�m ", tbTrainSkill150.LoadItem, {tbTrainSkill150}}) 
-- script viet hoa By http://tranhba.com  �i v�o tr��c c�n ph�n �o�n c� hay kh�ng c� c� 150 c�p k� n�ng , n�u kh�ng kh�ng ti�n 

-- script viet hoa By http://tranhba.com  ��a ta �i v� danh b� c�nh - - Modified By NgaVN - 20121207 
tinsert(tbOpt, {"��a ta �i v� danh b� k�nh ", toWumingmijin}) 
tinsert(tbOpt, {"Ta suy ngh� th�m h� ", no}) 

CreateNewSayEx(szTitle, tbOpt) 


-- script viet hoa By http://tranhba.com  i = random(0,2) 
-- script viet hoa By http://tranhba.com  if (i == 0) then 
-- script viet hoa By http://tranhba.com  Talk(1,"","Th�ch minh # k� t� c� t�t h�n t�y t�y ch� �i , ta ch� n�y l�p t�c li�n tr� n�n c�a nh�ng la t��c li�u . ") 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  Talk(1,"","Th�ch minh # d�ch c�n t�y t�y ��ch c�ng phu xu�t t� D�ch c�n kinh , nh�ng l� mu�n tu luy�n m�n c�ng phu n�y ng��i c�a t� th�n l�i nh�t ��nh ph�i tan h�t to�n th�n c�ng l�c , ho�n to�n l� l�m ng��i l�m g� . ��ng h�n ta v� Thi�u L�m m� tu t�p m�n c�ng phu n�y , quay ��u l�i l�i b� �u�i ra kh�i Thi�u L�m #") 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  elseif (i == 1) then 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  Talk(1,"","Th�ch minh # tham �i�m t�i l�i c� c�i g� kh�ng ��ng , ch�ng l� ng��i xu�t gia li�n nh�t ��nh ph�i b�a �n phong u�ng l� sao ? l�i v� c�i n�y �em ta �u�i ra kh�i Thi�u L�m . b�t qu� c�ng t�t , b�y gi� ta nh� v�y ng��c l�i h�n ti�u dao t� t�i #") 
-- script viet hoa By http://tranhba.com  else 
-- script viet hoa By http://tranhba.com  Talk(2,"","Th�ch minh # ng��i l� t�i t�m ta t�y t�y sao ? b�n t�ng ta m�c d� b�n t�i , b�t qu� c�ng kh�ng nh�n l�a ng��i . ","Th�ch minh # b�y gi� ng��i ch� c�n t�m t�y ti�n th�nh th� n�o ��ch phu xe , c�ng c� th� ��a ng��i �i � t�y t�y ��o � , so b�n t�ng t�y t�y c�ng th�m ph��ng ti�n . ") 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  Talk(1,"","Th�ch minh # d�ch c�n t�y t�y m�c d� th�n di�u , nh�ng b� t�y t�y ng��i c�n c�t l�i v�n c� nh�t ��nh t�n th��ng , v� v�y mu�n t�y t�y l�i c�a nh�t ��nh ph�i suy ngh� k� c�ng . ") 
-- script viet hoa By http://tranhba.com  end 
end 
end; 

function toWumingmijin() 
local tbSkill_150 = {1055,1056,1057,1059,1060,1058,1066,1067,1069,1070,1071,1061,1062,1114,1063,1065,1075,1076,1074,1073,1079,1078,1080,1081,} 
local bResult = 0 
for i=1, getn(tbSkill_150) do 
if HaveMagic(tbSkill_150[i]) ~= -1 then 
bResult = 1 
break 
end 
end 

if bResult == 1 then 
NewWorld(967,1634, 3231) 
else 
Talk(1,"","H�c ���c 150 k� n�ng sau l�i �i v� danh b� c�nh !") 
end 
end 

function rollback_0611() -- script viet hoa By http://tranhba.com  v� (2004-06-11) thi�t k� mi�n ph� t�m �i�m 
if (GetCash() >= 100000) then 
SetTaskTemp(1,1024) -- script viet hoa By http://tranhba.com  l�n n�y t�m �i�m t�ng l��ng v� 1024 
rollback_prise() 
else 
Talk(1,"","Ng��i h�nh t�u giang h� l�u nh� v�y , 100000 hai ��u kh�ng c� sao ?") 
end 
end 

function rollback_1212() -- script viet hoa By http://tranhba.com  v� (2003-12-12) thi�t k� mi�n ph� t�m �i�m # �� h�y b� # 
if (GetCash() >= 100000) then 
SetTaskTemp(1,1) -- script viet hoa By http://tranhba.com  l�n n�y t�m �i�m t�ng l��ng v� 1 
rollback_prise() 
else 
Talk(1,"","Ch�t ti�n n�y ��u kh�ng c� , sao ���c �i giang h� ?!") 
end 
end 

function found_jewel_yes() -- script viet hoa By http://tranhba.com  t�m ���c b�o th�ch , ��i tr� v� k� n�ng �i�m 
if (GetCash() >= 100000) then 
j238 = GetItemCountEx(238) 
j239 = GetItemCountEx(239) 
j240 = GetItemCountEx(240) 
		if (j238+j239+j240 == 3) then
Pay(100000) 
			SetTask(13,GetTask(13) + 256)	-- script viet hoa By http://tranhba.com  �ѱ����ĳ��ù���ʯ��״̬
for i = 1,j238 do DelItemEx(238) end 
for i = 1,j239 do DelItemEx(239) end 
for i = 1,j240 do DelItemEx(240) end 
AddMagicPoint(3) -- script viet hoa By http://tranhba.com  b� tr� v� t�m �i�m kh�u tr� ��ch 3 �i�m . 
Talk(1,"KickOutSelf","T�t l�m , ng��i b�y gi� ngh� ng�i m�t ch�t , kh�i ph�c m�t ch�t !") 
		elseif (j238+j239+j240 > 3) then
Say("Ng��i cho ta 3 vi�n th�y tinh tr��c , ta m�i c� th� gi�p ng��i !",1,"V�y ta ch� m�t ch�t tr� l�i /rollback_no") 
else 
Talk(1,"","Ng��i kh�ng �� 3 vi�n th�y tinh ") 
end 
else 
Talk(1,"","T�t l�m , ng��i b�y gi� ngh� ng�i m�t ch�t , kh�i ph�c m�t ch�t !") 
end 
end 

function rollback_get() 
Say("T�t l�m , ta r�t m�t m�i . ng��i cho ta ch�y ��m l�ng !",2,"��y l� m��i v�n l��ng , xin/m�i ��i s� nh�n l�y . /pay_yes","V�y coi nh� li�u /rollback_no") 
end; 

function rollback_no() 
Talk(1,"","�ang ch� ng��i ��i gi� quang l�m , h�y thu ��n m��i v�n l��ng , ha ha !. ") 
end; 

function pay_yes() -- script viet hoa By http://tranhba.com  l�n ��u t�m �i�m , l� d�ng ��ch b�o th�ch # kh�ng tr� k� n�ng # 
if (GetCash() >= 100000) then 
if (GetByte(GetTask(13),2) == 0) then -- script viet hoa By http://tranhba.com  n�u d�ng qua th�y tinh c�ng kh�ng n�a cho ph�p d�ng th�y tinh t�m �i�m 
Say("Ng��i tr��c cho ta 3 vi�n th�y tinh , ta m�i c� th� gi�p ng��i !",3,"Ta c� 3 vi�n /pay_jewel","Ta kh�ng c� , kinh m�ch b� th��ng , kh�ng ch�u n�i . /jewel_none","V�y ta li�n t�i nay gi�p ng��i /rollback_no") 
else 
jewel_none() 
end 
else 
Talk(1,"","��y l� ng��i ��ch th�nh � sao ? ng��i tr� v� �i th�i ! ") 
end 
end 

function pay_jewel() 
j238 = GetItemCountEx(238) 
j239 = GetItemCountEx(239) 
j240 = GetItemCountEx(240) 
	if (j238+j239+j240 == 3) then
SetTaskTemp(1,257) -- script viet hoa By http://tranhba.com  nh� l� d�ng b�o th�ch t�m ��ch �i�m # t�m �i�m thay ��i l��ng tr� gi� l� 257 , kh�ng ph�i l� 1# 
Talk(2,"rollback_prise","T�t l�m , ng��i b�y gi� ngh� ng�i m�t ch�t , kh�i ph�c m�t ch�t !","B�y gi� ng�i � ph�a tr��c ta ") 
	elseif (j238 + j239 + j240 > 3) then
Say("Ng��i tr��c cho ta 3 vi�n th�y tinh , ta m�i c� th� gi�p ng��i !",1,"V�y ta ch� m�t ch�t tr� l�i /rollback_no") 
else 
Talk(1,"","Ng��i r� r�ng kh�ng c� 3 vi�n th�y tinh ") 
end 
end 

function NEWpay_yes() -- script viet hoa By http://tranhba.com  l�n th� hai # c�ng sau n�y # t�m �i�m l�c �i�u d�ng , tr�c ti�p ki�m tra ti�n c�ng b�o th�ch , kh�ng h� n�a ghi ch�p c� hay kh�ng b�o th�ch t�m 
if (GetCash() >= 100000) then 
j238 = GetItemCountEx(238) 
j239 = GetItemCountEx(239) 
j240 = GetItemCountEx(240) 
		if (j238+j239+j240 == 3) then
SetTaskTemp(1,10) -- script viet hoa By http://tranhba.com  �� b�t ��u t�m �i�m l�u tr�nh 
Talk(2,"rollback_prise","T�t l�m , ng��i b�y gi� ngh� ng�i m�t ch�t , kh�i ph�c m�t ch�t !","B�y gi� ng�i � ph�a tr��c ta ") 
		elseif (j238 + j239 + j240 > 3) then
Say("Ng��i tr��c cho ta 3 vi�n th�y tinh , ta m�i c� th� gi�p ng��i !",1,"V�y ta ch� m�t ch�t tr� l�i /rollback_no") 
else 
Talk(1,"","Ng��i r� r�ng kh�ng c� 3 vi�n th�y tinh ") 
end 
else 
Talk(1,"","100000 hai ��u kh�ng c� , ta gi�p th� n�o ng��i ?") 
end 
end 

function jewel_none() 
-- script viet hoa By http://tranhba.com 	SetTask(13,GetTask(13) + 1)
SetTaskTemp(1,1) -- script viet hoa By http://tranhba.com  nh� l� d�ng k� n�ng �i�m ��m t�m ��ch �i�m # t�m �i�m thay ��i l��ng tr� gi� l� 1 , kh�ng ph�i l� 257# 
Talk(2,"rollback_prise","T�t l�m , ng��i b�y gi� ngh� ng�i m�t ch�t , kh�i ph�c m�t ch�t !","B�y gi� ng�i � ph�a tr��c ta ") 
end 

function rollback_cancel() -- script viet hoa By http://tranhba.com  �� bu�ng tha v� d�ng h�m s� 
i = GetTaskTemp(1) 
if (i > 0) then -- script viet hoa By http://tranhba.com  n�u nh� �� b�t ��u l�u tr�nh , ho�n tr� 10W l��ng b�c 
Talk(1,"","Ta c�n ng��i ti�n !") 
Msg2Player("Tr� ti�n l�i cho ng��i . ") 
end 
end 

function rollback_prise() 
-- script viet hoa By http://tranhba.com - tr��c tr� ti�n c�ng b�o th�ch # ��a thay ��i l��ng 
UTask13 = GetTask(13) 
j238 = GetItemCountEx(238) 
j239 = GetItemCountEx(239) 
j240 = GetItemCountEx(240) 
addon = GetTaskTemp(1) 
if (addon == 1024) then -- script viet hoa By http://tranhba.com  l� mi�n ph� ��c th� t�m �i�m 
		Uworld137 = GetTask(137) + 40
SetTask(137,Uworld137) 
AddMagicPoint(3) 
elseif (addon == 257) then -- script viet hoa By http://tranhba.com  l� l�n ��u t�m �i�m , h�n n�a l� d�ng b�o th�ch t�m ��ch 
for i = 1,j238 do DelItem(238) end 
for i = 1,j239 do DelItem(239) end 
for i = 1,j240 do DelItem(240) end 
AddMagicPoint(3) -- script viet hoa By http://tranhba.com  th�m 3 �i�m k� n�ng , �� ti�u t�m �i�m kh�u tr� ��ch 3 �i�m v�a ��ng ch�ng l�i . 
		SetTask(13,UTask13 + 257)	-- script viet hoa By http://tranhba.com  ϴ������ĸı�Ϊԭ��ֵ���ϴ˴�����ֵ���������ϴ���+0��
elseif (addon == 10) then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� l�n ��u t�m �i�m , ph�i c� b�o th�ch . c�ng th�m 3 �i�m k� n�ng 
for i = 1,j238 do DelItem(238) end 
for i = 1,j239 do DelItem(239) end 
for i = 1,j240 do DelItem(240) end 
AddMagicPoint(3) 
		SetTask(13,UTask13 + 1)	-- script viet hoa By http://tranhba.com  ϴ������ĸı�Ϊԭ��ֵ���ϴ˴�����ֵ
elseif (addon == 1) then -- script viet hoa By http://tranhba.com  l�n ��u t�m �i�m , d�ng l� k� n�ng 
SetTask(13,1) -- script viet hoa By http://tranhba.com  t�m �i�m thay ��i l��ng ��ch s�a ��i v� v�n l� tr� gi� c�ng th�m l�n n�y gia t�ng tr� gi� 
else 
Talk(1,"","T�y t�y tr�ng th�i c� sai l�m , xin li�n l�c GM gi�i quy�t !") 
return 0 
end 
Pay(100000) 
-- script viet hoa By http://tranhba.com - sau �� b�t ��u t�m �i�m 
i = HaveMagic(210) -- script viet hoa By http://tranhba.com  khinh c�ng kh�c thao t�c 
j = HaveMagic(400) -- script viet hoa By http://tranhba.com  � c��p c�a ng��i gi�u gi�p ng��i ngh�o kh� � kh�c thao t�c 
n = RollbackSkill() -- script viet hoa By http://tranhba.com  thanh tr� k� n�ng c�ng tr� v� t�t c� k� n�ng �i�m # bao g�m khinh c�ng ch� ��c th� k� n�ng # 
x = 0 
	if (i ~= -1) then x = x + i end		-- script viet hoa By http://tranhba.com  �������ж����ų���δѧ���Ṧ���˷���-1�Ӷ����µ�������������
	if (j ~= -1) then x = x + j end
rollback_point = n - x - 3 -- script viet hoa By http://tranhba.com  �em k� n�ng �i�m l�m � kh�ng �i�m ��m ho�n tr� , nh�ng tr��c kh�u tr� khinh c�ng ch� 
	if (rollback_point + GetMagicPoint() < 0) then		-- script viet hoa By http://tranhba.com  ���ϴ���˸���������0��Ϊ�Ժ���ϴ�㱣����
rollback_point = -1 * GetMagicPoint() 
end 
AddMagicPoint(rollback_point) 
-- script viet hoa By http://tranhba.com  AddMagic(53,1) -- script viet hoa By http://tranhba.com  �n n�p tr� c�t k� n�ng # tr��ng binh # ng�n binh # t�m xa # kh�ng c�n x� l� 
-- script viet hoa By http://tranhba.com  AddMagic(1,1) 
-- script viet hoa By http://tranhba.com  AddMagic(2,1) 
if (i ~= -1) then AddMagic(210,i) end -- script viet hoa By http://tranhba.com  n�u nh� h�c qua khinh c�ng l� th�m tr� v� nguy�n c� c�p b�c 
if (j ~= -1) then AddMagic(400,j) end -- script viet hoa By http://tranhba.com  n�u nh� h�c qua � c��p c�a ng��i gi�u gi�p ng��i ngh�o kh� � gi�ng nhau x� l� 
if (UTask13 == 254) or (UTask_13 == 510) then -- script viet hoa By http://tranhba.com  �� kh�ng c� t�m �i�m c� h�i , nh�c nh� m�t c�i nh� ch�i 
Msg2Player("D�ng 3 vi�n th�y tinh ti�n h�nh k� n�ng t�y t�y , ng��i n�n tr� v� nh� ngh� ng�i m�t ch�t !") 
Say("Ng��i t�y t�y qu� nhi�u l�n , kinh m�ch r�i lo�n , b�y gi� <color=red> kh�ng th� t�y t�y li�u <color> !",1,"Ta bi�t . /KickOutSelf") 
else 
Msg2Player("�� t�y t�y ho�n k� n�ng �i�m , ng��i c� th� ti�n h�nh l�n n�a ph�n ph�i !") 
Say("�� t�y t�y ho�n k� n�ng �i�m , ng��i c� th� ti�n h�nh l�n n�a ph�n ph�i !",1,"H�o . /KickOutSelf") 
end 
-- script viet hoa By http://tranhba.com  KickOutSelf() 
end; 

function no() 
end 
