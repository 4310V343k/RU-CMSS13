/datum/language/common
	name = LANGUAGE_ENGLISH
	desc = "Common Earth English. The standard language of the United Americas."
	speech_verb = "говорит"
	key = "1"
	flags = RESTRICTED

	syllables = list("al", "an", "ar", "as", "at", "ea", "ed", "en", "er", "es", "ha", "he", "hi", "in", "is", "it", "le", "me", "nd", "ne", "ng", "nt", "on", "or", "ou", "re", "se", "st", "te", "th", "ti", "to", "ve", "wa", "all", "and", "are", "but", "ent", "era", "ere", "eve", "for", "had", "hat", "hen", "her", "hin", "his", "ing", "ion", "ith", "not", "ome", "oul", "our", "sho", "ted", "ter", "tha", "the", "thi", "tio", "uld", "ver", "was", "wit", "you")

/datum/language/common/get_spoken_verb(msg_end)
	switch(msg_end)
		if("!")
			return pick("объясняет","кричит","восклицает") //TODO: make the basic proc handle lists of verbs.
		if("?")
			return ask_verb
	return speech_verb


/datum/language/generated //parent type for languages with custom sound generation methods like chinese and japanese
	space_chance = 100 //uses a unique system

// Galactic common languages (systemwide accepted standards).
/datum/language/generated/japanese
	name = LANGUAGE_JAPANESE
	desc = "A notoriously complex language boasting an extensive grammatical system, three writing systems, and a new smattering of English loanwords. It has gained popularity due to high cultural contact in the 3WE, and finds use outside due to emigration."
	speech_verb = "выражается"
	color = "japanese"
	key = "2"


/datum/language/generated/chinese
	name = LANGUAGE_CHINESE
	desc = "The secondary language of the UPP, widespread around Asia and with a notable immigrant population in other parts of the world. The most spoken language in charted space."
	speech_verb = "шуо"
	ask_verb = "вен"
	exclaim_verb = "хан"
	color = "chinese"
	key = "8"

/datum/language/russian
	name = LANGUAGE_RUSSIAN
	desc = "An East Slavic language from Earth. The dominant tongue of the UPP and frequently used by Slavic minorities in the United Americas."
	speech_verb = "enunciates"
	color = "soghun"
	key = "3"

	syllables = list("al", "an", "bi", "vye", "vo", "go", "dye", "yel", "en", "yer", "yet", "ka", "ko", "la", "ly", "lo", "l", "na", "nye", "ny", "no", "ov", "ol", "on", "or", "slog", "ot", "po", "pr", "ra", "rye", "ro", "st", "ta", "tye", "to", "t", "at", "bil", "vyer", "yego", "yeny", "yenn", "yest", "kak", "ln", "ova", "ogo", "oro", "ost", "oto", "pry", "pro", "sta", "stv", "tor", "chto", "eto", "rus", "nar", "arya", "mol")

/datum/language/german
	name = LANGUAGE_GERMAN
	desc = "Standard High-German, a language spoken mostly in Central Europe, and by German immigrants elsewhere."
	speech_verb = "proclaims"
	ask_verb = "inquires"
	exclaim_verb = "bellows"
	color = "german"
	key = "4"

	syllables = list("die", "das", "wein", "mir", "und", "wir", "ein", "nein", "gen", "en", "sauen", "bin", "nein", "rhein", "deut", "der", "lieb", "en", "stein", "nein", "ja", "wolle", "sil", "bei", "der", "sie", "sch", "kein", "nur", "ach", "kann", "volk", "vau", "gelb", "grun", "macht", "zwei", "vier", "nacht", "tag")

/datum/language/spanish
	name = LANGUAGE_SPANISH
	desc = "The second most common language spoken in the UA, brought from marines from the Latin American territories and in the former southern USA."
	speech_verb = "dice"
	ask_verb = "cuestiona"
	exclaim_verb = "grita"
	color = "spanish"
	key = "5"

	syllables = list("ha", "pana", "ja", "blo", "que", "spa", "di", "ga", "na", "ces", "si", "mo", "so", "de", "el", "to", "ro", "mi", "ca", "la", "di", "ah", "mio", "tar", "ion", "gran", "van", "jo", "cie", "qie", "las", "locho", "mas", "no", "gui", "es", "mal")

