BeginPackage["BugTracker`"]

$BugTrackerDirectory::usage = "BugTrackerDirectory returns the directory location of the BugTracker package";
$BugTrackerCloudBase::usage = "$BugTrackerCloudBase returns the base directory of the cloud deployed BugTracker system";
DeployForms::usage = "DeployForms[] deploys all the forms located in the forms folder";

Begin["`Private`"]

$BugTrackerDirectory = DirectoryName[$InputFileName];
Protect[$BugTrackerDirectory];

$BugTrackerCloudBase = "bugtracker";

DeployForms[] := Module[{forms},
  forms = FileNames["*.wl", FileNameJoin[{$BugTrackerDirectory,"forms"}] ];
  Map[ Get, forms ]
  ]

End[]

EndPackage[]
