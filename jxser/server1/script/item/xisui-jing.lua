--Tay tuy kinh edit by G7VN

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel)
	--dofile("script/item/xisui-jing.lua")
	--dofile("script/global/g7vn/g7configall.lua")

	times = GetTask(81)
	point= {
		{pot=1,msg="M�t �i�m "},
		{pot=2,msg="Ch�a h�a "},
		{pot=3,msg="M�t s� "},
		{pot=4,msg="Kh�ng �t "},
		{pot=5,msg="H�i nhi�u "}
	}
	str ={
		"B�n �� xem k� quy�n T�y T�y kinh nh�ng kh�ng th� hi�u: ( ",
		"B�n �� ��c 'T�y T�y Kinh', nh�n ���c %s",
		"B�n �� xem k� quy�n T�y T�y kinh nh�ng kh�ng th� hi�u: ( "
	}
	level = GetLevel()
	if(level < 90) then  --�ȼ�̫�ͣ�����ʹ��
		Msg2Player(str[1])
		return 1
	end
	if(times > gioihanTTK) then --ʹ�ó�������
		Msg2Player("S� d�ng l�n th�: "..times.." - "..str[3])
		return 1
	end
	if(level > 89) then --���ȼ�����Ǳ��
		level = 89
	end
	index = floor((level -80)/2) +1
	AddProp(point[index].pot)
	SetTask(81,times+1)
	Msg2Player("S� d�ng l�n th�: "..times.." - "..format(str[2],point[index].msg))
	return 0
end

