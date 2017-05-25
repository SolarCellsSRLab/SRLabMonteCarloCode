# SRLabMonteCarloCode

SolarCells Wiki

Introduciton
It is recommended that you read through/skim this entire document before getting started so that you know which paths are available to take and can decide which path will be best for you. 

The “Use This” folder in the Duke Box contains the newest code. 

The “BLiborio ’16-‘17” folder in the Duke Box contains some starting configurations and notes to get you started. It gives you all the necessary files to begin the graded bulk heterojunction experiments with different step sizes. 

Feel free to call or text Bruna Liborio at 704-706-5520 if you have any questions about this document and running the code. 

Git Hub Repository 
keeps the most recent code base
-	SRLabMonteCarloCode
o	Username: SolarCellsSRLab
o	Password: srlabsolar58
o	Email: SolarCells.SRLab@gmail.com
o	Email Password: srlabsolar

External Server
use to run programs off of your local laptop
-	full name: colab-sbx-279.oit.duke.edu
-	password: etsye8Frij
-	connect by:
o	open a terminal
o	ssh bitnami@colab-sbx-279.oit.duke.edu
o	enter the password above to login
or create your own server…
-	go to https://vm-manage.oit.duke.edu/
-	click ‘Click here to get your own VM’ on the main page
-	follow the instructions to request a VM
-	you will be directed to a page with the vm name and password
-	use those to connect to your server as described previously
o	this time ssh with the new name -> ssh ‘new server name’
o	and enter the new password
o	see the ‘how to connect to your vm tab’ (on the page you are directed to after creating the server) for more specific instructions on connecting to your newly created server

Create a Local Code Base
create a local code base to be used on your laptop or on the server
-	you can clone the code base either onto your laptop or onto a remote server (such as the one you created above)
-	for your local laptop: simply open up a terminal 
-	for your server: open a terminal, ssh into the server and enter the password as described in the previous section
-	the subsequent steps are the same for either system
-	creating an ssh key
o	type ‘ls –a ~/.ssh’ to either see or create the .ssh file
o	type ‘ssh-keygen’ to produce an ssh key
o	hit enter to use the default location for your key, this location will be .ssh/id_rsa.pub
o	type ‘cat ~/.ssh/id_rsa.pub’ to read your ssh key
o	copy that key for use in the github site
-	adding the key to git hub
o	sign into https://github.com/ with the Git Hub Repository username and password found in the first section of this document
o	go to ‘Settings’ and click the ‘SSH and GPG keys’ section
o	under the ‘SHH Keys’ section, click ‘New SSH key’
o	in the box that appears, copy your newly created ssh key from the previous discussion in the box labeled ‘key’
o	in the box labeled ‘title’ enter whatever title you wish to call your new key
-	cloning the repository
o	make sure you have git installed on your system: in the terminal, type ‘sudo apt-get install git’ to either install or update git
o	go to the SolarCells repository on the git hub site to find the address for cloning the repository
o	this should be under the ‘clone or download’ button, you may use either https or ssh
o	in the terminal, type ‘git clone *the address you got from the clone/download button*’ to clone the repository
o	you now have a copy of the code base on your system
-	saving changes back to git
o	if you make changes to the code base and wish to save those changes on the git site, follow the subsequent steps
o	type ‘git add –A’ to stage all your changes
o	type ‘git commit –m “message” where message is whatever you want it to be to commit your changes to the system
o	type ‘git push origin master’ to push the changes to the system; you may be asked for a username and password, in that case use the username and password from the Git Hub Repository section
o	Note: Git is a very powerful tool for changing, updating, and save entire code based projects. For more advanced features and to debug problems you may run into, simply Google the problem or error and the internet will likely be able to quickly help you. For a quick git reference and tutorial, see https://www.atlassian.com/git/tutorials or https://git-scm.com/docs/gittutorial 
-	creating a project for the code base on Eclipse (Note that this is not necessary to run the code, but is helpful to write, debug, or see the code.)
o	take the following steps to download Eclipse onto your local laptop or computer (Eclipse is not needed on the server.)
o	download eclipse from https://www.eclipse.org/downloads/
o	once eclipse has been installed, open the application
o	direct the application to the directory where you cloned the git repository (i.e. the git repository will have to be cloned on your local laptop or computer, see the ‘cloning the repository’ step above); do this when the eclipse application asks which workspace you want to use, the workspace should be the respective directory
o	on the eclipse menu bar, go to File -> New -> Java Project
o	enter the name to match the name of the git repository downloaded and hit enter
o	you should now have the git hub code base on Eclipse

