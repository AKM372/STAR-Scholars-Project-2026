//Maya ASCII 2027 scene
//Name: SM_door.ma
//Last modified: Fri, Jul 31, 2026 01:50:10 PM
//Codeset: 1252
requires maya "2027";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiStandardSurface"
		 -nodeType "aiImagerDenoiserOidn" "mtoa" "5.6.2";
requires -nodeType "UsdDefaultSettings" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.37.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2027";
fileInfo "version" "2027";
fileInfo "cutIdentifier" "202607171511-52c21617ee";
fileInfo "osv" "Windows 11 Home v2009 (Build: 26200)";
fileInfo "UUID" "96EE1220-44F0-347D-07A8-7FAF8B94132A";
createNode transform -s -n "persp";
	rename -uid "1E6B669F-422E-148C-D0C8-2EB2AD6E403B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 26.248927972540258 73.212086526773476 413.38778404494587 ;
	setAttr ".r" -type "double3" -369.59999999974417 -1436.3999999998807 -9.9588849641606826e-17 ;
	setAttr ".rpt" -type "double3" -3.9931903598794877e-15 6.7142300831288569e-16 -3.2141736647103213e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "7E9BC1C6-4384-F690-205A-1CAEAC64E448";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 416.49754159362226;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.46306394951095342 3.753313506701069 3.5332120066783856 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "CC2DF299-48F3-9450-7335-62ACC8FD1D1D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "6232DAC0-4282-ECC5-1F73-F39EE9E6E047";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "42FF160A-4BAB-8417-19DB-8BB79100F56F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "F2261DC1-4F55-6348-36C9-F3A88594065D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 370.79364336636667;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "EC75F5AF-4F8E-27B5-7943-5D92DF9D53DE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "FD52A0AC-4B0A-0B44-B12A-DEA740B259A2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "SM_door";
	rename -uid "3E686E6B-441E-1599-B19A-36B423D81DA0";
createNode mesh -n "SM_doorShape" -p "SM_door";
	rename -uid "FF109E71-4C3B-3B72-2DC7-F583E68C7E52";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.23076537251472473 0.3726338217498133 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "SM_doorknob" -p "SM_door";
	rename -uid "7EFAA0B6-43A1-CE02-8A97-A28BDF94A4A8";
	setAttr ".t" -type "double3" 29.536891907422799 -17.625385308723047 5.7610404171049296 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 3.8837052711228561 3.8837052711228561 3.8837052711228561 ;
createNode mesh -n "SM_doorknobShape" -p "SM_doorknob";
	rename -uid "36B8EF3E-4206-F8BD-4D7D-818566933E11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.031216015826076193 0.69149273712799042 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "SM_doorframe" -p "SM_door";
	rename -uid "546F3D6F-4591-FF7C-B5AA-E19F925BBADF";
	setAttr ".t" -type "double3" 0.46307876040959783 3.7532962102162344 0.921682267337534 ;
	setAttr ".s" -type "double3" 99.394258251368925 3.022779813369608 1 ;
createNode mesh -n "SM_doorframeShape" -p "SM_doorframe";
	rename -uid "5CB228A3-4FE7-BCB8-CD0B-05814986E4D5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.23076537251472473 0.50153267383575439 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "7DB0B612-4326-0E3C-3B1A-1787F96548C6";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode UsdDefaultSettings -n "UsdDefaultRenderSettings";
	rename -uid "5551AEC6-4B22-EAA9-6593-5E94FC201D71";
	setAttr ".srl" -type "string" "#usda 1.0\n(\n    renderSettingsPrimPath = \"/Render/SceneRenderSettings\"\n)\n\ndef Scope \"Render\"\n{\n    def RenderSettings \"SceneRenderSettings\"\n    {\n        custom string adskUsd:externalCamera = \"|persp\" (\n            displayName = \"External Camera\"\n        )\n        rel products = </Render/BeautyProduct>\n    }\n\n    def RenderVar \"color\"\n    {\n        uniform string sourceName = \"color\"\n    }\n\n    def RenderProduct \"BeautyProduct\"\n    {\n        rel orderedVars = </Render/color>\n        token productName = \"./default.png\"\n    }\n}\n\n";
	setAttr ".ssl" -type "string" "#usda 1.0\n\n";
	setAttr ".asp" -type "string" "UsdDefaultRenderSettings,/Render/SceneRenderSettings";
lockNode -l 1 ;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "10EAA4EE-4280-303F-FAED-CB8887ACDBB4";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "43F6392A-4104-4683-94BD-D0AE2A2677C6";
createNode displayLayerManager -n "layerManager";
	rename -uid "16B11C7D-474A-2C05-F921-A1A3C558DD47";
createNode displayLayer -n "defaultLayer";
	rename -uid "1F85839F-4792-858D-7A60-55A1A8423E0E";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A517ED14-454A-6D8B-7BC4-D3A4A2F30B78";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C327EAB8-4775-1138-D608-BFBFEE4ADECF";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "D8D69A5C-43BE-92DC-5CE3-90A79EACCBF0";
	setAttr ".w" 85;
	setAttr ".h" 204;
	setAttr ".d" 5;
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit1";
	rename -uid "7902F722-4FA2-56E9-5FB5-2C8BA3B36793";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483647 -2147483646 -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "BFC599CE-4E0F-19C3-B51F-8DB33FBB0E98";
	setAttr -s 7 ".e[0:6]"  0.94832498 0.051675498 0.051675498 0.051675498
		 0.94832498 0.94832498 0.94832498;
	setAttr -s 7 ".d[0:6]"  -2147483644 -2147483640 -2147483630 -2147483639 -2147483643 -2147483632 
		-2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "A437147F-4C8C-D4CC-DFA7-909717A968A6";
	setAttr -s 7 ".e[0:6]"  0.88425601 0.115744 0.115744 0.115744 0.88425601
		 0.88425601 0.88425601;
	setAttr -s 7 ".d[0:6]"  -2147483644 -2147483627 -2147483626 -2147483625 -2147483643 -2147483632 
		-2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "D69D6E6D-4A57-4D5E-C550-9CB56E33E924";
	setAttr -s 7 ".e[0:6]"  0.956043 0.043957099 0.043957099 0.043957099
		 0.956043 0.956043 0.956043;
	setAttr -s 7 ".d[0:6]"  -2147483644 -2147483615 -2147483614 -2147483613 -2147483643 -2147483632 
		-2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "5AB844AB-4EFB-4465-0EFD-64A8EFF386B7";
	setAttr -s 7 ".e[0:6]"  0.55015498 0.44984499 0.44984499 0.44984499
		 0.55015498 0.55015498 0.55015498;
	setAttr -s 7 ".d[0:6]"  -2147483644 -2147483603 -2147483602 -2147483601 -2147483643 -2147483632 
		-2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "67230353-4385-1B56-A7B2-019CD107A20D";
	setAttr -s 7 ".e[0:6]"  0.929766 0.070233501 0.070233501 0.070233501
		 0.929766 0.929766 0.929766;
	setAttr -s 7 ".d[0:6]"  -2147483644 -2147483591 -2147483590 -2147483589 -2147483643 -2147483632 
		-2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "99B33FA7-49DC-8275-3E35-33A066B58817";
	setAttr -s 7 ".e[0:6]"  0.083579697 0.91641998 0.91641998 0.91641998
		 0.083579697 0.083579697 0.083579697;
	setAttr -s 7 ".d[0:6]"  -2147483644 -2147483579 -2147483578 -2147483577 -2147483643 -2147483632 
		-2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "658CC3DD-4029-4C8D-E1C8-02983E27A2BA";
	setAttr -s 17 ".e[0:16]"  0.113288 0.88671201 0.88671201 0.88671201
		 0.88671201 0.88671201 0.88671201 0.113288 0.113288 0.113288 0.113288 0.113288 0.113288
		 0.113288 0.113288 0.113288 0.113288;
	setAttr -s 17 ".d[0:16]"  -2147483648 -2147483557 -2147483569 -2147483581 -2147483593 -2147483605 
		-2147483617 -2147483647 -2147483646 -2147483621 -2147483609 -2147483597 -2147483585 -2147483573 -2147483561 -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	rename -uid "484D6749-4A3E-3A45-0302-BE9233C5A324";
	setAttr -s 17 ".e[0:16]"  0.90434802 0.095651902 0.095651902 0.095651902
		 0.095651902 0.095651902 0.095651902 0.90434802 0.90434802 0.90434802 0.90434802 0.90434802
		 0.90434802 0.90434802 0.90434802 0.90434802 0.90434802;
	setAttr -s 17 ".d[0:16]"  -2147483636 -2147483558 -2147483570 -2147483582 -2147483594 -2147483606 
		-2147483618 -2147483635 -2147483634 -2147483620 -2147483608 -2147483596 -2147483584 -2147483572 -2147483560 -2147483633 -2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "A4AA2CF3-4FFB-56F9-1B82-DDB510ECDBBD";
	setAttr -s 11 ".e[0:10]"  0.238065 0.761935 0.761935 0.761935 0.761935
		 0.761935 0.238065 0.238065 0.238065 0.238065 0.238065;
	setAttr -s 11 ".d[0:10]"  -2147483644 -2147483567 -2147483526 -2147483566 -2147483494 -2147483565 
		-2147483643 -2147483508 -2147483632 -2147483540 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "BC005D80-4876-079A-394B-AB858CC35516";
	setAttr ".dc" -type "componentList" 15 "e[16:19]" "e[22]" "e[25]" "e[34]" "e[37]" "e[46]" "e[49]" "e[58]" "e[61]" "e[70]" "e[73]" "e[82]" "e[85]" "e[159]" "e[164]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "87964D7E-4D71-B4FE-D6A1-F1A792D2EFFA";
	setAttr ".dc" -type "componentList" 1 "vtx[0:89]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "23D83D28-4679-3499-7CE9-BDBD13625042";
	setAttr ".dc" -type "componentList" 1 "vtx[0:71]";
createNode polySplit -n "polySplit11";
	rename -uid "D1CCA0E0-41D7-4FAD-3044-579FFD9C0741";
	setAttr -s 19 ".e[0:18]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 19 ".d[0:18]"  -2147483588 -2147483510 -2147483555 -2147483554 -2147483553 -2147483552 
		-2147483551 -2147483550 -2147483581 -2147483580 -2147483579 -2147483578 -2147483577 -2147483576 -2147483575 -2147483574 -2147483514 -2147483573 
		-2147483588;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "40685CA6-4AC7-31E8-FAC3-46807E0D5A94";
	setAttr -s 19 ".e[0:18]"  0.934605 0.934605 0.065394603 0.065394603
		 0.065394603 0.065394603 0.065394603 0.065394603 0.065394603 0.065394603 0.065394603
		 0.065394603 0.065394603 0.934605 0.934605 0.934605 0.934605 0.934605 0.934605;
	setAttr -s 19 ".d[0:18]"  -2147483555 -2147483510 -2147483508 -2147483491 -2147483492 -2147483493 
		-2147483494 -2147483495 -2147483496 -2147483497 -2147483498 -2147483499 -2147483500 -2147483550 -2147483551 -2147483552 -2147483553 -2147483554 
		-2147483555;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "034CCAAF-4E0C-7A89-117F-FC8666326F2A";
	setAttr -s 19 ".e[0:18]"  0.92924398 0.070755497 0.070755497 0.070755497
		 0.070755497 0.070755497 0.070755497 0.070755497 0.92924398 0.92924398 0.92924398
		 0.92924398 0.92924398 0.92924398 0.92924398 0.92924398 0.92924398 0.92924398 0.92924398;
	setAttr -s 19 ".d[0:18]"  -2147483588 -2147483507 -2147483506 -2147483505 -2147483504 -2147483503 
		-2147483502 -2147483501 -2147483581 -2147483580 -2147483579 -2147483578 -2147483577 -2147483576 -2147483575 -2147483574 -2147483514 -2147483573 
		-2147483588;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "AF0EFC34-4D61-7E63-283E-17BE7181532C";
	setAttr ".ics" -type "componentList" 1 "f[35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -20.001726 80.262482 2.5 ;
	setAttr ".rs" 35462;
	setAttr ".ls" -type "double3" 0.76432751395157827 0.69460764763187688 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -37.685260772705078 69.066665649414062 2.5 ;
	setAttr ".cbx" -type "double3" -2.3181922435760498 91.458297729492188 2.5 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "5B6885A7-4CAA-F2B7-DEA2-ED84B2350067";
	setAttr ".ics" -type "componentList" 1 "f[76]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20.649246 80.262482 2.5 ;
	setAttr ".rs" 33549;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.8637006282806396 69.066665649414062 2.5 ;
	setAttr ".cbx" -type "double3" 38.434791564941406 91.458297729492188 2.5 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "BEC61CA1-48D4-81EE-5FD1-71A4D57ABA05";
	setAttr ".ics" -type "componentList" 1 "f[74]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20.649246 24.761667 2.5 ;
	setAttr ".rs" 60542;
	setAttr ".ls" -type "double3" 0.76008628074012152 0.83360748429840703 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.8637006282806396 -12.023755073547363 2.5 ;
	setAttr ".cbx" -type "double3" 38.434791564941406 61.547088623046875 2.5 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "D5D5E8AF-4C0F-92EE-2168-19BAF6F80C4F";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[37]" -type "float3" 1.6689301e-06 1.1920929e-06 0 ;
	setAttr ".tk[38]" -type "float3" 1.6689301e-06 -1.1920929e-06 0 ;
	setAttr ".tk[41]" -type "float3" -1.9073486e-06 2.3841858e-07 0 ;
	setAttr ".tk[42]" -type "float3" -1.9073486e-06 -7.1525574e-07 0 ;
	setAttr ".tk[51]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[52]" -type "float3" 0 9.5367432e-07 0 ;
	setAttr ".tk[105]" -type "float3" 0 9.5367432e-07 0 ;
	setAttr ".tk[106]" -type "float3" 0 -9.5367432e-07 0 ;
	setAttr ".tk[114]" -type "float3" -1.6689301e-06 1.1920929e-06 0 ;
	setAttr ".tk[115]" -type "float3" -1.6689301e-06 -1.1920929e-06 0 ;
	setAttr ".tk[118]" -type "float3" 9.5367432e-07 2.3841858e-07 0 ;
	setAttr ".tk[119]" -type "float3" 9.5367432e-07 4.7683716e-07 0 ;
	setAttr ".tk[126]" -type "float3" -2.3841858e-07 -2.3841858e-07 0 ;
	setAttr ".tk[127]" -type "float3" -2.3841858e-07 2.3841858e-07 0 ;
	setAttr ".tk[128]" -type "float3" -2.3841858e-07 -2.3841858e-07 0 ;
	setAttr ".tk[129]" -type "float3" -2.3841858e-07 2.3841858e-07 0 ;
	setAttr ".tk[130]" -type "float3" 4.4943852 -3.2462907 0 ;
	setAttr ".tk[131]" -type "float3" 4.4943852 3.2462907 0 ;
	setAttr ".tk[132]" -type "float3" -4.4943852 3.2462907 0 ;
	setAttr ".tk[133]" -type "float3" -4.4943852 -3.2462907 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "3B95A7A1-478F-D354-7992-5DB4426DDCA7";
	setAttr ".ics" -type "componentList" 1 "f[33]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -20.001726 24.761667 2.5 ;
	setAttr ".rs" 48788;
	setAttr ".ls" -type "double3" 0.7850060623605537 0.83808832643150388 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -37.685260772705078 -12.023755073547363 2.5 ;
	setAttr ".cbx" -type "double3" -2.3181905746459961 61.547088623046875 2.5 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "B1C84013-429C-440B-8AA9-9FB53F237A3F";
	setAttr ".ics" -type "componentList" 1 "f[72]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20.649246 -56.675564 2.5 ;
	setAttr ".rs" 52140;
	setAttr ".ls" -type "double3" 0.74673443440007636 0.82778397088126698 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.8637006282806396 -95.007980346679688 2.5 ;
	setAttr ".cbx" -type "double3" 38.434791564941406 -18.343145370483398 2.5 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "7418569E-4D28-97DD-E939-238FBD793854";
	setAttr ".ics" -type "componentList" 1 "f[31]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -20.001724 -56.675564 2.5 ;
	setAttr ".rs" 64200;
	setAttr ".ls" -type "double3" 0.75285650424798567 0.84674435429764339 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -37.685260772705078 -95.007980346679688 2.5 ;
	setAttr ".cbx" -type "double3" -2.3181886672973633 -18.343145370483398 2.5 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "8D37A8DC-4FC3-5AC0-C147-47A8E9363EAC";
	setAttr ".ics" -type "componentList" 8 "f[31]" "f[33]" "f[35]" "f[72]" "f[74]" "f[76]" "f[80]" "f[124:147]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.3747654 -1.7748413 0 ;
	setAttr ".rs" 43778;
	setAttr ".lt" -type "double3" 0 0 -2.2808217744530168 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -37.685260772705078 -95.007980346679688 -2.5 ;
	setAttr ".cbx" -type "double3" 38.434791564941406 91.458297729492188 2.5 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "BD4172A3-44C3-D33C-9AFE-A8A27EEE1972";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[126]" -type "float3" 0 0 2.1305041 ;
	setAttr ".tk[127]" -type "float3" 0 0 2.1305041 ;
	setAttr ".tk[128]" -type "float3" 0 0 2.1305041 ;
	setAttr ".tk[129]" -type "float3" 0 0 2.1305041 ;
	setAttr ".tk[134]" -type "float3" 0 0 2.1305041 ;
	setAttr ".tk[135]" -type "float3" 0 0 2.1305041 ;
	setAttr ".tk[136]" -type "float3" 0 0 2.1305041 ;
	setAttr ".tk[137]" -type "float3" 0 0 2.1305041 ;
	setAttr ".tk[142]" -type "float3" 0 0 2.1305041 ;
	setAttr ".tk[143]" -type "float3" 0 0 2.1305041 ;
	setAttr ".tk[144]" -type "float3" 0 0 2.1305041 ;
	setAttr ".tk[145]" -type "float3" 0 0 2.1305041 ;
	setAttr ".tk[150]" -type "float3" 0 0 2.1305041 ;
	setAttr ".tk[151]" -type "float3" 0 0 2.1305041 ;
	setAttr ".tk[152]" -type "float3" 0 0 2.1305041 ;
	setAttr ".tk[153]" -type "float3" 0 0 2.1305041 ;
	setAttr ".tk[158]" -type "float3" 0 0 2.1305041 ;
	setAttr ".tk[159]" -type "float3" 0 0 2.1305041 ;
	setAttr ".tk[160]" -type "float3" 0 0 2.1305041 ;
	setAttr ".tk[161]" -type "float3" 0 0 2.1305041 ;
	setAttr ".tk[166]" -type "float3" 0 0 2.1305041 ;
	setAttr ".tk[167]" -type "float3" 0 0 2.1305041 ;
	setAttr ".tk[168]" -type "float3" 0 0 2.1305041 ;
	setAttr ".tk[169]" -type "float3" 0 0 2.1305041 ;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "1B66BD0C-4683-854F-2037-BFBF0013171C";
	setAttr ".dc" -type "componentList" 1 "f[80]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "08B510E1-49F1-9136-B660-6FBAAC8CC995";
	setAttr ".dc" -type "componentList" 2 "f[12]" "f[174]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "2646BF16-43CD-AD03-A1DB-46A6BEDA1891";
	setAttr ".dc" -type "componentList" 1 "f[172]";
