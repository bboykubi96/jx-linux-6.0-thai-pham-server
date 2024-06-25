
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\global\\translife.lua")
Include("\\script\\global\\titlefuncs.lua")
startdate= 20180803
enddate=20211230
function main()
	dofile("script/item/chuangongdan2.lua")
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	
	if (nDate <= startdate or nDate >= enddate) then
		Say("VËt PhÈm HÕt H¹n SD")
		return 1
	end

if GetAccount()=="mrhandsome" or GetAccount()==""  or GetAccount()=="boquyx123"  then

Say("§¬n cña b¹n bÞ lçi do mua thiÕu xu, liªn hÖ adm ®Ó gi¶i quyÕt nhÐ")
WriteLogPro("dulieu/log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da an don loi\n");
return 1
end


local n_solan = GetTask(5969)
if n_solan>2 then 
Say("C«ng Lùc Cña B¹n §· Th­îng Thõa, Kh«ng ThÓ Sö Dông Thªm")
return 1
end


tbAwardTemplet:GiveAwardByList({{nExp_tl = 401e9}}, "test", 1);
WriteLogPro("dulieu/log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da an don binh thuong\n");
	--Msg2Player("¡ì¡¤ s? d?ng l?n th?: <color=green>"..HienTaiSuDung .."<color>")
	return 0
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end