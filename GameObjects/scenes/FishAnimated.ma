//Maya ASCII 2018 scene
//Name: FishAnimated.ma
//Last modified: Tue, Oct 16, 2018 06:33:09 PM
//Codeset: 1252
requires maya "2018";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "37D84806-4A7A-77BC-71C9-DBA101DFC08B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 16.959668539648749 16.883849355405101 8.886511376254477 ;
	setAttr ".r" -type "double3" -30.338352796047896 -635.39999999982399 -359.99999999732847 ;
	setAttr ".rp" -type "double3" 0 0 4.4408920985006262e-16 ;
	setAttr ".rpt" -type "double3" 1.3735573814770643e-16 1.0847508341207379e-16 -8.5223352719613956e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "1F4DB908-4EEC-7F00-3343-9FA3DB7D987E";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 23.877722948248913;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.0600039259875138 -5.4465482674599699e-16 -2.4529072747788141 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "8AA88207-4B0C-C75C-BF6F-C38E9C62BD30";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.15881131233700863 1000.1 0.94282696149674283 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "46CAAEB9-4571-9D3B-B339-D194FC99B98A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 4.7439930270389734;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "10C1C747-49D3-9835-74BA-75A70630D49E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "DB37891F-4E79-C17D-12E8-899AF8E3ECE2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 1.0237164341501406;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "4F080D5A-44AD-CE66-9888-0E9863A33EA0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0.18274434168382564 0.5114496884704236 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "9D7CE97C-4E52-CB32-3D27-298F5D68A8F6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 3.7424345018838934;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCone1";
	rename -uid "32C39F2E-4624-5EA4-62BB-C6BAE8F4E368";
	setAttr ".t" -type "double3" -21.349017103768571 4.2433089286450123 10.389261744966442 ;
	setAttr ".s" -type "double3" 1 2.7907553258303639 1 ;
createNode mesh -n "pConeShape1" -p "pCone1";
	rename -uid "3A75C6EB-46FA-9C90-CA36-E1A4E4C5FED3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".vt[0:8]"  0.70710671 -1 -0.70710671 -7.1054274e-15 -1 -0.99999988
		 -0.70710671 -1 -0.70710671 -0.99999988 -1 -1.7763568e-15 -0.70710671 -1 0.70710671
		 -3.5527137e-15 -1 0.99999994 0.70710677 -1 0.70710677 1 -1 1.7763568e-15 3.5527137e-15 1 -1.7763568e-15;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "joint7";
	rename -uid "3D4438E9-4DEF-8EBF-0434-06B63C14315F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0 0 -0.48994276117898028 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -0.48994276117898028 1;
	setAttr ".radi" 0.1;
createNode joint -n "joint6" -p "joint7";
	rename -uid "B5770C4F-4595-DD5E-85D6-38A32657B6CD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 0 0.30210335448048464 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -0.18783940669849564 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint5" -p "joint6";
	rename -uid "D4732DAC-45E9-01F0-3CD8-CCBB3A3CFD56";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 0 0.62270555632330926 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.43486614962481362 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint1" -p "joint5";
	rename -uid "99FD52DD-401D-9695-3C07-038C854143EB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1.0143434184465647 1;
	setAttr ".radi" 0.5;
createNode transform -n "polySurface10";
	rename -uid "F5829AD9-427E-A91C-31B0-3792B40D522E";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -0.019564509391784668 0.10836178064346313 ;
	setAttr ".sp" -type "double3" 0 -0.019564509391784668 0.10836178064346313 ;
