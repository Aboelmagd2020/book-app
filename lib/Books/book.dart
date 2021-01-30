import 'package:meta/meta.dart';

BookList booklist = BookList(books: [
  //Popular
  Book(
    title: "Stillhouse Lake",
    img: "assets/Book13.jpg",
    pdf: "StillhouseLake.pdf",
    author: "Rachel Caine",
    popular: true,
    trending: false,
    show: true,
    recent: false,
    saved: false,
    index: 0,
    genre: "Thriller",
    rating: 4.5,
    pages: 300,
    desc:
        "Gina Royal is the definition of average—a shy Midwestern housewife with a happy marriage and two adorable children. But when a car accident reveals her husband’s secret life as a serial killer, she must remake herself as Gwen Proctor. But just when she’s starting to feel at ease in her new identity, a body turns up in the lake—and threatening letters start arriving from an all-too-familiar address. Gwen Proctor must keep friends close and enemies at bay to avoid being exposed—or watch her kids fall victim to a killer who takes pleasure in tormenting her. One thing is certain: she’s learned how to fight evil. And she'll never stop.",
  ),

  Book(
    title: "See You in The Cosmos",
    img: "assets/Book16.jpg",
    author: "Jack Cheng",
    pdf: "SeeYouInTheCosmos.pdf",
    popular: true,
    trending: false,
    show: true,
    recent: false,
    saved: false,
    genre: "Fiction",
    rating: 4.4,
    pages: 320,
    index: 1,
    desc:
        "11-year-old Alex Petroski loves space and rockets, his mom, his brother, and his dog Carl Sagan—named for his hero, the real-life astronomer. All he wants is to launch his golden iPod into space the way Carl Sagan (the man, not the dog) launched his Golden Record on the Voyager spacecraft in 1977. From Colorado to New Mexico, Las Vegas to L.A., Alex records a journey on his iPod to show other lifeforms what life on earth, his earth, is like. But his destination keeps changing. And the funny, lost, remarkable people he meets along the way can only partially prepare him for the secrets he’ll uncover—from the truth about his long-dead dad to the fact that, for a kid with a troubled mom and a mostly not-around brother, he has way more family than he ever knew.",
  ),

    Book(
    title: "Five Feet Apart",
    img: "assets/Book39.jpg",
    author: "Rachael Lippincott",
    pdf: "FiveFeetApart.pdf",
    trending: false,
    popular: false,
    genre: "Romance",
    pages: 288,
    rating: 4.7,
    index: 2,
    show: false,
    recent: false,
    saved: false,
    desc:
        "Can you love someone you can never touch? Stella Grant likes to be in control—even though her totally out of control lungs have sent her in and out of the hospital most of her life. At this point, what Stella needs to control most is keeping herself away from anyone or anything that might pass along an infection and jeopardize the possibility of a lung transplant. Six feet apart. No exceptions. The only thing Will Newman wants to be in control of is getting out of this hospital. He couldn’t care less about his treatments, or a fancy new clinical drug trial. Soon, he’ll turn eighteen and then he’ll be able to unplug all these machines and actually go see the world, not just its hospitals. Will’s exactly what Stella needs to stay away from. If he so much as breathes on Stella she could lose her spot on the transplant list. Either one of them could die. The only way to stay alive is to stay apart. But suddenly six feet doesn’t feel like safety. It feels like punishment. What if they could steal back just a little bit of the space their broken lungs have stolen from them? Would five feet apart really be so dangerous if it stops their hearts from breaking too?",
  ),

  Book(
    title: "Sapiens: A Brief History of Humankind",
    img: "assets/Book9.jpg",
    author: "Yuval Noah Harari",
    pdf: "Humankind.pdf",
    popular: true,
    trending: false,
    show: true,
    recent: true,
    saved: false,
    // isbn: 0062316095,
    genre: "Historical",
    rating: 4.5,
    pages: 469,
    index: 3,
    desc:
        "One hundred thousand years ago, at least six different species of humans inhabited Earth. Yet today there is only one—homo sapiens. What happened to the others? And what may happen to us? Most books about the history of humanity pursue either a historical or a biological approach, but Dr. Yuval Noah Harari breaks the mold with this highly original book that begins about 70,000 years ago with the appearance of modern cognition. From examining the role evolving humans have played in the global ecosystem to charting the rise of empires, Sapiens integrates history and science to reconsider accepted narratives, connect past developments with contemporary concerns, and examine specific events within the context of larger ideas.",
  ),

  Book(
    title: "A Song of Ice and Fire",
    img: "assets/Book12.jpg",
    author: "George R. R. Martin",
    pdf: "IceAndFire.pdf",
    popular: true,
    trending: false,
    show: true,
    recent: false,
    saved: false,
    genre: "Sci-Fi",
    rating: 4.6,
    index: 4,
    pages: 864,
    desc:
        "Game of Thrones is roughly based on the storylines of A Song of Ice and Fire, set in the fictional Seven Kingdoms of Westeros and the continent of Essos. The series chronicles the violent dynastic struggles among the realm's noble families for the Iron Throne, while other families fight for independence from it.",
  ),

  Book(
    title:
        "The Right Side of History: How Reason and Moral Purpose Made the West Great",
    img: "assets/Book8.jpg",
    author: "Ben Shapiro",
    pdf: "",
    popular: true,
    trending: false,
    show: true,
    recent: false,
    saved: false,
    genre: "Historical",
    // isbn: 0062857908,
    rating: 4.7,
    index: 5,
    pages: 288,
    desc:
        "The West is special, and in The Right Side of History, Ben Shapiro bravely explains that it’s because too many of us have lost sight of the moral purpose that drives us each to be better, or the sacred duty to work together for the greater good, or both. A stark warning, and a call to spiritual arms, this book may be the first step in getting our civilization back on track.",
  ),

  Book(
    title: "The Overdue Life of Amy Byler",
    img: "assets/Book14.jpg",
    author: "Kelly Harms",
    pdf: "",
    popular: true,
    trending: false,
    show: true,
    genre: "Fiction",
    recent: false,
    saved: false,
    rating: 4.5,
    index: 6,
    pages: 328,
    desc:
        "Overworked and underappreciated, single mom Amy Byler needs a break. So when the guilt-ridden husband who abandoned her shows up and offers to take care of their kids for the summer, she accepts his offer and escapes rural Pennsylvania for New York City. Usually grounded and mild mannered, Amy finally lets her hair down in the city that never sleeps. She discovers a life filled with culture, sophistication, and—with a little encouragement from her friends—a few blind dates. When one man in particular makes quick work of Amy’s heart, she risks losing herself completely in the unexpected escape, and as the summer comes to an end, Amy realizes too late that she must make an impossible decision: stay in this exciting new chapter of her life, or return to the life she left behind.",
  ),

  Book(
    title: "Pillow Thoughts",
    img: "assets/Book15.jpg",
    author: "Courtney Peppernell",
    pdf: "",
    popular: true,
    trending: false,
    show: true,
    genre: "Poetry",
    recent: false,
    saved: false,
    rating: 4.4,
    index: 7,
    pages: 274,
    desc:
        "Pillow Thoughts is a collection of poetry and prose about heartbreak, love, and raw emotions. It is divided into sections to read when you feel you need them most.",
  ),

  Book(
    title: "The Godfather",
    img: "assets/Book11.png",
    author: "Mario Puzo",
    pdf: "",
    popular: true,
    trending: false,
    genre: "Crime",
    show: true,
    recent: false,
    saved: false,
    index: 8,
    rating: 4.7,
    pages: 448,
    desc:
        "Widely regarded as one of the greatest films of all time, this mob drama, based on Mario Puzo's novel of the same name, focuses on the powerful Italian-American crime family of Don Vito Corleone (Marlon Brando). When the don's youngest son, Michael (Al Pacino), reluctantly joins the Mafia, he becomes involved in the inevitable cycle of violence and betrayal. Although Michael tries to maintain a normal relationship with his wife, Kay (Diane Keaton), he is drawn deeper into the family business.",
  ),

  //Trending
  Book(
    title: "Like Lions",
    img: "assets/Book10.jpg",
    author: "Brian Panowich",
    pdf: "",
    trending: true,
    popular: false,
    genre: "Mystery",
    recent: false,
    show: true,
    saved: false,
    rating: 4.3,
    index: 9,
    pages: 320,
    desc:
        "Brian Panowich burst onto the crime fiction scene in 2015, winning awards and accolades from readers and critics alike for his smoldering debut, Bull Mountain. Now with Like Lions, he cements his place as one of the outstanding new voices in crime fiction. Clayton Burroughs is a small-town Georgia sheriff, a new father, and, improbably, the heir apparent of Bull Mountain’s most notorious criminal family. As he tries to juggle fatherhood, his job and his recovery from being shot in the confrontation that killed his two criminally-inclined brothers last year, he’s doing all he can just to survive. Yet after years of carefully toeing the line between his life in law enforcement and his family, he finally has to make a choice. When a rival organization makes a first foray into Burroughs territory, leaving a trail of bodies and a whiff of fear in its wake, Clayton is pulled back into the life he so desperately wants to leave behind. Revenge is a powerful force, and the vacuum left by his brothers’ deaths has left them all vulnerable. With his wife and child in danger, and the way of life in Bull Mountain under siege for everyone, Clayton will need to find a way to bury the bloody legacy of his past once and for all.",
  ),



  Book(
    title:
        "Developing 2D Games with Unity",
    img: "assets/Book7.jpg",
    author: "Jared Halpern",
    trending: true,
    popular: false,
    genre: "Computing",
    pdf: "",
    recent: false,
    show: true,
    saved: false,
    index: 10,
    rating: 4.7,
    pages: 408,
    desc:
        "Follow a walkthrough of the Unity Engine and learn important 2D-centric lessons in scripting, working with image assets, animations, cameras, collision detection, and state management. In addition to the fundamentals, you'll learn best practices, helpful game-architectural patterns, and how to customize Unity to suit your needs, all in the context of building a working 2D game. While many books focus on 3D game creation with Unity, the easiest market for an independent developer to thrive in is 2D games. 2D games are generally cheaper to produce, more feasible for small teams, and more likely to be completed. If you live and breathe games and want to create them then 2D games are a great place to start. By focusing exclusively on 2D games and Unity’s ever-expanding 2D workflow, this book gives aspiring independent game developers the tools they need to thrive. Various real-world examples of independent games are used to teach fundamental concepts of developing 2D games in Unity, using the very latest tools in Unity’s updated 2D workflow. New all-digital channels for distribution, such as Nintendo eShop, XBox Live Marketplace, the Playstation Store, the App Store, Google Play, itch.io, Steam, and GOG.com have made it easier than ever to discover, buy, and sell games. The golden age of independent gaming is upon us, and there has never been a better time to get creative, roll up your sleeves, and build that game you’ve always dreamed about. Developing 2D Games with Unity can show you the way.",
  ),

  Book(
    title: "Probability & Statistics for Engineers & Scientists",
    img: "assets/Book1.jpg",
    author: "Ronald E. Wadpole",
    trending: true,
    popular: false,
    genre: "Science",
    pdf: "Statistics.pdf",
    pages: 816,
    recent: false,
    show: true,
    index: 11,
    saved: false,
    rating: 4.5,
    desc:
        "This classic text provides a rigorous introduction to basic probability theory and statistical inference, with a unique balance between theory and methodology. Interesting, relevant applications use real data from actual studies, showing how the concepts and methods can be used to solve problems in the field. This revision focuses on improved clarity and deeper understanding.",
  ),

  Book(
    title: "Sources of Quantum Mechanics",
    img: "assets/Book3.jpg",
    author: "B. L. van der Waerden",
    trending: true,
    popular: false,
    genre: "Science",
    pdf: "",
    rating: 5.0,
    show: true,
    recent: false,
    index: 12,
    saved: false,
    pages: 430,
    desc:
        "Seventeen seminal papers, dating from the years 1917-26, in which the quantum theory as we now know it was developed and formulated. Among the scientists represented: Einstein, Ehrenfest, Bohr, Born, Van Vleck, Heisenberg, Dirac, Pauli and Jordan. All 17 papers translated into English.",
  ),

  Book(
    title: "An Introduction to a Realistic Quantum Physics",
    img: "assets/Book4.jpg",
    author: "Giuliano Preparata",
    trending: true,
    popular: false,
    genre: "Science",
    pdf: "",
    rating: 4.0,
    show: true,
    index: 13,
    recent: false,
    saved: false,
    pages: 73,
    desc:
        "A clear and simple introduction to Quantum Physics with a sort of Galilean dialogue on the supreme systems of contemporary Physics. The author, whose research interests and work extended from quarks to liquid systems and from crystals to stars, introduces the common conceptual and mathematical framework of all quantum theories, realistic enough to successfully confront Nature: Quantum Field Theory applied to the study of both dilute and condensed matter. In the dilute limit, quantum mechanics is shown to be a good approximation to Quantum Field Theory. However, in condensed matter physics the problem of the ground state, which acts as a kind of template for physical reality, is studied under the hypothesis that the standard perturbative vacuum is unstable with respect to a new coherent vacuum, whose spectrum emerges quite naturally through a simple variational procedure.",
  ),

  Book(
    title: "Swift Programming",
    img: "assets/Book5.jpg",
    author: "Matthew Mathias",
    trending: true,
    popular: false,
    genre: "Computing",
    pdf: "",
    rating: 4.4,
    show: true,
    index: 14,
    recent: false,
    saved: false,
    pages: 459,
    desc:
        "Through the authors' carefully constructed explanations and examples, you will develop an understanding of Swift grammar and the elements of effective Swift style. This book is written for Swift 3.0 and will also show you how to navigate Xcode 8 and get the most out of Apple's documentation. Throughout the book, the authors share their insights into Swift to ensure that you understand the hows and whys of Swift and can put that understanding to use in different contexts. After working through the book, you will have the knowledge and confidence  to develop your own solutions to a wide range of programming challenges using Swift.",
  ),

  Book(
    title: "C# in Depth",
    img: "assets/Book6.jpg",
    author: "Jon Skeet",
    trending: true,
    popular: false,
    genre: "Computing",
    pdf: "",
    rating: 4.5,
    index: 15,
    show: true,
    recent: false,
    saved: false,
    pages: 528,
    desc:
        "C# in Depth, is your key to unlocking the powerful new features added to the language. Following the expert guidance of C# legend Jon Skeet, you'll master asynchronous functions, expression-bodied members, interpolated strings, tuples, and much more.",
  ),

  Book(
    title: "Differential Equations",
    img: "assets/Book2.jpg",
    author: "Paul Blanchard",
    trending: true,
    popular: false,
    genre: "Science",
    pdf: "",
    pages: 864,
    rating: 3.2,
    index: 16,
    show: true,
    recent: false,
    saved: false,
    desc:
        "Incorporating an innovative modeling approach, this book for a one-semester differential equations course emphasizes conceptual understanding to help users relate information taught in the classroom to real-world experiences. Certain models reappear throughout the book as running themes to synthesize different concepts from multiple angles, and a dynamical systems focus emphasizes predicting the long-term behavior of these recurring models. Users will discover how to identify and harness the mathematics they will use in their careers, and apply it effectively outside the classroom.",
  ),

  //Unshowed Books
  Book(
    title: "Norse Mythology",
    img: "assets/Book17.jpg",
    author: "Neil Gaiman",
    trending: false,
    popular: false,
    genre: "Fiction",
    pdf: "",
    pages: 304,
    rating: 4.4,
    index: 17,
    show: false,
    recent: false,
    saved: false,
    desc:
        "Neil Gaiman has long been inspired by ancient mythology in creating the fantastical realms of his fiction. Now he turns his attention back to the source, presenting a bravura rendition of the great northern tales. In Norse Mythology, Gaiman stays true to the myths in envisioning the major Norse pantheon: Odin, the highest of the high, wise, daring, and cunning; Thor, Odin's son, incredibly strong yet not the wisest of gods; and Loki―son of a giant―blood brother to Odin and a trickster and unsurpassable manipulator.",
  ),

  Book(
    title: "I Am Watching You",
    img: "assets/Book18.jpg",
    author: "Terese Driscoll",
    trending: false,
    popular: false,
    genre: "Thriller",
    pdf: "",
    pages: 299,
    rating: 4.5,
    index: 18,
    show: false,
    recent: false,
    saved: false,
    desc:
        "When Ella Longfield overhears two attractive young men flirting with teenage girls on a train, she thinks nothing of it—until she realises they are fresh out of prison and her maternal instinct is put on high alert. But just as she’s decided to call for help, something stops her. The next day, she wakes up to the news that one of the girls—beautiful, green-eyed Anna Ballard—has disappeared. A year later, Anna is still missing. Ella is wracked with guilt over what she failed to do, and she’s not the only one who can’t forget. Someone is sending her threatening letters—letters that make her fear for her life. Someone knows where Anna is—and they’re not telling. But they are watching Ella.",
  ),

  Book(
    title: "Cold Waters",
    img: "assets/Book19.jpg",
    author: "Debbie Herbert",
    trending: false,
    popular: false,
    genre: "Thriller",
    pdf: "",
    pages: 319,
    rating: 4.2,
    index: 19,
    show: false,
    recent: false,
    saved: false,
    desc:
        "Everyone thinks fourteen-year-old Violet is a murderer. After a summer-night swim with her best friend, Ainsley, Violet is found confused, wandering in the forest—and Ainsley’s never seen again. But without a body, murder charges won’t stick, so Violet is sent away. After more than a decade in a psychiatric ward, Violet returns to her broken-down hometown of Normal, Alabama, to claim her dead mother’s inheritance and help her overworked sister care for their unstable, alcoholic father. Violet, still haunted by that night eleven years ago, endures horrific flashbacks and twisted hallucinations while townsfolk spit accusations—and for all she knows, they’re right.",
  ),

  Book(
    title: "Her Last Words",
    img: "assets/Book20.jpg",
    author: "Mary Burton",
    trending: false,
    popular: false,
    genre: "Thriller",
    pdf: "",
    pages: 360,
    rating: 4.4,
    index: 20,
    show: false,
    recent: false,
    saved: false,
    desc:
        "Fourteen years ago, Kaitlin Roe was the lone witness to the abduction of her cousin Gina. She still remembers that lonely Virginia road. She can still see the masked stranger and hear Gina’s screams. And she still suffers the guilt of running away in fear and resents being interrogated as a suspect in the immediate aftermath. Now Kaitlin has only one way to assuage the pain and nightmares—by interviewing everyone associated with the unsolved crime for a podcast that could finally bring closure to a case gone cold. But when a woman Kaitlin questions is later found stabbed to death, she fears that she’s drawn a killer out of hiding. It’s Detective John Adler’s fear that the murders have only just begun. Now his job is to keep Kaitlin safe. As a bond between Kaitlin and Adler builds, the past closes in just as fast—and it’s darker than Kaitlin remembers. Soon, her wish will come true. She’s going to find out exactly what happened to Gina. Someone has been dying to tell her.",
  ),

  Book(
    title: "The Hate U Give",
    img: "assets/Book21.jpg",
    author: "Angie Thomas",
    trending: false,
    popular: false,
    genre: "Crime",
    pdf: "",
    pages: 464,
    rating: 4.5,
    index: 21,
    show: false,
    recent: false,
    saved: false,
    desc:
        "Sixteen-year-old Starr lives in two worlds: the poor neighbourhood where she was born and raised and her posh high school in the suburbs. The uneasy balance between them is shattered when Starr is the only witness to the fatal shooting of her unarmed best friend, Khalil, by a police officer. Now what Starr says could destroy her community. It could also get her killed. Inspired by the Black Lives Matter movement, this is a powerful and gripping YA novel about one girl's struggle for justice.",
  ),

  Book(
    title: "Inside the Vault",
    img: "assets/Book22.jpg",
    author: "Amil Dinsio",
    trending: false,
    popular: false,
    genre: "Crime",
    pdf: "",
    pages: 178,
    rating: 4.4,
    index: 22,
    show: false,
    recent: false,
    saved: false,
    desc:
        "Millions of dollars sat in a small, non-descript bank perched on a hill in the quiet town of Laguna Niguel in Orange County. But deep within its vaults was a secret: millions of dollars in illegally obtained funds belonging to none other than President Richard Nixon. Those stolen funds would not remain Nixon's for long. Over the weekend of March 24, 1972, a crew of bank burglars from Youngstown, Ohio orchestrated a burglary of the vault, which would eventually result in a score of over twelve million dollars - the biggest bank vault burglary in U.S. history. This book tells the remarkable true story of that burglary, written by the real-life mastermind who planned it: Amil Dinsio, one of the most successful and prolific bank robbers and burglars of the 1960s and 70s. Dinsio reveals not only the technical details on how the crime was committed, but also how the perfect burglary was undone by the FBI's dirty tricks.",
  ),

  Book(
    title: "American Kingpin",
    img: "assets/Book23.jpg",
    author: "Nick Bilton",
    trending: false,
    popular: false,
    genre: "Crime",
    pdf: "",
    pages: 352,
    rating: 4.6,
    index: 23,
    show: false,
    recent: false,
    saved: false,
    desc:
        "In 2011, a twenty-six-year-old libertarian programmer named Ross Ulbricht launched the ultimate free market: the Silk Road, a clandestine Web site hosted on the Dark Web where anyone could trade anything—drugs, hacking software, forged passports, counterfeit cash, poisons—free of the government’s watchful eye. It wasn’t long before the media got wind of the new Web site where anyone—not just teenagers and weed dealers but terrorists and black hat hackers—could buy and sell contraband detection-free. Spurred by a public outcry, the federal government launched an epic two-year manhunt for the site’s elusive proprietor, with no leads, no witnesses, and no clear jurisdiction. All the investigators knew was that whoever was running the site called himself the Dread Pirate Roberts. ",
  ),

  Book(
    title: "El Narco",
    img: "assets/Book24.jpg",
    author: "Ioan Grillo",
    trending: false,
    popular: false,
    genre: "Crime",
    pdf: "",
    pages: 336,
    rating: 4.4,
    index: 24,
    show: false,
    recent: false,
    saved: false,
    desc:
        "The world has watched, stunned, the bloodshed in Mexico. Forty thousand murdered since 2006; police chiefs shot within hours of taking office; mass graves comparable to those of civil wars; car bombs shattering storefronts; headless corpses heaped in town squares. And it is all because a few Americans are getting high. Or is it part of a worldwide shadow economy that threatens Mexico's democracy? The United States throws Black Hawk helicopters, DEA assistance, and lots of money at the problem. But in secret, Washington is at a loss. Who are these mysterious figures who threaten Mexico's democracy? What is El Narco? El Narco is not a gang; it is a movement and an industry drawing in hundreds of thousands, from bullet-riddled barrios to marijuana-covered mountains. The conflict spawned by El Narco has given rise to paramilitary death squads battling from Guatemala to the Texas border (and sometimes beyond).",
  ),

  Book(
    title: "The Dark Between Stars",
    img: "assets/Book25.jpg",
    author: "Atticus Poetry",
    trending: false,
    popular: false,
    genre: "Poetry",
    pdf: "",
    pages: 240,
    rating: 4.0,
    index: 25,
    show: false,
    recent: false,
    saved: false,
    desc:
        "Atticus has captured the hearts and minds of nearly 700k followers (including stars like Karlie Kloss, Emma Roberts, and Alicia Keys). In his second collection of poetry, The Dark Between Stars, he turns his attention to the dualities of our lived experiences = the inescapable connections between our highest highs and lowest lows. He captures the infectious energy of starting a relationship, the tumultuous realities of commitment, and the agonizing nostalgia of being alone again. While grappling with the question of how to live with purpose and find meaning in the journey, these poems offer both honest explorations of loneliness and our search for connection, as well as light-hearted, humorous observations. As Atticus writes poignantly about dancing, Paris, jazz clubs, sunsets, sharing a bottle of wine on the river, rainy days, creating, and destroying, he illustrates that we need moments of both beauty and pain = the darkness and the stars = to fully appreciate all that life and love have to offer.",
  ),

  Book(
    title: "The Complete Poetry Of Edgar Allan Poe",
    img: "assets/Book26.jpg",
    author: "Edgar Allan Poe",
    trending: false,
    popular: false,
    genre: "Poetry",
    pdf: "",
    pages: 139,
    rating: 4.3,
    index: 26,
    show: false,
    recent: false,
    saved: false,
    desc:
        "Explore the transcendent world of unity and ultimate beauty in Edgar Allan Poe's verse in this complete poetry collection. Although best known for his short stories, Edgar Allan Poe was by nature and choice a poet. From his exquisite lyric 'To Helen,' to his immortal masterpieces, 'Annabel Lee,' 'The Bells,' and 'The Raven,' Poe stands beside the celebrated English romantic poets Shelley, Byron, and Keats, and his haunting, sensuous poetic vision profoundly influenced the Victorian giants Swinburne, Tennyson, and Rossetti. Today his dark side speaks eloquently to contemporary readers in poems such as 'The Haunted Palace' and 'The Conqueror Worm,' with their powerful images of madness and the macabre. But even at the end of his life, Poe reached out to his art for comfort and courage, giving us in 'Eldorado' a talisman to hold during our darkest moments--a timeless gift from a great American writer. Includes an Introduction by Jay Parini and an Afterword by April Bernard ",
  ),

  Book(
    title: "Poetry, Language, Thought",
    img: "assets/Book27.jpg",
    author: "Martin Heidegger",
    trending: false,
    popular: false,
    genre: "Poetry",
    pdf: "",
    pages: 256,
    rating: 4.1,
    index: 27,
    show: false,
    recent: false,
    saved: false,
    desc:
        "Poetry, Language, Thought collects Martin Heidegger's pivotal writings on art, its role in human life and culture, and its relationship to thinking and truth. Essential reading for students and anyone interested in the great philosophers, this book opens up appreciation of Heidegger beyond the study of philosophy to the reaches of poetry and our fundamental relationship to the world. Featuring 'The Origin of the Work of Art,' a milestone in Heidegger's canon, this enduring volume provides potent, accessible entry to one of the most brilliant thinkers of modern times. ",
  ),

  Book(
    title: "Ariel : Faber Modern Classics",
    img: "assets/Book28.jpg",
    author: "Sylvia Plath",
    trending: false,
    popular: false,
    genre: "Poetry",
    pdf: "",
    pages: 96,
    rating: 4.2,
    index: 28,
    show: false,
    recent: false,
    saved: false,
    desc:
        "Ariel, first published in 1965, contains many of Sylvia Plath's best-known poems, written in an extraordinary burst of creativity just before her death in 1963. Including poems such as 'Lady Lazarus', 'Edge', 'Daddy' and 'Paralytic', it was the first of four collections to be published by Faber & Faber. Ariel is the volume on which Sylvia Plath's reputation as one of the most original, daring and gifted poets of the twentieth century rests. Since she died my mother has been dissected, analysed, reinterpreted, reinvented, fictionalized, and in some cases completely fabricated. It comes down to this: her own words describe her best, her ever-changing moods defining the way she viewed her world and the manner in which she pinned down her subjects with a merciless eye.' - from Frieda Hughes's introduction to Ariel ",
  ),

  Book(
    title: "The Complete Fiction of H. P. Lovecraft",
    img: "assets/Book29.jpg",
    author: "H. P. Lovecraft",
    trending: false,
    popular: false,
    genre: "Fiction",
    pdf: "",
    pages: 1112,
    rating: 4.3,
    index: 29,
    show: false,
    recent: false,
    saved: false,
    desc:
        "The Complete Fiction of H.P. Lovecraft collects the author's novel, four novellas, and fifty-three short stories. Written between the years 1917 and 1935, this collection features Lovecraft's trademark fantastical creatures and supernatural thrills, as well as many horrific and cautionary science-fiction themes, that have influenced some of today's important writers and filmmakers, including Stephen King, Alan Moore, F. Paul Wilson, Guillermo del Toro, and Neil Gaiman.",
  ),

  Book(
    title: "A Clockwork Orange",
    img: "assets/Book30.jpg",
    author: "Anthony Burgess",
    trending: false,
    popular: false,
    genre: "Fiction",
    pdf: "",
    pages: 240,
    rating: 3.9,
    index: 30,
    show: false,
    recent: false,
    saved: false,
    desc:
        "A vicious fifteen-year-old droog is the central character of this 1963 classic. In Anthony Burgess's nightmare vision of the future, where the criminals take over after dark, the story is told by the central character, Alex, who talks in a brutal invented slang that brilliantly renders his and his friends' social pathology. A Clockwork Orange is a frightening fable about good and evil, and the meaning of human freedom. When the state undertakes to reform Alex to redeem him, the novel asks, 'At what cost?' This edition includes the controversial last chapter not published in the first edition and Burgess's introduction 'A Clockwork Orange Resucked.' ",
  ),
  //30
  Book(
    title: "Homo Deus : A Brief History of Tomorrow",
    img: "assets/Book31.jpg",
    author: "Yuval Noah Harari",
    pdf: "",
    trending: false,
    popular: false,
    genre: "Historical",
    pages: 528,
    rating: 4.2,
    index: 31,
    show: false,
    recent: false,
    saved: false,
    desc:
        "Sapiens shows us where we came from. Homo Deus shows us where we're going. Yuval Noah Harari envisions a near future in which we face a new set of challenges. Homo Deus explores the projects, dreams and nightmares that will shape the twenty-first century and beyond - from overcoming death to creating artificial life. It asks the fundamental questions: how can we protect this fragile world from our own destructive power? And what does our future hold?",
  ),

  Book(
    title: "A Brief History Of Time",
    img: "assets/Book32.jpg",
    author: "Stephen Hawking",
    trending: false,
    popular: false,
    pdf: "",
    genre: "Historical",
    pages: 272,
    index: 32,
    rating: 4.1,
    show: false,
    recent: false,
    saved: false,
    desc:
        "Was there a beginning of time? Could time run backwards? Is the universe infinite or does it have boundaries? These are just some of the questions considered in the internationally acclaimed masterpiece by the world renowned physicist - generally considered to have been one of the world's greatest thinkers. It begins by reviewing the great theories of the cosmos from Newton to Einstein, before delving into the secrets which still lie at the heart of space and time, from the Big Bang to black holes, via spiral galaxies and strong theory. To this day A Brief History of Time remains a staple of the scientific canon, and its succinct and clear language continues to introduce millions to the universe and its wonders.",
  ),

  Book(
    title: "Memoirs of the Second World War",
    img: "assets/Book33.jpg",
    author: "Winston Churchill",
    trending: false,
    popular: false,
    pdf: "",
    genre: "Historical",
    pages: 1088,
    index: 33,
    rating: 4.3,
    show: false,
    recent: false,
    saved: false,
    desc:
        "As Prime Minister of Great Britain from 1940 to 1945, Winston Churchill was not only the most powerful player in World War II but also the free world's most eloquent voice of defiance in the face of Nazi tyranny. Churchill's epic accounts of those times, remarkable for their grand sweep and incisive firsthand observations, are distilled here in a single essential volume. Memoirs of the Second World War is a vital and illuminating work that retains the drama, eyewitness details, and magisterial prose of his classic six-volume history and offers an invaluable view of pivotal events of the twentieth century. ",
  ),

  Book(
    title: "Molecular Gastronomy : Exploring the Science of Flavor",
    img: "assets/Book34.jpg",
    author: "Hervé This",
    trending: false,
    popular: false,
    pdf: "",
    genre: "Science",
    pages: 392,
    index: 34,
    rating: 4.3,
    show: false,
    recent: false,
    saved: false,
    desc:
        "Herve This is an internationally renowned chemist, a popular French television personality, a bestselling cookbook author, a longtime collaborator with the famed French chef Pierre Gagnaire, and the only person to hold a doctorate in molecular gastronomy, a cutting-edge field he pioneered. Bringing the instruments and experimental techniques of the laboratory into the kitchen, This uses recent research in the chemistry, physics, and biology of food to challenge traditional ideas about cooking and eating. What he discovers will entertain, instruct, and intrigue cooks, gourmets, and scientists alike. Molecular Gastronomy, This's first work to appear in English, is filled with practical tips, provocative suggestions, and penetrating insights. This begins by reexamining and debunking a variety of time-honored rules and dictums about cooking and presents new and improved ways of preparing a variety of dishes from quiches and quenelles to steak and hard-boiled eggs. He goes on to discuss the physiology of flavor and explores how the brain perceives tastes, how chewing affects food, and how the tongue reacts to various stimuli.",
  ),

  Book(
    title: "The Hangman's Daughter",
    img: "assets/Book35.jpg",
    pdf: "",
    author: "Oliver Pötzsch",
    trending: false,
    popular: false,
    genre: "Mystery",
    pages: 448,
    index: 35,
    rating: 3.7,
    show: false,
    recent: false,
    saved: false,
    desc:
        "Magdalena, the clever and headstrong daughter of Bavarian hangman Jakob Kuisl, lives with her father outside the village walls and is destined to be married off to another hangman’s son—except that the town physician’s son is hopelessly in love with her. And her father’s wisdom and empathy are as unusual as his despised profession. It is 1659, the Thirty Years’ War has finally ended, and there hasn’t been a witchcraft mania in decades. But now, a drowning and gruesomely injured boy, tattooed with the mark of a witch, is pulled from a river and the villagers suspect the local midwife, Martha Stechlin. Jakob Kuisl is charged with extracting a confession from her and torturing her until he gets one. Convinced she is innocent, he, Magdalena, and her would-be suitor race against the clock to find the true killer. Approaching Walpurgisnacht, when witches are believed to dance in the forest and mate with the devil, another tattooed orphan is found dead and the town becomes frenzied. More than one person has spotted what looks like the devil—a man with a hand made only of bones. The hangman, his daughter, and the doctor’s son face a terrifying and very real enemy.",
  ),

  Book(
    title: "The Silent Patient",
    img: "assets/Book36.jpg",
    author: "Alex Michaelides",
    trending: false,
    pdf: "",
    popular: false,
    genre: "Mystery",
    pages: 336,
    index: 36,
    rating: 4.3,
    show: false,
    recent: false,
    saved: false,
    desc:
        "Alicia Berenson’s life is seemingly perfect. A famous painter married to an in-demand fashion photographer, she lives in a grand house with big windows overlooking a park in one of London’s most desirable areas. One evening her husband Gabriel returns home late from a fashion shoot, and Alicia shoots him five times in the face, and then never speaks another word. licia’s refusal to talk, or give any kind of explanation, turns a domestic tragedy into something far grander, a mystery that captures the public imagination and casts Alicia into notoriety. The price of her art skyrockets, and she, the silent patient, is hidden away from the tabloids and spotlight at the Grove, a secure forensic unit in North London. Theo Faber is a criminal psychotherapist who has waited a long time for the opportunity to work with Alicia. His determination to get her to talk and unravel the mystery of why she shot her husband takes him down a twisting path into his own motivations―a search for the truth that threatens to consume him",
  ),

  Book(
    title: "The Night Olivia Fell",
    img: "assets/Book37.jpg",
    author: "Christina McDonald",
    trending: false,
    popular: false,
    genre: "Mystery",
    pdf: "",
    pages: 368,
    rating: 4.3,
    index: 37,
    show: false,
    recent: false,
    saved: false,
    desc:
        "In the small hours of the morning, Abi Knight is startled awake by the phone call no mother ever wants to get: her teenage daughter Olivia has fallen off a bridge. Not only is Olivia brain dead, she’s pregnant and must remain on life support to keep her baby alive. And then Abi sees the angry bruises circling Olivia’s wrists. When the police unexpectedly rule Olivia’s fall an accident, Abi decides to find out what really happened that night. Heartbroken and grieving, she unravels the threads of her daughter’s life. Was Olivia’s fall an accident? Or something far more sinister?",
  ),

  Book(
    title: "The Winter Sister",
    img: "assets/Book38.jpg",
    author: "Megan Collins",
    trending: false,
    popular: false,
    pdf: "",
    genre: "Mystery",
    pages: 326,
    index: 38,
    rating: 3.6,
    show: false,
    recent: false,
    saved: false,
    desc:
        "Sixteen years ago, Sylvie’s sister Persephone never came home. Out too late with the boyfriend she was forbidden to see, Persephone was missing for three days before her body was found—and years later, her murder remains unsolved. In the present day, Sylvie returns home to care for her estranged mother, Annie, as she undergoes treatment for cancer. Prone to unexplained “Dark Days” even before Persephone’s death, Annie’s once-close bond with Sylvie dissolved in the weeks after their loss, making for an uncomfortable reunion all these years later. Worse, Persephone’s former boyfriend, Ben, is now a nurse at the cancer center where Annie is being treated. Sylvie’s always believed Ben was responsible for the murder—but she carries her own guilt about that night, guilt that traps her in the past while the world goes on around her.",
  ),

  Book(
      title: "Again, but Better",
      img: "assets/Book40.jpg",
      pdf: "",
      author: "Christine Riccio",
      trending: false,
      popular: false,
      genre: "Romance",
      pages: 384,
      index: 39,
      rating: 5.0,
      show: false,
      recent: false,
      saved: false,
      desc:
          "Shane has been doing college all wrong. Pre-med, stellar grades, and happy parents…sounds ideal -- but Shane's made zero friends, goes home every weekend, and romance…what’s that? Her life has been dorm, dining hall, class, repeat. Time's a ticking, and she needs a change -- there's nothing like moving to a new country to really mix things up. Shane signs up for a semester abroad in London. She's going to right all her college mistakes: make friends, pursue boys, and find adventure! Easier said than done. She is soon faced with the complicated realities of living outside her bubble, and when self-doubt sneaks in, her new life starts to fall apart. Shane comes to find that, with the right amount of courage and determination one can conquer anything. Throw in some fate and a touch of magic - the possibilities are endless.",
    ),

    Book(
      title: "Eleanor & Park",
      img: "assets/Book41.jpg",
      pdf: "",
      author: "Rainbow Rowell",
      trending: false,
      popular: false,
      genre: "Romance",
      pages: 336,
      index: 40,
      rating: 4.5,
      show: false,
      recent: false,
      saved: false,
      desc:
          "Eleanor & Park reminded me not just what it's like to be young and in love with a girl, but also what it's like to be young and in love with a book. '-John Green', The New York Times Book Review. Set over the course of one school year in 1986, this is the story of two star-crossed misfits-smart enough to know that first love almost never lasts, but brave and desperate enough to try. When Eleanor meets Park, you'll remember your own first love-and just how hard it pulled you under.",
    ),

  Book(
      title: "Always and Forever, Lara Jean",
      img: "assets/Book42.jpg",
      pdf: "",
      author: "Jenny Han",
      trending: false,
      popular: false,
      genre: "Romance",
      pages: 336,
      index: 41,
      rating: 4.6,
      show: false,
      recent: false,
      saved: false,
      desc:
          "Lara Jean is having the best senior year a girl could ever hope for. She is head over heels in love with her boyfriend, Peter; her dad’s finally getting remarried to their next door neighbor, Ms. Rothschild; and Margot’s coming home for the summer just in time for the wedding. But change is looming on the horizon. And while Lara Jean is having fun and keeping busy helping plan her father’s wedding, she can’t ignore the big life decisions she has to make. Most pressingly, where she wants to go to college and what that means for her relationship with Peter. She watched her sister Margot go through these growing pains. Now Lara Jean’s the one who’ll be graduating high school and leaving for college and leaving her family—and possibly the boy she loves—behind. When your heart and your head are saying two different things, which one should you listen to?",
    ),

  Book(
      title: "All the Bright Places",
      img: "assets/Book43.jpg",
      author: "Jennifer Niven",
      trending: false,
      popular: false,
      genre: "Romance",
      pages: 416,
      pdf: "",
      index: 42,
      rating: 4.6,
      show: false,
      recent: false,
      saved: false,
      desc:
          "Theodore Finch is fascinated by death. Every day he thinks of ways he might kill himself, but every day he also searches for—and manages to find—something to keep him here, and alive, and awake. Violet Markey lives for the future, counting the days until graduation, when she can escape her small Indiana town and her aching grief in the wake of her sister’s recent death. When Finch and Violet meet on the ledge of the bell tower at school—six stories above the ground— it’s unclear who saves whom. Soon it’s only with Violet that Finch can be himself. And it’s only with Finch that Violet can forget to count away the days and start living them. But as Violet’s world grows, Finch’s begins to shrink. . . .",
    ),

  Book(
      title: "How to Make Friends with the Dark",
      img: "assets/Book44.jpg",
      author: "Kathleen Glasgow",
      trending: false,
      popular: false,
      pdf: "",
      genre: "Romance",
      pages: 432,
      index: 43,
      rating: 4.3,
      show: false,
      recent: false,
      saved: false,
      desc:
          "It's the brightest day of summer and it's dark outside. It's dark in your house, dark in your room, and dark in your heart. You feel like the darkness is going to split you apart. That's how it feels for Tiger. It's always been Tiger and her mother against the world. Then, on a day like any other, Tiger's mother dies. And now it's Tiger, alone. Here is how you learn to make friends with the dark.",
    ),

  Book(
    title: "Fahrenheit 451",
    img: "assets/Book45.jpg",
    author: "Ray Bradbury",
    popular: false,
    trending: false,
    show: false,
    recent: false,
    saved: false,
    genre: "Sci-Fi",
    rating: 4.4,
    pdf: "",
    index: 44,
    pages: 249,
    desc:
        "Guy Montag is a fireman. In his world, where television rules and literature is on the brink of extinction, firemen start fires rather than put them out. His job is to destroy the most illegal of commodities, the printed book, along with the houses in which they are hidden. Montag never questions the destruction and ruin his actions produce, returning each day to his bland life and wife, Mildred, who spends all day with her television “family.” But then he meets an eccentric young neighbor, Clarisse, who introduces him to a past where people didn’t live in fear and to a present where one sees the world through the ideas in books instead of the mindless chatter of television. When Mildred attempts suicide and Clarisse suddenly disappears, Montag begins to question everything he has ever known. He starts hiding books in his home, and when his pilfering is discovered, the fireman has to run for his life.",
  ),

  Book(
    title: "The Atlantis Gene",
    img: "assets/Book46.jpg",
    author: "A. G. Riddle",
    popular: false,
    trending: false,
    pdf: "",
    show: false,
    recent: false,
    saved: false,
    genre: "Sci-Fi",
    rating: 4.1,
    index: 45,
    pages: 448,
    desc:
        "70,000 years ago, the human race almost went extinct. We survived, but no one knows how. Until now. The countdown to the next stage of human evolution is about to begin, and humanity might not survive this time. Off the coast of Antarctica, a research vessel discovers a mysterious structure buried deep within an iceberg. It has been there for thousands of years, and something is guarding it. Could it be the fabled city of Atlantis? Or is it something more dangerous? At the same moment, in Jakarta, Indonesia, a brilliant geneticist named Kate Warner has just made an incredible breakthrough: a cure for autism. Or so she thinks. What she has found is far more deadly--for her and for the entire human race. Her work could unleash the next stage of human evolution. It might also hold the key to unlocking the mysterious structure off the coast of Antarctica. On the other side of Jakarta, Agent David Vale is racing to uncover a conspiracy with far-reaching implications. But he's out of time. His informant inside the conspiracy is dead. His own organization has been infiltrated--and his enemy has turned the hunt on him. Now he's on the run. But when he receives a coded message related to an imminent attack, he risks everything to save the one person that can help him stop it: Dr. Kate Warner. Together, Kate and David race to unravel a global conspiracy and learn the truth about the Atlantis Gene... and human origins. Their journey takes them to the far corners of the globe and into the secrets of their pasts. Their enemy is close on their heels and will stop at nothing to obtain Kate's research and force the next stage of human evolution--even if it means killing 99.9% of the world's population. David and Kate can stop them... if they can trust each other. And stay alive.",
  ),

  Book(
    title: "Dark Matter",
    img: "assets/Book47.jpg",
    author: "Blake Crouch",
    popular: false,
    trending: false,
    show: false,
    recent: false,
    pdf: "",
    saved: false,
    genre: "Sci-Fi",
    rating: 4.4,
    index: 46,
    pages: 342,
    desc:
        "“Are you happy with your life?” Those are the last words Jason Dessen hears before the masked abductor knocks him unconscious. Before he awakens to find himself strapped to a gurney, surrounded by strangers in hazmat suits. Before a man Jason’s never met smiles down at him and says, “Welcome back, my friend.” In this world he’s woken up to, Jason’s life is not the one he knows. His wife is not his wife. His son was never born. And Jason is not an ordinary college physics professor, but a celebrated genius who has achieved something remarkable. Something impossible. Is it this world or the other that’s the dream? And even if the home he remembers is real, how can Jason possibly make it back to the family he loves? The answers lie in a journey more wondrous and horrifying than anything he could’ve imagined—one that will force him to confront the darkest parts of himself even as he battles a terrifying, seemingly unbeatable foe. Dark Matter is a brilliantly plotted tale that is at once sweeping and intimate, mind-bendingly strange and profoundly human—a relentlessly surprising science-fiction thriller about choices, paths not taken, and how far we’ll go to claim the lives we dream of.",
  ),

  Book(
    title: "Ready Player One",
    img: "assets/Book48.jpg",
    author: "Ernest Cline",
    popular: false,
    pdf: "",
    trending: false,
    show: false,
    recent: false,
    saved: false,
    genre: "Sci-Fi",
    rating: 4.6,
    index: 47,
    pages: 400,
    desc:
        "In the year 2045, reality is an ugly place. The only time teenage Wade Watts really feels alive is when he's jacked into the virtual utopia known as the OASIS. Wade's devoted his life to studying the puzzles hidden within this world's digital confines—puzzles that are based on their creator's obsession with the pop culture of decades past and that promise massive power and fortune to whoever can unlock them. But when Wade stumbles upon the first clue, he finds himself beset by players willing to kill to take this ultimate prize. The race is on, and if Wade's going to survive, he'll have to win—and confront the real world he's always been so desperate to escape.",
  ),

]);

class BookList {
  List<Book> books;

  BookList({
    @required this.books,
  });
}

class Book {
  String title;
  String img;
  String author;
  String genre;
  String pdf;
  bool popular;
  bool trending;
  String desc;
  double rating;
  int pages;
  bool show;
  bool recent;
  bool saved;
  int index;

  Book({
    @required this.title,
    @required this.img,
    @required this.author,
    @required this.popular,
    @required this.trending,
    @required this.genre,
    @required this.desc,
    @required this.rating,
    @required this.pages,
    @required this.recent,
    @required this.show,
    @required this.saved,
    @required this.index,
    @required this.pdf
  });
  
}
