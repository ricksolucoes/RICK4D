# RICK4D
<p>
  <b>RICK4D</b> is a Delphi library with middleware, such as: <p>
  <ul>
    <li><b>RICKShowForm</b> This class runs a show on the form and can perform procedures before and after the show. <p>
  </ul>
  <p>Using delphi's Fluent Interface.
  <br> 
</p>

<h2>⚙️ Install</h2>
<p>*Pre-requisites Delphi FMX</p>

<li><strong>How to Install the BOSS dependency manager</strong>: <br>
<pre>https://github.com/ricksolucoes/boss</pre>

<ul>
<li><strong>Installation with BOSS</strong>: <br>
<pre>$ boss install https://github.com/ricksolucoes/RICK4D</pre><br>

<li><strong>Manual Installation</strong>: <br><ul>
<li> Download the middleware:<br>
  <ul>
  <li><b>RICK4D: </b><pre>https://github.com/ricksolucoes/RICK4D</pre>
  <li><b>RICKShowForm: </b><pre>https://github.com/ricksolucoes/RICK4D</pre>
  </ul>
</ul>
  
</ul><br><li>
Add the following folders to your project, in <em>Project &gt; Options &gt; Resource Compiler &gt; Directories and Conditionals &gt; Include file search path</em></li>
<pre><code>
  ../RICK4D/src<br>
  ../RICKShowForm/src<br>
</code></pre>

<h2>⚡️ How to use the project</h2>
<pre><code>
  RICK4D, <br>
  RICK4D.Interfaces
</code></pre>

<li><strong>How to show a form.</strong>: <br>

<pre><span class="pl-k">uses</span>

  RICK.ShowForm;

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

<li><strong>How to show two or more forms.</strong>: <br>

<pre><span class="pl-k">uses</span>

  RICK.ShowForm;

<span class="pl-k">implementation</span>

begin
  inherited;
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

