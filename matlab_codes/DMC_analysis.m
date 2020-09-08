% DMC_analysis.m
%
% Analyses DMC data
%

clear all;

disp(' ')
disp('DMC_analysis.m')
disp(' ')
%commented as instructed in the instruction page

%dir = '/Users/aatewologun/Documents/Duke_Grad_Student/Fall_2012/Research/Monte_Carlo_Modeling/Analyses/June_2014_MC_tests/MAPLE_1to1_OOP_IP/improved';

nf = 15;     % Number of simulations done for device at different wavelengths  (files)

%file1(1,:) = 'p3ht_outputa_100000over.csv';
file1(1,:) = 'output1.csv';
file2(2,:) = 'p3ht_outputb_100000over.csv';
file3(3,:) = 'p3ht_outputc_100000over.csv';
file4(4,:) = 'p3ht_outputd_100000over.csv';
file5(5,:) = 'p3ht_outpute_100000over.csv';
file6(6,:) = 'p3ht_outputf_100000over.csv';
file7(7,:) = 'p3ht_outputg_100000over.csv';
file8(8,:) = 'p3ht_outputh_100000over.csv';
file9(9,:) = 'p3ht_outputi_100000over.csv';
file10(10,:) = 'p3ht_outputj_100000over.csv';
file11(11,:) = 'p3ht_outputk_100000over.csv';
file12(12,:) = 'p3ht_outputl_100000over.csv';
file13(13,:) = 'p3ht_outputm_100000over.csv';
file14(14,:) = 'p3ht_outputn_100000over.csv';
file15(15,:) = 'p3ht_outputo_100000over.csv';

% Read in the DMC data files.
DMCa_data = csvread(file1(1,:),2,0);
DMCb_data = csvread(file2(2,:),2,0);
DMCc_data = csvread(file3(3,:),2,0);
DMCd_data = csvread(file4(4,:),2,0);
DMCe_data = csvread(file5(5,:),2,0);
DMCf_data = csvread(file6(6,:),2,0);
DMCg_data = csvread(file7(7,:),2,0);
DMCh_data = csvread(file8(8,:),2,0);
DMCi_data = csvread(file9(9,:),2,0);
DMCj_data = csvread(file10(10,:),2,0);
DMCk_data = csvread(file11(11,:),2,0);
DMCl_data = csvread(file12(12,:),2,0);
DMCm_data = csvread(file13(13,:),2,0);
DMCn_data = csvread(file14(14,:),2,0);
DMCo_data = csvread(file15(15,:),2,0);

% Linear Fit for excitons created, excitons dissociated, electrons collected and holes collected
exc_cre_a = polyfit (DMCa_data(:,1),DMCa_data(:,7),1);
exc_dis_a = polyfit (DMCa_data(:,1),DMCa_data(:,8),1);
hol_col_a = polyfit (DMCa_data(:,1),DMCa_data(:,5),1);
elec_col_a = polyfit (DMCa_data(:,1),DMCa_data(:,6),1);
carr_rec_a = polyfit (DMCa_data(:,1),DMCa_data(:,4),1);

exc_cre_b = polyfit (DMCb_data(:,1),DMCb_data(:,7),1);
exc_dis_b = polyfit (DMCb_data(:,1),DMCb_data(:,8),1);
hol_col_b = polyfit (DMCb_data(:,1),DMCb_data(:,5),1);
elec_col_b = polyfit (DMCb_data(:,1),DMCb_data(:,6),1);
carr_rec_b = polyfit (DMCb_data(:,1),DMCb_data(:,4),1);

exc_cre_c = polyfit (DMCc_data(:,1),DMCc_data(:,7),1);
exc_dis_c = polyfit (DMCc_data(:,1),DMCc_data(:,8),1);
hol_col_c = polyfit (DMCc_data(:,1),DMCc_data(:,5),1);
elec_col_c = polyfit (DMCc_data(:,1),DMCc_data(:,6),1);
carr_rec_c = polyfit (DMCc_data(:,1),DMCc_data(:,4),1);

