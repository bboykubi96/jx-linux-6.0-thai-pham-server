function OnTimer()
	local nguyenbao = CalcEquiproomItemCount(4,343,1,1)
	
	if nguyenbao  ~= 0 then
		ConsumeEquiproomItem(nguyenbao , 4,343, 1,-1)
		AddGlobalNews("<color=red>Nh©n vËt "..GetName().." ®ang cè ý Hack Kim Nguyªn B¶o nh­ng kh«ng thµnh c«ng!")
	
	end
end;

