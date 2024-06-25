IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
---------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N˜ Hi÷p";
	else
		return "ßπi Hi÷p";
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SKILL_180 = {1220,1221,1223,1222,1224,1225,1227,1226,1228,1229,1370}
SkillLevelExp = 1887; KyNangThatTruyen = 1882; tbSkillExp = 1000
nExplv1 = 1000;	 nExplv2 = 2000;	 nExplv3 = 3000;	 nExplv4 = 5000;	 nExplv5 = 7000;	 nExplv6 = 10000;	 nExplv7 = 15000;	 nExplv8 = 20000;	 nExplv9 = 30000;	 nExplv10 = 50000;
nExplv11 = 70000;	 nExplv12 = 100000;	 nExplv13 = 150000;	 nExplv14 = 200000;	 nExplv15 = 300000;	 nExplv16 = 500000;	 nExplv17 = 700000; nExplv18 = 1000000;	 nExplv19 = 2000000;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function main()
	local nFaction = GetLastFactionNumber() + 1
	if nFaction == 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch≠a Gia NhÀp M´n Ph∏i Kh´ng Th” Sˆ DÙng MÀt Tﬁch Th t Truy“n")
		return 1;
	else
		for i = 1,11 do
			if (nFaction == i) then
				if (HaveMagic(SKILL_180[i]) == -1) then
					Talk(1,"","<color=green>"..myplayersex().." Ch≠a H‰c K¸ N®ng Th t Truy“n<color> <color=yellow>"..GetSkillName(SKILL_180[i]), 0) return 1
				elseif (HaveMagic(SKILL_180[i]) == 1) then
					if (GetTask(SkillLevelExp) < nExplv1) then
						SetTask(SkillLevelExp,GetTask(SkillLevelExp)+tbSkillExp)
						Msg2Player("ChÛc Mıng "..myplayersex().." ß∑ NhÀn ß≠Óc <color=yellow>"..tbSkillExp.."<color> ßi”m Tu Luy÷n K¸ N®ng Th t Truy“n <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
					else
						AddMagic(SKILL_180[i],2); SetTask(KyNangThatTruyen,2); SetTask(SkillLevelExp,0) Talk(1,"","ChÛc Mıng "..myplayersex().." ß∑ N©ng C p K¸ N®ng Th t Truy“n ßπt ß’n C p 2") return 1
					end
				elseif (HaveMagic(SKILL_180[i]) == 2) then
					if (GetTask(SkillLevelExp) < nExplv2) then
						SetTask(SkillLevelExp,GetTask(SkillLevelExp)+tbSkillExp)
						Msg2Player("ChÛc Mıng "..myplayersex().." ß∑ NhÀn ß≠Óc <color=yellow>"..tbSkillExp.."<color> ßi”m Tu Luy÷n K¸ N®ng Th t Truy“n <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
					else
						AddMagic(SKILL_180[i],3); SetTask(KyNangThatTruyen,3); SetTask(SkillLevelExp,0) Talk(1,"","ChÛc Mıng "..myplayersex().." ß∑ N©ng C p K¸ N®ng Th t Truy“n ßπt ß’n C p 3") return 1
					end
				elseif (HaveMagic(SKILL_180[i]) == 3) then
					if (GetTask(SkillLevelExp) < nExplv3) then
						SetTask(SkillLevelExp,GetTask(SkillLevelExp)+tbSkillExp)
						Msg2Player("ChÛc Mıng "..myplayersex().." ß∑ NhÀn ß≠Óc <color=yellow>"..tbSkillExp.."<color> ßi”m Tu Luy÷n K¸ N®ng Th t Truy“n <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
					else
						AddMagic(SKILL_180[i],4); SetTask(KyNangThatTruyen,4); SetTask(SkillLevelExp,0) Talk(1,"","ChÛc Mıng "..myplayersex().." ß∑ N©ng C p K¸ N®ng Th t Truy“n ßπt ß’n C p 4") return 1
					end
				elseif (HaveMagic(SKILL_180[i]) == 4) then
					if (GetTask(SkillLevelExp) < nExplv4) then
						SetTask(SkillLevelExp,GetTask(SkillLevelExp)+tbSkillExp)
						Msg2Player("ChÛc Mıng "..myplayersex().." ß∑ NhÀn ß≠Óc <color=yellow>"..tbSkillExp.."<color> ßi”m Tu Luy÷n K¸ N®ng Th t Truy“n <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
					else
						AddMagic(SKILL_180[i],5); SetTask(KyNangThatTruyen,5); SetTask(SkillLevelExp,0) Talk(1,"","ChÛc Mıng "..myplayersex().." ß∑ N©ng C p K¸ N®ng Th t Truy“n ßπt ß’n C p 5") return 1
					end
				elseif (HaveMagic(SKILL_180[i]) == 5) then
					if (GetTask(SkillLevelExp) < nExplv5) then
						SetTask(SkillLevelExp,GetTask(SkillLevelExp)+tbSkillExp)
						Msg2Player("ChÛc Mıng "..myplayersex().." ß∑ NhÀn ß≠Óc <color=yellow>"..tbSkillExp.."<color> ßi”m Tu Luy÷n K¸ N®ng Th t Truy“n <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
					else
						AddMagic(SKILL_180[i],6); SetTask(KyNangThatTruyen,6); SetTask(SkillLevelExp,0) Talk(1,"","ChÛc Mıng "..myplayersex().." ß∑ N©ng C p K¸ N®ng Th t Truy“n ßπt ß’n C p 6") return 1
					end
				elseif (HaveMagic(SKILL_180[i]) == 6) then
					if (GetTask(SkillLevelExp) < nExplv6) then
						SetTask(SkillLevelExp,GetTask(SkillLevelExp)+tbSkillExp)
						Msg2Player("ChÛc Mıng "..myplayersex().." ß∑ NhÀn ß≠Óc <color=yellow>"..tbSkillExp.."<color> ßi”m Tu Luy÷n K¸ N®ng Th t Truy“n <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
					else
						AddMagic(SKILL_180[i],7); SetTask(KyNangThatTruyen,7); SetTask(SkillLevelExp,0) Talk(1,"","ChÛc Mıng "..myplayersex().." ß∑ N©ng C p K¸ N®ng Th t Truy“n ßπt ß’n C p 7") return 1
					end
				elseif (HaveMagic(SKILL_180[i]) == 7) then
					if (GetTask(SkillLevelExp) < nExplv7) then
						SetTask(SkillLevelExp,GetTask(SkillLevelExp)+tbSkillExp)
						Msg2Player("ChÛc Mıng "..myplayersex().." ß∑ NhÀn ß≠Óc <color=yellow>"..tbSkillExp.."<color> ßi”m Tu Luy÷n K¸ N®ng Th t Truy“n <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
					else
						AddMagic(SKILL_180[i],8); SetTask(KyNangThatTruyen,8); SetTask(SkillLevelExp,0) Talk(1,"","ChÛc Mıng "..myplayersex().." ß∑ N©ng C p K¸ N®ng Th t Truy“n ßπt ß’n C p 8") return 1
					end
				elseif (HaveMagic(SKILL_180[i]) == 8) then
					if (GetTask(SkillLevelExp) < nExplv8) then
						SetTask(SkillLevelExp,GetTask(SkillLevelExp)+tbSkillExp)
						Msg2Player("ChÛc Mıng "..myplayersex().." ß∑ NhÀn ß≠Óc <color=yellow>"..tbSkillExp.."<color> ßi”m Tu Luy÷n K¸ N®ng Th t Truy“n <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
					else
						AddMagic(SKILL_180[i],9); SetTask(KyNangThatTruyen,9); SetTask(SkillLevelExp,0) Talk(1,"","ChÛc Mıng "..myplayersex().." ß∑ N©ng C p K¸ N®ng Th t Truy“n ßπt ß’n C p 9") return 1
					end
				elseif (HaveMagic(SKILL_180[i]) == 9) then
					if (GetTask(SkillLevelExp) < nExplv9) then
						SetTask(SkillLevelExp,GetTask(SkillLevelExp)+tbSkillExp)
						Msg2Player("ChÛc Mıng "..myplayersex().." ß∑ NhÀn ß≠Óc <color=yellow>"..tbSkillExp.."<color> ßi”m Tu Luy÷n K¸ N®ng Th t Truy“n <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
					else
						AddMagic(SKILL_180[i],10); SetTask(KyNangThatTruyen,10); SetTask(SkillLevelExp,0) Talk(1,"","ChÛc Mıng "..myplayersex().." ß∑ N©ng C p K¸ N®ng Th t Truy“n ßπt ß’n C p 10") return 1
					end
				elseif (HaveMagic(SKILL_180[i]) == 10) then
					if (GetTask(SkillLevelExp) < nExplv10) then
						SetTask(SkillLevelExp,GetTask(SkillLevelExp)+tbSkillExp)
						Msg2Player("ChÛc Mıng "..myplayersex().." ß∑ NhÀn ß≠Óc <color=yellow>"..tbSkillExp.."<color> ßi”m Tu Luy÷n K¸ N®ng Th t Truy“n <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
					else
						AddMagic(SKILL_180[i],11); SetTask(KyNangThatTruyen,11); SetTask(SkillLevelExp,0) Talk(1,"","ChÛc Mıng "..myplayersex().." ß∑ N©ng C p K¸ N®ng Th t Truy“n ßπt ß’n C p 11") return 1
					end
				elseif (HaveMagic(SKILL_180[i]) == 11) then
					if (GetTask(SkillLevelExp) < nExplv11) then
						SetTask(SkillLevelExp,GetTask(SkillLevelExp)+tbSkillExp)
						Msg2Player("ChÛc Mıng "..myplayersex().." ß∑ NhÀn ß≠Óc <color=yellow>"..tbSkillExp.."<color> ßi”m Tu Luy÷n K¸ N®ng Th t Truy“n <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
					else
						AddMagic(SKILL_180[i],12); SetTask(KyNangThatTruyen,12); SetTask(SkillLevelExp,0) Talk(1,"","ChÛc Mıng "..myplayersex().." ß∑ N©ng C p K¸ N®ng Th t Truy“n ßπt ß’n C p 12") return 1
					end
				elseif (HaveMagic(SKILL_180[i]) == 12) then
					if (GetTask(SkillLevelExp) < nExplv12) then
						SetTask(SkillLevelExp,GetTask(SkillLevelExp)+tbSkillExp)
						Msg2Player("ChÛc Mıng "..myplayersex().." ß∑ NhÀn ß≠Óc <color=yellow>"..tbSkillExp.."<color> ßi”m Tu Luy÷n K¸ N®ng Th t Truy“n <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
					else
						AddMagic(SKILL_180[i],13); SetTask(KyNangThatTruyen,13); SetTask(SkillLevelExp,0) Talk(1,"","ChÛc Mıng "..myplayersex().." ß∑ N©ng C p K¸ N®ng Th t Truy“n ßπt ß’n C p 13") return 1
					end
				elseif (HaveMagic(SKILL_180[i]) == 13) then
					if (GetTask(SkillLevelExp) < nExplv13) then
						SetTask(SkillLevelExp,GetTask(SkillLevelExp)+tbSkillExp)
						Msg2Player("ChÛc Mıng "..myplayersex().." ß∑ NhÀn ß≠Óc <color=yellow>"..tbSkillExp.."<color> ßi”m Tu Luy÷n K¸ N®ng Th t Truy“n <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
					else
						AddMagic(SKILL_180[i],14); SetTask(KyNangThatTruyen,14); SetTask(SkillLevelExp,0) Talk(1,"","ChÛc Mıng "..myplayersex().." ß∑ N©ng C p K¸ N®ng Th t Truy“n ßπt ß’n C p 14") return 1
					end
				elseif (HaveMagic(SKILL_180[i]) == 14) then
					if (GetTask(SkillLevelExp) < nExplv14) then
						SetTask(SkillLevelExp,GetTask(SkillLevelExp)+tbSkillExp)
						Msg2Player("ChÛc Mıng "..myplayersex().." ß∑ NhÀn ß≠Óc <color=yellow>"..tbSkillExp.."<color> ßi”m Tu Luy÷n K¸ N®ng Th t Truy“n <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
					else
						AddMagic(SKILL_180[i],15); SetTask(KyNangThatTruyen,15); SetTask(SkillLevelExp,0) Talk(1,"","ChÛc Mıng "..myplayersex().." ß∑ N©ng C p K¸ N®ng Th t Truy“n ßπt ß’n C p 15") return 1
					end
				elseif (HaveMagic(SKILL_180[i]) == 15) then
					if (GetTask(SkillLevelExp) < nExplv15) then
						SetTask(SkillLevelExp,GetTask(SkillLevelExp)+tbSkillExp)
						Msg2Player("ChÛc Mıng "..myplayersex().." ß∑ NhÀn ß≠Óc <color=yellow>"..tbSkillExp.."<color> ßi”m Tu Luy÷n K¸ N®ng Th t Truy“n <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
					else
						AddMagic(SKILL_180[i],16); SetTask(KyNangThatTruyen,16); SetTask(SkillLevelExp,0) Talk(1,"","ChÛc Mıng "..myplayersex().." ß∑ N©ng C p K¸ N®ng Th t Truy“n ßπt ß’n C p 16") return 1
					end
				elseif (HaveMagic(SKILL_180[i]) == 16) then
					if (GetTask(SkillLevelExp) < nExplv16) then
						SetTask(SkillLevelExp,GetTask(SkillLevelExp)+tbSkillExp)
						Msg2Player("ChÛc Mıng "..myplayersex().." ß∑ NhÀn ß≠Óc <color=yellow>"..tbSkillExp.."<color> ßi”m Tu Luy÷n K¸ N®ng Th t Truy“n <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
					else
						AddMagic(SKILL_180[i],17); SetTask(KyNangThatTruyen,17); SetTask(SkillLevelExp,0) Talk(1,"","ChÛc Mıng "..myplayersex().." ß∑ N©ng C p K¸ N®ng Th t Truy“n ßπt ß’n C p 17") return 1
					end
				elseif (HaveMagic(SKILL_180[i]) == 17) then
					if (GetTask(SkillLevelExp) < nExplv17) then
						SetTask(SkillLevelExp,GetTask(SkillLevelExp)+tbSkillExp)
						Msg2Player("ChÛc Mıng "..myplayersex().." ß∑ NhÀn ß≠Óc <color=yellow>"..tbSkillExp.."<color> ßi”m Tu Luy÷n K¸ N®ng Th t Truy“n <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
					else
						AddMagic(SKILL_180[i],18); SetTask(KyNangThatTruyen,18); SetTask(SkillLevelExp,0) Talk(1,"","ChÛc Mıng "..myplayersex().." ß∑ N©ng C p K¸ N®ng Th t Truy“n ßπt ß’n C p 18") return 1
					end
				elseif (HaveMagic(SKILL_180[i]) == 18) then
					if (GetTask(SkillLevelExp) < nExplv18) then
						SetTask(SkillLevelExp,GetTask(SkillLevelExp)+tbSkillExp)
						Msg2Player("ChÛc Mıng "..myplayersex().." ß∑ NhÀn ß≠Óc <color=yellow>"..tbSkillExp.."<color> ßi”m Tu Luy÷n K¸ N®ng Th t Truy“n <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
					else
						AddMagic(SKILL_180[i],19); SetTask(KyNangThatTruyen,19); SetTask(SkillLevelExp,0) Talk(1,"","ChÛc Mıng "..myplayersex().." ß∑ N©ng C p K¸ N®ng Th t Truy“n ßπt ß’n C p 19") return 1
					end
				elseif (HaveMagic(SKILL_180[i]) == 19) then
					if (GetTask(SkillLevelExp) < nExplv19) then
						SetTask(SkillLevelExp,GetTask(SkillLevelExp)+tbSkillExp)
						Msg2Player("ChÛc Mıng "..myplayersex().." ß∑ NhÀn ß≠Óc <color=yellow>"..tbSkillExp.."<color> ßi”m Tu Luy÷n K¸ N®ng Th t Truy“n <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
					else
						AddMagic(SKILL_180[i],20); SetTask(KyNangThatTruyen,20); SetTask(SkillLevelExp,0) Talk(1,"","ChÛc Mıng "..myplayersex().." ß∑ N©ng C p K¸ N®ng Th t Truy“n ßπt ß’n C p 20") return 1
					end
				elseif (HaveMagic(SKILL_180[i]) == 20) then
					Talk(1,"","<color=red>K¸ N®ng Th t Truy“n ß∑ ßπt ß’n TËi ßa.") return 1
				end
			end
		end
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------