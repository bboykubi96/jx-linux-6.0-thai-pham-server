Include("\\script\\event\\qingren_jieri\\200902\\event.lua");

function main() 

valentine2009_resetEdition(); 

local nNpcIdx = GetLastDiagNpc(); 
local nWater = GetNpcParam(nNpcIdx, VALENTINE2009_NPC_HAS_WATER); 
local nStep = GetNpcParam(nNpcIdx, VALENTINE2009_NPC_STEP); 

-- script viet hoa By http://tranhba.com  t��i n��c 
if nStep == VALENTINE2009_NPC_STEP_WATER_START and nWater == 0 and valentine2009_isTheGilr(nNpcIdx) == 1 then 
valentine2009_WaterTree(nNpcIdx); 
return 
end 

-- script viet hoa By http://tranhba.com  d�n t��ng 
if nStep == VALENTINE2009_NPC_STEP_D then 
valentine2009_AcceptAward(nNpcIdx); 
return 
end 

end 

-- script viet hoa By http://tranhba.com  ��nh l�c kh� 
function OnTimer(nNpcIdx, nTimeOut) 

if nTimeOut == nil or nTimeOut > 0 then 
DelNpc(nNpcIdx) 
return 0; 
end 

local nStep = GetNpcParam(nNpcIdx, VALENTINE2009_NPC_STEP); 

-- script viet hoa By http://tranhba.com  h�nh th�i A -- script viet hoa By http://tranhba.com > h�nh th�i B 
if nStep == VALENTINE2009_NPC_STEP_A then 
local nNewNpcIdx = valentine2009_Trans(nNpcIdx, 2); 
SetNpcTimer(nNewNpcIdx, VALENTINE2009_TIME_WATER_START - VALENTINE2009_TIME_GROW_B); 
return 
end 

-- script viet hoa By http://tranhba.com  h�nh th�i B -- script viet hoa By http://tranhba.com > b�t ��u t��i n��c 
if nStep == VALENTINE2009_NPC_STEP_B then 
		SetNpcParam(nNpcIdx, VALENTINE2009_NPC_STEP, nStep + 1);
SetNpcTimer(nNpcIdx, VALENTINE2009_TIME_WATER_END - VALENTINE2009_TIME_WATER_START); 
AddNpcSkillState(nNpcIdx, 662,1, 1, VALENTINE2009_TIME_WATER_END - VALENTINE2009_TIME_WATER_START); -- script viet hoa By http://tranhba.com  xu�t hi�n nhi�m v� c�m th�n s� 
return 
end 

-- script viet hoa By http://tranhba.com  b�t ��u t��i n��c -- script viet hoa By http://tranhba.com > k�t th�c t��i n��c 
if nStep == VALENTINE2009_NPC_STEP_WATER_START then 

AddNpcSkillState(nNpcIdx, 662,1, 1, 0); -- script viet hoa By http://tranhba.com  k�t th�c nhi�m v� c�m th�n s� 

if GetNpcParam(nNpcIdx, VALENTINE2009_NPC_HAS_WATER) ~= 1 then 
DelNpc(nNpcIdx) 
return 0; 
end 

		SetNpcParam(nNpcIdx, VALENTINE2009_NPC_STEP, nStep + 1);
SetNpcTimer(nNpcIdx, VALENTINE2009_TIME_GROW_C - VALENTINE2009_TIME_WATER_END); 
return 
end 

-- script viet hoa By http://tranhba.com  k�t th�c t��i n��c -- script viet hoa By http://tranhba.com > h�nh th�i C 
if nStep == VALENTINE2009_NPC_STEP_WATER_END then 
local nNewNpcIdx = valentine2009_Trans(nNpcIdx, 3); 
SetNpcTimer(nNewNpcIdx, VALENTINE2009_TIME_GROW_D - VALENTINE2009_TIME_GROW_C); 
return 
end 

-- script viet hoa By http://tranhba.com  h�nh th�i C -- script viet hoa By http://tranhba.com > h�nh th�i D 
if nStep == VALENTINE2009_NPC_STEP_C then 
local nNewNpcIdx = valentine2009_Trans(nNpcIdx, 4); 
SetNpcTimer(nNewNpcIdx, VALENTINE2009_TIME_DISAPPEAR - VALENTINE2009_TIME_GROW_D); 
AddNpcSkillState(nNewNpcIdx, 662,1, 1, VALENTINE2009_TIME_DISAPPEAR - VALENTINE2009_TIME_GROW_D); -- script viet hoa By http://tranhba.com  xu�t hi�n nhi�m v� c�m th�n s� 
return 
end 

