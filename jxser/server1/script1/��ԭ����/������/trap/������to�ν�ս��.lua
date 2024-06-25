--ÖĞÔ­±±Çø ÖìÏÉÕòtoËÎ½ğÕ½³¡
--TrapID£ºÖĞÔ­±±Çø 57
-- Update: Dan_Deng(2003-08-21) ½µµÍ³ö´åµÈ¼¶ÒªÇóÎª5¼¶
Include("\\script\\battles\\battlehead.lua")

function main(sel)
if GetTask(5859)==1 then
Say("§ang VËn Tiªu, Kh«ng ThÓ Vµo Thµnh")
SetPos(1624, 2976)
  Msg2SubWorld("<color=cyan>Bang Chñ <color=green>"..GetName().."<color=yellow> ch¬i ¨n gian cè g¾ng ®­a Tiªu vµo thµnh <color=green>Tiªu Bang héi<color=yellow> lËp tøc quay trë l¹i 203/186 Chu Tiªn TrÊn.!")
return 1
end
	if ( GetLevel() < 40 ) then
		Talk( 1, "", "ChiÕn tr­êng Tèng Kim gian khæ khèc liÖt, ng­¬i ch­a ®¹t ®Õn cÊp 40 h·y vÒ luyÖn thªm råi h·y tİnh." );
	elseif ( GetLevel() >= 40 and GetLevel() < 80 ) then
		NewWorld( 323, 1570, 3085);
		SetFightState(0);
		Msg2Player( "§Õn n¬i b¸o danh ChiÕn Tr­êng Tèng Kim S¬ CÊp" );
	elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
		NewWorld( 324, 1570, 3085);
		SetFightState(0);
		Msg2Player( "§Õn n¬i b¸o danh ChiÕn Tr­êng Tèng Kim Trung CÊp" );
	else
		NewWorld( 325, 1570, 3085);
		SetFightState(0);
		Msg2Player( "§Õn n¬i b¸o danh ChiÕn Tr­êng Tèng Kim Cao CÊp" );
	end
end
