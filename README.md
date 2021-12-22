# C Project Starter

This repository contain an empty C project.  
The project was created, according to my needs, for my 1st year at Epitech School.  
The main part of the starter is the file `setup.sh`, which will setup the project.  
It will:
* Rename all `${PROJECT_NAME}` file names and file content with the given project name.
* Setup the `git` remote URL
* Ask you if the file `setup.sh` should be deleted.

## Example
```bash
➜  c-project-starter git:(master) ./setup.sh my_project 
Please specify the Github repository name: repository_name
Validate repository name: repository_name (yes/no): y
Successful renaming files.
Would you delete this setup file? (yes/no): y
File deleted.
```