createNode deleteComponent -n "deleteComponent7";
	rename -uid "2997D8D7-4DBB-B80B-BBAE-52A65F3A3F9A";
	setAttr ".dc" -type "componentList" 1 "f[171]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "7CB7CC7D-4C5F-4292-EE15-10BD0278C9CF";
	setAttr ".dc" -type "componentList" 1 "f[170]";
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "74F1F33E-463A-D163-6221-C08B68BA029F";
	setAttr ".ics" -type "componentList" 3 "e[117]" "e[185:186]" "e[203]";
createNode polyCloseBorder -n "polyCloseBorder2";
	rename -uid "F4D8E95B-4DFC-359E-3B71-DBACEFE8B516";
	setAttr ".ics" -type "componentList" 4 "e[14]" "e[18]" "e[23]" "e[26]";
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "91B4229B-430E-59D6-F89F-0883CA28046D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:343]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak3";
	rename -uid "730B79D4-43DA-3796-8B5F-75A69527EA4A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[170:173]" -type "float3"  1.85165846 -1.16559982 6.5213386e-09
		 1.85165846 1.16559982 -6.5213386e-09 -1.85165846 1.16559982 -6.5213386e-09 -1.85165846
		 -1.16559982 6.5213386e-09;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "29AC4C62-4078-C07C-4019-79B480C8B2C6";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySplit -n "polySplit14";
	rename -uid "5FB919A2-4259-FC60-9DF4-508E77E1DC11";
	setAttr -s 21 ".e[0:20]"  0.41690901 0.41690901 0.41690901 0.41690901
		 0.41690901 0.41690901 0.41690901 0.41690901 0.41690901 0.41690901 0.41690901 0.41690901
		 0.41690901 0.41690901 0.41690901 0.41690901 0.41690901 0.41690901 0.41690901 0.41690901
		 0.41690901;
	setAttr -s 21 ".d[0:20]"  -2147483608 -2147483589 -2147483590 -2147483591 -2147483592 -2147483593 
		-2147483594 -2147483595 -2147483596 -2147483597 -2147483598 -2147483599 -2147483600 -2147483601 -2147483602 -2147483603 -2147483604 -2147483605 
		-2147483606 -2147483607 -2147483608;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	rename -uid "D4831695-4C6F-2DF1-C18F-57B4F8E98D97";
	setAttr -s 21 ".e[0:20]"  0.823138 0.823138 0.823138 0.823138 0.823138
		 0.823138 0.823138 0.823138 0.823138 0.823138 0.823138 0.823138 0.823138 0.823138
		 0.823138 0.823138 0.823138 0.823138 0.823138 0.823138 0.823138;
	setAttr -s 21 ".d[0:20]"  -2147483608 -2147483589 -2147483590 -2147483591 -2147483592 -2147483593 
		-2147483594 -2147483595 -2147483596 -2147483597 -2147483598 -2147483599 -2147483600 -2147483601 -2147483602 -2147483603 -2147483604 -2147483605 
		-2147483606 -2147483607 -2147483608;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "C49BCB85-4D0F-522B-F485-3B8180F9D805";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[20:39]";
	setAttr ".ix" -type "matrix" 3.8837052711228561 0 0 0 0 0 3.8837052711228561 0 0 -3.8837052711228561 0 0
		 29.536891907422799 -16.541568928430372 16.340540786052394 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.25;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak4";
	rename -uid "89E7E21C-44BE-1F8C-F756-CA93940F220D";
	setAttr ".uopa" yes;
	setAttr -s 41 ".tk";
	setAttr ".tk[0]" -type "float3" -0.50176877 -0.29193789 0.16303442 ;
	setAttr ".tk[1]" -type "float3" -0.42683011 -0.29193789 0.31010991 ;
	setAttr ".tk[2]" -type "float3" -0.31011021 -0.29193789 0.42682979 ;
	setAttr ".tk[3]" -type "float3" -0.16303453 -0.29193789 0.50176847 ;
	setAttr ".tk[4]" -type "float3" -6.289369e-08 -0.29193789 0.52759069 ;
	setAttr ".tk[5]" -type "float3" 0.16303442 -0.29193789 0.50176841 ;
	setAttr ".tk[6]" -type "float3" 0.31010988 -0.29193789 0.42682981 ;
	setAttr ".tk[7]" -type "float3" 0.42682979 -0.29193789 0.31010985 ;
	setAttr ".tk[8]" -type "float3" 0.50176835 -0.29193789 0.16303433 ;
	setAttr ".tk[9]" -type "float3" 0.52759057 -0.29193789 -9.4340521e-08 ;
	setAttr ".tk[10]" -type "float3" 0.50176835 -0.29193789 -0.16303451 ;
	setAttr ".tk[11]" -type "float3" 0.42682976 -0.29193789 -0.31011003 ;
	setAttr ".tk[12]" -type "float3" 0.31010985 -0.29193789 -0.42682979 ;
	setAttr ".tk[13]" -type "float3" 0.16303438 -0.29193789 -0.50176847 ;
	setAttr ".tk[14]" -type "float3" -4.7170264e-08 -0.29193789 -0.52759069 ;
	setAttr ".tk[15]" -type "float3" -0.16303444 -0.29193789 -0.50176841 ;
	setAttr ".tk[16]" -type "float3" -0.31010988 -0.29193789 -0.42682981 ;
	setAttr ".tk[17]" -type "float3" -0.42682979 -0.29193789 -0.31010997 ;
	setAttr ".tk[18]" -type "float3" -0.50176835 -0.29193789 -0.1630345 ;
	setAttr ".tk[19]" -type "float3" -0.52759057 -0.29193789 -9.4340521e-08 ;
	setAttr ".tk[40]" -type "float3" -6.289369e-08 -0.29193789 -9.4340521e-08 ;
	setAttr ".tk[62]" -type "float3" -0.50176877 -0.031926207 0.16303442 ;
	setAttr ".tk[63]" -type "float3" -0.52759057 -0.031926207 -9.4340521e-08 ;
	setAttr ".tk[64]" -type "float3" -0.50176835 -0.031926207 -0.1630345 ;
	setAttr ".tk[65]" -type "float3" -0.42682981 -0.031926207 -0.31011003 ;
	setAttr ".tk[66]" -type "float3" -0.31010988 -0.031926207 -0.42682981 ;
	setAttr ".tk[67]" -type "float3" -0.16303445 -0.031926207 -0.50176841 ;
	setAttr ".tk[68]" -type "float3" -4.7170264e-08 -0.031926207 -0.52759069 ;
	setAttr ".tk[69]" -type "float3" 0.16303438 -0.031926207 -0.50176853 ;
	setAttr ".tk[70]" -type "float3" 0.31010985 -0.031926207 -0.42682981 ;
	setAttr ".tk[71]" -type "float3" 0.42682976 -0.031926207 -0.31011003 ;
	setAttr ".tk[72]" -type "float3" 0.50176835 -0.031926207 -0.16303451 ;
	setAttr ".tk[73]" -type "float3" 0.52759057 -0.031926207 -9.4340521e-08 ;
	setAttr ".tk[74]" -type "float3" 0.50176835 -0.031926207 0.16303433 ;
	setAttr ".tk[75]" -type "float3" 0.42682979 -0.031926207 0.31010985 ;
	setAttr ".tk[76]" -type "float3" 0.31010988 -0.031926207 0.42682981 ;
	setAttr ".tk[77]" -type "float3" 0.16303442 -0.031926207 0.50176847 ;
	setAttr ".tk[78]" -type "float3" -6.289369e-08 -0.031926207 0.52759069 ;
	setAttr ".tk[79]" -type "float3" -0.16303451 -0.031926207 0.50176853 ;
	setAttr ".tk[80]" -type "float3" -0.31011021 -0.031926207 0.42682981 ;
	setAttr ".tk[81]" -type "float3" -0.42683011 -0.031926207 0.31010991 ;
createNode polySoftEdge -n "polySoftEdge2";
	rename -uid "178B2176-48A3-A921-8EBF-209BF024BFC9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 3.8837052711228561 0 0 0 0 0 3.8837052711228561 0 0 -3.8837052711228561 0 0
		 29.536891907422799 -16.541568928430372 16.340540786052394 1;
	setAttr ".a" 180;
createNode aiStandardSurface -n "M_door";
	rename -uid "EBB3B28C-4613-B839-E2DE-3596D8258936";
createNode shadingEngine -n "aiStandardSurface1SG";
	rename -uid "06970D44-4FC1-D6C2-AF42-809590F8DC9F";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "17E46DE7-4940-B7BB-1FAC-349AFF4A1EA5";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "7908DF77-43E7-B3D8-26C5-EB8A23026EC5";
	setAttr ".version" -type "string" "5.6.2";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "4A19332F-4899-8526-35B0-84BC7E2AF4DE";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "A490948D-42F9-CDDB-2ED1-6F8C358ED534";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "125E1B7D-4022-3052-61DC-9FAC597FB8E7";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode aiImagerDenoiserOidn -s -n "defaultArnoldDenoiser";
	rename -uid "1FA3750D-410D-E01B-3896-0A854CB6390F";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "D5B342CC-45A6-8007-C9D2-AA99D79EDADB";
	setAttr ".dc" -type "componentList" 1 "f[23]";
createNode deleteComponent -n "deleteComponent10";
	rename -uid "9F795DE9-48EA-6818-B928-0486A6968268";
	setAttr ".dc" -type "componentList" 1 "f[23]";
createNode deleteComponent -n "deleteComponent11";
	rename -uid "9169478F-4827-F0D4-83F9-F9A1EBAE71A5";
	setAttr ".dc" -type "componentList" 1 "f[23]";
createNode deleteComponent -n "deleteComponent12";
	rename -uid "0194F579-4C5D-B33A-908B-D79DE01A1D48";
	setAttr ".dc" -type "componentList" 1 "f[25]";
createNode deleteComponent -n "deleteComponent13";
	rename -uid "716063A1-4416-8BB8-E7A0-FAA0FA2D3416";
	setAttr ".dc" -type "componentList" 1 "f[24]";
createNode deleteComponent -n "deleteComponent14";
	rename -uid "93DC2AD3-4A98-5874-C2FD-F387D92ABF72";
	setAttr ".dc" -type "componentList" 1 "f[23]";
createNode deleteComponent -n "deleteComponent15";
	rename -uid "90A45723-4719-2120-2585-0DB6C6DB88A2";
	setAttr ".dc" -type "componentList" 1 "f[22]";
createNode deleteComponent -n "deleteComponent16";
	rename -uid "DCCCC3E1-4243-7B62-9999-39B80692EDB6";
	setAttr ".dc" -type "componentList" 1 "f[21]";
createNode deleteComponent -n "deleteComponent17";
	rename -uid "40FDF2D3-410C-6856-DA9F-A78596D84390";
	setAttr ".dc" -type "componentList" 1 "f[20]";
createNode deleteComponent -n "deleteComponent18";
	rename -uid "2273F459-4C7C-FBE4-B996-C68FB71C13AD";
	setAttr ".dc" -type "componentList" 1 "f[30]";
createNode deleteComponent -n "deleteComponent19";
	rename -uid "51B799F7-48EA-5EC8-7670-15AECDB59EE8";
	setAttr ".dc" -type "componentList" 1 "f[29]";
createNode deleteComponent -n "deleteComponent20";
	rename -uid "59BBC7DE-48AD-5268-D18E-C58091A277E8";
	setAttr ".dc" -type "componentList" 1 "f[28]";
createNode deleteComponent -n "deleteComponent21";
	rename -uid "47AE1BA9-402C-F250-0C1F-F99CC435B02A";
	setAttr ".dc" -type "componentList" 1 "f[27]";
createNode deleteComponent -n "deleteComponent22";
	rename -uid "BD3AADA1-40F4-E6A7-7472-8BB21239A115";
	setAttr ".dc" -type "componentList" 1 "f[26]";
createNode deleteComponent -n "deleteComponent23";
	rename -uid "5A276481-4388-88AA-7DBD-6F87C33819EB";
	setAttr ".dc" -type "componentList" 1 "f[25]";
createNode deleteComponent -n "deleteComponent24";
	rename -uid "5D0B5088-4719-1D0C-0089-13BA4092F728";
	setAttr ".dc" -type "componentList" 1 "f[24]";
createNode deleteComponent -n "deleteComponent25";
	rename -uid "C2F4EA02-44E0-DE44-365C-508691808DCB";
	setAttr ".dc" -type "componentList" 1 "f[23]";
