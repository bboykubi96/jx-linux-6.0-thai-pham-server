Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\awardtype\\simple.lua")
ExpType = SimpleType:new("nExp") 
ExpType.pFun = AddOwnExp 
-- script viet hoa By http://tranhba.com Fix nÕu nh­ con sè qu¸ lín , biÓu hiÖn sÏ bÞ lçi - Modified By DinhHQ - 20110926 
ExpType.szMsgFormat = " §¹t ®­îc kinh nghiÖm %s kh«ng céng dån" 
ExpType:Reg() 

Exp_tlType = SimpleType:new("nExp_tl") 
Exp_tlType.pFun = tl_addPlayerExp 
-- script viet hoa By http://tranhba.com Fix nÕu nh­ con sè qu¸ lín , biÓu hiÖn sÏ bÞ lçi - Modified By DinhHQ - 20110926 
Exp_tlType.szMsgFormat = " §¹t ®­îc  %s kinh nghiÖm céng dån." 
Exp_tlType:Reg()
