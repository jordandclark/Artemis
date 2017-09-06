![Picture](http://static1.squarespace.com/static/57b77304b3db2bfb203fbf3f/t/581e02ade4fcb51e9e0bc4cd/1501254745108/?format=1500w)

# Hiring Assessment Application

* A hiring assessment application to determine whether an applicant is suitable for working remotely and fulfilling a strategy consultant role.

## Table of Contents

1. [Getting Started](#a)
    1. [Installing Atom text editor](#b)

        * [Windows / Linux Installation Instructions](#c)

          * [Accessing the Terminal](#d)

        * [OSX Installation Instructions](#e)

2. [Viewing this Application](#o)

    1. [Clone down this application locally](#p)

    2. [Install the required dependencies](#q)

    3. [Take the application live](#r)

3. [Editing this Application](#s)

# <a name="a"></a>Getting Started

## <a name="b"></a> Installing Atom

### Atom

Atom was designed with the developer in mind by adding features and customization that help developers write their code more productively.

* Download the installer for your operating system here: https://atom.io/

## <a name="c"></a> Windows / Linux Installation Instructions

* <a name="d"></a> Accessing the Terminal

### Mac Setup

On a Mac, the Terminal application is located in the Utilities folder, which is located inside the Applications folder. You may also locate the Terminal by clicking the magnifying glass icon at the upper right corner of the screen and typing "Terminal".

### Windows Setup

Windows uses a Terminal program as well, but a Terminal with all the capabilities we'll require is not installed by default.

There are many options available, but we recommend using a terminal program called git bash. You can download this free program at https://git-for-windows.github.io/.

## <a name="e"></a> Installing Ruby on Rails

On Windows, the easiest way to install Ruby is with the RailsInstaller, which includes Ruby and a few other tools. Go to this page: http://railsinstaller.org/en and install ruby 2.3 for windows.

## <a name="f"></a> Installing PostgresSQL

### Windows Setup

1. Download and install postgres here: https://www.enterprisedb.com/downloads/postgres-postgresql-downloads#windows.

2. Keep all of the default options and use a password that you will remember, you're going to need this soon.

3. Change environment variables such that Path (for system, not user) is: `C:\Program Files\PostgreSQL\9.0\bin`

![Picture](https://puu.sh/xt9V4/340431493d.png)

![Picture](https://puu.sh/xta1J/042108de8b.png)

Don't forget to change access rights to folder PostgreSQL\9.0 and remove any default readonly rights on the folder or content. (You may also need to restart your computer for these to take effect)

![Picture](https://puu.sh/xta8T/8eb86d0999.png)

4. Test Postgres installation by trying to create a new database: From command line: createdb -U postgres mydb_as_postgres. You should be prompted to enter the password now, if you're not it may be that you need to start the server first. The easiest way is through pgAdmin IV, which should be 'pgAdmin4.exe' in a folder somewhere like C:\Program Files\PostgreSQL\9.0\bin. Once you've started pgAdmin IV there should be a panel on the left called 'Object Browser'.

![Picture](https://puu.sh/xt9Od/9f90d76956.png)

In this there should be a tree with:

Server Groups > Servers > PostgreSQL 9.0 (localhost:5432)

Right click on 'PostgreSQL 9.0 (localhost:5432)' and select 'Connect'.

The createdb -U postgres mydb_as_postgres command should create a new databse called 'mydb_as_postgres' which you can check by firing up pgAdmin III and double clicking on 'PostgreSQL 9.0 (localhost:5432)'. Under this there should be:

`Databases (2)` which should list 2 databases called mydb_as_postgres and postgres

I called it `_as_postgres` because the -U postgres part of the command tells Postgres to create the database with the postgres user as it's owner, which you need to specify when you're not signed in as the postgres user. I have all of my files stored as 'Aaron' user though so if you're the same and want to keep developing your app when signed in as a different user you need to create a Postgres 'role' for that user now (see step 5).

5. Through pgAdmin III. Right-click on Login Roles (which for me is in):

Object Browser > Server Groups > Servers > PostgreSQL 9.0 (localhost:5432) > Login Roles

Right-click on Login Roles and select 'New Login Role...' in Role name, put in your operating system user name, which for me is Aaron, and fill in your password under the 'Role Privileges' tab. Then check all the boxes including 'Superuser' and 'Can create roles'.

![Picture](https://puu.sh/xtamM/6875701447.png)

![Picture](https://puu.sh/xtapD/47c0979ee9.png)

![Picture](https://puu.sh/xtarb/d7dbde6638.png)

6. You should now be able to create a new database without being signed in as the postgres user. Try typing:

`created database mydb_as_user`

![Picture](https://puu.sh/xtdkE/24d65c6a4d.png)

- - - -

# <a name="o"></a> Viewing the application

## <a name="p"></a> Cloning the application locally

- - - -

# <a name="s"></a> Editing the Application

* Make sure you're in the project folder in your terminal

* Open the application in your Atom text editor with the following command:

> $ atom .

>> Note that there is a period following the atom command. This is telling the terminal to open all of the files in your current directory under atom.
