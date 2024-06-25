Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\awardtype\\simple.lua")
VngEnergyType = SimpleType:new("nVngEnergy") 
VngEnergyType.pFun = AddEnergy 
VngEnergyType.szMsgFormat = " Æπt Æ≠Óc %d tinh luy÷n thπch trﬁ gi∏ " 
VngEnergyType:Reg() 