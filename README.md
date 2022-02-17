
<h1>Origin QA Challenge</h1>

<h2> Test Automaton</h2>

To execute this project we will need to install some gem. To do follow the steps below:

<h3> Step 1</h3>

Clone the project on git:

````bash
git clone https://github.com/erikmenini/origin.git
````

<h3> Step 2</h3>

Access the project in the path through terminal.
````bash
.../origin
````

<h3> Step 3</h3>
Execute the command below:


First:

````bash
gem install bundler
````

Second:

````bash
bundle install
````
If your chrome is in the late version, for example version 98, you will need to install the compatible chromedriver, you can download here:

https://chromedriver.chromium.org/downloads

<h3> Step 4</h3>
To execute the project run the command below:

````bash
cucumber
````
This will run the entire project.


If you want to run only one feature you can run:
````bash
cucumber --tags @tag_name
````

<h3>About the project<h3>
This automation project have this structure below:

- features -> all the code files of the project will be here
    - pages -> all the elements, methods of the automation will be here
    - specs -> all the scenarios specifications will be here
    - step_definition -> all steps will be here
    - support -> all the enviroment files will be here
- report -> This folder is to save the report, screeshots after run the automation

Contact
-------
*	E-mail: erikmenini@gmail.com
*	Linkedin: <https://www.linkedin.com/in/erik-menini-arimath%C3%A9a-3a380b30/>
