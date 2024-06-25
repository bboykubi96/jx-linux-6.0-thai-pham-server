Include("\\script\\lib\\progressbar.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

Include("\\script\\tong\\tong_header.lua"); --- check bang chu
IncludeLib("TONG") 

tbAwardItem  = {
		-- [1]	= {szName="ßi”m kinh nghi÷m",nExp=1000000,nRate=0,},
		-- [1] 	= {szName="Ng©n l≠Óng",nJxb = 100000,nRate=30,},		
		-- [1] 	= {szName="Ng©n l≠Óng",nJxb = 200000,nRate=20,},		
		-- [3] = {szName="Ti™n th∂o lÈ",tbProp={6,1,71,1,0,0},nRate=10,},
		-- [4]	= {szName="Qu’ hoa tˆu",tbProp={6,1,125,1,0,0},nRate=10,CallBack = _Message},
		-- [2]	= {szName="Thi™n s¨n  B∂o LÈ",tbProp={6,1,72,1,0,0},nRate=20,CallBack = _Message},
		-- [3]	= {szName="TËng Kim Phi TËc hoµn",tbProp={6,1,190,1,0,0},nRate=35,nCount=5,CallBack = _Message},
		[1]	= {szName="TrËng kh∂i hoµn",tbProp={6,1,4442,1,0,0},nRate=100,nCount=1,CallBack = _Message},
}
MAX_COUNT = 1

function _OnBreak()
	ForbidChangePK(0);
	-- SetPKFlag(0)
	Msg2Player("L y vÀt ph»m th t bπi")
end
 local _GetMaterial = function(nNpcIdx, dwNpcId)
		if (0 == GetFightState() or GetProtectTime() > 0 ) then--bo trung sinh khi nhat qua by Zhu
		Msg2Player("L y vÀt ph»m th t bπi")
		return
		end
        local szName, nTongId = GetTongName()
		ForbidChangePK(0);
		SetPKFlag(0)
		if nNpcIdx <= 0 or GetNpcId(nNpcIdx) ~= dwNpcId then
			return 0
		end
		 tbAwardTemplet:GiveAwardByList(%tbAwardItem, "npc_kylan")
		 local nCurrent = GetNpcParam(nNpcIdx,1)
		 if nCurrent+1 >= MAX_COUNT then
			DelNpc(nNpcIdx)
		end
		SetNpcParam(nNpcIdx,1,nCurrent+1)
		 -- AddLocalNews("Bang ChÒ <color=green>"..GetName().."<color> bang <color=yellow>"..szName.."<color> Æ∑ thu thÀp Æ≠Óc v´ sË ch©u b∏u  tı Hoa hÂng Æ…m m∏u")
end
function main()
	local szTongName, nTongId = GetTongName();
	if(nTongId == 0) then 
		Msg2Player("Kh´ng gia nhÀp bang hÈi , kh´ng th” tham gia hoπt ÆÈng."); 
		return 
	end 
	local nFigure = GetTongFigure();
	if (nFigure ~= 0) then
		Say("ThÀt Æ∏ng ti’c, chÿ c„ bang chÒ mÌi c„ th” tham gia hoπt ÆÈng.", 0)
		return 
	end

	if (0 == GetCamp()) then
		Msg2Player("Bπn ch≠a gia nhÀp m´n ph∏i, kh´ng th” l‹nh ngÈ.")
		return
	end
	if (0 == GetFightState() or GetProtectTime() > 0 ) then--bo trung sinh khi nhat qua by Zhu
		Msg2Player("kh´ng th” L y vÀt ph»m.")
		return
	end
	ForbidChangePK(1);
	SetFightState(1);
	SetPKFlag(1)
	local nNpcIdx = GetLastDiagNpc()
	local dwNpcId = GetNpcId(nNpcIdx)
	tbProgressBar:OpenByConfig(5, %_GetMaterial, {nNpcIdx, dwNpcId},%_OnBreak)
end