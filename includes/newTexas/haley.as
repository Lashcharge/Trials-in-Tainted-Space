﻿/*Leithan futa with a custom milker in the northeast of the stables. Treated (like Zephyr), has kui-tan gene mods and a horsecock. Named Haley.*/
/*Written by Wsan, the taurmastah*/

//ONLY SEEN BY CHARACTERS WITH GENITALS! - Complete lack of support for neuterbitches.

//From midsquare:
//9999 You can hear a dull thudding coming from one of the stalls to the east.

public function haleyRoomBonus():Boolean
{
	if(flags["MET_HALEY"] == undefined) 
	{
		firstTimeMeetingHaley();
		return true;
	}
	else
	{
		enteringHaleysStallRepeat();
		return true;
	}
	return false;
}

public function showHaley():void
{
	if(flags["MET_HALEY"] != undefined) showName("\nHALEY");
	else showName("HERM\nCENTAUR");
	showBust("HALEY");
}
public function getHaleyPregContainer():PregnancyPlaceholder
{
	var pp:PregnancyPlaceholder = new PregnancyPlaceholder();
	if(!pp.hasCock()) pp.createCock();
	pp.shiftCock(0, GLOBAL.TYPE_EQUINE);
	pp.cocks[0].cLengthRaw = 36;
	pp.createPerk("Fixed CumQ", 500000, 0, 0, 0);
	
	return pp;
}

//Entering stall:
public function firstTimeMeetingHaley():void
{
	showHaley();
	author("Wsan");
	output("You open the stall door to find a veritable feast for the senses. Heady pheromones engulf you immediately, pervading the air and settling in your mind like someone draped a warm blanket over your brain. A scant few feet away, a naked Leithan girl is <i>pummeling</i> what looks to be some kind of milker machine built for taurs. Her entire granite-colored body is covered in a sheen of sweat, beads of it running over her chitinous armor every time she thrusts into the machine. You can sense her desperation in her actions, her back and arms squeezing and flexing every time a powerful buck of her hips sends her long yellow hair flying. She grunts and moans with every insertion and standing behind her, you dimly wonder how it's even possible you didn't hear her cries of effort from outside. Her eyes are squeezed shut and she's tightly gripping the steel pole that secures the milker, her heavy breasts swaying every time she fucks the machine.");
	//Non-treated PC:
	if(!pc.isTreated())
	{
		output("\n\nWhat really catches your attention (for better or worse), though, is her balls. They are <i>huge</i>, hanging between her legs like scaled watermelons jostling in a bag. You can practically hear them pumping cum through her cock over her frustrated groans and exhalations, but they never seem to shrink. It takes a few seconds for you to realize you've just been watching her wreck this machine.");
	}
	//Treated femPC
	else if(pc.isBimbo())
	{
		output("\n\nYour mouth hangs open, your eyes stuck to her massively swollen balls swinging between her legs. They hang suspended by her scaled sack, each thrust making them sway tantalizingly in front of you like delicious, gropeable melons. You can almost hear them pumping cum through her cock over her frustrated groans and exhalations, but they never seem to shrink. It takes a few seconds for you to realize you've just been standing here visualizing the nonstop throb and flow of cum through her overtaxed cock. The poor girl obviously needs some help, and there's nothing you're better at than helping someone blow their load.");
		pc.lust(5);
	}
	processTime(1);
	//[Back out] [Greet] [WatchMore]
	pc.lust(10);
	clearMenu();
	addButton(0,"Back Out",backOutFromHaley,undefined,"Back Out","Time to leave.");
	addButton(1,"Greet",greetDatTaurBitch,undefined,"Greet","Say hi.");
	addButton(2,"Watch More",keepWatchingDatTaurSlootPoundHerMilkyMilkMaker,undefined,"Watch More","Watch the amazonian Leithan girl fuck the milker.");
}

//[Back out]
//Time to leave.
public function backOutFromHaley():void
{
	clearOutput();
	author("Wsan");
	output("She seems occupied as it is, and frankly you're not sure you want to get in between a creature that frustrated and release, especially one as big as a leithan. You quietly shut her stall door and pad back into the stables.");
	clearMenu();
	addButton(0,"Next",move,rooms[currentLocation].westExit);
}

//[Greet]
//Say hi.
public function greetDatTaurBitch():void
{
	clearOutput();
	showHaley();
	author("Wsan");
	output("You step forward, raising your voice above the din of lewdness echoing in the stall to say hi. She turns her humanoid torso to look at you, but barely even slows her pace.");
	output("\n\n<i>“H-hey there,”</i> she huffs, bordering on being out of breath, <i>“any particular reason you've graced me with your presence? Or do you just like to watch horny leithan girls?”</i>");
	output("\n\nBit of an attitude on this one, although you suppose given the circumstances she can be forgiven. Seeing your raised eyebrow, she shakes her head.");
	output("\n\n<i>“Sorry. But you try perpetually chasing the orgasm that never really comes and see how frustrated you end up.”</i>");
	output("\n\nShe sighs and withdraws... and withdraws... and withdraws her cock from the milker. For a moment there you were questioning just how long the full length was. As she turns towards you, you guess you've got your answer: way too big to realistically fit in anyone that isn't a 'taur themselves. Ironic that someone on New Texas could end up sexually frustrated, but you've heard of cases like this before. She dryly observes the direction of your decidedly unsubtle gaze and barks a short, harsh laugh.");
	output("\n\n<i>“Yeah, that tends to be the second thing people notice about me. Doesn't take a genius to figure out the first.”</i> She says, flicking a thumb towards her rear, her swollen balls still visible behind the underslung length of her drooling erection. Curiosity gets the better of you, and you can't help but ask. How did she even end up in this situation?");
	output("\n\n<i>“A long story short – gene mods. I'm actually not even originally Leithan; I always wanted to be a breeding stud, fucking broodmares into submission, but, well... Somewhere along the way the mods kind of got away from me.”</i> She sighs. <i>“Even the sturdiest of cows here can't handle how much cum I produce for too long, and that's only the ones I can fit into in the first place. It's really just Ellie, and being blown up like a blimp tends to be counter-productive when you're trying to run a shop. Not to mention that it just... never ends. Again, thanks to the gene mods. So I'm pretty much shit out of luck.”</i>");
	output("\n\nWhat exactly did she use? You note that even as the two of you are talking, her cock is still throbbing and wobbling underneath her, spraying long ropes of jizz across the hay-strewn floor of the stall. It doesn't look like she even notices.");
	output("\n\n<i>“Well, the ones that actually give me trouble are the kui-tan mods. I don't even remember how many I took; it was kind of a blur, really. What I do know is that I'm not allowed to use the regular milker,”</i> she grumbles, <i>“on account of flooding the ranch too many times. So, that's why I'm here. Why are <i>you</i> here?”</i>");
	pc.lust(5);
	processTime(3);
	//[Leave] [Help]
	clearMenu();
	addButton(0,"Leave",leaveDatHaleyBitchToHerFate,undefined,"Leave","Nothing you can do about this one.");
	if(!pc.hasGenitals()) addDisabledButton(1,"Help","Help","You can't do that without genitals.");
	else addButton(1,"Help",offerToHelpHaleyShedSomeWeight,undefined,"Help","Offer to help her shed some weight! Probably going to be messy.");
}

//[Leave]
//Nothing you can do about this one.
public function leaveDatHaleyBitchToHerFate():void
{
	clearOutput();
	showHaley();
	author("Wsan");
	output("You express your condolences for her situation, but explain you have places to be. She shrugs.");
	output("\n\n<i>“Not like I asked you for help anyway.”</i>");
	output("\n\nShe turns back to the machine, and you leave as she mounts it and gets back to work. The dull thuds of impact follow you into the hallway.");
	//move back to square whatever
	clearMenu();
	addButton(0,"Next",move,rooms[currentLocation].westExit);
}

