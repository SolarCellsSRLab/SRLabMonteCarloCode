%Generates a csv file for a solar cell composed of 3 layers of 
%P3HT, 1 layer of 2:1 P3HT:PCBM, 4 layers of 1:1
%P3HT:PCBM (2 with import and 2 with import2), 1 layer of 1:2 P3HT:PCBM,
%and 3 layers of PCBM, for a coarsely graded "sandwich" structure

clear 
blah1 = csvread('import_mc3.csv'); %Layer 6
z1 = blah1(:,3);
c1 = blah1(:,4);

blah2 = csvread('import_mc3.csv'); %Layer 5
z2 = blah2(:,3);
c2 = blah2(:,4);

blah3 = csvread('import_mc7.csv'); %Layer 4
z3 = blah3(:,3);
c3 = blah3(:,4);

blah4 = csvread('import_mctotal.csv'); %Layer 3
z4 = blah4(:,3);
c4 = blah4(:,4);

blah5 = csvread('import_mctotal.csv');%Layer 2; directly beneath top layer
z5 = blah5(:,3);
c5 = blah5(:,4);

blah6 = csvread('import_mctotal.csv'); %Top layer
z6 = blah6(:,3);
c6 = blah6(:,4);

blah7 = csvread('import2_mc3.csv'); %Layer 7
z7 = blah7(:,3);
c7 = blah7(:,4);

blah8 = csvread('import2_mc3.csv'); %Layer 8
z8 = blah8(:,3);
c8 = blah8(:,4);

blah9 = csvread('import2_mc7.csv'); %Layer 9
z9 = blah9(:,3);
c9 = blah9(:,4);

blah10 = csvread('import2_mctotal.csv'); %Layer 10
z10 = blah10(:,3);
c10 = blah10(:,4);

blah11 = csvread('import2_mctotal.csv');%Layer 11; one layer above bottom
z11 = blah11(:,3);
c11 = blah11(:,4);

blah12 = csvread('import2_mctotal.csv'); %Bottom layer
z12 = blah12(:,3);
c12 = blah12(:,4);

blah = csvread('import.csv');
x = blah(:,1);
y = blah(:,2);
z = blah(:,3);
c = blah(:,4);

for m =1:600000

    if ( z(m) >= 0 && z(m) < 5)
        c(m) = c12(m);
        
    elseif ( z(m) >= 5 && z(m) < 10);
            c(m) = c11(m);
            
    elseif ( z(m) >= 10 && z(m) < 15);
            c(m) = c10(m);    
            
    elseif ( z(m) >= 15 && z(m) < 20);
            c(m) = c9(m); 
            
    elseif ( z(m) >= 20 && z(m) < 25);
            c(m) = c8(m);  
            
    elseif ( z(m) >= 25 && z(m) < 30);
            c(m) = c7(m);
            
    elseif ( z(m) >= 30 && z(m) < 35);
            c(m) = c1(m);
            
    elseif ( z(m) >= 35 && z(m) < 40);
            c(m) = c2(m);
            
    elseif ( z(m) >= 40 && z(m) < 45);
            c(m) = c3(m);  
            
    elseif ( z(m) >= 45 && z(m) < 50);
            c(m) = c4(m);
            
    elseif ( z(m) >= 50 && z(m) < 55);
            c(m) = c5(m);  
            
    elseif ( z(m) >= 55 && z(m) <= 60);
            c(m) = c6(m);                
            
            
   end
    
end
blah(:,4) = c;
newname = input('Enter structure name: ', 's'); %Enter a name of the form: Your_Structure.csv
csvwrite(newname, blah)