createNode deleteComponent -n "deleteComponent26";
	rename -uid "2BB1005A-4283-72D4-6116-EA886A35FB4F";
	setAttr ".dc" -type "componentList" 1 "f[22]";
createNode deleteComponent -n "deleteComponent27";
	rename -uid "A166AB91-4B34-ADC6-7399-FD96237A7B9A";
	setAttr ".dc" -type "componentList" 1 "f[21]";
createNode deleteComponent -n "deleteComponent28";
	rename -uid "FC9B68CE-44FC-8A5C-4C33-7797E84B1C66";
	setAttr ".dc" -type "componentList" 1 "f[20]";
createNode polyCube -n "polyCube2";
	rename -uid "2086D04D-4057-C1F2-F314-7F95E5C36460";
	setAttr ".h" 70;
	setAttr ".d" 7;
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit16";
	rename -uid "F8F5DEB3-4A92-0CC1-DD82-D4B3E4D5941E";
	setAttr -s 5 ".e[0:4]"  0.068480402 0.068480402 0.068480402 0.068480402
		 0.068480402;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483647 -2147483646 -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "83ED7916-42FD-668B-75CD-F08B72DE9715";
	setAttr -s 5 ".e[0:4]"  0.91930801 0.91930801 0.91930801 0.91930801
		 0.91930801;
	setAttr -s 5 ".d[0:4]"  -2147483636 -2147483635 -2147483634 -2147483633 -2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit18";
	rename -uid "94553A64-4472-53BC-A069-FEAEA07378E0";
	setAttr -s 9 ".e[0:8]"  0.96264601 0.037354499 0.037354499 0.037354499
		 0.037354499 0.96264601 0.96264601 0.96264601 0.96264601;
	setAttr -s 9 ".d[0:8]"  -2147483644 -2147483640 -2147483630 -2147483622 -2147483639 -2147483643 
		-2147483624 -2147483632 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent29";
	rename -uid "5DA2B107-41DE-11B4-E712-4E9505DD8641";
	setAttr ".dc" -type "componentList" 1 "f[6]";
createNode deleteComponent -n "deleteComponent30";
	rename -uid "9E2ADE77-43DD-E132-25D6-24A8A451ACC1";
	setAttr ".dc" -type "componentList" 1 "f[7]";
createNode deleteComponent -n "deleteComponent31";
	rename -uid "EB0EBB91-4837-43F6-A694-8CBCD76AABAB";
	setAttr ".dc" -type "componentList" 1 "f[7]";
createNode polySplit -n "polySplit19";
	rename -uid "8F3DB3B9-432B-13AD-F74D-A1A9BF48CE37";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483611 -2147483639;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit20";
	rename -uid "687DF645-4E1C-1614-E161-599985ADB966";
	setAttr ".e[0]"  0.77572501;
	setAttr ".d[0]"  -2147483632;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent32";
	rename -uid "1D3458D0-4AFE-1972-FA17-82B9113D0ED4";
	setAttr ".dc" -type "componentList" 1 "e[42]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "996A1299-4067-FF1C-09FD-48BB6B5CADDA";
	setAttr ".ics" -type "componentList" 2 "e[36]" "e[40]";
	setAttr ".ix" -type "matrix" 99.394258251368925 0 0 0 0 3.022779813369608 0 0 0 0 1 0
		 -108.7817313346123 3.7532962102162344 -2.65572143621187 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 18;
	setAttr ".sv2" 22;
	setAttr ".d" 1;
	setAttr ".sd" 1;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	rename -uid "5CC6B168-4839-52FE-CD44-3F8EBE03DDF2";
	setAttr ".ics" -type "componentList" 2 "e[22]" "e[29]";
	setAttr ".ix" -type "matrix" 99.394258251368925 0 0 0 0 3.022779813369608 0 0 0 0 1 0
		 -108.7817313346123 3.7532962102162344 -2.65572143621187 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 12;
	setAttr ".sv2" 19;
	setAttr ".d" 1;
	setAttr ".sd" 1;
createNode polyBridgeEdge -n "polyBridgeEdge3";
	rename -uid "44DB19DB-449C-3FF9-4AA5-0194D6C592CA";
	setAttr ".ics" -type "componentList" 2 "e[14]" "e[28]";
	setAttr ".ix" -type "matrix" 99.394258251368925 0 0 0 0 3.022779813369608 0 0 0 0 1 0
		 -108.7817313346123 3.7532962102162344 -2.65572143621187 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 23;
	setAttr ".sv2" 11;
	setAttr ".d" 1;
	setAttr ".sd" 1;
createNode polyMapSewMove -n "polyMapSewMove1";
	rename -uid "A9DE5EB2-4752-34E1-7FD3-D7992DFAA1E6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:44]";
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "0F610592-452A-6CC8-7CE2-03B2D6C78F8C";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:21]";
	setAttr ".ix" -type "matrix" 99.394258251368925 0 0 0 0 3.022779813369608 0 0 0 0 1 0
		 0.46307876040959783 3.7532962102162344 0.921682267337534 1;
	setAttr ".s" -type "double3" 211.59455234290289 211.59455234290289 211.59455234290289 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyMapSewMove -n "polyMapSewMove2";
	rename -uid "A140A35C-4536-8B9D-C9A1-449EABD4E297";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[9]" "e[30]";
createNode polyMapSewMove -n "polyMapSewMove3";
	rename -uid "7132822E-402F-B26C-84C5-DDA00EDAAAB3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[5]" "e[31]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "41D62F24-44B3-48D2-8747-0BAAAF87FF19";
	setAttr ".uopa" yes;
	setAttr -s 59 ".uvtk[0:58]" -type "float2" -0.048934631 -0.17994648
		 0.026699692 -0.18102556 0.058103111 0.080359444 -0.017531186 0.081438839 0.05932169
		 0.090502277 -0.016312622 0.091581449 0.17885745 -0.47427696 0.13598801 -0.46631646
		 -0.09565191 0.22570235 -0.052782334 0.21774149 -0.10464032 0.25255507 -0.061770886
		 0.24459451 -0.049989283 -0.35458744 0.0076414049 0.35260707 0.049989283 0.3545872
		 -0.0076414049 -0.35260689 0.049989641 0.35458905 -0.0076414943 -0.35260826 -0.049989611
		 -0.35458881 0.0076414645 0.35260808 -0.063560575 0.044268634 -0.054820836 0.044342462
		 -0.054896772 -0.045269281 -0.063636482 -0.045343105 0.054470122 0.045265675 0.054394245
		 -0.044346064 0.064063132 0.045346711 0.063987195 -0.044265032 -0.0058784187 0.046968706
		 0.0021654367 0.043358345 0.0058784187 -0.046968706 -0.0021654367 -0.043358345 -0.0063301325
		 -0.0473007 -0.0024065077 0.043113027 0.0063301027 0.0473007 0.0024065077 -0.043113027
		 -0.044157505 0.084285639 0.037848353 0.0075696725 0.044157505 -0.084285632 -0.037848353
		 -0.0075696781 0.27715689 -0.16462266 0.25482607 -0.16567206 0.28622952 0.09571328
		 0.30856031 0.09676265 0.28744808 0.10585589 0.30977887 0.10690527 0.0069798529 0.082590669
		 0.0081984103 0.092733271 -0.024423592 -0.17879468 -0.26798838 0.065035567 -0.24565759
		 0.066084944 -0.27706102 -0.19529992 -0.29939181 -0.19634926 -0.26676983 0.075178497
		 -0.24443902 0.076227874 -0.24538429 0.068360023 0.033592112 0.079207562 0.034810655
		 0.089350484 0.0021886639 -0.18217731;
createNode polyLayoutUV -n "polyLayoutUV1";
	rename -uid "C0AD121C-462C-A94D-8073-15BDEE560BB2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:21]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "30DFFC14-45F4-44FF-C434-2B95F4CEAB49";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk[6:11]" -type "float2" 0.42256379 -0.19171873 0.42256367
		 -0.19171873 0.42256373 -0.19171873 0.42256373 -0.19171873 0.42256373 -0.19171873
		 0.42256373 -0.19171873;
createNode polyMapSewMove -n "polyMapSewMove4";
	rename -uid "8061D86E-41D0-0890-BA21-1EACF1DA480A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[8]" "e[27]";
createNode polyMapSewMove -n "polyMapSewMove5";
	rename -uid "DC5B096D-41F3-1825-285A-1ABF0FBBEAE9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[29]";
createNode polyMapSewMove -n "polyMapSewMove6";
	rename -uid "D0E4A931-4FA4-BE35-BE84-44B401641620";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[14]";
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "B9734AAB-4B35-BC74-7100-988DC7D4BDA6";
	setAttr ".uopa" yes;
	setAttr -s 52 ".uvtk[0:51]" -type "float2" 1.36053276 0.29300001 1.34409833
		 0.32890362 0.49461633 1.027035356 0.51715535 0.99113214 0.49461287 0.80772626 0.49928388
		 0.80772316 -0.89918709 0.19348386 -0.84185195 -0.21375033 0.33587241 1.4532516 0.27859941
		 1.37605023 0.29950976 1.20352244 0.27859351 1.068307877 1.42705488 0.057834536 0.6236878
		 1.72483623 0.52019173 1.4826107 1.36973596 0.30004439 0.37371677 0.53073585 0.37386858
		 -1.84105289 0.51191598 -2.083263874 0.51170194 0.75443971 0 -1.8626451e-08 0 -1.8626451e-08
		 2.9802322e-08 -1.4901161e-08 0 -2.2351742e-08 0 1.8626451e-08 0 1.4901161e-08 -5.9604645e-08
		 2.2351742e-08 0 2.2351742e-08 0 3.7252903e-09 0 0 0 -3.7252903e-09 0 0 0 3.7252903e-09
		 0 -7.4505806e-09 0 1.1175871e-08 0 -3.7252903e-09 -5.9604645e-08 7.4505806e-09 5.9604645e-08
		 3.7252903e-09 5.9604645e-08 -1.1175871e-08 -5.9604645e-08 0 0.34218556 -1.59883785
		 0.342096 0.28851473 0.32844532 0.31560764 0.39630365 0.31560463 0.66547775 0.99112886
		 0.62017524 0.80771989 1.36658788 0.29299679 0.25528559 1.24043083 -0.88968968 0.54229915
		 0.25528213 0.91723001 0.25528482 0.99188662 0.52021933 0.91719264;
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "0F063570-4039-809A-B7A0-45882017720B";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:21]";
	setAttr ".ix" -type "matrix" 99.394258251368925 0 0 0 0 3.022779813369608 0 0 0 0 1 0
		 0.46307876040959783 3.7532962102162344 0.921682267337534 1;
	setAttr ".s" -type "double3" 211.59455234290289 211.59455234290289 211.59455234290289 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "C6B14270-4033-9227-329B-908E882332AD";
	setAttr ".uopa" yes;
	setAttr -s 65 ".uvtk[0:64]" -type "float2" 0.15937799 -0.47634143 0.11663742
		 -0.46936268 -0.086434111 0.22641575 -0.043693662 0.21943742 -0.094314098 0.25341481
		 -0.051573537 0.24643606 0.17885745 -0.47427696 0.13598801 -0.46631646 -0.09565191
		 0.22570235 -0.052782334 0.21774149 -0.10464032 0.25255507 -0.061770886 0.24459451
		 -0.049989283 -0.35458744 0.0076414049 0.35260707 0.049989283 0.3545872 -0.0076414049
		 -0.35260689 0.049989641 0.35458905 -0.0076414943 -0.35260826 -0.049989611 -0.35458881
		 0.0076414645 0.35260808 -0.063560575 0.044268634 -0.054820836 0.044342462 -0.054896772
		 -0.045269281 -0.063636482 -0.045343105 0.054470122 0.045265675 0.054394245 -0.044346064
		 0.064063132 0.045346711 0.063987195 -0.044265032 -0.0058784187 0.046968706 0.0021654367
		 0.043358345 0.0058784187 -0.046968706 -0.0021654367 -0.043358345 -0.0063301325 -0.0473007
		 -0.0024065077 0.043113027 0.0063301027 0.0473007 0.0024065077 -0.043113027 -0.044157505
		 0.084285639 0.037848353 0.0075696725 0.044157505 -0.084285632 -0.037848353 -0.0075696781
		 -0.033439375 0.53792888 -0.02882635 0.53793526 -0.029016525 -0.25366902 -0.033629548
		 -0.25367534 -0.029023902 -0.28438592 -0.033636928 -0.2843923 0.028669495 -0.25358951
		 0.028662115 -0.28430647 0.03373285 -0.25358254 0.03372547 -0.28429949 0.028859667
		 0.53801471 0.033923022 0.53802168 -0.044888273 0.2479661 -0.040556543 0.24621557
		 0.011829222 -0.55380583 0.0074974913 -0.55205536 -0.046921052 0.27901027 -0.042589322
		 0.27725974 -0.041012444 0.25317827 0.013611868 0.22432502 0.011579081 0.25536919
		 0.016333677 0.25344774 0.018366452 0.22240357 0.065997623 -0.57569641 0.070752218
		 -0.57761788;
createNode polyLayoutUV -n "polyLayoutUV2";
	rename -uid "8253F68B-4F39-D77C-3016-94870B655715";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:21]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyMapSewMove -n "polyMapSewMove7";
	rename -uid "DB297161-4F24-C3DF-B41E-E78F141D5191";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4]" "e[26]";
createNode polyMapSewMove -n "polyMapSewMove8";
	rename -uid "CC5F1695-4E6A-499D-8FF1-46B6BECB0372";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[5]" "e[31]";
createNode polyMapSewMove -n "polyMapSewMove9";
	rename -uid "58A5A7EF-42EB-3BED-F5AA-3DA972C2B8F6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[1]" "e[12]" "e[19]";
createNode polyMapSewMove -n "polyMapSewMove10";
	rename -uid "8804A5EA-4B3C-25D2-1941-CDA1CDB4F528";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:44]";
createNode deleteComponent -n "deleteComponent33";
	rename -uid "942D3A2B-479D-FBF3-2375-BD835071302E";
	setAttr ".dc" -type "componentList" 1 "f[10]";
createNode deleteComponent -n "deleteComponent34";
	rename -uid "CD41EAEE-4820-A6D8-1692-E0ABAA11E894";
	setAttr ".dc" -type "componentList" 1 "f[3]";
createNode polyMapCut -n "polyMapCut1";
	rename -uid "8B7D14C1-4254-518F-BF53-16A2C15B7F1C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[6:9]" "e[27]" "e[30]";
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "FE515FB0-4B0F-0A91-08B6-0CA08BA10F05";
	setAttr ".uopa" yes;
	setAttr -s 31 ".uvtk[0:30]" -type "float2" 0.57003891 1.090204716 0.53470159
		 1.13566518 0.41174701 -1.21455765 0.44738695 -1.234761 0.56258428 -1.30398178 0.46194428
		 -1.26827681 0.59153444 -0.30792147 0.59621382 -0.32541847 0.58736402 -1.24224854
		 0.5803774 -1.21977305 0.60283554 -1.20802009 0.59820026 -1.26276863 0.62521446 0.94493735
		 0.53931761 -1.48923051 0.6348452 -1.48031569 0.73000115 0.95301592 0.53686005 -1.44492233
		 0.60346717 -0.47362867 0.56696272 -0.45519379 0.4971478 -1.43147707 0.60091007 -1.14703977
		 0.57020712 -1.12934136 0.5050869 -1.15248132 0.5975678 -1.14038849 0.52740741 -1.02710712
		 0.62413239 -1.22674322 0.74711335 1.11873686 0.57892746 -1.21949124 0.59130383 -0.30790544
		 0.42257449 -1.28551722 0.5916577 -1.21932268;
