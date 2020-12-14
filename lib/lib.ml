
module Comparison = struct
  type t =
    | LT
    | GT
    | EQ
    | LTE
    | GTE
  [@@deriving show]
end

