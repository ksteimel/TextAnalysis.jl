module TestTokenizer
    using Base.Test
    using Languages
    using TextAnalysis
    using Compat

    sample_text = "this is some sample text"

    tkns = TextAnalysis.tokenize(
        Languages.EnglishLanguage,
        sample_text
    )

    @assert isequal(
        tkns,
        Compat.UTF8String["this", "is", "some", "sample", "text"]
    )

    #Testing punctuation separation 
    sample_text2 = "This is some more text. This text is similar to the last."
    
    tknsSplitPunct = TextAnalysis.tokenize(
        Languages.EnglishLanguage,
        sample_text2,
        splitPunct=true
    )
    @assert isequal(
        tknsSplitPunct,
        Compat.UTF8String["This", "is", "some", "more", "text", ".", "This", "text", "is", "similar", "to", "the", "last", "."]
    )
end
