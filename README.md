# ClipAppIOS

This project is INCOMPLETE

DONE
The UI design is roughed in, and the navigation is in place. 
The basic logic is created for some fundamental functionality.
There is sample data that was being used as a place holder.
MVC was used.

HOWEVER
In looking for a storage solution that complied to FERPA, I 
came to the conpclusion that there were basically three options:
1) A secure central server with MOUs signed by implementing districts
2) Individual districts could be made responsible for estting up storage solutions
3) Storage could be done using the google classroom API.

Option 1
Not realistic.  There would need to be a high level of security 
for FERPA compliance and any breaches of data would be enormous
liability issues.  There are likely legal guidelines that I would
need to research, and I would need to hire a lawyer to draft the 
memorandums of understanding.

Option 2
Not likely to work.  The data structure would have to work with 
what is already in place at the district, and the district would
have to commit resources to supporting their implementation.  
It would place an undue burden on the districts, and make adoption 
unlikely as there would be too many hoops to jump through

Option 3
Questionable.  Theoretically, requiring a google classroom login
would push everyhting to the google account set up to handle student
data.  This would mean it would inherent the same data security as the 
teacher's google classroom data, which should be fine.
It would require thinking through a way to house and access the data
using the teacher's google drive.  In practice, not every teacher using
google classroom does so with support from the district, so the FERPA
issue could still be dicey.  

Without advice from an experienced colleageue, I have decided
to shelve the project at this time.

That said, all files to run the app are available here.  Download it to 
its own folder and open the project in XCode.
