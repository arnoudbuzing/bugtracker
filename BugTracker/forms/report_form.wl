(* bug reporting form *)

CloudDeploy[
 FormFunction[
 {
   { "summary", "Summary: "} -> "String",
   { "description", "Description: "} -> <| "Interpreter" -> "String", "Control" -> Function[  InputField[##,FieldSize->{80,10}] ] |>
 },
 Function[
  Module[{uuid,object},
  uuid = CreateUUID[];
  object = CloudObject[ FileNameJoin[{ $BugTrackerCloudBase , "data", "reports", uuid }, OperatingSystem -> "Unix"] ];
  CloudPut[
   <|
    "uuid" -> uuid,
    "reporter" -> $RequesterWolframID,
    "reporteruuid" -> $RequesterWolframUUID,
    "reporteraddress" -> $RequesterAddress,
    "reportergeolocation" -> FindGeoLocation[$RequesterAddress],
    "name" -> $RegisteredUserName,
    "summary" -> #summary,
    "description" -> #description
    |>,
   object
   ];
   HTTPRedirect[object]
  ]
 ],
 AppearanceRules -> <|
  "Title" -> "Report",
  "Description" -> "Report a bug"
 |>
],
CloudObject[ FileNameJoin[{ $BugTrackerCloudBase , "forms", "report" }, OperatingSystem -> "Unix"] ]
]
