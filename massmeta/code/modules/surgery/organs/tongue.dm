/obj/item/organ/internal/tongue/lizard/modify_speech(datum/source, list/speech_args)
	var/static/regex/lizard_hiss = new("s+", "g")
	var/static/regex/lizard_hiSS = new("S+", "g")
	var/static/regex/lizard_kss = new(@"(\w)x", "g")
	var/static/regex/lizard_kSS = new(@"(\w)X", "g")
	var/static/regex/lizard_ecks = new(@"\bx([\-|r|R]|\b)", "g")
	var/static/regex/lizard_eckS = new(@"\bX([\-|r|R]|\b)", "g")

	var/static/regex/lizard_hiss2 = new("с+", "g")
	var/static/regex/lizard_hiSS2 = new("С+", "g")
	var/static/regex/lizard_hiss3 = new("ш+", "g")
	var/static/regex/lizard_hiSS3 = new("Ш+", "g")
	var/static/regex/lizard_shch = new(@"(\w|[А-Яа-яёЁ])щ", "g")
	var/static/regex/lizard_SHCH = new(@"(\w|[А-Яа-яёЁ])Щ", "g")
	var/message = speech_args[SPEECH_MESSAGE]
	if(message[1] != "*")
		message = lizard_hiss.Replace(message, "sss")
		message = lizard_hiSS.Replace(message, "SSS")
		message = lizard_kss.Replace(message, "$1kss")
		message = lizard_kSS.Replace(message, "$1KSS")
		message = lizard_ecks.Replace(message, "ecks$1")
		message = lizard_eckS.Replace(message, "ECKS$1")

		message = lizard_hiss2.Replace(message, "ссс")
		message = lizard_hiSS2.Replace(message, "ССС")
		message = lizard_hiss3.Replace(message, "шшш")
		message = lizard_hiSS3.Replace(message, "ШШШ")
		message = lizard_shch.Replace(message, "$1шшч")
		message = lizard_SHCH.Replace(message, "$1ШШЧ")
	speech_args[SPEECH_MESSAGE] = message
