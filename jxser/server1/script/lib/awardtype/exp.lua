Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\awardtype\\simple.lua")
ExpType = SimpleType:new("nExp") 
ExpType.pFun = AddOwnExp 
-- script viet hoa By http://tranhba.com Fix n�u nh� con s� qu� l�n , bi�u hi�n s� b� l�i - Modified By DinhHQ - 20110926 
ExpType.szMsgFormat = " ��t ���c kinh nghi�m %s kh�ng c�ng d�n" 
ExpType:Reg() 

Exp_tlType = SimpleType:new("nExp_tl") 
Exp_tlType.pFun = tl_addPlayerExp 
-- script viet hoa By http://tranhba.com Fix n�u nh� con s� qu� l�n , bi�u hi�n s� b� l�i - Modified By DinhHQ - 20110926 
Exp_tlType.szMsgFormat = " ��t ���c  %s kinh nghi�m c�ng d�n." 
Exp_tlType:Reg()
