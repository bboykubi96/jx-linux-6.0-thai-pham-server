-- ¶¨Ê±ÏòÒ»×é·þÎñÆ÷µÄËùÓÐGameserver·¢ÏµÍ³¹«¸æ
Include("\\script\\gb_modulefuncs.lua")
tab_GameSetting = 
{
"Hoat dong mua xuan 2006",--ÄêÊÞ
"OpenShop",--ÉÌ³Ç
"Thiep Chuc Mung Nam Moi",--Msg2SubWorld
"Do Pho Hoang Kim",--AddLocalNews
"Phuc Duyen - Phao Bong", 
"Truyen Cong",
"Le vat tinh nhan",--AddLocalNews and AddGift
"YANDIBAOZANG",
"YANDIBAOZANG_TALK",
"SWITH_DAIYITOUSHI",
"chunjie2009_dangboss",
}

function TaskShedule()
	TaskName("ThiÕt kÕ  hÖ thèng trß ch¬i");
	TaskInterval(1000000);
	TaskCountLimit(0);
	OutputMsg("======================================================================================================")
	OutputMsg("                         BAT DAU KHOI DONG CAC TINH NANG VO LAM TRUYEN KY                             ")
	OutputMsg("                                     UPDATE TINH NANG MOI NHAT                                        ")
	OutputMsg("                     NHAN UPDATE BAN SERVER HKMP - CTC DO XANH CHUAN VNG 100                          ")
	OutputMsg("                                  NHAN VIET CODE TINH NANG MOI                                        ")
	OutputMsg("               DICH VU CHO THUE MAY CHU GAME VLTK HE THONG CHONG DOSS - DUMP CUC MANH                 ")
	OutputMsg("                     MOI CHI TIET XIN LIEN HE: 0901239836 - 0357118138                            ")
	OutputMsg("======================================================================================================")
end
function TaskContent()
	for i = 1, getn(tab_GameSetting) do 
		gb_AutoStartModule(tab_GameSetting[i])
	end
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
