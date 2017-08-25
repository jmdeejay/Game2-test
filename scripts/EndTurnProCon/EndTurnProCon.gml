/// @description End of Turn ProCon 
/*
Production / Consumption modifier. Modifies the global.worldQtyTable at the end of the turn.
At the end of all turns, the Ports produce or consume excess spices and these are tallied in their
On Hand quantities. Run only *once* at the end of the turn. No arguments necessary.
NOTE: Do not let the amounts decrease below zero!
*/

// ========== VAIOS ===============
var VaioRose = ds_grid_get(WORLD, VAIO, ROSE);
if(VaioRose - 2 >= 0) VaioRose -= 2; // Rosemary is normal.
ds_grid_set(WORLD, VAIO, ROSE, VaioRose);

var VaioPapr = ds_grid_get(WORLD, VAIO, PAPR);
VaioPapr += 7; // Paprika is produced. 
ds_grid_set(WORLD, VAIO, PAPR, VaioPapr);

var VaioBasil = ds_grid_get(WORLD, VAIO, BASI);
if (VaioBasil - 4 >= 0) VaioBasil -= 4; // Basil is consumed
ds_grid_set(WORLD, VAIO, BASI, VaioBasil);

var VaioThyme = ds_grid_get(WORLD, VAIO, THYM);
VaioThyme += 6; // Thyme is produced. 
ds_grid_set(WORLD, VAIO, THYM, VaioThyme);

var VaioCumin = ds_grid_get(WORLD, VAIO, CUMI);
if (VaioCumin - 2 >= 0) VaioCumin -= 2; // Cumin is normal.
ds_grid_set(WORLD, VAIO, CUMI, VaioCumin);

var VaioSugar = ds_grid_get(WORLD, VAIO, CANE);
if (VaioSugar - 4 >= 0) VaioSugar -= 4; // Sugar is consumed.
ds_grid_set(WORLD, VAIO, CANE, VaioSugar);

var VaioPepper = ds_grid_get(WORLD, VAIO, PEPP);
if (VaioPepper - 2 >= 0) VaioPepper -= 2; // Pepper is normal.
ds_grid_set(WORLD, VAIO, PEPP, VaioPepper);

var VaioTurmeric = ds_grid_get(WORLD, VAIO, TURM);
if (VaioTurmeric - 2 >= 0) VaioTurmeric -= 2; // Turmeric is normal.
ds_grid_set(WORLD, VAIO, TURM, VaioTurmeric);

var VaioGarlic = ds_grid_get(WORLD, VAIO, GARL);
if (VaioGarlic - 4 >= 0) VaioGarlic -= 4 // Garlic is  consumed.
ds_grid_set(WORLD, VAIO, GARL, VaioGarlic);

var VaioGinger = ds_grid_get(WORLD, VAIO, GING);
if (VaioGinger - 1 >= 0) VaioGinger -= 1; // Ginger is normal.
ds_grid_set(WORLD, VAIO, GING, VaioGinger);

var VaioSalt = ds_grid_get(WORLD, VAIO, SALT);
VaioSalt += 7; // Salt is produced. 
ds_grid_set(WORLD, VAIO, SALT, VaioSalt);

var VaioMustard = ds_grid_get(WORLD, VAIO, MUST);
VaioMustard += 12; // Mustard is produced. 
ds_grid_set(WORLD, VAIO, MUST, VaioMustard);

var VaioCloves = ds_grid_get(WORLD, VAIO, CLOV);
if (VaioCloves - 4 >= 0) VaioCloves -= 4; //Cloves are consumed.
ds_grid_set(WORLD, VAIO, CLOV, VaioCloves);

var VaioNutmeg = ds_grid_get(WORLD, VAIO, NUTM);
if (VaioNutmeg - 1 >= 0) VaioNutmeg -= 1; // Nutmeg is normal.
ds_grid_set(WORLD, VAIO, NUTM, VaioNutmeg);

var VaioSesame = ds_grid_get(WORLD, VAIO, SESA);
if (VaioSesame - 2 >= 0) VaioSesame -= 2; // Sesame is normal.
ds_grid_set(WORLD, VAIO, SESA, VaioSesame);

