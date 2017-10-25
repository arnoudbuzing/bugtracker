(* bug search api *)

CloudDeploy[
 APIFunction[
  { }
  ,
  Function[
   Module[ {object},
   object = FileNameJoin[{ $BugTrackerCloudBase , "data", "reports" }, OperatingSystem -> "Unix"] ];
   BugTracker`Private`index = CreateSearchIndex[ object ];
   DumpSave[ "index.mx", BugTracker`Private`index ];
   ]
  ]
  ,
CloudObject[ FileNameJoin[{ $BugTrackerCloudBase , "apis", "create_index" }, OperatingSystem -> "Unix"] ]
]