createNode mesh -n "polySurface10Shape" -p "polySurface10";
	rename -uid "1C73D608-4CA4-4AE1-CFCA-C4952917F9B6";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49868167258013851 0.50109029838466412 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurface10ShapeOrig1" -p "polySurface10";
	rename -uid "A5F31D72-41BE-F725-6ED8-108E23DB2B2E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 233 ".uvst[0].uvsp[0:232]" -type "float2" 0.64752984 0.88791883
		 0.64752984 0.910595 0.50026613 0.91059488 0.54422379 0.89588761 0.74140501 0.91059488
		 0.74140501 0.90524989 0.85414195 0.88791865 0.85414183 0.91059494 0.91249692 0.89898258
		 0.95476234 0.91059488 0.91355252 0.42269489 0.90894568 0.42269489 0.90894568 0.34255967
		 0.91749728 0.34255967 0.93692219 0.42310312 0.96528858 0.5477851 0.9182235 0.5477851
		 0.920627 0.63876021 0.97988474 0.63876021 0.97783798 0.80749267 0.90894556 0.80749267
		 0.90894556 0.71884334 0.92274272 0.71884334 0.99273336 0.71884334 0.039223522 0.15788564
		 0.074174225 0.15788564 0.074174136 0.19559783 0.015423357 0.18385047 0.017791986
		 0.11942616 0.074174136 0.11942616 0.047759116 0.080967605 0.074174225 0.078096271
		 0.84392148 0.12165619 0.78522122 0.12165619 0.78522122 0.090357646 0.81138676 0.090357646
		 0.86898631 0.1805893 0.78522122 0.1805893 0.88709778 0.27209064 0.78522122 0.27209064
		 0.78522122 0.44865155 0.78522122 0.35474962 0.87147522 0.35474962 0.85372788 0.44865155
		 0.81923753 0.57734448 0.78522122 0.57734448 0.30478662 0.14247055 0.27129295 0.10564376
		 0.29742235 0.21181284 0.35704583 0.21181269 0.30993515 0.31947574 0.3820712 0.31947583
		 0.369048 0.41673464 0.3034234 0.41673452 0.29602617 0.5272218 0.35425323 0.52722198
		 0.27713323 0.67864567 0.3164674 0.67864567 0.26280534 0.77646369 0.28781173 0.77646369
		 0.23779926 0.14410539 0.23779926 0.21181269 0.23779926 0.31947574 0.2777172 0.31947574
		 0.27411386 0.41673464 0.23779926 0.41673464 0.23779926 0.5272218 0.23779926 0.67864567
		 0.23779926 0.77646369 0.20430544 0.10564376 0.17817587 0.21181269 0.16566309 0.31947589
		 0.17217493 0.41673452 0.17957222 0.52722198 0.19846502 0.67864555 0.21279287 0.77646369
		 0.18169245 0.13578092 0.1294333 0.21181269 0.10440776 0.31947574 0.11743128 0.41673464
		 0.1322259 0.5272218 0.17001176 0.67864555 0.19866738 0.77646369 0.33766037 0.8179633
		 0.3602556 0.81796342 0.29845214 0.77646369 0.2845585 0.81796342 0.23145652 0.81796342
		 0.17835453 0.8179633 0.14835855 0.8179633 0.18843672 0.77646357 0.12663302 0.81796318
		 0.96956575 0.87009722 0.90894568 0.87009722 0.9182235 0.52279675 0.90894556 0.52279675
		 0.920627 0.63074762 0.90894556 0.63074762 0.64752984 0.93327129 0.54422379 0.92530221
		 0.74140495 0.91593987 0.85414195 0.93327111 0.91249692 0.92220718 0.66682833 0.40347198
		 0.5838623 0.29066709 0.61632633 0.43157718 0.73624367 0.068959847 0.90894556 0.67531264
		 0.92274272 0.67531264 0.9043389 0.42310312 0.88096917 0.42310312 0.9003942 0.34255967
		 0.85260272 0.5477851 0.89966774 0.5477851 0.8972643 0.63876021 0.83800656 0.63876021
		 0.8400535 0.80749267 0.82515776 0.71884334 0.89514858 0.71884334 0.10912478 0.15788564
		 0.132925 0.18385047 0.13055629 0.11942616 0.10058925 0.080967605 0.69142711 0.068911627
		 0.62954992 0.068910167 0.51000834 0.11518987 0.41046691 0.068914518 0.79561889 0.66047895
		 0.78522122 0.66047895 0.7265209 0.12165619 0.75905561 0.090357646 0.70145583 0.1805893
		 0.68334442 0.27209064 0.78522122 0.44865155 0.71671432 0.44865155 0.69896698 0.35474962
		 0.75120467 0.57734448 0.77482343 0.66047895 0.64214909 0.62430203 0.7207002 0.52500755
		 0.63005978 0.5338856 0.43338451 0.81715202 0.38065469 0.74663579 0.44081485 0.7461195
		 0.46717969 0.85475063 0.35540381 0.63674778 0.42818964 0.63566679 0.36854443 0.53839207
		 0.38347226 0.42760339 0.44222379 0.42624125 0.43475989 0.53700143 0.4215984 0.27658299
		 0.4612869 0.27667946 0.45051238 0.17772456 0.4757438 0.17774867 0.50097513 0.7462697
		 0.50097513 0.81561697 0.46069783 0.63579839 0.50097513 0.63587254 0.46433356 0.53691673
		 0.50097513 0.42589322 0.50097513 0.53687865 0.50097513 0.27678058 0.50097513 0.17774867
		 0.56113541 0.7461195 0.53477043 0.85463965 0.57376081 0.63566679 0.55972648 0.42624125
		 0.56719041 0.53700155 0.54066336 0.27667946 0.52620655 0.17774896 0.61031669 0.74697614
		 0.55758697 0.82392073 0.63556767 0.63729781 0.60749906 0.42789063 0.62242693 0.53880489
		 0.56937289 0.27665156 0.54045916 0.17771466 0.40021476 0.13572757 0.43977621 0.17768241
		 0.37741598 0.13573106 0.45379481 0.1357203 0.50737488 0.13571741 0.56095499 0.13572262
		 0.59122103 0.1357203 0.61314207 0.13572292 0.55078202 0.17767979 0.84832525 0.87009722
		 0.89966774 0.52279675 0.9043389 0.42228684 0.8972643 0.63074762 0.89514858 0.67531264
		 0.69742775 0.57514608 0.43606353 0.88406521 0.48225844 0.88406533 0.32749975 0.88406533
		 0.22884667 0.83825475 0.1103718 0.88406521 0.049046755 0.88406533 0.0046299398 0.88406533
		 0.12224033 0.52508062 0.071966976 0.55312407 0.15455779 0.66546386 0.10856906 0.42298299
		 0.01833871 0.43197539 0.096534491 0.33310938 0.041505724 0.38196206 0.30092546 0.068909302
		 0.25431457 0.068968549 0.12470004 0.65688258 0.064210951 0.76504666 0.063225806 0.76504666
		 0.093260378 0.65688258 0.12821633 0.75441319 0.077329606 0.83709341 0.12470004 0.65688258
		 0.093260378 0.65688258 0.063225836 0.76504666 0.064210951 0.76504666 0.077329606
		 0.83709341 0.12821633 0.75441319 0.05827406 0.73697954 0.025240779 0.61801577 0.039767146
		 0.53877574 0.065262824 0.62971109 0.040752739 0.53877574 0.096720189 0.62971109 0.058274031
		 0.73697954 0.065262824 0.62971109 0.039767057 0.53877574 0.025240749 0.61801577 0.096720099
		 0.62971109 0.040752679 0.53877574;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 150 ".vt[0:149]"  0.033097237 -0.17332688 1.11128807 0 -0.2102029 1.11128807
		 0.051030546 -0.08666344 1.11128807 0.051030546 2.9802323e-09 1.11128807 0.051030546 0.08666344 1.11128807
		 0.026132166 0.13561743 1.11128807 0 0.17107397 1.11128807 0.08549194 0.23492861 0.76291722
		 0 0.28013375 0.76468229 0.17217532 0.36588216 0.22363573 0.2560426 0.46229059 -0.51623434
		 9.4403166e-19 0.49774706 -0.51623434 0.21052405 0.37556019 -0.89966613 2.369226e-18 0.41101661 -0.89966613
		 0.18524641 0.19444716 -1.17044687 0 0.2299037 -1.17044687 0.11020228 0.11607832 -1.27777779
		 0 0.11607832 -1.27777779 0.17777783 -2.2096525e-18 -1.1408 0 -1.0408341e-17 -1.1408
		 0.083288789 -0.11607832 -1.27777779 0 -0.12474421 -1.27777779 0.18685079 -0.2321566 -1.14662266
		 0 -0.26903266 -1.14662266 0.26663628 -0.41326955 -0.89966613 0 -0.45014563 -0.89966613
		 0.32428735 -0.5 -0.5162344 0 -0.53687608 -0.5162344 0.2180663 -0.40359154 0.22363567
		 -1.2613379e-17 -0.44046763 0.22363567 0.1082788 -0.27263814 0.76291722 0 -0.30951422 0.76291722
		 0.41111112 -0.20663477 -0.89966613 0.33622384 -0.20179577 0.22363569 0.16694877 -0.13631907 0.76291722
		 0.41111112 3.5243751e-18 -0.89966613 0.5 0 -0.5162344 0.33622384 0 0.22363569 0.16694877 2.9802323e-09 0.76291722
		 0.41111112 0.20663477 -0.89966613 0.5 0.25 -0.5162344 0.33622384 0.20179577 0.22363569
		 0.16694877 0.13631907 0.76291722 0.013184382 -0.34608603 1.25908518 0.020328177 -0.16205221 1.25908518
		 0 -0.42439395 1.25908518 0.020328177 0.02198158 1.25908518 0.020328177 0.20601538 1.25908518
		 0.010409823 0.30997142 1.25908518 0 0.38526499 1.25908518 0.05593504 -0.6871196 1.49450135
		 0.086242706 -0.3108727 1.49450135 0 -0.84721589 1.49450135 0 -0.3108727 1.49450135
		 0.020328177 0.031026863 1.33135176 0 0.031026863 1.33135176 0.086242743 0.44162095 1.49450135
		 0 0.44162095 1.49450135 0.04416395 0.65415347 1.49450135 0 0.80808687 1.49450135
		 0.042161837 0.49176741 -0.51623434 0.014077717 0.2741541 0.76468229 0.028351629 0.39535895 0.22363573
		 -3.469447e-18 0.58988678 0.3317169 -2.1526478e-18 0.70412946 -0.32795322 0.028351629 0.58390713 0.3317169
		 0.042161837 0.6981498 -0.32795322 2.3453217e-19 0.79101789 -0.13519867 0.035696425 0.78503823 -0.13519867
		 0.035696425 0.44663262 -0.16985533 0.21677914 0.4171558 -0.16985534 0.42332625 0.22743261 -0.16985537
		 0.42332625 0 -0.16985537 0.27455872 -0.45486522 -0.1698554 0 -0.4917413 -0.1698554
		 -0.033097237 -0.17332688 1.11128807 -0.051030546 -0.08666344 1.11128807 -0.051030546 2.9802323e-09 1.11128807
		 -0.051030546 0.08666344 1.11128807 -0.026132166 0.13561743 1.11128807 -0.08549194 0.23492861 0.76291722
		 -0.17217532 0.36588216 0.22363573 -0.2560426 0.46229059 -0.51623434 -0.21052405 0.37556019 -0.89966613
		 -0.18524641 0.19444716 -1.17044687 -0.11020228 0.11607832 -1.27777779 -0.17777783 0 -1.1408
		 -0.083288789 -0.11607832 -1.27777779 -0.18685079 -0.2321566 -1.14662266 -0.26663628 -0.41326955 -0.89966613
		 -0.32428735 -0.5 -0.5162344 -0.2180663 -0.40359154 0.22363567 0 -0.44046763 0.22363567
		 -0.1082788 -0.27263814 0.76291722 -0.41111112 -0.20663477 -0.89966613 -0.33622384 -0.20179577 0.22363569
		 -0.16694877 -0.13631907 0.76291722 -0.41111112 0 -0.89966613 -0.5 0 -0.5162344 -0.33622384 0 0.22363569
		 -0.16694877 2.9802323e-09 0.76291722 -0.41111112 0.20663477 -0.89966613 -0.5 0.25 -0.5162344
		 -0.33622384 0.20179577 0.22363569 -0.16694877 0.13631907 0.76291722 -0.013184382 -0.34608603 1.25908518
		 -0.020328177 -0.16205221 1.25908518 -0.020328177 0.02198158 1.25908518 -0.020328177 0.20601538 1.25908518
		 -0.010409823 0.30997142 1.25908518 -0.05593504 -0.6871196 1.49450135 -0.086242706 -0.3108727 1.49450135
		 -0.020328177 0.031026863 1.33135176 -0.086242743 0.44162095 1.49450135 -0.04416395 0.65415347 1.49450135
		 -0.042161837 0.49176741 -0.51623434 -0.014077717 0.2741541 0.76468229 -0.028351629 0.39535895 0.22363573
		 -0.028351629 0.58390713 0.3317169 -0.042161837 0.6981498 -0.32795322 -0.035696425 0.78503823 -0.13519867
		 -0.035696425 0.44663262 -0.16985533 -0.21677914 0.4171558 -0.16985534 -0.42332625 0.22743261 -0.16985537
		 -0.42332625 0 -0.16985537 -0.27455872 -0.45486522 -0.1698554 0.5 -0.25 -0.5162344
		 0.5 -0.13834232 -0.5162344 0.42332625 -0.12585422 -0.16985537 0.42332625 -0.22743261 -0.16985537
		 -0.5 -0.25 -0.5162344 -0.42332625 -0.22743261 -0.16985537 -0.42332625 -0.12585422 -0.16985537
		 -0.5 -0.13834232 -0.5162344 0.5 -0.25 -0.5162344 0.42332625 -0.22743262 -0.16985536
		 0.42332625 -0.12585421 -0.16985536 0.5 -0.13834232 -0.5162344 0.56091231 -0.35666755 -0.13208996
		 0.62290996 -0.30976063 0.12378285 0.62711936 -0.30657798 0.12378285 0.56553942 -0.35316885 -0.13208996
		 -0.5 -0.25 -0.5162344 -0.42332625 -0.22743261 -0.16985537 -0.42332625 -0.12585422 -0.16985537
		 -0.5 -0.13834232 -0.5162344 -0.56091231 -0.35666755 -0.13208996 -0.62290996 -0.30976063 0.12378285
		 -0.62711936 -0.30657798 0.12378285 -0.56553942 -0.35316885 -0.13208996;
	setAttr -s 285 ".ed";
	setAttr ".ed[0:165]"  50 51 0 50 52 0 52 53 1 51 53 1 54 55 1 51 54 0 53 55 1
		 54 56 0 55 57 1 56 57 1 56 58 0 57 59 1 58 59 0 7 61 1 5 7 0 5 6 0 6 8 0 61 8 0 7 9 0
		 61 62 0 9 62 1 69 70 1 9 70 0 62 69 0 10 12 0 10 60 1 60 11 0 11 13 0 12 13 1 12 14 0
		 13 15 0 14 15 0 14 16 0 15 17 0 16 17 1 16 18 0 17 19 1 18 19 1 18 20 0 19 21 0 20 21 1
		 20 22 0 21 23 0 22 23 0 22 24 0 23 25 0 24 25 1 24 26 0 25 27 0 26 27 1 28 29 1 73 28 0
		 73 74 1 74 29 0 28 30 0 29 31 0 30 31 1 30 0 0 31 1 0 0 1 0 24 32 1 20 32 1 26 126 1
		 32 126 1 28 33 1 129 33 1 129 73 1 30 34 1 33 34 1 0 2 0 34 2 1 32 35 1 18 35 1 127 36 1
		 35 36 1 33 37 1 72 37 1 72 128 1 34 38 1 37 38 1 2 3 0 38 3 1 35 39 1 16 39 1 36 40 1
		 39 40 1 37 41 1 71 41 1 71 72 1 38 42 1 41 42 1 3 4 0 42 4 1 39 12 1 40 10 1 41 9 1
		 70 71 1 42 7 1 4 5 0 0 43 0 1 45 0 43 45 0 43 44 0 2 44 0 44 46 0 3 46 0 46 47 0
		 4 47 0 47 48 0 5 48 0 48 49 0 6 49 0 43 50 0 45 52 0 44 51 0 46 54 0 47 56 0 48 58 0
		 49 59 0 61 65 0 8 63 0 65 63 1 65 68 0 63 67 0 67 68 1 62 65 0 68 69 1 60 66 0 66 64 0
		 11 64 0 68 66 0 67 64 0 69 60 0 70 10 0 40 71 1 36 72 1 26 73 0 27 74 0 80 116 1
		 81 117 1 82 115 1 91 92 1 77 78 0 78 79 0 79 80 0 80 81 0 81 122 0 82 83 0 83 84 0
		 84 85 0 85 86 0 86 87 0 87 88 0 88 89 0 89 90 0 90 125 0 91 93 0 92 31 0 93 75 0
		 87 94 1 94 130 1 95 96 1 96 76 1 86 97 1 97 98 1 98 124 1;
	setAttr ".ed[166:284]" 99 100 1 100 77 1 85 101 1 101 102 1 102 123 1 103 104 1
		 104 78 1 97 101 1 98 102 1 99 103 1 100 104 1 101 83 1 102 82 1 103 81 1 104 80 1
		 75 105 0 76 106 0 77 107 0 78 108 0 107 108 0 79 109 0 108 109 0 105 110 0 106 111 0
		 107 112 0 112 55 1 108 113 0 112 113 0 109 114 0 113 114 0 115 11 0 83 13 1 84 15 0
		 85 17 1 86 19 1 87 21 1 88 23 0 89 25 1 90 27 1 93 31 1 75 1 0 105 45 0 110 52 0
		 111 53 1 113 57 1 114 59 0 109 49 0 79 6 0 116 8 0 116 117 0 117 121 0 117 118 0
		 116 118 0 118 63 1 115 119 0 118 120 0 119 64 0 120 119 0 67 120 1 121 115 0 120 121 1
		 122 82 0 121 122 1 123 103 1 122 123 1 124 99 1 123 124 1 131 95 1 124 132 1 125 91 0
		 131 125 1 74 92 0 125 74 1 110 111 0 105 106 0 75 76 0 93 96 1 91 95 1 90 130 1 89 94 1
		 111 112 0 106 107 0 76 77 0 96 100 1 95 99 1 133 98 1 94 97 1 126 127 0 128 127 0
		 128 129 0 126 129 0 130 131 0 132 131 0 132 133 0 130 133 0 134 137 0 136 135 0 138 139 0
		 140 139 0 140 141 0 138 141 0 134 135 0 136 137 0 135 139 0 134 138 0 136 140 0 137 141 0
		 142 143 0 142 145 0 144 143 0 144 145 0 142 146 0 143 147 0 146 147 0 144 148 0 148 147 0
		 145 149 0 148 149 0 146 149 0;
	setAttr -s 135 -ch 546 ".fc[0:134]" -type "polyFaces" 
		f 4 3 -3 -2 0
		mu 0 4 0 1 2 3
		f 4 -7 -4 5 4
		mu 0 4 4 1 0 5
		f 4 9 -9 -5 7
		mu 0 4 6 7 4 5
		f 4 12 -12 -10 10
		mu 0 4 8 9 7 6
		f 5 17 -17 -16 14 13
		mu 0 5 10 11 12 13 14
		f 4 20 -20 -14 18
		mu 0 4 15 16 10 14
		f 4 -24 -21 22 -22
		mu 0 4 17 16 15 18
		f 5 28 -28 -27 -26 24
		mu 0 5 19 20 21 22 23
		f 4 31 -31 -29 29
		mu 0 4 92 93 20 19
		f 4 34 -34 -32 32
		mu 0 4 24 25 26 27
		f 4 37 -37 -35 35
		mu 0 4 28 29 25 24
		f 4 40 -40 -38 38
		mu 0 4 30 31 29 28
		f 4 43 -43 -41 41
		mu 0 4 32 33 34 35
		f 4 46 -46 -44 44
		mu 0 4 36 37 33 32
		f 4 49 -49 -47 47
		mu 0 4 38 39 37 36
		f 4 -54 -53 51 50
		mu 0 4 40 41 42 43
		f 4 56 -56 -51 54
		mu 0 4 44 45 40 43
		f 4 59 -59 -57 57
		mu 0 4 127 128 45 44
		f 4 -42 61 -61 -45
		mu 0 4 46 47 48 49
		f 4 60 63 -63 -48
		mu 0 4 49 48 50 51
		f 4 -67 65 -65 -52
		mu 0 4 52 53 54 55
		f 4 64 68 -68 -55
		mu 0 4 55 54 56 57
		f 4 67 70 -70 -58
		mu 0 4 57 56 58 59
		f 4 -39 72 -72 -62
		mu 0 4 47 60 61 48
		f 5 71 74 -74 -254 -64
		mu 0 5 48 61 62 63 50
		f 5 -78 76 -76 -66 -256
		mu 0 5 64 65 66 54 53
		f 4 75 79 -79 -69
		mu 0 4 54 66 67 56
		f 4 78 81 -81 -71
		mu 0 4 56 67 68 58
		f 4 -36 83 -83 -73
		mu 0 4 60 69 70 61
		f 4 82 85 -85 -75
		mu 0 4 61 70 71 62
		f 4 -89 87 -87 -77
		mu 0 4 65 72 73 66
		f 4 86 90 -90 -80
		mu 0 4 66 73 74 67
		f 4 89 92 -92 -82
		mu 0 4 67 74 75 68
		f 4 -33 -30 -94 -84
		mu 0 4 69 76 77 70
		f 4 93 -25 -95 -86
		mu 0 4 70 77 78 71
		f 4 -97 -23 -96 -88
		mu 0 4 72 79 80 73
		f 4 95 -19 -98 -91
		mu 0 4 73 80 81 74
		f 4 97 -15 -99 -93
		mu 0 4 74 81 82 75
		f 4 101 -101 -60 99
		mu 0 4 83 84 85 59
		f 4 69 103 -103 -100
		mu 0 4 59 58 86 83
		f 4 80 105 -105 -104
		mu 0 4 58 68 87 86
		f 4 107 -107 -106 91
		mu 0 4 75 88 87 68
		f 4 109 -109 -108 98
		mu 0 4 82 89 88 75
		f 4 15 111 -111 -110
		mu 0 4 82 90 91 89
		f 4 1 -114 -102 112
		mu 0 4 193 194 84 83
		f 4 102 114 -1 -113
		mu 0 4 83 86 195 193
		f 4 104 115 -6 -115
		mu 0 4 86 87 196 195
		f 4 116 -8 -116 106
		mu 0 4 88 197 196 87
		f 4 117 -11 -117 108
		mu 0 4 89 198 197 88
		f 4 110 118 -13 -118
		mu 0 4 89 91 199 198
		f 4 121 -121 -18 119
		mu 0 4 94 95 11 10
		f 4 -125 -124 -122 122
		mu 0 4 96 97 95 94
		f 3 125 -120 19
		mu 0 3 200 201 202
		f 4 -127 -123 -126 23
		mu 0 4 203 204 201 200
		f 4 129 -129 -128 26
		mu 0 4 21 107 108 22
		f 4 128 -132 124 130
		mu 0 4 108 107 97 96
		f 4 127 -131 126 132
		mu 0 4 205 206 204 203
		f 4 -133 21 133 25
		mu 0 4 22 17 18 23
		f 4 94 -134 96 -135
		mu 0 4 71 78 79 72
		f 4 84 134 88 -136
		mu 0 4 62 71 72 65
		f 4 62 256 66 -137
		mu 0 4 51 50 53 52
		f 4 52 -138 -50 136
		mu 0 4 42 41 39 38
		f 4 73 135 77 254
		mu 0 4 63 62 65 64
		f 4 -240 208 2 -210
		mu 0 4 98 99 2 1
		f 4 -192 -247 209 6
		mu 0 4 4 100 98 1
		f 4 -194 191 8 -211
		mu 0 4 101 100 4 7
		f 4 -196 210 11 -212
		mu 0 4 102 101 7 9
		f 5 -139 -145 213 16 -215
		mu 0 5 109 110 111 12 11
		f 4 -146 138 215 -140
		mu 0 4 112 110 109 113
		f 4 228 -147 139 216
		mu 0 4 114 115 112 113
		f 5 -148 140 196 27 -198
		mu 0 5 116 117 118 21 20
		f 4 -149 197 30 -199
		mu 0 4 187 116 20 93
		f 4 -150 198 33 -200
		mu 0 4 119 120 26 25
		f 4 -151 199 36 -201
		mu 0 4 121 119 25 29
		f 4 -152 200 39 -202
		mu 0 4 122 121 29 31
		f 4 -153 201 42 -203
		mu 0 4 129 130 34 33
		f 4 -154 202 45 -204
		mu 0 4 131 129 33 37
		f 4 -155 203 48 -205
		mu 0 4 132 131 37 39
		f 4 -142 -236 238 237
		mu 0 4 133 134 135 41
		f 4 -157 141 157 -206
		mu 0 4 136 134 133 45
		f 4 -159 205 58 -207
		mu 0 4 137 136 45 128
		f 4 153 245 -160 152
		mu 0 4 141 142 143 144
		f 4 154 244 -161 -246
		mu 0 4 142 145 146 143
		f 4 235 243 -234 236
		mu 0 4 147 148 149 150
		f 4 156 242 -162 -244
		mu 0 4 148 151 152 149
		f 4 158 241 -163 -243
		mu 0 4 151 153 154 152
		f 4 159 252 -164 151
		mu 0 4 144 143 155 156
		f 5 160 260 251 -165 -253
		mu 0 5 143 146 157 158 155
		f 5 258 233 250 -232 234
		mu 0 5 159 150 149 160 161
		f 4 161 249 -167 -251
		mu 0 4 149 152 162 160
		f 4 162 248 -168 -250
		mu 0 4 152 154 163 162
		f 4 163 173 -169 150
		mu 0 4 156 155 164 165
		f 4 164 174 -170 -174
		mu 0 4 155 158 166 164
		f 4 231 175 -230 232
		mu 0 4 161 160 167 168
		f 4 166 176 -172 -176
		mu 0 4 160 162 169 167
		f 4 167 142 -173 -177
		mu 0 4 162 163 170 169
		f 4 168 177 148 149
		mu 0 4 165 164 171 172
		f 4 169 178 147 -178
		mu 0 4 164 166 173 171
		f 4 229 179 146 230
		mu 0 4 168 167 174 175
		f 4 171 180 145 -180
		mu 0 4 167 169 176 174
		f 4 172 143 144 -181
		mu 0 4 169 170 177 176
		f 4 -182 206 100 -208
		mu 0 4 178 153 179 180
		f 4 181 240 -183 -242
		mu 0 4 153 178 181 154
		f 4 182 247 -184 -249
		mu 0 4 154 181 182 163
		f 4 -143 183 185 -185
		mu 0 4 170 163 182 183
		f 4 -144 184 187 -187
		mu 0 4 177 170 183 184
		f 4 186 212 -112 -214
		mu 0 4 177 184 185 186
		f 4 -189 207 113 -209
		mu 0 4 207 178 180 208
		f 4 188 239 -190 -241
		mu 0 4 178 207 126 181
		f 4 189 246 -191 -248
		mu 0 4 181 126 125 182
		f 4 -186 190 193 -193
		mu 0 4 183 182 125 124
		f 4 -188 192 195 -195
		mu 0 4 184 183 124 123
		f 4 194 211 -119 -213
		mu 0 4 184 123 106 185
		f 4 -219 214 120 -220
		mu 0 4 188 189 11 95
		f 4 -222 219 123 224
		mu 0 4 190 188 95 97
		f 3 -216 218 -218
		mu 0 3 105 104 103
		f 4 -217 217 221 226
		mu 0 4 140 105 103 139
		f 4 -197 220 222 -130
		mu 0 4 21 118 191 107
		f 4 -224 -225 131 -223
		mu 0 4 191 190 97 107
		f 4 -226 -227 223 -221
		mu 0 4 138 140 139 192
		f 4 -141 -228 -229 225
		mu 0 4 118 117 115 114
		f 4 170 -231 227 -179
		mu 0 4 166 168 175 173
		f 4 165 -233 -171 -175
		mu 0 4 158 161 168 166
		f 4 155 -237 -258 -245
		mu 0 4 145 147 150 146
		f 4 -156 204 137 -239
		mu 0 4 135 132 39 41
		f 4 -260 -235 -166 -252
		mu 0 4 157 159 161 158
		f 4 270 263 -270 -268
		mu 0 4 221 222 223 224
		f 4 269 -265 -272 262
		mu 0 4 224 223 225 226
		f 4 271 265 -273 -269
		mu 0 4 213 214 210 209
		f 4 272 -267 -271 261
		mu 0 4 209 210 211 212
		f 4 279 -282 283 -285
		f 4 273 278 -280 -278
		mu 0 4 227 228 229 230
		f 4 -276 280 281 -279
		mu 0 4 228 231 232 229
		f 4 276 282 -284 -281
		mu 0 4 220 215 218 219
		f 4 -275 277 284 -283
		mu 0 4 215 216 217 218;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "left";
	rename -uid "D9BA3382-4BD0-2DB9-861D-0B972EDAF418";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1000.1 -0.38733892005551496 -0.047443325618358956 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "E96C2742-4B63-00EC-3F71-A3BF82062B65";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 6.388732607884271;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "bottom";
	rename -uid "3527DCB9-491B-C1C0-9D7C-7F956308EA14";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.05937916308506469 -1000.1 0.73481714317767644 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
