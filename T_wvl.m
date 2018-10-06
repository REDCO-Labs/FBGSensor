
figure();
plot(wave, tdb201, wave, tdb220, wave, tdb247, wave, tdb254, ...
    wave, tdb270, wave, tdb274, wave, tdb301, wave, tdb325,...
    wave, tdb330, wave, tdb356, wave, tdb375, wave, tdb397,...
    wave, tdb403, wave, tdb406, wave, tdb415, wave, tdb426,...
    wave, tdb432, wave, tdb437, wave, tdb468, wave, tdb483, ...
    wave, tdb485, wave, tdb488, wave, tdb499, wave, tdb533, ...
    wave, tdb548, wave, tdb565);
ylbl1 = ylabel('Transmission [dB]');
xlbl1 = xlabel('Longueur d''onde  [um]');
%title1= title('Spectrum of TMF2-LPG-40-450')
xlbl1.FontSize = 14;
ylbl1.FontSize = 14;
xlim([1.57974e-6 1.6018e-6])
% 
% figure();
% plot(wave, rdb201, wave, rdb220, wave, rdb247, wave, rdb254, ...
%     wave, rdb270, wave, rdb274, wave, rdb301, wave, rdb325,...
%     wave, rdb330, wave, rdb356, wave, rdb375, wave, rdb397,...
%     wave, rdb403, wave, rdb406, wave, rdb415, wave, rdb426,...
%     wave, rdb432, wave, rdb437, wave, rdb468, wave, rdb483, ...
%     wave, rdb485, wave, rdb488, wave, rdb499, wave, rdb533, ...
%     wave, rdb548, wave, rdb565);
% ylbl1 = ylabel('Transmission [dB]');
% xlbl1 = xlabel('Longueur d''onde  [um]');
% %title1= title('Spectrum of TMF2-LPG-40-450')
% xlbl1.FontSize = 14;
% ylbl1.FontSize = 14;
% %xlim([1.57974e-6 1.6018e-6])


tdb = [tdb201 tdb220 tdb247 tdb254 tdb270 tdb274 tdb301 tdb325...
    tdb330 tdb356 tdb375 tdb397 tdb403 tdb406 tdb415 tdb426 tdb432...
    tdb437 tdb468 tdb483 tdb485 tdb488 tdb499 tdb533 tdb548 tdb565];
borne_inferieure_spectre = 30000;
borne_superieure_spectre = 65000;
tdb = tdb(borne_inferieure_spectre:borne_superieure_spectre,:);
%%

longueur = size(tdb);
treshold = -10;
T = [201 220 247 254 270 274 301 325 330 356 375 397 403 406 415 426 ...
    432 437 468 483 485 488 499 533 548 565];
for i=1:longueur(2)
%tdbmoy(i) = mean(tdb(:,i));
spectre =smooth(tdb(:,i));
    for j = 1:longueur(1)
        if spectre(j) > treshold
            spectre(j) = 0;
        end
    end
tdb(:,i) = spectre;    
end

bornes = []; 
for i=1:longueur(2)
    spectre = tdb(:,i);
    a = 1; 
    bornes_temporaires = [];
    for j = 1:length(spectre)
        if 0 ~= spectre(j)
            if a == 0
                continue
            else
                a = 0;
                bornes_temporaires = [bornes_temporaires j];
            
            end
            
        elseif a == 0
            a = 1;
            bornes_temporaires = [bornes_temporaires j];
        end
    end
    bornes = [bornes ; bornes_temporaires];  
end

longueur_bornes = size(bornes);
Bragg_wvls = [];
for i=1:longueur_bornes(1)
    Bragg_wvls_temporaire = [];
    for j = 1:(longueur_bornes(2)/2-1)
      Bragg_wvls_temporaire = [Bragg_wvls_temporaire ...
          wave(borne_inferieure_spectre + bornes(i,(2*j)) + round(bornes(i,(2*j+1))/2- bornes(i,(2*j))/2))];
    end  
    Bragg_wvls = [Bragg_wvls ; Bragg_wvls_temporaire];
end
Bragg_wvls = 10^6 * Bragg_wvls; Bragg_wvls;
% taille_Bragg_wvls = size(Bragg_wvls);
% for i = 1 : taille_Bragg_wvls(1)
% DeltaBragg = Bragg_wvls(:,i) - Bragg_wvls(1,i);
% end
% MeanBragg = [];
% 
% for i = 1 : taille_Bragg_wvls(1)
%     MeanBragg = [ MeanBragg ; mean(DeltaBragg(i,:))];
% end


Delta_Wvl = Bragg_wvls-Bragg_wvls(1,:)
Temperature = [201 220 247 254 270 274 301 325 330 356 375 397 403 406 415 426 432 437 468 483 485 488 499 533 548 565];
Temperature  = Temperature/10; 
ylim = [0 0.5];
figure()
hold on
for i = 1:50
plot(Temperature, Delta_Wvl(:,i))
end
hold off

