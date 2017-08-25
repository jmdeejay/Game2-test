/// @description First ProCon 
/*
Production / Consumption modifier. Modifies the global.worldQtyTable the first time it is created.
Necessary otherwise the random Quantites will be uniform across all ports.
Run only *once* at the beginning. No arguments necessary. NOTE: the worldQtyTable must be created 
first before running this script.
*/

// ========== VAIOS ===============
var VaioRose = ds_grid_get(WORLD, VAIO, ROSE);
VaioRose += 0; // Rosemary is normal.
ds_grid_set(WORLD, VAIO, ROSE, VaioRose);

var VaioPapr = ds_grid_get(WORLD, VAIO, PAPR);
VaioPapr += 50; // Paprika is produced. 
ds_grid_set(WORLD, VAIO, PAPR, VaioPapr);

var VaioBasil = ds_grid_get(WORLD, VAIO, BASI);
VaioBasil = VaioBasil * 0.80; // Basil is consumed excessively.
VaioBasil = round(VaioBasil);
ds_grid_set(WORLD, VAIO, BASI, VaioBasil);

var VaioThyme = ds_grid_get(WORLD, VAIO, THYM);
VaioThyme += 50; // Thyme is produced. 
ds_grid_set(WORLD, VAIO, THYM, VaioThyme);

var VaioCumin = ds_grid_get(WORLD, VAIO, CUMI);
VaioCumin += 0; // Cumin is normal.
ds_grid_set(WORLD, VAIO, CUMI, VaioCumin);

var VaioSugar = ds_grid_get(WORLD, VAIO, CANE);
VaioSugar = VaioSugar * 0.80; // Cane sugar is consumed excessively.
VaioSugar = round(VaioSugar);
ds_grid_set(WORLD, VAIO, CANE, VaioSugar);

var VaioPepper = ds_grid_get(WORLD, VAIO, PEPP);
VaioPepper += 0; // Pepper is normal.
ds_grid_set(WORLD, VAIO, PEPP, VaioPepper);

var VaioTurmeric = ds_grid_get(WORLD, VAIO, TURM);
VaioTurmeric += 0; // Turmeric is normal.
ds_grid_set(WORLD, VAIO, TURM, VaioTurmeric);

var VaioGarlic = ds_grid_get(WORLD, VAIO, GARL);
VaioGarlic = VaioGarlic * 0.80; // Garlic is consumed excessively.
VaioGarlic = round(VaioGarlic);
ds_grid_set(WORLD, VAIO, GARL, VaioGarlic);

var VaioGinger = ds_grid_get(WORLD, VAIO, GING);
VaioGinger += 0; // Ginger is normal.
ds_grid_set(WORLD, VAIO, GING, VaioGinger);

var VaioSalt = ds_grid_get(WORLD, VAIO, SALT);
VaioSalt += 50; // Salt is produced. 
ds_grid_set(WORLD, VAIO, SALT, VaioSalt);

var VaioMustard = ds_grid_get(WORLD, VAIO, MUST);
VaioMustard += 50; // Mustard is produced. 
ds_grid_set(WORLD, VAIO, MUST, VaioMustard);

var VaioCloves = ds_grid_get(WORLD, VAIO, CLOV);
VaioCloves = VaioCloves * 0.80; // Cloves are consumed excessively.
VaioCloves = round(VaioCloves);
ds_grid_set(WORLD, VAIO, CLOV, VaioCloves);

var VaioNutmeg = ds_grid_get(WORLD, VAIO, NUTM);
VaioNutmeg += 0; // Nutmeg is normal.
ds_grid_set(WORLD, VAIO, NUTM, VaioNutmeg);

var VaioSesame = ds_grid_get(WORLD, VAIO, SESA);
VaioSesame += 0; // Sesame is normal.
ds_grid_set(WORLD, VAIO, SESA, VaioSesame);

var VaioCinnamon = ds_grid_get(WORLD, VAIO, CINN);
VaioCinnamon += 0; // Cinnamon is normal.
ds_grid_set(WORLD, VAIO, CINN, VaioCinnamon);

var VaioSaffron = ds_grid_get(WORLD, VAIO, SAFF);
VaioSaffron += 0; // Saffron is normal.
ds_grid_set(WORLD, VAIO, SAFF, VaioSaffron);

