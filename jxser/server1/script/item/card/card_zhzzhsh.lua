-- script viet hoa By http://tranhba.com  ch�p t� tay t�p 

-- script viet hoa By http://tranhba.com by yfeng 
Include ("\\script\\event\\chinesenewyear\\eventhead.lua")

NUMPERMIN = 0 -- script viet hoa By http://tranhba.com  ph�t b�n trong th�p l�y t�p s� l��ng 
LASTTIME = 0 -- script viet hoa By http://tranhba.com  l�n tr��c th�p l�y l�c ��ch th�i gian 

TID_VALIDATION = 501 
TID_CARDNUMBER = 502 
GETBYTE = 2 

function ComputeTime() 
	 return tonumber((((date("%m")-1)*30+date("%d")-1)*24+date("%H"))*60+date("%M"))
end 

function main(idx) 
return 1 
end 

function IsPickable( nItemIndex, nPlayerIndex ) 
return 1 
end 

function PickUp( nItemIndex, nPlayerIndex ) 
if(not CHINESENEWYEAR) then 
return 0 
end 
local oldPlyIdx = PlayerIndex 
PlayerIndex = nPlayerIndex 
local size = GetTeamSize() 
local myName = GetName() 
local mySex = GetSex() 
local myCode = GetTask(TID_VALIDATION) 
local myNum = GetByte(GetTask(TID_CARDNUMBER),GETBYTE) 
local myLevel = GetLevel() 
if(size < 2) then -- script viet hoa By http://tranhba.com  
Msg2Player("Ng��i l�y ���c m�t t� ch�p t� tay t�p , nh�ng l� ki�t nhi�n m�t th�n ng��i kh�ng c�ch n�o m� ra th� n�y ��ch n�ng l�c . ") 
PlayerIndex = oldPlyIdx 
return 0 
end 
if(size > 2) then 
Msg2Player("Ng��i l�y ���c m�t t� ch�p t� tay t�p , nh�ng l� nhi�u ng��i nh� v�y , ng��i kh�ng bi�t c�ng ai m�i c� th� m� ra th� n�y ��ch n�ng l�c . ") 
PlayerIndex = oldPlyIdx 
return 0 
end 
local otherIndex = GetTeamMember(1) 
if( otherIndex == nPlayerIndex) then 
otherIndex = GetTeamMember(2) 
end 
PlayerIndex = otherIndex 
otherName = GetName() 
otherSex = GetSex() 
otherCode = GetTask(TID_VALIDATION) 
otherNum = GetByte(GetTask(TID_CARDNUMBER),GETBYTE) 
otherLevel = GetLevel() 
PlayerIndex = nPlayerIndex 
if(otherSex == mySex) then 
Msg2Player("Ng��i l�y ���c m�t t� ch�p t� tay t�p , nh�ng l� kh�ng c�ch n�o c�ng ��ng t�nh nh� ch�i m� ra th� n�y ��ch n�ng l�c . ") 
PlayerIndex = oldPlyIdx 
return 0 
end 
if(myCode == otherCode and myCode ~=0) then -- script viet hoa By http://tranhba.com  nghi�m ch�ng con ng�a gi�ng nhau 
if(myNum == otherNum) then -- script viet hoa By http://tranhba.com  h�u t�nh ng��i , t�p ��ch s� l��ng m�t d�ng . 
			myNum = myNum + 1  -- script viet hoa By http://tranhba.com ��Ƭ�����ۼ�
otherNum = myNum 
Msg2Player("Ng��i l�y ���c m�t t� ch�p t� tay t�p , �em ng��i c�ng "..otherName.." ��ch duy�n ph�n k�o ph�i c�ng g�n , ��n tr��c m�t th� ng�ng , ng��i t�ch l�y "..myNum.." t� ch�p t� tay t�p . ") 
			AddOwnExp(myLevel * (20+0.1*myLevel)-10)
SetTask(TID_CARDNUMBER,SetByte(GetTask(TID_CARDNUMBER),GETBYTE,myNum)) -- script viet hoa By http://tranhba.com  tr� v� vi�t th� h�i th� 
PlayerIndex = otherIndex 
Msg2Player(myName.." l�y ���c m�t t� ch�p t� tay t�p , �em c�c ng��i duy�n ph�n k�o ph�i c�ng g�n , ��n tr��c m�t th� ng�ng , ng��i t�ch l�y "..otherNum.." t� ch�p t� tay t�p . ") 
			AddOwnExp(otherLevel * (10+0.07*otherLevel))