//[Help]
//Offer to help her shed some weight! Probably going to be messy.
public function offerToHelpHaleyShedSomeWeight():void
{
	clearOutput();
	showHaley();
	author("Wsan");
	output("You explain you thought you could help her out with her problem. She eyes you critically.");
	output("\n\n<i>“You? What makes you think...”</i>");
	output("\n\nHer voice trails off as her gaze roves over your body from top to bottom. You can tell she's thinking about burying her cock in you, filling you with spunk until you're choking it up like you're an overfull sex toy. The flow of spunk splattering across the floor increases until it looks like she's cumming, her pants coming faster as the floor underneath her just gets wetter and wetter.");
	pc.lust(5);
	//PC non-taur Male:
	if(!pc.isTaur() && pc.hasCock())
	{
		output("\n\nDespite the show, she forcefully shakes her head.");
		output("\n\n<i>“You'd never be able to handle it. Anyone who isn't at least a 'taur won't last more than five minutes before they're coughing up my spunk or swollen to the point of immobility. Or both. Trust me, you'd be better off leaving.”</i>");
		output("\n\nShe turns back to the machine.");
		//[Leave] [Wait...]
		clearMenu();
		addButton(0,"Leave",leaveDatHaleySlutShit,undefined,"Leave","Follow her advice.");
		addButton(1,"Wait",waitForHaleyToGoToTownOnYou,undefined,"Wait","You still want it.");
	}
	//C non-taur female
	else if(!pc.isTaur() && pc.hasVagina())
	{
		output("\n\nDespite the show, she forcefully shakes her head.");
		output("\n\n<i>“You'd never be able to handle it. Anyone who isn't at least a 'taur won't last more than five minutes before they're coughing up my spunk or swollen to the point of immobility. Or both. Trust me, you'd be better off leaving.”</i>");
		output("\n\nShe turns back to the machine.");
		//[Leave] [Wait...]
		clearMenu();
		addButton(0,"Leave",leaveDatHaleySlutShit,undefined,"Leave","Follow her advice.");
		addButton(1,"Wait",waitForHaleyToGoToTownOnLadyNonTaurs,undefined,"Wait","You still want it.");
	}
	//PC female Treated taur:
	else if(pc.isTaur() && pc.isTreated() && pc.hasVagina() && pc.isBimbo() && pc.biggestTitSize() >= 1)
	{
		output("\n\n<i>“You. You're treated? A treated mare?”</i> Her voice rises in excitement as she speaks, her dick bouncing beneath her belly. <i>“You are the sexiest bitch I've ever laid eyes on. You want this, right?”</i>");
		output("\n\nYour eyes drop from her pretty face back to her behemoth cock, still hosing down the ground beneath her. You spend a few seconds just watching the flared head flex and relax every time another shot of her seed flies into the floor before you hear her moan, looking back up to find her squeezing her own nipples with a lusty fire in her eyes.");
		output("\n\n<i>“You are going to be fucking <i>perfect</i>.”</i>");
		output("\n\nShe trots over to you and pushes your shoulders down, the hint pretty obvious to a Treated girl. You fold your legs and lie down, nuzzling the sensitive head of her penis while it hoses your clothed tits with spunk.");
		output("\n\n<i>“Put your mouth on it, baby... start swallowing.”</i> She groans from above you. <i>“Lose the top too, silly girl.”</i>");
		if(!pc.isChestExposed()) 
		{
			output("\n\nYou strip out of your [pc.upperGarments]");
		}
		else output("\n\nYou arch your back");
		output(", letting her warm jizz coat your [pc.breasts] in a pearly-white glaze. Softly wrapping your hand around the underside of her massive rod, you guide the head to your [pc.lips] and kiss it. The femtaur sings your praises in the form of ecstatic gasps and moaned fragments of sentences above you, her underside shivering with pleasure. Thick, warm ropes of creamy jizz splatter the back of your throat and slide into your stomach as you lightly slide your tongue around her cockhole, enticing her to fill you further.");
		output("\n\n<i>“Oh my <i>god</i>. You must be an angel. What's your name, girl?”</i>");
		output("\n\nYou take your mouth off her cock, gulping her spunk down before answering. <i>“[pc.name].”</i>");
		output("\n\n<i>“Lovely to m-!”</i> Her voice cuts off sharply when you put your lips back on her cock and suckle her head, and the rest of her sentence comes in gasps. <i>“-eet... meet you, [pc.name]. I-I'm – unnngh! - I'm Haley...”</i>");
		output("\n\nHaley closes her eyes and raises her head to look at the ceiling, her chest heaving as she just stands still and enjoys what you're doing to her. You have zero chance of fitting her in your mouth, but there's nothing stopping you from french-kissing her equine cockhead. Her breathing is loud and labored above you, each loving stroke of your tongue across her urethra rewarding you with a heavy spurt of jism. Your task is interrupted suddenly by Haley taking a step back, and you look up quizzically.");
		output("\n\n<i>“Sorry [pc.name], but any longer and I'd actually cum in your mouth.”</i>");
		output("\n\nYou absentmindedly lick your lips and tell her you wouldn't mind, and she laughs good-naturedly.");
		output("\n\n<i>“Sure, you love it now, but you might think differently when you're drowning. C'mon, get up and turn around.”</i>");
		output("\n\nYou obediently get to your [pc.feet], turning around");
		if(pc.tailCount > 0) output(" and lifting your tail");
		output(" to present yourself. ");
		if(!pc.isAssExposed() || !pc.isCrotchExposed()) output("Haley tugs down your [pc.lowerGarments] to expose your [pc.asshole] and [pc.vaginas] ");
		else output("Haley seems delighted to have your [pc.asshole] and [pc.vaginas] exposed ");
		output("to the warm, pheromone-filled air of the stall. ");
		if(pc.totalVaginas() > 1) output("The closest vagina");
		else output("Your vagina");
		output(" is already wet, winking at the futa femtaur while it fills with moisture. She casually sinks two fingers into it in response, sending thrills of pleasure up your spine when she starts to gently pump you. Her other hand seizes your buttcheek, pulling it to the side and watching it wobble back into place.");
		output("\n\n<i>“Oh, I am gonna fucking <i>wreck</i> you. I've waited so long to meet another mare that can handle me,”</i> she groans in need, her grip on your [pc.butt] becoming tighter as she prepares to mount you, <i>“I'll make sure you love this every bit as much as I'm going to.”</i>");
		output("\n\nShe springs upward, catapulting herself onto your rear and grabbing your hindquarters with her front legs. You can already feel the head of her massive, bloated cock covering your ass and legs with hot jizz before she aligns it with your entrance. Rivulets of spunk run over the lips of your pussy to drip from your [pc.belly]. An immense pressure exerts itself on your ass when she begins to push herself in. You moan a little when you feel a spurt of sperm shoot straight into your asshole, a steady flow soon following. The staggering force of Haley's bloated cockhead compels you to brace yourself against the stall's wall if she wants a chance of getting into your ass. She snorts from above you, sounding every bit like the impatient stallion about to mount her breeding mare.");
		output("\n\n<i>“Good girl – hold yourself riiiight there... You're gonna get it so fucking-!”</i> She fiercely bucks her powerful hips, the sensation of your asshole being stretched wide immediately accompanied by the feeling of being utterly full. It feels like all the air in your lungs has been sucked away, and you struggle to find the rhythm to take some shallow breaths and try to steady yourself. <i>Fuck</i>, she feels even bigger than she looks. Anything less than a full-sized Treated 'taur wouldn't be able to handle this at all. She scrabbles up your body in little jerks and thrusts, her massive cumvein intermittently bulging pleasantly against your walls.");
		pc.buttChange(1500);
		output("\n\n<i>“Fuck! I have missed this so much,”</i> she pants laboriously, slowly but inexorably advancing further up your tauric body, <i>“a real mare is <i>so</i> much better than the machine. Hold on tight babe, I'm t-trying to get it all in.”</i>");
		output("\n\nHolding on tight is already what you're doing, owing to the gigantic, throbbing length embedded in your body. It feels heavenly to have it inside you and spewing spunk, each pulse eliciting jolts of pleasure from your distended ass. You're pretty sure you can feel her heartbeat through it, too – there's something to be said about her dick giving life, but all you're really interested in is getting more of it inside you. She's definitely the one in control, but you just can't help yourself. You bite your lip and push yourself backwards off the stall, gasping when you successfully drive her giant cock further into you, your asshole stretching just a bit more as it swallows her thickened base.");
		output("\n\nOh, <i>[pc.name]</i>... you really <i>are</i> an angel.”</i>");
		output("\n\nThe experience has you panting in lust – the complete loss of control, the utter helplessness when she spears you just a little bit further onto her length, the feeling of her warm seed filling you from bottom to top – all of them have your [pc.vaginas] dripping wet. Each thrusting motion from above rubs you in the most amazing way, and you can't help but groan as your puss");
		if(pc.totalVaginas() > 1) output("ies");
		else output("y");
		output(" flexes and contracts, trying to coax a load out of the stallion cock that isn't there.");
		output("\n\n<i>“I'm gonna cum soon,”</i> Haley gasps from above you, her hips bucking wildly, <i>“I hope you're ready, [pc.name]!”</i>");
		output("\n\nYou've never been more ready to take it. Your body is just barely able to handle her; even the largest 'taur wasn't built to handle this, but the Treatment helps you focus on how blissfully good it feels. Each buck of her significant hips slaps you in the butt with her massive balls, her grunts and groans increasing in intensity until you're certain she can't get any deeper in you – you're almost suspended on her absurd equine length, being pushed up against the wall when she begins to shake.");
		output("\n\n<i>“Unnnh! Uh! U-”</i>");
		output("\n\nHer voice comes in halting grunts and then stops completely as you feel her entire body flex, her six legs hugging your swollen midriff as tight as she possibly can. The equine cock inside you follows suit, stiffening and swelling to accommodate for the massive outflow of spunk being dumped into your stomach by the bucketful. You can feel the flare of it stretching you out inside with each gout of jizz, each throb of the iron-hard length pushing your guts downwards. You hardly notice the feeling of her balls pumping hard, pushed right up against your ass.");
		output("\n\n<i>“Oh... Oh. God. Stay still... Stay still and take it. Good girl. Goooood girl.”</i> Haley's voice comes in a breathless whisper full of wonder, as if she's marveling at your miraculous subservience. You do your best to follow her instruction while she quivers and gasps quietly on top of you, your stomach shaking underneath you with the weight its taking on so rapidly. She groans luxuriously and wraps her arms tightly around the lower half of your humanoid form, just laying her head on your shoulder and moaning quietly into your ear.");
		output("\n\nYou pant in equal parts pleasure and exertion, your sensitive insides being massaged so frequently by the massive loads travelling down her shaft that you can't help but suffer multiple orgasms just from receiving the copious amounts of jizz. It hasn't even been more than a few seconds of you shaking on the end of her cock before the liquid weight of her cum starts to really weigh you down, the roiling pleasure in your tensed lower half giving way to the warmth of her seed. The flow is unending, and her heavy jism coating your insides means you're scarcely able to stay standing, your hands curling into tightly-balled fists against the stall. Haley coos to you comfortingly.");
		output("\n\n<i>“Do you want it in your pussy too, girl?”</i>");
		output("\n\nYou nod as forcefully as you can manage on the edge of being insensate. Softly stroking your cheek, the affectionate gesture completely at odds with her cock mercilessly ejaculating into you, she slowly begins to pull out. Grateful for the opportunity to reacclimate to not being full, you stand still and let her withdraw. The gradual slide of her rod across your sensitive bits reignites the feeling of being fucked, and you find yourself groaning as your [pc.vaginas] seize");
		if(pc.totalVaginas() == 1) output("s");
		output(" again, your [pc.girlCumNoun] running down your tummy.");
		output("\n\n<i>“You're amazing, [pc.name].”</i> Haley purrs into your ear, her hands on your shoulders. <i>“No one has ever taken me so... completely.”</i>");
		output("\n\nYou can't help but feel she's just buttering you up, but even so, the treatment is nice. Her hands slide down your front, massaging and rubbing your [pc.chest]. You let your arms fall from the slat on the wall you were holding; an outside force wouldn't be able to move you from under Haley by now, forget about doing it with your own power.");
		output("\n\n<i>“Thaaaat's right, babe. Just relax.”</i>");
		output("\n\nWhen she finally pops free of the constraints of your slackened body, only a small trail of her spunk leaks from your gaping asshole, running down your hind legs. She was so deep inside you that nearly all of it is trapped in your body, her flared head acting like a plug to your stomach. You barely have time to get a proper breath before you feel the warmth of her ejaculate washing over your glistening snatch, quickly followed by the sensation of her equine flare pushing into you. The progress is a lot less gradual than it was for your ass, the Treatment doing its part to aid her in shoving herself deep in your cunt.");
		var x:int = rand(pc.totalVaginas());
		pc.cuntChange(x,1500);
		output("\n\nYou utter a small scream of undisguised lust that lapses into a moo when she stretches your lips to capacity, gliding on through on the wetness of your walls. She slides right up to your cervix,");
		if(pc.isPregnant(x)) output(" a tiny moan of disappointment escaping her lips when she realizes you're pregnant and can't get your womb stuffed full too. She contents herself with slowly drawing back and sliding right back up to your deepest point, cum soaking into every crevice of your femininity until both of your well-fucked holes are sloppy and dripping.");
		else output(" a theatrical sigh of satisfaction slipping from her lips when her cum begins to splash into your womb. She pulls your humanoid half into a hug between her curvaceous breasts, content to lie atop you in a relaxed manner while her cock noisily fills your womb. There's something primally satisfying about having your womb stuffed full by a stallion's throbbing cock – the high goes beyond the Treatment, like a reward for your happy subservience. Whatever the feeling is, you're happy to let her seed you with equine jizz until your womb swells like your stomach.");
		output("\n\nHaley groans quietly from above, her balls flush against your ass as they're slowly emptied into you. A few minutes pass before she rouses herself from her post-orgasmic torpor, letting you know she's going to pull out. Her swollen head slides out of you easily, only catching as it pops past your lips, giving you a last orgasmic spasm. Warm spunk spills out of your abused cunt, sliding down your swollen underside and splattering to the ground.");
		output("\n\nShe sighs before stroking your flank, bending down to inspect how full your ");
		if(!pc.isPregnant(x)) output("womb and belly are.");
		else output("belly is.");
		output("\n\n<i>“You'll be stuck here for a little while, but I hope it was as good for you as it was for me. I wasn't kidding when I said no one has ever done that for me. This is the first time in a while I've been able to think so clearly without having to deal with my needs. Thanks, [pc.name].”</i>");
		output("\n\nShe sounds completely sincere in her thankfulness, so it seems like you were a good solution to her problem. You're not sure how effective transferring gallons of equine jizz from her balls to your body like some kind of container is as a long-term strategy, but then you're not really big on problem-solving anyway. For now, you might as well sleep it off – your tummy is basically a waterbed at this point, no point letting it go to waste.");
		//back to square whatever
		var pp:PregnancyPlaceholder = getHaleyPregContainer();
		pc.loadInAss(pp);
		pc.loadInCunt(pp,x);
		processTime(65);
		pc.orgasm();
		pc.orgasm();
		flags["MET_HALEY"] = 1;
		clearMenu();
		addButton(0,"Next",move,rooms[currentLocation].westExit);
		return;
	}
	//PC male taur:
	else if(pc.hasCock())
	{
		output("\n\nDespite the show, she still looks somewhat hesitant.");
		output("\n\n<i>“I don't know if you'd be able to handle it. You might be a 'taur, but that's no guarantee you won't end up coughing up my spunk, or swollen to the point of immobility. Or both. Trust me, you'd be better off leaving.”</i>");
		output("\n\nShe turns back to the machine.");
		//[Leave] [Wait...]
		clearMenu();
		addButton(0,"Leave",leaveDatHaleySlutShit,undefined,"Leave","Follow her advice.");
		addButton(1,"Wait",waitForHaleyToReamYouAsAManTaur,undefined,"Wait","You still want it.");
	}
	//PC female taur:
	else
	{
		output("\n\nDespite the show, you can tell she's trying desperately to hold herself back.");
		output("\n\n<i>“You might be a mare, and by far the sexiest thing I've laid eyes on in months... but that's no guarantee you won't end up coughing up my spunk or swollen to the point of immobility. Or both. Trust me, you'd be better off leaving.”</i>");
		output("\n\nShe turns back to the machine, her eyes closed and her teeth gritted in what looks like intense focus. Is she doing this for your benefit?");
		//[Leave] [Wait...]
		clearMenu();
		addButton(0,"Leave",leaveDatHaleySlutShit,undefined,"Leave","Follow her advice.");
		addButton(1,"Wait",waitToGetFuckedByHaleyAsAFemaleTaur,undefined,"Wait","You still want it.");
	}
}

//[Leave]"
//Follow her advice.
public function leaveDatHaleySlutShit():void
{
	clearOutput();
	showHaley();
	author("Wsan");
	output("Just looking at the spurts of ejaculate flying from the tip of her dick is enough to convince you. She's probably telling the truth, no sense in putting it to the test. You step back out to the hallway, the dull thuds of impact following you out.");
	//back to square whatever
	addButton(0,"Next",move,rooms[currentLocation].westExit);
}

//[Wait...]
//You still want it.
public function waitForHaleyToGoToTownOnYou():void
{
	clearOutput();
	showHaley();
	author("Wsan");
	output("You unthinkingly reach out to stop her, grabbing the nearest part of her your hands can find purchase on – her prehensile tail. She emits a sound you could only ever describe as a 'yip', and you find the tail wriggling in your grip. Turning to you, her expression looks to be an odd mixture of anger and resignation, but despite that, her blue eyes shine brightly with eagerness.");
	output("\n\n<i>“Fine, then. I've met your type before. The adventurous submissive. You want a taste of whatever exotic delight your fuck for the night can offer you, huh?”</i> She croons, slowly advancing on you all the while. <i>“I can do that, but know this. I am a slave to my desires. And if we're gonna do this,”</i> she grabs your arm and spins you around before shoving you to the floor on your hands and knees, <i>“you are a slave to me. You won't even be able to move enough to resist.”</i>\n\n");
	if(!pc.isNude()) output("You hastily pull off your [pc.gear] to ");
	else output("You prepare to ");
	output("grant her access, her cum already spattering you");
	if(!pc.isNude()) output("r clothing");
	output(" with every pulse running down her length. God, there's a lot of it. But then again, that's what you signed up for. You rub some of it around your [pc.asshole] – she's already hosed it down – in the hopes of making her entry easier as she positions herself above you. Her massive blunted shaft aligns with your hole and right as you feel her begin to push, she halts.");
	output("\n\n<i>“Wait. What's your name?”</i>");
	output("\n\n<i>“Steele. [pc.fullname].”</i> You whimper a little when you feel a thick rope of sperm shoot straight into your asshole, a steady drip soon following.");
	output("\n\n<i>“Good. I always like to know who I'm about to wear as a condom. I'm Haley.”</i>");
	output("\n\nHaley resumes pushing against you, the immense pressure of her bloated head forcing you to brace yourself against the stall's wall if she wants a chance of getting into your ass. She snorts from above you, sounding every bit like the impatient stallion.");
	output("\n\n<i>“Good [pc.boyGirl] – hold yourself riiiight there... You're gonna get it – soon!”</i> She fiercely bucks her powerful hips, the sensation of your asshole being stretched wide immediately accompanied by the feeling of being utterly full. It feels like all the air in your lungs has been sucked away, and you struggle to find the rhythm to take some shallow breaths and try to steady yourself. <i>Fuck</i>, she wasn't kidding about wearing you. It feels like your insides are being rearranged, and looking down at your stomach to see the bulging imprint of her flared head, you realize they probably are. The outline loses a little bit of detail under the [pc.skinFurScales] of your [pc.belly] as you watch it in stark fascination, and along with the sensation of warmth rapidly spreading through your lower half, you note she's already filling you with heavy blasts of spunk.");
	pc.buttChange(1500);
	output("\n\n<i>“Uh! Fuck! I don't expect you to come back for a repeat of this, so I'm at least going to make it worthwhile for me. Hold on tight, girl.”</i>");
	output("\n\nHolding on tight is already what you're doing, owing to the gigantic, throbbing length embedded in your body. Being as wrapped around it as you are, you experience each individual shudder and ejaculation of equine semen as a full-body pulsation like it's a second heartbeat. It might as well be; you're pretty sure you can feel hers through it. Despite her unsympathetic treatment of you, despite the fact you're suspended on her massive shaft like an onahole, despite the fact you're rapidly approaching immobility... you're loving this.");
	output("\n\nOr maybe it's <i>because</i> of those things – the complete loss of control, the utter helplessness when she spears you just a little bit further onto her length, the feeling of her warm jizz filling you from bottom to top – all of them ");
	if(pc.cockTotal() == 1) output("has");
	else output("have");
	output(" your [pc.cocks] raging hard. Your prostate is pressed tightly down by the bulk of meat impaling you, her massive cumvein bulging almost painfully against it every time it spews another bucketful of jizz into your body, your own cock");
	if(pc.cockTotal() > 1) output("s");
	output(" echoing the effect with a spurt of ");
	if(pc.cockTotal() > 1) output("their");
	else output("its");
	output(" own.");
	output("\n\n<i>“I'm gonna cum soon,”</i> Haley gasps from above you, her thrusting motions becoming more erratic, <i>“I hope you know – ugh – what that means for you!”</i>");
	output("\n\nYou can scarcely reply, alternating between gritting your teeth and opening your mouth in a silent scream every time she burrows just a little bit further into your depths. Your body is in shock; a non-taur was never meant to be able to handle this, but you want it so bad. Each buck of her significant hips lifts you slightly off the ground, her grunts and groans increasing in intensity until you're certain she can't get any deeper in you – you're fully suspended on her absurd equine length, pushed up against the wall when she begins to shake.");
	output("\n\n<i>“Oh... god.”</i> She whispers with perfect clarity, her hands firmly laid flat against the wall as you start to feel her cock swelling inside, legs completely straight and flexing around you. You think you hear her say 'good luck' before she raises her head in exaltation, but you're not paying attention to that any more. Her equine flare expands inside you, struggling to keep up with the sudden explosive outflow sourced from her hyperproductive balls. You follow suit, your [pc.cocks] painting the ground beneath you [pc.cumColor] before the backspray coats everything underneath you a pearly white.");
	output("\n\nYou pant in equal parts pleasure and exertion, your prostate being massaged so frequently by the massive loads travelling down her shaft that you suffer multiple orgasms just from receiving the copious amounts of jizz. It hasn't even been more than a few seconds of you shaking on the end of her bloated cock before your stomach starts to sag with the liquid weight of her cum, the roiling pleasure in your tensed abs giving way to the warmth of her seed. The flow is unending, and somewhere in your head you start to wonder if it's going to come out of your mouth – the taste is already lingering across your tongue, and the heady smell feels like it's permeating your pores.");
	output("\n\nMercifully, Haley begins to pull out before that can happen. She doesn't actually stop pumping cum into you though, and the added sensation of skin-on-skin friction across your prostate along with the intermittent throbs against it just bring you back to the peak of orgasm as she slowly drags herself out of your thoroughly gaped asshole. When she finally pops free of the constraints of your slackened body, a torrential deluge of her cum follows, coating your legs and the ground beneath your body in body-temperature spunk. Her still-spraying cock spurts another few ropes across you as you roll onto your side, your sloshing stomach too uncomfortable to lie on for long. She sighs, a theatrical exhalation of satisfaction, before fixing you with a smug smile of conquest.");
	output("\n\n<i>“I hope it was as good for you as it was for me, baby.”</i> She flirtatiously flutters her eyelashes and turns to leave, her balls noticeably smaller than they were when you entered. You note she's still leaving a dripping trail of spunk across the stall as she gathers her clothes and exits, though. Well, not like you're going anywhere in a hurry, and the hay strewn across the floor does make a decent bed. You shut your eyes and wait for your gurgling tummy to shrink enough to allow you movement.");
	processTime(120);
	pc.orgasm();
	flags["MET_HALEY"] = 1;

	var pp:PregnancyPlaceholder = getHaleyPregContainer();
	pc.loadInAss(pp);

	clearMenu();
	addButton(0,"Next",move,rooms[currentLocation].westExit);
}

