Include("\\script\\lib\\awardtemplet.lua") 
Include("\\script\\lib\\awardtype\\simple.lua") 
ReputeType = SimpleType:new("nRepute") 
ReputeType.pFun = AddRepute 
ReputeType.szMsgFormat = "# vinh d� �i�m gia t�ng %d" 
ReputeType:Reg()