createNode camera -n "bottomShape" -p "bottom";
	rename -uid "FCF28AEA-4348-3328-DAEB-1793D39A1389";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 13.399121530191838;
	setAttr ".imn" -type "string" "bottom1";
	setAttr ".den" -type "string" "bottom1_depth";
	setAttr ".man" -type "string" "bottom1_mask";
	setAttr ".hc" -type "string" "viewSet -bo %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "back";
	rename -uid "F7174292-4753-FE77-3FE9-C2959D3D09D5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 -1000.1 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode camera -n "backShape" -p "back";
	rename -uid "BEF3E279-4D2F-8E52-D573-538DCF5FAE1C";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 0.74583521259253638;
	setAttr ".imn" -type "string" "back1";
	setAttr ".den" -type "string" "back1_depth";
	setAttr ".man" -type "string" "back1_mask";
	setAttr ".hc" -type "string" "viewSet -b %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "7CF69DB2-44FE-6599-57F8-BCAEBA9796C3";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "42898E0D-480C-7A05-9B07-F5AA3A48BE39";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "96EBE1FA-4EB7-8287-7CAD-F0A15C458C4A";
createNode displayLayerManager -n "layerManager";
	rename -uid "9A6F3193-4D7F-03A3-CDDB-D99494A3D116";