createNode polyMapCut -n "polyMapCut2";
	rename -uid "DE47516F-493C-DE93-F202-9285C792D10A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[28:29]";
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "43582023-4EC5-2F28-50FB-27B779406B65";
	setAttr ".uopa" yes;
	setAttr -s 33 ".uvtk[0:32]" -type "float2" -0.39267033 -0.43092108 -0.36834401
		 -0.46539342 0.64336044 0.25086361 0.61954707 0.28297079 0.61103803 0.45882487 0.61329097
		 0.33379847 0.62540895 0.3789984 0.6250537 0.37852475 0.62542897 0.37827587 0.62392491
		 0.37769032 0.62448388 0.37709761 0.61736578 0.41830802 -0.41935867 -0.39324027 0.59567934
		 0.31495211 0.67041582 0.53208542 1.59358692 -1.54353738 0.62701422 0.38017631 0.62507993
		 0.37867099 0.62502605 0.37873089 0.62572116 0.38171029 0.61576718 0.41460705 0.61619931
		 0.41705057 0.58076006 0.33682257 0.59400898 0.45341486 0.61696678 0.38687676 0.59860963
		 0.49938011 1.51484871 -1.57623625 0.62500399 0.3777667 0.62503451 0.37845615 0.65100938
		 0.30076641 0.62491041 0.37763667 -0.44412345 -0.35727203 0.62547785 0.37901267;
createNode polyAutoProj -n "polyAutoProj3";
	rename -uid "F05FF5B6-4EFB-B528-EBBB-A981A8ECBDD3";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:19]";
	setAttr ".ix" -type "matrix" 99.394258251368925 0 0 0 0 3.022779813369608 0 0 0 0 1 0
		 0.46307876040959783 3.7532962102162344 0.921682267337534 1;
	setAttr ".s" -type "double3" 211.59455234290289 211.59455234290289 211.59455234290289 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "DBB0B93B-41A5-090F-1105-B49E554A52D5";
	setAttr ".uopa" yes;
	setAttr -s 57 ".uvtk[0:56]" -type "float2" 0.058545232 -0.47029766 0.01567547
		 -0.47029766 0.01567547 0.2217226 0.058545224 0.22172207 0.01567547 0.24857527 0.058545224
		 0.24857527 0.05854325 -0.47029656 0.015673846 -0.47029656 0.015673846 0.22172159
		 0.05854325 0.22172213 0.015673846 0.24857479 0.05854325 0.24857479 -0.021173954 -0.35359719
		 -0.021173954 0.35359687 0.021173924 0.3535974 0.021173924 -0.35359719 0.021174073
		 0.35359842 0.021174073 -0.35359865 -0.021174073 -0.35359865 -0.021174073 0.35359895
		 -0.063598573 0.044807665 -0.054858863 0.044807665 -0.054858863 -0.044804059 -0.063598573
		 -0.044804059 0.054432213 0.044807665 0.054432213 -0.044804059 0.064025223 0.044807665
		 0.064025223 -0.044804059 -0.044157535 0.084285669 0.037848413 0.007569625 0.044157565
		 -0.084285662 -0.037848413 -0.0075696334 -0.033538159 0.53793204 -0.02892513 0.53793204
		 -0.02892513 -0.25362891 -0.033538159 -0.25362891 -0.02892513 -0.28434581 -0.033538159
		 -0.28434581 0.028760895 -0.25362891 0.028760895 -0.28434581 0.03382425 -0.25362891
		 0.03382425 -0.28434581 0.028760895 0.53801811 0.03382425 0.53801811 -0.019711789
		 0.23518477 -0.015380058 0.23518477 -0.015380058 -0.55293047 -0.019711789 -0.55293047
		 -0.019711789 0.26622894 -0.015380058 0.26622894 -0.015380058 0.25317824 0.038788363
		 0.23518477 0.038788363 0.26622894 0.043542966 0.26622894 0.043542966 0.23518477 0.038788363
		 -0.57665706 0.043542966 -0.57665706;
createNode polyMapSewMove -n "polyMapSewMove11";
	rename -uid "1982E7FC-42A1-AB89-C8A6-04B6D59B2B69";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[1]" "e[12]" "e[19]";
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "F418D929-4322-65AD-09A4-448A51E3BC59";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk";
	setAttr ".uvtk[20]" -type "float2" 0.0098008215 0.0077231526 ;
	setAttr ".uvtk[21]" -type "float2" 0.0085270554 0.0076544881 ;
	setAttr ".uvtk[22]" -type "float2" 0.021532483 0.0042224526 ;
	setAttr ".uvtk[23]" -type "float2" 0.024869606 0.0042910576 ;
	setAttr ".uvtk[24]" -type "float2" -0.0074015819 0.0067961216 ;
	setAttr ".uvtk[25]" -type "float2" -0.020198673 0.0033642054 ;
	setAttr ".uvtk[26]" -type "float2" -0.0087997317 0.0067207217 ;
	setAttr ".uvtk[27]" -type "float2" -0.023861643 0.0032888055 ;
	setAttr ".uvtk[32]" -type "float2" -0.0073315836 -0.016779423 ;
	setAttr ".uvtk[33]" -type "float2" -0.0065420028 -0.016848028 ;
	setAttr ".uvtk[34]" -type "float2" -0.0044875089 0.006737709 ;
	setAttr ".uvtk[35]" -type "float2" -0.0052770898 0.0068063736 ;
	setAttr ".uvtk[36]" -type "float2" 0.0053863786 0.0058791637 ;
	setAttr ".uvtk[37]" -type "float2" 0.0062530562 0.0058038235 ;
	setAttr ".uvtk[38]" -type "float2" 0.0033318885 -0.017792642 ;
	setAttr ".uvtk[39]" -type "float2" 0.0041985661 -0.017867982 ;
	setAttr ".uvtk[44]" -type "float2" 0.0089890789 -5.492568e-05 ;
	setAttr ".uvtk[45]" -type "float2" 0.0020073764 0.0067796409 ;
	setAttr ".uvtk[48]" -type "float2" -0.00037510693 -0.0060041845 ;
	setAttr ".uvtk[49]" -type "float2" 0.0027707517 -0.0063247383 ;
createNode polyMapSewMove -n "polyMapSewMove12";
	rename -uid "FE79F6DD-462F-EB0C-B01B-42BD0830AC44";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[2]" "e[13]" "e[20]";
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "21714388-4435-606C-4D31-46A393C6DFAF";
	setAttr ".uopa" yes;
	setAttr -s 25 ".uvtk";
	setAttr ".uvtk[20]" -type "float2" -0.0037265345 -0.00612849 ;
	setAttr ".uvtk[21]" -type "float2" -0.003903348 -0.0060598254 ;
	setAttr ".uvtk[22]" -type "float2" -0.0067128744 -0.0073592067 ;
	setAttr ".uvtk[23]" -type "float2" -0.011043683 -0.0041317344 ;
	setAttr ".uvtk[24]" -type "float2" -0.0061143525 -0.0052013397 ;
	setAttr ".uvtk[25]" -type "float2" -0.0016228929 -0.0051903129 ;
	setAttr ".uvtk[26]" -type "float2" -0.0063084252 -0.0051259398 ;
	setAttr ".uvtk[27]" -type "float2" -0.0027788207 -0.0056370497 ;
	setAttr ".uvtk[32]" -type "float2" -0.0015923195 0.0056949854 ;
	setAttr ".uvtk[33]" -type "float2" -0.0017691329 0.0057635903 ;
	setAttr ".uvtk[34]" -type "float2" -0.0038236268 -0.005854547 ;
	setAttr ".uvtk[35]" -type "float2" -0.0036468133 -0.0059232116 ;
	setAttr ".uvtk[36]" -type "float2" -0.0060346313 -0.0049960017 ;
	setAttr ".uvtk[37]" -type "float2" -0.006228704 -0.0049206614 ;
	setAttr ".uvtk[38]" -type "float2" -0.0039801411 -0.0059865117 ;
	setAttr ".uvtk[39]" -type "float2" -0.0041742139 -0.0059111714 ;
	setAttr ".uvtk[40]" -type "float2" -0.0085026659 0.00038331747 ;
	setAttr ".uvtk[41]" -type "float2" -0.007553773 -0.00037747622 ;
	setAttr ".uvtk[42]" -type "float2" 0.01692095 0.022562981 ;
	setAttr ".uvtk[43]" -type "float2" 0.015972059 0.023323774 ;
	setAttr ".uvtk[44]" -type "float2" -0.0061702896 -0.0056794286 ;
	setAttr ".uvtk[45]" -type "float2" 0.0043123253 -0.0098914504 ;
	setAttr ".uvtk[46]" -type "float2" 0.0053538606 -0.010726511 ;
	setAttr ".uvtk[47]" -type "float2" 0.025385059 0.023921847 ;
	setAttr ".uvtk[48]" -type "float2" 0.026426595 0.023086727 ;
createNode polyMapCut -n "polyMapCut3";
	rename -uid "16575A45-4E8F-F6A5-AF1D-C69AA38D6226";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[35]" "e[37]" "e[39]" "e[41]";
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "DB1FCCCE-4011-21E8-2F94-9F88B7B1B92A";
	setAttr ".uopa" yes;
	setAttr -s 41 ".uvtk[16:56]" -type "float2" 0.40184197 0.028413052 0.40184197
		 0.028413082 0.40184191 0.028413082 0.40184191 0.028413052 0.027494304 -0.0014412188
		 0.027494304 -0.0014412188 0.027494304 -0.0014412188 0.027494304 -0.0014412188 0.027494306
		 -0.0014412188 0.027494306 -0.0014412188 0.027494302 -0.0014412188 0.027494302 -0.0014412188
		 -0.51532316 0.55302978 -0.51532316 0.55302978 -0.51532316 0.55302978 -0.51532316
		 0.55302978 -0.018569084 0.21776469 -0.018569084 0.21776469 -0.018569084 0.21776469
		 -0.018569084 0.21776469 0.027494306 -0.0014412188 0.027494302 -0.0014412188 -0.14897467
		 0.25026056 -0.14897467 0.25026056 0.027494304 -0.0014412188 0.027494304 -0.0014412188
		 0.0047652912 0.035580866 0.0047652931 0.035580866 0.027494304 -0.0014412188 -0.012072072
		 0.044793766 0.027494302 -0.0014412188 -0.012072072 0.044793766 -0.012072071 0.044793766
		 0.027494304 -0.0014412188 0.027494304 -0.0014412188 -0.14897467 0.25026056 -0.14897467
		 0.25026056 0.027494306 -0.0014412188 -0.012072071 0.044793766 0.0047652931 0.035580866
		 0.0047652912 0.035580866;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "88979468-4C02-D889-38C6-4EB163EC738B";
	setAttr ".uopa" yes;
	setAttr -s 125 ".uvtk[0:124]" -type "float2" -0.36050099 0.33362392 -0.37134886
		 0.33362392 -0.38219672 0.33362392 -0.39304462 0.33362392 -0.40389246 0.33362392 -0.41474035
		 0.33362392 -0.42558819 0.33362392 -0.43643609 0.33362392 -0.44728395 0.33362392 -0.45813179
		 0.33362392 -0.46897969 0.33362392 -0.47982752 0.33362392 -0.49067542 0.33362392 -0.50152326
		 0.33362392 -0.51237112 0.33362392 -0.52321899 0.33362392 -0.53406686 0.33362392 -0.54491472
		 0.33362392 -0.55576259 0.33362392 -0.56661046 0.33362392 -0.57745832 0.33362392 -0.36050099
		 0.19794659 -0.57745832 0.22194278 -0.36050099 0.22194278 -0.56661046 0.22194278 -0.55576259
		 0.22194278 -0.54491478 0.22194278 -0.53406686 0.22194278 -0.52321899 0.22194278 -0.51237112
		 0.22194278 -0.50152326 0.22194278 -0.49067542 0.22194278 -0.47982758 0.22194278 -0.46897969
		 0.22194278 -0.45813179 0.22194278 -0.44728395 0.22194278 -0.43643609 0.22194278 -0.42558819
		 0.22194278 -0.41474035 0.22194278 -0.40389246 0.22194278 -0.39304462 0.22194278 -0.38219672
		 0.22194278 -0.37134886 0.22194278 -0.60066962 -0.16639073 -0.60831702 -0.11810679
		 -0.57847595 -0.20265812 -0.54783666 -0.23329735 -0.51156926 -0.25549102 -0.46328539
		 -0.26313844 -0.41500145 -0.25549102 -0.37873411 -0.23329729 -0.34809479 -0.20265812
		 -0.32590121 -0.16639067 -0.31825379 -0.11810679 -0.32590118 -0.069822773 -0.34809485
		 -0.033555463 -0.37873411 -0.0029162094 -0.41500154 0.019277513 -0.46328545 0.026924908
		 -0.51156926 0.019277513 -0.54783678 -0.002916269 -0.57847595 -0.033555463 -0.60066962
		 -0.069822893 -0.5496816 -0.18152255 -0.52670115 -0.20450276 -0.49949968 -0.22114877
		 -0.46328545 -0.22688442 -0.42707118 -0.22114865 -0.39986959 -0.20450282 -0.37688938
		 -0.18152255 -0.36024359 -0.15432101 -0.35450771 -0.11810679 -0.36024359 -0.081892557
		 -0.37688932 -0.054690942 -0.39986956 -0.031710759 -0.42707109 -0.015064813 -0.46328539
		 -0.0093291253 -0.49949962 -0.015064992 -0.52670127 -0.031710699 -0.54968148 -0.054691002
		 -0.56632715 -0.081892557 -0.57206309 -0.11810685 -0.56632727 -0.15432107 -0.46328545
		 -0.11810679 -0.57745832 0.19794659 -0.57745832 0.048361987 -0.56661046 0.048362046
		 -0.56661046 0.19794659 -0.55576259 0.048362195 -0.55576259 0.19794659 -0.54491472
		 0.048362046 -0.54491478 0.19794659 -0.53406686 0.048362046 -0.53406686 0.19794659
		 -0.52321905 0.048361987 -0.52321899 0.19794659 -0.51237112 0.048362046 -0.51237112
		 0.19794659 -0.50152326 0.048362046 -0.50152326 0.19794659 -0.49067542 0.048361987
		 -0.49067542 0.19794659 -0.47982752 0.048362046 -0.47982758 0.19794659 -0.46897969
		 0.048361987 -0.46897969 0.19794659 -0.45813179 0.048362046 -0.45813179 0.19794659
		 -0.44728395 0.048362046 -0.44728395 0.19794659 -0.43643609 0.048362046 -0.43643609
		 0.19794659 -0.42558819 0.048361987 -0.42558819 0.19794659 -0.41474035 0.048362046
		 -0.41474035 0.19794659 -0.40389246 0.048362195 -0.40389246 0.19794659 -0.39304456
		 0.048362046 -0.39304456 0.19794659 -0.38219672 0.048362046 -0.38219672 0.19794659
		 -0.37134886 0.048362285 -0.37134883 0.19794659 -0.36050099 0.048362255;
