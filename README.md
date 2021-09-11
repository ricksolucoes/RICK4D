[1]: https://github.com/ricksolucoes/RICK4D "Site do RICK4D"
[2]: https://github.com/ricksolucoes/RICKShowForm "Site do Show Form"
[3]: https://github.com/ricksolucoes/RICKLoading "Site do Loading"

# RICK4D

**RICK4D** is a collection of Delphi libraries, based mainly on those developed at **RICKSolutions** and may contain third-party libraries. Using delphi's Fluent Interface.

##  📘 Library Functions

- **ShowForm** it was inspired by [RICKShowForm][2] where you can open a form as well as perform procedures before and after the opening.
- **Loading** It was inspired by [RICKLoading][3], which features a loading screen that can be customized.

## ⚙️ Pre-requisites

1. Delphi FMX
2. Install the dependency [BOOS](https://github.com/ricksolucoes/boss) manager to facilitate the installation of the library.

## 💻 Installation

- By using BOOS
```shell
$ boss install https://github.com/ricksolucoes/RICK4D
```
- Manual Installation
  - Download the middleware:
    - [RICK4D][1]
    - [RICKShowForm][2]
    - [RICKLoading][3]
  - Add the following folders to your project, in <em>Project &gt; Options &gt; Resource Compiler &gt; Directories and Conditionals &gt; Include file search path
    - ``` ../RICK4D/src ```
    - ``` ../RICKShowForm/src ```
    - ``` ../RICKLoading/src ```

## ⚡️ How to use the project

### Sample Show Form

- How to show a form
```delphi  
  uses
    RICK4D;
  begin
    TRICK4D
      .New
        .ShowForm //Enable the Middleware
          .Formulary(TPageView2) //Inform the form's class
          .ExecuteBefore(BeforeShow) //Procedure to be performed before show form
          .ExecuteAfter(AfterShowClose) //Procedure to be performed after show form
          .ChangeDefaultMainForm //Set the specified form as the main form
        .Show;  //Open the formulary
  end;
```
- How to show two or more forms
```delphi  
  uses
    RICK4D;
  begin
    TRICK4D
      .New
        .ShowForm //Enable the Middleware
          .Formulary(TPageView2) //Inform the form's class
          .ExecuteBefore(BeforeShow) //Procedure to be performed before show form
          .ExecuteAfter(AfterShow) //Procedure to be performed after show form
        .Show //Open the formulary
        .ShowOther //Prepare new form to show
          .Formulary(TPageView3) //Inform the form's class
        .Show;  //Open the formulary}
  end;
```