var VaioCinnamon = ds_grid_get(WORLD, VAIO, CINN);
if (VaioCinnamon - 2 >= 0) VaioCinnamon -= 2; // Cinnamon is normal.
ds_grid_set(WORLD, VAIO, CINN, VaioCinnamon);

var VaioSaffron = ds_grid_get(WORLD, VAIO, SAFF);
if (VaioSaffron - 1 >= 0) VaioSaffron -= 1; // Saffron is normal.
ds_grid_set(WORLD, VAIO, SAFF, VaioSaffron);

var VaioVanilla = ds_grid_get(WORLD, VAIO, VANI);
if (VaioVanilla - 2 >= 0) VaioVanilla -= 2; // Vanilla is normal.
ds_grid_set(WORLD, VAIO, VANI, VaioVanilla);


// ========== DOMOS =============

var DomoRose = ds_grid_get(WORLD, DOMO, ROSE);
DomoRose += 7; // Rosemary is produced.
ds_grid_set(WORLD, DOMO, ROSE, DomoRose);

var DomoPapr = ds_grid_get(WORLD, DOMO, PAPR);
DomoPapr += 7; // Paprika is produced. 
ds_grid_set(WORLD, DOMO, PAPR, DomoPapr);

var DomoBasil = ds_grid_get(WORLD, DOMO, BASI);
if (DomoBasil - 4 >= 0) DomoBasil -= 4; // Basil is consumed.
ds_grid_set(WORLD, DOMO, BASI, DomoBasil);

var DomoThyme = ds_grid_get(WORLD, DOMO, THYM);
DomoThyme += 6; // Thyme is produced. 
ds_grid_set(WORLD, DOMO, THYM, DomoThyme);

var DomoCumin = ds_grid_get(WORLD, DOMO, CUMI);
if (DomoCumin - 2 >= 0) DomoCumin -= 2; // Cumin is normal.
ds_grid_set(WORLD, DOMO, CUMI, DomoCumin);

var DomoSugar = ds_grid_get(WORLD, DOMO, CANE);
if (DomoSugar - 2 >= 0) DomoSugar -= 2; // Cane sugar is normal.
ds_grid_set(WORLD, DOMO, CANE, DomoSugar);

var DomoPepper = ds_grid_get(WORLD, DOMO, PEPP);
if (DomoPepper - 4 >= 0) DomoPepper -= 4; // Pepper is consumed.
ds_grid_set(WORLD, DOMO, PEPP, DomoPepper);

var DomoTurmeric = ds_grid_get(WORLD, DOMO, TURM);
if (DomoTurmeric - 2 >= 0) DomoTurmeric -= 2; // Turmeric is normal.
ds_grid_set(WORLD, DOMO, TURM, DomoTurmeric);

var DomoGarlic = ds_grid_get(WORLD, DOMO, GARL);
if (DomoGarlic - 2 >= 0) DomoGarlic -= 2; // Garlic is normal.
ds_grid_set(WORLD, DOMO, GARL, DomoGarlic);

var DomoGinger = ds_grid_get(WORLD, DOMO, GING);
if (DomoGinger - 1 >= 0) DomoGinger -= 1; // Ginger is normal.
ds_grid_set(WORLD, DOMO, GING, DomoGinger);

var DomoSalt = ds_grid_get(WORLD, DOMO, SALT);
if (DomoSalt - 2 >= 0) DomoSalt -= 2; // Salt is normal. 
ds_grid_set(WORLD, DOMO, SALT, DomoSalt);

var DomoMustard = ds_grid_get(WORLD, DOMO, MUST);
if (DomoMustard - 1 >= 0) DomoMustard -= 1; // Mustard is normal. 
ds_grid_set(WORLD, DOMO, MUST, DomoMustard);

var DomoCloves = ds_grid_get(WORLD, DOMO, CLOV);
if (DomoCloves - 4 >= 0) DomoCloves -= 4; // Cloves are consumed excessively.
ds_grid_set(WORLD, DOMO, CLOV, DomoCloves);

