gg.setRanges(gg.REGION_BAD)
gg.clearResults()
gg.searchNumber('1661028354', gg.TYPE_DWORD, false, gg.SIGN_EQUAL,0,-1)
   local n = gg.getResultCount()
   local t = gg.getResults(n)
   local isOpen = 0
    for i=1,#t do
	local check = gg.getValues({[1]={address = t[i].address-0x34,flags = gg.TYPE_DWORD}})
	if(check[1].value == 299241) then
	  gg.addListItems({[1]={address=t[i].address+0x4,flags=gg.TYPE_DWORD,value=614717185}}) 
	  isOpen = 1
    end
    end
if(isOpen == 1) then
gg.toast('Body Color OK')
else
gg.toast('Value Not Found')
end
gg.clearResults()