createNode displayLayer -n "defaultLayer";
	rename -uid "FE73C3BD-45C1-2130-A795-CA9057024EFE";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5751CA89-45E7-C518-9BE9-EBAE2C409619";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "9FF58AD1-4FC2-FF25-F015-948FDF0FE22F";
	setAttr ".g" yes;
createNode dagPose -n "bindPose5";
	rename -uid "1EE641CD-47C2-959E-EB10-A3931F63B3D5";
	setAttr -s 4 ".wm";
	setAttr -s 4 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 -0.48994276117898028 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0.30210335448048464 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0.62270555632330926 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0.5794772688217511 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 4 ".m";
	setAttr -s 4 ".p";
	setAttr ".bp" yes;
createNode animCurveTA -n "joint1_rotateY";
	rename -uid "68CF7EB3-4F3D-9EEA-484B-B792E85FDCB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 -5.236816406250008 1 0 2 5.4045189504373186
		 3 11.501457725947525 4 18.115889212827991 5 25.072886297376098 6 32.197521865889215
		 7 39.314868804664719 8 46.249999999999993 9 52.827988338192419 10 58.873906705539355
		 11 64.212827988338177 12 68.669825072886283 13 72.069970845481024 14 74.238338192419818
		 15 75 16 74.355555555555569 17 72.511111111111106 18 69.600000000000009 19 65.75555555555556
		 20 61.111111111111107 21 55.800000000000004 22 49.95555555555557 23 43.711111111111109
		 24 37.20000000000001 25 30.555555555555554 26 23.911111111111126 27 17.4 28 11.155555555555551
		 29 5.3111111111111295 30 0 31 -5.3111111111111207 32 -11.155555555555544 33 -17.4
		 34 -23.911111111111122 35 -30.555555555555539 36 -37.2 37 -43.711111111111123 38 -49.955555555555542
		 39 -55.800000000000004 40 -61.111111111111121 41 -65.755555555555546 42 -69.6 43 -72.511111111111106
		 44 -74.35555555555554 45 -75 46 -74.355555555555554 47 -72.51111111111112 48 -69.600000000000009
		 49 -65.755555555555574 50 -61.111111111111107 51 -55.800000000000018 52 -49.955555555555591
		 53 -43.711111111111109 54 -37.200000000000024 55 -30.555555555555596 56 -23.911111111111119
		 57 -17.400000000000023 58 -11.155555555555603 59 -5.3111111111111047 60 0;
