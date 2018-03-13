# Powershell_Daily_Scripts
This Repository is for my plan of writing at least one new Powershell script a day.

03/11/2018

- check_Version_Func.ps1

  a. I wanted to write a script that would be more resilient for IT professionals where they probably
     are maintaining more than one version of Powershell.

  b. If you have a certain script that you want to run but take advantage of the exact versions just write
     the script to work in each version 1-5 and paste the different versions of the script into the correct
	 function field.

		1. IE = Powershell v1 script goes into powerVersion1 function.


- template.ps1

  a. This is just a template to write modules to work with get-help cmdlet.


 03/12/2018

 - add_Map_Drive.ps1

    a. I wanted to create a fun little mapped drive add or remove script.

    b. This script actually is function it will add a SMB 3.0 mapped drive or better yet destroy it...lol.

    c. The caveat on this is I only know that it works with Powershellv4 and up and I do not think it will work with Powershellv3 and below.
