
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\global\\translife.lua")
Include("\\script\\global\\titlefuncs.lua")
startdate= 20180803
enddate=20211230
function main()
	dofile("script/item/chuangongdan4_cl4.lua")
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	
	--if GetAccount() ~= "luuhuanvlv201901" and GetAccount() ~= "boquyx123" and GetAccount() ~= "luuhuanvlv201902"   and GetAccount() ~= "luuhuanvlv201903"  and GetAccount() ~= "luuhuanvlv201904"   and GetAccount() ~= "luuhuanvlv201905" then
	--	Say("V�t Ph�m Ch�a ���c s� d�ng")
	--	return 1
	--end
	if (nDate <= startdate or nDate >= enddate) then
		Say("V�t Ph�m H�t H�n SD")
		return 1
	end



local n_solan = GetTask(5969)
if n_solan ~=4  then 
Say("Ch� s� d�ng cho c�i l�o 4")
return 1
end


tbAwardTemplet:GiveAwardByList({{nExp_tl = 100e9}}, "test", 1);
--AddOwnExp(100000000000);
WriteLogPro("dulieu/ancucexp.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetLevel().."\t Da an cuc exxp cho cai lao 4\n");

	return 0
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end