createNode polyTweak -n "polyTweak5";
	rename -uid "5C0A4901-46CC-57F6-C2EF-189D79E531B3";
	setAttr ".uopa" yes;
	setAttr -s 114 ".tk";
	setAttr ".tk[8]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[9]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[10]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[11]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[12]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[13]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[14]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[15]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[16]" -type "float3" 0 -4.5336347 0 ;
	setAttr ".tk[17]" -type "float3" 0 -4.5336347 0 ;
	setAttr ".tk[18]" -type "float3" 0 -4.5336347 0 ;
	setAttr ".tk[19]" -type "float3" 0 -4.5336347 0 ;
	setAttr ".tk[20]" -type "float3" 0 2.355453 0 ;
	setAttr ".tk[21]" -type "float3" 0 2.355453 0 ;
	setAttr ".tk[22]" -type "float3" 0 2.355453 0 ;
	setAttr ".tk[23]" -type "float3" 0 2.355453 0 ;
	setAttr ".tk[24]" -type "float3" 0 -8.8701029 0 ;
	setAttr ".tk[25]" -type "float3" 0 -8.8701029 0 ;
	setAttr ".tk[26]" -type "float3" 0 -8.8701029 0 ;
	setAttr ".tk[27]" -type "float3" 0 -8.8701029 0 ;
	setAttr ".tk[34]" -type "float3" 0 -8.8701029 0 ;
	setAttr ".tk[35]" -type "float3" 0 2.355453 0 ;
	setAttr ".tk[36]" -type "float3" 0 -4.5336347 0 ;
	setAttr ".tk[37]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[38]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[41]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[42]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[43]" -type "float3" 0 -4.5336347 0 ;
	setAttr ".tk[44]" -type "float3" 0 2.355453 0 ;
	setAttr ".tk[45]" -type "float3" 0 -8.8701029 0 ;
	setAttr ".tk[50]" -type "float3" 0 -8.8701029 0 ;
	setAttr ".tk[51]" -type "float3" 0 2.355453 0 ;
	setAttr ".tk[52]" -type "float3" 0 -4.5336347 0 ;
	setAttr ".tk[53]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[54]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[57]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[58]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[59]" -type "float3" 0 -4.5336347 0 ;
	setAttr ".tk[60]" -type "float3" 0 2.355453 0 ;
	setAttr ".tk[61]" -type "float3" 0 -8.8701029 0 ;
	setAttr ".tk[75]" -type "float3" 0 -8.8701029 0 ;
	setAttr ".tk[76]" -type "float3" 0 2.355453 0 ;
	setAttr ".tk[77]" -type "float3" 0 -4.5336347 0 ;
	setAttr ".tk[78]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[79]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[82]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[83]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[84]" -type "float3" 0 -4.5336347 0 ;
	setAttr ".tk[85]" -type "float3" 0 2.355453 0 ;
	setAttr ".tk[86]" -type "float3" 0 -8.8701029 0 ;
	setAttr ".tk[96]" -type "float3" 0 -8.8701029 0 ;
	setAttr ".tk[97]" -type "float3" 0 2.355453 0 ;
	setAttr ".tk[98]" -type "float3" 0 -4.5336347 0 ;
	setAttr ".tk[99]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[100]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[103]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[104]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[105]" -type "float3" 0 -4.5336347 0 ;
	setAttr ".tk[106]" -type "float3" 0 2.355453 0 ;
	setAttr ".tk[107]" -type "float3" 0 -8.8701029 0 ;
	setAttr ".tk[111]" -type "float3" 0 -8.8701029 0 ;
	setAttr ".tk[112]" -type "float3" 0 2.355453 0 ;
	setAttr ".tk[113]" -type "float3" 0 -4.5336347 0 ;
	setAttr ".tk[114]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[115]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[118]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[119]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[120]" -type "float3" 0 -4.5336347 0 ;
	setAttr ".tk[121]" -type "float3" 0 2.355453 0 ;
	setAttr ".tk[122]" -type "float3" 0 -8.8701029 0 ;
	setAttr ".tk[127]" -type "float3" 0 -8.8701029 0 ;
	setAttr ".tk[129]" -type "float3" 0 -8.8701029 0 ;
	setAttr ".tk[130]" -type "float3" 1.1815902 0.93202686 -4.1127364e-09 ;
	setAttr ".tk[131]" -type "float3" 1.1815903 -9.8021307 -4.1127364e-09 ;
	setAttr ".tk[132]" -type "float3" -1.1815903 0.93202686 4.1127364e-09 ;
	setAttr ".tk[133]" -type "float3" -1.1815902 -9.8021307 4.1127364e-09 ;
	setAttr ".tk[134]" -type "float3" 0 2.355453 0 ;
	setAttr ".tk[135]" -type "float3" 0 -4.5336347 0 ;
	setAttr ".tk[136]" -type "float3" 0 2.355453 0 ;
	setAttr ".tk[137]" -type "float3" 0 -4.5336347 0 ;
	setAttr ".tk[138]" -type "float3" 1.1086255 3.6339893 0 ;
	setAttr ".tk[139]" -type "float3" 1.1086255 -5.8121724 0 ;
	setAttr ".tk[140]" -type "float3" -1.1086255 3.6339893 0 ;
	setAttr ".tk[141]" -type "float3" -1.1086255 -5.8121724 0 ;
	setAttr ".tk[142]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[143]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[144]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[145]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[146]" -type "float3" 1.9547675 -2.8079286 6.9581079e-09 ;
	setAttr ".tk[147]" -type "float3" 1.9547675 -5.2831378 -6.9581079e-09 ;
	setAttr ".tk[148]" -type "float3" -1.9547677 -2.8079286 6.9581079e-09 ;
	setAttr ".tk[149]" -type "float3" -1.9547677 -5.2831378 -6.9581079e-09 ;
	setAttr ".tk[150]" -type "float3" 0 -8.8701029 0 ;
	setAttr ".tk[153]" -type "float3" 0 -8.8701029 0 ;
	setAttr ".tk[154]" -type "float3" 0.90083045 -9.9828625 0 ;
	setAttr ".tk[155]" -type "float3" 0.90083045 1.1127582 0 ;
	setAttr ".tk[156]" -type "float3" -0.90083045 1.1127578 0 ;
	setAttr ".tk[157]" -type "float3" -0.90083045 -9.9828625 0 ;
	setAttr ".tk[158]" -type "float3" 0 -4.5336347 0 ;
	setAttr ".tk[159]" -type "float3" 0 2.355453 0 ;
	setAttr ".tk[160]" -type "float3" 0 2.355453 0 ;
	setAttr ".tk[161]" -type "float3" 0 -4.5336347 0 ;
	setAttr ".tk[162]" -type "float3" 0.88616025 -5.5530124 0 ;
	setAttr ".tk[163]" -type "float3" 0.88616025 3.3748283 0 ;
	setAttr ".tk[164]" -type "float3" -0.88616014 3.3748283 0 ;
	setAttr ".tk[165]" -type "float3" -0.88616014 -5.5530124 0 ;
	setAttr ".tk[166]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[167]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[168]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[169]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[170]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[171]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[172]" -type "float3" 0 -4.0455327 0 ;
	setAttr ".tk[173]" -type "float3" 0 -4.0455327 0 ;
createNode deleteComponent -n "deleteComponent35";
	rename -uid "872FC85D-44B0-8A18-E5D4-46AF06AA7039";
	setAttr ".dc" -type "componentList" 1 "e[158:175]";
createNode deleteComponent -n "deleteComponent36";
	rename -uid "3EFF0474-45C6-0194-D0C9-EDAD2FB6C157";
	setAttr ".dc" -type "componentList" 1 "vtx[0:173]";
createNode polyAutoProj -n "polyAutoProj4";
	rename -uid "9BEB7623-4DBE-C95B-173B-CDABA38B4283";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:153]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 204 204 204 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "33754681-4778-1994-3E17-618D8D86BA9A";
	setAttr ".uopa" yes;
	setAttr -s 54 ".uvtk[210:263]" -type "float2" -0.69590193 0.31019679 -0.69590193
		 0.31019679 -0.69590193 0.31019685 -0.69590193 0.31019685 -0.69590193 0.31019679 -0.69590193
		 0.31019679 -0.69590193 0.31019679 -0.69590193 0.31019685 -0.69590193 0.31019679 -0.69590193
		 0.31019679 -0.69590193 0.31019679 -0.69590193 0.31019685 -0.69590193 0.31019679 -0.69590193
		 0.31019679 -0.69590193 0.31019679 -0.69590193 0.31019679 -0.69590193 0.31019679 -0.69590193
		 0.31019685 -0.69590193 0.31019679 -0.69590193 0.31019679 -0.69590193 0.31019679 -0.69590193
		 0.31019679 -0.69590193 0.31019679 -0.69590193 0.31019679 -0.69590193 0.31019679 -0.69590193
		 0.31019685 -0.69590193 0.31019679 -0.69590193 0.31019679 -0.69590193 0.31019679 -0.69590193
		 0.31019679 -0.69590193 0.31019679 -0.69590193 0.31019679 -0.69590193 0.31019679 -0.69590193
		 0.31019679 -0.69590193 0.31019679 -0.69590193 0.31019679 -0.69590193 0.31019679 -0.69590193
		 0.31019679 -0.69590193 0.31019676 -0.69590193 0.31019676 -0.69590193 0.31019679 -0.69590193
		 0.31019679 -0.69590193 0.31019679 -0.69590193 0.31019679 -0.69590193 0.31019676 -0.69590193
		 0.31019679 -0.69590193 0.31019679 -0.69590193 0.31019679 -0.69590193 0.31019676 -0.69590193
		 0.31019679 -0.69590193 0.31019679 -0.69590193 0.31019676 -0.69590193 0.31019679 -0.69590193
		 0.31019676;
createNode polyMapSewMove -n "polyMapSewMove13";
	rename -uid "9BC4C8B0-4FF2-4762-0DF9-02A36164A740";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[256]";
createNode polyMapSewMove -n "polyMapSewMove14";
	rename -uid "770BB541-446E-757D-2C13-DEA5842696F1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[249]";
createNode polyMapSewMove -n "polyMapSewMove15";
	rename -uid "5336CE2A-4F61-DD8E-E59B-AEA1392AFDEE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[248]";
createNode polyMapSewMove -n "polyMapSewMove16";
	rename -uid "F9661FF0-454F-6404-13A8-7E99A711D46E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[253]";
createNode polyMapCut -n "polyMapCut4";
	rename -uid "66CC9303-4133-8818-ABFF-E488348315A4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[81]" "e[182:183]" "e[200]";
createNode polyMapCut -n "polyMapCut5";
	rename -uid "565F6857-459F-0E89-2EA8-C4B27F0E3CF4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[113]" "e[171]";
createNode polyMapSewMove -n "polyMapSewMove17";
	rename -uid "05572BF4-43CE-2E19-5A44-98A1B0C566FC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[296]";
createNode polyMapSewMove -n "polyMapSewMove18";
	rename -uid "BED03693-406B-86B0-A9D0-FE81B5E6D6A5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[306]";
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "F752537B-42D8-185A-C6DE-7097A7D28B53";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk";
	setAttr ".uvtk[108]" -type "float2" -0.0031950446 0.31789485 ;
	setAttr ".uvtk[109]" -type "float2" -0.003195039 0.31789488 ;
	setAttr ".uvtk[110]" -type "float2" -0.003195039 0.31789485 ;
	setAttr ".uvtk[111]" -type "float2" -0.0031950446 0.31789485 ;
	setAttr ".uvtk[112]" -type "float2" -0.003195039 0.31789485 ;
	setAttr ".uvtk[113]" -type "float2" -0.0031950409 0.31789485 ;
	setAttr ".uvtk[114]" -type "float2" -0.0031950446 0.31789491 ;
	setAttr ".uvtk[115]" -type "float2" -0.003195039 0.31789485 ;
	setAttr ".uvtk[182]" -type "float2" -0.0031950427 0.31789485 ;
	setAttr ".uvtk[183]" -type "float2" -0.0031950427 0.31789479 ;
	setAttr ".uvtk[188]" -type "float2" -0.003195039 0.31789485 ;
	setAttr ".uvtk[189]" -type "float2" -0.003195039 0.31789479 ;
createNode polyMapSewMove -n "polyMapSewMove19";
	rename -uid "DF85D45E-423F-E64A-06E4-28B202B0433C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[307]";
createNode polyMapSewMove -n "polyMapSewMove20";
	rename -uid "BBCC115A-45A7-593E-7D99-89B2E3E030CE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[304]";
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "DE9D9133-4DF9-65F1-CF75-09A5616FCA0A";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk";
	setAttr ".uvtk[108]" -type "float2" 0.0075195916 0.016909296 ;
	setAttr ".uvtk[109]" -type "float2" 0.036962077 0.036141686 ;
	setAttr ".uvtk[110]" -type "float2" 0.032651782 0.035078697 ;
	setAttr ".uvtk[111]" -type "float2" 0.0093371831 0.017972285 ;
	setAttr ".uvtk[112]" -type "float2" 0.03298448 0.036173515 ;
	setAttr ".uvtk[113]" -type "float2" 0.003522303 0.016877348 ;
	setAttr ".uvtk[114]" -type "float2" 0.0078257518 0.017943794 ;
	setAttr ".uvtk[115]" -type "float2" 0.031157807 0.03510695 ;
	setAttr ".uvtk[136]" -type "float2" 0.032739591 0.3226752 ;
	setAttr ".uvtk[137]" -type "float2" 0.02018708 0.34377763 ;
	setAttr ".uvtk[138]" -type "float2" 0.019601151 0.34267911 ;
	setAttr ".uvtk[139]" -type "float2" 0.028358828 0.32377377 ;
	setAttr ".uvtk[181]" -type "float2" 0.028671872 0.33322641 ;
	setAttr ".uvtk[182]" -type "float2" 0.01773572 0.026525492 ;
	setAttr ".uvtk[183]" -type "float2" 0.01773572 0.026525432 ;
	setAttr ".uvtk[186]" -type "float2" 0.020187095 0.33322641 ;
	setAttr ".uvtk[188]" -type "float2" 0.025367437 0.026525492 ;
	setAttr ".uvtk[189]" -type "float2" 0.025367437 0.026525432 ;
	setAttr ".uvtk[192]" -type "float2" 0.019894123 0.33322641 ;
	setAttr ".uvtk[193]" -type "float2" 0.019894123 0.33322653 ;
	setAttr ".uvtk[196]" -type "float2" 0.025825363 0.33322641 ;
	setAttr ".uvtk[197]" -type "float2" 0.024774447 0.33322641 ;
	setAttr ".uvtk[198]" -type "float2" 0.024774447 0.33322653 ;
	setAttr ".uvtk[290]" -type "float2" 0.019601166 0.33322641 ;
