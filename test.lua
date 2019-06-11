gg.clearResults()
   gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('135,215D;4,140D;3.7615819e-37;2::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
     local t = gg.getResults(100)
    for i=1,#t do
	 gg.addListItems({[1]={address=t[i].address,flags=gg.TYPE_FLOAT,value=120}}) 
    end
    gg.clearResults()

    gg.searchNumber('194D;3.7615819e-37;2;-1;1;-127::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	local t = gg.getResults(100)
     for i=1,#t do
	 gg.addListItems({[1]={address=t[i].address,flags=gg.TYPE_FLOAT,value=120}}) 
    end
    gg.clearResults()