var VaioVanilla = ds_grid_get(WORLD, VAIO, VANI);
VaioVanilla += 0; // Vanilla is normal.
ds_grid_set(WORLD, VAIO, VANI, VaioVanilla);


// ========== DOMOS =============

var DomoRose = ds_grid_get(WORLD, DOMO, ROSE);
DomoRose += 50; // Rosemary is produced.
ds_grid_set(WORLD, DOMO, ROSE, DomoRose);

var DomoPapr = ds_grid_get(WORLD, DOMO, PAPR);
DomoPapr += 50; // Paprika is produced. 
ds_grid_set(WORLD, DOMO, PAPR, DomoPapr);

var DomoBasil = ds_grid_get(WORLD, DOMO, BASI);
DomoBasil = DomoBasil * 0.80; // Basil is consumed excessively.
DomoBasil = round(DomoBasil);
ds_grid_set(WORLD, DOMO, BASI, DomoBasil);

var DomoThyme = ds_grid_get(WORLD, DOMO, THYM);
DomoThyme += 50; // Thyme is produced. 
ds_grid_set(WORLD, DOMO, THYM, DomoThyme);

var DomoCumin = ds_grid_get(WORLD, DOMO, CUMI);
DomoCumin += 0; // Cumin is normal.
ds_grid_set(WORLD, DOMO, CUMI, DomoCumin);

var DomoSugar = ds_grid_get(WORLD, DOMO, CANE);
DomoSugar += 0; // Cane sugar is normal.
ds_grid_set(WORLD, DOMO, CANE, DomoSugar);

var DomoPepper = ds_grid_get(WORLD, DOMO, PEPP);
DomoPepper = DomoPepper * 0.80; // Pepper is consumed.
DomoPepper = round(DomoPepper);
ds_grid_set(WORLD, DOMO, PEPP, DomoPepper);

var DomoTurmeric = ds_grid_get(WORLD, DOMO, TURM);
DomoTurmeric += 0; // Turmeric is normal.
ds_grid_set(WORLD, DOMO, TURM, DomoTurmeric);

var DomoGarlic = ds_grid_get(WORLD, DOMO, GARL);
DomoGarlic += 0; // Garlic is normal.
ds_grid_set(WORLD, DOMO, GARL, DomoGarlic);

var DomoGinger = ds_grid_get(WORLD, DOMO, GING);
DomoGinger += 0; // Ginger is normal.
ds_grid_set(WORLD, DOMO, GING, DomoGinger);

var DomoSalt = ds_grid_get(WORLD, DOMO, SALT);
DomoSalt += 0; // Salt is normal. 
ds_grid_set(WORLD, DOMO, SALT, DomoSalt);

var DomoMustard = ds_grid_get(WORLD, DOMO, MUST);
DomoMustard += 0; // Mustard is normal. 
ds_grid_set(WORLD, DOMO, MUST, DomoMustard);

var DomoCloves = ds_grid_get(WORLD, DOMO, CLOV);
DomoCloves = DomoCloves * 0.80; // Cloves are consumed excessively.
DomoCloves = round(DomoCloves);
ds_grid_set(WORLD, DOMO, CLOV, DomoCloves);

var DomoNutmeg = ds_grid_get(WORLD, DOMO, NUTM);
DomoNutmeg += 0; // Nutmeg is normal.
ds_grid_set(WORLD, DOMO, NUTM, DomoNutmeg);

var DomoSesame = ds_grid_get(WORLD, DOMO, SESA);
DomoSesame += 50; // Sesame is produced.
ds_grid_set(WORLD, DOMO, SESA, DomoSesame);

var DomoCinnamon = ds_grid_get(WORLD, DOMO, CINN);
DomoCinnamon += 0; // Cinnamon is normal.
ds_grid_set(WORLD, DOMO, CINN, DomoCinnamon);

var DomoSaffron = ds_grid_get(WORLD, DOMO, SAFF);
DomoSaffron += 0; // Saffron is normal.
ds_grid_set(WORLD, DOMO, SAFF, DomoSaffron);

var DomoVanilla = ds_grid_get(WORLD, DOMO, VANI);
DomoVanilla = DomoVanilla * 0.80; // Vanilla is consumed excessively.
DomoVanilla = round(DomoVanilla);
ds_grid_set(WORLD, DOMO, VANI, DomoVanilla);


//========== CHIRSK =======================


