# De-Identifying XML and PDF files
Please read thoroughly and ensure programs are installed.

## Usage
In the case where the required programs CAN'T be installed, please let me know.

Once the scripts are downloaded, check to make sure they are all in ONE folder.
Next, open bash.
Let's say the folder is on your desktop, once bash is opened, type:
> cd desktop
Then check the name of the folder that you have installed the scripts in. Let's call this folder "x" for now, in that case, type:
> cd x
Now check for the path of the folder with the files you want to de-identify. To be clear, this should be a folder with patient folders within it.
For example, if I have a folder, "Patients," it has subfolders of say, "001", "002", etc. with XML and PDF files within them.
The path that is needed is the path to "Patients," so it should look something like this once you have copied it:
> C:\Users\User1\Desktop\Patients
Finally type in bash:
> ./De-Identify.sh "C:\Users\User1\Desktop\Patients"
Please ensure that the path is wrapped in quotes.

Once this is ran, you should see a new folder inside the one that you have the scripts in. This folder will contain all the de-identified data.

If you need to run this program again, please make sure that the previously created folders are moved to another location (the folder with the de-idenified data)

### Required Packages/Programs
For this script to run, or more specifically the PDF section to run, 3 programs need to installed:
Please install the correct version for the PC that you intend to run it on.
If Windows, please install 64 bit.

1. pdftk - server

The link is below:
https://www.pdflabs.com/tools/pdftk-server/

2. Perl

The PC might already have this installed, to check, open bash or a terminal and run the command:
"perl --version"

If a version number pops up, it is installed. Otherwise, here is the link:
https://www.perl.org/get.html

3. Ghostscript

The link is below:
https://ghostscript.com/releases/gsdnld.html