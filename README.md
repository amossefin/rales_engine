# Program Setup

Inital Steps:

* Clone down this repo to your terminal

* run ```bundle``` 

* Setup postgresql database by running ```rake db:create```

* Apply migrations, run ```rake db:migrate```

* The database will actually be populated from .csv files in '/app/data' instead of the seed file

* Insert the .csv files by running ```rake populate```

* You can now run the application with ```rails s``` in the terminal

* Open a seperate terminal window while the program is running, and run the spec file on localhost:3000

* If all went well, the spec harness tests should be passing.

* And if you get stuck, just remember...

![alt text](http://s2.quickmeme.com/img/f5/f577bc2f6bad1884e3167814ae3c64c317a5f1978e2d71ec08c11d3856611256.jpg)
