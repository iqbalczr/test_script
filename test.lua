gg.setRanges(gg.REGION_BAD)
   gg.clearResults()
   gg.searchNumber('-2145513280',gg.TYPE_DWORD, false, gg.SIGN_EQUAL,0, -1)---2.5774027e-39(-2145644352)/-2.7610737e-39(-2145513280) --身体+头透视
    local n = gg.getResultCount()
    local t = gg.getResults(n)
    for i=1,#t do
	local check = gg.getValues({[1]={address = t[i].address+0x120,flags = gg.TYPE_DWORD}})
    if(check[1].value == 1073741824) then
	 gg.setValues({[1]={address=t[i].address,flags=gg.TYPE_FLOAT,value=4444}}) 
    end
    end
	
   gg.clearResults()
   gg.searchNumber('-2147086191',gg.TYPE_DWORD, false, gg.SIGN_EQUAL,0, -1)---5.5695588e-40--身体+头马赛克
    local n = gg.getResultCount()
    local t = gg.getResults(n)
    for i=1,#t do
	local check = gg.getValues({[1]={address = t[i].address+0x3c,flags = gg.TYPE_DWORD}})
	local check2 = gg.getValues({[1]={address = t[i].address+0x4c,flags = gg.TYPE_DWORD}})
    if(check[1].value == 1073741824) then
	 gg.setValues({[1]={address=t[i].address,flags=gg.TYPE_FLOAT,value=4444}}) 
    end
    end
	gg.toast('Wall Hack 2 OK')
gg.clearResults()
