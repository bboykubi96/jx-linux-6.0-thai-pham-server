-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##dailog.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ##zhongchaolong 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2008-04-17 11:00:21 
-- script viet hoa By http://tranhba.com  ghi danh ��ch ��i tho�i 
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\missions\\racegame\\ready\\ready.lua")
function racegame_SignUp_main(nStep) 
jiefang_0804_ResetTask() 
local tbSay = {} 
if nStep == 1 then 
tbSay = 
{ 
"<dec><npc> t� 2008-06-11 ng�y ��n 2008-7-13 ng�y 24 l�c , minh ch� v� l�m �em � c�c th�nh ph� c� h�nh c�p b�n tranh t�i , ��u 30 c� t�i �i�m cu�i c�ng c�ng n�i ch�n l�o b�n ��i tho�i ng��i c�a �em ��t ���c �u h�u ��ch t��ng th��ng , ng��i ngh� tham gia c�i n�y ho�t ��ng sao ?", 
" ng�n n�m m�t g�p , ta s� kh�ng b� qua ��ch !/#racegame_SignUp_main(2)", 
" hi�u r� ho�t ��ng tin t�c /#racegame_SignUp_main(3)", 
" th�t l� ng��ng ng�ng , ta s� t�i sau ./OnCancel", 
} 
elseif nStep == 2 then 
local nReadyMissionState = gb_GetTask(racegame_tbMission.G_TSK_NAME, racegame_tbMission.ReadyMissionState) 
local nMissionState = gb_GetTask(racegame_tbMission.G_TSK_NAME, racegame_tbMission.MissionState) 
-- script viet hoa By http://tranhba.com local nPlayerCount = racegame_tbReadyMission:GetMSPlayerCount() 

-- script viet hoa By http://tranhba.com  if nPlayerCount >= racegame_tbReadyMission.nPlayerCountLimit then 
-- script viet hoa By http://tranhba.com  Say("S�n n�y ho�t ��ng nh�n s� �� ��t t�i th��ng h�n , ng��i tham gia cu�c k� ti�p �i #",0) 
-- script viet hoa By http://tranhba.com  return 
-- script viet hoa By http://tranhba.com  end 

if GetLevel() < racegame_tbReadyMission.nLevelLimit then 
Say(format("C�p b�c kh�ng �� %s, kh�ng th� tham gia ho�t ��ng .", racegame_tbReadyMission.nLevelLimit), 0 ) 
return 
end 


if nReadyMissionState == 1 then 

local w = GetWorldPos() 
SetTask(jiefang_0804_TSK_MapId, w) 
local nRandId = random(1, getn(racegame_tbReadyMission.tbWaitPos) ) 
return NewWorld(racegame_tbReadyMission.nMapId, racegame_tbReadyMission.tbWaitPos[nRandId][1], racegame_tbReadyMission.tbWaitPos[nRandId][2]) 
elseif (nReadyMissionState == 0 and nMissionState ~= 0) or nReadyMissionState == 3 then 
tbSay = 
{ 
" ��i hi�p �� �� t�i ch�m , tranh t�i �� b�t ��u . m�i tu�n ��ch tranh t�i th�i gian : <enter> th� hai ��n th� s�u , bu�i s�ng 10:00 ��n 11:00, bu�i chi�u 22:00 ��n 23:00<enter> th�ng t� ba m��i ng�y th� b�y c�ng th�ng n�m m�t ng�y ; bu�i s�ng 02:00 ��n 03:00, bu�i s�ng 10:00 ��n 11:00, bu�i chi�u 14:00 ��n 15:00, bu�i t�i 22:00 ��n 23:00<enter> ch� nh�t , bu�i s�ng 10:00 ��n 11:00, bu�i tr�a 14:00 ��n 15:00, bu�i t�i 22:00 ��n 23:00.", 
" th�t l� ng��ng ng�ng , ta s� t�i sau ./OnCancel", 
} 
tbSay[1] = "<dec><npc>"..tbSay[1] 
elseif nReadyMissionState == 0 and nMissionState == 0 then 
tbSay = 
{ 
" tranh t�i c�n ch�a b�t ��u . m�i tu�n ��ch tranh t�i th�i gian :<enter> th� hai ��n th� s�u , bu�i s�ng 10:00 ��n 11:00, bu�i chi�u 22:00 ��n 23:00<enter> th�ng t� ba m��i ng�y th� b�y c�ng th�ng n�m m�t ng�y ; bu�i s�ng 02:00 ��n 03:00, bu�i s�ng 10:00 ��n 11:00, bu�i chi�u 14:00 ��n 15:00, bu�i t�i 22:00 ��n 23:00<enter> ch� nh�t , bu�i s�ng 10:00 ��n 11:00, bu�i tr�a 14:00 ��n 15:00, bu�i t�i 22:00 ��n 23:00.", 
" th�t l� ng��ng ng�ng , ta s� t�i sau ./OnCancel", 
} 
tbSay[1] = "<dec><npc>"..tbSay[1] 
end 
elseif nStep == 3 then 
tbSay = 
{ 
"<dec><npc> m�i cu�c tranh t�i 15 ph�t , trong �� c� 1 ph�t chu�n b� . ghi danh tham gia sau , nh� ch�i s� b� ��a ��n chu�n b� khu . tranh t�i b�t ��u sau , l�a ch�n tay mau s�m ch�y v� m�c ��ch ��a . � tranh t�i trong qu� tr�nh , s� xu�t hi�n c�c lo�i h�u d�ng ��o c� , d�ng nh�ng th� n�y ��o c� c� th� gi�p m�nh gia t�ng t�c �� ch�y tr�n ho�c l� khi�n cho ng��i kh�c ch�m l�i . ��u 30 c� t�i �i�m cu�i c�ng c�ng n�i ch�n l�o b�n ��i tho�i ng��i c�a �em ��t ���c �u h�u ��ch t��ng th��ng ", 
" th�t l� ng��ng ng�ng , ta s� t�i sau ./OnCancel", 
} 