var ChirskRose = ds_grid_get(WORLD, CHIRS, ROSE);
ChirskRose += 0; // Rosemary is normal.
ds_grid_set(WORLD, CHIRS, ROSE, ChirskRose);

var ChirskPapr = ds_grid_get(WORLD, CHIRS, PAPR);
ChirskPapr += 0; // Paprika is normal. 
ds_grid_set(WORLD, CHIRS, PAPR, ChirskPapr);

var ChirskBasil = ds_grid_get(WORLD, CHIRS, BASI);
ChirskBasil += 0; // Basil is normal.
ds_grid_set(WORLD, CHIRS, BASI, ChirskBasil);

var ChirskThyme = ds_grid_get(WORLD, CHIRS, THYM);
ChirskThyme += 0; // Thyme is normal. 
ds_grid_set(WORLD, CHIRS, THYM, ChirskThyme);

var ChirskCumin = ds_grid_get(WORLD, CHIRS, CUMI);
ChirskCumin += 0; // Cumin is normal.
ds_grid_set(WORLD, CHIRS, CUMI, ChirskCumin);

var ChirskSugar = ds_grid_get(WORLD, CHIRS, CANE);
ChirskSugar += 0; // Cane sugar is normal.
ds_grid_set(WORLD, CHIRS, CANE, ChirskSugar);

var ChirskPepper = ds_grid_get(WORLD, CHIRS, PEPP);
ChirskPepper = ChirskPepper * 0.80; // Pepper is consumed.
ChirskPepper = round(ChirskPepper);
ds_grid_set(WORLD, CHIRS, PEPP, ChirskPepper);

var ChirskTurmeric = ds_grid_get(WORLD, CHIRS, TURM);
ChirskTurmeric = ChirskTurmeric * 0.80; // Turmeric is consumed.
ChirskTurmeric = round(ChirskTurmeric);
ds_grid_set(WORLD, CHIRS, TURM, ChirskTurmeric);

var ChirskGarlic = ds_grid_get(WORLD, CHIRS, GARL);
ChirskGarlic += 50; // Garlic is produced.
ds_grid_set(WORLD, CHIRS, GARL, ChirskGarlic);

var ChirskGinger = ds_grid_get(WORLD, CHIRS, GING);
ChirskGinger += 0; // Ginger is normal.
ds_grid_set(WORLD, CHIRS, GING, ChirskGinger);

var ChirskSalt = ds_grid_get(WORLD, CHIRS, SALT);
ChirskSalt += 50; // Salt is produced. 
ds_grid_set(WORLD, CHIRS, SALT, ChirskSalt);

var ChirskMustard = ds_grid_get(WORLD, CHIRS, MUST);
ChirskMustard += 0; // Mustard is normal. 
ds_grid_set(WORLD, CHIRS, MUST, ChirskMustard);

var ChirskCloves = ds_grid_get(WORLD, CHIRS, CLOV);
ChirskCloves += 50; // Cloves are produced.
ds_grid_set(WORLD, CHIRS, CLOV, ChirskCloves);

var ChirskNutmeg = ds_grid_get(WORLD, CHIRS, NUTM);
ChirskNutmeg = ChirskNutmeg * 0.80; // Nutmeg is consumed excessively.
ChirskNutmeg = round(ChirskNutmeg);
ds_grid_set(WORLD, CHIRS, NUTM, ChirskNutmeg);

var ChirskSesame = ds_grid_get(WORLD, CHIRS, SESA);
ChirskSesame += 0; // Sesame is normal.
ds_grid_set(WORLD, CHIRS, SESA, ChirskSesame);

var ChirskCinnamon = ds_grid_get(WORLD, CHIRS, CINN);
ChirskCinnamon += 50; // Cinnamon is produced.
ds_grid_set(WORLD, CHIRS, CINN, ChirskCinnamon);

var ChirskSaffron = ds_grid_get(WORLD, CHIRS, SAFF);
ChirskSaffron = ChirskSaffron * 0.80; // Saffron is consumed excessively.
ChirskSaffron = round(ChirskSaffron);
ds_grid_set(WORLD, CHIRS, SAFF, ChirskSaffron);

var ChirskVanilla = ds_grid_get(WORLD, CHIRS, VANI);
ChirskVanilla += 0; // Vanilla is normal.
ds_grid_set(WORLD, CHIRS, VANI, ChirskVanilla);


