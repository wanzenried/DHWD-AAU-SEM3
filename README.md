# DHWD-AAU-SEM3
Solutions to lecture exercises in Digital Hardware Design

## How to build
To build any of the projects for use in Vivado, first clone the repo:
```
git clone https://github.com/wanzenried/DHWD-AAU-SEM3.git
```

Then navigate into the root folder of the project you want to build, for example [shift-register](/shift-register/) and run the following in your terminal:
```
vivado -mode batch -source scripts/create_project.tcl 
```
This will create the vivado project in the `/vivado` folder.  
Be aware that vivado needs to be in your `$PATH`for this to work, but i am sure you can figure it out 😙