end 
CreateTaskSay(tbSay) 
end 



function racegame_Award_main() 
jiefang_0804_ResetTask() 
local nAwardState = GetTask(jiefang_0804_TSK_AwardState) 
local nPlayerMapId = GetTask(jiefang_0804_TSK_MapId) 
if nPlayerMapId == 0 then 
nPlayerMapId = 520 
end 
if nAwardState == 1 then 
return NewWorld(nPlayerMapId, racegame_tbMission.tbSignUpPos[1], racegame_tbMission.tbSignUpPos[2]) 
end 
local nRankCount = racegame_tbMission:GetMissionV(racegame_tbMission.tbMissionV.RANK_COUNTER) 
	nRankCount = nRankCount + 1
racegame_tbMission:SetMissionV(racegame_tbMission.tbMissionV.RANK_COUNTER, nRankCount) 
local szMsg = format("Ha ha , � n�i n�y cu�c tranh t�i ��i hi�p ��ng h�ng <color=yellow>%d<color>.", nRankCount) 

Msg2MSAll(racegame_tbMission.nMissionId, format("<color=yellow>%s<color> � n�i n�y cu�c tranh t�i ��ng h�ng <color=yellow>%d<color>.",GetName(), nRankCount)) 
Msg2Player(szMsg) 
if nRankCount >= 1 and nRankCount <= 10 then 
tbAwardTemplet:GiveAwardByList(%tbAward[1],"Ph�n Th��ng �ua Ng�a X�p H�ng "..nRankCount.."")
elseif nRankCount >= 11 and nRankCount <= 20 then 
tbAwardTemplet:GiveAwardByList(%tbAward[2],"Ph�n Th��ng �ua Ng�a X�p H�ng "..nRankCount.."")
elseif nRankCount >= 21 and nRankCount <= 30 then 
tbAwardTemplet:GiveAwardByList(%tbAward[3],"Ph�n Th��ng �ua Ng�a X�p H�ng "..nRankCount.."")
end 

SetTask(jiefang_0804_TSK_AwardState, 1) 
if nRankCount >= 30 then 
racegame_tbMission:CloseGame(); 
end 

NewWorld(nPlayerMapId, racegame_tbMission.tbSignUpPos[1], racegame_tbMission.tbSignUpPos[2]) 
end 

function OnCancel() 
end
tbAward = {--Ph�n Th��ng T�n S�
[1] = {--Phong Ky
		[1] = {
                {szName="KNB",tbProp={4,1506,1,1,0,0},nCount=400},
		
		},
		[2] = {
			
		},
	},
	[2] = {--Son Than Mieu
		[1] = {
                {szName="KNB",tbProp={4,1506,1,1,0,0},nCount=200},
		},
		[2] = {
			
		},
	},
	[3] = {--Thien Bao Kho
		{nExp_tl = 2e7},
                {szName="KNB",tbProp={4,1506,1,1,0,0},nCount=50},
              
		},
		
	[4] = {--Thien Bao Kho Dac Biet
		[1] = {
		      {nExp_tl = 4e8},
		{szName="Tinh Ngoc",tbProp={6,1,4807,1,0,0},nCount=50},

		},
		[2] = {
		  --  {szName="Ngu Linh Kiem Dinh Phu",tbProp={6,1,3007,1,1,0},nCount=1,nRate=10,CallBack= _Message},
		  --  {szName="Quy Nguyen ",tbProp={6,1,3008,1,1,0},nCount=1,nRate=1,CallBack= _Message},
		},
		
	},
}