SetTask(TID_CARDNUMBER,SetByte(GetTask(TID_CARDNUMBER),GETBYTE,myNum)) -- script viet hoa By http://tranhba.com  tr� v� vi�t th� h�i th� 
if(myNum > 98) then -- script viet hoa By http://tranhba.com  ��t t�i 99 c� , c�ng t� giai l�o n�a/r�i 
myNum = 0 
PlayerIndex = nPlayerIndex 
AddSkillState(530,15,1,2*60*60*18) 
AddSkillState(533,1,1,2*60*60*18) 
Msg2Player("Ng��i ch�p t� tay t�p �� t�ch l�y 99 c� , ng��i c�ng "..otherName.." c�ng chung m� ra th� n�y ��ch n�ng l�c . ng��i thu ���c 2 canh gi� ��ch may m�n gia t�ng 30 �i�m . ") 
SetTask(TID_CARDNUMBER,SetByte(GetTask(TID_CARDNUMBER),GETBYTE,myNum)) -- script viet hoa By http://tranhba.com  tr� v� vi�t th� h�i th� 
PlayerIndex = otherIndex 
AddSkillState(530,15,1,2*60*60*18) 
AddSkillState(533,1,1,2*60*60*18) 
Msg2Player("Ng��i ch�p t� tay t�p �� t�ch l�y 99 c� , ng��i c�ng "..myName.." c�ng chung m� ra th� n�y ��ch n�ng l�c . ng��i thu ���c 2 canh gi� ��ch may m�n gia t�ng 30 �i�m . ") 
SetTask(TID_CARDNUMBER,SetByte(GetTask(TID_CARDNUMBER),GETBYTE,myNum)) -- script viet hoa By http://tranhba.com  tr� v� vi�t th� h�i th� 
end 
PlayerIndex = oldPlyIdx 
return 0 
end 
-- script viet hoa By http://tranhba.com  d�i t�nh ch� y�u ��ch m�t ��i 
if(myNum > otherNum) then -- script viet hoa By http://tranhba.com  ta so n�ng t�p nhi�u 
myNum = myNum - 1 
if(myNum ~= otherNum) then -- script viet hoa By http://tranhba.com  t�n th�t , c�n kh�ng ch� , kh�ng c� duy�n ph�n a 
				otherNum = otherNum + 1  -- script viet hoa By http://tranhba.com ���ǵ�Ե���ٽ�һ�㡣 :)
end 
else -- script viet hoa By http://tranhba.com  n�ng so v�i ta t�p nhi�u 
			myNum = myNum + 1  -- script viet hoa By http://tranhba.com ��һ��
if(myNum ~=otherNum) then 
otherNum = otherNum - 1 
end 
end 
PlayerIndex = nPlayerIndex 
Msg2Player("Ng��i l�y ���c m�t t� ch�p t� tay t�p , c�ng "..otherName.." ��ch duy�n ph�n c�ng g�n , ng��i b�y gi� t�ch l�y "..myNum.." t� ch�p t� tay th� . ") 
SetTask(TID_CARDNUMBER,SetByte(GetTask(TID_CARDNUMBER),GETBYTE,myNum)) -- script viet hoa By http://tranhba.com  tr� v� vi�t th� h�i th� 
PlayerIndex = otherIndex 
Msg2Player(myName.." l�y ���c m�t t� ch�p t� tay t�p , c�ng ng��i ��ch duy�n ph�n c�ng g�n , ng��i b�y gi� t�ch l�y "..otherNum.." t� ch�p t� tay th� . ") 
SetTask(TID_CARDNUMBER,SetByte(GetTask(TID_CARDNUMBER),GETBYTE,otherNum)) -- script viet hoa By http://tranhba.com  tr� v� vi�t th� h�i th� 
PlayerIndex = oldPlyIdx 
return 0 
end 
-- script viet hoa By http://tranhba.com  nghi�m ch�ng con ng�a b�t ��ng , ho�c l� ��u l� 0 
local code = GetValidateCode(nPlayerIndex) 
Msg2Player("Ng��i l�y ���c m�t t� ch�p t� tay t�p , h�n n�a c�ng "..otherName.." b�t ��u t�nh duy�n . ") 
SetTask(TID_VALIDATION,code) 
PlayerIndex = otherIndex 
Msg2Player(myName.." l�y ���c m�t t� ch�p t� tay t�p , h�n n�a c�ng ng��i b�t ��u t�nh duy�n . ") 
SetTask(TID_VALIDATION,code) 
PlayerIndex = oldPlyIdx 
return 0 
end 

function GetValidateCode(plyIdx) 
local oPID = PlayerIndex 
PlayerIndex = plyIdx 
local mid = GetWorldPos() 
PlayerIndex = oPID 
	local time = ComputeTime() -- script viet hoa By http://tranhba.com (((date("%m")-1)*30+date("%d")-1)*24+date("%H"))*60+date("%M")

if(time == LASTTIME) then 
		NUMPERMIN = NUMPERMIN + 1
	-- script viet hoa By http://tranhba.com -+-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com +-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -+-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -+
-- script viet hoa By http://tranhba.com -| LASTTIME | MAPID |NUM/MIN| 
	-- script viet hoa By http://tranhba.com -+-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com +-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -+-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -+
-- script viet hoa By http://tranhba.com -| 16 BIT | 9 BIT | 7BIT | 
	-- script viet hoa By http://tranhba.com -+-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com +-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -+-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -+
-- script viet hoa By http://tranhba.com -| 65535 | 511 | 127 | 
	-- script viet hoa By http://tranhba.com -+-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com +-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -+-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -+
		return LASTTIME * 65536 + mid*128 + NUMPERMIN
end 
LASTTIME = time 
NUMPERMIN = 0 
	return LASTTIME * 65536 + mid*128 + NUMPERMIN
end 
