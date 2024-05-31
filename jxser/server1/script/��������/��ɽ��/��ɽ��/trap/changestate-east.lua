-- script viet hoa By http://tranhba.com  ph¸i Hoa s¬n ®«ng m«n chiÕn ®Êu thiÕt ®æi ®iÓm 

function main(sel) 
if ( GetFightState() == 1 ) then -- script viet hoa By http://tranhba.com  nhµ ch¬i xö vu kh«ng ph¶i lµ tr¹ng th¸i chiÕn ®Êu , tøc ë bªn trong ph¸i 
SetPos(1534, 3187); -- script viet hoa By http://tranhba.com  thiÕt trİ ®i ra Trap ®iÓm , môc ®İch ®iÓm ë ph¸i bªn ngoµi 
SetFightState(0)--·ÇÕ½¶·×´Ì¬
	ForbidChangePK(0)--¿ÉÒÔ¸ÄÕ½¶·Ä£Ê½
	SetPKFlag(0)
	SetCurCamp(GetCamp())
	ForbidEnmity(0)
else 
SetPos(1532, 3184); -- script viet hoa By http://tranhba.com  thiÕt trİ ®i ra Trap ®iÓm , môc ®İch ®iÓm ë bªn trong ph¸i 
SetLogoutRV(1)--ÏÂÏß´«³ö±¾µØÍ¼
	--DisabledStall(1)	--°ÚÌ¯
	SetFightState(1)--Õ½¶·×´Ì¬
	SetPKFlag(1)--Õ½¶·Ä£Ê½
	ForbidChangePK(1)--½ûÖ¹¸ÄÕ½¶·Ä£Ê½
	DisabledUseTownP(0)
	ForbidEnmity(1)
	local szMyTong = GetTongName();	--LÊy tªn bang
	if szMyTong == nil or szMyTong == "" then --Neu chua co bang hoi chuyen sang mau do
		if GetCamp() == 0 or GetCamp() == 6 then
			SetCurCamp(GetCamp())
		else	
			SetCurCamp(4)
		end
	end
end; 
end; 