createNode animCurveTA -n "joint5_rotateY";
	rename -uid "44DD5CAB-4182-C7B3-9355-A5B54EA2DA8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  -6 -14.999999999999998 10 0 24 14.999999999999998
		 39 0 54 -14.999999999999998 69 0 84 14.999999999999998;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "23FBE3D3-448B-F7F9-F056-A0A88F048A60";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"bottom\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 240\n            -height 372\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"left\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 239\n            -height 372\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"back\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 240\n            -height 372\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 745\n            -height 581\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -clipTime \"on\" \n                -stackedCurves 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 1\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n"
		+ "                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n"
		+ "                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 745\\n    -height 581\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 745\\n    -height 581\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "9E7CFD2E-4010-1C92-9218-0199886027B2";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 60 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "958E2203-45F2-A949-2DA1-CEB1C3A7EAAB";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -746.42854176816616 -111.9047574580664 ;
	setAttr ".tgi[0].vh" -type "double2" 424.99998311201796 114.28570974440821 ;
	setAttr -s 55 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -6702.85693359375;
	setAttr ".tgi[0].ni[0].y" 442.85714721679688;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 5582.85693359375;
	setAttr ".tgi[0].ni[1].y" -288.57144165039063;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 5890;
	setAttr ".tgi[0].ni[2].y" -322.85714721679688;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 975.71429443359375;
	setAttr ".tgi[0].ni[3].y" -238.57142639160156;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -6088.5712890625;
	setAttr ".tgi[0].ni[4].y" 408.57144165039063;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 5890;
	setAttr ".tgi[0].ni[5].y" -164.28572082519531;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 5582.85693359375;
	setAttr ".tgi[0].ni[6].y" -390;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 5890;
	setAttr ".tgi[0].ni[7].y" -424.28570556640625;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -6395.71435546875;
	setAttr ".tgi[0].ni[8].y" 492.85714721679688;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -252.85714721679688;
	setAttr ".tgi[0].ni[9].y" -30;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -1788.5714111328125;
	setAttr ".tgi[0].ni[10].y" 244.28572082519531;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" -3017.142822265625;
	setAttr ".tgi[0].ni[11].y" 220;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" -1481.4285888671875;
	setAttr ".tgi[0].ni[12].y" 272.85714721679688;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 3125.71435546875;
	setAttr ".tgi[0].ni[13].y" 324.28570556640625;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" -1174.2857666015625;
	setAttr ".tgi[0].ni[14].y" 262.85714721679688;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" -3324.28564453125;
	setAttr ".tgi[0].ni[15].y" 242.85714721679688;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" -867.14288330078125;
	setAttr ".tgi[0].ni[16].y" 292.85714721679688;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 3740;
	setAttr ".tgi[0].ni[17].y" 300;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" -3631.428466796875;
	setAttr ".tgi[0].ni[18].y" 220;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" -2095.71435546875;
	setAttr ".tgi[0].ni[19].y" 257.14285278320313;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 3432.857177734375;
	setAttr ".tgi[0].ni[20].y" 282.85714721679688;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" -2402.857177734375;
	setAttr ".tgi[0].ni[21].y" 230;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 2818.571533203125;
	setAttr ".tgi[0].ni[22].y" 311.42855834960938;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" -252.85714721679688;
	setAttr ".tgi[0].ni[23].y" -30;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" -2710;
	setAttr ".tgi[0].ni[24].y" 247.14285278320313;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 4354.28564453125;
	setAttr ".tgi[0].ni[25].y" 230;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" -252.85714721679688;
	setAttr ".tgi[0].ni[26].y" -30;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 4968.5712890625;
	setAttr ".tgi[0].ni[27].y" 80;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" -594.28570556640625;
	setAttr ".tgi[0].ni[28].y" 34.285713195800781;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 4047.142822265625;
	setAttr ".tgi[0].ni[29].y" 264.28570556640625;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" -252.85714721679688;
	setAttr ".tgi[0].ni[30].y" 100;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 5275.71435546875;
	setAttr ".tgi[0].ni[31].y" 38.571430206298828;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 4661.4287109375;
	setAttr ".tgi[0].ni[32].y" 195.71427917480469;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" -5781.4287109375;
	setAttr ".tgi[0].ni[33].y" 338.57144165039063;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 6197.14306640625;
	setAttr ".tgi[0].ni[34].y" -214.28572082519531;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 668.5714111328125;
	setAttr ".tgi[0].ni[35].y" 361.42855834960938;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" -4860;
	setAttr ".tgi[0].ni[36].y" 240;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 975.71429443359375;
	setAttr ".tgi[0].ni[37].y" 397.14285278320313;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 1282.857177734375;
	setAttr ".tgi[0].ni[38].y" 410;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 2511.428466796875;
	setAttr ".tgi[0].ni[39].y" 360;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 1590;
	setAttr ".tgi[0].ni[40].y" 410;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" -252.85714721679688;
	setAttr ".tgi[0].ni[41].y" -30;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" -252.85714721679688;
	setAttr ".tgi[0].ni[42].y" 100;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 54.285713195800781;
	setAttr ".tgi[0].ni[43].y" 320;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 361.42855834960938;
	setAttr ".tgi[0].ni[44].y" 352.85714721679688;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 1897.142822265625;
	setAttr ".tgi[0].ni[45].y" 410;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" -5474.28564453125;
	setAttr ".tgi[0].ni[46].y" 268.57144165039063;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 2204.28564453125;
	setAttr ".tgi[0].ni[47].y" 352.85714721679688;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" -252.85714721679688;
	setAttr ".tgi[0].ni[48].y" 318.57144165039063;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" -560;
	setAttr ".tgi[0].ni[49].y" 287.14285278320313;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" -5167.14306640625;
	setAttr ".tgi[0].ni[50].y" 280;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" -252.85714721679688;
	setAttr ".tgi[0].ni[51].y" 100;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" -3938.571533203125;
	setAttr ".tgi[0].ni[52].y" 250;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" -4245.71435546875;
	setAttr ".tgi[0].ni[53].y" 227.14285278320313;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" -4552.85693359375;
	setAttr ".tgi[0].ni[54].y" 260;
	setAttr ".tgi[0].ni[54].nvs" 18304;
createNode animCurveTU -n "joint1_visibility";
	rename -uid "99D19666-42B4-69EE-673B-BEBA50D5805C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1;
createNode animCurveTL -n "joint1_translateX";
	rename -uid "2C4A58DA-4EE8-5466-F1EC-62A6AF548F36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0;
createNode animCurveTL -n "joint1_translateY";
	rename -uid "FD0EF90B-4F92-944D-006E-A49F1E806C66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0;
createNode animCurveTL -n "joint1_translateZ";
	rename -uid "7DE26769-4703-A869-A3FD-859ED9FB9998";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0.5794772688217511 1 0.5794772688217511
		 2 0.5794772688217511 3 0.5794772688217511 4 0.5794772688217511 5 0.5794772688217511
		 6 0.5794772688217511 7 0.5794772688217511 8 0.5794772688217511 9 0.5794772688217511
		 10 0.5794772688217511 11 0.5794772688217511 12 0.5794772688217511 13 0.5794772688217511
		 14 0.5794772688217511 15 0.5794772688217511 16 0.5794772688217511 17 0.5794772688217511
		 18 0.5794772688217511 19 0.5794772688217511 20 0.5794772688217511 21 0.5794772688217511
		 22 0.5794772688217511 23 0.5794772688217511 24 0.5794772688217511 25 0.5794772688217511
		 26 0.5794772688217511 27 0.5794772688217511 28 0.5794772688217511 29 0.5794772688217511
		 30 0.5794772688217511 31 0.5794772688217511 32 0.5794772688217511 33 0.5794772688217511
		 34 0.5794772688217511 35 0.5794772688217511 36 0.5794772688217511 37 0.5794772688217511
		 38 0.5794772688217511 39 0.5794772688217511 40 0.5794772688217511 41 0.5794772688217511
		 42 0.5794772688217511 43 0.5794772688217511 44 0.5794772688217511 45 0.5794772688217511
		 46 0.5794772688217511 47 0.5794772688217511 48 0.5794772688217511 49 0.5794772688217511
		 50 0.5794772688217511 51 0.5794772688217511 52 0.5794772688217511 53 0.5794772688217511
		 54 0.5794772688217511 55 0.5794772688217511 56 0.5794772688217511 57 0.5794772688217511
		 58 0.5794772688217511 59 0.5794772688217511 60 0.5794772688217511;
