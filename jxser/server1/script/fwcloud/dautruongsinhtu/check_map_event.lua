Include("\\script\\maps\\newworldscript_default.lua")

IncludeLib("TONG")
tbClass = {
nCount = 10,
tbTong = {},
}

function tbClass:Init()
	local nTongID = TONG_GetFirstTong()
	local szTong 
	while (nTongID > 0) do
		local szTong = TONG_GetName(nTongID)
		-- nTongID = TONG_GetNextTong(nTongID)
		if not self.tbTong[szTong] then
			self.tbTong[szTong] = self.nCount
		end
		self.nCount = self.nCount + 1
		nTongID = TONG_GetNextTong(nTongID)
	end	
end
tbClass:Init()
function tbClass:GetTongCamp(szTong)
	local nCamp = self.tbTong[szTong]
	if not nCamp then
		self.tbTong[szTong] = self.nCount
		nCamp = self.nCount
		self.nCount = self.nCount + 1
	end
	return nCamp
end

function OnNewWorld(szParam)
	SetPKFlag(1)	-- chuyen pk chien dau
	ForbidChangePK(1);	-- khong duoc doi pk

	local nCamp = GetCamp();
	local szTong = GetTong()
	if not szTong or  szTong == "" then
		SetCreateTeam(0);
		SetCurCamp(4);
	else
		SetTmpCamp(tbClass:GetTongCamp(szTong))
		SetCreateTeam(0);
	end
	OnNewWorldDefault(szParam)
end