// ============== BARCELLUS ================


var BarcellusRose = ds_grid_get(WORLD, BARC, ROSE);
BarcellusRose = BarcellusRose * 0.80; // Rosemary is consumed excessively.
BarcellusRose = round(BarcellusRose);
ds_grid_set(WORLD, BARC, ROSE, BarcellusRose);

var BarcellusPapr = ds_grid_get(WORLD, BARC, PAPR);
BarcellusPapr += 0; // Paprika is normal. 
ds_grid_set(WORLD, BARC, PAPR, BarcellusPapr);

var BarcellusBasil = ds_grid_get(WORLD, BARC, BASI);
BarcellusBasil += 50; // Basil is produced.
ds_grid_set(WORLD, BARC, BASI, BarcellusBasil);

var BarcellusThyme = ds_grid_get(WORLD, BARC, THYM);
BarcellusThyme += 0; // Thyme is normal. 
ds_grid_set(WORLD, BARC, THYM, BarcellusThyme);

var BarcellusCumin = ds_grid_get(WORLD, BARC, CUMI);
BarcellusCumin = BarcellusCumin * 0.80; // Cumin is consumed.
BarcellusCumin = round(BarcellusCumin);
ds_grid_set(WORLD, BARC, CUMI, BarcellusCumin);

var BarcellusSugar = ds_grid_get(WORLD, BARC, CANE);
BarcellusSugar += 50; // Cane sugar is produced.
ds_grid_set(WORLD, BARC, CANE, BarcellusSugar);

var BarcellusPepper = ds_grid_get(WORLD, BARC, PEPP);
BarcellusPepper += 50; // Pepper is produced.
ds_grid_set(WORLD, BARC, PEPP, BarcellusPepper);

var BarcellusTurmeric = ds_grid_get(WORLD, BARC, TURM);
BarcellusTurmeric += 0; // Turmeric is normal.
ds_grid_set(WORLD, BARC, TURM, BarcellusTurmeric);

var BarcellusGarlic = ds_grid_get(WORLD, BARC, GARL);
BarcellusGarlic = BarcellusGarlic * 0.80; // Garlic is consumed.
BarcellusGarlic = round(BarcellusGarlic);
ds_grid_set(WORLD, BARC, GARL, BarcellusGarlic);

var BarcellusGinger = ds_grid_get(WORLD, BARC, GING);
BarcellusGinger += 50; // Ginger is produced.
ds_grid_set(WORLD, BARC, GING, BarcellusGinger);

var BarcellusSalt = ds_grid_get(WORLD, BARC, SALT);
BarcellusSalt += 0; // Salt is normal. 
ds_grid_set(WORLD, BARC, SALT, BarcellusSalt);

var BarcellusMustard = ds_grid_get(WORLD, BARC, MUST);
BarcellusMustard += 0; // Mustard is normal. 
ds_grid_set(WORLD, BARC, MUST, BarcellusMustard);

var BarcellusCloves = ds_grid_get(WORLD, BARC, CLOV);
BarcellusCloves += 0; // Cloves are normal.
ds_grid_set(WORLD, BARC, CLOV, BarcellusCloves);

var BarcellusNutmeg = ds_grid_get(WORLD, BARC, NUTM);
BarcellusNutmeg += 0; // Nutmeg is normal.
ds_grid_set(WORLD, BARC, NUTM, BarcellusNutmeg);

var BarcellusSesame = ds_grid_get(WORLD, BARC, SESA);
BarcellusSesame += 0; // Sesame is normal.
ds_grid_set(WORLD, BARC, SESA, BarcellusSesame);

var BarcellusCinnamon = ds_grid_get(WORLD, BARC, CINN);
BarcellusCinnamon = BarcellusCinnamon * 0.80; // Cinnamon is consumed.
BarcellusCinnamon = round(BarcellusCinnamon);
ds_grid_set(WORLD, BARC, CINN, BarcellusCinnamon);

var BarcellusSaffron = ds_grid_get(WORLD, BARC, SAFF);
BarcellusSaffron += 0; // Saffron is normal.
ds_grid_set(WORLD, BARC, SAFF, BarcellusSaffron);

var BarcellusVanilla = ds_grid_get(WORLD, BARC, VANI);
BarcellusVanilla += 0; // Vanilla is normal.
ds_grid_set(WORLD, BARC, VANI, BarcellusVanilla);


