Include("\\script\\maps\\checkmap.lua");

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(nItemIndex)

	--dofile("script/item/vsd/lenhbaivsd.lua")
	--dofile("script/global/g7vn/g7configall.lua")
	if 1==1 then
	Say("H�y ��n T�y S�n Th�n, t�m T�y S�n Ti�u Nh�  �� l�n ��o nh�")
		return 1;
	end
	if divisondao == 0 then
		Say("Vi S�n ��o t�m th�i ch�a m�")
		return 1;
	end

	local pMapID, pMx, pMy = GetWorldPos();
	if GetFightState()>=1 or (IsCityMap(pMapID)~=1 and IsFreshmanMap(pMapID)~=1 and pMapID ~= 175)  then
		Msg2Player("<color=yellow>L�nh b�i Vi S�n ��o ch� c� th� s� d�ng t�i khu v�c phi chi�n ��u c�a th�nh th�, t�n th� th�n v� t�y s�n th�n<color>");
		return 1;
	end;
	--DinhHQ
	--20110407: kh�ng cho s� d�ng l�nh b�i VSD trong v��t �i 30
	if pMapID == 957 then
		Msg2Player("<color=yellow>Cu�n truy�n t�ng M�c B�c ch� c� th� s� d�ng t�i khu v�c phi chi�n ��u c�a th�nh th�, t�n th� th�n v� t�y s�n th�n<color>");
		return 1;
	end
	--NewWorld(342, 1417, 2801)
	NewWorld(342,1178,2412) 
	SetFightState(1);
	return 0
end


