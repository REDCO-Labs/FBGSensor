tr = importdata('T201.txt');
wave = tr.data(:,1)*10^-9;
rdb201 = tr.data(:,3); 

tr = importdata('T220.txt');
%wave220 = tr.data(:,1)*10^-9;
rdb220 = tr.data(:,3); 

tr = importdata('T247.txt');
%wave247 = tr.data(:,1)*10^-9;
rdb247 = tr.data(:,3); 

tr = importdata('T254.txt');
%wave254 = tr.data(:,1)*10^-9;
rdb254 = tr.data(:,3); 

tr = importdata('T270.txt');
%wave270 = tr.data(:,1)*10^-9;
rdb270 = tr.data(:,3); 

tr = importdata('T274.txt');
%wave274 = tr.data(:,1)*10^-9;
rdb274 = tr.data(:,3); 

tr = importdata('T301.txt');
%wave301 = tr.data(:,1)*10^-9;
rdb301 = tr.data(:,3); 

tr = importdata('T325.txt');
%wave301 = tr.data(:,1)*10^-9;
rdb325 = tr.data(:,3); 

tr = importdata('T330.txt');
%wave330 = tr.data(:,1)*10^-9;
rdb330 = tr.data(:,3); 

tr = importdata('T356.txt');
%wave356 = tr.data(:,1)*10^-9;
rdb356 = tr.data(:,3); 

tr = importdata('T375.txt');
%wave375 = tr.data(:,1)*10^-9;
rdb375 = tr.data(:,3); 

tr = importdata('T397.txt');
%wave397 = tr.data(:,1)*10^-9;
rdb397 = tr.data(:,3); 

tr = importdata('T403.txt');
%wave403 = tr.data(:,1)*10^-9;
rdb403 = tr.data(:,3); 

tr = importdata('T406.txt');
%wave406 = tr.data(:,1)*10^-9;
rdb406 = tr.data(:,3); 

tr = importdata('T415.txt');
%wave415 = tr.data(:,1)*10^-9;
rdb415 = tr.data(:,3); 

tr = importdata('T426.txt');
%wave426 = tr.data(:,1)*10^-9;
rdb426 = tr.data(:,3); 

tr = importdata('T432.txt');
%wave432 = tr.data(:,1)*10^-9;
rdb432 = tr.data(:,3); 

tr = importdata('T437.txt');
%wave437 = tr.data(:,1)*10^-9;
rdb437 = tr.data(:,3); 

tr = importdata('T468.txt');
%wave468 = tr.data(:,1)*10^-9;
rdb468 = tr.data(:,3); 

tr = importdata('T483.txt');
%wave483 = tr.data(:,1)*10^-9;
rdb483 = tr.data(:,3); 

tr = importdata('T485.txt');
%wave485 = tr.data(:,1)*10^-9;
rdb485 = tr.data(:,3); 

tr = importdata('T488.txt');
%wave488 = tr.data(:,1)*10^-9;
rdb488 = tr.data(:,3); 

tr = importdata('T499.txt');
%wave499 = tr.data(:,1)*10^-9;
rdb499 = tr.data(:,3); 

tr = importdata('T533.txt');
%wave533 = tr.data(:,1)*10^-9;
rdb533 = tr.data(:,3); 

tr = importdata('T548.txt');
%wave548 = tr.data(:,1)*10^-9;
rdb548 = tr.data(:,3); 

tr = importdata('T565.txt');
%wave565 = tr.data(:,1)*10^-9;
rdb565 = tr.data(:,3); 

[rdb201] = Normalisation(rdb201);
[rdb220] = Normalisation(rdb220);
[rdb247] = Normalisation(rdb247);
[rdb254] = Normalisation(rdb254);
[rdb270] = Normalisation(rdb270);
[rdb274] = Normalisation(rdb274);
[rdb301] = Normalisation(rdb301);
[rdb325] = Normalisation(rdb325);
[rdb330] = Normalisation(rdb330);
[rdb356] = Normalisation(rdb356);
[rdb375] = Normalisation(rdb375);
[rdb397] = Normalisation(rdb397);
[rdb403] = Normalisation(rdb403);
[rdb406] = Normalisation(rdb406);
[rdb415] = Normalisation(rdb415);
[rdb426] = Normalisation(rdb426);
[rdb432] = Normalisation(rdb432);
[rdb437] = Normalisation(rdb437);
[rdb468] = Normalisation(rdb468);
[rdb483] = Normalisation(rdb483);
[rdb485] = Normalisation(rdb485);
[rdb488] = Normalisation(rdb488);
[rdb499] = Normalisation(rdb499);
[rdb533] = Normalisation(rdb533);
[rdb548] = Normalisation(rdb548);
[rdb565] = Normalisation(rdb565);

[tdb201] = RtoT(rdb201);
[tdb220] = RtoT(rdb220);
[tdb247] = RtoT(rdb247);
[tdb254] = RtoT(rdb254);
[tdb270] = RtoT(rdb270);
[tdb274] = RtoT(rdb274);
[tdb301] = RtoT(rdb301);
[tdb325] = RtoT(rdb325);
[tdb330] = RtoT(rdb330);
[tdb356] = RtoT(rdb356);
[tdb375] = RtoT(rdb375);
[tdb397] = RtoT(rdb397);
[tdb403] = RtoT(rdb403);
[tdb406] = RtoT(rdb406);
[tdb415] = RtoT(rdb415);
[tdb426] = RtoT(rdb426);
[tdb432] = RtoT(rdb432);
[tdb437] = RtoT(rdb437);
[tdb468] = RtoT(rdb468);
[tdb483] = RtoT(rdb483);
[tdb485] = RtoT(rdb485);
[tdb488] = RtoT(rdb488);
[tdb499] = RtoT(rdb499);
[tdb533] = RtoT(rdb533);
[tdb548] = RtoT(rdb548);
[tdb565] = RtoT(rdb565);