var DomoNutmeg = ds_grid_get(WORLD, DOMO, NUTM);
if (DomoNutmeg - 1 >= 0) DomoNutmeg -= 1; // Nutmeg is normal.
ds_grid_set(WORLD, DOMO, NUTM, DomoNutmeg);

var DomoSesame = ds_grid_get(WORLD, DOMO, SESA);
DomoSesame += 7; // Sesame is produced.
ds_grid_set(WORLD, DOMO, SESA, DomoSesame);

var DomoCinnamon = ds_grid_get(WORLD, DOMO, CINN);
if (DomoCinnamon - 2 >= 0) DomoCinnamon -= 2; // Cinnamon is normal.
ds_grid_set(WORLD, DOMO, CINN, DomoCinnamon);

var DomoSaffron = ds_grid_get(WORLD, DOMO, SAFF);
if (DomoSaffron - 1 >= 0) DomoSaffron -= 1; // Saffron is normal.
ds_grid_set(WORLD, DOMO, SAFF, DomoSaffron);

var DomoVanilla = ds_grid_get(WORLD, DOMO, VANI);
if (DomoVanilla - 6 >= 0) DomoVanilla -= 6; // Vanilla is consumed excessively.
ds_grid_set(WORLD, DOMO, VANI, DomoVanilla);


//========== CHIRSK =======================


var ChirskRose = ds_grid_get(WORLD, CHIRS, ROSE);
if (ChirskRose - 2 >= 0) ChirskRose -= 2; // Rosemary is normal.
ds_grid_set(WORLD, CHIRS, ROSE, ChirskRose);

var ChirskPapr = ds_grid_get(WORLD, CHIRS, PAPR);
if (ChirskPapr - 2 >= 0) ChirskPapr -= 2; // Paprika is normal. 
ds_grid_set(WORLD, CHIRS, PAPR, ChirskPapr);

var ChirskBasil = ds_grid_get(WORLD, CHIRS, BASI);
if (ChirskBasil - 1 >= 0) ChirskBasil -= 1; // Basil is normal.
ds_grid_set(WORLD, CHIRS, BASI, ChirskBasil);

var ChirskThyme = ds_grid_get(WORLD, CHIRS, THYM);
if (ChirskThyme - 2 >= 0) ChirskThyme -= 2; // Thyme is normal. 
ds_grid_set(WORLD, CHIRS, THYM, ChirskThyme);

var ChirskCumin = ds_grid_get(WORLD, CHIRS, CUMI);
if (ChirskCumin - 2 >= 0) ChirskCumin -= 2; // Cumin is normal.
ds_grid_set(WORLD, CHIRS, CUMI, ChirskCumin);

var ChirskSugar = ds_grid_get(WORLD, CHIRS, CANE);
if (ChirskSugar - 2 >= 0) ChirskSugar -= 2; // Cane sugar is normal.
ds_grid_set(WORLD, CHIRS, CANE, ChirskSugar);

var ChirskPepper = ds_grid_get(WORLD, CHIRS, PEPP);
if (ChirskPepper - 4 >= 0) ChirskPepper -= 4; // Pepper is consumed.
ds_grid_set(WORLD, CHIRS, PEPP, ChirskPepper);

var ChirskTurmeric = ds_grid_get(WORLD, CHIRS, TURM);
if (ChirskTurmeric - 4 >= 0) ChirskTurmeric -= 4; // Turmeric is consumed.
ds_grid_set(WORLD, CHIRS, TURM, ChirskTurmeric);

var ChirskGarlic = ds_grid_get(WORLD, CHIRS, GARL);
ChirskGarlic += 7; // Garlic is produced.
ds_grid_set(WORLD, CHIRS, GARL, ChirskGarlic);

var ChirskGinger = ds_grid_get(WORLD, CHIRS, GING);
if (ChirskGinger - 1 >= 0) ChirskGinger -= 1; // Ginger is normal.
ds_grid_set(WORLD, CHIRS, GING, ChirskGinger);

var ChirskSalt = ds_grid_get(WORLD, CHIRS, SALT);
ChirskSalt += 7; // Salt is produced. 
ds_grid_set(WORLD, CHIRS, SALT, ChirskSalt);