//=========== ZANDRETTA ========================

var ZandrettaRose = ds_grid_get(WORLD, ZAND, ROSE);
ZandrettaRose += 0; // Rosemary is normal.
ds_grid_set(WORLD, ZAND, ROSE, ZandrettaRose);

var ZandrettaPapr = ds_grid_get(WORLD, ZAND, PAPR);
ZandrettaPapr = ZandrettaPapr * 0.80; // Paprika is consumed. 
ZandrettaPapr = round(ZandrettaPapr);
ds_grid_set(WORLD, ZAND, PAPR, ZandrettaPapr);

var ZandrettaBasil = ds_grid_get(WORLD, ZAND, BASI);
ZandrettaBasil += 0; // Basil is normal.
ds_grid_set(WORLD, ZAND, BASI, ZandrettaBasil);

var ZandrettaThyme = ds_grid_get(WORLD, ZAND, THYM);
ZandrettaThyme += 0; // Thyme is normal. 
ds_grid_set(WORLD, ZAND, THYM, ZandrettaThyme);

var ZandrettaCumin = ds_grid_get(WORLD, ZAND, CUMI);
ZandrettaCumin = ZandrettaCumin * 0.80; // Cumin is consumed.
ZandrettaCumin = round(ZandrettaCumin);
ds_grid_set(WORLD, ZAND, CUMI, ZandrettaCumin);

var ZandrettaSugar = ds_grid_get(WORLD, ZAND, CANE);
ZandrettaSugar += 50; // Cane sugar is produced.
ds_grid_set(WORLD, ZAND, CANE, ZandrettaSugar);

var ZandrettaPepper = ds_grid_get(WORLD, ZAND, PEPP);
ZandrettaPepper += 0; // Pepper is normal.
ds_grid_set(WORLD, ZAND, PEPP, ZandrettaPepper);

var ZandrettaTurmeric = ds_grid_get(WORLD, ZAND, TURM);
ZandrettaTurmeric += 50; // Turmeric is produced.
ds_grid_set(WORLD, ZAND, TURM, ZandrettaTurmeric);

var ZandrettaGarlic = ds_grid_get(WORLD, ZAND, GARL);
ZandrettaGarlic += 0; // Garlic is normal.
ds_grid_set(WORLD, ZAND, GARL, ZandrettaGarlic);

var ZandrettaGinger = ds_grid_get(WORLD, ZAND, GING);
ZandrettaGinger += 0; // Ginger is normal.
ds_grid_set(WORLD, ZAND, GING, ZandrettaGinger);

var ZandrettaSalt = ds_grid_get(WORLD, ZAND, SALT);
ZandrettaSalt = ZandrettaSalt * 0.80; // Salt is consumed. 
ZandrettaSalt = round(ZandrettaSalt);
ds_grid_set(WORLD, ZAND, SALT, ZandrettaSalt);

var ZandrettaMustard = ds_grid_get(WORLD, ZAND, MUST);
ZandrettaMustard += 0; // Mustard is normal. 
ds_grid_set(WORLD, ZAND, MUST, ZandrettaMustard);

var ZandrettaCloves = ds_grid_get(WORLD, ZAND, CLOV);
ZandrettaCloves += 0; // Cloves are normal.
ds_grid_set(WORLD, ZAND, CLOV, ZandrettaCloves);

var ZandrettaNutmeg = ds_grid_get(WORLD, ZAND, NUTM);
ZandrettaNutmeg += 0; // Nutmeg is normal.
ds_grid_set(WORLD, ZAND, NUTM, ZandrettaNutmeg);

var ZandrettaSesame = ds_grid_get(WORLD, ZAND, SESA);
ZandrettaSesame = ZandrettaSesame * 0.80; // Sesame is consumed.
ZandrettaSesame = round(ZandrettaSesame);
ds_grid_set(WORLD, ZAND, SESA, ZandrettaSesame);

var ZandrettaCinnamon = ds_grid_get(WORLD, ZAND, CINN);
ZandrettaCinnamon += 50; // Cinnamon is produced.
ds_grid_set(WORLD, ZAND, CINN, ZandrettaCinnamon);

