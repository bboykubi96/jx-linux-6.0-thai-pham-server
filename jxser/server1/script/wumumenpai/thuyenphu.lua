Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
function main() 
Describe("Thuy�n Phu: Ng��i mu�n �i ��u?",3,"��n Ba L�ng Huy�n/denbalanghuyen","��n l�m An/denlaman","Ta kh�ng �i ��u c�/no")
end

function denbalanghuyen()
NewWorld(53, 1794, 3157)
SetFightState(1) 
end

function denlaman()
NewWorld(176, 1607, 2553)
SetFightState(1) 
end

function no()
end