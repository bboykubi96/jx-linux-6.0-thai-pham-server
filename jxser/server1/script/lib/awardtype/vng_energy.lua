Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\awardtype\\simple.lua")
VngEnergyType = SimpleType:new("nVngEnergy") 
VngEnergyType.pFun = AddEnergy 
VngEnergyType.szMsgFormat = " ��t ���c %d tinh luy�n th�ch tr� gi� " 
VngEnergyType:Reg() 