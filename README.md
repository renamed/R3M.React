# R3M.React

## Powershell scripts
In order to to make things easier and focus on what matters, I developed many PowerShell scripts.
- *create-branch.ps1*: checkouts to the default branch, pulls and creates a branch from there. Asks for the branch name, normalizes it, prepends "feature/" to it and pushes to origin.
- *create-project.ps1*: Creates a new React project. All project folders have the following standardized name "000-description", ie, 3-digit integer and a lower-case, hyphen-separated name. This script calculates the new folder name by increasing the value of the last folder and normalizing the name. It then asks the kind of project you want to create.
- *finish-class.ps1*: Reads a commit message and prepends "Class" to the description.
- *helpers.ps1*: Centralize functions that are used in more than one script.

## Learning React repository ##
Many projects involving React and JavaScript.
- *001-building-our-first-react-app*: a regular React project with nothing special.
- *002-pure-react*: a React project created from the scratch, without CLI.
- *003-pizza-menu*: a Pizza menu React project that is still unfinished.
- *004-js-overview*: Remembering some JavaScript.