var ChirskMustard = ds_grid_get(WORLD, CHIRS, MUST);
if (ChirskMustard - 1 >= 0) ChirskMustard -= 1; // Mustard is normal. 
ds_grid_set(WORLD, CHIRS, MUST, ChirskMustard);

var ChirskCloves = ds_grid_get(WORLD, CHIRS, CLOV);
ChirskCloves += 12; // Cloves are produced.
ds_grid_set(WORLD, CHIRS, CLOV, ChirskCloves);

var ChirskNutmeg = ds_grid_get(WORLD, CHIRS, NUTM);
if (ChirskNutmeg - 5 >= 0) ChirskNutmeg -= 5; // Nutmeg is consumed excessively.
ds_grid_set(WORLD, CHIRS, NUTM, ChirskNutmeg);

var ChirskSesame = ds_grid_get(WORLD, CHIRS, SESA);
if (ChirskSesame - 2 >= 0) ChirskSesame -= 2; // Sesame is normal.
ds_grid_set(WORLD, CHIRS, SESA, ChirskSesame);

var ChirskCinnamon = ds_grid_get(WORLD, CHIRS, CINN);
ChirskCinnamon += 6; // Cinnamon is produced.
ds_grid_set(WORLD, CHIRS, CINN, ChirskCinnamon);

var ChirskSaffron = ds_grid_get(WORLD, CHIRS, SAFF);
if (ChirskSaffron - 5 >= 0) ChirskSaffron -= 5; // Saffron is consumed excessively.
ds_grid_set(WORLD, CHIRS, SAFF, ChirskSaffron);

var ChirskVanilla = ds_grid_get(WORLD, CHIRS, VANI);
if (ChirskVanilla - 2 >= 0) ChirskVanilla -= 2; // Vanilla is normal.
ds_grid_set(WORLD, CHIRS, VANI, ChirskVanilla);


// ============== BARCELLUS ================


var BarcellusRose = ds_grid_get(WORLD, BARC, ROSE);
if (BarcellusRose - 5 >= 0) BarcellusRose -= 5; // Rosemary is consumed excessively.
ds_grid_set(WORLD, BARC, ROSE, BarcellusRose);

var BarcellusPapr = ds_grid_get(WORLD, BARC, PAPR);
if (BarcellusPapr - 2 >= 0) BarcellusPapr -= 2; // Paprika is normal. 
ds_grid_set(WORLD, BARC, PAPR, BarcellusPapr);

var BarcellusBasil = ds_grid_get(WORLD, BARC, BASI);
BarcellusBasil += 12; // Basil is produced.
ds_grid_set(WORLD, BARC, BASI, BarcellusBasil);

var BarcellusThyme = ds_grid_get(WORLD, BARC, THYM);
if (BarcellusThyme - 2 >= 0) BarcellusThyme -= 2; // Thyme is normal.
ds_grid_set(WORLD, BARC, THYM, BarcellusThyme);

var BarcellusCumin = ds_grid_get(WORLD, BARC, CUMI);
if (BarcellusCumin - 4 >= 0) BarcellusCumin -= 4; // Cumin is consumed.
ds_grid_set(WORLD, BARC, CUMI, BarcellusCumin);

var BarcellusSugar = ds_grid_get(WORLD, BARC, CANE);
BarcellusSugar += 7; // Cane sugar is produced.
ds_grid_set(WORLD, BARC, CANE, BarcellusSugar);

var BarcellusPepper = ds_grid_get(WORLD, BARC, PEPP);
BarcellusPepper += 7; // Pepper is produced.
ds_grid_set(WORLD, BARC, PEPP, BarcellusPepper);

var BarcellusTurmeric = ds_grid_get(WORLD, BARC, TURM);
if (BarcellusTurmeric - 2 >= 0) BarcellusTurmeric -= 2; // Turmeric is normal.
ds_grid_set(WORLD, BARC, TURM, BarcellusTurmeric);

var BarcellusGarlic = ds_grid_get(WORLD, BARC, GARL);
if (BarcellusGarlic - 4 >= 0) BarcellusGarlic -= 4; // Garlic is consumed.
ds_grid_set(WORLD, BARC, GARL, BarcellusGarlic);