exc_cre_d = polyfit (DMCd_data(:,1),DMCd_data(:,7),1);
exc_dis_d = polyfit (DMCd_data(:,1),DMCd_data(:,8),1);
hol_col_d = polyfit (DMCd_data(:,1),DMCd_data(:,5),1);
elec_col_d = polyfit (DMCd_data(:,1),DMCd_data(:,6),1);
carr_rec_d = polyfit (DMCd_data(:,1),DMCd_data(:,4),1);

exc_cre_e = polyfit (DMCe_data(:,1),DMCe_data(:,7),1);
exc_dis_e = polyfit (DMCe_data(:,1),DMCe_data(:,8),1);
hol_col_e = polyfit (DMCe_data(:,1),DMCe_data(:,5),1);
elec_col_e = polyfit (DMCe_data(:,1),DMCe_data(:,6),1);
carr_rec_e = polyfit (DMCe_data(:,1),DMCe_data(:,4),1);

exc_cre_f = polyfit (DMCf_data(:,1),DMCf_data(:,7),1);
exc_dis_f = polyfit (DMCf_data(:,1),DMCf_data(:,8),1);
hol_col_f = polyfit (DMCf_data(:,1),DMCf_data(:,5),1);
elec_col_f = polyfit (DMCf_data(:,1),DMCf_data(:,6),1);
carr_rec_f = polyfit (DMCf_data(:,1),DMCf_data(:,4),1);

exc_cre_g = polyfit (DMCg_data(:,1),DMCg_data(:,7),1);
exc_dis_g = polyfit (DMCg_data(:,1),DMCg_data(:,8),1);
hol_col_g = polyfit (DMCg_data(:,1),DMCg_data(:,5),1);
elec_col_g = polyfit (DMCg_data(:,1),DMCg_data(:,6),1);
carr_rec_g = polyfit (DMCg_data(:,1),DMCg_data(:,4),1);

exc_cre_h = polyfit (DMCh_data(:,1),DMCh_data(:,7),1);
exc_dis_h = polyfit (DMCh_data(:,1),DMCh_data(:,8),1);
hol_col_h = polyfit (DMCh_data(:,1),DMCh_data(:,5),1);
elec_col_h = polyfit (DMCh_data(:,1),DMCh_data(:,6),1);
carr_rec_h = polyfit (DMCh_data(:,1),DMCh_data(:,4),1);

exc_cre_i = polyfit (DMCi_data(:,1),DMCi_data(:,7),1);
exc_dis_i = polyfit (DMCi_data(:,1),DMCi_data(:,8),1);
hol_col_i = polyfit (DMCi_data(:,1),DMCi_data(:,5),1);
elec_col_i = polyfit (DMCi_data(:,1),DMCi_data(:,6),1);
carr_rec_i = polyfit (DMCi_data(:,1),DMCi_data(:,4),1);

exc_cre_j = polyfit (DMCj_data(:,1),DMCj_data(:,7),1);
exc_dis_j = polyfit (DMCj_data(:,1),DMCj_data(:,8),1);
hol_col_j = polyfit (DMCj_data(:,1),DMCj_data(:,5),1);
elec_col_j = polyfit (DMCj_data(:,1),DMCj_data(:,6),1);
carr_rec_j = polyfit (DMCj_data(:,1),DMCj_data(:,4),1);

exc_cre_k = polyfit (DMCk_data(:,1),DMCk_data(:,7),1);
exc_dis_k = polyfit (DMCk_data(:,1),DMCk_data(:,8),1);
hol_col_k = polyfit (DMCk_data(:,1),DMCk_data(:,5),1);
elec_col_k = polyfit (DMCk_data(:,1),DMCk_data(:,6),1);
carr_rec_k = polyfit (DMCk_data(:,1),DMCk_data(:,4),1);

exc_cre_l = polyfit (DMCl_data(:,1),DMCl_data(:,7),1);
exc_dis_l = polyfit (DMCl_data(:,1),DMCl_data(:,8),1);
hol_col_l = polyfit (DMCl_data(:,1),DMCl_data(:,5),1);
elec_col_l = polyfit (DMCl_data(:,1),DMCl_data(:,6),1);
carr_rec_l = polyfit (DMCl_data(:,1),DMCl_data(:,4),1);

