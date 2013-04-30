exception Invalid_objectId;;
exception Wrong_bson_type;;
exception Wrong_string;;
exception Malformed_bson;;

type t;;
type empty = 
  | NULL 
  | MINKEY
  | MAXKEY;;
type element;;

(** create an emapty bson doc *)
val make : unit -> t;;

val add_element : string -> element -> t -> t;;
val get_element : string -> t -> element;;
val remove_element : string -> t -> t;;

val encode : t -> string;;
val decode : string -> t;;

val to_simple_json : t -> string;;

val create_double : float -> element;;
val create_string : string -> element;;
val create_doc_element : t -> element;;
val create_list : element list -> element;;
val create_user_binary : string -> element;;
val create_objectId : string -> element;;
val create_boolean : bool -> element;;
val create_utc : int64 -> element;;
val create_null : unit -> element;;
val create_regex : string -> string -> element;;
val create_jscode : string -> element;;
val create_jscode_w_s : string -> t -> element;;
val create_int32 : int32 -> element;;
val create_int64 : int64 -> element;;
val create_minkey : unit -> element;;
val create_maxkey : unit -> element;;

val get_double : element -> float;;
val get_string : element -> string;;
val get_doc_element : element -> t;;
val get_list : element -> element list;;
val get_generic_binary : element -> string;;
val get_function_binary : element -> string;;
val get_uuid_binary : element -> string;;
val get_md5_binary : element -> string;;
val get_user_binary : element -> string;;
val get_objectId : element -> string;;
val get_boolean : element -> bool;;
val get_utc : element -> int64;;
val get_null : element -> empty;;
val get_regex : element -> (string * string);;
val get_jscode : element -> string;;
val get_jscode_w_s : element -> (string * t);;
val get_int32 : element -> int32;;
val get_int64 : element -> int64;;
val get_timestamp : element -> int64;;
val get_minkey : element -> empty;;
val get_maxkey : element -> empty;;


(*val create_generic_binary : string -> element;;
    val create_function_binary : string -> element;;
    val create_uuid_binary : string -> element;;
    val create_md5_binary : string -> element;;
    val create_timestamp : int64 -> element;;*)