var BarcellusGinger = ds_grid_get(WORLD, BARC, GING);
BarcellusGinger += 10; // Ginger is produced.
ds_grid_set(WORLD, BARC, GING, BarcellusGinger);

var BarcellusSalt = ds_grid_get(WORLD, BARC, SALT);
if (BarcellusSalt - 2 >= 0) BarcellusSalt -= 2; // Salt is normal. 
ds_grid_set(WORLD, BARC, SALT, BarcellusSalt);

var BarcellusMustard = ds_grid_get(WORLD, BARC, MUST);
if (BarcellusMustard - 1 >= 0) BarcellusMustard -= 1; // Mustard is normal. 
ds_grid_set(WORLD, BARC, MUST, BarcellusMustard);

var BarcellusCloves = ds_grid_get(WORLD, BARC, CLOV);
if (BarcellusCloves - 1 >= 0) BarcellusCloves -= 1; // Cloves are normal.
ds_grid_set(WORLD, BARC, CLOV, BarcellusCloves);

var BarcellusNutmeg = ds_grid_get(WORLD, BARC, NUTM);
if (BarcellusNutmeg - 1 >= 0) BarcellusNutmeg -= 1; // Nutmeg is normal.
ds_grid_set(WORLD, BARC, NUTM, BarcellusNutmeg);

var BarcellusSesame = ds_grid_get(WORLD, BARC, SESA);
if (BarcellusSesame - 2 >= 0) BarcellusSesame -= 2; // Sesame is normal.
ds_grid_set(WORLD, BARC, SESA, BarcellusSesame);

var BarcellusCinnamon = ds_grid_get(WORLD, BARC, CINN);
if (BarcellusCinnamon - 4 >= 0) BarcellusCinnamon -= 4; // Cinnamon is consumed.
ds_grid_set(WORLD, BARC, CINN, BarcellusCinnamon);

var BarcellusSaffron = ds_grid_get(WORLD, BARC, SAFF);
if (BarcellusSaffron - 1 >= 0) BarcellusSaffron -= 1; // Saffron is normal.
ds_grid_set(WORLD, BARC, SAFF, BarcellusSaffron);

var BarcellusVanilla = ds_grid_get(WORLD, BARC, VANI);
if (BarcellusVanilla - 2 >= 0) BarcellusVanilla -= 1; // Vanilla is normal.
ds_grid_set(WORLD, BARC, VANI, BarcellusVanilla);


//=========== ZANDRETTA ========================

var ZandrettaRose = ds_grid_get(WORLD, ZAND, ROSE);
if (ZandrettaRose - 2 >= 0)ZandrettaRose -= 2; // Rosemary is normal.
ds_grid_set(WORLD, ZAND, ROSE, ZandrettaRose);

var ZandrettaPapr = ds_grid_get(WORLD, ZAND, PAPR);
if (ZandrettaPapr - 4 >= 0) ZandrettaPapr -= 4; // Paprika is consumed. 
ds_grid_set(WORLD, ZAND, PAPR, ZandrettaPapr);

var ZandrettaBasil = ds_grid_get(WORLD, ZAND, BASI);
if (ZandrettaBasil - 1 >= 0) ZandrettaBasil -= 1; // Basil is normal.
ds_grid_set(WORLD, ZAND, BASI, ZandrettaBasil);

var ZandrettaThyme = ds_grid_get(WORLD, ZAND, THYM);
if (ZandrettaThyme - 2 >= 0) ZandrettaThyme -= 2; // Thyme is normal. 
ds_grid_set(WORLD, ZAND, THYM, ZandrettaThyme);

var ZandrettaCumin = ds_grid_get(WORLD, ZAND, CUMI);
if (ZandrettaCumin - 4 >= 0) ZandrettaCumin -= 4; // Cumin is consumed
ds_grid_set(WORLD, ZAND, CUMI, ZandrettaCumin);

var ZandrettaSugar = ds_grid_get(WORLD, ZAND, CANE);
ZandrettaSugar += 7; // Cane sugar is produced.
ds_grid_set(WORLD, ZAND, CANE, ZandrettaSugar);