exc_cre_m = polyfit (DMCm_data(:,1),DMCm_data(:,7),1);
exc_dis_m = polyfit (DMCm_data(:,1),DMCm_data(:,8),1);
hol_col_m = polyfit (DMCm_data(:,1),DMCm_data(:,5),1);
elec_col_m = polyfit (DMCm_data(:,1),DMCm_data(:,6),1);
carr_rec_m = polyfit (DMCm_data(:,1),DMCm_data(:,4),1);

exc_cre_n = polyfit (DMCn_data(:,1),DMCn_data(:,7),1);
exc_dis_n = polyfit (DMCn_data(:,1),DMCn_data(:,8),1);
hol_col_n = polyfit (DMCn_data(:,1),DMCn_data(:,5),1);
elec_col_n = polyfit (DMCn_data(:,1),DMCn_data(:,6),1);
carr_rec_n = polyfit (DMCn_data(:,1),DMCn_data(:,4),1);

exc_cre_o = polyfit (DMCo_data(:,1),DMCo_data(:,7),1);
exc_dis_o = polyfit (DMCo_data(:,1),DMCo_data(:,8),1);
hol_col_o = polyfit (DMCo_data(:,1),DMCo_data(:,5),1);
elec_col_o = polyfit (DMCo_data(:,1),DMCo_data(:,6),1);
carr_rec_o = polyfit (DMCo_data(:,1),DMCo_data(:,4),1);

%Efficiencies
exc_diss_eff_a = (max(DMCa_data(:,8)) / max(DMCa_data(:,7)));
carr_coll_eff_a = ((elec_col_a(1) + hol_col_a(1))/(2*exc_cre_a(1)));
carr_diss_eff_a = ((elec_col_a(1) + hol_col_a(1))/(2*exc_dis_a(1)));
car_rec_eff_a = (carr_rec_a(1) / (2*exc_cre_a(1)));
car_rec2_eff_a = (carr_rec_a(1) / (2*exc_dis_a(1)));

exc_diss_eff_b = (max(DMCb_data(:,8)) / max(DMCb_data(:,7)));
carr_coll_eff_b = ((elec_col_b(1) + hol_col_b(1))/(2*exc_cre_b(1)));
carr_diss_eff_b = ((elec_col_b(1) + hol_col_b(1))/(2*exc_dis_b(1)));
car_rec_eff_b = (carr_rec_b(1) / (2*exc_cre_b(1)));
car_rec2_eff_b = (carr_rec_b(1) / (2*exc_dis_b(1)));

exc_diss_eff_c = (max(DMCc_data(:,8)) / max(DMCc_data(:,7)));
carr_coll_eff_c = ((elec_col_c(1) + hol_col_c(1))/(2*exc_cre_c(1)));
carr_diss_eff_c = ((elec_col_c(1) + hol_col_c(1))/(2*exc_dis_c(1)));
car_rec_eff_c = (carr_rec_c(1) / (2*exc_cre_c(1)));
car_rec2_eff_c = (carr_rec_c(1) / (2*exc_dis_c(1)));

exc_diss_eff_d = (max(DMCd_data(:,8)) / max(DMCd_data(:,7)));
carr_coll_eff_d = ((elec_col_d(1) + hol_col_d(1))/(2*exc_cre_d(1)));
carr_diss_eff_d = ((elec_col_d(1) + hol_col_d(1))/(2*exc_dis_d(1)));
car_rec_eff_d = (carr_rec_d(1) / (2*exc_cre_d(1)));
car_rec2_eff_d = (carr_rec_d(1) / (2*exc_dis_d(1)));

exc_diss_eff_e = (max(DMCe_data(:,8)) / max(DMCe_data(:,7)));
carr_coll_eff_e = ((elec_col_e(1) + hol_col_e(1))/(2*exc_cre_e(1)));
carr_diss_eff_e = ((elec_col_e(1) + hol_col_e(1))/(2*exc_dis_e(1)));
car_rec_eff_e = (carr_rec_e(1) / (2*exc_cre_e(1)));
car_rec2_eff_e = (carr_rec_e(1) / (2*exc_dis_e(1)));

