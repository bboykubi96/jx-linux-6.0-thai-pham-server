--- �ua top by Nam Cung Nhat Thien---

Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\log.lua")
IncludeLib("SETTING")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\bonusvlmc\\fucmain.lua")
Include( "\\script\\global\\fuyuan.lua" )
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua") 
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\event\\mid_autumn\\autumn_portal.lua")
Include("\\script\\event\\tongwar\\head.lua")
Include("\\script\\task\\system\\task_string.lua")
Include([[\script\missions\chrismas\ch_head.lua]]);--
Include([[\script\event\springfestival07\head.lua]]);
Include( "\\script\\event\\wulinling\\wulinling.lua" )
Include( "\\script\\event\\nanfangjiefangri\\event.lua" )
Include("\\script\\event\\tongwar\\head.lua");
Include("\\script\\vng_event\\vip_account_2011\\npc\\volamtruyennhan.lua")
Include("\\script\\global\\namcung\\hotrotanthu\\duatop.lua")
Include("\\script\\global\\·��_�����˴���.lua")
function main()
		dofile("script/global/namcung/tanthulenh.lua");	
local szTitle =  "<npc>Ch�o m�ng b�n ��n v�i th� gi�i<color=red> V� L�m Truy�n K� <color>.<enter>Hoan ngh�nh c�c anh h�ng h�o ki�t �� ��n v�i <color=green>M�y Ch� - Thi�n Long<color>...<enter>B�n trang mu�n mang ��n cho c�c b�n m�t s�n ch�i l�nh m�nh v� �n ��nh l�u d�i...!"
		local tbOpt =
	{
		--{"Nh�n l� bao T�n th�", lebao},
		{"Nh�n l�i k� n�ng h� tr� t�n th�", hotrotanthu},	
		--{"Nh�n th��ng theo c�p ��", top10all},
		--{"Nh�n th��ng t�ch luy gi� choi Online",tichluy},
		--{"L�m nhi�m v� m�i ng�y", nhiemvu},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function lebao()
dofile("script/global/namcung/tanthulenh.lua");	
		if GetTask(3010) == 1 then
			Talk(1, "", "Ng��i �� nh�n ph�n th��ng n�y r�i c� m� !");
			return
		end
		local tbAwardItem = {szName = "L� Bao T�n Th�", tbProp = {6, 1, 4258, 1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Nh�n ���c 1 l� bao t�n th�!");
		SetTask(3010,1)
end
function top10all()
	duatop()
end

function tichluy()
local szTitle =  "<npc>Ch�o m�ng b�n ��n v�i th� gi�i<color=red> V� L�m Truy�n K� <color>.<enter>Hoan ngh�nh c�c anh h�ng h�o ki�t �� ��n v�i <color=green>V� L�m Truy�n K�<color>...<enter>B�n trang mu�n mang ��n cho c�c b�n m�t s�n ch�i l�nh m�nh v� �n ��nh l�u d�i...!<enter>M�i chi ti�t th�c m�c xin c�c nh�n s� ��ng g�p t�i <color=red>https://www.facebook.com/groups/jxdocs<color>.<enter>Ch�c c�c nh�n s� b�n t�u giang h� vui v� t�i <color=green>K� �c V� L�m<color>. Xin ch�n th�nh c�m �n qu� nh�n s�... !"
		local tbOpt =
	{
		{"Nh�n th��ng ph�c duy�n", phucduyen},	
		{"Nh�n  th��ng danh v�ng", danhvong},
		{"Nh�n th��ng ti�n th�o l�",tienthaolo},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)					
end

function phucduyen()
OnGain_Self()	
end
function danhvong()
W33_prise()		
end
function tienthaolo()
if (GetGameTime()  >= 7200) then

		local tbAwardItem ={szName = "Ti�n th�o l�", tbProp = {6, 1, 71, 1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Ti�n th�o l�");

else

	Say("�i�u ki�n c�a ng��i hi�n nay kh�ng �� �� nh�n Ti�n th�o l�. H�y luy�n t�p th�m !",0)

end

end

function nhiemvu()
VLMC_main()		
end	

function hotrotanthu()
	if GetLevel()<79 then
		AddSkillState(531,10,1,60*60*24)	--Ng�i sao
		AddSkillState(461,1, 1,60*60*24)
		AddSkillState(314,50,1,60*60*24)
		AddSkillState(512,20,1,60*60*24)
		AddSkillState(527,5,1,60*60*24)
		AddSkillState(313,5,1,60*60*24)  	--Vong duoi chan
		AddSkillState(314,50,1,60*60*24)	 --Vong duoi chan
		AddSkillState(546,1,1,60*60*24)		 --Rong bay
		Talk(1, "", "B�n s� ���c nh�n h� tr� k� n�ng n�y ��n c�p 79");
		Msg2Player( "Nh�p m� <color=yellow>VOLAM1<color> �� ���c t�ng th��ng nh�" );
		tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n th��ng t�n th�");
	end
end