createNode polyMapSewMove -n "polyMapSewMove21";
	rename -uid "9FD511F9-4968-AC62-8103-F08AE5D80646";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[297]" "e[301:302]";
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "609ECFF3-495C-A8AD-C535-E48D4D950C09";
	setAttr ".uopa" yes;
	setAttr -s 86 ".uvtk";
	setAttr ".uvtk[140]" -type "float2" -0.00014242111 4.6388013e-05 ;
	setAttr ".uvtk[141]" -type "float2" -0.00014532357 4.6388013e-05 ;
	setAttr ".uvtk[142]" -type "float2" -0.00014532357 4.5405701e-05 ;
	setAttr ".uvtk[143]" -type "float2" -0.00014242111 4.5405701e-05 ;
	setAttr ".uvtk[144]" -type "float2" -0.00016655028 4.6388013e-05 ;
	setAttr ".uvtk[145]" -type "float2" -0.00016660988 4.5405701e-05 ;
	setAttr ".uvtk[146]" -type "float2" -0.00014532357 4.2213127e-05 ;
	setAttr ".uvtk[147]" -type "float2" -0.00014244393 4.2213127e-05 ;
	setAttr ".uvtk[148]" -type "float2" -0.00016963482 4.6388013e-05 ;
	setAttr ".uvtk[149]" -type "float2" -0.00016967952 4.5405701e-05 ;
	setAttr ".uvtk[150]" -type "float2" -0.00016660988 4.2213127e-05 ;
	setAttr ".uvtk[151]" -type "float2" -0.00014532357 1.5199184e-06 ;
	setAttr ".uvtk[152]" -type "float2" -0.00014242122 1.5199184e-06 ;
	setAttr ".uvtk[153]" -type "float2" -0.00019100308 4.5405701e-05 ;
	setAttr ".uvtk[154]" -type "float2" -0.00019100308 4.6388013e-05 ;
	setAttr ".uvtk[155]" -type "float2" -0.00016967952 4.2213127e-05 ;
	setAttr ".uvtk[156]" -type "float2" -0.00014532357 -9.0003014e-06 ;
	setAttr ".uvtk[157]" -type "float2" -0.00014242122 -9.0003014e-06 ;
	setAttr ".uvtk[158]" -type "float2" -0.00019100308 4.2168424e-05 ;
	setAttr ".uvtk[159]" -type "float2" -0.00019347668 4.5405701e-05 ;
	setAttr ".uvtk[160]" -type "float2" -0.00019347668 4.6388013e-05 ;
	setAttr ".uvtk[161]" -type "float2" -0.00016660988 1.5199184e-06 ;
	setAttr ".uvtk[162]" -type "float2" -0.00016967952 1.5199184e-06 ;
	setAttr ".uvtk[163]" -type "float2" -0.00016660988 -8.970499e-06 ;
	setAttr ".uvtk[164]" -type "float2" -0.00014532357 -4.8995018e-05 ;
	setAttr ".uvtk[165]" -type "float2" -0.00014242111 -4.8995018e-05 ;
	setAttr ".uvtk[166]" -type "float2" -0.00019341707 4.2213127e-05 ;
	setAttr ".uvtk[167]" -type "float2" -0.00016967952 -8.970499e-06 ;
	setAttr ".uvtk[168]" -type "float2" -0.00014242111 -5.3882599e-05 ;
	setAttr ".uvtk[169]" -type "float2" -0.00019347668 1.5199184e-06 ;
	setAttr ".uvtk[170]" -type "float2" -0.00019100308 1.5199184e-06 ;
	setAttr ".uvtk[171]" -type "float2" -0.00019100308 -8.970499e-06 ;
	setAttr ".uvtk[172]" -type "float2" -0.00016660988 -4.8995018e-05 ;
	setAttr ".uvtk[173]" -type "float2" -0.00016967952 -4.8995018e-05 ;
	setAttr ".uvtk[174]" -type "float2" -0.00014242111 -6.7234039e-05 ;
	setAttr ".uvtk[175]" -type "float2" -0.00019347668 -9.0003014e-06 ;
	setAttr ".uvtk[176]" -type "float2" -0.00016967952 -5.3882599e-05 ;
	setAttr ".uvtk[177]" -type "float2" -0.00014532357 -7.5936317e-05 ;
	setAttr ".uvtk[178]" -type "float2" -0.00014242111 -7.5936317e-05 ;
	setAttr ".uvtk[179]" -type "float2" -0.00019347668 -4.8995018e-05 ;
	setAttr ".uvtk[180]" -type "float2" -0.00019100308 -4.8995018e-05 ;
	setAttr ".uvtk[183]" -type "float2" -0.00016655028 -7.5936317e-05 ;
	setAttr ".uvtk[184]" -type "float2" -0.00019347668 -5.3882599e-05 ;
	setAttr ".uvtk[185]" -type "float2" -0.00016963482 -7.5936317e-05 ;
	setAttr ".uvtk[188]" -type "float2" -0.00019347668 -6.7234039e-05 ;
	setAttr ".uvtk[189]" -type "float2" -0.00019100308 -6.7234039e-05 ;
	setAttr ".uvtk[192]" -type "float2" -0.00019100308 -7.5936317e-05 ;
	setAttr ".uvtk[193]" -type "float2" -0.00019347668 -7.5936317e-05 ;
	setAttr ".uvtk[250]" -type "float2" 0.056580149 0.73399127 ;
	setAttr ".uvtk[251]" -type "float2" 0.056580149 0.73399132 ;
	setAttr ".uvtk[252]" -type "float2" 0.056580149 0.73399132 ;
	setAttr ".uvtk[253]" -type "float2" 0.056580149 0.73399127 ;
	setAttr ".uvtk[254]" -type "float2" 0.056580149 0.73399132 ;
	setAttr ".uvtk[255]" -type "float2" 0.056580149 0.73399132 ;
	setAttr ".uvtk[256]" -type "float2" 0.056580089 0.73399132 ;
	setAttr ".uvtk[257]" -type "float2" 0.056580089 0.73399132 ;
	setAttr ".uvtk[258]" -type "float2" -0.043403916 0.21469441 ;
	setAttr ".uvtk[259]" -type "float2" -0.043403916 0.21469441 ;
	setAttr ".uvtk[260]" -type "float2" -0.043403916 0.21469441 ;
	setAttr ".uvtk[261]" -type "float2" -0.043403916 0.21469441 ;
	setAttr ".uvtk[262]" -type "float2" -0.043403916 0.21469435 ;
	setAttr ".uvtk[263]" -type "float2" -0.043403916 0.21469441 ;
	setAttr ".uvtk[264]" -type "float2" -0.043403916 0.21469441 ;
	setAttr ".uvtk[265]" -type "float2" -0.043403916 0.21469435 ;
	setAttr ".uvtk[266]" -type "float2" 0.039528571 0.63400722 ;
	setAttr ".uvtk[267]" -type "float2" 0.039528571 0.63400728 ;
	setAttr ".uvtk[268]" -type "float2" 0.039528571 0.63400728 ;
	setAttr ".uvtk[269]" -type "float2" 0.039528571 0.63400722 ;
	setAttr ".uvtk[270]" -type "float2" 0.039528571 0.63400722 ;
	setAttr ".uvtk[271]" -type "float2" 0.039528571 0.63400728 ;
	setAttr ".uvtk[272]" -type "float2" 0.039528571 0.63400722 ;
	setAttr ".uvtk[273]" -type "float2" 0.039528571 0.63400722 ;
	setAttr ".uvtk[274]" -type "float2" -0.011626037 0.21624458 ;
	setAttr ".uvtk[275]" -type "float2" -0.011626037 0.21624452 ;
	setAttr ".uvtk[276]" -type "float2" -0.011626037 0.21624452 ;
	setAttr ".uvtk[277]" -type "float2" -0.011626037 0.21624458 ;
	setAttr ".uvtk[278]" -type "float2" -0.011626037 0.21624452 ;
	setAttr ".uvtk[279]" -type "float2" -0.011626037 0.21624452 ;
	setAttr ".uvtk[280]" -type "float2" -0.011626037 0.21624452 ;
	setAttr ".uvtk[281]" -type "float2" -0.011626037 0.21624452 ;
	setAttr ".uvtk[282]" -type "float2" 0.0032693744 0.019516885 ;
	setAttr ".uvtk[283]" -type "float2" -0.00070822239 -0.00040322542 ;
	setAttr ".uvtk[284]" -type "float2" -0.0036024489 -0.019699395 ;
	setAttr ".uvtk[285]" -type "float2" 0.00039483607 0.00028449297 ;
	setAttr ".uvtk[286]" -type "float2" -0.00016967952 -6.7234039e-05 ;
	setAttr ".uvtk[287]" -type "float2" -0.00019100308 -5.3882599e-05 ;
createNode polyMapSewMove -n "polyMapSewMove22";
	rename -uid "CC4FAA5C-4F72-279C-CBC5-469325AC6CA1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[243]";
createNode polyMapSewMove -n "polyMapSewMove23";
	rename -uid "A8D18307-4EF0-8DAA-89C5-1D9ED8B0B019";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[238]";
createNode polyMapSewMove -n "polyMapSewMove24";
	rename -uid "F9DD444D-41BB-40E5-2356-A196F51CCB11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[227]";
createNode polyMapSewMove -n "polyMapSewMove25";
	rename -uid "5B4BCDBD-4607-9BC9-12E9-CB83E102369F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[222]";
createNode polyMapSewMove -n "polyMapSewMove26";
	rename -uid "5A43E3A1-43E7-4C2F-EBE7-4DB741EF2E12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[291]";
createNode polyMapSewMove -n "polyMapSewMove27";
	rename -uid "FA6B2B21-4E21-B4BC-3FDB-B5A8748A8FDF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[286]";
createNode polyMapSewMove -n "polyMapSewMove28";
	rename -uid "D99DE915-4376-413A-655E-709961A04116";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[275]";
createNode polyMapSewMove -n "polyMapSewMove29";
	rename -uid "8ACB7324-48A2-23F1-2E06-FB93F77D64C5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[270]";
createNode polyMapSewMove -n "polyMapSewMove30";
	rename -uid "5E9B02A2-45D7-3E33-9D5B-84B7AEE456DA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[273]";
createNode polyMapSewMove -n "polyMapSewMove31";
	rename -uid "3C9E076D-4D75-7555-4058-B885CBF419BD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[266]";
createNode polyMapSewMove -n "polyMapSewMove32";
	rename -uid "7034BFEF-43A8-D27C-47E8-3EB641F99E8C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[218]";
createNode polyMapSewMove -n "polyMapSewMove33";
	rename -uid "0EC6CE80-4E50-5B4D-8EEF-37A4E8716D31";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[225]";
createNode polyMapSewMove -n "polyMapSewMove34";
	rename -uid "6D34D1EA-4FAA-EE0D-D695-7CA5C85874A6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[234]" "e[241]" "e[282]" "e[289]";
createNode polyMapSewMove -n "polyMapSewMove35";
	rename -uid "E3A51DF3-443B-A92F-C555-64AFD2BA6599";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[232:233]" "e[237]" "e[240]";
createNode polyMapSewMove -n "polyMapSewMove36";
	rename -uid "8D243511-4AEC-AF29-C00F-468DC113F681";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[280:281]" "e[285]" "e[288]";
createNode polyMapSewMove -n "polyMapSewMove37";
	rename -uid "27FD128B-4294-04A1-E28B-D29382EA1DE3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[264:265]" "e[269]" "e[272]";
createNode polyMapSewMove -n "polyMapSewMove38";
	rename -uid "476065A7-4F94-506E-D6A7-1099B73D8A5C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[216:217]" "e[221]" "e[224]";
createNode polyMapSewMove -n "polyMapSewMove39";
	rename -uid "1D7BF276-47DD-C9E9-1FCC-C1A1C52D653D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[5]" "e[15]" "e[23]" "e[31]" "e[39]" "e[47]" "e[55]" "e[129]";
createNode polyMapSewMove -n "polyMapSewMove40";
	rename -uid "066E12C7-43B0-BFF8-7475-CE9DB76F3803";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[4]" "e[12]" "e[20]" "e[28]" "e[36]" "e[44]" "e[52]" "e[124]";
createNode polyMapSewMove -n "polyMapSewMove41";
	rename -uid "DFD91378-4755-3437-CC2F-65AB5E4DE2E3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[67]" "e[152]" "e[184]";
createNode deleteComponent -n "deleteComponent37";
	rename -uid "CCF1FEEB-4D2B-1177-4F3C-7C848E857635";
	setAttr ".dc" -type "componentList" 1 "f[3]";
createNode deleteComponent -n "deleteComponent38";
	rename -uid "BF810101-4E78-CE29-4B42-73BDF2075099";
	setAttr ".dc" -type "componentList" 1 "f[43]";
createNode deleteComponent -n "deleteComponent39";
	rename -uid "E7405991-4E0D-F896-D362-088F0F101400";
	setAttr ".dc" -type "componentList" 1 "f[101]";
createNode deleteComponent -n "deleteComponent40";
	rename -uid "F78B4517-4B73-40D1-830E-A7B42FD27AE0";
	setAttr ".dc" -type "componentList" 1 "f[83]";
createNode deleteComponent -n "deleteComponent41";
	rename -uid "43D06A94-438D-BDA1-1674-E29AAA90069E";
	setAttr ".dc" -type "componentList" 1 "f[58]";
createNode polyTweakUV -n "polyTweakUV16";
	rename -uid "0AB04465-442C-CDBB-CF60-C6B430C3E6B3";
	setAttr ".uopa" yes;
	setAttr -s 206 ".uvtk[0:205]" -type "float2" 0.40463042 0.034941707 0.40081352
		 0.034947846 0.40081352 0.033677172 0.40463042 0.033671107 0.40081352 0.029610269
		 0.40463042 0.02960455 0.40081346 -0.022142984 0.40463042 -0.022144474 0.40081346
		 -0.03553642 0.40463042 -0.035536896 0.40081346 -0.08643996 0.40463042 -0.086436324
		 0.40081346 -0.092552893 0.40463042 -0.092548721 0.40081358 -0.10964619 0.40463042
		 -0.10964071 0.40081358 -0.12078189 0.40463042 -0.12077545 0.47332415 0.034947846
		 0.46950728 0.034941707 0.46950728 0.033671107 0.47332415 0.033677176 0.46950728 0.02960455
		 0.47332418 0.029610243 0.46950728 -0.022144474 0.47332418 -0.022142984 0.46950728
		 -0.035536896 0.47332418 -0.03553642 0.46950731 -0.086436324 0.47332418 -0.08643996
		 0.46950731 -0.092548721 0.47332418 -0.092552893 0.46950725 -0.10964071 0.47332418
		 -0.10964619 0.46950725 -0.12077545 0.47332421 -0.12078189 -0.64571017 -0.93540579
		 -0.64571017 -0.89322931 -0.64676619 -0.89420909 -0.64676625 -0.93442601 -0.66795427
		 -0.89322895 -0.66795415 -0.93540603 -0.66689819 -0.93442607 -0.66689831 -0.89420897
		 -0.2754266 -0.68944943 -0.27542654 -0.64867079 -0.27644759 -0.64974302 -0.27644765
		 -0.6883772 -0.2974408 -0.64867079 -0.29744092 -0.68944931 -0.29641989 -0.68837708
		 -0.29641977 -0.64974302 -0.61564606 -0.91891104 -0.61564606 -0.87641597 -0.61662632
		 -0.87746149 -0.61662638 -0.91786546 -0.63841546 -0.87641591 -0.63841546 -0.91891104
		 -0.6374352 -0.91786546 -0.63743514 -0.87746149 -0.3175495 -0.69218403 -0.31754962
		 -0.65061414 -0.31851837 -0.65162373 -0.31851831 -0.69117445 -0.3401663 -0.65061408
		 -0.34016642 -0.69218397 -0.33919755 -0.69117439 -0.33919755 -0.65162367 0.46951258
		 -0.1207689 0.4658348 -0.1207689 0.46583709 -0.12458586 0.46951258 -0.12458586 0.43883842
		 -0.12076896 0.43883854 -0.12458586 0.43488282 -0.12458586 0.43488294 -0.12076896
		 0.40772855 -0.1245858 0.40773082 -0.1207689 0.40462524 -0.1207689 0.40462524 -0.1245858
		 0.21297327 -0.41334134 0.17091638 -0.41334134 0.17362696 -0.41503006 0.21026599 -0.41503006
		 0.17091638 -0.44080627 0.21297327 -0.44080627 0.21026599 -0.43911803 0.17362696 -0.43911803
		 -0.073498517 -0.41022676 -0.096067898 -0.41026169 -0.095688425 -0.40985113 -0.072742894
		 -0.4098199 -0.098710798 -0.42828542 -0.071606115 -0.42828542 -0.071145713 -0.42891783
		 -0.09691038 -0.42891783 0.46583241 0.034935538 0.46583241 0.033665072 0.43883824
		 0.034935538 0.43883824 0.033665072 0.46583241 0.029598828 0.43488318 0.034935538
		 0.43488318 0.033665072 0.43883824 0.029598828 0.46583241 -0.022145994 0.4077332 0.033665072
		 0.4077332 0.034935538 0.43488318 0.029598828 0.46583241 -0.035537314 0.4077332 0.029598828
		 0.43883824 -0.022145994 0.43488318 -0.022145994 0.43883824 -0.035537314 0.46583241
		 -0.086432628 0.43488318 -0.035537314 0.4077332 -0.022145994 0.4077332 -0.035537314
		 0.43883824 -0.086432628 0.43488318 -0.086432628 0.43488318 -0.092544548 0.4077332
		 -0.086432628 0.20597625 -0.41938424 0.20597625 -0.43475556 0.17721832 -0.41938424
		 0.17721832 -0.43475556 0.4077332 -0.10963511 -0.071199499 -0.40854496 -0.071199499
		 -0.42043841 -0.095512502 -0.40854496 -0.095512502 -0.42043841 1.11830664 -0.43596599
		 1.11462951 -0.43596599 1.11462951 -0.43723723 1.11830664 -0.43723723 1.11830664 -0.43189725
		 1.11462951 -0.43189725 1.087618947 -0.43596599 1.087618947 -0.43723723 1.11830664
		 -0.38012105 1.11462951 -0.38012105 1.087618947 -0.43189725 1.083661318 -0.43723723
		 1.083661318 -0.43596599 1.11830664 -0.36672151 1.11462951 -0.36672151 1.087618947
		 -0.38012105 1.083661318 -0.43189725 1.056494832 -0.43723723 1.056494832 -0.43596599
		 1.11830664 -0.31579521 1.11462951 -0.31579521 1.087618947 -0.36672151 1.083661318
		 -0.38012105 1.056494832 -0.43189725 1.053390145 -0.43596599 1.053390145 -0.43723723
		 1.11830664 -0.30967954 1.11462951 -0.30967954 1.087618947 -0.31579521 1.083661318
		 -0.36672151 1.056494832 -0.38012105 1.053390145 -0.43189725 1.11830664 -0.29257852
		 1.11462951 -0.29257852 1.087618947 -0.30967954 1.083661318 -0.31579521 1.056494832
		 -0.36672151 1.053390145 -0.38012105 1.11830664 -0.28143784 1.11462951 -0.28143784
		 1.087618947 -0.29257852 1.083661318 -0.30967954 1.056494832 -0.31579521 1.053390145
		 -0.36672151 1.087618947 -0.28143784 1.083661318 -0.29257852 1.056494832 -0.30967954
		 1.053390145 -0.31579521 1.083661318 -0.28143784 1.056494832 -0.29257852 1.053390145
		 -0.30967954 1.056494832 -0.28143784 1.053390145 -0.29257852 1.053390145 -0.28143784
		 -0.64871132 -0.93141109 -0.64871132 -0.89722401 -0.66495311 -0.89722401 -0.66495311
		 -0.93141109 -0.27807027 -0.68555903 -0.27807027 -0.65256113 -0.29479721 -0.65256113
		 -0.29479721 -0.68555903 -0.61884689 -0.91448337 -0.61884689 -0.88084364 -0.63521463
		 -0.8808437 -0.63521463 -0.91448337 -0.32058683 -0.68805319 -0.32058683 -0.65474492
		 -0.33712909 -0.65474492 -0.33712909 -0.68805319 0.43883824 -0.092544548 0.43883824
		 -0.10963511 0.46583241 -0.10963511 0.46583241 -0.092544548 0.43488318 -0.10963511
		 0.4077332 -0.092544548;