You can also bypass GitHub and create your code base more manually in Eclipse by doing the following…
o	download eclipse from https://www.eclipse.org/downloads/
o	once eclipse has been installed, open the application. Go to Applications  --> Eclipse, click "OK" when the Workspace Launcher screen comes up (unless you really don't like the default folder and want to direct it to another one), then open the Workbench. Go to File --> New --> Project --> Java Project.
o	Name your project. You'll likely be using the same one for every simulation, so probably don't name it for the particular structure you're modeling this time; call it "DMC Model", or "SR Group Model", or whatever makes you happy. 
o	Log on to Sakai and open the Stiff-Robert's research group site. Go to Resources --> DMC Model --> Current Files, and download all the files in that folder. 
	OR
Log on to Duke Box, go to the Stiff Robert’s Research Group folder -> Current Files, and download all the files in that folder
o	Copy and paste every Java file (filename.java) and csv file (filename.csv) into your new project from the download. A list of the files that should be included in the Current Files folder can be found in the ‘Creating Structures With MATLAB’ section of this report. 
o	You will now have the code base in Eclipse which you can edit, debug, read, and manipulate easily. 

Preparing Terminal to Run Java
install java using the terminal in order to run the program
-	you may need to install java in the terminal, either on your local computer or on the server or both, in order to run the java code
-	installing java…
o	in the terminal, type ‘sudo apt-get install default-jre’
o	and then type ‘sudo apt-get install default-jdk’
o	the password for the system may be required in each case
o	this should be enough to run java programs on the system as described in the next section

Basic Running of the Code
how to run a singular simulation in the terminal -> USE THIS WHEN GETTING AQUAINTED WITH THE CODE AND PROGRAM SO YOU KNOW WHAT TO EXPECT
-	open the terminal
-	use the ‘cd’ command to enter the directory with the code
-	type ‘javac MonteCarloMain.java’ to compile the code
-	type ‘java MonteCarloMain’ to run the code 
-	if the program is running correctly, after a few minutes you should see multiple rows of about seven different numbers per row being printed to the console 

Running the Code When Logging Off the SHH Connection
how to run multiple simulations so that progress is never lost and so you are not logged off the session -> USE THIS ONE WHEN TRYING TO RUN THE SIMULATION FOR ALL WAVELENGTHS AND WANTED TO MAKE QUICK PROGRESS
-	the code takes a while to run, so it is often not ideal or even possible to keep your ssh connection alive during the duration of the simulation (note that if you are running this on your local computer, then you do not have to worry about these steps as you will not be forced off the connection)
-	an ssh connection to an external server will often expire after a certain amount of time or will disconnect if the computer with the connection is shut down, closed, or goes to sleep
-	in order to avoid losing work when this happens and to allow the ssh connection to be lost at anytime while still keeping the simulation running, you will need to use tmux and nohup
-	Tmux is a terminal multiplexer which means that it allows you to open multiple windows and panes within a single terminal window. What is really great about tmux is that it keeps all of these windows in session. Tmux keeps the connection and session alive until you deliberately kill the session or until what is running on the session ends, i.e. when the simulation ends for our purposes. 
-	Nohup is similar to tmux in that it also prevents a process from getting killed when a session is logged out. Additionally however, nohup will direct all the terminal output to a file called nohup.out which the command creates. This keeps you from losing any terminal output even if a session is logged out or terminated early, either by circumstances you didn’t foresee or because you chose to end it. 
-	Following are the basic directions for setting these programs up and running them with the code. Helpful links are also included for further information or in case something is unclear. 
o	You need to install tmux. Type ‘sudo apt-get install tmux’ in the terminal you are using in order to install tmux. Nohup is normally installed on all computers by default but if for whatever reason it isn’t install it by typing ‘sudo apt-get install nohup’ in the terminal.
o	Now you are ready to use the programs. 
o	Type ‘tmux’ to start a new tmux session. This will redirect you to a plain looking terminal within the existing terminal window. 
o	Now use the cd command to direct you to the directory containing the code.
o	Type ‘rm *.class’ and hit enter in order to delete any old compiled java classes.
o	Now type ‘javac MonteCarloMain.java’ to compile the java program.
o	The next step is different from how you previously ran the code. Type ‘nohup MonteCarloMain &’ in order to run the program and direct the output to a file called nohup.out.
o	If this command worked, you should now have a nohup.out file which you can see in the directory by typing ‘ls’.
o	Type ‘cat nohup.out’ in order to read the file and see your output.
o	Hit ‘control + b’ and then ‘d’ in order to detach from the tmux session while still letting the code run and keeping the session alive.
o	You can type ‘tmux ls’ at anytime to see what sessions you have running.  
o	When the simulation reaches steady state and terminates automatically, the tmux session will be gone, nohup will contain all program output, and a file called output.csv will be created containing all the program output as well. 
To rename a session: tmux rename-session -t ‘old name’ ‘new name’
To attach to a session: tmux attach –t ‘session name’
To kill/terminate a session: tmux kill-session –t ‘session name’
o	Note: When running multiple instances of the java MonteCarlo simulation, you will eventually run out of memory, which will limit you with how many simulations you can run at once. The limit is usually around 8 instances. An error message will appear in the terminal or nohup.out file when this happens. You will be able to run more simulations when the currently running ones are either terminated or end. 
-	http://www.hamvocke.com/blog/a-quick-and-easy-guide-to-tmux/
-	http://linux.101hacks.com/unix/nohup-command/
-	tmux commands and shortcuts: https://gist.github.com/MohamedAlaa/2961058

Creating Structures With Matlab
1.	Log on to Sakai and open the Stiff-Robert's research group site. Go to Resources --> DMC Model --> Current Files, and download all the files in that folder. 
OR
	Log on to Duke Box, got to the Stiff Robert’s Research Group folder ->> Current Files, and download all the files in that folder

Just in case they should end up somewhere else instead, those files are:
•	RandomGenerator.java
•	Particle.java
•	MonteCarloMain.java
•	MonteCarloDriver.java
•	importo.csv
•	Hole.java
•	ExcitonGenerator.java
•	Exciton.java
•	Event.java
•	Electron.java
•	Domain.java
•	Canvas.java
•	canvas.csv
•	CalcEfficiency.java
•	calcDomain.java
•	z_morphblend3.csv
•	Properties_P3HT_PC61BM.csv
•	PictureGenerator_alt.m
•	OpticalGeneration_Microscale_alt.m
•	Materials_System_Properties_template.m
•	import_mctotal.csv
•	import_mc15.csv
•	import_mc7.csv
•	import_mc3.csv
•	import.csv
•	import2_mctotal.csv
•	import2_mc15.csv
•	import2_mc7.csv
•	import2_mc3.csv
•	GradedGenerator2_alt.m 
•	DMC_analysis.m

2.	Open MATLAB. 
-	If the computer you are using does not have a MATLAB icon, open the terminal (the icon for this looks like a small black screen) and enter the following, replacing "NetID" with your actual NetID:
		ssh -XY NetID@login-teer.oit.duke.edu
-	You will be prompted to enter your password; do so. It is the same one you use to log into anything at Duke. Be aware that no characters will show up as you're typing in your password. Once you're logged in, enter:
		matlab &
-	This will open MATLAB.
-	Now copy all MATLAB files (filename.m) and csv files (filename.csv) from your downloads folder into a MATLAB folder (the box that says "Current Folder"). You may want to create a specific folder that will keep all of these files within Matlab.
OR
-	(Recommended if you can find a way to download it.) You can also try to download MATLAB onto your computer to have so that you can use it like any program on your computer instead of going through the terminal. You can do this through the Duke OIT site where you request different programs for download. You may need to go to the OIT help desk in person or send them an email explaining your work, with Dr. Stiff Roberts ‘cced’, in order to get permission to download MATLAB for work specific to this lab. MATLAB runs much faster and is much more efficient to use if you have it locally. So this is definitely the recommended step in order to avoid any messy complications involving the terminal. 

3.	Open your MATLAB application (either as a program on your computer if you downloaded it or on the terminal as described in step 2). Open the GradedGenerator2_alt.m file you added to your MATLAB folder (you could download and open GradedGenerator2.m instead, but the former will make your life slightly easier). This script allows you to specify the structure of your active region by dividing it into twelve layers, and allowing you to choose the donor: acceptor ratio of each layer by specifying the structure to use for the layer.
4.	Substitute the appropriate "import" csv files for those assigned to blah1 through blah12 (don't talk to me about names... that wasn't me.). Each ‘blah’ variable represents a layer on the solar cell. The GradedGenerator2_alt.m file specifies which ‘blah’ corresponds to which layer. 
5.	IMPORTANT: don't mess with import.csv, the one assigned to just plain ‘blah’. That one is different; it is not a layer in your solar cell and simply sets up the basic csv structure needed for the file and code. 

THE RATIO GUIDE
The donor (n type -> represented as blue): acceptor (p type -> represented as red) ratios represented by each "import" file are as follows:

import2_mctotal.csv  = 100% acceptor (represented by all red)
import2_mc15.csv = 3:1 (acceptor : donor)
import2_mc7.csv = 2:1
import2_mc3.csv = 1:1
import_mc3.csv = 1:1
import_mc7.csv = 1:2
import_mc15.csv = 1:3
import_mctotal.csv = 100% donor (represented by all blue)

You get twelve layers to build your overall structure; if you want the whole thing to be just a no-frills bulk heterojunction, pick the ratio you want and replace every "import" file for blah1 through blah12 with the structure representing that ratio. If you want a graded structure, pick import2_mctotal.csv for blah12, import_mctotal.csv for blah6, and pick the ratios in between according to how smoothly you want to transition from one to the other. 

IMPORTANT: For any structure where the top or bottom layer are all one material type, be sure that the acceptor/p type/red color is at the top layer (55 to 60 nm) and the donor/n type/blue color is at the bottom layer (0 to 5 nm). Otherwise, no carriers will be collected as the code assumes the positive charges will travel to the top and the electrons will travel to the bottom.
 
6.	Save the script with a new name once you have changed the files to give your desired layer structure; something along the lines of "GradedGenerator2_YourStructure.m" might be a good idea. Then click "Run". You'll be prompted to give your structure a name; whatever you type will be treated as a string, so don't worry about single quotes; do remember to include ".csv", though. That is, your name should be of the form:
		Your_Structure.csv
	The script will write a csv file that describes your structure and will save it to 	MATLAB. 
7.	Open PictureGenerator_alt.m and hit run. Enter the name of your structure when prompted, as above being sure to include the ‘csv’ extension. You now have the picture of the structure you created. Save this in order to have a visual representation of your structure. 

Generating The Structure’s Fifth Column
1.	Open OpticalGeneration_Microscale_alt.m in MATLAB (again, you can use OpticalGeneration_Microscale.m instead; the former should make your life easier, though), and hit run. Enter the name of your structure when prompted, including the ".csv" extension. That is, once again, enter:
		Your_Structure.csv
This script generates the absorption data for your structure, as well as a wealth of other data and information. Save your figure/graph before moving on, and also save your workspace; do this by clicking on the little circled triangle in the upper right corner of the "Workspace" box (which will say "Show Workspace Actions" when you hover over it) and then clicking "Save". If you want to keep your absorption figure up for now, type "figure" in the command window before moving to the next step. This will prevent the figure you'll generate next from displacing this one.
2.	Now, your canvas needs a fifth column for the Java-based portion of the model to work. Actually, you’ll need fifteen such canvases; your same old structure file with fifteen variations on the fifth column, each representing the absorption data for fifteen different wavelengths. 
3.	Use Five_Column_Canvas_Generator.m to generate a structure with a fifth column. The fifth column should come from the conv_total_ex_gen_morphblend variable that was created when you ran OpticalGeneration_Microscale_alt.m, so make sure that the variable used by the script does indeed have this name and if not, replace it with it. Running this should get you one of these super canvases, just to test everything out.
4.	Once this seems to work and you are getting a canvas with your structure and a fifth column, you can get all fifteen super canvases by running Five_Column_Canvases_Generator.m on your structure again being sure the variable being used is conv_total_ex_gen_morphblend. In the end, you should have fifteen canvases each with your structure and a fifth column tacked on. Keep these in a convenient location because you must use them in the next sections. 
Running the Code With Slowly With Eclipse
1.	Once you've got a csv files with fifth columns, open Eclipse. 
2.	Go to Canvas.java. In the Canvas.java code, replace the "importo.csv" string with the name of one of your super canvases.
3.	That code is now ready to run using your new structure. 
4.	You can now hit "Run" in Eclipse.  The code will run for about 24 hours. You should see it working after a few minutes with several rows of output, each row with about 8 numbers, printed to the console. When the simulation is finished, a new file called “output.csv” will be created in Eclipse. 
5.	If your output seems reasonable, replace the first super canvas with the next one by changing the string in the Canvas.java file to the new canvas’s name. Now hit “Run” again. Repeat this for all 15 canvases. 
6.	Now, doing 15 of these with each taking 24 hours will take a lot of time and will require you to check in on the code a lot in order to then start the next wavelength. 
7.	Alternatively, you can follow the next section which is slightly more advanced but which will also allow you to get faster results. 


Running the Wavelengths all at the Same Time With the Terminal
	With the above method, you will get results but very slowly and inefficiently. Mass running the structures for different wavelengths at the same time will let you have multiple simulations going at once, and while a bit more difficult to set up, it is often well worth it both in the time saved and the effort used. Here is how I recommend you go about it…
1.	Read the beginning sections of this document to set up an external server and a local code base on that server. 
2.	The code base should have a folder titled ‘Original Code’ which should contain a copy of all the .java and .class files needed to run the MonteCarloMain simulation.
3.	Now, you will be copying a folder in the code repository. The easiest way to do this is using Eclipse so refer to the “Create A Local Code Base” section of this document to set up the code base in the Eclipse application. 
4.	Now, go to the project you set up in Eclipse and copy the ‘Original Code’ folder 15 times, so that you have one folder for each wavelength.
5.	Go to Canvas.java file in each folder. In the Canvas.java code, replace the "importo.csv" string with the name of one of your super canvases. Do this for each folder so that you have the Canvas file referring to the .csv super canvases of each wavelength. (For example, in folder 1 Canvas.java should have the string referring to the super canvas with the 5th column referring to the first wavelength. In folder 2, Canvas.java should have the string referring to the super canvas referring to the second wavelength and so on) This will keep you from having to change the Canvas.java file for each simulation and will allow you to run multiple simulations at once. 
6.	Now, you can either run the code all on your local laptop or you can use the external server in order not to waste your personal laptop’s resources. 
To run on your local laptop…
7.	Simply save all the changes you made with copying the folders and changing the Canvas files.
8.	Now open a terminal window and navigate to the folder within your computer containing all the code and newly created folders. 
9.	You are now ready to run the code. Skip down to the “Now Run Multiple Simulations” section if you do not want to read through the external server instructions. 
To run on the external server…
10.	In order to access all the newly created folders on the server, you need to use git. 
11.	 Review the “Create a Local Code Base” section of the document to review how to set up a connection to git.
12.	 In order to save your changes, once you have git all set up (which should be by this point if you followed all the document steps), open up a terminal window. Navigate to the code base which you got from git/where you made the copy of the folders. Now… 
a.	type ‘git add –A’ to stage all your changes
b.	type ‘git commit –m “message” where message is whatever you want it to be to commit your changes to the system
c.	type ‘git push origin master’ to push the changes to the system; you may be asked for a username and password, in that case use the username and password from the Git Hub Repository section
13.	 If all worked as expected, your changes should now be pushed to git. (If any errors occurred, try googling the error message. Git is a well used tool and googling will often steer you toward an answer about what went wrong.)
14.	 Now log onto the external server. The beginning of this document contains both set up and log on instructions for this server. 
15.	Once you are logged on to the server, navigate to the git folder using cd if you have already pulled from git on this server or set up a new folder on the server and navigate there. (To make a new folder, type “mkdir folder_name” into the terminal to create a folder called ‘folder_name’. Replace that with what you want to name the folder.)
16.	Now, pull the new changes from git. Type “git pull origin master” to get all the new changes. If you run into unexpected errors, review the “Create A Local Code Base” section of the document to make sure you went through all the steps. If you are still running into errors, google is again recommended. 
17.	Now that you have all the changes, you are ready to run the code. Go through the following “Now Run Multiple Simulations” section to run the simulations.
Now Run Multiple Simulations…
18.	Now that you have the multiple folders created and set up and are logged onto a terminal either on your local computer or on the external server, you can run multiple simulations. 
19.	Use the “cd” (change directories) command on the terminal to navigate to the folder corresponding to the first wavelength. Now follow the steps for running the simulation for this wavelength. You will repeat these steps for each wavelength.
a.	Type “rm *.class” in order to delete all the class files. Do not worry. You will recreate these files in the next step for the updated canvas. 
b.	Type “javac MonteCarloMain.java” in order to compile the java files and make the correct .class files for the updated canvas. 
c.	Type “tmux” in order to start a new tmux instance. The terminal should change slightly with the window becoming mostly plain. 
d.	Now type “nohup java MonteCarloMain &” in order to run the code and direct all output to a new nohup.out file. This will save all your output to this file even if the simulation does not run to completion. 
e.	Wait a few minutes in order to let the simulation run and produce some output. Now type “cat nohup.out” in order to see the output which has been directed to this output file. If the file contains lines of number resembling those below, the program is working. 
0.000000, 0, 0, 0, 0, 0, 1, 0 
0.000000, 2, 0, 0, 0, 0, 1, 1 
0.000487, 2, 0, 0, 0, 0, 2, 1 
f.	If the output does not resemble this, you will need to do some debugging and will need to follow the error messages to find the problem. If the error is that there is not enough memory, then you simply have too many simulations running and must either wait for some to end or must forcibly end some in order to run new simulations. 
g.	To exit the tmux sessions and return to the main terminal, type “control + b” (the two at the same time) and then “d” in order to detach from the tmux session. This is important in order to navigate to a new folder and start a new simulation while keeping this simulation running.
h.	Repeat this (a through g) for as many of the folders/wavelengths as possible before you run out of memory or computing space. Be sure to ‘cd’ into a new folder before running through the a to g instructions again. (For example, after you set up and run the simulation for the wavelength 1 folder you need to switch to the wavelength 2 folder in order to correctly run the next simulation)
20.	 Since you have used tmux and nohup, all of your output will be saved to the nohup file and you can exit the terminal whenever you like because tmux will keep the various simulations alive. 
21.	 In order to check how many tmux instances and simulations you have running, type “tmux ls” in order to list all the sessions. See the “Running the Code When Logging Off the SHH Connection” section of this document for more information about nohup and tmux and for more commands that you can use to manage your sessions. 
22.	 When a simulation has run to completion, an output.csv file should be created in the simulation’s folder with all the output data (If the simulation is still running, the file will be present but there will be no data in it.) and the tmux session should automatically log out (This has not happened on all occasions and so the output.csv file is a better indicator.)
23.	Once all your 15 wavelengths have run to completion and you have collected all the output files, you are ready to run the analysis. 
***Note that if you are running this on the external server, you will need to save these output files to git using ‘git push’ and will then need to get the files on your local laptop using ‘git pull’ in order to use them in the analysis on Matlab. Using git push and git pull have been discussed previously in this document. 
24.	These simulations take a long time to run and sometimes you may want to run a preliminary analysis with the output you have before the full simulation has been completed. See the “Preliminary Analysis” section which follows the “Doing A Full Analysis” section to get the gist about how to use the nohup.out data in a preliminary analysis. 

Doing A Full Analysis
1.	Once you have the output for all 15 wavelengths for your chosen configuration, you are ready to do a full analysis. 
2.	Find the Matlab file in the “Use This” folder titled DMC_anlaysis.m. Open up the Matlab application and move it into the Matlab folder.
3.	Comment out the directory line in the file and copy all 15 output files into the Matlab folder. 
4.	Replace the variables file1 to file15 at the beginning of the script to refer to your own 15 output files. 
5.	Now hit ‘Run’ to run the script. 
6.	The analysis takes some time but once it is completed you should see two graphs. For references as to what these graphs should look like, see the “Analysis” folder in the “BLiborio ’16-‘17” folder on the Duke Box. 
7.	You have now gone through a complete simulation and analysis for one configuration. To do the same for another configuration, run through all these steps again but use the new configuration as your base canvas and use the new configuration to produce the fifth columns for the canvases. 

Preliminary Analysis
1.	Sometimes, you may want to do an analysis before you have all the data either because some wavelengths completed before others or because the simulations are taking too long to complete. 
In the case where you have some of the wavelengths completed….
2.	If you have the output.csv files for these wavelengths, go ahead and open Matlab and make sure the DMC_analysis.m file is in Matlab. 
3.	Comment out the directory line in the file and copy all the output files you currently have into the Matlab folder. 
4.	Replace the variables in the file# to file#, where the numbers are whichever wavelength numbers you have, at the beginning of the script to refer to your own output files. 
5.	Now you can do one of two things, either leave all the files there with dummy data, i.e. with data from other configurations for the wavelengths you don’t have, and simply change the range of the axis on the Matlab figures and graphs so that they don’t include this dummy data OR comment out the remaining files and all the lines in the script that refers to them. The second method may take a bit more precision and knowledge of the code to know exactly what you have to comment out. 
6.	Once one of those two options are done, go ahead and run the script like normal to obtain your analysis data. 
In the case where you want to run an analysis but your simulations have not completed and thus you have no output file…
7.	Obtain the output from the currently running simulations either by copying the output from the terminal or Eclipse console or by typing ‘cat nohup.out’ in order to read the nohup file for a wavelength and copy the data from there. 
8.	Now paste the copied data onto a plain .txt file and save it. 
9.	Open up a new excel sheet. 
10.	 On the menu bar, go to File -> Import
11.	Select text or .txt file and hit import.
12.	Select your newly saved .txt file from the file chooser.
13.	On the first option page, check off the ‘Delimited’ box instead of the ‘Fixed Width’ box. Then hit next.
14.	On the second option page, check off ‘Comma’ under the ‘Delimiters’ heading. Then click ‘Finish’.
15.	You should now see that data on the excel sheet after clicking the cell to first start the data import to. 
16.	Now save this. This will be your first output file created from partial data. 
17.	Do this for all the wavelengths/simulations you have running and which have partial data. 
18.	Now the steps are the same as those of the ‘Doing A Full Analysis’ section or of the previous case in the ‘Preliminary Analysis’ section, depending on if you have partial data for all the wavelengths, the former, or if you only have partial data for some wavelengths, the latter. 
19.	Simply copy the new output files over to Matlab and make the necessary changes to the DMC_analysis.m file in order to run the script and get your preliminary analysis graphs. 

Conclusion

Hopefully this guide had all the information you need to get started working with the Dynamic Monte Carlo code from making your own structures to running the simulation to analyzing the results. 

If you have any remaining questions, if something is unclear, or if you get stuck on some error you cannot debug, please feel free to contact me, Bruna Liborio, at 704-706-5520 or through some new email I will have, which I will give to Dr. Stiff-Roberts, and I will try to answer your questions. I do respond to the phone a bit faster than to email, just in case it is time sensitive. 
