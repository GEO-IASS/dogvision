function [LS] = dog_LS(wls)
% Dog L (long wavelength) and S (short wavelength) normalized sensitivities
% [LS] = dog_LS(wls) interpolates the existing L and S -sensitivities to
% the given wavelengths.

% L and S values estimated from graph in
%
% "Colour cues proved to be more informative for dogs than brightness"
% Anna A. Kasparson, Jason Badridze, Vadim V. Maximov
% Proc. R. Soc. B 2013 280 20131356; DOI: 10.1098/rspb.2013.1356. Published 17 July 2013
% 
% using WebPlotDigitizer (http://arohatgi.info/WebPlotDigitizer/)
 
L = ...
  [383.209803681107 0.24388113133818906;
   389.71586902535489 0.23227444025650074;
   396.22193436960276 0.21708326420463081;
   402.72799971385064 0.20302403077492343;
   409.23406505809857 0.18896479734521607;
   415.74013040234644 0.17566019233028371;
   422.24619574659431 0.16594007228553323;
   428.75226109084224 0.16018175141835145;
   435.25832643509011 0.15970582945459555;
   441.764391779338 0.16602156322381503;
   448.27045712358586 0.17950626693339772;
   454.77652246783373 0.20091456899811874;
   461.28258781208166 0.23062378362536551;
   467.78865315632953 0.26919988212621931;
   473.111797528896 0.30625035118891847;
   476.92307692307691 0.33358585341550478;
   480.80078384482533 0.36999710279087905;
   485.82819797447144 0.41693225522004213;
   490.2641516182768 0.46242632572399062;
   494.40437501916182 0.50576695964441953;
   498.54459842004684 0.55147928286842729;
   502.68482182093186 0.59719160609243516;
   506.82504522181688 0.64379331280528507;
   510.9652686227019 0.68980209719224006;
   515.105492023587 0.73492149809035312;
   519.54144566739228 0.78263902731640689;
   524.273129554118 0.82991595795019035;
   529.30054368376409 0.87564056063065188;
   534.919418299251 0.91909059866072074;
   541.12975340057847 0.959002069445649;
   547.63581874482634 0.98701337013965185;
   554.14188408907421 0.99823418860490953;
   560.64794943332208 0.99115526801187148;
   567.15401477757 0.96407869442729421;
   573.06861963597714 0.92328485167000085;
   577.800303522703 0.87957291037586061;
   581.94052692358787 0.83456811773797968;
   585.7850200815526 0.78891689942822829;
   589.33378299659694 0.73985228459243124;
   592.58681566872087 0.6955566013279354;
   595.83984834084481 0.64828642439520112;
   599.09288101296875 0.601431293090593;
   602.05018344217228 0.55872252491509689;
   605.30321611429622 0.5114523479823625;
   608.85197902934055 0.46169599043302156;
   612.40074194438489 0.41228550424045268;
   615.94950485942923 0.36667960297237473;
   619.49826777447345 0.32314892984492816;
   623.34276093243807 0.2789800173499134;
   627.77871457624349 0.23316404966607834;
   632.80612870588959 0.18763625938488473;
   638.72073356429678 0.14233560803935136;
   645.22679890854465 0.10261900850729178;
   649.36702230942967 0.080414774401543238];

S = ...
  [381.43542222358485 0.5341459529803636;
   385.27991538154953 0.58069415634723787;
   388.82867829659381 0.623631322412768;
   392.37744121163814 0.67002720204601729;
   395.92620412668242 0.71607721032249483;
   399.4749670417267 0.76212721859897214;
   403.31946019969138 0.81164003359531989;
   407.4596836005764 0.86061342961174858;
   411.89563724438176 0.90747863299432852;
   417.51451185986861 0.95483858949845068;
   424.02057720411648 0.98907557461434792;
   430.52664254836435 0.99671190810942389;
   437.03270789261228 0.97303116239133436;
   442.35585226517873 0.9292824890434741;
   446.20034542314335 0.8834830401522491;
   449.45337809526734 0.83676625739034993;
   452.41068052447088 0.78866189604921177;
   455.07225271075413 0.74127977140514367;
   457.438094654117 0.69669511159877673;
   459.80393659747983 0.65159164475725206;
   462.16977854084269 0.603894142739938;
   464.53562048420559 0.55723425479293975;
   466.9014624275685 0.51005555981078365;
   469.26730437093136 0.4623580577934695;
   471.63314631429421 0.41777339798710272;
   474.29471850057746 0.36810852238834;
   477.252020929781 0.3195891154190757;
   480.20932335898459 0.26816438905292728;
   483.16662578818818 0.22545562087743107;
   486.71538870323252 0.17807095263166914;
   491.15134234703783 0.13010564151646561;
   496.77021696252467 0.083396449691283153;
   503.2762823067726 0.047264335129405026;
   509.78234765102047 0.026036131759334467;
   516.28841299526835 0.014806754885033656;
   521.31582712491445 0.01223513901989037];

% Interpolate L and S to given wavelengths
LS = zeros(length(wls), 2);
LS(:,1) = interp1(L(:,1), L(:,2), wls, 'linear', 0);
LS(:,2) = interp1(S(:,1), S(:,2), wls, 'linear', 0);

end