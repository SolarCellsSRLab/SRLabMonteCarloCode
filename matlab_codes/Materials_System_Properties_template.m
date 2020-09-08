%Materials_System_Properties_template

q = 1.602 * 10^(-10); % ns*A (coulomb = A*s)         
k = 1.38 * 10^(-23); % boltzmann constant (J/K = kg*nm^2/(ns^2*K))          
T = 300; % temperature (K)   
a = 1.61; % lattice constant for 100 in nm  
b = 0.393; % lattice constant for 010 in nm

P = ones(28, 1);

% Acceptor Properties:

P(1,1) = 1.25; % exciton lifetime in ns
P(2,1) = 1.710; % exciton delocalization radius from cube root of diffusion length (nm) 
P(3,1) = 3 * 10^(11); % carrier mobility (nm^2/(V*s))
P(4,1) = q;
P(5,1) = k;
P(6,1) = T;
P(7,1) = a;
P(8,1) = 6 * 10^(-4); % recombination rate in 1/ns
P(9,1) = 1; % photon to exciton conversion
P(10,1) = 500; % no units specified or notes provided; your guess is as good as mine
P(11,1) = b;
P(12,1) = 3 * 10^(11); % carrier mobility (nm^2/(V*s))
P(13,1) = 99; % percentage of 100 IP sites
P(14,1) = 1; % percentage of 100 OOP sites

% Donor Properties:

P(15,1) = 0.6; % exciton lifetime in ns
P(16,1) = 2.759; % exciton delocalization radius from cube root of diffusion length (nm) 
P(17,1) = 2 * 10^(10); % hole carrier mobility for IP (nm^2/(V*s))
P(18,1) = q;
P(19,1) = k;
P(20,1) = T;
P(21,1) = a;
P(22,1) = 6 * 10^(-4); % recombination rate in 1/ns
P(23,1) = 1; % photon to exciton conversion
P(24,1) = 500; % our mystery quantity again
P(25,1) = b;
P(26,1) = 2 * 10^(10); % hole carrier mobility for OOP (nm^2/(V*s))
P(27,1) = 99; % percentage of 100 IP sites
P(28,1) = 1; % percentage of 100 OOP sites

disp('Choose materials system name; proper format is: ''Properties_Material1_Material2.csv'' (yes, include the single quotes!)' )
newname = input('Enter chosen name: ');
csvwrite(newname, P)
