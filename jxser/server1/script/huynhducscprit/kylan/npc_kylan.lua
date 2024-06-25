Include("\\script\\lib\\progressbar.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

Include("\\script\\tong\\tong_header.lua"); --- check bang chu
IncludeLib("TONG") 

tbAwardItem  = {
		-- [1]	= {szName="�i�m kinh nghi�m",nExp=1000000,nRate=0,},
		-- [1] 	= {szName="Ng�n l��ng",nJxb = 100000,nRate=30,},		
		-- [1] 	= {szName="Ng�n l��ng",nJxb = 200000,nRate=20,},		
		-- [3] = {szName="Ti�n th�o l�",tbProp={6,1,71,1,0,0},nRate=10,},
		-- [4]	= {szName="Qu� hoa t�u",tbProp={6,1,125,1,0,0},nRate=10,CallBack = _Message},
		-- [2]	= {szName="Thi�n s�n  B�o L�",tbProp={6,1,72,1,0,0},nRate=20,CallBack = _Message},
		-- [3]	= {szName="T�ng Kim Phi T�c ho�n",tbProp={6,1,190,1,0,0},nRate=35,nCount=5,CallBack = _Message},
		[1]	= {szName="Tr�ng kh�i ho�n",tbProp={6,1,4442,1,0,0},nRate=100,nCount=1,CallBack = _Message},
}
MAX_COUNT = 1

function _OnBreak()
	ForbidChangePK(0);
	-- SetPKFlag(0)
	Msg2Player("L�y v�t ph�m th�t b�i")
end
 local _GetMaterial = function(nNpcIdx, dwNpcId)
		if (0 == GetFightState() or GetProtectTime() > 0 ) then--bo trung sinh khi nhat qua by Zhu
		Msg2Player("L�y v�t ph�m th�t b�i")
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
		 -- AddLocalNews("Bang Ch� <color=green>"..GetName().."<color> bang <color=yellow>"..szName.."<color> �� thu th�p ���c v� s� ch�u b�u  t� Hoa h�ng ��m m�u")
end
function main()
	local szTongName, nTongId = GetTongName();
	if(nTongId == 0) then 
		Msg2Player("Kh�ng gia nh�p bang h�i , kh�ng th� tham gia ho�t ��ng."); 
		return 
	end 
	local nFigure = GetTongFigure();
	if (nFigure ~= 0) then
		Say("Th�t ��ng ti�c, ch� c� bang ch� m�i c� th� tham gia ho�t ��ng.", 0)
		return 
	end

	if (0 == GetCamp()) then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� l�nh ng�.")
		return
	end
	if (0 == GetFightState() or GetProtectTime() > 0 ) then--bo trung sinh khi nhat qua by Zhu
		Msg2Player("kh�ng th� L�y v�t ph�m.")
		return
	end
	ForbidChangePK(1);
	SetFightState(1);
	SetPKFlag(1)
	local nNpcIdx = GetLastDiagNpc()
	local dwNpcId = GetNpcId(nNpcIdx)
	tbProgressBar:OpenByConfig(5, %_GetMaterial, {nNpcIdx, dwNpcId},%_OnBreak)
end