createNode animCurveTA -n "joint1_rotateX";
	rename -uid "A84A18D8-48AA-CF67-B547-14ACDA3D8FAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0;
createNode animCurveTA -n "joint1_rotateZ";
	rename -uid "81F0D0CC-40CC-31EF-7E13-E69F43A19CCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0;
createNode animCurveTU -n "joint1_scaleX";
	rename -uid "47235572-4483-573B-B06C-B4A8645479C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1;
createNode animCurveTU -n "joint1_scaleY";
	rename -uid "C44160BE-4C4B-1ADA-67A8-039CA508FB01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1;
createNode animCurveTU -n "joint1_scaleZ";
	rename -uid "9247341A-402B-33A6-BC28-FEB625C75312";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1;
createNode objectSet -n "tweakSet1";
	rename -uid "39876E7D-4150-ED99-F93B-8F826C2CCE14";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode objectSet -n "skinCluster1Set";
	rename -uid "6C2D1B19-49BA-DAAE-8EA5-BD9ADF07580C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupParts -n "groupParts3";
	rename -uid "B0699785-47E6-EDA6-9F16-57AFEDED315E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId3";
	rename -uid "F80870AD-40F3-C8B2-80B7-D186936B8178";
	setAttr ".ihi" 0;
createNode tweak -n "tweak1";
	rename -uid "CDDD7042-4D5A-111E-FC14-129BE8C10684";
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "D9B75004-4E58-2ECF-0709-DDB79340C0B8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[0:149]";
	setAttr ".irc" -type "componentList" 1 "vtx[150:152]";
createNode groupId -n "skinCluster1GroupId";
	rename -uid "4F959326-48D5-EAE8-C254-B0A57F86FA96";
	setAttr ".ihi" 0;