//[Wait...]
//You still want it.
public function waitForHaleyToGoToTownOnLadyNonTaurs():void
{
	clearOutput();
	showHaley();
	author("Wsan");
	output("You unthinkingly reach out to stop her, grabbing the nearest part of her your hands can find purchase on – her prehensile tail. She emits a sound you could only ever describe as a 'yip', and you find the tail wriggling in your grip. Turning to you, her expression looks to be an odd mixture of anger and resignation, but despite that, her blue eyes shine brightly with eagerness.");
	output("\n\n<i>“Fine, then. I've met your type before. The adventurous submissive. You want a taste of whatever exotic delight your fuck for the night can offer you, huh?”</i> She croons, slowly advancing on you all the while. <i>“I can do that, but know this. I am a slave to my desires. And if we're gonna do this,”</i> she grabs your arm and spins you around before shoving you to the floor on your hands and knees, <i>“you are a slave to me. You won't even be able to move enough to resist.”</i>");
	if(!pc.isNude()) output("You hastily pull off your [pc.gear] to ");
	else output("You prepare to ");
	output("grant her access, her cum already spattering you");
	if(!pc.isNude()) output("r clothing");
	output(" with every pulse running down her length. God, there's a lot of it. But then again, that's what you signed up for. You rub some of it around your [pc.asshole] – she's already hosed it down – in the hopes of making her entry easier as she positions herself above you. Her massive blunted shaft aligns with your hole and right as you feel her begin to push, she halts.");
	output("\n\n<i>“Wait. What's your name?”</i>");
	output("\n\n<i>“Steele. [pc.fullname].”</i> You whimper a little when you feel a thick rope of sperm shoot straight into your asshole, a steady drip soon following.");
	output("\n\n<i>“Good. I always like to know who I'm about to wear as a condom. I'm Haley.”</i>");
	output("\n\nHaley resumes pushing against you, the immense pressure of her bloated head forcing you to brace yourself against the stall's wall if she wants a chance of getting into your ass. She snorts from above you, sounding every bit like the impatient stallion.");
	output("\n\n<i>“Good girl – hold yourself riiiight there... You're gonna get it – soon!”</i> She fiercely bucks her powerful hips, the sensation of your asshole being stretched wide immediately accompanied by the feeling of being utterly full. It feels like all the air in your lungs has been sucked away, and you struggle to find the rhythm to take some shallow breaths and try to steady yourself. <i>Fuck</i>, she wasn't kidding about wearing you. It feels like your insides are being rearranged, and looking down at your stomach to see the bulging imprint of her flared head, you realize they probably are. The outline loses a little bit of detail under the skin of your [pc.belly] as you watch it in stark fascination, and along with the sensation of warmth rapidly spreading through your lower half, you note she's already filling you with heavy blasts of spunk.");
	pc.buttChange(1500);
	output("\n\n<i>“Uh! Fuck! I don't expect you to come back for a repeat of this, so I'm at least going to make it worthwhile for me. Hold on tight, girl.”</i>");
	output("\n\nHolding on tight is already what you're doing, owing to the gigantic, throbbing length embedded in your body. Being as wrapped around it as you are, you experience each individual shudder and ejaculation of equine semen as a full-body pulsation like it's a second heartbeat. It might as well be; you're pretty sure you can feel hers through it. Despite her unsympathetic treatment of you, despite the fact you're suspended on her massive shaft like an onahole, despite the fact you're rapidly approaching immobility... you're loving this.");
	output("\n\nOr maybe it's <i>because</i> of those things – the complete loss of control, the utter helplessness when she spears you just a little bit further onto her length, the feeling of her warm jizz filling you from bottom to top – all of them have your [pc.vaginas] dripping wet. Her cock has your body stretched so taut that you're getting off in the weirdest way – the pulsation of her cock against the other side of your womb and pussy walls makes it feel like there's a cock vibrating and throbbing deep inside your cunt");
	if(pc.totalVaginas() > 1) output("s");
	output(".");
	output("\n\n<i>“I'm gonna cum soon,”</i> Haley gasps from above you, her thrusting motions becoming more erratic, <i>“I hope you know – ugh – what that means for you!”</i>");
	output("\n\nYou can scarcely reply, alternating between gritting your teeth and opening your mouth in a silent scream every time she burrows just a little bit further into your depths. Your body is in shock; a non-taur was never meant to be able to handle this, but you want it so bad. Each buck of her significant hips lifts you slightly off the ground, her grunts and groans increasing in intensity until you're certain she can't get any deeper in you – you're fully suspended on her absurd equine length, pushed up against the wall when she begins to shake.");
	output("\n\n<i>“Oh... god.”</i> She whispers with perfect clarity, her hands firmly laid flat against the wall as you start to feel her cock swelling inside, legs completely straight and flexing around you. You think you hear her say 'good luck' before she raises her head in exaltation, but you're not paying attention to that any more. Her equine flare expands inside you, struggling to keep up with the sudden explosive outflow sourced from her hyperproductive balls. You follow suit, your pussy spraying the ground before the backspray coats everything underneath you a pearly white.");
	output("\n\nYou pant in equal parts pleasure and exertion, your womb being massaged so frequently by the massive loads travelling down her shaft that you suffer multiple orgasms just from receiving the copious amounts of jizz. It hasn't even been more than a few seconds of you shaking on the end of her bloated cock before your stomach starts to sag with the liquid weight of her cum, the roiling pleasure in your tensed abs giving way to the warmth of her seed. The flow is unending, and somewhere in your head you start to wonder if it's going to come out of your mouth – the taste is already lingering across your tongue, and the heady smell feels like it's permeating your pores.");
	output("\n\nMercifully, Haley begins to pull out before that can happen. She doesn't actually stop pumping cum into you though, and the added sensation of skin-on-skin friction through your ass along with the intermittent throbs against your vaginal walls just bring you back to the peak of orgasm as she slowly drags herself out of your thoroughly gaped asshole. When she finally pops free of the constraints of your slackened body, a torrential deluge of her cum follows, coating your legs and the ground beneath your body in body-temperature spunk. Her still-spraying cock spurts another few ropes across you as you roll onto your side, your sloshing stomach too uncomfortable to lie on for long. She sighs, a theatrical exhalation of satisfaction, before fixing you with a smug smile of conquest.");
	output("\n\n<i>“I hope it was as good for you as it was for me, baby.”</i> She flirtatiously flutters her eyelashes and turns to leave, her balls noticeably smaller than they were when you entered. You note she's still leaving a dripping trail of spunk across the stall as she gathers her clothes and exits, though. Well, not like you're going anywhere in a hurry, and the hay strewn across the floor does make a decent bed. You shut your eyes and wait for your gurgling tummy to shrink enough to allow you movement.");
	processTime(120);
	pc.orgasm();
	flags["MET_HALEY"] = 1;
	var pp:PregnancyPlaceholder = getHaleyPregContainer();
	pc.loadInAss(pp);
	clearMenu();
	addButton(0,"Next",move,rooms[currentLocation].westExit);
}

//[Wait...]
//You still want it.
public function waitForHaleyToReamYouAsAManTaur():void
{
	clearOutput();
	showHaley();
	author("Wsan");
	output("You unthinkingly reach out to stop her, grabbing the nearest part of her your hands can find purchase on – her prehensile tail. She emits a sound you could only ever describe as a 'yip', and you find the tail wriggling in your grip. Turning to you, her face shines with a fervent eagerness and her eyes flash dangerously.");
	output("\n\n<i>“Fine, then. I've met your type before. The adventurous submissive. You want a taste of whatever exotic delight your fuck for the night can offer you, huh?”</i> She croons, slowly advancing on you all the while. <i>“I can do that, but know this. I am a slave to my desires. And if we're gonna do this,”</i> she grabs your arm and turns you around before slapping your flank, <i>“you are a slave to me. Don't worry – when I'm in you, you won't even be able to resist.”</i>");
	output("\n\nShe ");
	if(!pc.isCrotchExposed() && !pc.isAssExposed()) output("tugs down your [pc.lowerGarments] to expose your [pc.asshole] and [pc.cocks] to the warm, pheromone-filled air of the stall");
	else output("eyeballs your [pc.asshole] and [pc.cocks]");
	output(". Your cock is already erect, hanging proudly below your tauric belly, but she ignores it. She's completely focused on your ass, seizing it with both hands and pulling your cheeks to the side.");
	output("\n\n<i>“Oh, I am gonna fucking <i>wreck</i> you. I've waited so long to meet another mare that can handle me,”</i> she groans in need, her grip on your [pc.butt] becoming tighter as she prepares to mount you, <i>“I hope you come back for more, babe.”</i>");
	output("\n\nShe springs upward, catapulting herself onto your rear and grabbing your hindquarters with her front legs. You can already feel the head of her massive, bloated cock covering your ass and legs with hot jizz before she aligns it with your entrance. Rivulets of spunk run down your ass to drip from your [pc.belly]. An immense pressure exerts itself on your ass when she begins to push herself in, but then it dissipates.");
	output("\n\n<i>“I almost forgot. What's your name?”</i>");
	output("\n\n<i>“Steele. [pc.fullname].”</i> You whimper a little when you feel a thick rope of sperm shoot straight into your asshole, a steady drip soon following.");
	output("\n\n<i>“Good. I always like to know who I'm about to fill up like a condom. I'm Haley.”</i>");
	output("\n\nHaley resumes pushing against you, the staggering force of her bloated head compelling you to brace yourself against the stall's wall if she wants a chance of getting into your ass. She snorts from above you, sounding every bit like the impatient stallion about to mount her breeding mare.");
	output("\n\n<i>“Good [pc.boyGirl] – hold yourself riiiight there... You're gonna get it so fucking-!”</i> She fiercely bucks her powerful hips, the sensation of your asshole being stretched wide immediately accompanied by the feeling of being utterly full. It feels like all the air in your lungs has been sucked away, and you struggle to find the rhythm to take some shallow breaths and try to steady yourself. <i>Fuck</i>, she wasn't kidding about wearing you. Anything less than a full-sized 'taur wouldn't be able to handle this at all. She scrabbles up your body in little jerks and thrusts, each one pushing her intermittently bulging cumvein right on your prostate.");
	pc.buttChange(1500);
	output("\n\n<i>“Fuck! I have missed this so much,”</i> she pants laboriously, slowly but inexorably advancing further up your tauric body, <i>“you're <i>so</i> much better than the machine. Hold on tight babe, I'm t-trying to get it all in.”</i>");
	output("\n\nHolding on tight is already what you're doing, owing to the gigantic, throbbing length embedded in your body. Being as wrapped around it as you are, you experience each individual shudder and ejaculation of equine semen as a full-body pulsation like it's a second heartbeat. It might as well be; you're pretty sure you can feel hers through it. Despite her unsympathetic treatment of you, despite the fact her massive shaft is plumbing the inner depths of your body, despite the fact your stomach is beginning to sag slightly with the weight of her jizz... you're loving this.");
	output("\n\nOr maybe it's <i>because</i> of those things – the complete loss of control, the utter helplessness when she spears you just a little bit further onto her length, the feeling of her warm seed filling you from bottom to top – all of them have your [pc.cock] raging hard. Each thrusting motion from above rubs across your prostate in the most amazing way, and you can't help but groan as your dick sprays your front legs and the ground.");
	output("\n\n<i>“I'm gonna cum soon,”</i> Haley gasps from above you, her hips bucking wildly, <i>“I hope you know – ugh – what that means for you!”</i>");
	output("\n\nYou can scarcely reply, alternating between gritting your teeth and opening your mouth in a silent scream every time she burrows just a little bit further into your depths. Your body is barely able to handle her; even the largest 'taur wasn't built to handle this, but you're just able to manage it if you focus on how good it feels. Each buck of her significant hips slaps you in the butt with her massive balls, her grunts and groans increasing in intensity until you're certain she can't get any deeper in you – you're almost suspended on her absurd equine length, being pushed up against the wall when she begins to shake.");
	output("\n\n<i>“Unnnh! Uh! U-”</i>");
	output("\n\nHer voice comes in halting grunts and then stops completely as you feel her entire body flex, her six legs hugging your swollen midriff as tight as she possibly can. The equine cock inside you follows suit, stiffening and swelling to accommodate for the massive outflow of spunk being dumped into your stomach by the bucketful. You can feel the flare of it stretching you out inside with each gout of jizz, each throb of the iron-hard length pushing down hard on your prostate. You hardly notice the feeling of her balls pumping hard, pushed right up against your ass.");
	output("\n\n<i>“Oh... Oh. God. Stay still... Stay still and take it. Good [pc.boyGirl]. Goooood [pc.boyGirl].”</i> Haley's voice comes in a breathless whisper full of wonder, as if she's marveling at your miraculous subservience. You do your best to follow her instruction while she quivers and gasps quietly on top of you, but find your stomach is swelling so rapidly with the weight of her bucketfuls of cum that you're having trouble staying standing. She groans luxuriously and wraps her arms tightly around the lower half of your humanoid form, just laying her head on your shoulder and moaning quietly into your ear.");
	output("\n\nYou pant in equal parts pleasure and exertion, your prostate being massaged so frequently by the massive loads travelling down her shaft that you suffer multiple orgasms just from receiving the copious amounts of jizz. It hasn't even been more than a few seconds of you shaking on the end of her cock before the liquid weight of her cum starts to really weigh you down, the roiling pleasure in your tensed lower half giving way to the warmth of her seed. The flow is unending, and between the dual stimulation of your prostate and her jism coating your insides you're scarcely able to stay standing, your hands curling into tightly-balled fists against the stall.");
	output("\n\nHaley coos to you comfortingly, and despite your weak groan of discomfort as your cum-swollen stomach reaches your unguligrade knees, you decide to stick it out for her. She softly strokes your cheek, the affectionate gesture completely at odds with her cock mercilessly ejaculating into you like you're a living milking machine. She pulls back and kisses you across your shoulder blades while your tummy continues to acquiesce to the seemingly never-ending flow of cum from her to you. In the relative calm of her ejaculation, you're more able to feel her balls against your ass, and you think they're <i>slightly</i> smaller than before.");
	output("\n\n<i>“You're amazing, [pc.name].”</i> Haley purrs into your ear, her hands on your shoulders. <i>“No one has ever taken me so... completely.”</i>");
	output("\n\nYou can't help but feel she's just buttering you up, but even so, the treatment is nice. Her hands slide down your front, massaging and rubbing your [pc.chest]. You let your arms fall from the slat on the wall you were holding; an outside force wouldn't be able to move you from under Haley by now, forget about doing it with your own power.");
	output("\n\n<i>“Thaaaat's right, babe. Mmmm.”</i>");
	output("\n\nAfter a few minutes of idly lying on top of you in some kind of post-orgasmic torpor, Haley slowly rouses herself and asks if you're ready for her to pull out. You nod gingerly, avoiding making any sudden motion lest you upset your stomach, which by now is scraping the floor with its liquid cargo. She withdraws mercifully slowly, allowing your body to reacclimate itself to not being full of what feels like a living, virile tree trunk. The gradual slide of her rod across your sensitive bits reignites the feeling of being fucked, and you find yourself groaning as your cock spatters the last of its load along your tummy.");
	output("\n\nWhen she finally pops free of the constraints of your slackened body, only a small trail of her spunk leaks from your gaping asshole, running down your hind legs. She was so deep inside you that nearly all of it is trapped in your body, her flared head acting like a plug to your stomach. She sighs, a theatrical exhalation of satisfaction, before stroking your flank.");
	output("\n\n<i>“You'll be stuck here for a little while, but I hope it was as good for you as it was for me. I wasn't kidding when I said no one has ever done that for me. This is the first time in a while I've been able to think so clearly without having to deal with my needs. Thanks, [pc.name].”</i>");
	output("\n\nShe sounds completely sincere in her thankfulness, so it seems like you were a good solution to her problem. You're not sure how effective transferring gallons of equine jizz from her balls to your tummy like some kind of container is as a long-term strategy, but that's a problem you'll have to deal with later. For now, you might as well sleep it off – your tummy is basically a waterbed at this point, anyway.");
	//6 hours pass
	processTime(360);
	var pp:PregnancyPlaceholder = getHaleyPregContainer();
	pc.loadInAss(pp);
	flags["MET_HALEY"] = 1;
	pc.orgasm();
	clearMenu();
	addButton(0,"Next",move,rooms[currentLocation].westExit);
}

