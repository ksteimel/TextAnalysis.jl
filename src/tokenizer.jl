##############################################################################
#
# Split string into tokens on whitespace
#
##############################################################################

tokenize(::Type{S}, s::T) where {S <: Language, T<: AbstractString} = matchall(r"[^\s]+", s)
function tokenize(::Type{S}, s::T; splitPunct=false) where {S <: Language, T <: AbstractString}
    if splitPunct
        s = replace(s, r"(\p{P})", s" \g<0>")
    end
    tokens = matchall(r"[^\s]+", s)
    return tokens
end
