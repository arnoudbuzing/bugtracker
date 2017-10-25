(* bug search api *)

CloudDeploy[
 APIFunction[
  { }
  ,
  Function[
   Get["index.mx"];
   UpdateSearchIndex[ BugTracker`Private`index ];
   DumpSave[ "index.mx", BugTracker`Private`index ];
   ]
],
CloudObject[ FileNameJoin[{ $BugTrackerCloudBase , "apis", "update_index" }, OperatingSystem -> "Unix"] ]
]