//[Wait...]
//You still want it.
public function waitToGetFuckedByHaleyAsAFemaleTaur():void
{
	clearOutput();
	showHaley();
	author("Wsan");
	output("You unthinkingly reach out to stop her, grabbing the nearest part of her your hands can find purchase on – her prehensile tail. She emits a sound you could only ever describe as a 'yip', and you find the tail wrapping around your fingers. Turning to you, her face shines with a fervent eagerness and her eyes flash dangerously.");
	output("\n\n<i>“You really want this, huh? My savior.”</i> She croons, slowly advancing on you all the while. <i>“I hope you like it rough – I'm a slave to my desires. And if we're gonna do this,”</i> she grabs your arm and turns you around before slapping your flank, <i>“you are a slave to me. Don't worry – when I'm in you, you won't even want to resist.”</i>");
	output("\n\nShe ");
	if(!pc.isCrotchExposed() && !pc.isAssExposed()) output("tugs down your [pc.lowerGarments] to expose ");
	else output("brazenly regards ");
	output("your [pc.asshole] and [pc.pussy]");
	if(!pc.isCrotchExposed() && !pc.isAssExposed()) output(" to the warm, pheromone-filled air of the stall");
	output(". Your pussy is already wet, winking at the futa femtaur while it fills with moisture, but she ignores it. She's completely focused on your ass, seizing it with both hands and pulling your cheeks to the side.");
	output("\n\n<i>“Oh, I am gonna fucking <i>wreck</i> you. I've waited so long to meet another mare that can handle me,”</i> she groans in need, her grip on your [pc.butt] becoming tighter as she prepares to mount you, <i>“I hope you love this as much as I'm going to, babe. What's your name?”</i>");
	output("\n\n<i>“It's Steele. [pc.fullname].”</i>");
	output("\n\nShe springs upward, catapulting herself onto your rear and grabbing your hindquarters with her front legs. You can already feel the head of her massive, bloated cock covering your ass and legs with hot jizz before she aligns it with your entrance. Rivulets of spunk run over the lips of your pussy to drip from your [pc.belly]. An immense pressure exerts itself on your ass when she begins to push herself in. You moan a little when you feel a thick rope of sperm shoot straight into your asshole, a steady drip soon following.");
	output("\n\n<i>“Lovely to meet you, [pc.name]. I'm Haley.”</i>");
	output("\n\nHaley resumes pushing against you, the staggering force of her bloated head compelling you to brace yourself against the stall's wall if she wants a chance of getting into your ass. She snorts from above you, sounding every bit like the impatient stallion about to mount her breeding mare.");
	output("\n\n<i>“Good [pc.boyGirl] – hold yourself riiiight there... You're gonna get it so fucking-!”</i> She fiercely bucks her powerful hips, the sensation of your asshole being stretched wide immediately accompanied by the feeling of being utterly full. It feels like all the air in your lungs has been sucked away, and you struggle to find the rhythm to take some shallow breaths and try to steady yourself. <i>Fuck</i>, she wasn't kidding about wearing you. Anything less than a full-sized 'taur wouldn't be able to handle this at all. She scrabbles up your body in little jerks and thrusts, her massive cumvein intermittently bulging against your walls.");
	pc.buttChange(1500);
	output("\n\n<i>“Fuck! I have missed this so much,”</i> she pants laboriously, slowly but inexorably advancing further up your tauric body, <i>“a real mare is <i>so</i> much better than the machine. Hold on tight babe, I'm t-trying to get it all in.”</i>");
	output("\n\nHolding on tight is already what you're doing, owing to the gigantic, throbbing length embedded in your body. Being as wrapped around it as you are, you experience each individual shudder and ejaculation of equine semen as a full-body pulsation like it's a second heartbeat. It might as well be; you're pretty sure you can feel hers through it. Despite her unsympathetic treatment of you, despite the fact her massive shaft is plumbing the inner depths of your body, despite the fact your stomach is beginning to sag slightly with the weight of her jizz... you're loving this.");
	output("\n\nOr maybe it's <i>because</i> of those things – the complete loss of control, the utter helplessness when she spears you just a little bit further onto her length, the feeling of her warm seed filling you from bottom to top – all of them have your [pc.pussy] dripping wet. Each thrusting motion from above rubs you in the most amazing way, and you can't help but groan as your pussy flexes and contracts, trying to coax a load out of the stallion cock that isn't there.");
	output("\n\n<i>“I'm gonna cum soon,”</i> Haley gasps from above you, her hips bucking wildly, <i>“I hope you know – ugh – what that means for you!”</i>");
	output("\n\nYou can scarcely reply, alternating between gritting your teeth and opening your mouth in a silent scream every time she burrows just a little bit further into your depths. Your body is barely able to handle her; even the largest 'taur wasn't built to handle this, but you're just able to manage it if you focus on how good it feels. Each buck of her significant hips slaps you in the butt with her massive balls, her grunts and groans increasing in intensity until you're certain she can't get any deeper in you – you're almost suspended on her absurd equine length, being pushed up against the wall when she begins to shake.");
	output("\n\n<i>“Unnnh! Uh! U-”</i>");
	output("\n\nHer voice comes in halting grunts and then stops completely as you feel her entire body flex, her six legs hugging your swollen midriff as tight as she possibly can. The equine cock inside you follows suit, stiffening and swelling to accommodate for the massive outflow of spunk being dumped into your stomach by the bucketful. You can feel the flare of it stretching you out inside with each gout of jizz, each throb of the iron-hard length pushing your guts downwards. You hardly notice the feeling of her balls pumping hard, pushed right up against your ass.");
	output("\n\n<i>“Oh... Oh. God. Stay still... Stay still and take it. Good [pc.boyGirl]. Goooood [pc.boyGirl].”</i> Haley's voice comes in a breathless whisper full of wonder, as if she's marveling at your miraculous subservience. You do your best to follow her instruction while she quivers and gasps quietly on top of you, but find your stomach is swelling so rapidly with the weight of her bucketfuls of cum that you're having trouble staying standing. She groans luxuriously and wraps her arms tightly around the lower half of your humanoid form, just laying her head on your shoulder and moaning quietly into your ear.");
	output("\n\nYou pant in equal parts pleasure and exertion, your sensitive insides being massaged so frequently by the massive loads travelling down her shaft that you can't help but suffer multiple orgasms just from receiving the copious amounts of jizz. It hasn't even been more than a few seconds of you shaking on the end of her cock before the liquid weight of her cum starts to really weigh you down, the roiling pleasure in your tensed lower half giving way to the warmth of her seed. The flow is unending, and her jism coating your insides means you're scarcely able to stay standing, your hands curling into tightly-balled fists against the stall.");
	output("\n\nHaley coos to you comfortingly, and despite your weak groan of discomfort as your cum-swollen stomach reaches your unguligrade knees, you decide to stick it out for her. She softly strokes your cheek, the affectionate gesture completely at odds with her cock mercilessly ejaculating into you like you're a living milking machine. She pulls back and kisses you across your shoulder blades while your tummy continues to acquiesce to the seemingly never-ending flow of cum from her to you. In the relative calm of her ejaculation, you're more able to feel her balls against your ass, and you think they're <i>slightly</i> smaller than before.");
	output("\n\n<i>“You're amazing, [pc.name].”</i> Haley purrs into your ear, her hands on your shoulders. <i>“No one has ever taken me so... completely.”</i>");
	output("\n\nYou can't help but feel she's just buttering you up, but even so, the treatment is nice. Her hands slide down your front, massaging and rubbing your [pc.chest]. You let your arms fall from the slat on the wall you were holding; an outside force wouldn't be able to move you from under Haley by now, forget about doing it with your own power.");
	output("\n\n<i>“Thaaaat's right, babe. Mmmm.”</i>");
	output("\n\nAfter a few minutes of idly lying on top of you in some kind of post-orgasmic torpor, Haley slowly rouses herself and asks if you're ready for her to pull out. You nod gingerly, avoiding making any sudden motion lest you upset your stomach, which by now is scraping the floor with its liquid cargo. She withdraws mercifully slowly, allowing your body to reacclimate itself to not being full of what feels like a living, virile tree trunk. The gradual slide of her rod across your sensitive bits reignites the feeling of being fucked, and you find yourself groaning as your pussy seizes again, the last of your girlcum running down your tummy.");
	output("\n\nWhen she finally pops free of the constraints of your slackened body, only a small trail of her spunk leaks from your gaping asshole, running down your hind legs. She was so deep inside you that nearly all of it is trapped in your body, her flared head acting like a plug to your stomach. She sighs, a theatrical exhalation of satisfaction, before stroking your flank.");
	output("\n\n<i>“You'll be stuck here for a little while, but I hope it was as good for you as it was for me. I wasn't kidding when I said no one has ever done that for me. This is the first time in a while I've been able to think so clearly without having to deal with my needs. Thanks, [pc.name].”</i>");
	output("\n\nShe sounds completely sincere in her thankfulness, so it seems like you were a good solution to her problem. You're not sure how effective transferring gallons of equine jizz from her balls to your tummy like some kind of container is as a long-term strategy, but that's a problem you'll have to deal with later. For now, you might as well sleep it off – your tummy is basically a waterbed at this point, anyway.");
	//6 hours pass

	processTime(360);
	var pp:PregnancyPlaceholder = getHaleyPregContainer();
	pc.loadInAss(pp);
	pc.orgasm();
	flags["MET_HALEY"] = 1;
	clearMenu();
	addButton(0,"Next",move,rooms[currentLocation].westExit);
}

//[WatchMore]
//Watch the amazonian Leithan girl fuck the milker.
public function keepWatchingDatTaurSlootPoundHerMilkyMilkMaker():void
{
	clearOutput();
	showHaley();
	author("Wsan");
	output("You can't help but want to keep watching – there's something about her desperate ferocity that captivates you, the stacked specimen's struggle to bring herself to orgasm both endearing and extremely hot. Her keening moans and grunts of effort");
	if(pc.hasCock() && pc.hasVagina()) output(" make your [pc.cocks] stiffen in your [pc.lowerGarments], the heat in your [pc.vaginas] intensifying twofold as you begin lightly panting, the rhythm of your breathing unconsciously matching her animalistic thrusts.");
	if(pc.hasCock() && !pc.hasVagina()) output(" make your [pc.cocks] stiffen in your [pc.lowerGarments], the rhythm of your breathing unconsciously matching her animalistic thrusts.");
	if(!pc.hasCock() && pc.hasVagina()) output(" induce a lusty heat in your [pc.vaginas], the rhythm of your breathing unconsciously matching her animalistic thrusts.");
	processTime(15);
	clearMenu();
	addButton(14,"Leave",leaveAfterWatchingHaleyABit,undefined,"Leave","Get outta dodge and clear your head.");
	if(!pc.isTaur())
	{
		if(!pc.hasGenitals()) addDisabledButton(0,"Masturbate","Masturbate","You can't do that without genitals.");
		else addButton(0,"Masturbate",masturbateWhileWatchingHaleyHumphumphump,undefined,"Masturbate","Watch the girl chase an orgasm in pursuit of your own.");
	}
	else addDisabledButton(0,"Masturbate","Masturbate","You can't reach around to do that.");
	
}
//[Leave]
//Get outta dodge and clear your head.
public function leaveAfterWatchingHaleyABit():void
{
	clearOutput();
	showHaley();
	author("Wsan");
	output("You shake your head to clear your mind. The hazy scent of her pheromones drifting through the air must be putting you on edge, what with a reaction like that. You can take care of your 'problem' later, but for now you have things to do.");
	//back to square whatever
	clearMenu();
	addButton(0,"Next",move,rooms[currentLocation].westExit);
}

