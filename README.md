[0]: https://github.com/ricksolucoes/boss "Site do BOOS"
[1]: https://github.com/ricksolucoes/RICKShowForm "Site do Show Form"
[2]: https://github.com/ricksolucoes/RICKLoading "Site do Loading"
[3]: https://github.com/ricksolucoes/RICKLibrarys "Site do Librarys"
[4]: https://github.com/ricksolucoes/RICKCheckConnection "Site do Check Connection"
[5]: https://github.com/ricksolucoes/RickFormat "Site do Format"
[6]: https://github.com/ricksolucoes/RICKDialog "Site do Dialogs"
[7]: https://github.com/ricksolucoes/bcrypt "Site do BCrypt"
[8]: https://github.com/ricksolucoes/RESTRequest4Delphi "Site do Rest"
[9]: https://github.com/ricksolucoes/RICKINI "Site do INI"

# RICK4D

Framework that customizes a series of everyday processes.

RICK4D is intended to ease data transition in your system, assigning styles to components, performing connection checking, loading screen, custom message and more.

##  📘 Framework Functions

- **[ShowForm](#sample-show-form)** it was inspired by [RICKShowForm][1] where you can open a form as well as perform procedures before and after the opening.
- **[Loading](#sample-loading)** It was inspired by [RICKLoading][2], which features a loading screen that can be customized.
- **[Librarys](#sample-library)** It was inspired by [RICKLibrarys][3], which generates validations with return.
- **[CheckConnection](#sample-check-connection)** It was inspired by [RICKCheckConnection][4], where it allows you to check the internet status and the type (mobile only) of the connection.
- **[Format](#sample-format)** It was inspired by [RICKFormat][5], where a mask is formatted in the Edit as it is typed.
- **[Dialog](#sample-Dialog)** It was inspired by [RICKDialog][6], where a customized dialog screen is presented.
- **[Encrypt](#Sample-Encrypt-HASH)** It was inspired by [BCrypt][7], to help you hash passwords.
- **[Rest](#Sample-Rest)** It was inspired by [RESTRequest4Delphi][8], to help you API to consume REST services written in any programming language.
- **[INI](#Sample-INI)** It was inspired by [RICKINI][9], to help you with writing and reading ini files.

## ⚙️ Pre-requisites

1. Delphi FMX
2. Framework: [RICKShowForm][1], [RICKLoading][2], [RICKLibrarys][3], [RICKCheckConnection][4], [RickFormat][5], [RICKDialog][6], [BCrypt][7], [RESTRequest4Delphi][8], [RICKINI][9]
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
    - [RESTRequest4Delphi][8] ``` https://github.com/ricksolucoes/RESTRequest4Delphi ```
    - [RICKINI][9] ``` https://github.com/ricksolucoes/RICKINI ```

  - Add the following folders to your project, in <em>Project &gt; Options &gt; Resource Compiler &gt; Directories and Conditionals &gt; Include file search path
    - ``` ../RICK4D/src ```
    - ``` ../RICK4D/src/Interfaces ```
    - ``` ../RICKShowForm/src ```
    - ``` ../RICKLoading/src ```
    - ``` ../RICKLibrarys/src ```
    - ``` ../RICKCheckConnection/src ```
    - ``` ../RICKFormat/src ```
    - ``` ../RICKDialog/src ```
    - ``` ../bcrypt/src ```
    - ``` ../restrequest4delphi/src ```
    - ``` ../RICKINI/src ```

## ⚡️ How to use the project
Example of using the **RICK4D** framework

## Sample Show Form
- How to show a form
  - Include file search path
      - ``` ../RICK4D/src/Interfaces/Show Form ```
      - ``` ../RICK4D/src/Contracts/Show Form ```
  1. How to use show a form
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
            .Show  //Open the formulary
          .&End;
    end;
  ```
  2. How to use show two or more forms
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
            .DoNewForm //Prepare new form to show
              .Formulary(TPageView3) //Inform the form's class
            .Show  //Open the formulary}
          .&End;
    end;
  ```

## Sample Loading
- How to Loading
  - Include file search path
      - ``` ../RICK4D/src/Interfaces/Loading ```
      - ``` ../RICK4D/src/Contracts/Loading ```
  1. How to use Loading
  ```delphi  
    uses
      RICK4D;
    begin
      TRICK4D
        .New
          .Form(Self)
            .Loading
              .Execute("Create Procedure")
            .&End;
    end;
  ```
  2. Another way to perform Loading
  ```delphi  
    uses
      RICK4D;
    begin
      TRICK4D
        .New
          .Loading
            .Form(Self)
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
                end)
          .&End;
    end;
  ```
  3. Modify the Loading message
  ```delphi  
    uses
      RICK4D;
    begin
      TRICK4D
        .New
          .Loading
            .Form(Self)
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
                end)
            .&End;
    end;
  ```
  4. Customize the Loading screen using the interface
  ```delphi  
    uses
      RICK4D,
      RICK4D.Interfaces;
    var
      LRICK4D: iRICK4D;
    begin
      LRICK4D:= TRICK4D.New;
      LRICK4D.Loading.Form(Self);
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
- How to use Library
  - Include file search path
      - ``` ../RICK4D/src/Interfaces/Library ```
      - ``` ../RICK4D/src/Contracts/Library ```
  1. Use to Show Keyboard
  ```delphi  
    uses
      RICK.Librarys;
    begin
      TRICKLibrarys.New.ShowKeyboard(edtData);
    end;
  ```
  2. Use to Hide Keyboard
  ```delphi  
    uses
      RICK.Librarys;
    begin
      TRICKLibrarys.New.HideKeyboard(edtData);
    end;
  ```
  3. Use to Other actions
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
  - Include file search path
      - ``` ../RICK4D/src/Interfaces/Check Connection ```
      - ``` ../RICK4D/src/Contracts/Check Connection ```
  1. How to uses Check Connection
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
  2. How to use Connection Type
  ```delphi  
    uses
      RICK4D;
    begin
      lblConn.Text:= TRICK4D.New.CheckConnection.ConnectionType;
    end;
  ```
  3. How to use check url
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
- How to format.
  - Include file search path
      - ``` ../RICK4D/src/Interfaces/Format ```
      - ``` ../RICK4D/src/Contracts/Format ```  
  1. How to use the format.
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
- How to Dialog
  - Include file search path
      - ``` ../RICK4D/src/Interfaces/Dialog ```
      - ``` ../RICK4D/src/Contracts/Dialog ```
  1. How to use Info Dialog
    1. One Button
    ```delphi  
      uses
        RICK4D;
      begin
        TRICK4D
          .New
            .Dialog
              .Form(Self)
                .MessageText('Your message here')
                .ExecuteDialogInfo
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
              .Form(Self)
                .MessageText('Your message here')
                  .MainButtonText('Yes')
                  .MainButtonProcess(FirstResponseProcedure)
                  .AuxiliaryButtonText('No')
                  .AuxiliaryButtonProcess(SecondResponseProcedure)
              .ExecuteDialogInfo
            .&End;
      end;
    ```
  2. How to use Success Dialog
    1. One Button
    ```delphi  
      uses
        RICK4D;
      begin
        TRICK4D
          .New
            .Dialog
              .Form(Self)
                .MessageText('Your message here')
                .ExecuteDialogSuccess
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
              .Form(Self)
                .MessageText('Your message here')
                  .MainButtonText('Yes')
                  .MainButtonProcess(FirstResponseProcedure)
                  .AuxiliaryButtonText('No')
                  .AuxiliaryButtonProcess(SecondResponseProcedure)
              .ExecuteDialogSuccess
            .&End;
      end;
    ```
  2. How to use Warnig Dialog
    1. One Button
    ```delphi  
      uses
        RICK4D;
      begin
        TRICK4D
          .New
            .Dialog
              .Form(Self)
                .MessageText('Your message here')
                .ExecuteDialogWarnig
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
              .Form(Self)
                .MessageText('Your message here')
                  .MainButtonText('Yes')
                  .MainButtonProcess(FirstResponseProcedure)
                  .AuxiliaryButtonText('No')
                  .AuxiliaryButtonProcess(SecondResponseProcedure)
              .ExecuteDialogWarnig
            .&End;
      end;
    ```
  4. How to use Error Dialog
    1. One Button
    ```delphi  
      uses
        RICK4D;
      begin
        TRICK4D
          .New
            .Dialog
              .Form(Self)
                .MessageText('Your message here')
                .ExecuteDialogError
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
              .Form(Self)
                .MessageText('Your message here')
                  .MainButtonText('Yes')
                  .MainButtonProcess(FirstResponseProcedure)
                  .AuxiliaryButtonText('No')
                  .AuxiliaryButtonProcess(SecondResponseProcedure)
              .ExecuteDialogError
            .&End;
      end;
    ```
  5. How to use Question Dialog
  ```delphi  
    uses
      RICK4D;
    begin
      TRICK4D
        .New
          .Dialog
            .Form(Self)
              .MessageText('Your message here')
                .MainButtonText('Yes')
                .MainButtonProcess(FirstResponseProcedure)
                .AuxiliaryButtonText('No')
                .AuxiliaryButtonProcess(SecondResponseProcedure)
            .ExecuteDialogQuestion
          .&End;
    end;
  ```
  6. How to use Custom Dialog
  ```delphi  
    uses
      RICK4D;
    begin
      TRICK4D
        .New
          .Dialog
            .Form(Self)
              .BackgroundOpacity(0.7)
              .BackgroundColor(TAlphaColorRec.Blue)
                .MessageBoxColor(TAlphaColorRec.White)
                .MessageBoxHeight(Self.Height - 120)
                .MessageBoxWidth(Self.Width - 60)
                  .IconColor(TAlphaColorRec.Coral)
                    .TitleText('Question')
                    .TitleFontSize(24)
                    .TitleFontColor(TAlphaColorRec.Black)
                      .MessageText('The policy of the War on Terror, undertaken by the United States at the beginning of the 21st century, culminated in one of the most important recent geopolitical conflicts. This conflict has become known as the')
                      .MessageFontSize(12)
                      .MessageFontColor(TAlphaColorRec.Darkcyan)
                        .MainButtonColor(TAlphaColorRec.Darkgray)
                        .MainButtonText('Afghan War')
                        .MainButtonFontSize(14)
                        .MainButtonFontColor(TAlphaColorRec.White)
                        .MainButtonProcess(FirstResponseProcedure)
                        .AuxiliaryButtonText('Syria''s War')
                        .AuxiliaryButtonFontSize(14)
                        .AuxiliaryButtonFontColor(TAlphaColorRec.White)
                        .AuxiliaryButtonProcess(SecondResponseProcedure)
            .ExecuteDialogQuestion
          .&End
    end;
  ```
  7. How to use Interface
  ```delphi  
  uses
    RICK4D,
    RICK4D.Interfaces;
  var
    LRICK4D: iRICK4D;
  begin
  lblResponse.Text:= EmptyStr;

  LRICK4D:= TRICK4D.New;

  //Parent form
  LRICK4D.Dialog
    .Form(Self);

  //Customizing Background
  LRICK4D.Dialog
    .BackgroundOpacity(0.7)
    .BackgroundColor(TAlphaColorRec.Blue);

  //Customizing the Message Window Background
  LRICK4D.Dialog
    .MessageBoxColor(TAlphaColorRec.White);

  //Customizing the Message Window
  LRICK4D.Dialog
    .MessageBoxWidth(Self.Width - 60)
    .MessageBoxHeight(Self.Height - 120);

  //Customizing Icon
  LRICK4D.Dialog
    .IconColor(TAlphaColorRec.Coral);

  //Customizing Title
  LRICK4D.Dialog
    .TitleText('Question')
    .TitleFontSize(24)
    .TitleFontColor(TAlphaColorRec.Black);

  //Customizing message
  LRICK4D.Dialog
    .MessageText('The policy of the War on Terror, undertaken by the United States at the beginning of the 21st century, culminated in one of the most important recent geopolitical conflicts. This conflict has become known as the')
    .MessageFontSize(12)
    .MessageFontColor(TAlphaColorRec.Darkcyan);

  //Customizing the First Button
  LRICK4D.Dialog
    .MainButtonColor(TAlphaColorRec.Darkgray)
    .MainButtonText('Afghan War')
    .MainButtonFontSize(14)
    .MainButtonFontColor(TAlphaColorRec.White)
    .MainButtonProcess(FirstResponseProcedure);

  //Customizing the Second Button
  LRICK4D.Dialog
    .AuxiliaryButtonColor(TAlphaColorRec.Darkgray)
    .AuxiliaryButtonText('Syria''s War')
    .AuxiliaryButtonFontSize(14)
    .AuxiliaryButtonFontColor(TAlphaColorRec.White)
    .AuxiliaryButtonProcess(SecondResponseProcedure);

  //Display screen
  LRICK4D.Dialog
    .ExecuteDialogQuestion;
  end;
  ```

## Sample Encrypt HASH
- How to use Encrypt hash
  - Include file search path
      - ``` ../RICK4D/src/Interfaces/Encrypt ```
      - ``` ../RICK4D/src/Contracts/Encrypt ```
  1. Generate hash
  ```delphi 
    uses
      RICK4D;
    var
      LHash: string;
    begin
      LHash := TRICK4D.New.Encrypt.GenerateHash(password, cost, type);
    end;
  ```
  2. Compare hash
  ```delphi 
    uses
      RICK4D;
    var
      LVerify : Boolean;
    begin
      LVerify := TRICK4D.New.Encrypt.CompareHash(password, hash);
    end;
  ```

## Sample Rest
- How to use Rest Method
  - Include file search path
      - ``` ../RICK4D/src/Interfaces/Rest ```
      - ``` ../RICK4D/src/Contracts/Rest ```
      - ``` ../RICK4D/src/Contracts/Session ```
      - ``` ../RICK4D/src/Contracts/Session/Entity ```           
  1. Get
  ```delphi  
    uses
      RICK4D,
      RICK4D.Types;
  var
    LResponse: IResponse;
  begin
    LResponse:= TRICK4D.New
      .Rest
        .BaseURL('http://localhost:8888/people')
        .AddHeader('HeaderName', 'HeaderValue')
        .AddParam('ParameterName', 'ParameterValue')
        .Accept('application/json')
      .Get;
  end;
  ```
  2. Post
  ```delphi  
    uses
      RICK4D,
      RICK4D.Types;
  var
    LResponse: IResponse;
  begin
    LResponse:= TRICK4D.New
      .Rest
        .BaseURL('http://localhost:8888/people')
        .Accept('application/json')
        .AddBody('{"name":"Rick","lastName":"Soluções"}')
      .Post;
  end;
  ```
  3. Put
  ```delphi  
    uses
      RICK4D,
      RICK4D.Types;
  var
    LResponse: IResponse;
  begin
    LResponse:= TRICK4D.New
      .Rest
        .BaseURL('http://localhost:8888/people/1')
        .Accept('application/json')
        .AddBody('{"name":"Rick","lastName":"Soluções"}')
      .Put;
  end;
  ```
  4. Patch
  ```delphi  
    uses
      RICK4D,
      RICK4D.Types;
  var
    LResponse: IResponse;
  begin
    LResponse:= TRICK4D.New
      .Rest
        .BaseURL('http://localhost:8888/people/1')
        .Accept('application/json')
        .AddBody('{"name":"Rick","lastName":"Soluções"}')
      .Patch;
  end;
  ```
  5. Patch
  ```delphi  
    uses
      RICK4D,
      RICK4D.Types;
  var
    LResponse: IResponse;
  begin
    LResponse:= TRICK4D.New
      .Rest
        .BaseURL('http://localhost:8888/people/1')
        .Accept('application/json')
      .Delete;
  end;
  ```
- You can set credentials using the **BasicAuthentication**, **Token** or **TokenBearer** method before making the first request:
```delphi
begin
  TRICK4D.New.Rest.BasicAuthentication('username', 'password');
  TRICK4D.New.Rest.Token('token-type ' + token);
  TRICK4D.New.Rest.TokenBearer(token);
end;
```

- **Parameters**
  * `AOwns` - Indicates who is responsible for destroying the passed OBJECT as a parameter;

- **Automatically Renew Token Bearer**
  * `RefreshTokenBearerAutomatically` - Indicates whether you will work with automatic token renewal;
  * `FieldByNameAccessToken` - Indicates the name of the field that has the access token;
  * `RICK4D.Session.TSession.GetInstance.TOKEN.ACCESS` - This session stores the access token;
  * `FieldByNameRefreshToken` - Indicates the name of the field that has the Refresh token;
  * `RICK4D.Session.TSession.GetInstance.TOKEN.REFRESH` - This session stores the refresh token;

## Sample INI
- How to use Rest Method
  - Include file search path
      - ``` ../RICK4D/src/Interfaces/File INI ```
      - ``` ../RICK4D/src/Contracts/File INI ```
  1. Create the File
  ```delphi  
    uses
      RICK4D;
   begin
    TRICK4D
      .New
        .INI
          .FilePath(ExtractFilePath(ParamStr(0)))
          .FileName(ChangeFileExt(ExtractFileName(ParamStr(0)), EmptyStr))
        .OpenINI
          .Section('String')
            .Identify('Name')
            .ADD('RICK4D')
          .Section('Float')
            .Identify('Value')
            .ADD(1.12)
          .Section('Date')
            .Identify('Now')
            .ADD(Now)
          .Section('Boolean')
            .Identify('Message')
            .ADD(True)
          .Section('Integer')
            .Identify('Age')
            .ADD(13)
          .Section('Stream')
            .Identify('Photo')
            .ADD('No generate')
        .&End
  end;
  ```
  2. Read the File
  ```delphi  
    uses
      RICK4D,
      RICK4D.Interfaces,
      RICK4D.INI.Interfaces;
  var
    LINI : iRICK4DINI<iRICK4D>;
  begin
    LINI:= TRICK4D
        .New
          .INI
            .FilePath(ExtractFilePath(ParamStr(0)))
            .FileName(ChangeFileExt(ExtractFileName(ParamStr(0)), EmptyStr))
          .OpenINI;

      mmResponse.Lines.Add('String     :  ' + LINI.Section('String').Identify('Name').Read(EmptyStr));
      mmResponse.Lines.Add('Float       :  ' + LINI.Section('Float').Identify('Value').Read(0.00).ToString);
      mmResponse.Lines.Add('Date       :  ' + DateTimeToStr(LINI.Section('Date').Identify('Now').Read(Now)));
      mmResponse.Lines.Add('Boolean  :  ' + LINI.Section('Boolean').Identify('Message').Read(True).ToString);
      mmResponse.Lines.Add('Integer    :  ' + LINI.Section('Integer').Identify('Age').Read(0).ToString);
      mmResponse.Lines.Add('Stream    :  ' + LINI.Section('Stream').Identify('Photo').Read(EmptyStr));
  end;
  ```
