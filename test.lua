gg.setRanges(gg.REGION_BAD)
	gg.clearResults()
    gg.searchNumber('537149443', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	n = gg.getResultCount()
	local t = gg.getResults(n)
	local count = 0
	for i=1,#t do
	local check = gg.getValues({[1]={address = t[i].address-0xC,flags = gg.TYPE_DWORD}})
	local check2 = gg.getValues({[1]={address = t[i].address-0x4,flags = gg.TYPE_DWORD}})
    if(check[1].value == 4 and check2[1].value == 7) then
	gg.addListItems({[1]={address=t[i].address+0x7C,flags=gg.TYPE_FLOAT,value=99999}})
	count = count+1
    end
    end
	gg.clearResults()
    gg.searchNumber('537149445', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	n = gg.getResultCount()
	local t = gg.getResults(n)
	for i=1,#t do
	local check = gg.getValues({[1]={address = t[i].address-0xc,flags = gg.TYPE_DWORD}}) 
	local check2 = gg.getValues({[1]={address = t[i].address+0x4,flags = gg.TYPE_DWORD}}) 
    if(check[1].value == 6 and check2[1].value == 9) then
	gg.addListItems({[1]={address=t[i].address+0x84,flags=gg.TYPE_FLOAT,value=99999}})
    count = count+1	
    end
    end
	gg.toast('No Flick Fix '..count..' Value')
	gg.clearResults()
