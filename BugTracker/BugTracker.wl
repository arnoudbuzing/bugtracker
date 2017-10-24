BeginPackage["BugTracker`"]

DeployForms::usage = "DeployForms[] deploys all the forms located in the forms folder";

Begin["`Private`"]

DeployForms[] := Module[{forms},
  forms = FileNames["*.wl","forms"];
  forms
  ]
  
End[]

EndPackage[]
