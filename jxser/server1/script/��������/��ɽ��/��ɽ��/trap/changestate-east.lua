-- script viet hoa By http://tranhba.com  ph�i Hoa s�n ��ng m�n chi�n ��u thi�t ��i �i�m 

function main(sel) 
if ( GetFightState() == 1 ) then -- script viet hoa By http://tranhba.com  nh� ch�i x� vu kh�ng ph�i l� tr�ng th�i chi�n ��u , t�c � b�n trong ph�i 
SetPos(1534, 3187); -- script viet hoa By http://tranhba.com  thi�t tr� �i ra Trap �i�m , m�c ��ch �i�m � ph�i b�n ngo�i 
SetFightState(0)--��ս��״̬
	ForbidChangePK(0)--���Ը�ս��ģʽ
	SetPKFlag(0)
	SetCurCamp(GetCamp())
	ForbidEnmity(0)
else 
SetPos(1532, 3184); -- script viet hoa By http://tranhba.com  thi�t tr� �i ra Trap �i�m , m�c ��ch �i�m � b�n trong ph�i 
SetLogoutRV(1)--���ߴ�������ͼ
	--DisabledStall(1)	--��̯
	SetFightState(1)--ս��״̬
	SetPKFlag(1)--ս��ģʽ
	ForbidChangePK(1)--��ֹ��ս��ģʽ
	DisabledUseTownP(0)
	ForbidEnmity(1)
	local szMyTong = GetTongName();	--L�y t�n bang
	if szMyTong == nil or szMyTong == "" then --Neu chua co bang hoi chuyen sang mau do
		if GetCamp() == 0 or GetCamp() == 6 then
			SetCurCamp(GetCamp())
		else	
			SetCurCamp(4)
		end
	end
end; 
end; 