/datum/language/commando
	name = LANGUAGE_TSL
	desc = "TSL is a modern technique with a combination of modified American sign language, tactical hand signals and discreet and esoteric code names for radios only known by elite commando groups."
	speech_verb = "намекает"
	ask_verb = "допрашивает"
	exclaim_verb = "приказывает"
	color = "commando"
	key = "l"

	syllables = list("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "!", "?", "@", "#" ,"*")
	sentence_chance = 50
	space_chance = 50

/datum/language/sainja //Yautja tongue
	name = LANGUAGE_YAUTJA
	desc = "The deep, rumbling, guttural sounds of the Yautja predators. It is difficult to speak for those without facial mandibles."
	speech_verb = "грохочет"
	ask_verb = "ропочет"
	exclaim_verb = "рычит"
	color = "tajaran"
	key = "s"
	flags = WHITELISTED

	syllables = list("!", "?", ".", "@", "$", "%", "^", "&", "*", "-", "=", "+", "е", "б", "у", "р", "|", "з", "~", ">")
	space_chance = 20

/datum/language/hellhound
	name = LANGUAGE_HELLHOUND
	desc = "A growling, guttural method of communication, only Hellhounds seem to be capable of producing these sounds."
	speech_verb = "рычит"
	ask_verb = "ворчит"
	exclaim_verb = "огрызается"
	color = "monkey"
	key = "h"

/datum/language/hellhound/scramble(input)
	return pick("Гррр...", "Гра!", "Гуррр...")

/datum/language/primitive
	name = LANGUAGE_MONKEY
	desc = "Ook ook ook."
	speech_verb = "верещит"
	ask_verb = "верещит"
	exclaim_verb = "визжит"
	color = "monkey"
	key = "9"

/datum/language/xenomorph
	name = LANGUAGE_XENOMORPH
	color = "xenotalk"
	desc = "The common tongue of the xenomorphs."
	speech_verb = "шипит"
	ask_verb = "шипит"
	exclaim_verb = "шипит"
	key = "x"
	flags = RESTRICTED

/datum/language/xenos
	name = LANGUAGE_HIVEMIND
	desc = "Xenomorphs have the strange ability to commune over a psychic hivemind."
	speech_verb = "сообщает"
	ask_verb = "сообщает"
	exclaim_verb = "сообщает"
	color = "xeno"
	key = "q"
	flags = RESTRICTED|HIVEMIND

//Make queens BOLD text
/datum/language/xenos/broadcast(mob/living/speaker, message, speaker_mask)
	if(iscarbon(speaker))
		var/mob/living/carbon/C = speaker

		if(!(C.hivenumber in GLOB.hive_datum))
			return

		C.hivemind_broadcast(message, GLOB.hive_datum[C.hivenumber])

/datum/language/apollo
	name = LANGUAGE_APOLLO
	desc = "The APOLLO Link is an AI subprocessor designed by SEEGSON, allowing for coordination of maintenance drones and Working Joes. WY denies claims the processor was stolen for ARES."
	color = "skrell"
	speech_verb = "states"
	ask_verb = "queries"
	exclaim_verb = "declares"
	key = "6"
	flags = RESTRICTED|HIVEMIND

/datum/language/apollo/broadcast(mob/living/speaker, message, speaker_mask)
	if(!speaker.hear_apollo())
		return

	if (!message)
		return

	///Font size
	var/scale = "message"
	if(isARES(speaker))
		scale = "large"

	var/message_start = "<i><span class='game say'>[name], <span class='name'>[speaker.name]</span>"
	var/message_body = "<span class='message'>broadcasts, \"[message]\"</span></span></i>"
	var/full_message = "<span class='[scale]'><span class='[color]'>[message_start] [message_body]</span></span>"


	GLOB.STUI.game.Add("\[[time_stamp()]]<font color='#FFFF00'>APOLLO: [key_name(speaker)] : [message]</font><br>")
	GLOB.STUI.processing |= STUI_LOG_GAME_CHAT
	log_say("[speaker.name != "Unknown" ? speaker.name : "([speaker.real_name])"] \[APOLLO\]: [message] (CKEY: [speaker.key]) (JOB: [speaker.job]) (AREA: [get_area_name(speaker)])")
	log_ares_apollo(speaker.real_name, message)
	for (var/mob/dead in GLOB.dead_mob_list)
		if(!istype(dead,/mob/new_player) && !istype(dead,/mob/living/brain)) //No meta-evesdropping
			var/dead_message = "<span class='[scale]'><span class='[color]'>[message_start](<a href='byond://?src=\ref[dead];track=\ref[speaker]'>F</a>) [message_body]</span></span>"
			dead.show_message(dead_message, SHOW_MESSAGE_VISIBLE)

	for (var/mob/living/listener in GLOB.alive_mob_list)

		if (!listener.hear_apollo())
			continue

		listener.show_message(full_message, SHOW_MESSAGE_VISIBLE)

	var/list/listening = hearers(1, src)
	listening -= src

	for (var/mob/living/M in listening)
		if(isSilicon(M) || M.hear_apollo())
			continue
		M.show_message("<i><span class='game say'><span class='name'>synthesised voice</span> <span class='message'>beeps, \"beep beep beep\"</span></span></i>",2)

/datum/language/event_hivemind
	name = LANGUAGE_TELEPATH
	desc = "An event only language that provides a hivemind for its users."
	speech_verb = "резонирует"
	ask_verb = "резонирует"
	exclaim_verb = "резонирует"
	color = "tajaran"
	key = "7"
	flags = RESTRICTED|HIVEMIND