var ZandrettaSaffron = ds_grid_get(WORLD, ZAND, SAFF);
ZandrettaSaffron += 0; // Saffron is normal.
ds_grid_set(WORLD, ZAND, SAFF, ZandrettaSaffron);

var ZandrettaVanilla = ds_grid_get(WORLD, ZAND, VANI);
ZandrettaVanilla += 50; // Vanilla is produced.
ds_grid_set(WORLD, ZAND, VANI, ZandrettaVanilla);


//================ SYRR ========================


var SyrrRose = ds_grid_get(WORLD, SYRR, ROSE);
SyrrRose += 50; // Rosemary is produced.
ds_grid_set(WORLD, SYRR, ROSE, SyrrRose);

var SyrrPapr = ds_grid_get(WORLD, SYRR, PAPR);
SyrrPapr = SyrrPapr * 0.80; // Paprika is consumed. 
SyrrPapr = round(SyrrPapr);
ds_grid_set(WORLD, SYRR, PAPR, SyrrPapr);

var SyrrBasil = ds_grid_get(WORLD, SYRR, BASI);
SyrrBasil += 0; // Basil is normal.
ds_grid_set(WORLD, SYRR, BASI, SyrrBasil);

var SyrrThyme = ds_grid_get(WORLD, SYRR, THYM);
SyrrThyme = SyrrThyme * 0.80; // Thyme is consumed. 
SyrrThyme = round(SyrrThyme);
ds_grid_set(WORLD, SYRR, THYM, SyrrThyme);

var SyrrCumin = ds_grid_get(WORLD, SYRR, CUMI);
SyrrCumin += 50; // Cumin is produced.
ds_grid_set(WORLD, SYRR, CUMI, SyrrCumin);

var SyrrSugar = ds_grid_get(WORLD, SYRR, CANE);
SyrrSugar += 0; // Cane sugar is normal.
ds_grid_set(WORLD, SYRR, CANE, SyrrSugar);

var SyrrPepper = ds_grid_get(WORLD, SYRR, PEPP);
SyrrPepper += 0; // Pepper is normal.
ds_grid_set(WORLD, SYRR, PEPP, SyrrPepper);

var SyrrTurmeric = ds_grid_get(WORLD, SYRR, TURM);
SyrrTurmeric += 0; // Turmeric is normal.
ds_grid_set(WORLD, SYRR, TURM, SyrrTurmeric);

var SyrrGarlic = ds_grid_get(WORLD, SYRR, GARL);
SyrrGarlic += 0; // Garlic is normal.
ds_grid_set(WORLD, SYRR, GARL, SyrrGarlic);

var SyrrGinger = ds_grid_get(WORLD, SYRR, GING);
SyrrGinger += 0; // Ginger is normal.
ds_grid_set(WORLD, SYRR, GING, SyrrGinger);

var SyrrSalt = ds_grid_get(WORLD, SYRR, SALT);
SyrrSalt = SyrrSalt * 0.80; // Salt is consumed. 
SyrrSalt = round(SyrrSalt);
ds_grid_set(WORLD, SYRR, SALT, SyrrSalt);

var SyrrMustard = ds_grid_get(WORLD, SYRR, MUST);
SyrrMustard = SyrrMustard * 0.80; // Mustard is consumed. 
SyrrMustard = round(SyrrMustard);
ds_grid_set(WORLD, SYRR, MUST, SyrrMustard);

var SyrrCloves = ds_grid_get(WORLD, SYRR, CLOV);
SyrrCloves += 0; // Cloves are normal.
ds_grid_set(WORLD, SYRR, CLOV, SyrrCloves);

var SyrrNutmeg = ds_grid_get(WORLD, SYRR, NUTM);
SyrrNutmeg += 0; // Nutmeg is normal.
ds_grid_set(WORLD, SYRR, NUTM, SyrrNutmeg);

var SyrrSesame = ds_grid_get(WORLD, SYRR, SESA);
SyrrSesame += 50; // Sesame is produced.
ds_grid_set(WORLD, SYRR, SESA, SyrrSesame);

var SyrrCinnamon = ds_grid_get(WORLD, SYRR, CINN);
SyrrCinnamon += 0; // Cinnamon is normal.
ds_grid_set(WORLD, SYRR, CINN, SyrrCinnamon);

var SyrrSaffron = ds_grid_get(WORLD, SYRR, SAFF);
SyrrSaffron += 50; // Saffron is produced.
ds_grid_set(WORLD, SYRR, SAFF, SyrrSaffron);

