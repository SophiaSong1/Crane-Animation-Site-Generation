-- This Script will reset your scene, so save before running it.
resetMaxFile #noPrompt

-- Function Definition
fn DrawBox      file    =
(
    local f = openFile file
    while (not eof f) do
        (
			local mod_name = readValue f ---1st column
			local a = [readValue f,readValue f,readValue f]  ---2nd, 3rd, 4th column
	        local l = readValue f ---5th column
			local w = readValue f ---6th column
			local h = readValue f ---7th column
			local cog = [readValue f,readValue f,readValue f] ---8th, 9th, 10th column
			
			myBox = box()
			myBox.name = mod_name as string
			myBox.pos = a as Point3
			myBox.length = l as integer
			myBox.width = w as integer
			myBox.height = h as integer
        )
    close f
)        

fn DrawCylinder   file   =
(
	local f = openFile file
	while (not eof f) do
	(
		local mod_name = readValue f ---1st column
		local a = [readValue f,readValue f,readValue f]  ---2nd, 3rd, 4th column
		local r = readValue f ---5th column
		local h = readValue f ---6th column
		local cog = [readValue f,readValue f,readValue f] ---7th, 8th, 9th column
		
		myCylinder = cylinder()
		myCylinder.name = mod_name as string
		myCylinder.pos = a as Point3
		myCylinder.radius = r as integer
		myCylinder.height = h as integer
	)
	close f
)
-- EVALUATE FUNCTION        
DrawBox    "D:\Vivian\UAlberta\2017-2018 Coop\3Ds Max\Crane Model\sample_site_data3.dat"
DrawCylinder    "D:\Vivian\UAlberta\2017-2018 Coop\3Ds Max\Crane Model\sample_site_cylinder.dat"