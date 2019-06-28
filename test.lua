    gg.setRanges(gg.REGION_BAD)
	gg.clearResults()
    gg.searchNumber('537149445', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	n = gg.getResultCount()
	local t = gg.getResults(n)
	for i=1,#t do
	local check = gg.getValues({[1]={address = t[i].address-0x4,flags = gg.TYPE_DWORD}})
	local check2 = gg.getValues({[1]={address = t[i].address-0xC,flags = gg.TYPE_DWORD}})
	local check3 = gg.getValues({[1]={address = t[i].address-0x4c,flags = gg.TYPE_DWORD}})
	local check4 = gg.getValues({[1]={address = t[i].address+0x84,flags = gg.TYPE_DWORD}})
    if(check[1].value == 9 and check2[1].value == 6 and check3[1].value == 4140 and check4[1].value == 1073741824) then
	gg.addListItems({[1]={address=t[i].address+0x84,flags=gg.TYPE_FLOAT,value=9999}}) 
    end
    end
	gg.toast('No Flick 50%')
	gg.clearResults()
	
    gg.searchNumber('1087373317', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	n = gg.getResultCount()
	local t = gg.getResults(n)
	for i=1,#t do
	local check = gg.getValues({[1]={address = t[i].address-0xc,flags = gg.TYPE_DWORD}}) 
	local check2 = gg.getValues({[1]={address = t[i].address+0x20,flags = gg.TYPE_DWORD}}) 
	local check3 = gg.getValues({[1]={address = t[i].address+0x8c,flags = gg.TYPE_DWORD}}) 
	local check4 = gg.getValues({[1]={address = t[i].address+0x90,flags = gg.TYPE_DWORD}})  
	local check5 = gg.getValues({[1]={address = t[i].address+0x94,flags = gg.TYPE_DWORD}})  
	local check6 = gg.getValues({[1]={address = t[i].address+0x98,flags = gg.TYPE_DWORD}})  
    if(check[1].value == 4140 and check2[1].value == 50331648 and check3[1].value == 1132396544 and check4[1].value == 1065353216 and check5[1].value == 1073741824 and check6[1].value == 1084227584) then
	gg.addListItems({[1]={address=t[i].address+0x94,flags=gg.TYPE_FLOAT,value=9999}}) 
    end
    end
	gg.toast('No Flick 100%')
	gg.clearResults()