var ZandrettaPepper = ds_grid_get(WORLD, ZAND, PEPP);
if (ZandrettaPepper - 2 >= 0)ZandrettaPepper -= 2; // Pepper is normal.
ds_grid_set(WORLD, ZAND, PEPP, ZandrettaPepper);

var ZandrettaTurmeric = ds_grid_get(WORLD, ZAND, TURM);
ZandrettaTurmeric += 14; // Turmeric is produced.
ds_grid_set(WORLD, ZAND, TURM, ZandrettaTurmeric);

var ZandrettaGarlic = ds_grid_get(WORLD, ZAND, GARL);
if (ZandrettaGarlic - 2 >= 0) ZandrettaGarlic -= 2; // Garlic is normal.
ds_grid_set(WORLD, ZAND, GARL, ZandrettaGarlic);

var ZandrettaGinger = ds_grid_get(WORLD, ZAND, GING);
if (ZandrettaGinger - 1 >= 0) ZandrettaGinger -= 1; // Ginger is normal.
ds_grid_set(WORLD, ZAND, GING, ZandrettaGinger);

var ZandrettaSalt = ds_grid_get(WORLD, ZAND, SALT);
if (ZandrettaSalt - 4 >= 0) ZandrettaSalt -= 4; // Salt is consumed.
ds_grid_set(WORLD, ZAND, SALT, ZandrettaSalt);

var ZandrettaMustard = ds_grid_get(WORLD, ZAND, MUST);
if (ZandrettaMustard - 1 >= 0) ZandrettaMustard -= 1; // Mustard is normal. 
ds_grid_set(WORLD, ZAND, MUST, ZandrettaMustard);

var ZandrettaCloves = ds_grid_get(WORLD, ZAND, CLOV);
if (ZandrettaCloves - 1 >= 0) ZandrettaCloves -= 1; // Cloves are normal.
ds_grid_set(WORLD, ZAND, CLOV, ZandrettaCloves);

var ZandrettaNutmeg = ds_grid_get(WORLD, ZAND, NUTM);
if (ZandrettaNutmeg - 1 >= 0) ZandrettaNutmeg -= 1; // Nutmeg is normal.
ds_grid_set(WORLD, ZAND, NUTM, ZandrettaNutmeg);

var ZandrettaSesame = ds_grid_get(WORLD, ZAND, SESA);
if (ZandrettaSesame - 4 >= 0) ZandrettaSesame -= 4; // Sesame is consumed
ds_grid_set(WORLD, ZAND, SESA, ZandrettaSesame);

var ZandrettaCinnamon = ds_grid_get(WORLD, ZAND, CINN);
ZandrettaCinnamon += 6; // Cinnamon is produced.
ds_grid_set(WORLD, ZAND, CINN, ZandrettaCinnamon);

var ZandrettaSaffron = ds_grid_get(WORLD, ZAND, SAFF);
if (ZandrettaSaffron - 1 >= 0)ZandrettaSaffron -= 1; // Saffron is normal.
ds_grid_set(WORLD, ZAND, SAFF, ZandrettaSaffron);

var ZandrettaVanilla = ds_grid_get(WORLD, ZAND, VANI);
ZandrettaVanilla += 16; // Vanilla is produced.
ds_grid_set(WORLD, ZAND, VANI, ZandrettaVanilla);


//================ SYRR ========================


var SyrrRose = ds_grid_get(WORLD, SYRR, ROSE);
SyrrRose += 6; // Rosemary is produced.
ds_grid_set(WORLD, SYRR, ROSE, SyrrRose);

var SyrrPapr = ds_grid_get(WORLD, SYRR, PAPR);
if (SyrrPapr - 4 >= 0) SyrrPapr -= 4; // Paprika is consumed.
ds_grid_set(WORLD, SYRR, PAPR, SyrrPapr);

var SyrrBasil = ds_grid_get(WORLD, SYRR, BASI);
if (SyrrBasil - 1 >= 0) SyrrBasil -= 1; // Basil is normal.
ds_grid_set(WORLD, SYRR, BASI, SyrrBasil);

