#' @include with_.R

# collate --------------------------------------------------------------------

set_collate <- function(locale) set_locale(c(LC_COLLATE = locale))[[1]]

#' Collation Order
#'
#' Temporarily change collation order by changing the value of the
#' `LC_COLLATE` locale.
#'
#' @template with
#' @param new `[character(1)]`\cr New collation order
#' @param .local_envir `[environment]`\cr The environment to use for scoping.
#' @export
with_collate <- with_(set_collate)

#' @rdname with_collate
#' @export
local_collate <- local_(set_collate)
