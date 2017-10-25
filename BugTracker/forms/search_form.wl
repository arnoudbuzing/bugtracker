(* bug search form *)

CloudDeploy[
 FormFunction[
  { { "search", "Search: "} -> "String"}
  ,
  Function[ HTTPRedirect[#search] ],
 AppearanceRules -> <|
  "Title" -> "Search",
  "Description" -> "Search for bugs"
 |>
],
CloudObject[ FileNameJoin[{ $BugTrackerCloudBase , "forms", "search" }, OperatingSystem -> "Unix"] ]
]