exc_diss_eff_f = (max(DMCf_data(:,8)) / max(DMCf_data(:,7)));
carr_coll_eff_f = ((elec_col_f(1) + hol_col_f(1))/(2*exc_cre_f(1)));
carr_diss_eff_f = ((elec_col_f(1) + hol_col_f(1))/(2*exc_dis_f(1)));
car_rec_eff_f = (carr_rec_f(1) / (2*exc_cre_f(1)));
car_rec2_eff_f = (carr_rec_f(1) / (2*exc_dis_f(1)));

exc_diss_eff_g = (max(DMCg_data(:,8)) / max(DMCg_data(:,7)));
carr_coll_eff_g = ((elec_col_g(1) + hol_col_g(1))/(2*exc_cre_g(1)));
carr_diss_eff_g = ((elec_col_g(1) + hol_col_g(1))/(2*exc_dis_g(1)));
car_rec_eff_g = (carr_rec_g(1) / (2*exc_cre_g(1)));
car_rec2_eff_g = (carr_rec_g(1) / (2*exc_dis_g(1)));

exc_diss_eff_h = (max(DMCh_data(:,8)) / max(DMCh_data(:,7)));
carr_coll_eff_h = ((elec_col_h(1) + hol_col_h(1))/(2*exc_cre_h(1)));
carr_diss_eff_h = ((elec_col_h(1) + hol_col_h(1))/(2*exc_dis_h(1)));
car_rec_eff_h = (carr_rec_h(1) / (2*exc_cre_h(1)));
car_rec2_eff_h = (carr_rec_h(1) / (2*exc_dis_h(1)));

exc_diss_eff_i = (max(DMCi_data(:,8)) / max(DMCi_data(:,7)));
carr_coll_eff_i = ((elec_col_i(1) + hol_col_i(1))/(2*exc_cre_i(1)));
carr_diss_eff_i = ((elec_col_i(1) + hol_col_i(1))/(2*exc_dis_i(1)));
car_rec_eff_i = (carr_rec_i(1) / (2*exc_cre_i(1)));
car_rec2_eff_i = (carr_rec_i(1) / (2*exc_dis_i(1)));

exc_diss_eff_j = (max(DMCj_data(:,8)) / max(DMCj_data(:,7)));
carr_coll_eff_j = ((elec_col_j(1) + hol_col_j(1))/(2*exc_cre_j(1)));
carr_diss_eff_j = ((elec_col_j(1) + hol_col_j(1))/(2*exc_dis_j(1)));
car_rec_eff_j = (carr_rec_j(1) / (2*exc_cre_j(1)));
car_rec2_eff_j = (carr_rec_j(1) / (2*exc_dis_j(1)));

exc_diss_eff_k = (max(DMCk_data(:,8)) / max(DMCk_data(:,7)));
carr_coll_eff_k = ((elec_col_k(1) + hol_col_k(1))/(2*exc_cre_k(1)));
carr_diss_eff_k = ((elec_col_k(1) + hol_col_k(1))/(2*exc_dis_k(1)));
car_rec_eff_k = (carr_rec_k(1) / (2*exc_cre_k(1)));
car_rec2_eff_k = (carr_rec_k(1) / (2*exc_dis_k(1)));

exc_diss_eff_l = (max(DMCl_data(:,8)) / max(DMCl_data(:,7)));
carr_coll_eff_l = ((elec_col_l(1) + hol_col_l(1))/(2*exc_cre_l(1)));
carr_diss_eff_l = ((elec_col_l(1) + hol_col_l(1))/(2*exc_dis_l(1)));
car_rec_eff_l = (carr_rec_l(1) / (2*exc_cre_l(1)));
car_rec2_eff_l = (carr_rec_l(1) / (2*exc_dis_l(1)));

