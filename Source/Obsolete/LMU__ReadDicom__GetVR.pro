;
;    Copyright (C) 2013 Steven Sourbron
;
;    This program is free software; you can redistribute it and/or modify
;    it under the terms of the GNU General Public License as published by
;    the Free Software Foundation; either version 2 of the License, or
;    (at your option) any later version.
;
;    This program is distributed in the hope that it will be useful,
;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;    GNU General Public License for more details.
;
;    You should have received a copy of the GNU General Public License along
;    with this program; if not, write to the Free Software Foundation, Inc.,
;    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.


function LMU__ReadDicom__GetVR, group, element

	case group of
		'0002'x:case element of
			'0000'x: return,'UL'
			'0001'x: return,'OB'
			'0002'x: return,'UI'
			'0003'x: return,'UI'
			'0010'x: return,'UI'
			'0012'x: return,'UI'
			'0013'x: return,'SH'
			'0016'x: return,'AE'
			'0100'x: return,'UI'
			'0102'x: return,'OB'
			else: return, 'OB'
		endcase
		'0008'x:case element of
			'0000'x: return,'UL'
			'0001'x: return,'OB'
			'0005'x: return,'CS'
			'0008'x: return,'CS'
			'0010'x: return,'OB'
			'0012'x: return,'DA'
			'0013'x: return,'TM'
			'0014'x: return,'UI'
			'0016'x: return,'UI'
			'0018'x: return,'UI'
			'0020'x: return,'DA'
			'0021'x: return,'DA'
			'0022'x: return,'DA'
			'0023'x: return,'DA'
			'0024'x: return,'DA'
			'0025'x: return,'DA'
			'002A'x: return,'DT'
			'0030'x: return,'TM'
			'0031'x: return,'TM'
			'0032'x: return,'TM'
			'0033'x: return,'TM'
			'0034'x: return,'TM'
			'0035'x: return,'TM'
			'0040'x: return,'OB'
			'0041'x: return,'OB'
			'0042'x: return,'CS'
			'0050'x: return,'SH'
			'0052'x: return,'CS'
			'0054'x: return,'AE'
			'0056'x: return,'CS'
			'0058'x: return,'UI'
			'0060'x: return,'CS'
			'0061'x: return,'CS'
			'0064'x: return,'CS'
			'0068'x: return,'CS'
			'0070'x: return,'LO'
			'0080'x: return,'LO'
			'0081'x: return,'ST'
			'0082'x: return,'SQ'
			'0090'x: return,'PN'
			'0092'x: return,'ST'
			'0094'x: return,'SH'
			'0100'x: return,'SH'
			'0102'x: return,'SH'
			'0103'x: return,'SH'
			'0104'x: return,'LO'
			'0105'x: return,'CS'
			'0106'x: return,'DT'
			'0107'x: return,'DT'
			'010B'x: return,'CS'
			'010C'x: return,'UI'
			'010D'x: return,'UI'
			'010F'x: return,'CS'
			'0201'x: return,'SH'
			'1000'x: return,'OB'
			'1010'x: return,'SH'
			'1030'x: return,'LO'
			'1032'x: return,'SQ'
			'103E'x: return,'LO'
			'1040'x: return,'LO'
			'1048'x: return,'PN'
			'1050'x: return,'PN'
			'1060'x: return,'PN'
			'1070'x: return,'PN'
			'1080'x: return,'LO'
			'1084'x: return,'SQ'
			'1090'x: return,'LO'
			'1100'x: return,'SQ'
			'1110'x: return,'SQ'
			'1111'x: return,'SQ'
			'1115'x: return,'SQ'
			'1120'x: return,'SQ'
			'1125'x: return,'SQ'
			'1130'x: return,'SQ'
			'1140'x: return,'SQ'
			'1145'x: return,'SQ'
			'1150'x: return,'UI'
			'1155'x: return,'UI'
			'115A'x: return,'UI'
			'1160'x: return,'IS'
			'1195'x: return,'UI'
			'1197'x: return,'US'
			'1198'x: return,'SQ'
			'1199'x: return,'SQ'
			'2110'x: return,'CS'
			'2111'x: return,'ST'
			'2112'x: return,'SQ'
			'2120'x: return,'SH'
			'2122'x: return,'IS'
			'2124'x: return,'IS'
			'2128'x: return,'IS'
			'2129'x: return,'IS'
			'212A'x: return,'IS'
			'2130'x: return,'DS'
			'2132'x: return,'LO'
			'2142'x: return,'IS'
			'2143'x: return,'IS'
			'2144'x: return,'IS'
			'2200'x: return,'CS'
			'2204'x: return,'CS'
			'2208'x: return,'CS'
			'2218'x: return,'SQ'
			'2220'x: return,'SQ'
			'2228'x: return,'SQ'
			'2229'x: return,'SQ'
			'2230'x: return,'SQ'
			'2240'x: return,'SQ'
			'2242'x: return,'SQ'
			'2244'x: return,'SQ'
			'2246'x: return,'SQ'
			'4000'x: return,'OB'
			else: return, 'OB'
		endcase
		'0010'x:case element of
			'0000'x: return,'UL'
			'0010'x: return,'PN'
			'0020'x: return,'LO'
			'0021'x: return,'LO'
			'0030'x: return,'DA'
			'0032'x: return,'TM'
			'0040'x: return,'CS'
			'0050'x: return,'SQ'
			'1000'x: return,'LO'
			'1001'x: return,'PN'
			'1005'x: return,'PN'
			'1010'x: return,'AS'
			'1020'x: return,'DS'
			'1030'x: return,'DS'
			'1040'x: return,'LO'
			'1050'x: return,'OB'
			'1060'x: return,'PN'
			'1080'x: return,'LO'
			'1081'x: return,'LO'
			'1090'x: return,'LO'
			'2000'x: return,'LO'
			'2110'x: return,'LO'
			'2150'x: return,'LO'
			'2152'x: return,'LO'
			'2154'x: return,'SH'
			'2160'x: return,'SH'
			'2180'x: return,'SH'
			'21A0'x: return,'CS'
			'21B0'x: return,'LT'
			'21C0'x: return,'US'
			'21D0'x: return,'DA'
			'21F0'x: return,'LO'
			'4000'x: return,'LT'
			else: return, 'OB'
		endcase
		'0018'x:case element of
			'0000'x: return,'UL'
			'0010'x: return,'LO'
			'0012'x: return,'SQ'
			'0014'x: return,'SQ'
			'0015'x: return,'CS'
			'0020'x: return,'CS'
			'0021'x: return,'CS'
			'0022'x: return,'CS'
			'0023'x: return,'CS'
			'0024'x: return,'SH'
			'0025'x: return,'CS'
			'0026'x: return,'SQ'
			'0027'x: return,'TM'
			'0028'x: return,'DS'
			'0029'x: return,'SQ'
			'002A'x: return,'SQ'
			'0030'x: return,'LO'
			'0031'x: return,'LO'
			'0032'x: return,'DS'
			'0033'x: return,'DS'
			'0034'x: return,'LO'
			'0035'x: return,'TM'
			'0036'x: return,'SQ'
			'0037'x: return,'CS'
			'0038'x: return,'CS'
			'0039'x: return,'CS'
			'0040'x: return,'IS'
			'0050'x: return,'DS'
			'0060'x: return,'DS'
			'0070'x: return,'IS'
			'0071'x: return,'CS'
			'0072'x: return,'DS'
			'0073'x: return,'CS'
			'0074'x: return,'IS'
			'0075'x: return,'IS'
			'0080'x: return,'DS'
			'0081'x: return,'DS'
			'0082'x: return,'DS'
			'0083'x: return,'DS'
			'0084'x: return,'DS'
			'0085'x: return,'SH'
			'0086'x: return,'IS'
			'0087'x: return,'DS'
			'0088'x: return,'DS'
			'0089'x: return,'IS'
			'0090'x: return,'DS'
			'0091'x: return,'IS'
			'0093'x: return,'DS'
			'0094'x: return,'DS'
			'0095'x: return,'DS'
			'1000'x: return,'LO'
			'1004'x: return,'LO'
			'1010'x: return,'LO'
			'1011'x: return,'LO'
			'1012'x: return,'DA'
			'1014'x: return,'TM'
			'1016'x: return,'LO'
			'1017'x: return,'LO'
			'1018'x: return,'LO'
			'1019'x: return,'LO'
			'101A'x: return,'LO'
			'101B'x: return,'LO'
			'1020'x: return,'LO'
			'1022'x: return,'SH'
			'1023'x: return,'LO'
			'1030'x: return,'LO'
			'1040'x: return,'LO'
			'1041'x: return,'DS'
			'1042'x: return,'TM'
			'1043'x: return,'TM'
			'1044'x: return,'DS'
			'1045'x: return,'IS'
			'1046'x: return,'DS'
			'1047'x: return,'DS'
			'1048'x: return,'CS'
			'1049'x: return,'DS'
			'1050'x: return,'DS'
			'1060'x: return,'DS'
			'1061'x: return,'LO'
			'1062'x: return,'IS'
			'1063'x: return,'DS'
			'1064'x: return,'LO'
			'1065'x: return,'DS'
			'1066'x: return,'DS'
			'1067'x: return,'DS'
			'1068'x: return,'DS'
			'1069'x: return,'DS'
			'106A'x: return,'CS'
			'106C'x: return,'US'
			'106E'x: return,'UL'
			'1070'x: return,'LO'
			'1071'x: return,'DS'
			'1072'x: return,'TM'
			'1073'x: return,'TM'
			'1074'x: return,'DS'
			'1075'x: return,'DS'
			'1076'x: return,'DS'
			'1077'x: return,'DS'
			'1080'x: return,'CS'
			'1081'x: return,'IS'
			'1082'x: return,'IS'
			'1083'x: return,'IS'
			'1084'x: return,'IS'
			'1085'x: return,'LO'
			'1086'x: return,'IS'
			'1088'x: return,'IS'
			'1090'x: return,'IS'
			'1094'x: return,'IS'
			'1100'x: return,'DS'
			'1110'x: return,'DS'
			'1111'x: return,'DS'
			'1114'x: return,'DS'
			'1120'x: return,'DS'
			'1121'x: return,'DS'
			'1130'x: return,'DS'
			'1131'x: return,'DS'
			'1134'x: return,'CS'
			'1135'x: return,'DS'
			'1136'x: return,'DS'
			'1137'x: return,'DS'
			'1138'x: return,'DS'
			'113A'x: return,'CS'
			'1140'x: return,'CS'
			'1141'x: return,'DS'
			'1142'x: return,'DS'
			'1143'x: return,'DS'
			'1144'x: return,'DS'
			'1145'x: return,'DS'
			'1146'x: return,'DS'
			'1147'x: return,'CS'
			'1149'x: return,'IS'
			'1150'x: return,'IS'
			'1151'x: return,'IS'
			'1152'x: return,'IS'
			'1153'x: return,'IS'
			'1154'x: return,'DS'
			'1155'x: return,'CS'
			'1156'x: return,'CS'
			'115A'x: return,'CS'
			'115E'x: return,'DS'
			'1160'x: return,'SH'
			'1161'x: return,'LO'
			'1162'x: return,'DS'
			'1164'x: return,'DS'
			'1166'x: return,'CS'
			'1170'x: return,'IS'
			'1180'x: return,'SH'
			'1181'x: return,'CS'
			'1182'x: return,'IS'
			'1183'x: return,'DS'
			'1184'x: return,'DS'
			'1190'x: return,'DS'
			'1191'x: return,'CS'
			'11A0'x: return,'DS'
			'11A2'x: return,'DS'
			'1200'x: return,'DA'
			'1201'x: return,'TM'
			'1210'x: return,'SH'
			'1240'x: return,'OB'
			'1242'x: return,'IS'
			'1243'x: return,'IS'
			'1244'x: return,'US'
			'1250'x: return,'SH'
			'1251'x: return,'SH'
			'1260'x: return,'SH'
			'1261'x: return,'LO'
			'1300'x: return,'DS'
			'1301'x: return,'CS'
			'1302'x: return,'IS'
			'1310'x: return,'US'
			'1312'x: return,'CS'
			'1314'x: return,'DS'
			'1315'x: return,'CS'
			'1316'x: return,'DS'
			'1318'x: return,'DS'
			'1400'x: return,'LO'
			'1401'x: return,'LO'
			'1402'x: return,'CS'
			'1403'x: return,'CS'
			'1404'x: return,'US'
			'1405'x: return,'IS'
			'1450'x: return,'CS'
			'1460'x: return,'DS'
			'1470'x: return,'DS'
			'1480'x: return,'DS'
			'1490'x: return,'CS'
			'1491'x: return,'CS'
			'1495'x: return,'IS'
			'1500'x: return,'CS'
			'1508'x: return,'CS'
			'1510'x: return,'DS'
			'1511'x: return,'DS'
			'1520'x: return,'DS'
			'1521'x: return,'DS'
			'1530'x: return,'DS'
			'1531'x: return,'DS'
			'1600'x: return,'CS'
			'1602'x: return,'IS'
			'1604'x: return,'IS'
			'1606'x: return,'IS'
			'1608'x: return,'IS'
			'1610'x: return,'IS'
			'1612'x: return,'IS'
			'1620'x: return,'IS'
			'1622'x: return,'US'
			'1623'x: return,'US'
			'1700'x: return,'CS'
			'1702'x: return,'IS'
			'1704'x: return,'IS'
			'1706'x: return,'IS'
			'1708'x: return,'IS'
			'1710'x: return,'IS'
			'1712'x: return,'IS'
			'1720'x: return,'IS'
			'1800'x: return,'CS'
			'1802'x: return,'CS'
			'1801'x: return,'SH'
			'4000'x: return,'OB'
			'5000'x: return,'SH'
			'5010'x: return,'LO'
			'5012'x: return,'DS'
			'5020'x: return,'LO'
			'5021'x: return,'LO'
			'5022'x: return,'DS'
			'5024'x: return,'DS'
			'5026'x: return,'DS'
			'5027'x: return,'DS'
			'5028'x: return,'DS'
			'5029'x: return,'DS'
			'5030'x: return,'OB'
			'5040'x: return,'OB'
			'5050'x: return,'IS'
			'5100'x: return,'CS'
			'5101'x: return,'CS'
			'5104'x: return,'SQ'
			'5210'x: return,'DS'
			'5212'x: return,'DS'
			'6000'x: return,'DS'
			'6011'x: return,'SQ'
			'6012'x: return,'US'
			'6014'x: return,'US'
			'6016'x: return,'UL'
			'6018'x: return,'UL'
			'601A'x: return,'UL'
			'601C'x: return,'UL'
			'601E'x: return,'UL'
			'6020'x: return,'SL'
			'6022'x: return,'SL'
			'6024'x: return,'US'
			'6026'x: return,'US'
			'6028'x: return,'FD'
			'602A'x: return,'FD'
			'602C'x: return,'FD'
			'602E'x: return,'FD'
			'6030'x: return,'UL'
			'6031'x: return,'CS'
			'6032'x: return,'UL'
			'6034'x: return,'FD'
			'6036'x: return,'FD'
			'6038'x: return,'UL'
			'603A'x: return,'UL'
			'603C'x: return,'UL'
			'603E'x: return,'UL'
			'6040'x: return,'UL'
			'6042'x: return,'UL'
			'6044'x: return,'US'
			'6046'x: return,'UL'
			'6048'x: return,'UL'
			'604A'x: return,'UL'
			'604C'x: return,'US'
			'604E'x: return,'US'
			'6050'x: return,'UL'
			'6052'x: return,'UL'
			'6054'x: return,'FD'
			'6056'x: return,'UL'
			'6058'x: return,'UL'
			'605A'x: return,'FL'
			'7000'x: return,'CS'
			'7001'x: return,'DS'
			'7004'x: return,'CS'
			'7005'x: return,'CS'
			'7006'x: return,'LT'
			'7008'x: return,'LT'
			'700A'x: return,'SH'
			'700C'x: return,'DA'
			'700E'x: return,'TM'
			'7010'x: return,'IS'
			'7011'x: return,'IS'
			'7012'x: return,'DS'
			'7014'x: return,'DS'
			'7016'x: return,'DS'
			'701A'x: return,'DS'
			'7020'x: return,'DS'
			'7022'x: return,'DS'
			'7024'x: return,'CS'
			'7026'x: return,'DS'
			'7028'x: return,'DS'
			'7030'x: return,'DS'
			'7032'x: return,'DS'
			'7034'x: return,'CS'
			'7040'x: return,'LT'
			'7041'x: return,'LT'
			'7042'x: return,'DS'
			'7044'x: return,'DS'
			'7046'x: return,'IS'
			'7048'x: return,'DS'
			'704C'x: return,'DS'
			'7050'x: return,'CS'
			'7052'x: return,'DS'
			'7054'x: return,'DS'
			'7060'x: return,'CS'
			'7062'x: return,'LT'
			'7064'x: return,'CS'
			'7065'x: return,'DS'
			'8150'x: return,'DS'
			'8151'x: return,'DS'
			else: return, 'OB'
		endcase
		'0020'x:case element of
			'0000'x: return,'UL'
			'000D'x: return,'UI'
			'000E'x: return,'UI'
			'0010'x: return,'SH'
			'0011'x: return,'IS'
			'0012'x: return,'IS'
			'0013'x: return,'IS'
			'0014'x: return,'IS'
			'0015'x: return,'IS'
			'0016'x: return,'IS'
			'0017'x: return,'IS'
			'0018'x: return,'IS'
			'0019'x: return,'IS'
			'0020'x: return,'CS'
			'0022'x: return,'IS'
			'0024'x: return,'IS'
			'0026'x: return,'IS'
			'0030'x: return,'OB'
			'0032'x: return,'DS'
			'0035'x: return,'OB'
			'0037'x: return,'DS'
			'0050'x: return,'OB'
			'0052'x: return,'UI'
			'0060'x: return,'CS'
			'0062'x: return,'CS'
			'0070'x: return,'OB'
			'0080'x: return,'OB'
			'0100'x: return,'IS'
			'0105'x: return,'IS'
			'0110'x: return,'DS'
			'0200'x: return,'UI'
			'1000'x: return,'IS'
			'1001'x: return,'OB'
			'1002'x: return,'IS'
			'1004'x: return,'IS'
			'1020'x: return,'OB'
			'1040'x: return,'LO'
			'1041'x: return,'DS'
			'1070'x: return,'IS'
			'1200'x: return,'IS'
			'1202'x: return,'IS'
			'1204'x: return,'IS'
			'1206'x: return,'IS'
			'1208'x: return,'IS'
			'1209'x: return,'IS'
			'4000'x: return,'LT'
			else: return, 'OB'
		endcase
		'0028'x:case element of
			'0000'x: return,'UL'
			'0002'x: return,'US'
			'0004'x: return,'CS'
			'0005'x: return,'OB'
			'0006'x: return,'US'
			'0008'x: return,'IS'
			'0009'x: return,'AT'
			'0010'x: return,'US'
			'0011'x: return,'US'
			'0012'x: return,'US'
			'0014'x: return,'US'
			'0030'x: return,'DS'
			'0031'x: return,'DS'
			'0032'x: return,'DS'
			'0034'x: return,'IS'
			'0040'x: return,'OB'
			'0050'x: return,'OB'
			'0051'x: return,'CS'
			'0060'x: return,'OB'
			'0100'x: return,'US'
			'0101'x: return,'US'
			'0102'x: return,'US'
			'0103'x: return,'US'
			'0104'x: return,'OB'
			'0105'x: return,'OB'
			'0106'x: return,'US'
			'0107'x: return,'US'
			'0108'x: return,'US'
			'0109'x: return,'US'
			'0110'x: return,'US'
			'0111'x: return,'US'
			'0120'x: return,'US'
			'0200'x: return,'OB'
			'0300'x: return,'CS'
			'0301'x: return,'CS'
			'1040'x: return,'CS'
			'1041'x: return,'SS'
			'1050'x: return,'DS'
			'1051'x: return,'DS'
			'1052'x: return,'DS'
			'1053'x: return,'DS'
			'1054'x: return,'LO'
			'1055'x: return,'LO'
			'1080'x: return,'OB'
			'1090'x: return,'CS'
			'1100'x: return,'OB'
			'1101'x: return,'US'
			'1102'x: return,'US'
			'1103'x: return,'US'
			'1199'x: return,'UI'
			'1200'x: return,'OB'
			'1201'x: return,'OW'
			'1202'x: return,'OW'
			'1203'x: return,'OW'
			'1221'x: return,'OW'
			'1222'x: return,'OW'
			'1223'x: return,'OW'
			'1300'x: return,'CS'
			'1350'x: return,'CS'
			'1351'x: return,'ST'
			'2110'x: return,'CS'
			'2112'x: return,'DS'
			'3000'x: return,'SQ'
			'3002'x: return,'US'
			'3003'x: return,'LO'
			'3004'x: return,'LO'
			'3006'x: return,'US'
			'3010'x: return,'SQ'
			'3110'x: return,'SQ'
			'4000'x: return,'OB'
			'5000'x: return,'SQ'
			'6010'x: return,'US'
			'6020'x: return,'US'
			'6022'x: return,'LO'
			'6030'x: return,'US'
			'6040'x: return,'US'
			'6100'x: return,'SQ'
			'6101'x: return,'CS'
			'6102'x: return,'US'
			'6110'x: return,'US'
			'6112'x: return,'US'
			'6114'x: return,'FL'
			'6120'x: return,'SS'
			'6190'x: return,'ST'
			'9001'x: return,'UL'
			'9002'x: return,'UL'
			'9003'x: return,'CS'
			'9099'x: return,'US'
			'9108'x: return,'CS'
			'9110'x: return,'SQ'
			'9132'x: return,'SQ'
			'9145'x: return,'SQ'
			'9235'x: return,'CS'
			else: return, 'OB'
		endcase
		'0040'x:case element of
			'0000'x: return,'UL'
			'0001'x: return,'AE'
			'0002'x: return,'DA'
			'0003'x: return,'TM'
			'0004'x: return,'DA'
			'0005'x: return,'TM'
			'0006'x: return,'PN'
			'0007'x: return,'LO'
			'0008'x: return,'SQ'
			'0009'x: return,'SH'
			'000A'x: return,'SQ'
			'000B'x: return,'SQ'
			'0010'x: return,'SH'
			'0011'x: return,'SH'
			'0012'x: return,'LO'
			'0020'x: return,'CS'
			'0100'x: return,'SQ'
			'0220'x: return,'SQ'
			'0241'x: return,'AE'
			'0242'x: return,'SH'
			'0243'x: return,'SH'
			'0244'x: return,'DA'
			'0245'x: return,'TM'
			'0250'x: return,'DA'
			'0251'x: return,'TM'
			'0252'x: return,'CS'
			'0253'x: return,'SH'
			'0254'x: return,'LO'
			'0255'x: return,'LO'
			'0260'x: return,'SQ'
			'0270'x: return,'SQ'
			'0275'x: return,'SQ'
			'0280'x: return,'ST'
			'0281'x: return,'SQ'
			'0293'x: return,'SQ'
			'0294'x: return,'DS'
			'0295'x: return,'SQ'
			'0296'x: return,'SQ'
			'0300'x: return,'US'
			'0301'x: return,'US'
			'0302'x: return,'US'
			'0303'x: return,'US'
			'0306'x: return,'DS'
			'0307'x: return,'DS'
			'030E'x: return,'SQ'
			'0310'x: return,'ST'
			'0312'x: return,'DS'
			'0314'x: return,'DS'
			'0316'x: return,'DS'
			'0318'x: return,'CS'
			'0320'x: return,'SQ'
			'0321'x: return,'SQ'
			'0324'x: return,'SQ'
			'0330'x: return,'SQ'
			'0340'x: return,'SQ'
			'0400'x: return,'LT'
			'050A'x: return,'LO'
			'0550'x: return,'SQ'
			'0551'x: return,'LO'
			'0555'x: return,'SQ'
			'0556'x: return,'ST'
			'059A'x: return,'SQ'
			'06FA'x: return,'LO'
			'071A'x: return,'SQ'
			'072A'x: return,'DS'
			'073A'x: return,'DS'
			'074A'x: return,'DS'
			'08D8'x: return,'SQ'
			'08DA'x: return,'SQ'
			'08EA'x: return,'SQ'
			'1001'x: return,'SH'
			'1002'x: return,'LO'
			'1003'x: return,'SH'
			'1004'x: return,'LO'
			'1005'x: return,'LO'
			'1006'x: return,'SH'
			'1007'x: return,'SH'
			'1008'x: return,'LO'
			'1009'x: return,'SH'
			'1010'x: return,'PN'
			'1011'x: return,'SQ'
			'1101'x: return,'SQ'
			'1102'x: return,'ST'
			'1103'x: return,'LO'
			'1400'x: return,'LT'
			'2001'x: return,'LO'
			'2004'x: return,'DA'
			'2005'x: return,'TM'
			'2006'x: return,'SH'
			'2007'x: return,'SH'
			'2008'x: return,'PN'
			'2009'x: return,'SH'
			'2010'x: return,'SH'
			'2016'x: return,'LO'
			'2017'x: return,'LO'
			'2400'x: return,'LT'
			'3001'x: return,'LO'
			'4001'x: return,'CS'
			'4002'x: return,'CS'
			'4003'x: return,'CS'
			'4004'x: return,'SQ'
			'4005'x: return,'DT'
			'4006'x: return,'CS'
			'4007'x: return,'SQ'
			'4009'x: return,'SQ'
			'4011'x: return,'DT'
			'4015'x: return,'SQ'
			'4016'x: return,'SQ'
			'4018'x: return,'SQ'
			'4019'x: return,'SQ'
			'4020'x: return,'CS'
			'4021'x: return,'SQ'
			'4022'x: return,'SQ'
			'4023'x: return,'UI'
			'4025'x: return,'SQ'
			'4026'x: return,'SQ'
			'4027'x: return,'SQ'
			'4028'x: return,'SQ'
			'4029'x: return,'SQ'
			'4030'x: return,'SQ'
			'4031'x: return,'SQ'
			'4032'x: return,'SQ'
			'4033'x: return,'SQ'
			'4034'x: return,'SQ'
			'4035'x: return,'SQ'
			'4036'x: return,'LO'
			'4037'x: return,'PN'
			'8302'x: return,'DS'
			'9096'x: return,'SQ'
			'9210'x: return,'SS'
			'9211'x: return,'US'
			'9212'x: return,'FD'
			'9216'x: return,'US'
			'9224'x: return,'FD'
			'9225'x: return,'FD'
			'A010'x: return,'CS'
			'A027'x: return,'LO'
			'A030'x: return,'DT'
			'A032'x: return,'DT'
			'A040'x: return,'CS'
			'A043'x: return,'SQ'
			'A050'x: return,'CS'
			'A073'x: return,'SQ'
			'A075'x: return,'PN'
			'A088'x: return,'SQ'
			'A0B0'x: return,'US'
			'A120'x: return,'DT'
			'A121'x: return,'DA'
			'A122'x: return,'TM'
			'A123'x: return,'PN'
			'A124'x: return,'UI'
			'A130'x: return,'CS'
			'A132'x: return,'UL'
			'A136'x: return,'US'
			'A138'x: return,'DS'
			'A13A'x: return,'DT'
			'A160'x: return,'UT'
			'A168'x: return,'SQ'
			'A170'x: return,'SQ'
			'A180'x: return,'US'
			'A195'x: return,'SQ'
			'A300'x: return,'SQ'
			'A301'x: return,'SQ'
			'A30A'x: return,'DS'
			'A360'x: return,'SQ'
			'A370'x: return,'SQ'
			'A372'x: return,'SQ'
			'A375'x: return,'SQ'
			'A385'x: return,'SQ'
			'A491'x: return,'CS'
			'A492'x: return,'LO'
			'A493'x: return,'CS'
			'A504'x: return,'SQ'
			'A525'x: return,'SQ'
			'A730'x: return,'SQ'
			'B020'x: return,'SQ'
			'DB00'x: return,'CS'
			'DB06'x: return,'DT'
			'DB07'x: return,'DT'
			'DB0B'x: return,'CS'
			'DB0C'x: return,'UI'
			'DB0D'x: return,'UI'
			'DB73'x: return,'UL'
			else: return, 'OB'
		endcase
		'1911'x:case element of
			'0000'x: return,'DS'
			'0001'x: return,'LO'
			'0002'x: return,'OF'
			else: return, 'OB'
		endcase
		'7FE0'x:case element of
			'0000'x: return,'UL'
			'0010'x: return,'OW'
			else: return, 'OB'
		endcase
		else: return, 'OB'
	endcase
end