var SyrrVanilla = ds_grid_get(WORLD, SYRR, VANI);
SyrrVanilla += 0; // Vanilla is normal.
ds_grid_set(WORLD, SYRR, VANI, SyrrVanilla);


//=============== KANDA =======================


var KandaRose = ds_grid_get(WORLD, KAND, ROSE);
KandaRose += 0; // Rosemary is normal.
ds_grid_set(WORLD, KAND, ROSE, KandaRose);

var KandaPapr = ds_grid_get(WORLD, KAND, PAPR);
KandaPapr += 0; // Paprika is normal. 
ds_grid_set(WORLD, KAND, PAPR, KandaPapr);

var KandaBasil = ds_grid_get(WORLD, KAND, BASI);
KandaBasil += 0; // Basil is normal.
ds_grid_set(WORLD, KAND, BASI, KandaBasil);

var KandaThyme = ds_grid_get(WORLD, KAND, THYM);
KandaThyme += 0; // Thyme is normal. 
ds_grid_set(WORLD, KAND, THYM, KandaThyme);

var KandaCumin = ds_grid_get(WORLD, KAND, CUMI);
KandaCumin += 50; // Cumin is produced.
ds_grid_set(WORLD, KAND, CUMI, KandaCumin);

var KandaSugar = ds_grid_get(WORLD, KAND, CANE);
KandaSugar = KandaSugar * 0.80; // Cane sugar is consumed.
KandaSugar = round(KandaSugar);
ds_grid_set(WORLD, KAND, CANE, KandaSugar);

var KandaPepper = ds_grid_get(WORLD, KAND, PEPP);
KandaPepper += 50; // Pepper is produced.
ds_grid_set(WORLD, KAND, PEPP, KandaPepper);

var KandaTurmeric = ds_grid_get(WORLD, KAND, TURM);
KandaTurmeric += 0; // Turmeric is normal.
ds_grid_set(WORLD, KAND, TURM, KandaTurmeric);

var KandaGarlic = ds_grid_get(WORLD, KAND, GARL);
KandaGarlic += 50; // Garlic is produced.
ds_grid_set(WORLD, KAND, GARL, KandaGarlic);

var KandaGinger = ds_grid_get(WORLD, KAND, GING);
KandaGinger = KandaGinger * 0.80; // Ginger is consumed.
KandaGinger = round(KandaGinger);
ds_grid_set(WORLD, KAND, GING, KandaGinger);

var KandaSalt = ds_grid_get(WORLD, KAND, SALT);
KandaSalt += 0; // Salt is normal. 
ds_grid_set(WORLD, KAND, SALT, KandaSalt);

var KandaMustard = ds_grid_get(WORLD, KAND, MUST);
KandaMustard = KandaMustard * 0.80; // Mustard is consumed. 
KandaMustard = round(KandaMustard);
ds_grid_set(WORLD, KAND, MUST, KandaMustard);

var KandaCloves = ds_grid_get(WORLD, KAND, CLOV);
KandaCloves += 0; // Cloves are normal.
ds_grid_set(WORLD, KAND, CLOV, KandaCloves);

var KandaNutmeg = ds_grid_get(WORLD, KAND, NUTM);
KandaNutmeg += 50; // Nutmeg is normal.
ds_grid_set(WORLD, KAND, NUTM, KandaNutmeg);

var KandaSesame = ds_grid_get(WORLD, KAND, SESA);
KandaSesame = KandaSesame * 0.80; // Sesame is consumed.
KandaSesame = round(KandaSesame);
ds_grid_set(WORLD, KAND, SESA, KandaSesame);

var KandaCinnamon = ds_grid_get(WORLD, KAND, CINN);
KandaCinnamon += 0; // Cinnamon is normal.
ds_grid_set(WORLD, KAND, CINN, KandaCinnamon);

var KandaSaffron = ds_grid_get(WORLD, KAND, SAFF);
KandaSaffron += 0; // Saffron is normal.
ds_grid_set(WORLD, KAND, SAFF, KandaSaffron);

var KandaVanilla = ds_grid_get(WORLD, KAND, VANI);
KandaVanilla += 0; // Vanilla is normal.
ds_grid_set(WORLD, KAND, VANI, KandaVanilla);