exc_diss_eff_m = (max(DMCm_data(:,8)) / max(DMCm_data(:,7)));
carr_coll_eff_m = ((elec_col_m(1) + hol_col_m(1))/(2*exc_cre_m(1)));
carr_diss_eff_m = ((elec_col_m(1) + hol_col_m(1))/(2*exc_dis_m(1)));
car_rec_eff_m = (carr_rec_m(1) / (2*exc_cre_m(1)));
car_rec2_eff_m = (carr_rec_m(1) / (2*exc_dis_m(1)));

exc_diss_eff_n = (max(DMCn_data(:,8)) / max(DMCn_data(:,7)));
carr_coll_eff_n = ((elec_col_n(1) + hol_col_n(1))/(2*exc_cre_n(1)));
carr_diss_eff_n = ((elec_col_n(1) + hol_col_n(1))/(2*exc_dis_n(1)));
car_rec_eff_n = (carr_rec_n(1) / (2*exc_cre_n(1)));
car_rec2_eff_n = (carr_rec_n(1) / (2*exc_dis_n(1)));

exc_diss_eff_o = (max(DMCo_data(:,8)) / max(DMCo_data(:,7)));
carr_coll_eff_o = ((elec_col_o(1) + hol_col_o(1))/(2*exc_cre_o(1)));
carr_diss_eff_o = ((elec_col_o(1) + hol_col_o(1))/(2*exc_dis_o(1)));
car_rec_eff_o = (carr_rec_o(1) / (2*exc_cre_o(1)));
car_rec2_eff_o = (carr_rec_o(1) / (2*exc_dis_o(1)));

%Plot efficiencies versus wavelength
lambda = linspace(300,650,15);

ncc = [carr_coll_eff_a,carr_coll_eff_b,carr_coll_eff_c,carr_coll_eff_d,carr_coll_eff_e,...
    carr_coll_eff_f,carr_coll_eff_g,carr_coll_eff_h,carr_coll_eff_i,carr_coll_eff_j,...
    carr_coll_eff_k,carr_coll_eff_l,carr_coll_eff_m,carr_coll_eff_n,carr_coll_eff_o];

ncd = [carr_diss_eff_a,carr_diss_eff_b,carr_diss_eff_c,carr_diss_eff_d,carr_diss_eff_e,...
    carr_diss_eff_f,carr_diss_eff_g,carr_diss_eff_h,carr_diss_eff_i,carr_diss_eff_j,...
    carr_diss_eff_k,carr_diss_eff_l,carr_diss_eff_m,carr_diss_eff_n,carr_diss_eff_o];

nex = [exc_diss_eff_a,exc_diss_eff_b,exc_diss_eff_c,exc_diss_eff_d,exc_diss_eff_e,...
    exc_diss_eff_f,exc_diss_eff_g,exc_diss_eff_h,exc_diss_eff_i,exc_diss_eff_j,...
    exc_diss_eff_k,exc_diss_eff_l,exc_diss_eff_m,exc_diss_eff_n,exc_diss_eff_o];

fs = 16; lw = 2;
figure(1)
[AX,H1,H2] = plotyy(lambda,ncc,lambda,ncd);
set(gca,'FontSize',fs)
title('DMC Simulation Results')
xlabel('Wavelength (nm)','FontSize',fs)
set(get(AX(1),'Ylabel'),'String','Carrier Collection Efficiency','FontSize',fs) 
set(get(AX(2),'Ylabel'),'String','Carrier Disociation Efficiency','FontSize',fs)
set(AX(1),'xlim',[300 650],'ylim',[0 0.15],'Fontsize',fs)
set(AX(2),'xlim',[300 650],'ylim',[0 0.15],'Fontsize',fs,'linestyle',':')
set(AX(1),'Fontsize',16)
set(AX(2),'Fontsize',16)
set(H1,'LineWidth',lw)
set(H2,'LineWidth',lw)
l1 = legend([H1;H2],'MAPLE P3HT:PC61BM (1:1)','MAPLE P3HT:PC61BM (1:1)');
set(l1,'Fontsize',12);
set(gca,'Position',[.13 .13 .78 .78])