-- script viet hoa By http://tranhba.com  h�nh th�i D -- script viet hoa By http://tranhba.com > t� vong 
if nStep == VALENTINE2009_NPC_STEP_D then 
AddNpcSkillState(nNpcIdx, 662,1, 1, 0); -- script viet hoa By http://tranhba.com  k�t th�c nhi�m v� c�m th�n s� 
DelNpc(nNpcIdx) 
return 
end 

end 

-- script viet hoa By http://tranhba.com  bi�n th�n 
function valentine2009_Trans(nNpcIdx, nForm) 

local nx, ny = GetNpcPos (nNpcIdx); 
local szname = GetNpcName (nNpcIdx); 
local nboy = GetNpcParam(nNpcIdx, VALENTINE2009_NPC_NAME_BOY); 
local nboy2 = GetNpcParam(nNpcIdx, VALENTINE2009_NPC_NAME_BOY2); 
local ngirl = GetNpcParam(nNpcIdx, VALENTINE2009_NPC_NAME_GIRL); 
local ngirl2 = GetNpcParam(nNpcIdx, VALENTINE2009_NPC_NAME_GIRL2); 
local nWater = GetNpcParam(nNpcIdx, VALENTINE2009_NPC_HAS_WATER); 
	local nStep  = GetNpcParam(nNpcIdx, VALENTINE2009_NPC_STEP) + 1;

DelNpc(nNpcIdx); 
local nNewNpcIdx = AddNpc(VALENTINE2009_NPC_ID[nForm], 1, SubWorld, nx, ny, 1, szname); 

SetNpcParam (nNewNpcIdx, VALENTINE2009_NPC_NAME_BOY, nboy); 
SetNpcParam (nNewNpcIdx, VALENTINE2009_NPC_NAME_BOY2, nboy2); 
SetNpcParam (nNewNpcIdx, VALENTINE2009_NPC_NAME_GIRL, ngirl); 
SetNpcParam (nNewNpcIdx, VALENTINE2009_NPC_NAME_GIRL2, ngirl2); 
SetNpcParam (nNewNpcIdx, VALENTINE2009_NPC_HAS_WATER, nWater); 
SetNpcParam (nNewNpcIdx, VALENTINE2009_NPC_STEP, nStep); 
	SetNpcScript(nNewNpcIdx, "\\script\\item\\qingren_jieri\\200902\\tree.lua");

return nNewNpcIdx; 

end 

-- script viet hoa By http://tranhba.com  c� ph�i l� hay kh�ng th� ra l� c�i �� nam h�i 
function valentine2009_isTheBoy(nNpcIdx) 

	local nboy = GetNpcParam(nNpcIdx, VALENTINE2009_NPC_NAME_BOY) * 100000 + GetNpcParam(nNpcIdx, VALENTINE2009_NPC_NAME_BOY2);

-- script viet hoa By http://tranhba.com  if (nboy < 0) then 
-- script viet hoa By http://tranhba.com 		nboy = nboy + 4294967296;	-- script viet hoa By http://tranhba.com  id+2^32
-- script viet hoa By http://tranhba.com  end; 
nboy = tonumber(format("%u", nboy)); 

if nboy == String2Id(GetName()) then 
return 1; 
else 
return 0; 
end 

end 

-- script viet hoa By http://tranhba.com  c� ph�i l� hay kh�ng th� ra l� c� g�i kia 
function valentine2009_isTheGilr(nNpcIdx) 

	local ngirl = GetNpcParam(nNpcIdx, VALENTINE2009_NPC_NAME_GIRL) * 100000 + GetNpcParam(nNpcIdx, VALENTINE2009_NPC_NAME_GIRL2);

-- script viet hoa By http://tranhba.com  if (ngirl < 0) then 
-- script viet hoa By http://tranhba.com 		ngirl = ngirl + 4294967296;	-- script viet hoa By http://tranhba.com  id+2^32
-- script viet hoa By http://tranhba.com  end; 
ngirl = tonumber(format("%u", ngirl)); 

if ngirl == String2Id(GetName()) then 
return 1; 
else 
return 0; 
end 

end 

-- script viet hoa By http://tranhba.com  t��i n��c nhi�m v� 
function valentine2009_WaterTree(nNpcIdx) 

