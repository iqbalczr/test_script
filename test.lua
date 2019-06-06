gg.setRanges(gg.REGION_C_DATA)
gg.clearResults()
gg.searchNumber('-9.9887685e27F',gg.TYPE_FLOAT, false, gg.SIGN_EQUAL,0, -1)
local n = gg.getResultCount()
local t = gg.getResults(n)
local isOpen = 0
for i=1,#t do
	local check = gg.getValues({[1]={address = t[i].address+0x4,flags = gg.TYPE_FLOAT}})
	if(check[1].value >-1e28 and check[1].value < -9e28) then
    gg.addListItems({[1]={address=t[i].address-0x224,flags=gg.TYPE_FLOAT,value=500000}})   
	isOpen = 1
	end
end
if(isOpen == 1) then
gg.toast('Bullet Speed OK')
else
gg.toast('Value Not Found1')
end
gg.clearResults()
