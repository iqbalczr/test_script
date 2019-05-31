gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearResults()
gg.searchNumber('4,692,750,812,894,068,736',gg.TYPE_QWORD, false, gg.SIGN_EQUAL,0, -1)
local n = gg.getResultCount()
local t = gg.getResults(n)
local isOpen = 0
for i=1,#t do
	local check = gg.getValues({[1]={address = t[i].address-0xc,flags = gg.TYPE_DWORD}})
	local check2 = gg.getValues({[1]={address = t[i].address-0x224,flags = gg.TYPE_FLOAT}})
	local check3 = gg.getValues({[1]={address = t[i].address-0x200,flags = gg.TYPE_DWORD}})
	local check4 = gg.getValues({[1]={address = t[i].address-0x1f0,flags = gg.TYPE_DWORD}})
	local check5 = gg.getValues({[1]={address = t[i].address-0x21C,flags = gg.TYPE_DWORD}})
	if(check2[1].value >10000 and check2[1].value < 200000 and check[1].value == 1116471296 and check3[1].value == check4[1].value and check5[1].value ~= 0) then
    gg.addListItems({[1]={address=t[i].address-0x224,flags=gg.TYPE_FLOAT,value=500000}})   
	isOpen = 1
	end
end
if(isOpen == 1) then
gg.toast('Bullet Speed OK')
else
gg.toast('Value Not Found')
end
gg.clearResults()
