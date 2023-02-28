fluidPage(
 numericInput(inputId = "n",
 "Sample size", value = 25),
 plotOutput(outputId = "hist"),
 actionButton('exit', 'Exit', onclick = "setTimeout(function(){window.close();},250);", style='padding:50px; font-size:150%;')
 ,align='center'
) 