-- script viet hoa By http://tranhba.com  tr�n ng��i kh�ng c� n��c 
local nCount = CalcItemCount(3,VALENTINE2009_ITEM_TIANXIAN[1], VALENTINE2009_ITEM_TIANXIAN[2], VALENTINE2009_ITEM_TIANXIAN[3], -1); 
if nCount <= 0 then 
valentine2009_giveErrorMsg(VALENTINE2009_TALK_ERROR_NOWATER); 
return 
end 

-- script viet hoa By http://tranhba.com  c�p b�c kh�ng ph� h�p y�u c�u 
if GetLevel() < VALENTINE2009_LEVEL_LIMIT then 
valentine2009_giveErrorMsg(VALENTINE2009_TALK_ERROR_LEVEL); 
return 
end 

-- script viet hoa By http://tranhba.com  kh�ng c� tr� ti�n qu� 
if IsCharged() ~= 1 then 
valentine2009_giveErrorMsg(VALENTINE2009_TALK_ERROR_PAY); 
return 
end 

-- script viet hoa By http://tranhba.com  v��t qua ng�y �� s� d�ng t�ng s� 
local nUseNum = GetTask(VALENTINE2009_USE_NUM); 
if (nUseNum >= VALENTINE2009_MAX_USE_NUM) then 
valentine2009_giveErrorMsg(VALENTINE2009_TALK_ERROR_MAXUSE); 
return 
end 

-- script viet hoa By http://tranhba.com  kh�ng c� � ��y ho�t ��ng nh�t k� ( kh�u tr� n��c ) 
if valentine2009_isCarryon() ~= 1 then 
ConsumeItem(3, 1, VALENTINE2009_ITEM_TIANXIAN[1], VALENTINE2009_ITEM_TIANXIAN[2], VALENTINE2009_ITEM_TIANXIAN[3], -1); 
valentine2009_giveErrorMsg(VALENTINE2009_TALK_ERROR_ARID); 
return 
end 

-- script viet hoa By http://tranhba.com  cho n��c # kh�u tr� n��c # 
bPay = ConsumeItem(3, 1, VALENTINE2009_ITEM_TIANXIAN[1], VALENTINE2009_ITEM_TIANXIAN[2], VALENTINE2009_ITEM_TIANXIAN[3], -1); 

if bPay ~= 1 then 
return 
end 

	SetTask(VALENTINE2009_USE_NUM, nUseNum + 1);
SetNpcParam(nNpcIdx, VALENTINE2009_NPC_HAS_WATER, 1); -- script viet hoa By http://tranhba.com  �� t��i qu� n��c 
AddNpcSkillState(nNpcIdx, 662,1, 1, 0); -- script viet hoa By http://tranhba.com  k�t th�c nhi�m v� c�m th�n s� 
Msg2Player(VALENTINE2009_TALK_WATER); 
end 

-- script viet hoa By http://tranhba.com  d�n t��ng 
function valentine2009_AcceptAward(nNpcIdx) 

if valentine2009_isTheBoy(nNpcIdx) == 1 then 
SetNpcParam(nNpcIdx, VALENTINE2009_NPC_NAME_BOY, 0); 
SetNpcParam(nNpcIdx, VALENTINE2009_NPC_NAME_BOY2, 0); 
elseif valentine2009_isTheGilr(nNpcIdx) == 1 then 
SetNpcParam(nNpcIdx, VALENTINE2009_NPC_NAME_GIRL, 0); 
SetNpcParam(nNpcIdx, VALENTINE2009_NPC_NAME_GIRL2, 0); 
else 
return 
end 

local nHasExp = GetTask(VALENTINE2009_EXPERIENCE); 
if nHasExp >= VALENTINE2009_AWARD_EXP_LIMIT then 
return 
else 
		SetTask(VALENTINE2009_EXPERIENCE, nHasExp + VALENTINE2009_AWARD_EXP);
end 

local tb_Draw_Goods = 
{ 
{ 
{szName = VALENTINE2009_TALK_GOODS[3], tbProp=VALENTINE2009_ITEM_ROSE, nCount = VALENTINE2009_AWARD_ROSENUM, nExpiredTime = VALENTINE2009_ITEM_END}, 
}, 

{ 
{nExp = VALENTINE2009_AWARD_EXP}, 
} 
} 

tbAwardTemplet:GiveAwardByList(tb_Draw_Goods, "2009 valentine give reward"); 

end 