var SyrrThyme = ds_grid_get(WORLD, SYRR, THYM);
if (SyrrThyme - 4 >= 0) SyrrThyme -= 4; // Thyme is consumed.
ds_grid_set(WORLD, SYRR, THYM, SyrrThyme);

var SyrrCumin = ds_grid_get(WORLD, SYRR, CUMI);
SyrrCumin += 7; // Cumin is produced.
ds_grid_set(WORLD, SYRR, CUMI, SyrrCumin);

var SyrrSugar = ds_grid_get(WORLD, SYRR, CANE);
if (SyrrSugar - 2 >= 0) SyrrSugar -= 2; // Cane sugar is normal.
ds_grid_set(WORLD, SYRR, CANE, SyrrSugar);

var SyrrPepper = ds_grid_get(WORLD, SYRR, PEPP);
if (SyrrPepper - 2 >= 0) SyrrPepper -= 2; // Pepper is normal.
ds_grid_set(WORLD, SYRR, PEPP, SyrrPepper);

var SyrrTurmeric = ds_grid_get(WORLD, SYRR, TURM);
if (SyrrTurmeric - 2 >= 0) SyrrTurmeric -= 2; // Turmeric is normal.
ds_grid_set(WORLD, SYRR, TURM, SyrrTurmeric);

var SyrrGarlic = ds_grid_get(WORLD, SYRR, GARL);
if (SyrrGarlic - 2 >= 0) SyrrGarlic -= 2; // Garlic is normal.
ds_grid_set(WORLD, SYRR, GARL, SyrrGarlic);

var SyrrGinger = ds_grid_get(WORLD, SYRR, GING);
if (SyrrGinger - 1 >= 0) SyrrGinger -= 1; // Ginger is normal.
ds_grid_set(WORLD, SYRR, GING, SyrrGinger);

var SyrrSalt = ds_grid_get(WORLD, SYRR, SALT);
if (SyrrSalt - 4 >= 0) SyrrSalt -= 4; // Salt is consumed.
ds_grid_set(WORLD, SYRR, SALT, SyrrSalt);

var SyrrMustard = ds_grid_get(WORLD, SYRR, MUST);
if (SyrrMustard - 4 >= 0) SyrrMustard -= 4; // Mustard is consumed.
ds_grid_set(WORLD, SYRR, MUST, SyrrMustard);

var SyrrCloves = ds_grid_get(WORLD, SYRR, CLOV);
if (SyrrCloves - 1 >= 0) SyrrCloves += 1; // Cloves are normal.
ds_grid_set(WORLD, SYRR, CLOV, SyrrCloves);

var SyrrNutmeg = ds_grid_get(WORLD, SYRR, NUTM);
if (SyrrNutmeg - 1 >= 0) SyrrNutmeg -= 1; // Nutmeg is normal.
ds_grid_set(WORLD, SYRR, NUTM, SyrrNutmeg);

var SyrrSesame = ds_grid_get(WORLD, SYRR, SESA);
SyrrSesame += 7; // Sesame is produced.
ds_grid_set(WORLD, SYRR, SESA, SyrrSesame);

var SyrrCinnamon = ds_grid_get(WORLD, SYRR, CINN);
if (SyrrCinnamon - 2 >= 0) SyrrCinnamon -= 2; // Cinnamon is normal.
ds_grid_set(WORLD, SYRR, CINN, SyrrCinnamon);

var SyrrSaffron = ds_grid_get(WORLD, SYRR, SAFF);
SyrrSaffron += 10; // Saffron is produced.
ds_grid_set(WORLD, SYRR, SAFF, SyrrSaffron);

var SyrrVanilla = ds_grid_get(WORLD, SYRR, VANI);
if (SyrrVanilla - 2 >= 0) SyrrVanilla -= 2; // Vanilla is normal.
ds_grid_set(WORLD, SYRR, VANI, SyrrVanilla);


//=============== KANDA =======================


var KandaRose = ds_grid_get(WORLD, KAND, ROSE);
if (KandaRose - 2 >= 0) KandaRose -= 2; // Rosemary is normal.
ds_grid_set(WORLD, KAND, ROSE, KandaRose);