createNode polyMapSewMove -n "polyMapSewMove42";
	rename -uid "E8E7ED04-4470-8974-7DC4-AFADBEBA1C50";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[14]";
createNode polyMapSewMove -n "polyMapSewMove43";
	rename -uid "5F884C33-433F-B3C6-723A-70AA32F6253F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[4]";
createNode polyTweakUV -n "polyTweakUV17";
	rename -uid "E9B5E973-4912-E041-D29C-FF8309B377E6";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk";
	setAttr ".uvtk[6]" -type "float2" -0.061331213 0.23858154 ;
	setAttr ".uvtk[7]" -type "float2" -0.074578822 -0.13265327 ;
	setAttr ".uvtk[8]" -type "float2" 0.02237618 0.2176609 ;
	setAttr ".uvtk[9]" -type "float2" 0.035624027 -0.14691079 ;
	setAttr ".uvtk[10]" -type "float2" 0.026138544 -0.16520083 ;
	setAttr ".uvtk[11]" -type "float2" 0.039386272 -0.16186893 ;
	setAttr ".uvtk[16]" -type "float2" 0.058458328 0.2106263 ;
	setAttr ".uvtk[17]" -type "float2" -0.038496435 -0.13209841 ;
	setAttr ".uvtk[18]" -type "float2" -0.052265763 0.23626724 ;
	setAttr ".uvtk[19]" -type "float2" 0.04468894 -0.16440392 ;
createNode polyMapSewMove -n "polyMapSewMove44";
	rename -uid "D649D28C-42D6-AB84-308A-2E967F4CBE05";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[22]";
createNode polyMapSewMove -n "polyMapSewMove45";
	rename -uid "8C7126DC-4B9B-CAF5-9FD3-0FAB14CEECE6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[5]";
createNode polyTweakUV -n "polyTweakUV18";
	rename -uid "B310006A-444B-5C21-2985-F49DFCAE4B52";
	setAttr ".uopa" yes;
	setAttr -s 45 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.29045674 -0.052446224 ;
	setAttr ".uvtk[1]" -type "float2" 0.27653086 0.31230491 ;
	setAttr ".uvtk[2]" -type "float2" 0.27653083 -0.092921965 ;
	setAttr ".uvtk[3]" -type "float2" 0.29045674 0.27182916 ;
	setAttr ".uvtk[4]" -type "float2" 0.27653083 -0.10389804 ;
	setAttr ".uvtk[5]" -type "float2" 0.29045677 -0.10389804 ;
	setAttr ".uvtk[6]" -type "float2" 0.050358534 -0.0049519017 ;
	setAttr ".uvtk[7]" -type "float2" 0.050358474 -0.0016199872 ;
	setAttr ".uvtk[8]" -type "float2" -0.046596289 -0.0016206503 ;
	setAttr ".uvtk[9]" -type "float2" -0.046596169 -0.0049518347 ;
	setAttr ".uvtk[10]" -type "float2" -0.050358474 0.0016659498 ;
	setAttr ".uvtk[11]" -type "float2" -0.050358415 -0.0016659498 ;
	setAttr ".uvtk[12]" -type "float2" 0.25416845 -0.048652627 ;
	setAttr ".uvtk[13]" -type "float2" 0.25416845 0.26803553 ;
	setAttr ".uvtk[14]" -type "float2" 0.2686159 -0.10050916 ;
	setAttr ".uvtk[15]" -type "float2" 0.26861593 0.31989205 ;
	setAttr ".uvtk[16]" -type "float2" -0.048477352 0.0016192198 ;
	setAttr ".uvtk[17]" -type "float2" 0.048477411 0.001619868 ;
	setAttr ".uvtk[18]" -type "float2" 0.048477411 0.0049517974 ;
	setAttr ".uvtk[19]" -type "float2" -0.048477292 0.0049518347 ;
	setAttr ".uvtk[20]" -type "float2" 0.14409482 0.19280295 ;
	setAttr ".uvtk[21]" -type "float2" 0.14409484 0.19280295 ;
	setAttr ".uvtk[22]" -type "float2" 0.14409484 0.19280295 ;
	setAttr ".uvtk[23]" -type "float2" 0.14409482 0.19280295 ;
	setAttr ".uvtk[24]" -type "float2" 0.14409484 0.19280295 ;
	setAttr ".uvtk[25]" -type "float2" 0.14409484 0.19280295 ;
	setAttr ".uvtk[26]" -type "float2" 0.14409485 0.19280295 ;
	setAttr ".uvtk[27]" -type "float2" 0.14409485 0.19280295 ;
	setAttr ".uvtk[32]" -type "float2" 0.14409484 0.19280295 ;
	setAttr ".uvtk[33]" -type "float2" 0.14409485 0.19280295 ;
	setAttr ".uvtk[34]" -type "float2" 0.14409482 0.19280295 ;
	setAttr ".uvtk[35]" -type "float2" 0.14409484 0.19280295 ;
	setAttr ".uvtk[36]" -type "float2" 0.072432935 -0.086919501 ;
	setAttr ".uvtk[37]" -type "float2" 0.072432935 -0.086919501 ;
	setAttr ".uvtk[38]" -type "float2" 0.14409484 0.19280295 ;
	setAttr ".uvtk[39]" -type "float2" 0.06584812 -0.22256666 ;
	setAttr ".uvtk[40]" -type "float2" 0.14409485 0.19280295 ;
	setAttr ".uvtk[41]" -type "float2" 0.06584812 -0.22256666 ;
	setAttr ".uvtk[42]" -type "float2" 0.065848127 -0.22256666 ;
	setAttr ".uvtk[43]" -type "float2" 0.14409484 0.19280295 ;
	setAttr ".uvtk[44]" -type "float2" 0.14409482 0.19280295 ;
	setAttr ".uvtk[45]" -type "float2" 0.14409484 0.19280295 ;
	setAttr ".uvtk[46]" -type "float2" 0.065848127 -0.22256666 ;
	setAttr ".uvtk[47]" -type "float2" 0.072432935 -0.086919501 ;
	setAttr ".uvtk[48]" -type "float2" 0.072432935 -0.086919501 ;
createNode polyMapSewMove -n "polyMapSewMove46";
	rename -uid "648F84BD-4D11-E6E4-A305-40AF0EABE2A6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[27]";
createNode polyMapSewMove -n "polyMapSewMove47";
	rename -uid "75C4F82F-418B-F780-06A9-79B163F59C06";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[30]";
createNode polyTweakUV -n "polyTweakUV19";
	rename -uid "DFACFA8C-4A7E-896C-960B-239A58E6F3B0";
	setAttr ".uopa" yes;
	setAttr -s 41 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.35836762 0.18329576 ;
	setAttr ".uvtk[1]" -type "float2" 0.34555221 -0.083289504 ;
	setAttr ".uvtk[2]" -type "float2" 0.34555221 0.076968998 ;
	setAttr ".uvtk[3]" -type "float2" 0.35836762 -0.1896162 ;
	setAttr ".uvtk[4]" -type "float2" 0.34555221 -0.21084082 ;
	setAttr ".uvtk[5]" -type "float2" 0.35836762 -0.21084082 ;
	setAttr ".uvtk[6]" -type "float2" 0.15979926 -0.16623457 ;
	setAttr ".uvtk[7]" -type "float2" 0.14722173 0.10213177 ;
	setAttr ".uvtk[8]" -type "float2" 0.14722173 -0.26385915 ;
	setAttr ".uvtk[9]" -type "float2" 0.15979926 0.0045072176 ;
	setAttr ".uvtk[10]" -type "float2" 0.14722173 -0.28131533 ;
	setAttr ".uvtk[11]" -type "float2" 0.15979926 -0.28131533 ;
	setAttr ".uvtk[12]" -type "float2" 0.3671869 0.18329573 ;
	setAttr ".uvtk[13]" -type "float2" 0.3671869 -0.1896162 ;
	setAttr ".uvtk[14]" -type "float2" 0.38000235 -0.1896162 ;
	setAttr ".uvtk[15]" -type "float2" 0.38000235 0.18329576 ;
	setAttr ".uvtk[16]" -type "float2" 0.13683711 -0.26385915 ;
	setAttr ".uvtk[17]" -type "float2" 0.13683711 0.10213177 ;
	setAttr ".uvtk[18]" -type "float2" 0.12425946 0.10213177 ;
	setAttr ".uvtk[19]" -type "float2" 0.12425946 -0.26385915 ;
	setAttr ".uvtk[20]" -type "float2" 0.26134321 -0.07285931 ;
	setAttr ".uvtk[21]" -type "float2" 0.26134324 -0.07285931 ;
	setAttr ".uvtk[22]" -type "float2" 0.26134324 -0.07285931 ;
	setAttr ".uvtk[23]" -type "float2" 0.26134321 -0.07285931 ;
	setAttr ".uvtk[24]" -type "float2" 0.26134321 -0.07285931 ;
	setAttr ".uvtk[25]" -type "float2" 0.26134321 -0.07285931 ;
	setAttr ".uvtk[26]" -type "float2" 0.26134321 -0.07285931 ;
	setAttr ".uvtk[27]" -type "float2" 0.26134321 -0.07285931 ;
	setAttr ".uvtk[32]" -type "float2" 0.26134321 -0.07285931 ;
	setAttr ".uvtk[33]" -type "float2" 0.26134321 -0.07285931 ;
	setAttr ".uvtk[34]" -type "float2" 0.26134321 -0.07285931 ;
	setAttr ".uvtk[35]" -type "float2" 0.26134324 -0.07285931 ;
	setAttr ".uvtk[36]" -type "float2" 0.13591111 -0.43460089 ;
	setAttr ".uvtk[37]" -type "float2" 0.26134324 -0.07285931 ;
	setAttr ".uvtk[38]" -type "float2" 0.36849034 0.34355417 ;
	setAttr ".uvtk[39]" -type "float2" 0.26134321 -0.07285931 ;
	setAttr ".uvtk[40]" -type "float2" 0.36849034 -0.34987473 ;
	setAttr ".uvtk[41]" -type "float2" 0.26134324 -0.07285931 ;
	setAttr ".uvtk[42]" -type "float2" 0.26134321 -0.07285931 ;
	setAttr ".uvtk[43]" -type "float2" 0.26134321 -0.07285931 ;
	setAttr ".uvtk[44]" -type "float2" 0.13591099 0.27287346 ;
createNode polyMapSewMove -n "polyMapSewMove48";
	rename -uid "65DA2208-4021-D503-14A8-85B4060F3925";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40]";
createNode polyTweakUV -n "polyTweakUV20";
	rename -uid "E8AFB070-4545-8427-9DC8-6AA7865350BE";
	setAttr ".uopa" yes;
	setAttr -s 33 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" 2.2947788e-05 -0.00037562847 ;
	setAttr ".uvtk[3]" -type "float2" 3.2842159e-05 -0.00033068657 ;
	setAttr ".uvtk[4]" -type "float2" 0.00011742115 0.0016036034 ;
	setAttr ".uvtk[5]" -type "float2" 0.0001283884 0.0016765594 ;
	setAttr ".uvtk[8]" -type "float2" -1.1920929e-07 6.1392784e-06 ;
	setAttr ".uvtk[9]" -type "float2" -2.3841858e-07 6.1988831e-06 ;
	setAttr ".uvtk[10]" -type "float2" 1.2516975e-06 -2.5987625e-05 ;
	setAttr ".uvtk[11]" -type "float2" 1.0728836e-06 -2.4974346e-05 ;
	setAttr ".uvtk[13]" -type "float2" 0.0023071766 -0.00028824806 ;
	setAttr ".uvtk[14]" -type "float2" 0.0023184419 -0.00021034479 ;
	setAttr ".uvtk[16]" -type "float2" 3.5822392e-05 5.0067902e-06 ;
	setAttr ".uvtk[19]" -type "float2" 3.6001205e-05 3.2782555e-06 ;
	setAttr ".uvtk[20]" -type "float2" -0.0069883168 -0.00095534325 ;
	setAttr ".uvtk[21]" -type "float2" -0.0067443848 -0.00095534325 ;
	setAttr ".uvtk[22]" -type "float2" -0.0067443848 0.00012862682 ;
	setAttr ".uvtk[23]" -type "float2" -0.0069883168 0.00012862682 ;
	setAttr ".uvtk[24]" -type "float2" 0.006436795 -0.00095534325 ;
	setAttr ".uvtk[25]" -type "float2" 0.006436795 0.00012862682 ;
	setAttr ".uvtk[26]" -type "float2" 0.0084038377 -0.00095534325 ;
	setAttr ".uvtk[27]" -type "float2" 0.0084038377 0.00012862682 ;
	setAttr ".uvtk[28]" -type "float2" 0.015228271 0.00042879581 ;
	setAttr ".uvtk[29]" -type "float2" -0.015536278 0.00042647123 ;
	setAttr ".uvtk[30]" -type "float2" -0.0045496523 -0.0021799803 ;
	setAttr ".uvtk[31]" -type "float2" 0.0042420328 -0.0021787882 ;
	setAttr ".uvtk[32]" -type "float2" 0.0084038377 -0.0021793842 ;
	setAttr ".uvtk[33]" -type "float2" -0.0069883168 0.0013526678 ;
	setAttr ".uvtk[34]" -type "float2" -0.0067443848 0.0013526678 ;
	setAttr ".uvtk[36]" -type "float2" -0.0067443848 0.0051435232 ;
	setAttr ".uvtk[37]" -type "float2" 0.0022749305 -0.0004183054 ;
	setAttr ".uvtk[38]" -type "float2" 0.0084038377 0.0013526678 ;
	setAttr ".uvtk[40]" -type "float2" -0.0069883168 -0.0021793842 ;
	setAttr ".uvtk[41]" -type "float2" 0.006436795 0.0013526678 ;
	setAttr ".uvtk[42]" -type "float2" 3.5405159e-05 6.8545341e-06 ;
createNode deleteComponent -n "deleteComponent42";
	rename -uid "AA5866A2-4C9C-1B8E-7CFC-81A16632A545";
	setAttr ".dc" -type "componentList" 4 "vtx[2:5]" "vtx[9:10]" "vtx[13:14]" "vtx[16:24]";
