(* bug reporting form *)

CloudDeploy[
FormFunction[
 { { "summary", "Summary: "} -> "String"},
 Function[
  #summary
 ],
 AppearanceRules -> <|
  "Title" -> "Report",
  "Description" -> "Report a bug"
 |>  
],
CloudObject[ FileNameJoin[{ $BugTrackerCloudBase , "report" }, OperatingSystem -> "Unix"] ]
]
