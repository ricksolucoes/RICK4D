[0]: https://github.com/ricksolucoes/boss "Site do BOOS"
[1]: https://github.com/ricksolucoes/RICKShowForm "Site do Show Form"
[2]: https://github.com/ricksolucoes/RICKLoading "Site do Loading"
[3]: https://github.com/ricksolucoes/RICKLibrarys "Site do Librarys"
[4]: https://github.com/ricksolucoes/RICKCheckConnection "Site do Check Connection"
[5]: https://github.com/ricksolucoes/RickFormat "Site do Format"
[6]: https://github.com/ricksolucoes/RICKDialog "Site do Dialogs"
[7]: https://github.com/ricksolucoes/bcrypt "Site do BCrypt"

# RICK4D

Framework that customizes a series of everyday processes.

RICK4D is intended to ease data transition in your system, assigning styles to components, performing connection checking, loading screen, custom message and more.

##  📘 Library Functions

- **[ShowForm](#sample-show-form)** it was inspired by [RICKShowForm][1] where you can open a form as well as perform procedures before and after the opening.
- **[Loading](#sample-loading)** It was inspired by [RICKLoading][2], which features a loading screen that can be customized.
- **[Librarys](#sample-library)** It was inspired by [RICKLibrarys][3], which generates validations with return.
- **[CheckConnection](#sample-check-connection)** It was inspired by [RICKCheckConnection][4], where it allows you to check the internet status and the type (mobile only) of the connection.
- **[Format](#sample-format)** It was inspired by [RICKFormat][5], where a mask is formatted in the Edit as it is typed.
- **[Dialog](#sample-Dialog)** It was inspired by [RICKDialog][6], where a customized dialog screen is presented.
- **[Encrypt HASH](#Encrypt-HASH)** It was inspired by [BCrypt][7], to help you hash passwords.

## ⚙️ Pre-requisites

1. Delphi FMX
2. Framework: [RICKShowForm][1], [RICKLoading][2], [RICKLibrarys][3], [RICKCheckConnection][4], [RickFormat][5], [RICKDialog][6], [BCrypt][7]
3. If you choose to use [BOOS][0] ```https://github.com/ricksolucoes/boss or https://github.com/HashLoad/boss```  the dependency manager, you will have the facility to install all frameworks that are [Pre-requisites](#pre-requisites) for the project.

## 💻 Installation

- By using BOOS
```shell
boss install https://github.com/ricksolucoes/RICK4D
```
- Manual Installation
  - Download the frameworks:
    - [RICK4D](#rick4d) ``` https://github.com/ricksolucoes/RICK4D ```
    - [RICKShowForm][1] ``` https://github.com/ricksolucoes/RICKShowForm ```
    - [RICKLoading][2] ``` https://github.com/ricksolucoes/RICKLoading ```
    - [RICKLibrarys][3] ``` https://github.com/ricksolucoes/RICKLibrarys ```
    - [RICKCheckConnection][4] ``` https://github.com/ricksolucoes/RICKCheckConnection ```
    - [RICKFormat][5] ``` https://github.com/ricksolucoes/RickFormat ```
    - [RICKDialog][6] ``` https://github.com/ricksolucoes/RICKDialog ```
    - [BCrypt][7] ``` https://github.com/ricksolucoes/bcrypt ```
  - Add the following folders to your project, in <em>Project &gt; Options &gt; Resource Compiler &gt; Directories and Conditionals &gt; Include file search path
    - ``` ../RICK4D/src ```
    - ``` ../RICKShowForm/src ```
    - ``` ../RICKLoading/src ```
    - ``` ../RICKLibrarys/src ```
    - ``` ../RICKCheckConnection/src ```
    - ``` ../RICKFormat/src ```
    - ``` ../RICKDialog/src ```
    - ``` ../bcrypt/src ```

## ⚡️ How to use the project
Example of using the **RICK4D** library

## Sample Show Form

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
## Sample Loading

- How to use Loading
```delphi  
  uses
    RICK4D;
  begin
    TRICK4D
      .New
        .Loading
          .Execute("Create Procedure");
  end;
```
- Another way to perform Loading
```delphi  
  uses
    RICK4D;
  begin
    TRICK4D
      .New
        .Loading
          .Execute(
            procedure
            begin
              // Delayed Command
              Sleep(500);
              TThread.Synchronize(TThread.Current,
                procedure
                begin
                  // Command to refresh the screen
                  ShowMessage('Command to refresh the screen here...');
                end);
            end);
    end;
```

- Modify the Loading message
```delphi  
  uses
    RICK4D;
  begin
    TRICK4D
      .New
        .Loading
          .Execute(
            procedure
            begin
              // Delayed Command
              Sleep(500);

              TThread.Synchronize(TThread.Current,
                procedure
                begin
                  TRICK4D.New.Loading.ChangeMessage('Changing message');
                  // Change the message to the user
                end);

              // Another command if there is one
              TThread.Sleep(1500);

              TThread.Synchronize(TThread.Current,
                procedure
                begin
                  // Command to refresh the screen
                  ShowMessage('Command to refresh the screen here...');
                end);
            end);
    end;
```
  
- Customize the Loading screen using the interface
```delphi  
  uses
    RICK4D,
    RICK4D.Interfaces;
  var
    LRICK4D: iRICK4D;
  begin
    LRICK4D:= TRICK4D.New;
    LRICK4D.Loading.DoMessage('Loading Modified'); //Changes the initial loading message
    LRICK4D.Loading.SourceSize(32); //Change the font size
    LRICK4D.Loading.SourceName('Segoe UI'); //Change the font type
    LRICK4D.Loading.SourceColor($FFF52121); //Change the font color
    LRICK4D.Loading.AnimationColor($FFF52121); //Changes the color of the animation
    LRICK4D.Loading.BackgroundColor($FF24CCC6); //Changes the color of the loading background
    LRICK4D.Loading.OpacityBackground(0.9); //Changes the opacity of the background;
    LRICK4D.Loading.OpacityAnimationText(0.6); //Change the opacity of text

    LRICK4D.Loading.Execute(
    procedure
    begin

      TThread.Sleep(500);

      TThread.Synchronize(TThread.Current,
      procedure
      begin
        LRICK4D.Loading.ChangeMessage('Changing message'); //Change the message to the user
      end);

      TThread.Sleep(1500);


      TThread.Synchronize(TThread.Current,
      procedure
      begin
        ShowMessage('Command to refresh the screen here...');
      end);
    end);
  end;
```

## Sample Library

- How to use the library to Show Keyboard
```delphi  
  uses
    RICK.Librarys;
  begin
    TRICKLibrarys.New.ShowKeyboard(edtData);
  end;
```
- How to use the library to Hide Keyboard
```delphi  
  uses
    RICK.Librarys;
  begin
    TRICKLibrarys.New.HideKeyboard(edtData);
  end;
```
- How to use the library to Other actions

```delphi  
  uses
    RICK4D,
    RICK4D.Interfaces;
  var
    LRICK4D: iRICK4D;
  begin
    inherited;
    LRICK4D := TRICK4D.New;

    case ListView.Tag of
      0:
        if LRICK4D.Librarys.StringInSet(edtData.Text.ToLower, ['ok', 'cancel']) then
        begin
          lblResult.Text:= Format('There is %s', [edtData.Text]);
        end
        else
        begin
          lblResult.Text:= Format('Does Not Exist %s', [edtData.Text]);
        end;
      1:
        lblResult.Text:= LRICK4D.Librarys.OnlyNumber(edtData.Text);
      2:
        lblResult.Text:= LRICK4D.Librarys.Mask('###-###', edtData.Text);
      3:
        lblResult.Text:= LRICK4D.Librarys.IEFormat(edtData.Text, 'RJ');
      4:
        lblResult.Text:= LRICK4D.Librarys.FormatValue(edtData.Text);
      5:
        lblResult.Text:= LRICK4D.Librarys.FormatDate(edtData.Text);
      6:
        lblResult.Text:= LRICK4D.Librarys.FormatPeso(edtData.Text);
    end;
  end;
```
## Sample Check Connection

- How to Check Connection
  
```delphi  
  uses
    RICK4D,
    RICK4D.Interfaces;
  var
    LRICK4D: iRICK4D;
  begin
    lblConn.Text:= 'Wait....';
    lblConn.TextSettings.FontColor:= $FF65A6D5;

    LRICK4D:= TRICK4D.New;
  
    //Returns if the connection is active (true) and if not, returns (false)
    if not LRICK4D.CheckConnection.ConnectionState then 
      Self.Fill.Color:= TAlphaColorRec.Red;

    lblConn.Text:= LRICK4D.CheckConnection.ConnectionType;
  end;
```

- How to Connection Type
  
```delphi  
  uses
    RICK4D;
  begin
    lblConn.Text:= TRICK4D.New.CheckConnection.ConnectionType;
  end;
```

- How to check url
  
```delphi  
  uses
    RICK4D,
    RICK4D.Interfaces;
  var
    LRICK4D: iRICK4D;
  begin
    inherited;
    lblConn.Text:= 'Wait....';
    lblConn.TextSettings.FontColor:= $FF65A6D5;

    LRICK4D:= TRICK4D.New;
    LRICK4D.CheckConnection.ClearURL.URL(edtTestLink.Text);
    LRICK4D.CheckConnection.ClearStausCode.StatusCode(200); //Status Code Defualt 400

    //Returns if the url is active (true) and if not, returns (false)
    if not LRICK4D.CheckConnection.URLState then 
      lblConn.TextSettings.FontColor:= TAlphaColorRec.Red;

    lblConn.Text:= LRICK4D.CheckConnection.ConnectionType;
  end;
```

## Sample Format
- How to use the format. Use Edit's "EditDataTyping" property
  
```delphi  
  uses
    RICK4D,
    RICK4D.Interfaces;
  var
    LRICK4D: iRICK4D;
  begin
    LRICK4D:= TRICK4D.New;
    inherited;
    case ListView.ItemIndex of
      0 : LRICK4D.Format.LandlinePhone(Sender); //Brazil's Telephone mask
      1 : LRICK4D.Format.Mobile(Sender); //Brazil's Mobile mask
      2 : LRICK4D.Format.CNPJ(Sender); //Brazil's CNPJ mask
      3 : LRICK4D.Format.CPF(Sender); //Brazil's CPF mask
      4 : LRICK4D.Format.CNPJorCPF(Sender); //Brazil's CPF or CNPJ mask
      5 : LRICK4D.Format.FormatExtra('rj').StateRegistration(Sender); // Brazil's State Registration mask
      6 : LRICK4D.Format.CurrencyValue(Sender); //Brazil's Currency Value
      7 : LRICK4D.Format.FormatExtra('R$').CurrencyValue(Sender); //Brazil's Currency value with acronym mask
      8 : LRICK4D.Format.ZipCode(Sender); // Brazil's ZIP CODE mask
      9 : LRICK4D.Format.DateValue(Sender); //Brazil's Date mask
      10: LRICK4D.Format.Weight(Sender); // Brazil's Weight mask
      11: LRICK4D.Format.FormatExtra('##.###-###-####>###').Customized(Sender); //custom mask
    end;
end;
```

 ## Sample Dialog
- How to use Info Dialog
  1. One Button
  ```delphi  
    uses
      RICK4D;
    begin
      TRICK4D
        .New
          .Dialog
            .CustomDialog
              .Info
                .Text('Your message here')
              .&End
              .Execute
                .Info
              .&End
            .&End
          .&End
    end;
  ```
  2. Two Button
  ```delphi  
    uses
      RICK4D;
    begin
      TRICK4D
        .New
          .Dialog
            .CustomDialog
              .Info
                .Text('Your message here')
              .&End
              .Button
                .First
                  .Text('Yes')
                  .Process(FirstResponseProcedure)
                .&End
                .Second
                  .Text('No')
                  .Process(SecondResponseProcedure)
                .&End
              .&End
              .Execute
                .Info
              .&End
            .&End
          .&End
    end;
  ```
- How to use Success Dialog
  1. One Button
  ```delphi  
    uses
      RICK4D;
    begin
      TRICK4D
        .New
          .Dialog
            .CustomDialog
              .Info
                .Text('Your message here')
              .&End
              .Execute
                .Success
              .&End
            .&End
          .&End
    end;
  ```
  2. Two Button
  ```delphi  
    uses
      RICK4D;
    begin
      TRICK4D
        .New
          .Dialog
            .CustomDialog
              .Info
                .Text('Your message here')
              .&End
              .Button
                .First
                  .Text('Yes')
                  .Process(FirstResponseProcedure)
                .&End
                .Second
                  .Text('No')
                  .Process(SecondResponseProcedure)
                .&End
              .&End
              .Execute
                .Success
              .&End
            .&End
          .&End
    end;
  ```
  
- How to use Success Dialog
  1. One Button
  ```delphi  
    uses
      RICK4D;
    begin
      TRICK4D
        .New
          .Dialog
            .CustomDialog
              .Info
                .Text('Your message here')
              .&End
              .Execute
                .Success
              .&End
            .&End
          .&End
    end;
  ```
  2. Two Button
  ```delphi  
    uses
      RICK4D;
    begin
      TRICK4D
        .New
          .Dialog
            .CustomDialog
              .Info
                .Text('Your message here')
              .&End
              .Button
                .First
                  .Text('Yes')
                  .Process(FirstResponseProcedure)
                .&End
                .Second
                  .Text('No')
                  .Process(SecondResponseProcedure)
                .&End
              .&End
              .Execute
                .Success
              .&End
            .&End
          .&End
    end;
  ```

- How to use Warnig Dialog
  1. One Button
  ```delphi  
    uses
      RICK4D;
    begin
      TRICK4D
        .New
          .Dialog
            .CustomDialog
              .Info
                .Text('Your message here')
              .&End
              .Execute
                .Warnig
              .&End
            .&End
          .&End
    end;
  ```
  2. Two Button
  ```delphi  
    uses
      RICK4D;
    begin
      TRICK4D
        .New
          .Dialog
            .CustomDialog
              .Info
                .Text('Your message here')
              .&End
              .Button
                .First
                  .Text('Yes')
                  .Process(FirstResponseProcedure)
                .&End
                .Second
                  .Text('No')
                  .Process(SecondResponseProcedure)
                .&End
              .&End
              .Execute
                .Warnig
              .&End
            .&End
          .&End
    end;
  ```
- How to use Error Dialog
  1. One Button
  ```delphi  
    uses
      RICK4D;
    begin
      TRICK4D
        .New
          .Dialog
            .CustomDialog
              .Info
                .Text('Your message here')
              .&End
              .Execute
                .Error
              .&End
            .&End
          .&End
    end;
  ```
  2. Two Button
  ```delphi  
    uses
      RICK4D;
    begin
      TRICK4D
        .New
          .Dialog
            .CustomDialog
              .Info
                .Text('Your message here')
              .&End
              .Button
                .First
                  .Text('Yes')
                  .Process(FirstResponseProcedure)
                .&End
                .Second
                  .Text('No')
                  .Process(SecondResponseProcedure)
                .&End
              .&End
              .Execute
                .Error
              .&End
            .&End
          .&End
    end;
  ```

- How to use Question Dialog
```delphi  
  uses
    RICK4D;
  begin
    TRICK4D
      .New
        .Dialog
          .CustomDialog
            .Info
              .Text('Your message here')
            .&End
            .Button
              .First
                .Process(FirstResponseProcedure)
              .&End
              .Second
                .Process(SecondResponseProcedure)
              .&End
            .&End
            .Execute
              .Question
            .&End
          .&End
        .&End;
  end;
```

- How to use Custom Dialog
```delphi  
  uses
    RICK4D;
  begin
    TRICK4D
      .New
        .Dialog
          .CustomMain
            .Background
              .Opacity(0.7)
              .Color(TAlphaColorRec.Blue)
            .&End
          .&End
          .CustomDialog
            .Background
              .Color(TAlphaColorRec.White)
            .&End
            .Rectangle
              .Width(Self.Width - 60)
              .Height(Self.Height - 120)
            .&End
            .Icon
              .Color(TAlphaColorRec.Coral)
            .&End
            .Title
              .Text('Question')
              .FontSize(24)
              .FontColor(TAlphaColorRec.Black)
            .&End
            .Info
              .Text('The policy of the War on Terror, undertaken by the United States at the beginning of the 21st century, culminated in one of the most important recent geopolitical conflicts. This conflict has become known as the')
              .FontSize(12)
              .FontColor(TAlphaColorRec.Darkcyan)
            .&End
            .Button
              .First
                .Color(TAlphaColorRec.Darkgray)
                .Text('Afghan War')
                .FontSize(14)
                .FontColor(TAlphaColorRec.White)
                .Process(FirstResponseProcedure)
              .&End
              .Second
                .Color(TAlphaColorRec.Darkgray)
                .Text('Syria''s War')
                .FontSize(14)
                .FontColor(TAlphaColorRec.White)
                .Process(SecondResponseProcedure)
              .&End
            .&End
            .Execute
              .Question
            .&End
          .&End
        .&End;
  end;
```


- How to use Interface
```delphi  
  uses
    RICK4D,
    RICK4D.Interfaces;
  var
    LRICK4D: iRICK4D;
  begin
    LRICK4D:= TRICK4D.New;

    //Customizing Background
    LRICK4D.Dialog
      .CustomMain
        .Background
          .Opacity(0.7)
          .Color(TAlphaColorRec.Blue)
        .&End
      .&End;

    //Customizing the Message Window Background
    LRICK4D.Dialog
      .CustomDialog
        .Background
          .Color(TAlphaColorRec.White)
        .&End
      .&End;

    //Customizing the Message Window
    LRICK4D.Dialog
      .CustomDialog
        .Rectangle
          .Width(Self.Width - 60)
          .Height(Self.Height - 120)
        .&End
      .&End;


    //Customizing Icon
    LRICK4D.Dialog
      .CustomDialog
        .Icon
          .Color(TAlphaColorRec.Coral)
        .&End
      .&End;

    //Customizing Title
    LRICK4D.Dialog
      .CustomDialog
        .Title
          .Text('Question')
          .FontSize(24)
          .FontColor(TAlphaColorRec.Black)
        .&End
      .&End;

    //Customizing message
    LRICK4D.Dialog
      .CustomDialog
        .Info
          .Text('The policy of the War on Terror, undertaken by the United States at the beginning of the 21st century, culminated in one of the most important recent geopolitical conflicts. This conflict has become known as the')
          .FontSize(12)
          .FontColor(TAlphaColorRec.Darkcyan)
        .&End
      .&End;

    //Customizing the First Button
    LRICK4D.Dialog
      .CustomDialog
        .Button
          .First
            .Color(TAlphaColorRec.Darkgray)
            .Text('Afghan War')
            .FontSize(14)
            .FontColor(TAlphaColorRec.White)
            .Process(FirstResponseProcedure)
          .&End
      .&End;

    //Customizing the Second Button
    LRICK4D.Dialog
      .CustomDialog
        .Button
          .Second
            .Color(TAlphaColorRec.Darkgray)
            .Text('Syria''s War')
            .FontSize(14)
            .FontColor(TAlphaColorRec.White)
            .Process(SecondResponseProcedure)
          .&End
        .&End
      .&End;

    //Display screen
    LRICK4D.Dialog
      .CustomDialog
        .Execute
          .Question
        .&End
      .&End;
  end;
```
 ## Encrypt HASH
  
- How to use Generate hash

```delphi 
  uses
    RICK4D;
  var
    LHash: string;
  begin
    LHash := TRICK4D.New.Encrypt.GenerateHash(password, cost, type);
  end;
```
  
 - How to use Compare hash
  
```delphi 
  uses
    RICK4D;
  var
    LVerify : Boolean;
  begin
    LVerify := TRICK4D.New.Encrypt.CompareHash(password, hash);
  end;
```