figure (31)
plot(lambda,nex,'b.-','LineWidth',2,'MarkerSize',20); 
set(gca,'FontSize',16)
xlabel('Wavelength (nm)')
ylabel('Exciton Dissociation Efficiency')
lll = legend('MAPLE P3HT:PC61BM (1:1)');
set(lll,'FontSize',12)
 

%Calculate steady state parameter
rhoa = zeros (size(DMCa_data(:,3),2));
counta = 1;
for j = 2:size(DMCa_data(:,3))
    
    if ( DMCa_data(j,3) > DMCa_data(j-1,3))
        rhoa (counta,1) = DMCa_data(j,2);
        rhoa (counta,2) = DMCa_data(j,3);
        counta = counta + 1;
    end
     
end
rhomeana = mean(rhoa(:,1));
rhostda = std(rhoa(:,1));
steadya = (rhostda / rhomeana);

rhob = zeros (size(DMCb_data(:,3),2));
countb = 1;
for j = 2:size(DMCb_data(:,3))
    
    if ( DMCb_data(j,3) > DMCb_data(j-1,3))
        rhob (countb,1) = DMCb_data(j,2);
        rhob (countb,2) = DMCb_data(j,3);
        countb = countb + 1;
    end
     
end
rhomeanb = mean(rhob(:,1));
rhostdb = std(rhob(:,1));
steadyb = (rhostdb / rhomeanb);

rhoc = zeros (size(DMCc_data(:,3),2));
countc = 1;
for j = 2:size(DMCc_data(:,3))
    
    if ( DMCc_data(j,3) > DMCc_data(j-1,3))
        rhoc (countc,1) = DMCc_data(j,2);
        rhoc (countc,2) = DMCc_data(j,3);
        countc = countc + 1;
    end
     
end
rhomeanc = mean(rhoc(:,1));
rhostdc = std(rhoc(:,1));
steadyc = (rhostdc / rhomeanc);

rhod = zeros (size(DMCd_data(:,3),2));
countd = 1;
for j = 2:size(DMCd_data(:,3))
    
    if ( DMCd_data(j,3) > DMCd_data(j-1,3))
        rhod (countd,1) = DMCd_data(j,2);
        rhod (countd,2) = DMCd_data(j,3);
        countd = countd + 1;
    end
     
end
rhomeand = mean(rhod(:,1));
rhostdd = std(rhod(:,1));
steadyd = (rhostdd / rhomeand);

rhoe = zeros (size(DMCe_data(:,3),2));
counte = 1;
for j = 2:size(DMCe_data(:,3))
    
    if ( DMCe_data(j,3) > DMCe_data(j-1,3))
        rhoe (counte,1) = DMCe_data(j,2);
        rhoe (counte,2) = DMCe_data(j,3);
        counte = counte + 1;
    end
     
end
rhomeane = mean(rhoe(:,1));
rhostde = std(rhoe(:,1));
steadye = (rhostde / rhomeane);

rhof = zeros (size(DMCf_data(:,3),2));
countf = 1;
for j = 2:size(DMCf_data(:,3))
    
    if ( DMCf_data(j,3) > DMCf_data(j-1,3))
        rhof (countf,1) = DMCf_data(j,2);
        rhof (countf,2) = DMCf_data(j,3);
        countf = countf + 1;
    end
     
end
rhomeanf = mean(rhof(:,1));
rhostdf = std(rhof(:,1));
steadyf = (rhostdf / rhomeanf);

rhog = zeros (size(DMCg_data(:,3),2));
countg = 1;
for j = 2:size(DMCg_data(:,3))
    
    if ( DMCg_data(j,3) > DMCg_data(j-1,3))
        rhog (countg,1) = DMCg_data(j,2);
        rhog (countg,2) = DMCg_data(j,3);
        countg = countg + 1;
    end
     
end
rhomeang = mean(rhog(:,1));
rhostdg = std(rhog(:,1));
steadyg = (rhostdg / rhomeang);

rhoh = zeros (size(DMCh_data(:,3),2));
counth = 1;
for j = 2:size(DMCh_data(:,3))
    
    if ( DMCh_data(j,3) > DMCh_data(j-1,3))
        rhoh (counth,1) = DMCh_data(j,2);
        rhoh (counth,2) = DMCh_data(j,3);
        counth = counth + 1;
    end
     
