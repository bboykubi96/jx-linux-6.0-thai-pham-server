-- Hut mau don

function main(sel) 
local nNum = GetTask(3011)
local nTimes = mod(GetTask(80),16) 

if(nNum >= 12) then
	Msg2Player("M�i ngu�i ch� ���c d�ng Ti�n ��n 12 l�n.")
	return 1 
end 
if  GetLevel() <= 90 then
	Msg2Player("Ph�i tr�n c�p 90 m�i ���c d�ng.")
	return 1
end
if nTimes < 15 then
	Msg2Player("Ph�i �n t� 15 cu�n V� L�m M�t T�ch tr� l�n m�i ���c d�ng.")
	return 1
end

SetTask(80,0) -- vo lam mat tich
-- SetTask(81,0) -- tay tuy kinh
SetTask(3011,nNum+1)
Msg2Player("C�m gi�c n�ng c� ng��i. B�t m�ch ���c �� th�ng. S� l�n nu�t V� L�m M�t T�ch tr� v� kh�ng.")
Say("C�m gi�c n�ng c� ng��i. B�t m�ch ���c �� th�ng. S� l�n nu�t V� L�m M�t T�ch tr� v� kh�ng.")
return 0
end 
