IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\lib\\awardtemplet.lua")

function OnDeath () 
if GetTask(12) == 90*256 and GetLevel() >= 20 then
SetTask(12,100*256)
Msg2Player("Quay l�i g�p C�t Khang.") 
AddNote("Quay l�i g�p C�t Khang.")
Talk(1,"","Du T�u M�i H�a Lang: Xin h�y tha cho ta, ta s� kh�ng bao gi� d�m n�a!")
end
end 