end
rhomeanh = mean(rhoh(:,1));
rhostdh = std(rhoh(:,1));
steadyh = (rhostdh / rhomeanh);

rhoi = zeros (size(DMCi_data(:,3),2));
counti = 1;
for j = 2:size(DMCi_data(:,3))
    
    if ( DMCi_data(j,3) > DMCi_data(j-1,3))
        rhoi (counti,1) = DMCi_data(j,2);
        rhoi (counti,2) = DMCi_data(j,3);
        counti = counti + 1;
    end
     
end
rhomeani = mean(rhoi(:,1));
rhostdi = std(rhoi(:,1));
steadyi = (rhostdi / rhomeani);

rhoj = zeros (size(DMCj_data(:,3),2));
countj = 1;
for j = 2:size(DMCj_data(:,3))
    
    if ( DMCj_data(j,3) > DMCj_data(j-1,3))
        rhoj (countj,1) = DMCj_data(j,2);
        rhoj (countj,2) = DMCj_data(j,3);
        countj = countj + 1;
    end
     
end
rhomeanj = mean(rhoj(:,1));
rhostdj = std(rhoj(:,1));
steadyj = (rhostdj / rhomeanj);

rhok = zeros (size(DMCk_data(:,3),2));
countk = 1;
for j = 2:size(DMCk_data(:,3))
    
    if ( DMCk_data(j,3) > DMCk_data(j-1,3))
        rhok (countk,1) = DMCk_data(j,2);
        rhok (countk,2) = DMCk_data(j,3);
        countk = countk + 1;
    end
     
end
rhomeank = mean(rhok(:,1));
rhostdk = std(rhok(:,1));
steadyk = (rhostdk / rhomeank);

rhol = zeros (size(DMCl_data(:,3),2));
countl = 1;
for j = 2:size(DMCl_data(:,3))
    
    if ( DMCl_data(j,3) > DMCl_data(j-1,3))
        rhol (countl,1) = DMCl_data(j,2);
        rhol (countl,2) = DMCl_data(j,3);
        countl = countl + 1;
    end
     
end
rhomeanl = mean(rhol(:,1));
rhostdl = std(rhol(:,1));
steadyl = (rhostdl / rhomeanl);

rhom = zeros (size(DMCm_data(:,3),2));
countm = 1;
for j = 2:size(DMCm_data(:,3))
    
    if ( DMCm_data(j,3) > DMCm_data(j-1,3))
        rhom (countm,1) = DMCm_data(j,2);
        rhom (countm,2) = DMCm_data(j,3);
        countm = countm + 1;
    end
     
end
rhomeanm = mean(rhom(:,1));
rhostdm = std(rhom(:,1));
steadym = (rhostdm / rhomeanm);

rhon = zeros (size(DMCn_data(:,3),2));
countn = 1;
for j = 2:size(DMCn_data(:,3))
    
    if ( DMCn_data(j,3) > DMCn_data(j-1,3))
        rhon (countn,1) = DMCn_data(j,2);
        rhon (countn,2) = DMCn_data(j,3);
        countn = countn + 1;
    end
     
end
rhomeann = mean(rhon(:,1));
rhostdn = std(rhon(:,1));
steadyn = (rhostdn / rhomeann);

rhoo = zeros (size(DMCo_data(:,3),2));
counto = 1;
for j = 2:size(DMCo_data(:,3))
    
    if ( DMCo_data(j,3) > DMCo_data(j-1,3))
        rhoo (counto,1) = DMCo_data(j,2);
        rhoo (counto,2) = DMCo_data(j,3);
        counto = counto + 1;
    end
     
end
rhomeano = mean(rhoo(:,1));
rhostdo = std(rhoo(:,1));
steadyo = (rhostdo / rhomeano);

steady_state = [steadya,steadyb,steadyc,steadyd,steadye,steadyf,steadyg,steadyh,...
                steadyi,steadyj,steadyk,steadyl,steadym,steadyn,steadyo];