createNode polyTweakUV -n "polyTweakUV21";
	rename -uid "35BDBADE-4592-D17B-5393-418BCF54006E";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.49614489 -0.010056991 ;
	setAttr ".uvtk[1]" -type "float2" -0.49614489 -0.010056991 ;
	setAttr ".uvtk[2]" -type "float2" -0.49614489 -0.010056986 ;
	setAttr ".uvtk[3]" -type "float2" -0.49614489 -0.010056986 ;
	setAttr ".uvtk[4]" -type "float2" -0.49614489 -0.010056986 ;
	setAttr ".uvtk[5]" -type "float2" -0.49614489 -0.010056986 ;
	setAttr ".uvtk[6]" -type "float2" -0.15420721 -0.021790147 ;
	setAttr ".uvtk[7]" -type "float2" -0.15420721 -0.021790147 ;
	setAttr ".uvtk[8]" -type "float2" -0.15420721 -0.021790128 ;
	setAttr ".uvtk[9]" -type "float2" -0.15420721 -0.021790128 ;
	setAttr ".uvtk[10]" -type "float2" -0.15420721 -0.021790128 ;
	setAttr ".uvtk[11]" -type "float2" -0.15420721 -0.021790128 ;
	setAttr ".uvtk[12]" -type "float2" -0.49614489 -0.010056991 ;
	setAttr ".uvtk[13]" -type "float2" -0.49614489 -0.010056986 ;
	setAttr ".uvtk[14]" -type "float2" -0.49614489 -0.010056986 ;
	setAttr ".uvtk[15]" -type "float2" -0.49614489 -0.010056991 ;
	setAttr ".uvtk[16]" -type "float2" -0.15420721 -0.021790128 ;
	setAttr ".uvtk[17]" -type "float2" -0.15420721 -0.021790147 ;
	setAttr ".uvtk[18]" -type "float2" -0.15420721 -0.021790147 ;
	setAttr ".uvtk[19]" -type "float2" -0.15420721 -0.021790128 ;
	setAttr ".uvtk[35]" -type "float2" -0.15420721 -0.021790147 ;
	setAttr ".uvtk[36]" -type "float2" -0.49614489 -0.010056986 ;
	setAttr ".uvtk[38]" -type "float2" -0.49614489 -0.010056991 ;
	setAttr ".uvtk[41]" -type "float2" -0.15420721 -0.021790128 ;
createNode polyMapSewMove -n "polyMapSewMove49";
	rename -uid "0CEE7334-4932-9519-8612-C2938A7D52F9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[9]" "e[36]";
createNode polyMapSewMove -n "polyMapSewMove50";
	rename -uid "B75A122A-4CDC-9B4A-8149-CC9DEB75B604";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[34]" "e[41]";
createNode polyTweakUV -n "polyTweakUV22";
	rename -uid "64BDD71F-42B0-B83E-C76C-B88185D0D198";
	setAttr ".uopa" yes;
	setAttr -s 37 ".uvtk[0:36]" -type "float2" -0.44452691 -1.69535482 -0.39385664
		 -1.69480908 -0.40687084 -0.22388443 -0.46036917 -0.22762847 -0.40713149 -0.17952141
		 -0.46088994 -0.17053321 0.00457884 -1.71815228 0.05582685 -1.7181648 0.056190766
		 -0.22065976 -0.00095958635 -0.22064397 0.056206264 -0.16384968 0.0049580745 -0.16383615
		 -0.50077838 -1.69597864 -0.51434749 -0.22816837 -0.56483376 -0.22863603 -0.55127454
		 -1.69652438 0.10609026 -0.22067305 0.1056904 -1.71817696 0.15710756 -1.71818948 0.15750748
		 -0.2206873 -0.0068617612 -0.16109273 -0.033167601 -0.16109273 -0.033167601 -0.18898246
		 -0.0068617612 -0.18898246 -0.37328878 -0.16109273 -0.37328878 -0.18898246 -0.40403366
		 -0.16109273 -0.033167601 -0.1016233 -0.37328878 -0.1016233 -0.37328878 -0.12950999
		 -0.033167601 -0.12950999 -0.40403366 -0.12950999 -0.039069816 -0.22063753 -0.045371383
		 -1.71814013 -0.36451668 -0.22361466 -0.34214559 -1.69426787 -0.0068617612 -0.12950999;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "6C1BF6EA-4E9B-8540-C8FD-57929A04AFA1";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 430\n            -height 555\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n"
		+ "            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 430\n            -height 555\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 430\n            -height 555\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1585\n            -height 1043\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mayaUsdProxyShapeBaseDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n"
		+ "            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n"
		+ "            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showRowButtons 1\n                -tangentScale 1\n                -tangentLineThickness 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            cameraSequencer -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -showThumbnail 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n"
		+ "                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -showNamespace 1\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n"
		+ "                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"motionMakerEditorPanel\" (localizedPanelLabel(\"MotionMaker Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"MotionMaker Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1585\\n    -height 1043\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mayaUsdProxyShapeBaseDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1585\\n    -height 1043\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mayaUsdProxyShapeBaseDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "9B2400D5-4D89-9EAB-9461-3B909ECB7CE0";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :openPBR_shader1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "openPBR_shader1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyTweakUV16.out" "SM_doorShape.i";
connectAttr "polyTweakUV16.uvtk[0]" "SM_doorShape.uvst[0].uvtw";
connectAttr "polyTweakUV11.out" "SM_doorknobShape.i";
connectAttr "polyTweakUV11.uvtk[0]" "SM_doorknobShape.uvst[0].uvtw";
connectAttr "polyTweakUV22.out" "SM_doorframeShape.i";
connectAttr "polyTweakUV22.uvtk[0]" "SM_doorframeShape.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polyExtrudeFace1.ip";
connectAttr "SM_doorShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "SM_doorShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace3.ip";
connectAttr "SM_doorShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "SM_doorShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace4.out" "polyExtrudeFace5.ip";
connectAttr "SM_doorShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace5.out" "polyExtrudeFace6.ip";
connectAttr "SM_doorShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace6.out" "polyExtrudeFace7.ip";
connectAttr "SM_doorShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "polyCloseBorder2.ip";
connectAttr "polyTweak3.out" "polySoftEdge1.ip";
connectAttr "SM_doorShape.wm" "polySoftEdge1.mp";
connectAttr "polyCloseBorder2.out" "polyTweak3.ip";
connectAttr "polyCylinder1.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polyTweak4.out" "polyBevel1.ip";
connectAttr "SM_doorknobShape.wm" "polyBevel1.mp";
connectAttr "polySplit15.out" "polyTweak4.ip";
connectAttr "polyBevel1.out" "polySoftEdge2.ip";
connectAttr "SM_doorknobShape.wm" "polySoftEdge2.mp";
connectAttr "M_door.out" "aiStandardSurface1SG.ss";
connectAttr "SM_doorShape.iog" "aiStandardSurface1SG.dsm" -na;
connectAttr "SM_doorknobShape.iog" "aiStandardSurface1SG.dsm" -na;
connectAttr "SM_doorframeShape.iog" "aiStandardSurface1SG.dsm" -na;
connectAttr "aiStandardSurface1SG.msg" "materialInfo1.sg";
connectAttr "M_door.msg" "materialInfo1.m";
connectAttr "M_door.msg" "materialInfo1.t" -na;
connectAttr ":defaultArnoldDenoiser.msg" ":defaultArnoldRenderOptions.imagers" -na
		;
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polySoftEdge2.out" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "deleteComponent15.ig";
connectAttr "deleteComponent15.og" "deleteComponent16.ig";
connectAttr "deleteComponent16.og" "deleteComponent17.ig";
connectAttr "deleteComponent17.og" "deleteComponent18.ig";
connectAttr "deleteComponent18.og" "deleteComponent19.ig";
connectAttr "deleteComponent19.og" "deleteComponent20.ig";
connectAttr "deleteComponent20.og" "deleteComponent21.ig";
connectAttr "deleteComponent21.og" "deleteComponent22.ig";
connectAttr "deleteComponent22.og" "deleteComponent23.ig";
connectAttr "deleteComponent23.og" "deleteComponent24.ig";
connectAttr "deleteComponent24.og" "deleteComponent25.ig";
connectAttr "deleteComponent25.og" "deleteComponent26.ig";
connectAttr "deleteComponent26.og" "deleteComponent27.ig";
connectAttr "deleteComponent27.og" "deleteComponent28.ig";
connectAttr "polyCube2.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polySplit18.ip";
connectAttr "polySplit18.out" "deleteComponent29.ig";
connectAttr "deleteComponent29.og" "deleteComponent30.ig";
connectAttr "deleteComponent30.og" "deleteComponent31.ig";
connectAttr "deleteComponent31.og" "polySplit19.ip";
connectAttr "polySplit19.out" "polySplit20.ip";
connectAttr "polySplit20.out" "deleteComponent32.ig";
connectAttr "deleteComponent32.og" "polyBridgeEdge1.ip";
connectAttr "SM_doorframeShape.wm" "polyBridgeEdge1.mp";
connectAttr "polyBridgeEdge1.out" "polyBridgeEdge2.ip";
connectAttr "SM_doorframeShape.wm" "polyBridgeEdge2.mp";
connectAttr "polyBridgeEdge2.out" "polyBridgeEdge3.ip";
connectAttr "SM_doorframeShape.wm" "polyBridgeEdge3.mp";
connectAttr "polyBridgeEdge3.out" "polyMapSewMove1.ip";
connectAttr "polyMapSewMove1.out" "polyAutoProj1.ip";
connectAttr "SM_doorframeShape.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "polyMapSewMove2.ip";
connectAttr "polyMapSewMove2.out" "polyMapSewMove3.ip";
connectAttr "polyMapSewMove3.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyLayoutUV1.ip";
connectAttr "polyLayoutUV1.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapSewMove4.ip";
connectAttr "polyMapSewMove4.out" "polyMapSewMove5.ip";
connectAttr "polyMapSewMove5.out" "polyMapSewMove6.ip";
connectAttr "polyMapSewMove6.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyAutoProj2.ip";
connectAttr "SM_doorframeShape.wm" "polyAutoProj2.mp";
connectAttr "polyAutoProj2.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyLayoutUV2.ip";
connectAttr "polyLayoutUV2.out" "polyMapSewMove7.ip";
connectAttr "polyMapSewMove7.out" "polyMapSewMove8.ip";
connectAttr "polyMapSewMove8.out" "polyMapSewMove9.ip";
connectAttr "polyMapSewMove9.out" "polyMapSewMove10.ip";
connectAttr "polyMapSewMove10.out" "deleteComponent33.ig";
connectAttr "deleteComponent33.og" "deleteComponent34.ig";
connectAttr "deleteComponent34.og" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyTweakUV6.ip";
connectAttr "polyTweakUV6.out" "polyAutoProj3.ip";
connectAttr "SM_doorframeShape.wm" "polyAutoProj3.mp";
connectAttr "polyAutoProj3.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV7.out" "polyMapSewMove11.ip";
connectAttr "polyMapSewMove11.out" "polyTweakUV8.ip";
connectAttr "polyTweakUV8.out" "polyMapSewMove12.ip";
connectAttr "polyMapSewMove12.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV9.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyTweakUV10.ip";
connectAttr "deleteComponent28.og" "polyTweakUV11.ip";
connectAttr "polySoftEdge1.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "deleteComponent35.ig";
connectAttr "deleteComponent35.og" "deleteComponent36.ig";
connectAttr "deleteComponent36.og" "polyAutoProj4.ip";
connectAttr "SM_doorShape.wm" "polyAutoProj4.mp";
connectAttr "polyAutoProj4.out" "polyTweakUV12.ip";
connectAttr "polyTweakUV12.out" "polyMapSewMove13.ip";
connectAttr "polyMapSewMove13.out" "polyMapSewMove14.ip";
connectAttr "polyMapSewMove14.out" "polyMapSewMove15.ip";
connectAttr "polyMapSewMove15.out" "polyMapSewMove16.ip";
connectAttr "polyMapSewMove16.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyMapSewMove17.ip";
connectAttr "polyMapSewMove17.out" "polyMapSewMove18.ip";
connectAttr "polyMapSewMove18.out" "polyTweakUV13.ip";
connectAttr "polyTweakUV13.out" "polyMapSewMove19.ip";
connectAttr "polyMapSewMove19.out" "polyMapSewMove20.ip";
connectAttr "polyMapSewMove20.out" "polyTweakUV14.ip";
connectAttr "polyTweakUV14.out" "polyMapSewMove21.ip";
connectAttr "polyMapSewMove21.out" "polyTweakUV15.ip";
connectAttr "polyTweakUV15.out" "polyMapSewMove22.ip";
connectAttr "polyMapSewMove22.out" "polyMapSewMove23.ip";
connectAttr "polyMapSewMove23.out" "polyMapSewMove24.ip";
connectAttr "polyMapSewMove24.out" "polyMapSewMove25.ip";
connectAttr "polyMapSewMove25.out" "polyMapSewMove26.ip";
connectAttr "polyMapSewMove26.out" "polyMapSewMove27.ip";
connectAttr "polyMapSewMove27.out" "polyMapSewMove28.ip";
connectAttr "polyMapSewMove28.out" "polyMapSewMove29.ip";
connectAttr "polyMapSewMove29.out" "polyMapSewMove30.ip";
connectAttr "polyMapSewMove30.out" "polyMapSewMove31.ip";
connectAttr "polyMapSewMove31.out" "polyMapSewMove32.ip";
connectAttr "polyMapSewMove32.out" "polyMapSewMove33.ip";
connectAttr "polyMapSewMove33.out" "polyMapSewMove34.ip";
connectAttr "polyMapSewMove34.out" "polyMapSewMove35.ip";
connectAttr "polyMapSewMove35.out" "polyMapSewMove36.ip";
connectAttr "polyMapSewMove36.out" "polyMapSewMove37.ip";
connectAttr "polyMapSewMove37.out" "polyMapSewMove38.ip";
connectAttr "polyMapSewMove38.out" "polyMapSewMove39.ip";
connectAttr "polyMapSewMove39.out" "polyMapSewMove40.ip";
connectAttr "polyMapSewMove40.out" "polyMapSewMove41.ip";
connectAttr "polyMapSewMove41.out" "deleteComponent37.ig";
connectAttr "deleteComponent37.og" "deleteComponent38.ig";
connectAttr "deleteComponent38.og" "deleteComponent39.ig";
connectAttr "deleteComponent39.og" "deleteComponent40.ig";
connectAttr "deleteComponent40.og" "deleteComponent41.ig";
connectAttr "deleteComponent41.og" "polyTweakUV16.ip";
connectAttr "polyTweakUV10.out" "polyMapSewMove42.ip";
connectAttr "polyMapSewMove42.out" "polyMapSewMove43.ip";
connectAttr "polyMapSewMove43.out" "polyTweakUV17.ip";
connectAttr "polyTweakUV17.out" "polyMapSewMove44.ip";
connectAttr "polyMapSewMove44.out" "polyMapSewMove45.ip";
connectAttr "polyMapSewMove45.out" "polyTweakUV18.ip";
connectAttr "polyTweakUV18.out" "polyMapSewMove46.ip";
connectAttr "polyMapSewMove46.out" "polyMapSewMove47.ip";
connectAttr "polyMapSewMove47.out" "polyTweakUV19.ip";
connectAttr "polyTweakUV19.out" "polyMapSewMove48.ip";
connectAttr "polyMapSewMove48.out" "polyTweakUV20.ip";
connectAttr "polyTweakUV20.out" "deleteComponent42.ig";
connectAttr "deleteComponent42.og" "polyTweakUV21.ip";
connectAttr "polyTweakUV21.out" "polyMapSewMove49.ip";
connectAttr "polyMapSewMove49.out" "polyMapSewMove50.ip";
connectAttr "polyMapSewMove50.out" "polyTweakUV22.ip";
connectAttr "aiStandardSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "M_door.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of SM_door.ma
