TIME_EXECUTE_FUNCTION = 3
BANNED_TIME_EXECUTE_FUNCTION = 3

function HardwareIDIsInBlackList(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "M∑ ph«n c¯ng cÒa bπn nªm trong danh s∏ch Æen. Ti’n hµnh ngæt k’t nËi sau "..TIME_EXECUTE_FUNCTION.." gi©y")
	SetScriptTimer(TIME_EXECUTE_FUNCTION)
end

function IpAddressIsInBlackList(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "ßﬁa chÿ IP <color=green>"..GetCurrentIpAddress().."<color> cÒa bπn nªm trong danh s∏ch Æen. Ti’n hµnh ngæt k’t nËi sau "..TIME_EXECUTE_FUNCTION.." gi©y")
	SetScriptTimer(TIME_EXECUTE_FUNCTION)
end

function MacAddressIsInBlackList(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "ßﬁa chÿ Mac <color=green>"..GetMacAddress().."<color> cÒa bπn nªm trong danh s∏ch Æen. Ti’n hµnh ngæt k’t nËi sau "..TIME_EXECUTE_FUNCTION.." gi©y")
	SetScriptTimer(TIME_EXECUTE_FUNCTION)
end

function AccountIsInBlackList(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "Tµi kho∂n cÒa bπn nªm trong danh s∏ch Æen. Ti’n hµnh ngæt k’t nËi sau "..TIME_EXECUTE_FUNCTION.." gi©y")
	SetScriptTimer(TIME_EXECUTE_FUNCTION)
end

function CharacterIsInBlackList(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "Nh©n vÀt cÒa bπn nªm trong danh s∏ch Æen. Ti’n hµnh ngæt k’t nËi sau "..TIME_EXECUTE_FUNCTION.." gi©y")
	SetScriptTimer(TIME_EXECUTE_FUNCTION)
end

function LimitIPConnection(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "ßﬁa chÿ IP <color=green>"..GetCurrentIpAddress().."<color> cÒa bπn Æ∑ v≠Ót qu∏ sË l≠Óng k’t nËi cho ph–p. Ti’n hµnh ngæt k’t nËi sau "..TIME_EXECUTE_FUNCTION.." gi©y")
	SetScriptTimer(TIME_EXECUTE_FUNCTION)
end

function LimitHardwareIDConnection(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "M∑ ph«n c¯ng cÒa bπn Æ∑ v≠Ót qu∏ sË l≠Óng k’t nËi cho ph–p. Ti’n hµnh ngæt k’t nËi sau "..TIME_EXECUTE_FUNCTION.." gi©y")
	SetScriptTimer(TIME_EXECUTE_FUNCTION)
end

function LimitFactionConnection(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "ßﬁa chÿ IP <color=green>"..GetCurrentIpAddress().."<color> cÒa bπn Æ∑ v≠Ót qu∏ sË l≠Óng m´n ph∏i cho ph–p. Ti’n hµnh ngæt k’t nËi sau "..TIME_EXECUTE_FUNCTION.." gi©y")
	SetScriptTimer(TIME_EXECUTE_FUNCTION)
end

function LimitFactionPerHWID(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "M∑ ph«n c¯ng cÒa bπn Æ∑ v≠Ót qu∏ sË l≠Óng m´n ph∏i cho ph–p. Ti’n hµnh ngæt k’t nËi sau "..TIME_EXECUTE_FUNCTION.." gi©y")
	SetScriptTimer(TIME_EXECUTE_FUNCTION)
end

function BannedIpAddress(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "ßﬁa chÿ IP <color=green>"..GetCurrentIpAddress().."<color> cÒa bπn Æ∑ bﬁ kh„a. Ti’n hµnh ngæt k’t nËi sau "..BANNED_TIME_EXECUTE_FUNCTION.." gi©y")
	SetScriptTimer(BANNED_TIME_EXECUTE_FUNCTION)
end

function BannedHardwareID(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "M∑ ph«n c¯ng cÒa bπn Æ∑ bﬁ kh„a. Ti’n hµnh ngæt k’t nËi sau "..BANNED_TIME_EXECUTE_FUNCTION.." gi©y")
	SetScriptTimer(BANNED_TIME_EXECUTE_FUNCTION)
end

function BannedMacAddress(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "ßﬁa chÿ Mac <color=green>"..GetMacAddress().."<color> cÒa bπn Æ∑ bﬁ kh„a. Ti’n hµnh ngæt k’t nËi sau "..BANNED_TIME_EXECUTE_FUNCTION.." gi©y")
	SetScriptTimer(BANNED_TIME_EXECUTE_FUNCTION)
end

function BannedAccount(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "Tµi kho∂n cÒa bπn Æ∑ bﬁ kh„a. Ti’n hµnh ngæt k’t nËi sau "..BANNED_TIME_EXECUTE_FUNCTION.." gi©y")
	SetScriptTimer(BANNED_TIME_EXECUTE_FUNCTION)
end

function BannedCharacter(nPlayerIndex)
	-- dofile("script/cheatsever_msg.lua")
	Talk(1, "CloseGame", "Nh©n vÀt cÒa bπn Æ∑ bﬁ kh„a. Ti’n hµnh ngæt k’t nËi sau "..BANNED_TIME_EXECUTE_FUNCTION.." gi©y")
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