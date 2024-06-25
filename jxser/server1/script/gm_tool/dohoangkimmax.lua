

function dohoangkimmax()
if (CalcFreeItemCellCount() < 40) then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
end
local tab_Content =
{
"Trang BÞ Kim ¤./kimomax",
"Trang BÞ B¹ch Hæ./bachhomax",
"Trang BÞ XÝch L©n./xichlanmax",
"Trang BÞ Minh Ph­îng./minhphuongmax",
"Trang BÞ §»ng Long/danglongmax",
"Trang BÞ Tinh S­¬ng/tinhsuongmax",
"Trang BÞ NguyÖt KhuyÕt/nguyetkhuyetmax",
"Tho¸t./no",
"Trë l¹i"
}


Say(" Muèn lÊy trang bÞ g× ? ", getn(tab_Content), tab_Content);
end
-------------------------------------------------------------------------------------------------------------------------------
function nguyetkhuyetmax()
local tab_Content = {
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#senguyetkhuyetmax(1)",
"ThiÕu L©m Bçng/#senguyetkhuyetmax(2)",
"ThiÕu L©m §ao/#senguyetkhuyetmax(3)",
"Thiªn V­¬ng Chïy/#senguyetkhuyetmax(4)",
"Thiªn V­¬ng Th­¬ng/#senguyetkhuyetmax(5)",
"Thiªn V­¬ng §ao/#senguyetkhuyetmax(6)",
"Nga Mi KiÕm/#senguyetkhuyetmax(7)",
"Nga Mi Ch­ëng/#senguyetkhuyetmax(8)",
"Thóy Yªn §ao/#senguyetkhuyetmax(9)",
"Thóy Yªn Song §ao/#senguyetkhuyetmax(10)",
"Ngò §éc Ch­ëng/#senguyetkhuyetmax(11)",
"Ngò §éc §ao/#senguyetkhuyetmax(12)",
"§­êng M«n Phi §ao/#senguyetkhuyetmax(13)",
"§­êng M«n Ná/#senguyetkhuyetmax(14)",
"Trang sau/nguyetkhuyetmax2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function nguyetkhuyetmax2()
local tab_Content = {
"§­êng M«n Phi Tiªu/#senguyetkhuyetmax(15)",
"C¸i Bang Rång/#senguyetkhuyetmax(16)",
"C¸i Bang Bçng/#senguyetkhuyetmax(17)",
"Thiªn NhÉn KÝch/#senguyetkhuyetmax(18)",
"Thiªn NhÉn §ao/#senguyetkhuyetmax(19)",
"Vâ §ang KiÕm/#senguyetkhuyetmax(21)",
"Vâ §ang QuyÒn/#senguyetkhuyetmax(20)",
"C«n L«n §ao/#senguyetkhuyetmax(22)",
"C«n L«n KiÕm/#senguyetkhuyetmax(23)",
"Hoa S¬n KhÝ T«ng/#senguyetkhuyetmax(25)",
"Hoa S¬n KiÕm T«ng/#senguyetkhuyetmax(24)",
"Tho¸t/no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function senguyetkhuyetmax(nId)
for i = 5650, 5659 do
AddGoldItem(0,10*nId+i-10)
end
end
-------------------------------------------------------------------------------------------------------------------------------------------
function tinhsuongmax()
local tab_Content = {
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#setinhsuongmax(1)",
"ThiÕu L©m Bçng/#setinhsuongmax(2)",
"ThiÕu L©m §ao/#setinhsuongmax(3)",
"Thiªn V­¬ng Chïy/#setinhsuongmax(4)",
"Thiªn V­¬ng Th­¬ng/#setinhsuongmax(5)",
"Thiªn V­¬ng §ao/#setinhsuongmax(6)",
"Nga Mi KiÕm/#setinhsuongmax(7)",
"Nga Mi Ch­ëng/#setinhsuongmax(8)",
"Thóy Yªn §ao/#setinhsuongmax(9)",
"Thóy Yªn Song §ao/#setinhsuongmax(10)",
"Ngò §éc Ch­ëng/#setinhsuongmax(11)",
"Ngò §éc §ao/#setinhsuongmax(12)",
"§­êng M«n Phi §ao/#setinhsuongmax(13)",
"§­êng M«n Ná/#setinhsuongmax(14)",
"Trang sau/tinhsuongmax2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function tinhsuongmax2()
local tab_Content = {
"§­êng M«n Phi Tiªu/#setinhsuongmax(15)",
"C¸i Bang Rång/#setinhsuongmax(16)",
"C¸i Bang Bçng/#setinhsuongmax(17)",
"Thiªn NhÉn KÝch/#setinhsuongmax(18)",
"Thiªn NhÉn §ao/#setinhsuongmax(19)",
"Vâ §ang KiÕm/#setinhsuongmax(21)",
"Vâ §ang QuyÒn/#setinhsuongmax(20)",
"C«n L«n §ao/#setinhsuongmax(22)",
"C«n L«n KiÕm/#setinhsuongmax(23)",
"Hoa S¬n KhÝ T«ng/#setinhsuongmax(25)",
"Hoa S¬n KiÕm T«ng/#setinhsuongmax(24)",
"Tho¸t/no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function setinhsuongmax(nId)
for i = 6481, 6490 do
AddGoldItem(0,10*nId+i-10)
end
end
-----------------------------------------------------------------------------------------------------------------------------------------------
function danglongmax()
local tab_Content = {
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#sedanglongmax(1)",
"ThiÕu L©m Bçng/#sedanglongmax(2)",
"ThiÕu L©m §ao/#sedanglongmax(3)",
"Thiªn V­¬ng Chïy/#sedanglongmax(4)",
"Thiªn V­¬ng Th­¬ng/#sedanglongmax(5)",
"Thiªn V­¬ng §ao/#sedanglongmax(6)",
"Nga Mi KiÕm/#sedanglongmax(7)",
"Nga Mi Ch­ëng/#sedanglongmax(8)",
"Thóy Yªn §ao/#sedanglongmax(9)",
"Thóy Yªn Song §ao/#sedanglongmax(10)",
"Ngò §éc Ch­ëng/#sedanglongmax(11)",
"Ngò §éc §ao/#sedanglongmax(12)",
"§­êng M«n Phi §ao/#sedanglongmax(13)",
"§­êng M«n Ná/#sedanglongmax(14)",
"Trang sau/danglongmax2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function danglongmax2()
local tab_Content = {
"§­êng M«n Phi Tiªu/#sedanglongmax(15)",
"C¸i Bang Rång/#sedanglongmax(16)",
"C¸i Bang Bçng/#sedanglongmax(17)",
"Thiªn NhÉn KÝch/#sedanglongmax(18)",
"Thiªn NhÉn §ao/#sedanglongmax(19)",
"Vâ §ang KiÕm/#sedanglongmax(21)",
"Vâ §ang QuyÒn/#sedanglongmax(20)",
"C«n L«n §ao/#sedanglongmax(22)",
"C«n L«n KiÕm/#sedanglongmax(23)",
"Hoa S¬n KhÝ T«ng/#sedanglongmax(25)",
"Hoa S¬n KiÕm T«ng/#sedanglongmax(24)",
"Tho¸t/no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function sedanglongmax(nId)
for i = 5150, 5159 do
AddGoldItem(0,10*nId+i-10)
end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------
function xichlanmax()
local tab_Content = {
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#sexichlanmax(1)",
"ThiÕu L©m Bçng/#sexichlanmax(2)",
"ThiÕu L©m §ao/#sexichlanmax(3)",
"Thiªn V­¬ng Chïy/#sexichlanmax(4)",
"Thiªn V­¬ng Th­¬ng/#sexichlanmax(5)",
"Thiªn V­¬ng §ao/#sexichlanmax(6)",
"Nga Mi KiÕm/#sexichlanmax(7)",
"Nga Mi Ch­ëng/#sexichlanmax(8)",
"Thóy Yªn §ao/#sexichlanmax(9)",
"Thóy Yªn Song §ao/#sexichlanmax(10)",
"Ngò §éc Ch­ëng/#sexichlanmax(11)",
"Ngò §éc §ao/#sexichlanmax(12)",
"§­êng M«n Phi §ao/#sexichlanmax(13)",
"§­êng M«n Ná/#sexichlanmax(14)",
"Trang sau/xichlanmax2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function xichlanmax2()
local tab_Content = {
"§­êng M«n Phi Tiªu/#sexichlanmax(15)",
"C¸i Bang Rång/#sexichlanmax(16)",
"C¸i Bang Bçng/#sexichlanmax(17)",
"Thiªn NhÉn KÝch/#sexichlanmax(18)",
"Thiªn NhÉn §ao/#sexichlanmax(19)",
"Vâ §ang KiÕm/#sexichlanmax(21)",
"Vâ §ang QuyÒn/#sexichlanmax(20)",
"C«n L«n §ao/#sexichlanmax(22)",
"C«n L«n KiÕm/#sexichlanmax(23)",
-- "Hoa S¬n KhÝ T«ng/#sexichlanmax(24)",
-- "Hoa S¬n KiÕm T«ng/#sexichlanmax(25)",
"Tho¸t/no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function sexichlanmax(nId)
for i = 6620, 6629 do
AddGoldItem(0,10*nId+i-10)
end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------
function minhphuongmax()
local tab_Content = {
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#seminhphuongmax(1)",
"ThiÕu L©m Bçng/#seminhphuongmax(2)",
"ThiÕu L©m §ao/#seminhphuongmax(3)",
"Thiªn V­¬ng Chïy/#seminhphuongmax(4)",
"Thiªn V­¬ng Th­¬ng/#seminhphuongmax(5)",
"Thiªn V­¬ng §ao/#seminhphuongmax(6)",
"Nga Mi KiÕm/#seminhphuongmax(7)",
"Nga Mi Ch­ëng/#seminhphuongmax(8)",
"Thóy Yªn §ao/#seminhphuongmax(9)",
"Thóy Yªn Song §ao/#seminhphuongmax(10)",
"Ngò §éc Ch­ëng/#seminhphuongmax(11)",
"Ngò §éc §ao/#seminhphuongmax(12)",
"§­êng M«n Phi §ao/#seminhphuongmax(13)",
"§­êng M«n Ná/#seminhphuongmax(14)",
"Trang sau/minhphuongmax2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function minhphuongmax2()
local tab_Content = {
"§­êng M«n Phi Tiªu/#seminhphuongmax(15)",
"C¸i Bang Rång/#seminhphuongmax(16)",
"C¸i Bang Bçng/#seminhphuongmax(17)",
"Thiªn NhÉn KÝch/#seminhphuongmax(18)",
"Thiªn NhÉn §ao/#seminhphuongmax(19)",
"Vâ §ang KiÕm/#seminhphuongmax(21)",
"Vâ §ang QuyÒn/#seminhphuongmax(20)",
"C«n L«n §ao/#seminhphuongmax(22)",
"C«n L«n KiÕm/#seminhphuongmax(23)",
-- "Hoa S¬n KhÝ T«ng/#seminhphuongmax(24)",
-- "Hoa S¬n KiÕm T«ng/#seminhphuongmax(25)",
"Tho¸t/no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function seminhphuongmax(nId)
-- for i = 4900, 4909 do
for i = 6890, 6899 do
AddGoldItem(0,10*nId+i-10)
end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function bachhomax()
local tab_Content = {
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#sebachhomax(1)",
"ThiÕu L©m Bçng/#sebachhomax(2)",
"ThiÕu L©m §ao/#sebachhomax(3)",
"Thiªn V­¬ng Chïy/#sebachhomax(4)",
"Thiªn V­¬ng Th­¬ng/#sebachhomax(5)",
"Thiªn V­¬ng §ao/#sebachhomax(6)",
"Nga Mi KiÕm/#sebachhomax(7)",
"Nga Mi Ch­ëng/#sebachhomax(8)",
"Thóy Yªn §ao/#sebachhomax(9)",
"Thóy Yªn Song §ao/#sebachhomax(10)",
"Ngò §éc Ch­ëng/#sebachhomax(11)",
"Ngò §éc §ao/#sebachhomax(12)",
"§­êng M«n Phi §ao/#sebachhomax(13)",
"§­êng M«n Ná/#sebachhomax(14)",
"Trang sau/bachhomax2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function bachhomax2()
local tab_Content = {
"§­êng M«n Phi Tiªu/#sebachhomax(15)",
"C¸i Bang Rång/#sebachhomax(16)",
"C¸i Bang Bçng/#sebachhomax(17)",
"Thiªn NhÉn KÝch/#sebachhomax(18)",
"Thiªn NhÉn §ao/#sebachhomax(19)",
"Vâ §ang KiÕm/#sebachhomax(21)",
"Vâ §ang QuyÒn/#sebachhomax(20)",
"C«n L«n §ao/#sebachhomax(22)",
"C«n L«n KiÕm/#sebachhomax(23)",
"Hoa S¬n KhÝ T«ng/#sebachhomax(24)",
"Hoa S¬n KiÕm T«ng/#sebachhomax(25)",
"Tho¸t./no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function sebachhomax(nId)
for i = 4400, 4409 do
AddGoldItem(0,10*nId+i-10)
end
end
--------------------------------------------------------------------------------------------------------------------------------------
function kimomax()
local tab_Content = {
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#sekimomax(1)",
"ThiÕu L©m Bçng/#sekimomax(2)",
"ThiÕu L©m §ao/#sekimomax(3)",
"Thiªn V­¬ng Chïy/#sekimomax(4)",
"Thiªn V­¬ng Th­¬ng/#sekimomax(5)",
"Thiªn V­¬ng §ao/#sekimomax(6)",
"Nga Mi KiÕm/#sekimomax(7)",
"Nga Mi Ch­ëng/#sekimomax(8)",
"Thóy Yªn §ao/#sekimomax(9)",
"Thóy Yªn Song §ao/#sekimomax(10)",
"Ngò §éc Ch­ëng/#sekimomax(11)",
"Ngò §éc §ao/#sekimomax(12)",
"§­êng M«n Phi §ao/#sekimomax(13)",
"§­êng M«n Ná/#sekimomax(14)",
"Trang sau/kimomax2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function kimomax2()
local tab_Content = {
"§­êng M«n Phi Tiªu/#sekimomax(15)",
"C¸i Bang Rång/#sekimomax(16)",
"C¸i Bang Bçng/#sekimomax(17)",
"Thiªn NhÉn KÝch/#sekimomax(18)",
"Thiªn NhÉn §ao/#sekimomax(19)",
"Vâ §ang KiÕm/#sekimomax(21)",
"Vâ §ang QuyÒn/#sekimomax(20)",
"C«n L«n §ao/#sekimomax(22)",
"C«n L«n KiÕm/#sekimomax(23)",
"Hoa S¬n KhÝ T«ng/#sekimomax(24)",
"Hoa S¬n KiÕm T«ng/#sekimomax(25)",
"Tho¸t./no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function sekimomax(nId)
for i = 4150, 4159 do
AddGoldItem(0,10*nId+i-10)
end
end