createNode skinCluster -n "skinCluster1";
	rename -uid "C22779EE-464F-7336-1FB5-AC8B802AFBF7";
	setAttr -s 2 ".bw[139:140]"  -nan -nan;
	setAttr -s 153 ".wl";
	setAttr ".wl[0:124].w"
		4 0 0.00027702139955899197 1 0.0034291693521328868 2 0.4981597580988758 
		3 0.49813405114943221
		4 0 0.00047535394781832098 1 0.0056630434542990936 2 0.49693080129894118 
		3 0.49693080129894135
		4 0 6.6026761181291549e-05 1 0.00087206543930154197 2 0.49955760027960738 
		3 0.49950430751990971
		4 0 2.5254009004892866e-05 1 0.00034266894685793832 2 0.4998443162008625 
		3 0.4997877608432747
		4 0 6.6020932817484668e-05 1 0.00087192252976862092 2 0.49955668187751412 
		3 0.49950537465989969
		4 0 0.00013885471901766395 1 0.0017816791878816878 2 0.49904650313344628 
		3 0.49903296295965444
		4 0 0.00025248486808799122 1 0.0031399313434444551 2 0.49830379189423379 
		3 0.49830379189423379
		4 0 0.0030211283355285365 1 0.097365243986431649 2 0.72135558264901189 
		3 0.17825804502902795
		4 0 0.0042570467290898419 1 0.11756070612684696 2 0.67030015003963028 
		3 0.20788209710443295
		4 0 0.12694243062652549 1 0.52588761594205669 2 0.32456941306774095 
		3 0.022600540363676938
		4 0 0.62878744879926685 1 0.32887701189909602 2 0.035166117194358838 
		3 0.0071694221072782522
		4 0 0.64774545614497014 1 0.31618716998614987 2 0.030109085182212784 
		3 0.0059582886866672569
		4 0 0.76849633841425347 1 0.20022724603383873 2 0.024802626265574484 
		3 0.0064737892863333856
		4 0 0.77755637831846103 1 0.19323772659959806 2 0.023199943322178035 
		3 0.0060059517597629043
		4 0 0.75809769552336326 1 0.20170637547808512 2 0.030945780179532239 
		3 0.0092501488190194232
		4 0 0.7653452008254078 1 0.1964502444259088 2 0.029457446240921309 
		3 0.0087471085077620234
		4 0 0.74277644010204913 1 0.21065621356268455 2 0.035437391610017417 
		3 0.011129954725248966
		4 0 0.74658883542566612 1 0.20800784267795391 2 0.034581137487092524 
		3 0.010822184409287509
		4 0 0.78313892143177144 1 0.18376975873201229 2 0.025670211406290964 
		3 0.0074211084299252621
		4 0 0.79679017990427314 1 0.17338279059605446 2 0.02319852354495703 
		3 0.006628505954715409
		4 0 0.74440624752108309 1 0.20952712243969238 2 0.035069296926414653 
		3 0.010997333112809968
		4 0 0.74593001997730879 1 0.20846673791406897 2 0.034728284154858347 
		3 0.010874957953763861
		4 0 0.75849680601322822 1 0.20186288893228491 2 0.030581560477242555 
		3 0.0090587445772444021
		4 0 0.76482339957874756 1 0.19726121690144643 2 0.029289495361086715 
		3 0.0086258881587194768
		4 0 0.73981829207285299 1 0.2216800213016612 2 0.030357142887662295 
		3 0.0081445437378235216
		4 0 0.75934849883376843 1 0.20718282375425867 2 0.02649401927554329 
		3 0.0069746581364293894
		4 0 0.59245766020855217 1 0.34996259615394265 2 0.047272455659528541 
		3 0.010307287977976616
		4 0 0.62387681576984266 1 0.33199071162782157 2 0.036607200704739537 
		3 0.0075252718975964738
		4 0 0.14971280244312318 1 0.48752839370173934 2 0.33184782512412125 
		3 0.030910978731016215
		4 0 0.1424200252662621 1 0.49943541636866318 2 0.33013245193530366 
		3 0.028012106429771051
		4 0 0.0049199684547255856 1 0.12842089166678197 2 0.65051327430037231 
		3 0.21614586557812002
		4 0 0.0057624132816906665 1 0.13914564969668539 2 0.62739637562331685 
		3 0.22769556139830699
		4 0 0.75467384072629606 1 0.21070033853410913 2 0.027384842443344531 
		3 0.0072409782962503284
		4 0 0.12139866405104262 1 0.53583237513423609 2 0.32189206077311872 
		3 0.02087690004160276
		4 0 0.0018823679678963586 1 0.071455814955316194 2 0.78569581534443045 
		3 0.14096600173235696
		4 0 0.77750359390898016 1 0.19328097017937412 2 0.023207503503915674 
		3 0.0060079324077300178
		4 0 0.64629543590213778 1 0.31719345880612293 2 0.030468619300963309 
		3 0.0060424859907760638
		4 0 0.094433969198420092 1 0.58897753080583026 2 0.30277900258106011 
		3 0.013809497414689589
		4 0 0.00079210038380456518 1 0.037253904606031361 2 0.87959719017543414 
		3 0.082356804834730041
		4 0 0.75467467380383357 1 0.2106998318463838 2 0.027384574651729669 
		3 0.0072409196980528024
		4 0 0.61152086349149215 1 0.33947996493674304 2 0.040491318502491588 
		3 0.0085078530692731143
		4 0 0.12139934570162958 1 0.53583363658700767 2 0.32189039039034961 
		3 0.0208766273210132
		4 0 0.0018825842911827167 1 0.071454268443091565 2 0.78570333825293071 
		3 0.14095980901279498
		4 0 0.0032090725226725093 1 0.02461068050594202 2 0.48609012348569258 
		3 0.4860901234856928
		4 0 0.00082675251313967836 1 0.0074561936916484719 2 0.49585852689760596 
		3 0.49585852689760596
		4 0 0.0053370437389007224 1 0.037317197183919938 2 0.47867287953858972 
		3 0.47867287953858972
		4 0 0.00041940319340979398 1 0.0039762283385007874 2 0.49780218423404471 
		3 0.49780218423404471
		4 0 0.0011438780629624587 1 0.010009758973548897 2 0.49442318148174424 
		3 0.49442318148174424
		4 0 0.0024843030471150898 1 0.019803500108111535 2 0.48885609842238664 
		3 0.48885609842238664
		4 0 0.0041723262859940128 1 0.030562945346891069 2 0.48263236418355743 
		3 0.48263236418355743
		4 0 0.020346484874438311 1 0.087049069381828631 2 0.44630222287186655 
		3 0.44630222287186655
		4 0 0.006229241726848295 1 0.035633732298483455 2 0.47906851298733416 
		3 0.47906851298733416
		4 0 0.030523764229378202 1 0.11346185110286194 2 0.42800719233387996 
		3 0.42800719233387996
		4 0 0.0059952966215454503 1 0.034537042506546441 2 0.47973383043595413 
		3 0.47973383043595402
		4 0 0.0009638413696135609 1 0.0079312134491271186 2 0.49555247259062968 
		3 0.49555247259062968
		4 0 0.00095693809173932811 1 0.0078791842493560141 2 0.49558193882945228 
		3 0.49558193882945228
		4 0 0.0095838094340547162 1 0.05018397875406528 2 0.47011610590594 
		3 0.47011610590594
		4 0 0.0093169031133169856 1 0.049098616138297635 2 0.47079224037419271 
		3 0.47079224037419271
		4 0 0.018467489526660202 1 0.081413021687432738 2 0.45005974439295354 
		3 0.45005974439295354
		4 0 0.027770091353885671 1 0.10689154194614293 2 0.43266918334998578 
		3 0.43266918334998566
		4 0 0.65044325648532109 1 0.31430230948374649 2 0.029449810550543968 
		3 0.0058046234803884721
		4 0 0.0040043049729258312 1 0.11353140581941942 2 0.67955635916050272 
		3 0.20290793004715196
		4 0 0.12332454027466354 1 0.53231888173539754 2 0.32288690024881678 
		3 0.021469677741122125
		4 0 0.12989341908039578 1 0.40960193843780468 2 0.38565132729090568 
		3 0.074853315190894013
		4 0 0.45798181355809897 1 0.42375896359120024 2 0.096932626135938171 
		3 0.021326596714762436
		4 0 0.12836572228246027 1 0.41128512821128288 2 0.3867525586459894 
		3 0.0735965908602675
		4 0 0.45902835842258843 1 0.42430355470392278 2 0.095742229533931161 
		3 0.020925857339557711
		4 0 0.39214587822011304 1 0.39562707659693214 2 0.17137552751942792 
		3 0.040851517663526744
		4 0 0.39301923348298096 1 0.39655951678747692 2 0.17020647265382277 
		3 0.04021477707571941
		4 0 0.4662058646916602 1 0.46770704651043121 2 0.058751554778730342 
		3 0.00733553401917826
		4 0 0.46214621191379834 1 0.46348967411222214 2 0.06577265058751415 
		3 0.0085914633864652597
		4 0 0.46018763836084309 1 0.46145561539064012 2 0.069131788003167272 
		3 0.0092249582453495637
		4 0 0.47058738086432034 1 0.47226733671735494 2 0.051081530704118611 
		3 0.0060637517142062263
		4 0 0.45032767754108061 1 0.45134845253458578 2 0.085651876601924873 
		3 0.012671993322408761
		4 0 0.45803567026267755 1 0.45926012212701012 2 0.072769016385878418 
		3 0.0099351912244339344
		4 0 0.0002774072417460003 1 0.0034305727334081825 2 0.49814601001242287 
		3 0.49814601001242287
		4 0 6.6095897747785613e-05 1 0.00087065783127007843 2 0.49953162313549104 
		3 0.49953162313549104
		4 0 2.5269767875260493e-05 1 0.00034070308499238334 2 0.49981701357356617 
		3 0.49981701357356617
		4 0 6.614345586077413e-05 1 0.00087104036051819289 2 0.49953140809181051 
		3 0.49953140809181051
		4 0 0.00013910009512000328 1 0.0017831310818740432 2 0.49903888441150296 
		3 0.49903888441150296
		4 0 0.0030173632033249466 1 0.097372840232134536 2 0.72129699476991305 
		3 0.17831280179462744
		4 0 0.12692782533977007 1 0.52588674794357615 2 0.32458307674683756 
		3 0.022602349969816266
		4 0 0.62880329003446078 1 0.32886645601603176 2 0.035161828673084226 
		3 0.0071684252764231404
		4 0 0.7685145831991983 1 0.20021167774724888 2 0.024800419684518807 
		3 0.0064733193690340932
		4 0 0.75811647603545784 1 0.20169077661539356 2 0.030943280406331035 
		3 0.0092494669428175927
		4 0 0.74277019862832727 1 0.21065875530512976 2 0.035439946974437295 
		3 0.011131099092105716
		4 0 0.78314822331435952 1 0.18376144351693752 2 0.025669351491103252 
		3 0.0074209816775997776
		4 0 0.74440566089678917 1 0.20952583352884466 2 0.035070526177055035 
		3 0.01099797939731121
		4 0 0.75850528576356124 1 0.20185483003490617 2 0.030581094831095938 
		3 0.0090587893704366911
		4 0 0.73983485257917436 1 0.22166531584577123 2 0.030355495211265755 
		3 0.0081443363637887095
		4 0 0.59246243699808476 1 0.34995936672247852 2 0.047271170747534362 
		3 0.010307025531902412
		4 0 0.14970236146063079 1 0.48751408914910127 2 0.33186743461951224 
		3 0.030916114770755662
		4 0 0.14242039434824705 1 0.49943505916879893 2 0.33013236749728375 
		3 0.028012178985670287
		4 0 0.0049154421269012559 1 0.12842827522181313 2 0.65044906282505244 
		3 0.21620721982623312
		4 0 0.75468618126219622 1 0.21068740538218375 2 0.027385000097367621 
		3 0.0072414132582522949
		4 0 0.12137598956315905 1 0.53581023673150885 2 0.32192623541206578 
		3 0.020887538293266453
		4 0 0.0018774285951201704 1 0.071429908742507181 2 0.78567823598963427 
		3 0.14101442667273842
		4 0 0.7775199916095944 1 0.19326489825431448 2 0.023206983903222105 
		3 0.0060081262328690148
		4 0 0.6462958664484364 1 0.31719306830116695 2 0.030468579335952716 
		3 0.0060424859144440988
		4 0 0.094405586941989417 1 0.58895979944196075 2 0.30282148774902662 
		3 0.013813125867023195
		4 0 0.00078694099902084128 1 0.037220783785719448 2 0.87959676116814545 
		3 0.082395514047114329
		4 0 0.75468869488069579 1 0.21068565151083374 2 0.027384429174038872 
		3 0.0072412244344315603
		4 0 0.61151828089207583 1 0.33948143135166475 2 0.040492185035774432 
		3 0.0085081027204849981
		4 0 0.12137498208148276 1 0.53581336752296538 2 0.3219285678550094 
		3 0.020883082540542629
		4 0 0.0018774058305068308 1 0.071431045362713538 2 0.78567857013273656 
		3 0.141012978674043
		4 0 0.0032095851515558426 1 0.024614360555105262 2 0.48608802714666927 
		3 0.48608802714666949
		4 0 0.00082668716968995945 1 0.0074558618154825932 2 0.49585872550741367 
		3 0.49585872550741367
		4 0 0.00041942089643789911 1 0.003976366330540583 2 0.49780210638651073 
		3 0.49780210638651073
		4 0 0.0011437950115319965 1 0.010009621867650881 2 0.4944232915604086 
		3 0.4944232915604086
		4 0 0.0024845347719051943 1 0.019806909258201104 2 0.48885427798494679 
		3 0.48885427798494679
		4 0 0.020353166669396464 1 0.08706209104967759 2 0.446292371140463 
		3 0.446292371140463
		4 0 0.0062299669169024159 1 0.035636099900860203 2 0.47906696659111869 
		3 0.47906696659111869
		4 0 0.00096426947231588748 1 0.0079342919009337542 2 0.49555071931337524 
		3 0.49555071931337524
		4 0 0.0095836926880839852 1 0.050185858449635509 2 0.47011522443114029 
		3 0.47011522443114029
		4 0 0.018472154220902069 1 0.081423357679255945 2 0.450052244049921 
		3 0.450052244049921
		4 0 0.65044966096249357 1 0.31429758985350403 2 0.029448391435366761 
		3 0.0058043577486357077
		4 0 0.0040014927759095377 1 0.11358348218787159 2 0.67935866176051074 
		3 0.20305636327570817
		4 0 0.12334257973048497 1 0.53227317087983872 2 0.32289620315444828 
		3 0.021488046235228001
		4 0 0.12836837866107481 1 0.41122761639390276 2 0.38678052630051363 
		3 0.073623478644508869
		4 0 0.4590310322289185 1 0.42428593833455314 2 0.095752845459256178 
		3 0.020930183977272261
		4 0 0.3930011022875235 1 0.39653577478857926 2 0.17023774918127996 
		3 0.040225373742617282
		4 0 0.46618533342327906 1 0.46769212731246013 2 0.058778916743029951 
		3 0.0073436225212309336
		4 0 0.46214100294561045 1 0.46349745163969058 2 0.065770788771268893 
		3 0.0085907566434300451
		4 0 0.46016089230004109 1 0.46146720224599919 2 0.069146000019406725 
		3 0.0092259054345529643
		4 0 0.47055650715912789 1 0.47228304125249104 2 0.051096283224416755 
		3 0.0060641683639644471;
	setAttr ".wl[125:152].w"
		4 0 0.45031798458840522 1 0.45135283410570137 2 0.085656697989076158 
		3 0.012672483316817447
		4 0 0.61151948976180814 1 0.33947959631422642 2 0.040492837372981809 
		3 0.0085080765509836682
		4 0 0.63457793140084529 1 0.32511079181944313 2 0.033538175057853725 
		3 0.0067731017218578705
		4 0 0.46737178451864397 1 0.468903987843937 2 0.05673311495483712 
		3 0.0069911126825819457
		4 0 0.4334951287635791 1 0.40166650909221169 2 0.1379298948847415 
		3 0.026908467259467793
		4 0 0.61151580890469237 1 0.33948213863198595 2 0.040493555881822567 
		3 0.0085084965814990043
		4 0 0.46015735117212625 1 0.46146585680454499 2 0.069150236146208646 
		3 0.0092265558771201985
		4 0 0.46734243833098882 1 0.46891745176222838 2 0.056748377914568646 
		3 0.0069917319922141617
		4 0 0.63458474881557803 1 0.32510483683882474 2 0.033537342862501783 
		3 0.0067730714830956263
		4 0 0.61151229162269394 1 0.33948302697227906 2 0.04049598362313702 
		3 0.0085086977818900449
		4 0 0.46015437159339262 1 0.46145159067646885 2 0.069162343316168967 
		3 0.0092316944139697252
		4 0 0.46736631952687241 1 0.46888213256202099 2 0.056755008659106695 
		3 0.0069965392519999205
		4 0 0.63457233328295348 1 0.32511196302282397 2 0.033541791746230044 
		3 0.00677391194799254
		4 0 0.41353100333352838 1 0.41937031439413031 2 0.14054623756212042 
		3 0.02655244471022097
		4 0 0.27399132320718889 1 0.3949752622137625 2 0.27430809593391514 
		3 0.056725318645133402
		4 0 0.27414062635852182 1 0.3942963703737512 2 0.27445578020220707 
		3 0.057107223065519915
		4 0 0.41315762274189721 1 0.41896340072742322 2 0.14111552894549517 
		3 0.026763447585184445
		4 0 0.61151947710912802 1 0.33947912972845701 2 0.040492996260951153 
		3 0.008508396901463787
		4 0 0.46360000430318316 1 0.41504933035262126 2 0.10255943784032581 
		3 0.018791227503869842
		4 0 0.46731474427529912 1 0.4689310890216572 2 0.056762819773345949 
		3 0.0069913469296976633
		4 0 0.63458794077078262 1 0.32510223035261393 2 0.033536856346049762 
		3 0.0067729725305537645
		4 0 0.41356454699356815 1 0.41941624987093484 2 0.14048404388833299 
		3 0.02653515924716409
		4 0 0.27526066999281229 1 0.39502194057272977 2 0.27307445624364624 
		3 0.056642933190811671
		4 0 0.5854066759752159 1 0.36684733112314111 2 0.040772597281639844 
		3 0.0069733956200032556
		4 0 0.41316513819803741 1 0.4189572530480325 2 0.14111328687380104 
		3 0.026764321880129113
		4 0 0.27399132320718889 1 0.3949752622137625 2 0.27430809593391514 
		3 0.056725318645133402
		4 0 0.27414062635852182 1 0.3942963703737512 2 0.27445578020220707 
		3 0.057107223065519915
		4 0 0.41316078237420539 1 0.41895790283359435 2 0.14111624344983523 
		3 0.026765071342365068;
	setAttr -s 4 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.48994276117898028 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.18783940669849564 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -0.43486614962481362 1;
	setAttr ".pm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -1.0143434184465647 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 4 ".ma";
	setAttr -s 4 ".dpf[0:3]"  4 4 4 4;
	setAttr -s 4 ".lw";
	setAttr -s 4 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 4 ".ifcl";
	setAttr -s 4 ".ifcl";
