function vietguardslua_buyxu(shopid, location)
 
        if (shopid == 142) then GetInfo("allowbuy")
	    logplayer("dulieu/shop/ShopBuy_"..date("%d_%m_%Y")..".txt",format("[IP : %s ] - Th�i gian : %s  - 	T�i kho�n [ %s] - 	Nh�n v�t : [%s ]  	- shopid [ %s] - location [ %s]  ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),shopid,location))
	end
end

function logplayer(zFile,szMsg)
	local handle = openfile(zFile,"a")
	write(handle,format("%s\n",szMsg));
	closefile(handle);
end