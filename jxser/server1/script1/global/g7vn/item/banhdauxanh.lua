--Tay tuy kinh edit by G7VN

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel)
	--dofile("script/item/xisui-jing.lua")
	dofile("script/global/g7vn/item/banhdauxanh.lua")

	times = GetTask(3025)
	point= {
		{pot=1,msg="M�t �i�m "},
		{pot=2,msg="Ch�a h�a "},
		{pot=3,msg="M�t s� "},
		{pot=4,msg="Kh�ng �t "},
		{pot=5,msg="H�i nhi�u "}
	}
	str ={
		"B�n kh�ng bi�t b�nh n�y �� l�m g�.: ( ",
		"B�n �� �n 'B�nh ��u Xanh Nh�n Th�t Ch�', nh�n ���c %s",
		"B�n �� �n �� s� l��ng B�nh, c�n th�n b�i th�c : ( "
	}
	level = GetLevel()
	if(level < 80) then  --�ȼ�̫�ͣ�����ʹ��
		Msg2Player(str[1])
		return 1
	end
	if(times > 14) then --ʹ�ó�������
		Msg2Player("S� d�ng l�n th�: "..times.." - "..str[3])
		return 1
	end
	if(level > 89) then --���ȼ�����Ǳ��
		level = 89
	end
	index = floor((level -80)/2) +1
	AddProp(5)
	SetTask(3025,times+1)
	Msg2Player("S� d�ng l�n th�: "..times.." - "..format(str[2],point[index].msg))
	return 0
end

