Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\awardtype\\simple.lua")
JxbType = SimpleType:new("nJxb") 
JxbType.pFun = Earn 
JxbType.szMsgFormat = " ��t ���c %d ki�m hi�p ti�n " 
JxbType:Reg() 