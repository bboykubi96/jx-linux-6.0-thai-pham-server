Include("\\script\\lib\\progressbar.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

Include("\\script\\tong\\tong_header.lua"); --- check bang chu
IncludeLib("TONG") 

-- EVENT_LOG_TITLE="Event Mıng ngµy l‘ t◊nh nh©n 14/2"
 -- _Message = function (nItemIdx)
	-- local strItemName = GetItemName(nItemIdx)
	-- local strMessage = format("<color=green>ChÛc mıng <color=yellow>%s<color=green> Æ∑ nhÀn Æ≠Óc vÀt ph»m <color=yellow>%s<color=green> tı hoπt ÆÈng Event Mıng ngµy l‘ t◊nh nh©n 14/2", GetName(), strItemName)
	-- local handle = OB_Create();
	-- ObjBuffer:PushObject(handle, strMessage)
	-- RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	-- OB_Release(handle)
-- end

tbAwardItem  = {
	[1] = {szName="Ti“n ÆÂng",tbProp={4,417,1,1,0,0},nRate=30,nCount=20,CallBack = _Message},
	[2] = {szName="Ti“n ÆÂng 1",tbProp={4,417,1,1,0,0},nRate=30,nCount=50,CallBack = _Message},
	[3] = {szName="Voucher liveshow Tu n Quang",tbProp={6,1,4485,1,0,0},nRate=40,nCount=2,CallBack = _Message},
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
		 tbAwardTemplet:GiveAwardByList(%tbAwardItem, "Nh∆t NPC §ng giµ tuy’t")
		 local nCurrent = GetNpcParam(nNpcIdx,1)
		 if nCurrent+1 >= MAX_COUNT then
			DelNpc(nNpcIdx)
		end
		SetNpcParam(nNpcIdx,1,nCurrent+1)
		 -- AddLocalNews("Bang ChÒ <color=green>"..GetName().."<color> bang <color=yellow>"..szName.."<color> Æ∑ thu thÀp Æ≠Óc v´ sË ch©u b∏u  tı Hoa hÂng Æ…m m∏u")
end
function main()
	-- local szTongName, nTongId = GetTongName();
	-- if(nTongId == 0) then 
		-- Msg2Player("Kh´ng gia nhÀp bang hÈi , kh´ng th” tham gia hoπt ÆÈng."); 
		-- return 
	-- end 
	-- local nFigure = GetTongFigure();
	-- if (nFigure ~= 0) then
		-- Say("ThÀt Æ∏ng ti’c, chÿ c„ bang chÒ mÌi c„ th” tham gia hoπt ÆÈng.", 0)
		-- return 
	-- end

	if (0 == GetCamp()) then
		Msg2Player("Bπn ch≠a gia nhÀp m´n ph∏i, kh´ng th” l‹nh ngÈ.")
		return
	end
	if (0 == GetFightState() or GetProtectTime() > 0 ) then--bo trung sinh khi nhat qua by Zhu
		Msg2Player("Trπng th∏i phi chi’n Æ u kh´ng th” l y vÀt ph»m.")
		return
	end
	ForbidChangePK(1);
	SetFightState(1);
	SetPKFlag(1)
	local nNpcIdx = GetLastDiagNpc()
	local dwNpcId = GetNpcId(nNpcIdx)
	tbProgressBar:OpenByConfig(5, %_GetMaterial, {nNpcIdx, dwNpcId},%_OnBreak)
end