(* bug search api *)

CloudDeploy[
 APIFunction[
  { "search" -> "String" }
  ,
  Function[ #search ]
],
CloudObject[ FileNameJoin[{ $BugTrackerCloudBase , "apis", "search" }, OperatingSystem -> "Unix"] ]
]
