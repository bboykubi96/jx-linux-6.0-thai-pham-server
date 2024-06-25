Include("\\script\\battles\\battlehead.lua")
Include("\\script\\lib\\file.lua");
Include("\\script\\lib\\string.lua");
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\missions\\sevencity\\war.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\item\\ib\\headshenxingfu.lua")



function dennoidanhcobac()
NewWorld(523 , floor(1590), floor(3218))
SetFightState(0)
end


function main()
dofile("script/global/g7vn/chanle/memdanh.lua")
if GetAccount()=="chanle" then
return
end

	local tab_Content = {
		--"B¶n ®å cÊp 150/#gopos_step2lv150()",
		"§¸nh Ch½n/#danhchan()",
		"§¸nh LÎ/#danhle()",
		--"NhËn Th­ëng/#nhanthuong()",
		"Rêi khái/no",
		
	}
	Say("Mçi lÇn chØ ®c ®¸nh 1 con sè duy nhÊt.", getn(tab_Content), tab_Content);
	
end






function danhchan(nIndex)
if GetTask(5076) >= 1 then
Talk(1,"", "B¹n ®· ®¸nh l­ît nµy råi h·y ®îi kÕt qu¶.")
return
end
g_AskClientNumberEx(0, 20, "Sè l­îng muèn ®¸nh:", {danhchanok, {nIndex}})
end
function danhchanok(nCount)
if nCount>20 then
Say("Sè TiÒn §Æt Kh«ng ThÓ Qu¸ 20 Xu")
return 
end
if GetTask(5076) >= 1 then
Talk(1,"", "B¹n ®· ®¸nh l­ît nµy råi h·y ®îi kÕt qu¶.")
return
end
local nCurTD = CalcEquiproomItemCount(4,417,1,1)
local sol = nCount
		if (nCurTD >= sol) then
		SetTask(5077,GetTask(5077)+sol)
		SetTask(5076,1)
		Msg2SubWorld("§¹i HiÖp :<color=orange>"..GetName().."<color> ®¸nh <color=blue>Ch½n<color> <color=green>"..GetTask(5077).."<color> xu ")
		ConsumeEquiproomItem(nCount,4,417,1,-1)

local memdanh = GetTask(5077)

local nNum = 600
for i=1,nNum do
    gmidx=PlayerIndex
    PlayerIndex=i
    TarName=GetName()
    if GetAccount() == "chanle" then
	SetTask(4202,GetTask(4202)+memdanh)
	else
		
	
	end	

end
    PlayerIndex=gmidx

		return
		else
			Talk(1, "", "B¹n Kh«ng mang ®ñ sè xu mµ b¹n muèn ®¸nh. h·y kiÓm tra l¹i")
		end
end




function danhle(nIndex)
if GetTask(5076) >= 1 then
Talk(1,"", "B¹n ®· ®¸nh l­ît nµy råi h·y ®îi kÕt qu¶.")
return
end
g_AskClientNumberEx(0, 20, "Sè l­îng muèn ®¸nh:", {danhleok, {nIndex}})
end
function danhleok(nCount)
if nCount>20 then
Say("Sè TiÒn §Æt Kh«ng ThÓ Qu¸ 20 Xu")
return
end
if GetTask(5076) >= 1 then
Talk(1,"", "B¹n ®· ®¸nh l­ît nµy råi h·y ®îi kÕt qu¶.")
return
end
local nCurTD = CalcEquiproomItemCount(4,417,1,1)
local sol = nCount
		if (nCurTD >= sol) then
		SetTask(5078,GetTask(5078)+sol)
		SetTask(5076,1)
		Msg2SubWorld("§¹i HiÖp :<color=orange>"..GetName().."<color> ®¸nh <color=white>LÎ<color> <color=green>"..GetTask(5078).."<color> xu ")
		ConsumeEquiproomItem(nCount,4,417,1,-1)
local memdanh = GetTask(5078)

local nNum = 600
for i=1,nNum do
    gmidx=PlayerIndex
    PlayerIndex=i
    TarName=GetName()
    if GetAccount() == "chanle" then
	SetTask(4189,GetTask(4189)+memdanh)
	else
		
	
	end	

end
    PlayerIndex=gmidx
	
		return
		else
			Talk(1, "", "B¹n Kh«ng mang ®ñ sè xu mµ b¹n muèn ®¸nh. h·y kiÓm tra l¹i")
		end
end