createNode groupParts -n "groupParts4";
	rename -uid "EE0ADD66-419B-336C-2BB5-30A47E469C6E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:134]";
	setAttr ".gi" 67;
createNode groupParts -n "groupParts5";
	rename -uid "C77D951A-4F45-F38A-DA0A-07AB1438381A";
	setAttr ".ihi" 0;
	setAttr ".irc" -type "componentList" 1 "f[0:134]";
	setAttr ".gi" 67;
createNode groupId -n "groupId4";
	rename -uid "9B6507E1-4BBD-22F3-8912-75AD8C1C18D3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "A63C7C53-4D8F-051D-40FB-4291B443D41E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:134]";
select -ne :time1;
	setAttr ".o" 42;
	setAttr ".unw" 42;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "joint7.s" "joint6.is";
connectAttr "joint5_rotateY.o" "joint5.ry";
connectAttr "joint6.s" "joint5.is";
connectAttr "joint5.s" "joint1.is";
connectAttr "joint1_rotateY.o" "joint1.ry";
connectAttr "joint1_rotateX.o" "joint1.rx";
connectAttr "joint1_rotateZ.o" "joint1.rz";
connectAttr "joint1_visibility.o" "joint1.v";
connectAttr "joint1_translateX.o" "joint1.tx";
connectAttr "joint1_translateY.o" "joint1.ty";
connectAttr "joint1_translateZ.o" "joint1.tz";
connectAttr "joint1_scaleX.o" "joint1.sx";
connectAttr "joint1_scaleY.o" "joint1.sy";
connectAttr "joint1_scaleZ.o" "joint1.sz";
connectAttr "groupParts6.og" "polySurface10Shape.i";
connectAttr "groupId4.id" "polySurface10Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface10Shape.iog.og[0].gco";
connectAttr "skinCluster1GroupId.id" "polySurface10Shape.iog.og[3].gid";
connectAttr "skinCluster1Set.mwc" "polySurface10Shape.iog.og[3].gco";
connectAttr "groupId3.id" "polySurface10Shape.iog.og[4].gid";
connectAttr "tweakSet1.mwc" "polySurface10Shape.iog.og[4].gco";
connectAttr "tweak1.vl[0].vt[0]" "polySurface10Shape.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "joint7.msg" "bindPose5.m[0]";
connectAttr "joint6.msg" "bindPose5.m[1]";
connectAttr "joint5.msg" "bindPose5.m[2]";
connectAttr "joint1.msg" "bindPose5.m[3]";
connectAttr "bindPose5.w" "bindPose5.p[0]";
connectAttr "bindPose5.m[0]" "bindPose5.p[1]";
connectAttr "bindPose5.m[1]" "bindPose5.p[2]";
connectAttr "bindPose5.m[2]" "bindPose5.p[3]";
connectAttr "joint7.bps" "bindPose5.wm[0]";
connectAttr "joint6.bps" "bindPose5.wm[1]";
connectAttr "joint5.bps" "bindPose5.wm[2]";
connectAttr "joint1.bps" "bindPose5.wm[3]";
connectAttr "joint7.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "tweak1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "skinCluster1Set.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "polySurface10.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "skinCluster1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "polySurface10Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "tweakSet1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "bindPose5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "joint1_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn";
connectAttr "bottomShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn";
connectAttr "joint5_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn";
connectAttr "bottom.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn";
connectAttr "back.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn";
connectAttr "backShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn";
connectAttr "leftShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn";
connectAttr "groupId3.msg" "tweakSet1.gn" -na;
connectAttr "polySurface10Shape.iog.og[4]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "polySurface10Shape.iog.og[3]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "polySurface10ShapeOrig1.w" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "groupParts3.og" "tweak1.ip[0].ig";
connectAttr "groupId3.id" "tweak1.ip[0].gi";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose5.msg" "skinCluster1.bp";
connectAttr "joint7.wm" "skinCluster1.ma[0]";
connectAttr "joint6.wm" "skinCluster1.ma[1]";
connectAttr "joint5.wm" "skinCluster1.ma[2]";
connectAttr "joint1.wm" "skinCluster1.ma[3]";
connectAttr "joint7.liw" "skinCluster1.lw[0]";
connectAttr "joint6.liw" "skinCluster1.lw[1]";
connectAttr "joint5.liw" "skinCluster1.lw[2]";
connectAttr "joint1.liw" "skinCluster1.lw[3]";
connectAttr "joint7.obcc" "skinCluster1.ifcl[0]";
connectAttr "joint6.obcc" "skinCluster1.ifcl[1]";
connectAttr "joint5.obcc" "skinCluster1.ifcl[2]";
connectAttr "joint1.obcc" "skinCluster1.ifcl[3]";
connectAttr "skinCluster1.og[0]" "groupParts4.ig";
connectAttr "groupParts4.og" "groupParts5.ig";
connectAttr "groupParts5.og" "groupParts6.ig";
connectAttr "groupId4.id" "groupParts6.gi";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pConeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface10Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
// End of FishAnimated.ma
