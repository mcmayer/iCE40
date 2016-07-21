# Quirks #

## Synplify and 'direction' keyword ##
If you choose Synplify Pro as your synthesis tool don't use the variable *direction* in your designs. Synplify uses the [EDIF](https://en.wikipedia.org/wiki/EDIF) file format for storing netlists and in this format *direction* is a keyword. Unfortunately Synplify Pro does not escape such variable names which causes syntax errors in EDIF files.

-------------------------------------------------------------------------------
<div style="text-align:right">
<a href="https://creativecommons.org/licenses/by-sa/4.0/">CC BY-SA 4.0</a>
&copy; <a href="http://mcmayer.net">Markus Mayer</a>
</div>
