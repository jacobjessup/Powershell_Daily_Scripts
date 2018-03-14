# Powershell_Daily_Scripts
This Repository is for my plan of writing at least one new Powershell script a day.

<h3>03/11/2018</h3>

- <em><strong>check_Version_Func.ps1</strong></em>

  a. I wanted to write a script that would be more resilient for IT professionals where they probably
     are maintaining more than one version of Powershell.

  b. If you have a certain script that you want to run but take advantage of the exact versions just write
     the script to work in each version 1-5 and paste the different versions of the script into the correct
	 function field.

		1. IE = Powershell v1 script goes into powerVersion1 function.


- <em><strong>template.ps1</strong></em>

  a. This is just a template to write modules to work with get-help cmdlet.




 <h3>03/12/2018</h3>

 - <em><strong>add_Map_Drive.ps1</strong></em>

    a. I wanted to create a fun little mapped drive add or remove script.

    b. This script actually is functional and it will add a SMB 3.0 mapped drive or better yet destroy it...lol.

    c. The caveat on this is I only know that it works with Powershellv4 and up and I do not think it will work with Powershellv3 and below.



<h3>03/13/2018</h3>

- <em><strong>find_Top_Process.ps1</strong></em>

    a. This script will find the top 5 processes of a local or remote computer.

    b. Used as a quick inspection if a computer is running slow.

    c. This script also allows for a Service status search on a local or remote computer.
