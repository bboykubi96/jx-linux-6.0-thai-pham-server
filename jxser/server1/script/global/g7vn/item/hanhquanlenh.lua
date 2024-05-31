Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\battles\\vngbattlesign.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\titlefuncs.lua")

function main()
dofile("script/global/g7vn/item/hanhquanlenh.lua")
	local IDSKill={1660,1661,1664,1665}
	local skill=IDSKill[random(1,4)]
	if GetSkillState(1660)>=1 or GetSkillState(1661)>=1 or GetSkillState(1664)>=1 or GetSkillState(1665)>=1 then
		RemoveSkillState(1660,20,3,559872000,1) 
		RemoveSkillState(1661,20,3,559872000,1) 
		RemoveSkillState(1664,20,3,559872000,1) 
		RemoveSkillState(1665,20,3,559872000,1) 
	end
	PlayerFunLib:AddSkillState(skill,20,3,18*60*60*24*15,1)
	local tenskill=""
	if skill==1660 then
		tenskill="B∏ch Chi’n B∏ch Thæng"
	elseif skill==1661 then
	tenskill="Hoµng ßÂ Bang Hi÷p"
	elseif skill==1664 then
	tenskill="Vang Danh Giang HÂ"
	elseif skill==1665 then
	tenskill="V‚ L©m Minh ChÒ"
	end
	Msg2Player("Bπn nhÀn Æ≠Óc danh hi÷u <color=yellow>"..tenskill.." +300SL +5% Kh∏ng 15 Ngµy") 
	Msg2SubWorld("<color=green>ßπi Hi÷p <color=yellow>"..GetName().."<color> Æ∑ nhÀn thµnh c´ng danh hi÷u <color=cyan>"..tenskill.."<color> tı <color=red>Hµnh Qu©n L÷nh<color>.")
end

