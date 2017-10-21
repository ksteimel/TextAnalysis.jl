module TestSentenceTok
	using Base.Test
	using Languages
	using TestAnalysis
	using Compat
	
	sample_text = """\"Colorless green ideas sleep furiously\". Noam Chomsky's famous quote is emblazoned upon the minds of linguists the world over. What does this expression actually means?"
	"""

	sentences = TextAnalysis.sentencessplit(Languages.EnglishLanguage, sample_text)

	@assert isequal(
		tkns,
		Compat.UTF8String["\"Colorless green ideas sleep furiously\"", "Noam Chomsky's famous quote is emblazoned upon the minds of linguists the world over.", "What does this expression actually mean?"]
	)
end
