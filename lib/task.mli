type t
(**[t] is the type of a task *)

exception InvalidDateFormat
(** Exception raised when an invalid date format is encountered. Valid if it
    follows ["YYYY-MM-DD"] formatting.*)

exception InvalidTimeFormat
(** Exception raised when an invalid time format is encountered. Valid if it
    follows ["HH:MM:SS"] formatting.*)

exception InvalidProgress
(** Exception raised when an invalid progress value is provided. Valid if it is
    one of [["done"; "in-progress"; "todo"]] *)

(*Getter functions*)
val name : t -> string
val description : t -> string
val due_date : t -> string
val time : t -> string
val category : t -> string
val progress : t -> string

(*Setter functions*)
val set_name : t -> string -> unit
val set_description : t -> string -> unit

val set_due_date : t -> string -> unit
(**[set_due_date t date] raises [InvalidDateFormat] if [date] does not follow
   (YYYY-MM-DD) formatting.*)

val set_time : t -> string -> unit
(**[set_time t time] raises [InvalidTimeFormat] if [time] does not follow
   (HH:MM:SS) formatting.*)

val set_category : t -> string -> unit

val set_progress : t -> string -> unit
(**[set_progress t progress] raises [InvalidProgress] if [progress] is not one
   of [["done"; "in-progress"; "todo"]]*)

val create_task : string -> string -> string -> string -> string -> string -> t
(**[create_task n d date time c p] creates a new task with name: [n],
   description [d], due date [date], etc. Raises [InvalidDateFormat],
   [InvalidTimeFormat], or [InvalidProgress] if [date], [time], or [p]
   respectively are formatted incorrectly.*)
