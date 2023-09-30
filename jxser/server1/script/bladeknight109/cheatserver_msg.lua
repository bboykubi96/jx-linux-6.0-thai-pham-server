TIME_EXECUTE_FUNCTION = 3
BANNED_TIME_EXECUTE_FUNCTION = 3

function HardwareIDIsInBlackList(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "M� ph�n c�ng c�a b�n n�m trong danh s�ch �en. Ti�n h�nh ng�t k�t n�i sau "..TIME_EXECUTE_FUNCTION.." gi�y")
	SetScriptTimer(TIME_EXECUTE_FUNCTION)
end

function IpAddressIsInBlackList(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "��a ch� IP <color=green>"..GetCurrentIpAddress().."<color> c�a b�n n�m trong danh s�ch �en. Ti�n h�nh ng�t k�t n�i sau "..TIME_EXECUTE_FUNCTION.." gi�y")
	SetScriptTimer(TIME_EXECUTE_FUNCTION)
end

function MacAddressIsInBlackList(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "��a ch� Mac <color=green>"..GetMacAddress().."<color> c�a b�n n�m trong danh s�ch �en. Ti�n h�nh ng�t k�t n�i sau "..TIME_EXECUTE_FUNCTION.." gi�y")
	SetScriptTimer(TIME_EXECUTE_FUNCTION)
end

function AccountIsInBlackList(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "T�i kho�n c�a b�n n�m trong danh s�ch �en. Ti�n h�nh ng�t k�t n�i sau "..TIME_EXECUTE_FUNCTION.." gi�y")
	SetScriptTimer(TIME_EXECUTE_FUNCTION)
end

function CharacterIsInBlackList(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "Nh�n v�t c�a b�n n�m trong danh s�ch �en. Ti�n h�nh ng�t k�t n�i sau "..TIME_EXECUTE_FUNCTION.." gi�y")
	SetScriptTimer(TIME_EXECUTE_FUNCTION)
end

function LimitIPConnection(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "��a ch� IP <color=green>"..GetCurrentIpAddress().."<color> c�a b�n �� v��t qu� s� l��ng k�t n�i cho ph�p. Ti�n h�nh ng�t k�t n�i sau "..TIME_EXECUTE_FUNCTION.." gi�y")
	SetScriptTimer(TIME_EXECUTE_FUNCTION)
end

function LimitHardwareIDConnection(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "M� ph�n c�ng c�a b�n �� v��t qu� s� l��ng k�t n�i cho ph�p. Ti�n h�nh ng�t k�t n�i sau "..TIME_EXECUTE_FUNCTION.." gi�y")
	SetScriptTimer(TIME_EXECUTE_FUNCTION)
end

function LimitFactionConnection(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "��a ch� IP <color=green>"..GetCurrentIpAddress().."<color> c�a b�n �� v��t qu� s� l��ng m�n ph�i cho ph�p. Ti�n h�nh ng�t k�t n�i sau "..TIME_EXECUTE_FUNCTION.." gi�y")
	SetScriptTimer(TIME_EXECUTE_FUNCTION)
end

function LimitFactionPerHWID(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "M� ph�n c�ng c�a b�n �� v��t qu� s� l��ng m�n ph�i cho ph�p. Ti�n h�nh ng�t k�t n�i sau "..TIME_EXECUTE_FUNCTION.." gi�y")
	SetScriptTimer(TIME_EXECUTE_FUNCTION)
end

function BannedIpAddress(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "��a ch� IP <color=green>"..GetCurrentIpAddress().."<color> c�a b�n �� b� kh�a. Ti�n h�nh ng�t k�t n�i sau "..BANNED_TIME_EXECUTE_FUNCTION.." gi�y")
	SetScriptTimer(BANNED_TIME_EXECUTE_FUNCTION)
end

function BannedHardwareID(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "M� ph�n c�ng c�a b�n �� b� kh�a. Ti�n h�nh ng�t k�t n�i sau "..BANNED_TIME_EXECUTE_FUNCTION.." gi�y")
	SetScriptTimer(BANNED_TIME_EXECUTE_FUNCTION)
end

function BannedMacAddress(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "��a ch� Mac <color=green>"..GetMacAddress().."<color> c�a b�n �� b� kh�a. Ti�n h�nh ng�t k�t n�i sau "..BANNED_TIME_EXECUTE_FUNCTION.." gi�y")
	SetScriptTimer(BANNED_TIME_EXECUTE_FUNCTION)
end

function BannedAccount(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "T�i kho�n c�a b�n �� b� kh�a. Ti�n h�nh ng�t k�t n�i sau "..BANNED_TIME_EXECUTE_FUNCTION.." gi�y")
	SetScriptTimer(BANNED_TIME_EXECUTE_FUNCTION)
end

function BannedCharacter(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "Nh�n v�t c�a b�n �� b� kh�a. Ti�n h�nh ng�t k�t n�i sau "..BANNED_TIME_EXECUTE_FUNCTION.." gi�y")
	SetScriptTimer(BANNED_TIME_EXECUTE_FUNCTION)
end

function SetScriptTimer(nTime)
	SetPlayerTimer(nTime * 18)
end

function OnTimer()
	CloseGame()
end

function CloseGame()
	-- print("[CloseGame] "..GetPlayerName())
	ExitGame()
end