//[Masturbate] (Not a 'taur, not in enclosed armor)");
//Watch the girl chase an orgasm in pursuit of your own.
public function masturbateWhileWatchingHaleyHumphumphump():void
{
	clearOutput();
	showHaley();
	author("Wsan");
	if(pc.hasCock() && pc.hasVagina())
	{
		output("Fuck it, this needs tending to <i>now</i> and you're not going to pass up the opportunity to use a sexy Leithan girl as masturbation fodder. You ");
		if(!pc.isCrotchExposed()) output("sneakily tug down your [pc.lowerGarments] and work a hand in");
		else output("reach down and tug at your [pc.cockBiggest]");
		output(", your [pc.biggestCock] already at full mast with the spectacle in front of you. Your other hand slips between your [pc.legs], forgoing gradual clitoral stimulation in favor of just sliding two fingers hungrily into [pc.oneVagina]. There's no time for warm, subtle pleasure spreading throughout your body until your climax – this is gonna be quick, dirty, and sweaty.");
		if(flags["MET_HALEY"] == undefined) output("The hermtaur's");
		else output("Haley's");
		output(" efforts show no sign of slowing down, her pheromones still filling the air with the sweet scent of heat.");

		output("\n\nYou struggle to stay silent, your left hand roughly jerking your throbbing cock and your right knuckle-deep in your wet cunt. You watch ");
		if(flags["MET_HALEY"] != undefined) output("Haley");
		else output("the girl");
		output(" draw back and slam right in again and again, each one accompanied by a loud grunt through gritted teeth. It's impossible to see her cock from back here, but you can definitely see her massive, swollen balls swinging between her hind legs. They look ridiculously full, and you find yourself imagining just how much spunk she must be pumping into the milker.");
		if(flags["MET_HALEY"] != undefined) output(" Not hard to do when you've been on the receiving end, and a moan unconsciously slips past your lips as you eagerly envision being in the machine's place once more.");
		else output(" Just staring at her quivering testes as you eagerly envision being in the machine's place makes a moan slip past your lips.");

		output("\n\nYou pause in momentary horror, but ");
		if(flags["MET_HALEY"] != undefined) output("Haley");
		else output("she");
		output(" doesn't even notice over her own noises. Safe to say she's off in her own little world right now, although the way she's groaning and grunting it might be a good idea to finish up quick. You redouble your efforts, your breaths coming short and fast from your nostrils as your legs begin to shake, precum beading at the tip of your cock. Your fingers frenetically dig into the wet heat of your needy pussy, already unconsciously contracting every time you slide them back out. Trembling as the pleasure begins to build in your abdomen, you lean hard into the wall behind you, your legs spread with one hand desperately jacking your dick and the other sliding between the lips of your pussy.");
		output("\n\nYou bite your lower lip hard as you watch ");
		if(flags["MET_HALEY"] != undefined) output("Haley");
		else output("the hermtaur");
		output(" cry out and thrust one last time, her heavy balls taut against her scaled underside while her legs flex. Her high-pitched orgasmic moans drive you to cum yourself, your cock spurting ropes of [pc.cumColor] jizz across the hay in the lust-filled stall. Your female orgasm happens right at the same time, the walls of your pussy rippling across your fingers as it tries to coax them deeper inside you. You shudder against the stall's wall with your eyes squeezed shut, just riding the wave of pleasure and listening to ");
		if(flags["MET_HALEY"] != undefined) output("Haley");
		else output("the hermtaur's");
		output(" sex moans while you drip all over the floor.");
		output("\n\nWhen you reopen your eyes, you see her slumped over the milker in what's probably dead-tiredness. Going through that much effort to empty her balls must take a toll, poor girl. Still, though, you got what you came for – time to make yourself scarce. You extricate your hand from your [pc.lowerGarments], stuffing your flaccid dick back in and quietly making your escape.");
	}
	//PC.hasCock() && !PC.hasVagina()
	else if(pc.hasCock() && !pc.hasVagina())
	{
		output("Fuck it, this needs tending to <i>now</i> and you're not going to pass up the opportunity to use a sexy Leithan girl as masturbation fodder. You sneakily tug down your [pc.lowerGarments] and work a hand in, your [pc.cocks] already at full mast with the spectacle in front of you.");
		//If pc.cocktotal() < 2:")
		if(pc.cockTotal() < 2)
		{
			if(pc.biggestCockLength() > 10) output(" Sliding both hands down your stiff length, you begin to rub yourself while watching.");
			else output(" Sliding a hand down your stiff length, you begin to rub yourself while watching.");
		}
		if(pc.cockTotal() == 2) output(" Your [pc.cock 0] and [pc.cock 1] both firmly in hand, you begin to rub yourself while watching.");
		else output(" You slide your hands down two of your cocks, beginning to rub yourself.");
		output("\n\nThere's no time for warm, subtle pleasure spreading throughout your body until your climax – this is gonna be quick, dirty, and sweaty. ");
		if(flags["MET_HALEY"] != undefined) output("Haley's");
		else output("The hermtaur's");
		output(" efforts show no sign of slowing down, her pheromones still filling the air with the sweet scent of heat.");
		output("\n\nYou struggle to stay silent as you watch ");
		if(flags["MET_HALEY"] != undefined) output("Haley");
		else output("the girl");
		output(" draw back and slam right in again and again, each one accompanied by a loud grunt through gritted teeth. It's impossible to see her cock from back here, but you can definitely see her massive, swollen balls swinging between her hind legs. They look ridiculously full, and you find yourself imagining just how much spunk she must be pumping into the milker.");
		if(flags["MET_HALEY"] != undefined) output(" Not hard to do when you've been on the receiving end, and a moan unconsciously slips past your lips as you eagerly envision being in the machine's place once more.");
		else output(" Just staring at her quivering testes as you eagerly envision being in the machine's place makes a moan slip past your lips.");
		output("\n\nYou pause in momentary horror, but ");
		if(flags["MET_HALEY"] != undefined) output("Haley");
		else output("she");
		output(" doesn't even notice over her own noises. Safe to say she's off in her own little world right now, although the way she's groaning and grunting it might be a good idea to finish up quick. You redouble your efforts, your breaths coming short and fast from your nostrils as your legs begin to shake, precum beading at the tip of your cock");
		if(pc.cockTotal() > 1) output("s");
		output(". Trembling as the pleasure begins to build in your abdomen, you lean hard into the wall behind you, your legs spread with");
		if(pc.cockTotal() < 2)
		{
			if(pc.biggestCockLength() > 10) output(" your hands desperately sliding up and down the length of your dick.");
			else output(" your hand desperately sliding up and down the length of your dick.");
		}
		else output(" your hands desperately sliding up and down the lengths of your dicks.");
		output("\n\nYou bite your lower lip hard as you watch ");
		if(flags["MET_HALEY"] != undefined) output("Haley");
		else output("the hermtaur");
		output(" cry out and thrust one last time, her heavy balls taut against her scaled underside while her legs flex. Her high-pitched orgasmic moans drive you to cum yourself, your cock");
		if(pc.cockTotal() > 1) output("s");
		output(" spurting ropes of [pc.cumColor] jizz across the hay in the lust-filled stall. You shudder against the stall's wall with your eyes squeezed shut, just riding the wave of pleasure and listening to ");
		if(flags["MET_HALEY"] != undefined) output("Haley's");
		else output("the hermtaur's");
		output(" sex moans while you cover the floor in spunk.");
		output("\n\nWhen you reopen your eyes, you see her slumped over the milker in what's probably dead-tiredness. Going through that much effort to empty her balls must take a toll, poor girl. Still, though, you got what you came for – time to make yourself scarce. You extricate your hands ");
		if(!pc.isCrotchExposed()) 
		{
			output("from your [pc.lowerGarments], stuffing your flaccid dick");
			if(pc.cockTotal() > 1) output("s");
			output(" back in and quietly making your escape.");
		}
		else output("from your crotch and quietly make your escape.");
	}
	//!PC.hasCock() && PC.hasVagina()
	else if(!pc.hasCock() && pc.hasVagina())
	{
		output("Fuck it, this needs tending to <i>now</i> and you're not going to pass up the opportunity to use a sexy Leithan girl as masturbation fodder. You sneakily ");
		if(!pc.isCrotchExposed()) output("tug down your [pc.lowerGarments] and ");
		output("work a hand in, slipping between your legs to rub the heat of [pc.oneVagina]. Your other hand slips between your [pc.legs], finding [pc.eachClit]. There's no time for warm, subtle pleasure spreading throughout your body until your climax – this is gonna be quick, dirty, and fucking hot. ");
		if(flags["MET_HALEY"] != undefined) output("Haley's");
		else output("The hermtaur's");
		output(" efforts show no sign of slowing down, her pheromones still filling the air with the sweet scent of heat.");
		output("\n\nYou struggle to stay silent, the fingers on your left hand sliding knuckle-deep into your pussy and the fingers on your right frenetically circling your clit");
		if(pc.totalClits() > 1) output("s");
		output(". You watch ");
		if(flags["MET_HALEY"] != undefined) output("Haley");
		else output("the girl");
		output(" draw back and slam right in again and again, each one accompanied by a loud grunt through gritted teeth. It's impossible to see her cock from back here, but you can definitely see her massive, swollen balls swinging between her hind legs. They look ridiculously full, and you find yourself imagining just how much spunk she must be pumping into the milker.");
		if(flags["MET_HALEY"] != undefined) output(" Not hard to do when you've been on the receiving end, and a moan unconsciously slips past your lips as you eagerly envision being in the machine's place once more.");
		else output(" Just staring at her quivering testes as you eagerly envision being in the machine's place makes a moan slip past your lips.");
		output("\n\nYou pause in momentary horror, but ");
		if(flags["MET_HALEY"] != undefined) output("Haley");
		else output("she");
		output(" doesn't even notice over her own noises. Safe to say she's off in her own little world right now, although the way she's groaning and grunting it might be a good idea to finish up quick. You redouble your efforts, your breaths coming short and fast from your nostrils as your legs begin to shake, your fingers frenziedly digging into the wet heat of your needy pussy. Trembling as the pleasure begins to build in your abdomen, you lean hard into the wall behind you, your legs spread with one hand desperately frigging your cunt and the other rubbing across your clit");
		if(pc.totalClits() > 1) output("s");
		output(".");
		output("\n\nYou bite your lower lip hard as you watch ");
		if(flags["MET_HALEY"] != undefined) output("Haley");
		else output("the hermtaur");
		output(" cry out and thrust one last time, her heavy balls taut against her scaled underside while her legs flex. Her high-pitched orgasmic moans drive you to cum yourself, your ");
		if(pc.totalVaginas() == 1) output("pussy");
		else output("pussies");
		output(" dripping [pc.girlCum] across the hay in the lust-filled stall. You shudder against the stall's wall with your eyes squeezed shut, just riding the wave of pleasure and listening to ");
		if(flags["MET_HALEY"] != undefined) output("Haley's");
		else output("the hermtaur's");
		output(" sex moans while you drip all over the floor.");

		output("\n\nWhen you reopen your eyes, you see her slumped over the milker in what's probably dead-tiredness. Going through that much effort to empty her balls must take a toll, poor girl. Still, though, you got what you came for – time to make yourself scarce. You extricate your hands from your ");
		if(!pc.isCrotchExposed()) output("[pc.lowerGarments]");
		else output("crotch");
		output(", quietly making your escape.");
	}
	//back to square whatever
	processTime(25);
	pc.orgasm();
	clearMenu();
	addButton(0,"Next",move,rooms[currentLocation].westExit);
}

//Entering stall:
public function enteringHaleysStallRepeat():void
{
	author("Wsan");
	showHaley();
	output("You open the stall door to find a veritable feast for the senses. Heady pheromones engulf you immediately, pervading the air and settling in your mind like someone draped a warm blanket over your brain. A scant few feet away, Haley is <i>pummeling</i> what looks to be some kind of milker machine built for taurs. Her entire granite-colored body is covered in a sheen of sweat, beads of it running over her chitinous armor every time she thrusts into the machine. You can sense her desperation in her actions, her back and arms squeezing and flexing every time a powerful buck of her hips sends her long yellow hair flying. She grunts and moans with every insertion and standing behind her, you dimly wonder how it's even possible you didn't hear her cries of effort from outside. Her eyes are squeezed shut and she's tightly gripping the steel pole that secures the milker, her heavy breasts swaying every time she fucks the machine.");
	//Non-treated PC:
	if(!pc.isTreated())
	{
		output("\n\nOnce again, your eyes are drawn immediately to Haley's balls. They're still just as big as you've ever seen them, hanging between her legs like scaled watermelons jostling in a bag. You can practically hear them pumping cum through her cock over her frustrated groans and exhalations, but they never seem to shrink. It takes a few seconds for you to realize you've just been watching her wreck this machine.");
	}
	//Treated femPC
	else if(pc.isTreated() && pc.isBimbo() && pc.hasVagina())
	{
		output("\n\nOnce again, your eyes stick to Haley's massively swollen balls swinging between her legs. They hang suspended by her scaled sack, each thrust making them sway tantalizingly in front of you like delicious, gropeable melons. You can almost hear them pumping cum through her cock over her frustrated groans and exhalations, but they never seem to shrink. It takes a few seconds for you to realize you've just been standing here visualizing the nonstop throb and flow of cum through her overtaxed cock. She obviously needs some help, and there's nothing you're better at than helping someone blow their load.");
		//[Back out] [Get fucked] [Sandwiched]
	}
	clearMenu();
	addButton(0,"Back Out",backOutFromHaleyRepeat,undefined,"Back Out","Time to leave.");
	addButton(1,"Get Fucked",getFuckedByHaleyAsATreatedFemPCRepeatSlut,undefined,"Get Fucked","Ask Haley if she needs your help to relieve her stress.");
	if(pc.isTaur() && pc.hasCock() && pc.biggestCockLength() >= 18) addButton(2,"Sandwiched",getHaleyAFuckingSandwich,undefined,"Sandwiched","Fuck the milker while Haley fills you up.")
	else addDisabledButton(2,"Sandwiched","Sandwiched","You've got to be a big-dicked taur in order to get between them.");
}

//[Back out]
//Time to leave.
public function backOutFromHaleyRepeat():void
{
	clearOutput();
	author("Wsan");
	output("You remember what getting between Haley and release entails, and decide you probably have other things you could be doing for the next six hours. You quietly shut her stall door and pad back into the stables.");
	//move back to square whatever
	clearMenu();
	addButton(0,"Next",move,rooms[currentLocation].westExit);
}

