Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\lib\\timerlist.lua")
Include("\\script\\lib\\player.lua")
Include("\\script\\lib\\basic.lua") 

function main(sel)
dofile("script/wumumenpai/hanthuongduc.lua")
	if GetCamp() == 4 and GetLevel() >= 50 and GetTask(13) == 0 then
		Describe("H�n Th��ng ��c: mu�n tr� th�nh �� t� gi�i nh�t c�a b�n ph�i, ph�i ��nh b�i �� t� c� t�n tu�i nh�t. Ng��i c� mu�n ki�m tra kh�ng",2,"���c ta s� �i ngay/nvkydanhdetu","�� ta suy ngh� l�i/no")
	elseif GetTask(13) == 20*256 then
		Talk(3,"nvkydanhdetu4",""..GetName()..": Ta �� v��t qua kh�o nghi�m.","H�n Th��ng ��c: Ta th�c s� kh�ng nh�n l�m ng��i, b�y gi� ng��i l� k� danh �� t� c�a b�n m�n, h�y ch�m ch� luy�n t�p.")
	else
		Talk(1,"","H�n Th��ng ��c: Khi�n kh�ng th� b�o v� ���c b�n th�n, ki�m t�n c�ng v� gi�t ng��i v� h�nh.")
	end
end

function nvkydanhdetu() 
SetTask(13,10*256)
Msg2Player("��n Di�n V� Tr��ng (194/191) t� th� v� c�ng.") 
end


function nvkydanhdetu4() 
SetTask(13,30*256)
Msg2Player("Ho�n th�nh nhi�m v� k� danh �� t�. Ng��i �� tr� th�nh cao th� �� nh�t trong ph�i V� h�n v� t�ng th�m 1 �i�m danh ti�ng.") 
AddRepute(1) 
end 