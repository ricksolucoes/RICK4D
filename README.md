# RICK4D <br>

<b>RICK4D</b> is a collection of Delphi libraries, based mainly on those developed at RICKSolutions and may contain third-party libraries. Using delphi's Fluent Interface.<p>

<ul>
  <li>Functions that contain this library:<p>
    <ul>
      <li><b><a href="#ShowForm">ShowForm</a></b> It was based on <a href="https://github.com/ricksolucoes/RICKShowForm">RICKShowForm</a> where you can open a form as well as perform procedures before and after the opening.
      <li><b><a href="#Loading">RICKLoading</a></b> is a Delphi library developed to present a loading screen.
    </ul>
</ul>

<br>

<h2>⚙️ Install</h2>
<p>*Pre-requisites Delphi FMX</p>

<li><strong>How to <a href="https://github.com/ricksolucoes/boss">Install</a> the BOSS dependency manager</strong>: <br>
<pre>https://github.com/ricksolucoes/boss</pre>

<ul>
<li><strong>Installation with BOSS</strong>: <br>
<pre>$ boss install https://github.com/ricksolucoes/RICK4D</pre><br>

<li><strong>Manual Installation</strong>: <br><ul>
<li> Download the middleware:<br>
  <ul>
  <li><b><a href="https://github.com/ricksolucoes/RICK4D">Install </a>RICK4D: </b><pre>https://github.com/ricksolucoes/RICK4D</pre>
  <li><b><a href="https://github.com/ricksolucoes/RICKShowForm">Install </a>RICKShowForm: </b><pre>https://github.com/ricksolucoes/RICKShowForm</pre>
  <li><b><a href="https://github.com/ricksolucoes/RICKLoading">Install </a>RICKLoading: </b><pre>https://github.com/ricksolucoes/RICKLoading</pre>
  </ul>
</ul>
  
</ul><br><li>
Add the following folders to your project, in <em>Project &gt; Options &gt; Resource Compiler &gt; Directories and Conditionals &gt; Include file search path</em></li>
<br><pre><code>
  ../RICK4D/src<br>
  ../RICKShowForm/src<br>
  ../RICKLoading/src
  
</code></pre>

<h2>⚡️ How to use the project</h2>

<div id="ShowForm"></div>
<ul> <li> <h3> How to use Show Form </h3>
<ul>
<li><strong>How to show a form</strong>: <br><br>

<pre><span class="pl-k">uses</span>

  RICK4D;

<span class="pl-k">implementation</span>

begin
  TRICK4D
    .New
      .ShowForm //Enable the Middleware
        .Formulary(TPageView2) //Inform the form's class
        .ExecuteBefore(BeforeShow) //Procedure to be performed before show form
        .ExecuteAfter(AfterShowClose) //Procedure to be performed after show form
        .ChangeDefaultMainForm //Set the specified form as the main form
      .Show;  //Open the formulary

end;</span></pre>

<li><strong>How to show two or more forms</strong>: <br><br>

<pre><span class="pl-k">uses</span>

  RICK4D;

<span class="pl-k">implementation</span>

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
end;</span></pre>
</ul></ul>

<div id="Loading"></div>
<ul> <li> <h3> How to use Loading </h3>
<ul>

  <li><strong>Use Loading</strong>: <br><br>

<pre><span class="pl-k">uses</span>

  RICK4D;

<span class="pl-k">implementation</span>

begin
  TRICK4D
    .New
      .Loading
        .Execute("Create Procedure");
end;
</span></pre>

<li><strong>Another way to perform Loading</strong>: <br><br>

<pre><span class="pl-k">uses</span>

  RICK4D;

<span class="pl-k">implementation</span>
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

</span></pre>

<li><strong>Modify the Loading message</strong>: <br><br>

<pre><span class="pl-k">uses</span>

  RICK4D;

<span class="pl-k">implementation</span>
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

</span></pre>

<li><strong>Customize the Loading screen using the interface/strong>: <br><br>

<pre><span class="pl-k">uses</span>

  RICK4D,
  RICK4D.Interfaces;

<span class="pl-k">implementation</span>
var
  LRICK4D: iRICK4D;
begin
  inherited;

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

</span></pre>
</ul></ul>