//[Get fucked]
//Ask Haley if she needs your help to relieve her stress.
public function getFuckedByHaleyAsATreatedFemPCRepeatSlut():void
{
	clearOutput();
	showHaley();
	author("Wsan");
	
	var pp:PregnancyPlaceholder = getHaleyPregContainer();
	
	output("You call out in greeting to Haley, who slows her pace and turns her torso towards you. She gives you a little wave in return.");
	output("\n\n<i>“Hey, [pc.name]. You just here to say hi, or...?”</i>");
	output("\n\nShe stops thrusting completely to look at you hungrily, the implication hanging at the end of her sentence blatantly obvious. She eyes you lustily, her gaze roving over your body from top to bottom. You can tell she's thinking about burying her cock in you again, filling you with spunk until you're completely stuffed with her virility. She starts to pant as the machine gets louder, and you realize she's making it work harder just by virtue of looking at you. You've gotta say, it feels hot to have such a visible effect on someone. You give Haley a smile.");
	if(pc.isBimbo() && pc.isTreated()) output("\n\n<i>“You wanna fuck me again, babe?”</i>");
	else output("\n\n<i>“Seems like we can kill two birds with one stone here.”</i>");
	output("\n\n<i>“Oh, you want it bad, huh?”</i> Haley grins at you, working on pulling her massive dick free of the milker. <i>“You're gonna get it, [pc.name].”</i>");
	output("\n\nShe pulls out and is on top of you almost instantly, her lust readily evident.");
	
	//PC non-taur Male:
	if(!pc.isTaur() && !pc.hasVagina() && pc.hasCock())
	{
		output("\n\n");
		if(!pc.isAssExposed() || !pc.isCrotchExposed()) output("You hastily pull off your [pc.gear] to grant her access, her cum already spattering your clothing with every pulse running down her length.");
		else output("You hastily look back, prepared to grant her access, her cum already spattering your [pc.skinFurScales] with every pulse running down her length");
		output(" God, there's a lot of it. But then again, that's what you signed up for. You rub some of it around your [pc.asshole] – she's already hosed it down – in the hopes of making her entry easier as she positions herself above you. Her massive blunted shaft aligns with your hole and you whimper a little when you feel a thick rope of sperm shoot straight into your asshole, a steady drip soon following. The immense pressure of her bloated head forcing you to brace yourself against the stall's wall if she wants a chance of getting into your ass. She snorts from above you, sounding every bit like the impatient stallion.");
		output("\n\n<i>“Good [pc.boyGirl] – hold yourself riiiight there... You're gonna get it – soon!”</i> She fiercely bucks her powerful hips, the sensation of your asshole being stretched wide immediately accompanied by the feeling of being utterly full. It feels like all the air in your lungs has been sucked away, and you struggle to find the rhythm to take some shallow breaths and try to steady yourself. <i>Fuck</i>, she wasn't kidding about wearing you. It feels like your insides are being rearranged, and looking down at your stomach to see the bulging imprint of her flared head, you realize they probably are. The outline loses a little bit of detail under the [pc.skinFurScales] of your [pc.belly] as you watch it in stark fascination, and along with the sensation of warmth rapidly spreading through your lower half, you note she's already filling you with heavy blasts of spunk.");
		pc.buttChange(1500);
		output("\n\n<i>“Uh! Fuck! If you still want this as much as I do, I'm gonna keep doing it my way. Hold on tight, [pc.boyGirl].”</i>");
		output("\n\nHolding on tight is already what you're doing, owing to the gigantic, throbbing length embedded in your body. Being as wrapped around it as you are, you experience each individual shudder and ejaculation of equine semen as a full-body pulsation like it's a second heartbeat. It might as well be; you're pretty sure you can feel hers through it. Despite her unsympathetic treatment of you, despite the fact you're suspended on her massive shaft like an onahole, despite the fact you're rapidly approaching immobility... you're loving this.");
		output("\n\nOr maybe it's <i>because</i> of those things – the complete loss of control, the utter helplessness when she spears you just a little bit further onto her length, the feeling of her warm jizz filling you from bottom to top – all of them have your [pc.cocks] raging hard. Your prostate is pressed tightly down by the bulk of meat impaling you, her massive cumvein bulging almost painfully against it every time it spews another bucketful of jizz into your body, your own cock");
		if(pc.cockTotal() > 1) output("s");
		output(" echoing the effect with a spurt of its own.");
		output("\n\n<i>“I'm gonna cum soon,”</i> Haley gasps from above you, her thrusting motions becoming more erratic, <i>“I hope you know – ugh – what that means for you!”</i>");
		output("\n\nYou can scarcely reply, alternating between gritting your teeth and opening your mouth in a silent scream every time she burrows just a little bit further into your depths. Your body is in shock; a non-taur was never meant to be able to handle this, but you want it so bad. Each buck of her significant hips lifts you slightly off the ground, her grunts and groans increasing in intensity until you're certain she can't get any deeper in you – you're fully suspended on her absurd equine length, pushed up against the wall when she begins to shake.");
		output("\n\n<i>“Oh... god.”</i> She whispers with perfect clarity, her hands firmly laid flat against the wall as you start to feel her cock swelling inside, legs completely straight and flexing around you. You think you hear her say 'good luck' before she raises her head in exaltation, but you're not paying attention to that any more. Her equine flare expands inside you, struggling to keep up with the sudden explosive outflow sourced from her hyperproductive balls. You follow suit, your cock");
		if(pc.cockTotal() > 1) output("s");
		output(" painting the ground beneath you [pc.cumColor] before the backspray coats everything underneath you a pearly white.");
		output("\n\nYou pant in equal parts pleasure and exertion, your prostate being massaged so frequently by the massive loads travelling down her shaft that you suffer multiple orgasms just from receiving the copious amounts of jizz. It hasn't even been more than a few seconds of you shaking on the end of her bloated cock before your stomach starts to sag with the liquid weight of her cum, the roiling pleasure in your tensed abs giving way to the warmth of her seed. The flow is unending, and somewhere in your head you start to wonder if it's going to come out of your mouth – the taste is already lingering across your tongue, and the heady smell feels like it's permeating your pores.");
		output("\n\nMercifully, Haley begins to pull out before that can happen. She doesn't actually stop pumping cum into you though, and the added sensation of skin-on-skin friction across your prostate along with the intermittent throbs against it just bring you back to the peak of orgasm as she slowly drags herself out of your thoroughly gaped asshole. When she finally pops free of the constraints of your slackened body, a torrential deluge of her cum follows, coating your [pc.legs] and the ground beneath your body in body-temperature spunk. Her still-spraying cock spurts another few ropes across you as you roll onto your side, your sloshing stomach too uncomfortable to lie on for long. She sighs, a theatrical exhalation of satisfaction, before fixing you with a smug smile of conquest.");
		output("\n\n<i>“I hope it was as good for you as it was for me, baby.”</i> She flirtatiously flutters her eyelashes and turns to leave, her balls noticeably smaller than they were when you entered. You note she's still leaving a dripping trail of spunk across the stall as she gathers her clothes and exits, though. Well, not like you're going anywhere in a hurry, and the hay strewn across the floor does make a decent bed – you shut your eyes and wait for your gurgling tummy to shrink enough to allow you movement.");

		//cumload yer asshole
		pc.loadInAss(pp);
		processTime(120);
	}
	//PC non-taur Female:
	else if(!pc.isTaur() && pc.hasVagina())
	{
		output("\n\n");
		if(!pc.isAssExposed() || !pc.isCrotchExposed()) output("You hastily pull off your [pc.gear] to grant her access, her cum already spattering your clothing with every pulse running down her length.");
		else output("You hastily look back, prepared to grant her access, her cum already spattering your [pc.skinFurScales] with every pulse running down her length");
		output(" God, there's a lot of it. But then again, that's what you signed up for. You rub some of it around your [pc.asshole] – she's already hosed it down – in the hopes of making her entry easier as she positions herself above you. Her massive blunted shaft aligns with your hole and you whimper a little when you feel a thick rope of sperm shoot straight into your asshole, a steady drip soon following. The immense pressure of her bloated head forces you to brace yourself against the stall's wall if she wants a chance of getting into your ass. She snorts from above you, sounding every bit like the impatient stallion.");
		output("\n\n<i>“Good [pc.boyGirl] – hold yourself riiiight there... You're gonna get it – soon!”</i> She fiercely bucks her powerful hips, the sensation of your asshole being stretched wide immediately accompanied by the feeling of being utterly full. It feels like all the air in your lungs has been sucked away, and you struggle to find the rhythm to take some shallow breaths and try to steady yourself. <i>Fuck</i>, she wasn't kidding about wearing you. It feels like your insides are being rearranged, and looking down at your stomach to see the bulging imprint of her flared head, you realize they probably are. The outline loses a little bit of detail under the [pc.skinFurScales] of your [pc.belly] as you watch it in stark fascination, and along with the sensation of warmth rapidly spreading through your lower half, you note she's already filling you with heavy blasts of spunk.");
		pc.buttChange(1500);
		output("\n\n<i>“Uh! Fuck! If you still want this as much as I do, I'm gonna keep doing it my way. Hold on tight, [pc.boyGirl].”</i>");
		output("\n\nHolding on tight is already what you're doing, owing to the gigantic, throbbing length embedded in your body. Being as wrapped around it as you are, you experience each individual shudder and ejaculation of equine semen as a full-body pulsation like it's a second heartbeat. It might as well be; you're pretty sure you can feel hers through it. Despite her unsympathetic treatment of you, despite the fact you're suspended on her massive shaft like an onahole, despite the fact you're rapidly approaching immobility... you're loving this.");
		output("\n\nOr maybe it's <i>because</i> of those things – the complete loss of control, the utter helplessness when she spears you just a little bit further onto her length, the feeling of her warm jizz filling you from bottom to top – all of them have your [pc.vaginas] dripping wet. Her cock has your body stretched so taut that you're getting off in the weirdest way – the pulsation of her cock against the other side of your womb and pussy walls makes it feel like there's a cock vibrating and throbbing deep inside your [pc.biggestVagina].");
		output("\n\n<i>“I'm gonna cum soon,”</i> Haley gasps from above you, her thrusting motions becoming more erratic, <i>“I hope you know – ugh – what that means for you!”</i>");
		output("\n\nYou can scarcely reply, alternating between gritting your teeth and opening your mouth in a silent scream every time she burrows just a little bit further into your depths. Your body is in shock; a non-taur was never meant to be able to handle this, but you want it so bad. Each buck of her significant hips lifts you slightly off the ground, her grunts and groans increasing in intensity until you're certain she can't get any deeper in you – you're fully suspended on her absurd equine length, pushed up against the wall when she begins to shake.");
		output("\n\n<i>“Oh... god.”</i> She whispers with perfect clarity, her hands firmly laid flat against the wall as you start to feel her cock swelling inside, legs completely straight and flexing around you. You think you hear her say 'good luck' before she raises her head in exaltation, but you're not paying attention to that any more. Her equine flare expands inside you, struggling to keep up with the sudden explosive outflow sourced from her hyperproductive balls. You follow suit, your pussy spraying the ground before the backspray coats everything underneath you a pearly white.");
		output("\n\nYou pant in equal parts pleasure and exertion, your womb being massaged so frequently by the massive loads travelling down her shaft that you suffer multiple orgasms just from receiving the copious amounts of jizz. It hasn't even been more than a few seconds of you shaking on the end of her bloated cock before your stomach starts to sag with the liquid weight of her cum, the roiling pleasure in your tensed abs giving way to the warmth of her seed. The flow is unending, and somewhere in your head you start to wonder if it's going to come out of your mouth – the taste is already lingering across your tongue, and the heady smell feels like it's permeating your pores.");
		output("\n\nMercifully, Haley begins to pull out before that can happen. She doesn't actually stop pumping cum into you though, and the added sensation of skin-on-skin friction through your ass along with the intermittent throbs against your vaginal walls just bring you back to the peak of orgasm as she slowly drags herself out of your thoroughly gaped asshole. When she finally pops free of the constraints of your slackened body, a torrential deluge of her cum follows, coating your legs and the ground beneath your body in body-temperature spunk. Her still-spraying cock spurts another few ropes across you as you roll onto your side, your sloshing stomach too uncomfortable to lie on for long. She sighs, a theatrical exhalation of satisfaction, before fixing you with a smug smile of conquest.");
		output("\n\n<i>“I hope it was as good for you as it was for me, baby.”</i> She flirtatiously flutters her eyelashes and turns to leave, her balls noticeably smaller than they were when you entered. You note she's still leaving a dripping trail of spunk across the stall as she gathers her clothes and exits, though. Well, not like you're going anywhere in a hurry, and the hay strewn across the floor does make a decent bed – you shut your eyes and wait for your gurgling tummy to shrink enough to allow you movement.");
		//cumload yer asshole
		pc.loadInAss(pp);
		processTime(120);
	}
	//PC male taur:
	else if(pc.hasCock() && !pc.hasVagina())
	{
		output("\n\n");
		if(!pc.isCrotchExposed() || pc.isAssExposed()) output("She tugs down your [pc.lowerGarments] to expose your [pc.asshole] and [pc.cock] to the warm, pheromone-filled air of the stall. ");
		output("Your cock is already erect, hanging proudly below your tauric belly, but she ignores it. She's completely focused on your ass, seizing it with both hands and pulling your cheeks to the side.");
		output("\n\n<i>“Oh, I hope you're ready for this. I've waited so long for a mare that can handle me,”</i> she groans in need, her grip on your [pc.butt] becoming tighter as she prepares to mount you, <i>“I hope you come back for more, babe.”</i>");
		output("\n\nShe springs upward, catapulting herself onto your rear and grabbing your hindquarters with her front legs. You can already feel the head of her massive, bloated cock covering your ass and hind legs with hot jizz before she aligns it with your entrance. Rivulets of spunk run down your ass to drip from your [pc.belly]. An immense pressure exerts itself on your ass as Haley pushes against you, the staggering force of her bloated head compelling you to brace yourself against the stall's wall if she wants a chance of getting into your ass. She snorts from above you, sounding every bit like the impatient stallion about to mount her breeding mare.");
		output("\n\n<i>“Good [pc.boyGirl] – hold yourself riiiight there... You're gonna get it so fucking-!”</i> She fiercely bucks her powerful hips, the sensation of your asshole being stretched wide immediately accompanied by the feeling of being utterly full. It feels like all the air in your lungs has been sucked away, and you struggle to find the rhythm to take some shallow breaths and try to steady yourself. <i>Fuck</i>, she wasn't kidding about wearing you. Anything less than a full-sized 'taur wouldn't be able to handle this at all. She scrabbles up your body in little jerks and thrusts, each one pushing her intermittently bulging cumvein right on your prostate.");
		pc.buttChange(1500);
		output("\n\n<i>“Fuck! I have missed this so much,”</i> she pants laboriously, slowly but inexorably advancing further up your tauric body, <i>“you're <i>so</i> much better than the machine. Hold on tight babe, I'm t-trying to get it all in.”</i>");
		output("\n\nHolding on tight is already what you're doing, owing to the gigantic, throbbing length embedded in your body. Being as wrapped around it as you are, you experience each individual shudder and ejaculation of equine semen as a full-body pulsation like it's a second heartbeat. It might as well be; you're pretty sure you can feel hers through it. Despite her unsympathetic treatment of you, despite the fact her massive shaft is plumbing the inner depths of your body, despite the fact your stomach is beginning to sag slightly with the weight of her jizz... you're loving this.");
		output("\n\nOr maybe it's <i>because</i> of those things – the complete loss of control, the utter helplessness when she spears you just a little bit further onto her length, the feeling of her warm seed filling you from bottom to top – all of them have your [pc.cocks] raging hard. Each thrusting motion from above rubs across your prostate in the most amazing way, and you can't help but groan as your dick");
		if(pc.cockTotal() == 1) output(" sprays");
		else output("s spray");
		output(" your front legs and the ground.");
		output("\n\n<i>“I'm gonna cum soon,”</i> Haley gasps from above you, her hips bucking wildly, <i>“I hope you know – ugh – what that means for you!”</i>");
		output("\n\nYou can scarcely reply, alternating between gritting your teeth and opening your mouth in a silent scream every time she burrows just a little bit further into your depths. Your body is barely able to handle her; even the largest 'taur wasn't built to handle this, but you're just able to manage it if you focus on how good it feels. Each buck of her significant hips slaps you in the butt with her massive balls, her grunts and groans increasing in intensity until you're certain she can't get any deeper in you – you're almost suspended on her absurd equine length, being pushed up against the wall when she begins to shake.");
		output("\n\n<i>“Unnnh! Uh! U-”</i>");
		output("\n\nHer voice comes in halting grunts and then stops completely as you feel her entire body flex, her six legs hugging your swollen midriff as tight as she possibly can. The equine cock inside you follows suit, stiffening and swelling to accommodate for the massive outflow of spunk being dumped into your stomach by the bucketful. You can feel the flare of it stretching you out inside with each gout of jizz, each throb of the iron-hard length pushing down hard on your prostate. You hardly notice the feeling of her balls pumping hard, pushed right up against your ass.");
		output("\n\n<i>“Oh... Oh. God. Stay still... Stay still and take it. Good [pc.boyGirl]. Goooood [pc.boyGirl].”</i> Haley's voice comes in a breathless whisper full of wonder, as if she's marveling at your miraculous subservience. You do your best to follow her instruction while she quivers and gasps quietly on top of you, but find your stomach is swelling so rapidly with the weight of her bucketfuls of cum that you're having trouble staying standing. She groans luxuriously and wraps her arms tightly around the [pc.hips] of your humanoid form, just laying her head on your shoulder and moaning quietly into your ear.");
		output("\n\nYou pant in equal parts pleasure and exertion, your prostate being massaged so frequently by the massive loads travelling down her shaft that you suffer multiple orgasms just from receiving the copious amounts of jizz. It hasn't even been more than a few seconds of you shaking on the end of her cock before the liquid weight of her cum starts to really weigh you down, the roiling pleasure in your tensed lower half giving way to the warmth of her seed. The flow is unending, and between the dual stimulation of your prostate and her jism coating your insides you're scarcely able to stay standing, your hands curling into tightly-balled fists against the stall.");
		output("\n\nHaley coos to you comfortingly, and despite your weak groan of discomfort as your cum-swollen stomach reaches your unguligrade knees, you decide to stick it out for her. She softly strokes your cheek, the affectionate gesture completely at odds with her cock mercilessly ejaculating into you like you're a living milking machine. She pulls back and kisses you across your shoulder blades while your tummy continues to acquiesce to the seemingly never-ending flow of cum from her to you. In the relative calm of her ejaculation, you're more able to feel her balls against your ass, and you think they're <i>slightly</i> smaller than before.");
		output("\n\n<i>“You're amazing, [pc.name].”</i> Haley purrs into your ear, her hands on your shoulders. <i>“You're the only one who can take me so... completely.”</i>");
		output("\n\nYou can't help but feel she's just buttering you up, but even so, the treatment is nice. Her hands slide down your front, massaging and rubbing your [pc.chest]. You let your arms fall from the slat on the wall you were holding; an outside force wouldn't be able to move you from under Haley by now, forget about doing it with your own power.");
		output("\n\n<i>“Thaaaat's right, babe. Mmmm.”</i>");
		output("\n\nAfter a few minutes of idly lying on top of you in some kind of post-orgasmic torpor, Haley slowly rouses herself and asks if you're ready for her to pull out. You nod gingerly, avoiding making any sudden motion lest you upset your stomach, which by now is scraping the floor with its liquid cargo. She withdraws mercifully slowly, allowing your body to reacclimate itself to not being full of what feels like a living, virile tree trunk. The gradual slide of her rod across your sensitive bits reignites the feeling of being fucked, and you find yourself groaning as your cock");
		if(pc.cockTotal() > 1) output("s spatter");
		else output(" spatters");
		output(" the last of its load along your tummy.");
		output("\n\nWhen she finally pops free of the constraints of your slackened body, only a small trail of her spunk leaks from your gaping asshole, running down your hind legs. She was so deep inside you that nearly all of it is trapped in your body, her flared head acting like a plug to your stomach. She sighs, a theatrical exhalation of satisfaction, before stroking your flank.");
		output("\n\n<i>“You'll be stuck here for a little while, but I hope it was as good for you as it was for me. I wasn't kidding when I said no one has ever done that for me. This is the first time in a while I've been able to think so clearly without having to deal with my needs. Thanks, [pc.name].”</i>");
		output("\n\nShe sounds completely sincere in her thankfulness, so it seems like you were a good solution to her problem. You're not sure how effective transferring gallons of equine jizz from her balls to your tummy like some kind of container is as a long-term strategy, but that's a problem you'll have to deal with later. For now, you might as well sleep it off – your stomach is basically a waterbed at this point, anyway.");
		//6 hours pass
		pc.loadInAss(pp);
		processTime(360);
		pc.orgasm();
		pc.orgasm();
		pc.orgasm();
	}
	//PC female Treated taur:
	else if(pc.hasVagina() && pc.isTaur() && pc.isBimbo() && pc.isTreated() && pc.biggestTitSize() >= 1)
	{
		output("\n\nShe pushes your shoulders down, the hint pretty obvious to a Treated girl. You fold your legs and lie down, nuzzling the sensitive head of her penis while it hoses your clothed tits with spunk.");
		output("\n\n<i>“Put your mouth on it, baby... start swallowing.”</i> She groans from above you.");
		if(!pc.isChestExposed()) 
		{
			output(" <i>“Lose the top too, silly girl.”</i>");
		}
		output("\n\nYou");
		if(!pc.isChestExposed()) output(" strip out of your [pc.upperGarments], letting ");
		else output(" let ");
		output("her warm jizz coat your [pc.breasts] in a pearly-white glaze. Softly wrapping your hand around the underside of her massive rod, you guide the head to your [pc.lips] and kiss it. The femtaur sings your praises in the form of ecstatic gasps and moaned fragments of sentences above you, her underside shivering with pleasure. Thick, warm ropes of creamy jizz splatter the back of your throat and slide into your stomach as you lightly slide your tongue around her cockhole, enticing her to fill you further.");
		output("\n\n<i>“Oh my <i>god</i>. You must be an angel, [pc.name]. I love what you do with your t – tunnh!”</i>");
		output("\n\nYou gulp down her spunk while she talks, her voice rising sharply when you put your lips on her cock and suckle her head. She closes her eyes and raises her head to look at the ceiling, her chest heaving as she just stands still and enjoys what you're doing to her. You have zero chance of fitting her in your mouth, but there's nothing stopping you from french-kissing her equine cockhead. Her breathing is loud and labored above you, each loving stroke of your tongue across her urethra rewarding you with a heavy spurt of jism. Your task is interrupted suddenly by Haley taking a step back, and you look up quizzically.");
		output("\n\n<i>“Sorry [pc.name], but any longer and I'd actually cum in your mouth.”</i>");
		output("\n\nYou absentmindedly lick your lips and tell her you wouldn't mind, and she laughs good-naturedly.");
		output("\n\n<i>“Sure, you love it now, but you might think differently when you're drowning. C'mon, get up and turn around.”</i>");
		output("\n\nYou obediently get to your [pc.feet], turning around ");
		if(pc.tailCount > 0) output("and lifting your tail ");
		output("to present yourself. ");
		if(!pc.isCrotchExposed() || !pc.isAssExposed()) output("Haley tugs down your [pc.lowerGarments] to expose your [pc.asshole] and [pc.vaginas] to the warm, pheromone-filled air of the stall. ");
		output("Your [pc.biggestVagina] is already wet, winking at the futa femtaur while it fills with moisture. She casually sinks two fingers into it in response, sending thrills of pleasure up your spine when she starts to gently pump you. Her other hand seizes your buttcheek, pulling it to the side and watching it wobble back into place.");
		output("\n\n<i>“Oh, I am gonna fucking <i>wreck</i> you. I've waited so long to meet another mare that can handle me,”</i> she groans in need, her grip on your [pc.butt] tightening as she prepares to mount you, <i>“I'll make sure you love this every bit as much as I'm going to.”</i>");
		output("\n\nShe springs upward, catapulting herself onto your rear and grabbing your hindquarters with her front legs. You can already feel the head of her massive, bloated cock covering your ass and legs with hot jizz before she aligns it with your entrance. Rivulets of spunk run over the lips of your pussy to drip from your [pc.belly]. An immense pressure exerts itself on your ass when she begins to push herself in. You moan a little when you feel a spurt of sperm shoot straight into your asshole, a steady flow soon following. The staggering force of Haley's bloated cockhead compels you to brace yourself against the stall's wall if she wants a chance of getting into your ass. She snorts from above you, sounding every bit like the impatient stallion about to mount her breeding mare.");
		output("\n\n<i>“Good girl – hold yourself riiiight there... You're gonna get it so fucking-!”</i> She fiercely bucks her powerful hips, the sensation of your asshole being stretched wide immediately accompanied by the feeling of being utterly full. It feels like all the air in your lungs has been sucked away, and you struggle to find the rhythm to take some shallow breaths and try to steady yourself. <i>Fuck</i>, she feels even bigger than she looks. Anything less than a full-sized Treated 'taur wouldn't be able to handle this at all. She scrabbles up your body in little jerks and thrusts, her massive cumvein intermittently bulging pleasantly against your walls.");
		pc.buttChange(1500);
		output("\n\n<i>“Fuck! I have missed this so much,”</i> she pants laboriously, slowly but inexorably advancing further up your tauric body, <i>“a real mare is <i>so</i> much better than the machine. Hold on tight babe, I'm t-trying to get it all in.”</i>");
		output("\n\nHolding on tight is already what you're doing, owing to the gigantic, throbbing length embedded in your body. It feels heavenly to have it inside you and spewing spunk, each pulse eliciting jolts of pleasure from your distended ass. You're pretty sure you can feel her heartbeat through it, too – there's something to be said about her dick giving life, but all you're really interested in is getting more of it inside you. She's definitely the one in control, but you just can't help yourself. You bite your lip and push yourself backwards off the stall, gasping when you successfully drive her giant cock further into you, your asshole stretching just a bit more as it swallows her thickened base.");
		output("\n\nOh, <i>[pc.name]</i>... you really <i>are</i> an angel.”</i>");
		output("\n\nThe experience has you panting in lust – the complete loss of control, the utter helplessness when she spears you just a little bit further onto her length, the feeling of her warm seed filling you from bottom to top – all of them have your [pc.vaginas] dripping wet. Each thrusting motion from above rubs you in the most amazing way, and you can't help but groan as your pussy flexes and contracts, trying to coax a load out of the stallion cock that isn't there.");
		output("\n\n<i>“I'm gonna cum soon,”</i> Haley gasps from above you, her hips bucking wildly, <i>“I hope you're ready, [pc.name]!”</i>");
		output("\n\nYou've never been more ready to take it. Your body is just barely able to handle her; even the largest 'taur wasn't built to handle this, but the Treatment helps you focus on how blissfully good it feels. Each buck of her significant hips slaps you in the butt with her massive balls, her grunts and groans increasing in intensity until you're certain she can't get any deeper in you – you're almost suspended on her absurd equine length, being pushed up against the wall when she begins to shake.");
		output("\n\n<i>“Unnnh! Uh! U-”</i>");
		output("\n\nHer voice comes in halting grunts and then stops completely as you feel her entire body flex, her six legs hugging your swollen midriff as tight as she possibly can. The equine cock inside you follows suit, stiffening and swelling to accommodate for the massive outflow of spunk being dumped into your stomach by the bucketful. You can feel the flare of it stretching you out inside with each gout of jizz, each throb of the iron-hard length pushing your guts downwards. You hardly notice the feeling of her balls pumping hard, pushed right up against your ass.");
		output("\n\n<i>“Oh... Oh. God. Stay still... Stay still and take it. Good girl. Goooood girl.”</i> Haley's voice comes in a breathless whisper full of wonder, as if she's marveling at your miraculous subservience. You do your best to follow her instruction while she quivers and gasps quietly on top of you, your stomach shaking underneath you with the weight its taking on so rapidly. She groans luxuriously and wraps her arms tightly around the [pc.hips] of your humanoid form, just laying her head on your shoulder and moaning quietly into your ear.");
		output("\n\nYou pant in equal parts pleasure and exertion, your sensitive insides being massaged so frequently by the massive loads travelling down her shaft that you can't help but suffer multiple orgasms just from receiving the copious amounts of jizz. It hasn't even been more than a few seconds of you shaking on the end of her cock before the liquid weight of her cum starts to really weigh you down, the roiling pleasure in your tensed lower half giving way to the warmth of her seed. The flow is unending, and her heavy jism coating your insides means you're scarcely able to stay standing, your hands curling into tightly-balled fists against the stall. Haley coos to you comfortingly.");
		output("\n\n<i>“Do you want it in your pussy too, girl?”</i>");
		output("\n\nYou nod as forcefully as you can manage on the edge of being insensate. Softly stroking your cheek, the affectionate gesture completely at odds with her cock mercilessly ejaculating into you, she slowly begins to pull out. Grateful for the opportunity to reacclimate to not being full, you stand still and let her withdraw. The gradual slide of her rod across your sensitive bits reignites the feeling of being fucked, and you find yourself groaning as your ");
		if(pc.totalVaginas() == 1) output("pussy seizes");
		else output("pussies seize");
		output(" again, your [pc.girlCumNoun] running down your tummy.");
		output("\n\n<i>“You're amazing, [pc.name].”</i> Haley purrs into your ear, her hands on your shoulders. <i>“No one has ever taken me so... completely.”</i>");
		output("\n\nYou can't help but feel she's just buttering you up, but even so, the treatment is nice. Her hands slide down your front, massaging and rubbing your [pc.chest]. You let your arms fall from the slat on the wall you were holding; an outside force wouldn't be able to move you from under Haley by now, forget about doing it with your own power.");
		output("\n\n<i>“Thaaaat's right, babe. Just relax.”</i>");
		output("\n\nWhen she finally pops free of the constraints of your slackened body, only a small trail of her spunk leaks from your gaping asshole, running down your hind legs. She was so deep inside you that nearly all of it is trapped in your body, her flared head acting like a plug to your stomach. You barely have time to get a proper breath before you feel the warmth of her ejaculate washing over your ");
		if(pc.totalVaginas() == 1) output("glistening snatch");
		else output("[pc.biggestVagina]");
		output(", quickly followed by the sensation of her equine flare pushing into you. The progress is a lot less gradual than it was for your ass, the Treatment doing its part to aid her in shoving herself deep in your cunt.");
		var x:int = pc.biggestVaginaIndex();
		pc.cuntChange(x,1500);
		output("\n\nYou utter a small scream of undisguised lust that lapses into a moo when she stretches your lips to capacity, gliding on through on the wetness of your walls. She slides right up to your cervix,");
		
		if(pc.isPregnant(x)) output(" a tiny moan of disappointment escaping her lips when she realizes you're pregnant and can't get your womb stuffed full too. She contents herself with slowly drawing back and sliding right back up to your deepest point, cum soaking into every crevice of your femininity until both of your well-fucked holes are sloppy and dripping.");
		else output(" a theatrical sigh of satisfaction slipping from her lips when her cum begins to splash into your womb. She pulls your humanoid half into a hug between her curvaceous breasts, content to lie atop you in a relaxed manner while her cock noisily fills your womb. There's something primally satisfying about having your womb stuffed full by a stallion's throbbing cock – the high goes beyond the Treatment, like a reward for your happy subservience. Whatever the feeling is, you're happy to let her seed you with equine jizz until your womb swells like your stomach.");
		output("\n\nHaley groans quietly from above, her balls flush against your ass as they're slowly emptied into you. A few minutes pass before she rouses herself from her post-orgasmic torpor, letting you know she's going to pull out. Her swollen head slides out of you easily, only catching as it pops past your lips, giving you a last orgasmic spasm. Warm spunk spills out of your abused cunt, sliding down your swollen underside and splattering to the ground.");
		output("\n\nShe sighs before stroking your flank, bending down to inspect how full your womb and belly are.");
		output("\n\n<i>“You'll be stuck here for a little while, but I hope it was as good for you as it was for me. I wasn't kidding when I said no one has ever done that for me. This is the first time in a while I've been able to think so clearly without having to deal with my needs. Thanks, [pc.name].”</i>");
		output("\n\nShe sounds completely sincere in her thankfulness, so it seems like you were a good solution to her problem. You're not sure how effective transferring gallons of equine jizz from her balls to your body like some kind of container is as a long-term strategy, but then you're not really big on problem-solving anyway. For now, you might as well sleep it off – your tummy is basically a waterbed at this point, no point letting it go to waste.}");
		//6 hours pass
		//cumload yer asshole
		//cumload pussy
		pc.loadInAss(pp);
		pc.loadInCunt(pp,x);
		processTime(360);
		pc.orgasm();
		pc.orgasm();
		pc.orgasm();
	}
	//PC female taur:
	else
	{
		output("\n\n");
		if(!pc.isCrotchExposed() || pc.isAssExposed()) output("She tugs down your [pc.lowerGarments] to expose your [pc.asshole] and [pc.vaginas] to the warm, pheromone-filled air of the stall. ");
		output("Your ");
		if(pc.totalVaginas() == 1) output("pussy is");
		else output("pussies are");
		output(" already wet, winking at the futa femtaur while ");
		if(pc.totalVaginas() == 1) output("it fills");
		else output("they fill");
		output(" with moisture, but she ignores ");
		if(pc.totalVaginas() == 1) output("it");
		else output("them");
		output(". She's completely focused on your ass, seizing it with both hands and pulling your cheeks to the side.");

		output("\n\n<i>“Oh, I hope you're ready for this. I've waited so long for a mare that can handle me,”</i> she groans in need, her grip on your [pc.butt] becoming tighter as she prepares to mount you, <i>“I hope you come back for more, babe.”</i>");

		output("\n\nShe springs upward, catapulting herself onto your rear and grabbing your hindquarters with her front legs. You can already feel the head of her massive, bloated cock covering your ass and hind legs with hot jizz before she aligns it with your entrance. Rivulets of spunk run down your ass to drip from your [pc.belly]. An immense pressure exerts itself on your ass as Haley pushes against you, the staggering force of her bloated head compelling you to brace yourself against the stall's wall if she wants a chance of getting into your ass. She snorts from above you, sounding every bit like the impatient stallion about to mount her breeding mare.");
		output("\n\n<i>“Good [pc.boyGirl] – hold yourself riiiight there... You're gonna get it so fucking-!”</i> She fiercely bucks her powerful hips, the sensation of your asshole being stretched wide immediately accompanied by the feeling of being utterly full. It feels like all the air in your lungs has been sucked away, and you struggle to find the rhythm to take some shallow breaths and try to steady yourself. <i>Fuck</i>, she wasn't kidding about wearing you. Anything less than a full-sized 'taur wouldn't be able to handle this at all. She scrabbles up your body in little jerks and thrusts, her massive cumvein intermittently bulging against your walls.");
		pc.buttChange(1500);
		output("\n\n<i>“Fuck! I have missed this so much,”</i> she pants laboriously, slowly but inexorably advancing further up your tauric body, <i>“a real mare is <i>so</i> much better than the machine. Hold on tight babe, I'm t-trying to get it all in.”</i>");
		output("\n\nHolding on tight is already what you're doing, owing to the gigantic, throbbing length embedded in your body. Being as wrapped around it as you are, you experience each individual shudder and ejaculation of equine semen as a full-body pulsation like it's a second heartbeat. It might as well be; you're pretty sure you can feel hers through it. Despite her unsympathetic treatment of you, despite the fact her massive shaft is plumbing the inner depths of your body, despite the fact your stomach is beginning to sag slightly with the weight of her jizz... you're loving this.");
		output("\n\nOr maybe it's <i>because</i> of those things – the complete loss of control, the utter helplessness when she spears you just a little bit further onto her length, the feeling of her warm seed filling you from bottom to top – all of them have your [pc.vaginas] dripping wet. Each thrusting motion from above rubs you in the most amazing way, and you can't help but groan as your {pussy flexes and contracts/pussies flex and contract}, trying to coax a load out of the stallion cock that isn't there.");
		output("\n\n<i>“I'm gonna cum soon,”</i> Haley gasps from above you, her hips bucking wildly, <i>“I hope you know – ugh – what that means for you!”</i>");
		output("\n\nYou can scarcely reply, alternating between gritting your teeth and opening your mouth in a silent scream every time she burrows just a little bit further into your depths. Your body is barely able to handle her; even the largest 'taur wasn't built to handle this, but you're just able to manage it if you focus on how good it feels. Each buck of her significant hips slaps you in the butt with her massive balls, her grunts and groans increasing in intensity until you're certain she can't get any deeper in you – you're almost suspended on her absurd equine length, being pushed up against the wall when she begins to shake.");
		output("\n\n<i>“Unnnh! Uh! U-”</i>");
		output("\n\nHer voice comes in halting grunts and then stops completely as you feel her entire body flex, her six legs hugging your swollen midriff as tight as she possibly can. The equine cock inside you follows suit, stiffening and swelling to accommodate for the massive outflow of spunk being dumped into your stomach by the bucketful. You can feel the flare of it stretching you out inside with each gout of jizz, each throb of the iron-hard length pushing your guts downwards. You hardly notice the feeling of her balls pumping hard, pushed right up against your ass.");
		output("\n\n<i>“Oh... Oh. God. Stay still... Stay still and take it. Good [pc.boyGirl]. Goooood [pc.boyGirl].”</i> Haley's voice comes in a breathless whisper full of wonder, as if she's marveling at your miraculous subservience. You do your best to follow her instruction while she quivers and gasps quietly on top of you, but find your stomach is swelling so rapidly with the weight of her bucketfuls of cum that you're having trouble staying standing. She groans luxuriously and wraps her arms tightly around the [pc.hips] of your humanoid form, just laying her head on your shoulder and moaning quietly into your ear.");
		output("\n\nYou pant in equal parts pleasure and exertion, your sensitive insides being massaged so frequently by the massive loads travelling down her shaft that you can't help but suffer multiple orgasms just from receiving the copious amounts of jizz. It hasn't even been more than a few seconds of you shaking on the end of her cock before the liquid weight of her cum starts to really weigh you down, the roiling pleasure in your tensed lower half giving way to the warmth of her seed. The flow is unending, and her jism coating your insides means you're scarcely able to stay standing, your hands curling into tightly-balled fists against the stall.");
		output("\n\nHaley coos to you comfortingly, and despite your weak groan of discomfort as your cum-swollen stomach reaches your unguligrade knees, you decide to stick it out for her. She softly strokes your cheek, the affectionate gesture completely at odds with her cock mercilessly ejaculating into you like you're a living milking machine. She pulls back and kisses you across your shoulder blades while your tummy continues to acquiesce to the seemingly never-ending flow of cum from her to you. In the relative calm of her ejaculation, you're more able to feel her balls against your ass, and you think they're <i>slightly</i> smaller than before.");
		output("\n\n<i>“You're amazing, [pc.name].”</i> Haley purrs into your ear, her hands on your shoulders. <i>“You're the only one who can take me so... completely.”</i>");
		output("\n\nYou can't help but feel she's just buttering you up, but even so, the treatment is nice. Her hands slide down your front, massaging and rubbing your [pc.chest]. You let your arms fall from the slat on the wall you were holding; an outside force wouldn't be able to move you from under Haley by now, forget about doing it with your own power.");
		output("\n\n<i>“Thaaaat's right, babe. Mmmm.”</i>");
		output("\n\nAfter a few minutes of idly lying on top of you in some kind of post-orgasmic torpor, Haley slowly rouses herself and asks if you're ready for her to pull out. You nod gingerly, avoiding making any sudden motion lest you upset your stomach, which by now is scraping the floor with its liquid cargo. She withdraws mercifully slowly, allowing your body to reacclimate itself to not being full of what feels like a living, virile tree trunk. The gradual slide of her rod across your sensitive bits reignites the feeling of being fucked, and you find yourself groaning as your ");
		if(pc.totalVaginas() == 1) output("pussy seizes");
		else output("pussies seize");
		output(" again, the last of your girlcum running down your tummy.");
		output("\n\nWhen she finally pops free of the constraints of your slackened body, only a small trail of her spunk leaks from your gaping asshole, running down your hind legs. She was so deep inside you that nearly all of it is trapped in your body, her flared head acting like a plug to your stomach. She sighs, a theatrical exhalation of satisfaction, before stroking your flank.");
		output("\n\n<i>“You'll be stuck here for a little while, but I hope it was as good for you as it was for me. I wasn't kidding when I said no one has ever done that for me. This is the first time in a while I've been able to think so clearly without having to deal with my needs. Thanks, [pc.name].”</i>");
		output("\n\nShe sounds completely sincere in her thankfulness, so it seems like you were a good solution to her problem. You're not sure how effective transferring gallons of equine jizz from her balls to your tummy like some kind of container is as a long-term strategy, but that's a problem you'll have to deal with later. For now, you might as well sleep it off – your stomach is basically a waterbed at this point, anyway.");
		//6 hours pass
		//cumload yer asshole
		pc.loadInAss(pp);
		processTime(360);
		pc.orgasm();
		pc.orgasm();
		pc.orgasm();
	}
	
	clearMenu();
	addButton(0,"Next",move,rooms[currentLocation].westExit);
}