var KandaPapr = ds_grid_get(WORLD, KAND, PAPR);
if (KandaPapr - 2 >= 0) KandaPapr -= 2; // Paprika is normal. 
ds_grid_set(WORLD, KAND, PAPR, KandaPapr);

var KandaBasil = ds_grid_get(WORLD, KAND, BASI);
if (KandaBasil - 1 >= 0) KandaBasil -= 1; // Basil is normal.
ds_grid_set(WORLD, KAND, BASI, KandaBasil);

var KandaThyme = ds_grid_get(WORLD, KAND, THYM);
if (KandaThyme - 2 >= 0) KandaThyme -= 2; // Thyme is normal. 
ds_grid_set(WORLD, KAND, THYM, KandaThyme);

var KandaCumin = ds_grid_get(WORLD, KAND, CUMI);
KandaCumin += 7; // Cumin is produced.
ds_grid_set(WORLD, KAND, CUMI, KandaCumin);

var KandaSugar = ds_grid_get(WORLD, KAND, CANE);
if (KandaSugar - 4 >= 0) KandaSugar -= 4; // Cane sugar is consumed
ds_grid_set(WORLD, KAND, CANE, KandaSugar);

var KandaPepper = ds_grid_get(WORLD, KAND, PEPP);
KandaPepper += 7; // Pepper is produced.
ds_grid_set(WORLD, KAND, PEPP, KandaPepper);

var KandaTurmeric = ds_grid_get(WORLD, KAND, TURM);
if (KandaTurmeric - 2 >= 0) KandaTurmeric -= 2; // Turmeric is normal.
ds_grid_set(WORLD, KAND, TURM, KandaTurmeric);

var KandaGarlic = ds_grid_get(WORLD, KAND, GARL);
SyrrGarlic += 7; // Garlic is produced.
ds_grid_set(WORLD, KAND, GARL, KandaGarlic);

var KandaGinger = ds_grid_get(WORLD, KAND, GING);
if (KandaGinger - 5 >= 0) KandaGinger -= 5; // Ginger is consumed
ds_grid_set(WORLD, KAND, GING, KandaGinger);

var KandaSalt = ds_grid_get(WORLD, KAND, SALT);
if (KandaSalt - 2 >= 0) KandaSalt -= 2; // Salt is normal. 
ds_grid_set(WORLD, KAND, SALT, KandaSalt);

var KandaMustard = ds_grid_get(WORLD, KAND, MUST);
if (KandaMustard - 4 >= 0) KandaMustard -= 4; // Mustard is consumed.
ds_grid_set(WORLD, KAND, MUST, KandaMustard);

var KandaCloves = ds_grid_get(WORLD, KAND, CLOV);
if (KandaCloves - 1 >= 0) KandaCloves -= 1; // Cloves are normal.
ds_grid_set(WORLD, KAND, CLOV, KandaCloves);

var KandaNutmeg = ds_grid_get(WORLD, KAND, NUTM);
KandaNutmeg += 10; // Nutmeg is normal.
ds_grid_set(WORLD, KAND, NUTM, KandaNutmeg);

var KandaSesame = ds_grid_get(WORLD, KAND, SESA);
if (KandaSesame - 4 >= 0) KandaSesame -= 4; // Sesame is consumed
ds_grid_set(WORLD, KAND, SESA, KandaSesame);

var KandaCinnamon = ds_grid_get(WORLD, KAND, CINN);
if (KandaCinnamon - 2 >= 0) KandaCinnamon -= 2; // Cinnamon is normal.
ds_grid_set(WORLD, KAND, CINN, KandaCinnamon);

var KandaSaffron = ds_grid_get(WORLD, KAND, SAFF);
if (KandaSaffron - 1 >= 0) KandaSaffron -= 1; // Saffron is normal.
ds_grid_set(WORLD, KAND, SAFF, KandaSaffron);

var KandaVanilla = ds_grid_get(WORLD, KAND, VANI);
if (KandaVanilla - 2 >= 0) KandaVanilla -= 2; // Vanilla is normal.
ds_grid_set(WORLD, KAND, VANI, KandaVanilla);