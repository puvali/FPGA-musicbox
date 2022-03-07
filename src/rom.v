`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:17:13 11/23/2021 
// Design Name: 
// Module Name:    rom 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ROM1(
	input clk,
	input [10:0] address,
	output reg [10:0] note
);

always @(posedge clk)
case(address)
    //B
    0:note <= 34;
    1:note <= 34;
    2:note <= 34;
    3:note <= 34;
    //E
    4:note <= 39;
    5:note <= 39;
    6:note <= 39;
    7:note <= 39;
    8:note <= 39;
    9:note <= 39;
    //G
    10:note <= 42;
    11:note <= 42;
    //F#
    12:note <= 41;
    13:note <= 41;
    14:note <= 41;
    15:note <= 41;
    //E
    16:note <= 39;
    17:note <= 39;
    18:note <= 39;
    19:note <= 39;
    20:note <= 39;
    21:note <= 39;
    22:note <= 39;
    23:note <= 39;
    //B
    24:note <= 46;
    25:note <= 46;
    26:note <= 46;
    27:note <= 46;
    //A
    28:note <= 44;
    29:note <= 44;
    30:note <= 44;
    31:note <= 44;
    32:note <= 44;
    33:note <= 44;
    34:note <= 44;
    35:note <= 44;
    36:note <= 44;
    37:note <= 44;
    38:note <= 44;
    39:note <= 44;
    //F#
    40:note <= 41;
    41:note <= 41;
    42:note <= 41;
    43:note <= 41;
    44:note <= 41;
    45:note <= 41;
    46:note <= 41;
    47:note <= 41;
    48:note <= 41;
    49:note <= 41;
    50:note <= 41;
    51:note <= 41;
    //E
    52:note <= 39;
    53:note <= 39;
    54:note <= 39;
    55:note <= 39;
    56:note <= 39;
    57:note <= 39;
    //G
    58:note <= 42;
    59:note <= 42;
    //F#
    60:note <= 41;
    61:note <= 41;
    62:note <= 41;
    63:note <= 41;
    //Eb
    64:note <= 38;
    65:note <= 38;
    66:note <= 38;
    67:note <= 38;
    68:note <= 38;
    69:note <= 38;
    70:note <= 38;
    71:note <= 38;
    //F
    72:note <= 40;
    73:note <= 40;
    74:note <= 40;
    75:note <= 40;
    //B
    76:note <= 34;
    77:note <= 34;
    78:note <= 34;
    79:note <= 34;
    80:note <= 34;
    81:note <= 34;
    82:note <= 34;
    83:note <= 34;
    84:note <= 34;
    85:note <= 34;
    86:note <= 34;
    87:note <= 34;
    //START OF PHRASE 2
    88:note <= 0;
    89:note <= 0;
    //B
    90:note <= 34;
    91:note <= 34;
    92:note <= 34;
    93:note <= 34;
    //E
    94:note <= 39;
    95:note <= 39;
    96:note <= 39;
    97:note <= 39;
    98:note <= 39;
    99:note <= 39;
    //G
    100:note <= 42;
    101:note <= 42;
    //F#
    102:note <= 41;
    103:note <= 41;
    104:note <= 41;
    105:note <= 41;
    //E
    106:note <= 39;
    107:note <= 39;
    108:note <= 39;
    109:note <= 39;
    110:note <= 39;
    111:note <= 39;
    112:note <= 39;
    113:note <= 39;
    //B
    114:note <= 46;
    115:note <= 46;
    116:note <= 46;
    117:note <= 46;
    //D
    118:note <= 49;
    119:note <= 49;
    120:note <= 49;
    121:note <= 49;
    122:note <= 49;
    123:note <= 49;
    124:note <= 49;
    125:note <= 49;
    //Db
    126:note <= 48;
    127:note <= 48;
    128:note <= 48;
    129:note <= 48;
    //C
    131:note <= 47;
    132:note <= 47;
    133:note <= 47;
    134:note <= 47;
    135:note <= 47;
    136:note <= 47;
    137:note <= 47;
    138:note <= 47;
    //Ab
    139:note <= 43;
    140:note <= 43;
    141:note <= 43;
    142:note <= 43;
    //C
    143:note <= 47;
    144:note <= 47;
    145:note <= 47;
    146:note <= 47;
    147:note <= 47;
    148:note <= 47;
    //B
    149:note <= 46;
    150:note <= 46;
    //Bb
    151:note <= 45;
    152:note <= 45;
    153:note <= 45;
    154:note <= 45;
    //Bb
    155:note <= 34;
    156:note <= 34;
    157:note <= 34;
    158:note <= 34;
    159:note <= 34;
    160:note <= 34;
    161:note <= 34;
    162:note <= 34;
    //G
    163:note <= 42;
    164:note <= 42;
    165:note <= 42;
    166:note <= 42;
    //E
    167:note <= 39;
    168:note <= 39;
    169:note <= 39;
    170:note <= 39;
    171:note <= 39;
    172:note <= 39;
    173:note <= 39;
    174:note <= 39;
    //START OF PHRASE 3
    //G
    175:note <= 42;
    176:note <= 42;
    177:note <= 42;
    178:note <= 42;
    //B
    179:note <= 46;
    180:note <= 46;
    181:note <= 46;
    182:note <= 46;
    183:note <= 46;
    184:note <= 46;
    185:note <= 46;
    186:note <= 46;
    //G
    187:note <= 42;
    188:note <= 42;
    189:note <= 42;
    190:note <= 42;
    //B
    191:note <= 46;
    192:note <= 46;
    193:note <= 46;
    194:note <= 46;
    195:note <= 46;
    196:note <= 46;
    197:note <= 46;
    198:note <= 46;
    //G
    199:note <= 42;
    200:note <= 42;
    201:note <= 42;
    202:note <= 42;
    //C
    203:note <= 47;
    204:note <= 47;
    205:note <= 47;
    206:note <= 47;
    207:note <= 47;
    208:note <= 47;
    209:note <= 47;
    210:note <= 47;
    //B
    211:note <= 46;
    212:note <= 46;
    213:note <= 46;
    214:note <= 46;
    //Bb
    215:note <= 45;
    216:note <= 45;
    217:note <= 45;
    218:note <= 45;
    219:note <= 45;
    220:note <= 45;
    221:note <= 45;
    222:note <= 45;
    //Gb
    223:note <= 41;
    224:note <= 41;
    225:note <= 41;
    226:note <= 41;
    //G
    227:note <= 42;
    228:note <= 42;
    229:note <= 42;
    230:note <= 42;
    231:note <= 42;
    232:note <= 42;
    //B
    233:note <= 46;
    234:note <= 46;
    //Bb
    235:note <= 45;
    236:note <= 45;
    //Bb
    237:note <= 33;
    238:note <= 33;
    239:note <= 33;
    240:note <= 33;
    //B
    241:note <= 34;
    242:note <= 34;
    243:note <= 34;
    244:note <= 34;
    //B
    245:note <= 46;
    246:note <= 46;
    247:note <= 46;
    248:note <= 46;
    249:note <= 46;
    250:note <= 46;
    251:note <= 46;
    252:note <= 46;
    253:note <= 46;
    254:note <= 46;
    255:note <= 46;
    256:note <= 46;
    257:note <= 46;
    258:note <= 46;
    259:note <= 46;
    260:note <= 46;
    261:note <= 46;
    262:note <= 46;
    263:note <= 46;
    264:note <= 46;
    //START OF PHRASE 4
    //G
    265:note <= 42;
    266:note <= 42;
    267:note <= 42;
    268:note <= 42;
    //B
    269:note <= 46;
    270:note <= 46;
    271:note <= 46;
    272:note <= 46;
    273:note <= 46;
    274:note <= 46;
    275:note <= 46;
    276:note <= 46;
    //G
    277:note <= 42;
    278:note <= 42;
    279:note <= 42;
    280:note <= 42;
    //B
    281:note <= 46;
    282:note <= 46;
    283:note <= 46;
    284:note <= 46;
    285:note <= 46;
    286:note <= 46;
    287:note <= 46;
    288:note <= 46;
    //G
    289:note <= 42;
    290:note <= 42;
    291:note <= 42;
    292:note <= 42;
    //D
    293:note <= 49;
    294:note <= 49;
    295:note <= 49;
    296:note <= 49;
    297:note <= 49;
    298:note <= 49;
    299:note <= 49;
    300:note <= 49; 
    //Db
    301:note <= 48;
    302:note <= 48;
    303:note <= 48;
    304:note <= 48; 
    //C
    305:note <= 47;
    306:note <= 47;
    307:note <= 47;
    308:note <= 47;
    309:note <= 47;
    310:note <= 47;
    311:note <= 47;
    312:note <= 47;
    //Ab
    313:note <= 43;
    314:note <= 43;
    315:note <= 43;
    316:note <= 43;
    //C
    317:note <= 47;
    318:note <= 47;
    319:note <= 47;
    320:note <= 47;
    321:note <= 47;
    322:note <= 47;
    //B
    323:note <= 46;
    324:note <= 46;
    //Bb
    325:note <= 45;
    326:note <= 45;
    327:note <= 45;
    328:note <= 45;
    //Bb
    329:note <= 33;
    330:note <= 33;
    331:note <= 33;
    332:note <= 33;
    333:note <= 33;
    334:note <= 33;
    335:note <= 33;
    336:note <= 33;
    //G
    337:note <= 42;
    338:note <= 42;
    339:note <= 42;
    340:note <= 42;
    //E
    341:note <= 39;
    342:note <= 39;
    343:note <= 39;
    344:note <= 39;
    345:note <= 39;
    346:note <= 39;
    347:note <= 39;
    348:note <= 39;
    349:note <= 39;
    350:note <= 39;
    351:note <= 39;
    352:note <= 39;
    353:note <= 39;
    354:note <= 39;
    355:note <= 39;
    356:note <= 39;
    357:note <= 39;
    358:note <= 39;
    359:note <= 39;
    360:note <= 39;
    361:note <= 39;
    362:note <= 39;
    363:note <= 39;
    364:note <= 39;
	default: note <= 8'd0;
endcase
endmodule

module ROM2(
	input clk,
	input [10:0] address,
	output reg [10:0] note
);

always @(posedge clk)
case(address)
    //A 44
    0:note <= 44;
    1:note <= 44;
    2:note <= 44;
    3:note <= 44;
    //G 42
    4:note <= 42;
    5:note <= 42;
    6:note <= 42;
    7:note <= 42;
    //F# 41
    8:note <= 41;
    9:note <= 41;
    10:note <= 41; 
    11:note <= 41;
    12:note <= 41;
    13:note <= 41;
    14:note <= 41; 
    15:note <= 41;
    //E 39
    16:note <= 39;
    17:note <= 39;
    //F# 41
    18:note <= 41;
    19:note <= 41;
    20:note <= 41;
    21:note <= 41;
    //E 39
    22:note <= 39;
    //C# 36
    23:note <= 36;
    //D 37
    24:note <= 37;
    25:note <= 37;
    //A 32
    26:note <= 32;
    27:note <= 32;
    //quarternote rest
    28:note<= 0;
    29:note<= 0;
    30:note<= 0;
    31:note<= 0;
    //A 44
    32:note <= 44;
    33:note <= 44;
    34:note <= 44;
    35:note <= 44;
    //G 42
    36:note <= 42;
    37:note <= 42;
    38:note <= 42;
    39:note <= 42;
    //F# 41
    40:note <= 41;
    41:note <= 41;
    42:note <= 41;
    43:note <= 41;
    44:note <= 41;
    45:note <= 41;
    46:note <= 41;
    47:note <= 41;
    //E 39
    48:note <= 39;
    49:note <= 39;
    //F# 41
    50:note <= 41;
    51:note <= 41;
    52:note <= 41;
    53:note <= 41;
    //E 39
    54:note <= 39;
    //C# 36
    55:note <= 36;
    //D 37
    56:note <= 37;
    57:note <= 37;
    58:note <= 37;
    59:note <= 37;
    //quarternote rest
    //FIRST ENDING
    //B 46
    60:note <= 46;
    61:note <= 46;
    62:note <= 46;
    63:note <= 46;
    //A 44
    64:note <= 44;
    65:note <= 44;
    66:note <= 44;
    67:note <= 44;
    //G 42
    68:note <= 42;
    69:note <= 42;
    70:note <= 42;
    71:note <= 42;
    72:note <= 42;
    73:note <= 42;
    74:note <= 42;
    75:note <= 42;
    //A 44
    76:note <= 44;
    77:note <= 44;
    //D 49
    78:note <= 49;
    79:note <= 49;
    //A 44
    80:note <= 44;
    81:note <= 44;
    //D 37
    82:note <= 37;
    83:note <= 37;
    //F# 41
    84:note <= 41;
    85:note <= 41;
    86:note <= 41;
    87:note <= 41;
    //E 39
    88:note <= 39;
    89:note <= 39;
    90:note <= 39;
    91:note <= 39;
    //A 44
    92:note <= 44;
    93:note <= 44;
    94:note <= 44;
    95:note <= 44;
    //eight note rest
    96:note <= 0;
    97:note <= 0;
    //G 42
    98:note <= 42;
    99:note <= 42;
    //F# 41
    100:note <= 41;
    101:note <= 41;
    102:note <= 41;
    103:note <= 41;
    //D 37
    104:note <= 37;
    105:note <= 37;
    106:note <= 37;
    107:note <= 37;
    //E 39
    108:note <= 39;
    109:note <= 39;
    110:note <= 39;
    111:note <= 39;
    112:note <= 39;
    113:note <= 39;
    114:note <= 39;
    115:note <= 39;
    116:note <= 39;
    117:note <= 39;
    118:note <= 39;
    119:note <= 39;
    //quarter note rest
    120:note <= 0;
    121:note <= 0;
    122:note <= 0;
    123:note <= 0;
    //FIRST REPEAT
    //A 44
    124:note <= 44;
    125:note <= 44;
    126:note <= 44;
    127:note <= 44;
    //G 42
    128:note <= 42;
    129:note <= 42;
    130:note <= 42;
    131:note <= 42;
    //F# 41
    132:note <= 41;
    133:note <= 41;
    134:note <= 41; 
    135:note <= 41;
    136:note <= 41;
    137:note <= 41;
    138:note <= 41; 
    139:note <= 41;
    //E 39
    140:note <= 39;
    141:note <= 39;
    //F# 41
    142:note <= 41;
    143:note <= 41;
    144:note <= 41;
    145:note <= 41;
    //E 39
    146:note <= 39;
    //C# 36
    147:note <= 36;
    //D 37
    148:note <= 37;
    149:note <= 37;
    //A 32
    150:note <= 32;
    151:note <= 32;
    //quarter note rest
    152: note <= 0;    
    153: note <= 0;
    154: note <= 0;
    155: note <= 0;
    //A 44
    156:note <= 44;
    157:note <= 44;
    158:note <= 44;
    159:note <= 44;
    //G 42
    160:note <= 42;
    161:note <= 42;
    162:note <= 42;
    163:note <= 42;
    //F# 41
    164:note <= 41;
    165:note <= 41;
    166:note <= 41;
    167:note <= 41;
    168:note <= 41;
    169:note <= 41;
    170:note <= 41;
    171:note <= 41;
    //E 39
    172:note <= 39;
    173:note <= 39;
    //F# 41
    174:note <= 41;
    175:note <= 41;
    176:note <= 41;
    177:note <= 41;
    //E 39
    178:note <= 39;
    //C# 36
    179:note <= 36;
    //D 37
    180:note <= 37;
    181:note <= 37;
    182:note <= 37;
    183:note <= 37;
    //SECOND ENDING
    //B 46
    184:note <= 46;
    185:note <= 46;
    186:note <= 46;
    187:note <= 46;
    //A 44
    188:note <= 44;
    189:note <= 44;
    190:note <= 44;
    191:note <= 44;
    //G
    192:note <= 42;
    193:note <= 42;
    194:note <= 42;
    195:note <= 42;
    //eight note rest
    196:note <= 0;
    197:note <= 0;
    //D 37
    198:note <= 37;
    199:note <= 37;
    //C# 48
    200:note <= 48;
    201:note <= 48;
    202:note <= 48;
    203:note <= 48;
    //B 46
    204:note <= 46;
    205:note <= 46;
    206:note <= 46;
    207:note <= 46;
    //A 44
    208:note <= 44;
    209:note <= 44;
    210:note <= 44;
    211:note <= 44;
    //D 37
    212:note <= 37;
    213:note <= 37;
    //D 49
    214:note <= 49;
    215:note <= 49;
    216:note <= 49;
    217:note <= 49;
    218:note <= 49;
    219:note <= 49;
    //C# 48
    220:note <= 48;
    221:note <= 48;
    //B 46
    222:note <= 46;
    223:note <= 46;
    224:note <= 46;
    225:note <= 46;   
    226:note <= 46;
    227:note <= 46;
    //F# 41
    228:note <= 41;
    229:note <= 41;
    //A
    230:note <= 44;
    231:note <= 44;   
    232:note <= 44;
    233:note <= 44;
    234:note <= 44;
    235:note <= 44;
    236:note <= 44;
    237:note <= 44;
    //eight note rest
    238:note <= 0;
    239:note <= 0;
    //B 46: And at last...
    240:note <= 46;
    241:note <= 46;
    //C# 48
    242:note <= 48;
    243:note <= 48;
    //D 49
    244:note <= 49;
    245:note <= 49;
    246:note <= 49;
    247:note <= 49;
    //G 42
    248:note <= 42;
    249:note <= 42;
    250:note <= 42;
    251:note <= 42;
    //rest to imitate articulation
    252:note <= 42;
    //G 42
    253:note <= 42;
    254:note <= 42;
    255:note <= 42;    
    256:note <= 42;
    257:note <= 42;
    258:note <= 42;
    //F# 41
    259:note <= 41;
    260:note <= 41;
    //A 44
    261:note <= 44;   
    262:note <= 44;
    263:note <= 44;
    264:note <= 44;
    265:note <= 44;
    266:note <= 44;
    267:note <= 44;
    268:note <= 44;
    //quarter note rest
    269:note <= 0;
    270:note <= 0;
    271:note <= 0;
    272:note <= 0;
    //D 37
    273:note <= 37;
    274:note <= 37;
    //E 39
    275:note <= 39;
    276:note <= 39;
    //sixteenth note rest to imitate articulation
    277:note <= 39;
    //E 39
    278:note <= 39;
    279:note <= 39;
    280:note <= 39;
    281:note <= 39;
    282:note <= 39;
    283:note <= 39;
    //sixteenth note rest to imitate articulation
    284:note <= 39;
    //E 39
    285:note <= 39;
    286:note <= 39;
    //A 44
    287:note <= 44;
    288:note <= 44;
    289:note <= 44;
    290:note <= 44;
    291:note <= 44;
    292:note <= 44;
    //G 42
    293:note <= 42;
    294:note <= 42;
    //G 42
    295:note <= 42;
    296:note <= 42;
    297:note <= 42;
    298:note <= 42;
    //F# 41
    299:note <= 41;
	 300:note <= 41;
    301:note <= 41;
    302:note <= 41;
    303:note <= 41;
    //quarter note rest
    304:note <= 0;
    305:note <= 0;
    306:note <= 0;
    307:note <= 0;
    //B 46
    308:note <= 46;
    309:note <= 46;
    //C# 48
    310:note <= 48;
    311:note <= 48;
    //D 49
    312:note <= 49;
    313:note <= 49;
    314:note <= 49;    
    315:note <= 49;
    //G 42
    316:note <= 42;
    317:note <= 42;
    318:note <= 42;
    319:note <= 42;
    //sixteenth note rest to imitate articulation
    320:note <= 42;
    //G 42    
    321:note <= 42;
    323:note <= 42;
    324:note <= 42;
    325:note <= 42;
    326:note <= 42;    
    327:note <= 42;
    //F# 41
    328:note <= 41;
    329:note <= 41;
    //A 44
    330:note <= 44;
    331:note <= 44;    
    332:note <= 44;
    333:note <= 44;
    334:note <= 44;
    335:note <= 44;
    336:note <= 44;
    337:note <= 44;
    //quarter note rest    
    338:note <= 0;
    339:note <= 0;
    340:note <= 0;
    341:note <= 0;
    //D 37
    342:note <= 37;
    343:note <= 37;
    //E 39
    344:note <= 39;
    345:note <= 39;
    //F# 41
    346:note <= 41;
    347:note <= 41;
    348:note <= 41;
    349:note <= 41;
    350:note <= 41;
    351:note <= 41;
    //G 42
    352:note <= 42;
    353:note <= 42;
    //F# 41
    354:note <= 41;
    355:note <= 41;
    356:note <= 41;
    357:note <= 41;
    358:note <= 41;
    359:note <= 41;
    //E 39
    360:note <= 39;
    361:note <= 39;
    //D 37
    362:note <= 37;
    363:note <= 37;
    364:note <= 37;
    365:note <= 37;
    366:note <= 37;
    367:note <= 37;
    367:note <= 37;
    368:note <= 37;
    //quarter note rest
    369:note <= 0;
    370:note <= 0; 
    371:note <= 0; 
    372:note <= 0;
    
	 /*
	 //B 46
    373:note <= 47;
    374:note <= 46;
    //C# 48
    375:note <= 48;
    376:note <= 48;
    //D 49
    377:note <= 49;
    378:note <= 49;
    379:note <= 49;
    380:note <= 49;
    381:note <= 49;
    382:note <= 49;
    //G 42
    383:note <= 42;
    384:note <= 42;
    //sixteenth note rest to imitate articulation
    385:note <= 42;
    //G
    386:note <= 42;
    387:note <= 42;
    388:note <= 42;
    389:note <= 42;
    //F# 41
    390:note <= 41;
    391:note <= 41;
    392:note <= 41;
    393:note <= 41;
    //A 44
    394:note <= 44;
    395:note <= 44;
    396:note <= 44;
    397:note <= 44;
    //D 37
    398:note <= 37;
    399:note <= 37;
    400:note <= 37;
    401:note <= 37;
    402:note <= 37;
    403:note <= 37;
    404:note <= 37;
    405:note <= 37;
    //quarter noter est
    406:note <= 0;
    407:note <= 0;
	 */
	 
    373:note <= 0;
    374:note <= 0;
    //rest
    375:note <= 0; 
    376:note <= 0;
    377:note <= 0;
    378:note <= 0;
    default: note <= 0;
endcase
endmodule