//[Sandwiched] (Male taur, Dicklength > 18)
public function getHaleyAFuckingSandwich():void
{
	clearOutput();
	showHaley();
	author("Wsan");
	//Fuck the milker while Haley fills you up.
	output("You call out in greeting to Haley, who slows her pace and turns her torso towards you. She gives you a little wave in return.");
	output("\n\n<i>“Hey, [pc.name]. You just here to say hi, or...?”</i>");
	output("\n\nShe stops thrusting completely to look at you hungrily, the implication hanging at the end of her sentence blatantly obvious. You hastily explain your plan before she can jump you – not that she does anything quickly with that gigantic cock swinging underneath her. Having felt its weight and girth inside you, you can't imagine getting around with it. She listens and nods eagerly, clearly just happy to have someone to help her out.");
	output("\n\n<i>“You wanna try out the 'taur milker, huh? I hope you're packing, stud, it'd be a big waste otherwise.”</i> She teases lightly, slowly sliding her dripping horsecock from the machine. <i>“C'mere and I'll show you how it works. I mean, it's pretty simple.”</i>");
	output("\n\nYou amble over and she points at one of the induction ports – the one she was just using. Despite her voluminous ejaculations, it looks like her spunk was wicked away pretty much instantly.");
	output("\n\n<i>“The suction is really strong once you're going,”</i> Haley explains, <i>“it varies the strength based on input. To put it in simpler terms: the more you're cumming, the harder it sucks your dick. So it's no different from a Treated girl, really.”</i> She says with a wink.");
	output("\n\nFace to face with the Treated hermtaur, it's hard to not be turned on. Her skin and scales glisten with sweat, and she's still trying to catch her breath. The steady bob of her large breasts as she breathes in and out is mesmerizing, and you find yourself inwardly amused at the realization everything about this woman is big. That's New Texas for you, you guess.");
	output("\n\n<i>“See something you like, [pc.name]?”</i> Haley smiles, pushing her tits together with her arms. <i>“I don't mind being your inspiration to use the milker.”</i>");
	output("\n\nIt's inspiration, alright. Your [pc.biggestCock] is raging hard and ready for a go at the milker, pre-cum already beading at the tip. Haley looks down and coos in approval, licking her lips.");
	output("\n\n<i>“I guess you <i>are</i> packing after all, huh?”</i> She murmurs, running a hand down your side as she walks around to your rear. <i>“Alright big boy, get up in that milker. I'll give you a headstart before I start getting up in you.”</i>");
	output("\n\nNo further encouragement is needed. You align your [pc.cockHeadBiggest] with the milker and shove it in with one thrust,");
	//I don't know if this is an actual parser call but if not just use biggestCockLength() </=> 50"
	if(pc.biggestCockThickness() < 7) output(" the milker automatically detecting your size and tightening up for you.");
	else output(" the milker struggling to cope with your thickness until it automatically loosens up a bit.");
	output("\n\nThe suction is immediate, albeit weak, but still a nice feeling. The milker gives your dick a velvet-soft massage from top to bottom, applying soft pressure across the surface to stimulate your rod. You can't help but shiver in pleasure at the sensation, your [pc.legs] tensing momentarily when the tingling reaches your sensitive head.");
	output("\n\n<i>“Oooh, you like that huh?”</i> Haley asks in a sultry tone from behind you, sounding every bit like she's enjoying this as much as you are.");
	if(pc.balls > 0) 
	{
		output("\n\nYou feel her hand sliding down your [pc.butt], getting a good squeeze and grope before her fingers daintily alight upon your [pc.balls]. You start a little, but groan when she gives your [pc.sack] a loving stroke and squeeze.");
		if(pc.ballDiameter() < 6) output(" <i>“Hmm.”</i> She hums, sensually stroking your nuts and giving you a light, loving squeeze before she pulls away. <i>“I'm gonna have so much fun seeing how much cum I can fuck out of you, baby.”</i>");
		else if(pc.ballDiameter() < 12.5) output(" <i>“Mmm.”</i> She moans sensually, the lust 	evident in her voice. You feel her softly cupping your nuts and sensuously caressing them. <i>“I'm gonna have fun seeing how much I can make you cum, babe.”</i>");
		else 
		{
			output(" <i>“Wow.”</i> You hear her whisper, her voice approaching something like 	reverence. You feel another sensual squeeze, followed by her other hand softly cupping your nuts too. <i>“These are... mmm.”</i> You hear the rustling of hay behind you, turning to see... nothing? It's not like she could have gotten aw- nnggggoh<i>fuck</i>, there's a warm tongue lapping at your nuts. Haley slurps lustily from below as she sucks ");
			if(pc.balls > 1) output("one of your");
			else output("your");
			output(" ball");
			if(pc.balls > 1) output("s");
			output(" into her mouth with some effort, the wetness maddeningly pleasurable. She lets you go but continues to drag her tongue across your nuts, moaning all the while. She's probably not down there for any longer than ten seconds, but it feels like an hour. By the time she gets back to her feet, you're shaking and groaning, the milker eagerly sucking away your pre-cum.");
			output("\n\n<i>“Now I <i>really</i> wanna see how much I can make you cum.”</i> She declares, finally taking her hands off your now-churning testes, her own jizz splattering the floor beneath the two of you.");
		}
	}
	else output("\n\nYou feel her hand sliding down your [pc.butt], getting a good squeeze and grope before her hand slides along the [pc.skinFurScales] of your underside, slowly stroking you before she gets to the [pc.biggestSheath] of your cock. Your tauric anatomy prevents her from reaching any further, but she makes sure to give you some sensual, invigorating rubbing before pulling her arm back.");
	output("\n\nHer hands now placed squarely on your flank, you find yourself breathing heavily in anticipation of being mounted. No words are exchanged; you both know it's time to get down to hot and sweaty fucking. Haley rears up, her behemoth cock springing upwards and coming down on your ass before she grabs onto your rear end, her legs holding you as a willing captive while she aligns herself with your [pc.asshole]. A few seconds of her unwieldy cock coating your ass and hind legs in jizz pass before she finally gets it right, digging her head into your body slowly.");
	output("\n\nYou both grunt at the initial penetration, lapsing into drawn out groans of agonizing lust and pleasure as she slowly slips further into you, every bit the conqueror. It's still hard to take her cock, but having done it before you're at least practiced. That doesn't make it any less of an ordeal, though; you pant as she fucks it into you inch by inch with little grunts and moans, the bloated head spewing spunk into the whole time. Thankfully, it only takes a few seconds for her spunk to liberally lube up your insides, and it's not long before she begins artfully sliding across your prostate, eliciting an almost-painful orgasm and a welcome reaction from the milker.");
	pc.buttChange(1500);
	output("\n\nOh, god, the milker. Caught up in the sensation of Haley riding you like you're her breeding mare, you'd almost forgotten it was there. That's no longer possible – with each long draw back and slap of her balls on your rump, you're fucked into the milker and filling it with your own spunk. True to Haley's word, the milker rewards you by only suckling your cock harder, coercing you into filling it as much as you possibly can. You're caught between in a silent scream of pure pleasure – every time Haley rams into you from behind, you accompany her spray of equine semen into your deepest recesses with your own into the milker.");
	output("\n\nIt's hard to keep this up and still stay conscious with the pleasure overload exploding through your mind, but you do your best. Haley seems mercifully close to cumming herself, if the volume of her rough ejaculations into your insides and the noises she's making are any indication. You grit it out and just lose yourself in her motions, each agonizingly long outward slide followed by a powerful buck of her hips to fill you up again.");
	output("\n\n<i>“You're even better when you're fucking the milker,”</i> she gasps in between thrusts, <i>“I'm gonna cum..!”</i>");
	output("\n\nHer arms slide down your humanoid torso to hug you from behind, her soft breasts weighing on your back. She's so close that you can actually feel her abs tighten as she screams in release, her throbbing cock immediately swelling further with the volume of jizz traveling through it. You get to feel the sensation of her cumvein swelling from bottom to top, tracking its progress by virtue of it making an imprint on your insides until her load reaches the tip. Her spunk <i>explodes</i> into you, immediately suffusing your battered depths with liquid warmth. The outpouring of fluids doesn't stop, Haley's groaning in your ear a lyrical accompaniment to the sudden swelling of your stomach.");
	output("\n\nThe milker sucks you long and hard, the dual sensations of both filling and being filled warring in your mind until you can't take it any more, lapsing into a half-conscious standing state while Haley holds you up. You pass the next few minutes in continuous orgasm, unable to differentiate between the pleasure of Haley's loads being dumped into you or the milker sucking the last of your spunk out – there always seems to be more, what with her cock stimulating your prostate with every throb. You're already immobilized by the sheer weight of her jizz your body seems all too eager to accept, each noise she makes in your ear swiftly followed by more.");
	output("\n\nFinally, the flow slows to what would be deemed a normal ejaculation for a regular Treated bull, signaling to the both of you that it's time for Haley to pull out. She kisses your neck and does so with care, making sure you aren't hurt in the process of her extricating the still-bloated and dripping organ from the depths of your body. The milker beeps and shuts off automatically upon detection of lack of additional flow, and you're released from its loving caresses. Haley's still panting, even more breathless than she was when you first walked in. She can barely get the words out.");
	output("\n\n<i>“That... was amazing. I think you might – you might actually be – the best lay in the entire universe. They should put a – a warning label on you. 'Might ruin every other encounter'.”</i>");
	output("\n\nYou'd flush with pride if you weren't already completely red with exhaustion, but as it is you settle for catching your breath. Haley walks to your front and surprises you with a passionate kiss, her hands holding your [pc.face] possessively as her tongue intertwines with your own, her eyes closed. You close your own and just enjoy it, the warm wetness of her tongue a welcome addition to the liquid warmth of the spunk she's already bestowed upon you. Seconds pass and she pulls away, fixing you with her desirous bright blue eyes.");
	output("\n\n<i>“You have to come back. I don't ever want to go back to just using the milker by itself, [pc.name]. Please.”</i>");
	output("\n\nHer plea made, she gives you a peck on the cheek and walks to pick up her clothing, affectionately stroking down your body as she passes. Time to settle down and wait out the process of absorbing all of this spunk – you find yourself thinking about the taste of Haley's kiss as you fall asleep, tired out by her and your exertions.");
	//6 hours pass
	processTime(360);
	for(var x:int = 0; x < 20; x++) { pc.orgasm(); }
	var pp:PregnancyPlaceholder = getHaleyPregContainer();
	pc.loadInAss(pp);
	clearMenu();
	addButton(0,"Next",move,rooms[currentLocation].westExit);
}