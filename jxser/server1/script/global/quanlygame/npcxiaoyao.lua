IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\global\\g7vn\\chuyenmonphai.lua")



function main() 
dofile("script/global/quanlygame/npcxiaoyao.lua");
	local szTitle = "<npc>L�n n�y ph�i <color=yellow>Ti�u Dao<color> s� ��a tuy�t k� v� l�m �i tung ho�nh thi�n h�."
	local tbOpt =
	{
		{"Gia Nh�p Ti�u Dao Ph�i", xingianhap},
		--{"Chuy�n Qua Ph�i Kh�c", chuyenphaikhac},
		{"K�t th�c ��i tho�i"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)	
end





function xingianhap()
if (GetCamp() == 0) and (GetSeries() == 4) and (GetLevel() >= 10) and  (GetTask(169) ~= 12) then		
Say("<color=red>Ti�u Dao M�t S�<color>: Ph�i <color=cyan>Ti�u Dao<color> d�ng Ki�m Ph�p v� C�m l�m V� Kh�, l� 1 trong nh�ng tuy�t k� v� c�ng trong thi�n h�!",2, "Cho ta gia nh�p/go", "�� ta suy ngh� k� l�i xem/no")
elseif (GetCamp() == 0) and (GetSeries() ~= 4) and (GetLevel() >= 199) and (GetSex() == 0) and  (GetTask(169) ~= 12) then
Say("<color=white>Ch� c� ng��i m�i tao nh�n v�t l� h� Th� m�i c� th� gia nh�p Ti�u Dao ph�i")
elseif (GetTask(169) >= 12)  then
local szTitle = "<npc>Ng��i �� gia nh�p m�n ph�i r�i quay l�i l�m chi n�a, mau �i �i ?  "
	local tbOpt =
	{
		--{"Phi�n l�o cho ta m�t v�",vep},
		{"K�t th�c ��i tho�i."},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
else
Talk(1,"","Ng��i ph�i t�o nh�n v�t h� th� m�i c� th� gia nh�p Ti�u Dao ph�i.")	
end
end


function go() 
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	--if(nSilverCount < 200) then -- gia xu
--Say("<color=white>Th�t xin l�i hoa s�n ta l� 1 ph�i �n ch�a nhi�u tuy�t k� b� m�t c� uy l�c m�nh m� tri�t ti�u c�c ph�i trong ch�n giang h�.V� ��i hi�p ��y mu�n gia nh�p ph�i ta c�n ��ng l� ph� 200xu.")
--	return 
--	end
	AddMagic(1881,0)-- level 10
	AddMagic(1905,0)-- level 10

	AddMagic(1882,0)-- level 20
	AddMagic(1906,0)-- level 20

	--AddMagic(1883,0)-- level 30
	AddMagic(1909,0)-- level 30
	AddMagic(1887,0)-- level 30

	AddMagic(1885,0)-- level 40
	--AddMagic(1907,0)-- level 40

	--AddMagic(1887,0)-- level 50
	--AddMagic(1909,0)-- level 50
	AddMagic(1883,0)-- level 50
	AddMagic(1907,0)-- level 50

	AddMagic(1888,0)-- level 60
	AddMagic(1889,0)-- level 60
    AddMagic(1890,0)-- level 60
	AddMagic(1910,0)---- level 60 (mai hoa tam long skill 90 old)
	--AddMagic(1896,0)---- level 150 (thay the skill 60)

	--AddMagic(1891,20)---- level 90
	--AddMagic(1910,20)---- level 90
	--AddMagic(1911,20)---- level 90 (skill 150 old) 

	--AddMagic(1894,20)---- level 120

	--AddMagic(1896,20)---- level 150
	--AddMagic(1911,20)---- level 150

	--AddMagic(1901,20)---- level 180
   --AddMagic(210, 1)
   SetTask(169,12)
   SetFaction("wudang");
   SetFaction("kunlun");
   SetFaction("xiaoyao");
		SetLastFactionNumber(12)
		SetCamp(3)
		SetCurCamp(3)
		SetRank(9)
SetSeries(4)
--ConsumeEquiproomItem(200,4,417,1,1)
SaveNow()		
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> Gia nh�p th�nh c�ng <color=yellow>Ti�u Dao Ph�i !!!")
	--local hoason = "script/global/bil4i3n/bil4i3n_log/Mua_Hoa_Son.log"
	--local hoason1 = openfile(hoason, "a");
	--write(hoason1, format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Dung 200 Xu Mua Phai Hoa Son\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	-- closefile(hoason1)
	 KickOutSelf()
end 



function vep() 
Msg2Player("Ng�i y�n, ch�ng ta �i Hoa S�n ph�i")
end 

function no() 
end 



function chuyenphaikhac()
	local bFlag			= GetTask(TSK_TOUSHI_FLAG);				-- ���תͶʦ�ŵı��
	local nMyFacNumb	= GetLastFactionNumber();				-- ���ԭ����ID
	local nSex			= GetSex();								-- ��ɫ�Ա�
	local nLastChange   = GetTask(TSK_LAST_CHANGE_FACTION)      -- �ϴ�תͶʦ�ű��
	local nCurTime      = tonumber( GetCurServerTime() );
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Mu�n chuy�n m�n ph�i c�n c�i b� h�t trang b� tr�n ng��i.",0);

		end
if GetLastFactionNumber() ~= 10 then
Say("Ch� c� ph�i hoa s�n m�i chuy�n sang ph�i kh�c ���c",0);
return
else
batdauhoasonok()
end
end




function batdauhoasonok()
	if GetLevel() < 200 then
		Talk(1, "", "C�p 200 tr� l�n m�i c� th� chuy�n sang ph�i kh�c.")
		return
	end
	SetFaction("emei")       			--��Ҽ�������
	SetCamp(1)
	SetCurCamp(1)
	SetSeries(2)
	SetLastFactionNumber(4)
	SetRank(63)
	--local i = HaveMagic(210)		-- �Ṧ�������
	local j = HaveMagic(400)		-- ���ٸ���ƶ���������
	local n = RollbackSkill()		-- ������ܲ��������м���?㣨�����Ṧ�����⼼�ܣ?
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		-- �������ж����ų���δѧ���Ṧ���˷���-1�Ӷ����µ�������������
	if (j ~= -1) then x = x + j end
	local rollback_point = n - x			-- �Ѽ��ܵ㵱�����е�������������?۳��Ṧ�?
	if (rollback_point + GetMagicPoint() < 0) then		-- ���ϴ���˸���������0��Ϊ�Ժ���ϴ�㱣?��?
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	--if (i ~= -1) then AddMagic(210, i) end			-- ���ѧ�u�Ṧ�?�ӻ�ԭ�еȼ�
	if (j ~= -1) then AddMagic(400, j) end			-- ���ѧ�u���ٸ��Aƶ��ͬ������
	Msg2Player("T�y t�y th�nh c�ng! Ng��i ca "..rollback_point.." �i�m k� n�ng �� ph�n ph�i l�i.")
		DelMagic(1347) --Skill Hoa son
		DelMagic(1349) --Skill Hoa son
		DelMagic(1374) --Skill Hoa son
		DelMagic(1350) --Skill Hoa son
		DelMagic(1375) --Skill Hoa son
		DelMagic(1351) --Skill Hoa son
		DelMagic(1354) --Skill Hoa son
		DelMagic(1378) --Skill Hoa son
		DelMagic(1355) --Skill Hoa son
		DelMagic(1379) --Skill Hoa son
		DelMagic(1358) --Skill Hoa son
		DelMagic(1360) --Skill Hoa son
		DelMagic(1365,20) --Skill Hoa son
	DelMagic(1368) --Skill Hoa son --------Doc Co Cuu Kiem
	DelMagic(1364) --Skill Hoa son --------Doc Co Cuu Kiem
   DelMagic(1369)
   DelMagic(210)
if GetLastFactionNumber() == 4 then
AddMagic(85)
AddMagic(80)
AddMagic(77)
AddMagic(79)
AddMagic(93)
AddMagic(385)
AddMagic(82)
AddMagic(89)
AddMagic(86)
AddMagic(92)
AddMagic(252)
AddMagic(88)
AddMagic(91)
AddMagic(282)
AddMagic(332)
AddMagic(328,20)
AddMagic(380,20)
AddMagic(712,20)
AddMagic(210, 1)
ChuyenPhaiMenu()
SaveNow()
end
end



