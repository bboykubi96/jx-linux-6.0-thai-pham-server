function OnTimer()
	local nguyenbao = CalcEquiproomItemCount(4,343,1,1)
	
	if nguyenbao  ~= 0 then
		ConsumeEquiproomItem(nguyenbao , 4,343, 1,-1)
		AddGlobalNews("<color=red>Nh�n v�t "..GetName().." �ang c� � Hack Kim Nguy�n B�o nh�ng kh�ng th�nh c�ng!")
	
	end
end;

