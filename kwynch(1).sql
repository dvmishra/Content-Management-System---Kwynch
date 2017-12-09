-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 09, 2017 at 10:29 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kwynch`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `login` (IN `username` VARCHAR(100), IN `password` VARCHAR(100))  NO SQL
select aid from authors where aname=username and apass=password limit 1$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(10) NOT NULL,
  `admin` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `admin`, `pass`) VALUES
(1, 'root', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `aid` int(10) NOT NULL,
  `aname` varchar(50) NOT NULL,
  `adesc` text NOT NULL,
  `aimg` longblob NOT NULL,
  `alink` text NOT NULL,
  `apass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`aid`, `aname`, `adesc`, `aimg`, `alink`, `apass`) VALUES
(1, 'Dhruva', 'I am an enthusiastic person who enjoys being part of, as well as leading, a successful and productive team. I am quick to grasp new ideas and concepts, and to develop innovative and creative solutions to problems.', '', 'https://www.facebook.com/dhruva.vatsamishra', '2eab79d006aec47f1d23fc3841079466e400bb9c3490d6d8307143220976628a'),
(2, 'Abhishek Shah', 'Abhishek is Intrested in Indian Politics, Physics and Mathematics.', '', 'https://www.facebook.com/abhishek.shah.33886', '12ba4a985a52c560768a74ceead9c20828c17a016cf63ef4dd710df520392e15'),
(3, 'Bakul Tikoo', 'Final year B. Pharmacy student.\r\nDelhiite currently living in Chandigarh.\r\nSuave writer.\r\nMusic and Dog lover.\r\nFoodie.Weird.', '', 'https://www.facebook.com/bakul.tikoo', '914686abf96e7aed67684c36b987c5c92d062a41016a9933eb2260f5cc53bdac');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `pid` int(10) NOT NULL,
  `title` text NOT NULL,
  `text` text NOT NULL,
  `img` text,
  `vis` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`pid`, `title`, `text`, `img`, `vis`) VALUES
(21, 'Meet the world\'s most powerful supercomputers', 'Twice a year, an organization called the TOP500 publishes a list of the worldâ€™s fastest supercomputers. It is a ranking of the most powerful machines in the worldâ€”mammoth installations with names like Sunway TaihuLight and Tianhe-2. Those are both Chinese computers, and the former is the worldâ€™s fastest. The most recent version of the list came out on Monday, and the top five supercomputers hail from China, Switzerland, Japan, and the United States.\r\n\r\nBut while the ranking is a timely whoâ€™s who of brawny computersâ€”and right now, China dominates the list, with 202 of the top 500â€”its publication is also a good time to ask: what makes a supercomputer a supercomputer, and what do they do scientists use them for?', 'images/15-11-2017-1510723026.jpeg', 1),
(22, '16 Best Entrepreneurship and Business Leadership Articles of the Year', 'Learn how to transform your life for the better with 16 of the Webâ€™s favorite entrepreneurship and leadership articles from this year. Guaranteed to encourage and inspire, these popular posts are absolute must-reads.\r\n1. Mentally Strong People: The 13 Things They Avoid\r\n\r\nMental fortitude is essential for entrepreneurship, and in this wildly popular Forbes article, Cheryl Conner discusses what makes a mental strong individual and the 13 things they avoid at all costs (with tips from psychotherapist extraordinaire Amy Morin).\r\n2. How to Turn Small Talk Into Smart Conversation\r\n\r\nIn this TED Ideas post, Chris Colin and Rob Baedeker break down how to transform an ordinary conversation into an extraordinary one. This pithy piece shares how to substitute one-line answers for stories, swap mundane response mirroring for absurd (but astute) observations, and how to get the most out of the often-mangled art of conversation.\r\n3. Richard Branson to Young Entrepreneurs: â€˜Just Do Itâ€™\r\n\r\nIn an Inc. piece by Oscar Raymundo, famous entrepreneur Richard Branson, founder of the Virgin empire (Virgin Airlines, Virgin Mobile, etc.) explains why risk is an inherent aspect of entrepreneurship. Sometimes you just have to go for it, no matter what others day. Richard did and Iâ€™d say thing are working out pretty well for him.', 'images/15-11-2017-1510723348.jpeg', 1),
(23, 'We found our galactic twin 180 million light years away', '                                             Weâ€™ve seen ourselves in the heavens. A giant spiral galaxy 180 million light years from Earth not only resembles the Milky Way but also boasts a pair of interacting galaxies that look like our galaxyâ€™s two brightest satellites.\r\n\r\nAt least 50 galaxies orbit the Milky Way. Most have run out of gas because theyâ€™ve spent more time close enough to our galaxy for it to steal their gas. But two of the nearest satellites â€“ the Large and Small Magellanic Clouds â€“ have been in our neighbourhood for less time, and still possess lots of gas that spawns new stars. The two galaxies are respectively 160,000 and 200,000 light years from us and 75,000 light years from each other.\r\n\r\nThis arrangement is rare. Most giant galaxies donâ€™t have even one star-making companion nearby, let alone two. Thatâ€™s probably because a giant galaxy strips small neighbours of gas, thwarting their ability to make new stars.\r\n\r\nSanjaya Paudel and Chandreyee Sengupta at Yonsei University in Seoul, South Korea, looked through images of nearly 20,000 small galaxies for a pair that resides near a giant galaxy. â€œItâ€™s obviously very difficult,â€ says Paudel.                                       ', 'images%2F22-11-2017-1511335391.', 1),
(24, 'The Firewood Shortage That Helped Give Birth to America', '                                                                                                         What fuels your world? If you were a colonist or a citizen of the early United States, the answer would be firewoodâ€”the material that not just warmed peopleâ€™s bodies, but allowed them to power the expansion of a new nation.\r\n\r\nIn many ways, firewood helped create America. But it also threatened to destroy it by sparking an ecological crisis thatâ€™s still going on today.\r\n\r\nPeople have been burning wood for warmth for millennia, and in Britain, like the rest of the medieval world, a booming timber industry supplied firewood to people rich and poor. In the 1500s, though, the unthinkable happenedâ€”Britain began to run out of firewood.\r\n\r\nIt was a matter of simple deforestation. Once the forests of the islandâ€”a mere 93,000 square milesâ€”were depleted, they didnâ€™t grow back quickly enough to sustain its populationâ€™s need for heat, especially as urban populations boomed. In addition, other uses for wood, including the production of paper and increased urban building, pushed the timber industry to its limits.\r\n\r\nThis wood crisis swept through all of Europe, and even Britainâ€™s dense forests werenâ€™t enough to keep up with wood demand. That shortage hit the poor hard. As economic historian John U. Nef notes, â€œthe price of wood in England rose very much faster than that of any other commodity in general use anywhere.â€ And no fire meant no food or warmth.\r\n\r\nAs Britain struggled to figure out how to warm itself, poor English people had two options: wait for an answer, or freeze to death. Many decided to take their chances in the colonies instead.\r\n\r\nEnglandâ€™s forests struggled, but in America the scene was completely the opposite. Early settlers marveled at the New Worldâ€™s seemingly unlimited forests. Then, they cut them down.                                                                                           ', 'images%2F22-11-2017-1511336281.', 1),
(25, '60 percent off a Samsung vacuum and other good deals happening today', '               If youâ€™ve somehow forgotten that Thanksgiving is next week and need some last-minute steals to ensure a delicious dinner, Amazon has huge savings on select kitchen items including 63 percent off a Gotham Steel 10-piece cookware set and 30 percent off a OXO Good Grips Roasting Set.\r\n\r\nLast week, we wrote about the best kits and gadgets that encourage your kids to be more creative. Today only, Crayola kits are up to 40 percent off including light-up tracing pads and this 140-piece art set.\r\n\r\nForget spring cleaning. Fall and winter cleaning is the bees\' knees. This Samsung POWERbot Robot Vacuum is currently 60 percent off. It maps your floor plan and has edge cleaners that get the tough-to-reach corners. $140.\r\n\r\n             ', 'images/', 0),
(26, 'How the Owners of This Tiny Bakery Bounced Back From Their Food Network Disaster', 'In 1973, Bruce Springsteen released Greetings From Asbury Park, N.J., thus enshrining the shore town in rock\'s pantheon. That same year, The Stone Pony opened there. \"The Boss,\" Southside Johnny & the Asbury Jukes, Bon Jovi, and many other Jersey rockers passed through the club\'s doors on their way to glory.\r\n\r\nA year later, in nearby Freehold, 4-year-old Kimmee Masi found among her Christmas presents a drum. The gift launched Masi on a road that would one day bring her to the stage of the Stone Pony with her band Our Last Sin. When the rock star dream fizzled, Masi stayed part of the Asbury Park scene in the best way left to her: She opened a music-themed bakery.\r\n\r\nMusical instruments and memorabilia adorn the candy-box pink walls of Confections of a Rock$tar, the 10-employee company Masi owns with her business partner, Lisa Lasky. There are Fender logos on the stools and a bronze statue of the iconic \"hand horns\" gesture near the cash register. Customers are disappointed that they can\'t play the keyboard countertop, \"but it would cost me a small fortune every time it got broken,\" says Masi. She stores her own drums and guitars in a cutout below the ceiling but no longer goes up there to play. \"Tenants kept moving in upstairs and telling me, \'You\'re shaking the stuff off my walls,\'\" Masi says. \"I\'m like, \'It\'s 10 in the morning. Shouldn\'t you be at work?\'\"', 'images/15-11-2017-1510723900.jpeg', 0),
(29, 'Neptuneâ€™s other moons were normal until Triton crashed the party', 'It came in like a wrecking ball. Neptune has one of the weirdest collections of moons in our solar system, and itâ€™s Tritonâ€™s fault. The planetâ€™s largest moon probably smashed into the calm moon system that was there before it arrived, knocking everything out of sync.\r\n\r\nPlanetary scientists have long suspected that the huge moon Triton is an interloper from outside the Neptune system. Now they have calculated what the other moons may have looked like before the intrusion.\r\n\r\nAll of the other gas giants in our solar system â€“ Jupiter, Saturn and Uranus â€“ have fairly similar systems of moons. In each of these systems, the mass of the planet is about 10,000 times bigger than the total mass of all the moons together. For the most part, these planets have several small moons, all orbiting in the same direction as the planet spins.\r\n\r\nBut Neptune is different. It has several tiny moons either very close in or far away from the planet â€“ most of which orbit in the direction of the planetâ€™s spin â€“ and one huge one, Triton, orbiting in the opposite direction.\r\nBull in a china shop\r\n\r\nRobin Canup at the Southwest Research Institute in Colorado and Raluca Rufu at the Weizmann Institute of Science in Israel used a series of computer simulations to figure out what the Neptune system was like before Triton barrelled in.\r\n\r\nThey found that it probably had a moon system similar in total mass to Uranusâ€™s. But that didnâ€™t last long.\r\n\r\nâ€œTriton crashed the party, literally and figuratively,â€ says Canup. â€œIt destroyed the well-behaved satellite system that was there before it.â€\r\n\r\nTo get from a serene Uranus-like system to what we see at Neptune today, three things have to be true: the early moons had to be small enough that they wouldnâ€™t destroy Triton as it crashed into them; they had to somehow slow Triton down so that it would be captured in the relatively close and circular orbit that it has now; and Neptuneâ€™s outer moons had to remain intact.\r\n\r\nâ€œThe question is, how do you capture Triton in an elongated orbit and then get it into this circular orbit? You have to dissipate some energy from it to slow it down,â€ says Scott Sheppard at the Carnegie Institution for Science in Washington DC.\r\n\r\nCanup and Rufu found that Tritonâ€™s gravity flung the smaller moons around. It also collided with some of them, slowing down and settling into its circular orbit. This process happened fast enough to stop Triton from hurtling through the outer areas of Neptuneâ€™s system too much, leaving the moons out there relatively unscathed.\r\nFrankensteinâ€™s monster\r\n\r\nâ€œNow that we have some hold on what the original moons of Neptune were like, that can give us some clue as to what we should expect for extrasolar planets of that type,â€ says Matija Cuk at the SETI Institute.\r\n\r\nUnfortunately, it will be difficult to confirm the scenario that Canup and Rufu propose, even if we send a spacecraft to Triton to look. Triton is icy and seems to be geologically active, so ice is likely to have filled in any craters or scars from the moonâ€™s past misadventures, says Sheppard.\r\n\r\nWe have a better chance if we study what Triton is made from. â€œTriton is kind of a Frankensteinâ€™s monster moon,â€ says Cuk. â€œMost of it is this original captured object, but if this research is correct then about 10 per cent of Triton comes from crashing into and absorbing these original moons.â€\r\n', 'images/15-11-2017-1510724323.jpeg', 0),
(30, 'The Beatles? \'They have no future in show business\'', 'On this day, the Beatles â€“ scruffy, clad in leather and unknown outside their home town of Liverpool â€“ travelled through snow in a van for 220 miles to make a recording audition in London. And they were turned down.\r\n\r\nIn charge at the Decca studios where the audition was held was senior A&R man Dick Rowe. His assistant, Mike Smith, had seen the Beatles perform at what was to become the famous Cavern Club and had put forward the audition suggestion to their manager, Brian Epstein.\r\n\r\nIt lasted about an hour and the Beatles â€“ John Lennon, George Harrison, Paul McCartney and the original drummer, Pete Best â€“ performed 15 songs. They were nervous and the session did not go particularly well but Smith told them afterwards that he â€œsaw no problemsâ€ and they would have a decision â€œin a few weeksâ€.\r\n\r\nEpstein let the â€œfew weeksâ€ pass, then, fed up with waiting, phoned Rowe and asked for a decision. It was not what he expected. â€œGroups with guitars are on the way out,â€ Rowe allegedly said, adding that he believed â€œthe Beatles have no future in show businessâ€.\r\n\r\nRowe, who died in 1986, always denied the story, saying it was actually Mike Smith who turned down the Fab Four. Another group, Brian Poole and the Tremeloes, also had an audition on the same day and according to Rowe: \"I told Mike he\'d have to decide between them. It was up to him â€“ the Beatles or the Tremeloes. He said, \'They\'re both good, but one\'s a local group, the other comes from Liverpool.\' We decided it was better to take the local group. We could work with them more easily and stay closer in touch.\"\r\n\r\nWhoever made the decision, Rowe went on to redeem himself by subsequently signing, among others, the Rolling Stones, the Animals, the Moody Blues, the Small Faces and Tom Jones.\r\n\r\nAnd on musical grounds, maybe it was the right verdict. Years later, George Martin, the Beatlesâ€™ legendary producer at EMI, said that he, too, would have turned them down on the basis of the mediocre Decca audition tape.', 'images/15-11-2017-1510724382.jpeg', 0),
(31, 'This temperature-control mug is the best product I\'ve tried in 2017', '\r\n\r\nIt\'s fascinating how little, everyday frustrations can stick in your brain forever. Like why isnâ€™t there an apparatus that breaks spaghetti in half without throwing shards of raw noodle all over your kitchen? Or why aren\'t there half-size spaghetti noodles? Anyway, a few weeks ago, I got a product that spoke to the very heart of me. It spoke to the part of me that has always hated tepid coffee.\r\n\r\nA quick aside: I\'m a coffee guy. I\'ve written about coffee and coffee accoutrement many times for PopSci. As such, companies that peddle stuff for hot beverages often send me things to try out. I never promise coverage, and I\'ve never written anything about the products individually because there\'s never been one that I\'ve had shout-it-from-the-rooftop kind of love for. What you\'re reading about now is the exception.\r\nArticle Continues Below:\r\nHow Does A Dyson Swarm Work?\r\n\r\nBy the year 3100, Earth\'s skyrocketing population will need a lot of ...\r\n \r\n\r\nThe Ember ceramic mug changed the way Iâ€™ll drink coffee, and it can do the same for anybody who hates lukewarm swill and the flavor of overcooked coffee sludge. Here\'s the deal: within the mug, a microprocessor-controlled heating system gathers information from four separate temperature sensors and activates its adaptive dual heating mechanism. This means no more unintentional cold brew.\r\n\r\nIâ€™m a total coffee snob, but even the best cups of coffee end with a few gross sips at the bottom. That doesn\'t work for me. I want to taste the flavors that the roasters assure me are in their beans until the very last drop touches my tongue. The Ember ceramic mug allows you to set your ideal temperature preferenceâ€”to the degreeâ€”and keep it there.\r\n\r\nMost serious coffee drinkers know that the correct temperature for brewing falls between 195 and 205 degrees Fahrenheit depending on the brew. Any higher and you will over-extract the coffee. Lower, youâ€™ll under-extract, leaving the coffee sour and weak. The temperature at which you drink it, however, is much more subjective and is based on personal preference. The Ember mug allows you match your tastes.\r\nEmber Ceramic Mug\r\n\r\nThe mug.\r\n\r\nEmber\r\n\r\nThere are other methods for keeping coffee warm, but they have their flaws. Hot-plate-style warmers generate uneven heat from the bottom. Vacuum-sealed, double-walled containers leak heat constantly, despite their best efforts to hold onto those precious degrees. The only thing a hot beverage has to be is not cold.\r\n\r\nThe Ember mug (10 oz.) is made of reinforced stainless steel and coated with a white ceramic. It comes with a matching coaster that acts as a chargerâ€”the cup holds a charge for about an hourâ€”and has a built-in LED light to notify you when your drink is at the optimal temperature or running low on batteries. The LED light even has color options for multiple users or drinks.\r\n\r\nUnlike the brand\'s previous productâ€”the Ember Travel Mug, which has an adjustable dial on the bottom of the deviceâ€”the new mug connects to your smartphone or Apple Watch to adjust the temperature. It senses when there is no liquid inside, puts itself into sleep mode when not being used, and then uses a three-axis accelerometer to recognize movement and wake the mug back up. The mug is $80 and can be purchased on the Emberâ€™s website or in most Starbucks throughout the United States and Canada.\r\n\r\nI understand that not everybody cares to download an app to ensure the optimal temperature for their coffee. But if you\'re a person who really enjoy coffee, it\'s worth it.\r\n', 'images/15-11-2017-1510724515.jpeg', 0),
(32, 'Is Your \'Personality Type\' Right for Working Remotely?', 'For decades, personnel departments and managers have used the \"Four Personality Types\" to choose which individuals to hire or promote.\r\n\r\nAll four types (A, B, C, and D) were supposed to be useful to a well-rounded organization, but the overwhelming tendency is to treat it as a grading system, where Type A personalities are the winners and the other three types are the losers.\r\n\r\nHence, it\'s quite common to hear people brag about being \"Type A\" workaholic jerks while few willingly cop to being \"Type D\" people-pleasers who enjoy repetitive tasks.\r\n\r\nI don\'t want to burst any bubbles, but the \"Four Personality Types\" are to psychology what horoscopes are to astronomy. Yeah, there\'s a patina of science, but the categories themselves are a pile of steaming truthiness.\r\n\r\nI mention this because the original idea for this post was to identify which of the four personality types are best suited for Work-From-Home.\r\n\r\nUnfortunately, the four personality types were conceived long before the advent of the internet and the hundreds of online tools that we now have available to coordinate work efforts remotely.\r\n\r\nBecause the four personality types assume everyone is working together at an office or manufacturing facility, they simply don\'t apply to a world where virtual reality threatens to make centralized offices themselves entirely obsolete.\r\n\r\nThus, we\'ll need to look elsewhere to find guidance about the type of personality who should be working from home.\r\n\r\nAs it happens, I\'m an extreme case of somebody who\'s well-suited to working from home. For example, I co-authored a book with a person who lives an hour south of where I live and work. We did the entire project without ever meeting in person. I could cite dozens of other examples, since I\'ve never met most of my editors and clients face-to-face.\r\n\r\nFurthermore, since I\'ve been working from home for over two decades, I\'ve been asked \"what\'s your secret?\" by at least a dozen people who want to go freelance. In the process of informally coaching them, I\'ve learned what type of person doesn\'t do that well at this.\r\n\r\nWith that in mind, here are the five characteristics of people who can be highly successful working from home:\r\n1. They\'re Introverted\r\n\r\nI\'ve repeatedly explained that introverts are peculiarly ill-suited for today\'s open-plan offices, while extroverts tend to like the extra stimulation. The obverse is true as well: Introverts adapt to working from home much easier than extroverts.\r\n\r\nBack when I worked in cubicle-land, I worked with a guy whose job was to attend meetings of other groups and report back to our group\'s management to make certain that those other groups weren\'t intruding on our turf. (Yes, that\'s a real job.)\r\n\r\nNow, for me, that job would be the seventh circle of hell, but this guy enjoyed it. Anyway, after he got laid off, he tried doing freelance marketing and, since I\'d been doing that for a while, I gave him some pointers.\r\n\r\nHe tried his best to make it work but got so lonely that he took the first job he could...and ended up with a job much like that he had before, but for an even larger company. He was happy as punch.\r\n2. They\'re Self-Disciplined\r\n\r\nIn the workplace, there are two huge sources of external motivation: 1) peer pressure from people who\'ll glare at you and resent it if they notice you\'re goofing off, and 2) the likelihood that your boss will \"go walkies\" and look over your shoulder to confirm that you\'re working.\r\n\r\nNeither of those are present when you\'re working from home, which means that you\'ve got to get your own *ss in gear every day and get your work done...even though nobody will notice if you play video games for a few hours.\r\n\r\nFood is another temptation. A guy I used to work for (and ran into at the local gym) put on 20 pounds in first six months he worked from home. Fortunately, he had the discipline to change his behaviors; otherwise he would by now be seriously obese.\r\n3. They\'re Not Paranoid\r\n\r\nThe Harvard Business Review recently published a study of 1,153 office workers, 53 percent of whom worked from home at least some of the time. It revealed that:\r\n\r\n    Remote employees are more likely to report feeling that colleagues mistreat them and leave them out. Specifically, they worry that co-workers say bad things behind their backs, make changes to projects without telling them in advance, lobby against them, and don\'t fight for their priorities.\r\n\r\nWhat\'s interesting about the study is that it didn\'t probe to see whether these worries were justified. To my mind, worrying about this sort of thing is more than a little paranoid. Chances are, your co-workers are just trying to get their own jobs done...as you\'d realize if you were back at the office.\r\n\r\nI learned early on, while working from home, to suppress whatever paranoia I possessed. The only time I remember feeling paranoid recently was when a carpenter, who was hammering boards onto my deck, called me \"a paranoid weirdo\"...in Morse code.\r\n4. They\'re Technically Competent\r\n\r\nMost offices have an IT expert or group who can diagnose and fix day-to-day problems with whatever computer setup you\'re using. While working with \"the guys from IT \" is frequently a pain in the butt, their presence frees you from worrying much about technical trivia.\r\n\r\nWhen you work from home, however, you\'re pretty much on your own. If your computer acts up and you don\'t possess at least a modicum of technical ability, you\'ll be spending many unproductive hours on the phone with customer service.\r\n\r\nHint: Supporting a Macintosh requires 1/100th as much effort as supporting a Windows machine. If you\'re working from home and using Windows rather than a Mac, you may be technically competent but you\'re incompetent when it comes to doing a cost-benefit analysis.\r\n5. They Know How to Sell\r\n\r\nFinally, and most importantly, people who work from home must continually sell their services to their employers or clients. Realizing the truth of \"out of sight, out of mind\" isn\'t paranoia but simply a recognition of how humans think and behave.\r\n\r\nWhen you work in an office, you\'re selling implicitly by showing up and looking busy. That\'s not the case when you work from home, so that means more status reports and updates and a willingness to \"jump to it\" when your boss makes a request.', 'images/15-11-2017-1510724604.jpeg', 0),
(33, 'Should we seed life through the cosmos using laser-driven ships?', 'Our galaxy may contain billions of habitable worlds that donâ€™t host any life. Should we attempt to change that?\r\n\r\nClaudius Gros at the Goethe University Frankfurt, Germany, thinks we should. He believes in directed panspermia: deliberately seeding life throughout the cosmos. And to do that, he proposes we use a laser propulsion system that may not be technically out of reach.\r\n\r\nBreakthrough Starshot is a project with ambitious aims to use such systems to send tiny, lightweight probes to Alpha Centauri. The goal is to take pictures of our nearest star, but these systems could also deliver much larger payloads into orbit around nearby stars, says Gros.\r\n\r\nPotential targets include the planetary system around TRAPPIST-1, a red dwarf star just 40 light years away. Earlier this year, astronomers revealed it was home to seven rocky planets, three of which orbit within the starâ€™s habitable zone.\r\n\r\nStarshotâ€™s proposed 20-year mission to our nearest star after the sun would rely on ultralight craft propelled up to 20 per cent of the speed of light by giant, Earth-based lasers pointed at a light sail â€“ essentially a mirrored surface. While there are unprecedented challenges, particularly in laser design and the reflectivity of the light sail, the team remains confident of the missionâ€™s feasibility.\r\n\r\nâ€œIt is just a matter of the will to make it happen,â€ says Chi Thiem Hoang at the Korea Astronomy and Space Science Institute. However, with no way to stop, Starshotâ€™s single gram craft would zoom past its target star system just hours after arrival.\r\nGenesis project\r\n\r\nCould the laser propulsion instead deliver a heavier, slower moving payload with an onboard braking system into orbit? Gros says it could â€“ and it should.\r\n\r\nHis interest in interstellar travel is not exploratory, or even scientific. He is focused on spreading life.\r\n\r\nâ€œThese kind of projects are useless for humanity, but life is something valuable and should have the possibility to develop on other planets,â€ he says.\r\n\r\nGros feels emboldened in his quest by emerging theories that planets orbiting the most common type of stars in our galaxy, red dwarfs like TRAPPIST-1, may have ancient, oxygen-rich atmospheres. Although these would make them habitable today, they could have prevented life forming initially due to the oxidation of prebiotic organic chemistry.\r\n\r\nâ€œOur galaxy may contain billions of sterile but habitable worlds,â€ says Gros.\r\n\r\nUnder his proposed Genesis project, Gros is looking at the possibility of launching into space autonomous toolkits for life: miniaturised versions of the gene laboratories envisaged by researchers here on Earth. These would grow genes and cells from chemical ingredients and disseminate them across habitable planets.\r\n\r\nBut how would these heavier payloads be slowed down upon arrival? Sails again have been suggested, but instead of acting as mirrors, they would be magnetic fields that stretch for kilometres and transfer the probeâ€™s momentum to the interstellar particles hitting them. Once the lasers used for launch are no longer propelling them, they would use space dust to slow down.\r\nMagnetic sail\r\n\r\nDeep space can be near empty, perhaps containing just one atom per cubic centimetre, so sails with a large surface area would be needed to make this work. Gros says that with the latest high-temperature superconducting wires â€“ those that can transfer energy with barely any loss at temperatures above absolute zero â€“ possible to produce magnetised sails large enough to slow down a heavier craft.\r\n\r\nGros simulated interstellar particles hitting a magnetic sail and found four parameters determined a successful deceleration: the spacecraft mass, its velocity and therefore mission duration, the sail radius and the current flowing through the loop of superconducting wire within the main craft that would power the magnetic sails.\r\n\r\nâ€œA superconducting current could be created just once prior to launch and run for eternity,â€ Gros says. The technology could certainly operate long enough for a mission to a relatively nearby star system like TRAPPIST-1.\r\n\r\nGros estimates that a 1.5-tonne craft carrying the superconductor infrastructure for sails 50-kilometres wide could reach TRAPPIST-1 in 12,000 years if propelled by Breakthroughâ€™s lasers.\r\n\r\nJeff Kuhn, a Starshot adviser and physicist at the University of Hawaii, likes the paper, but worries that gaining support and funding for a mission that takes 12,000 years might be harder than actually building and launching one.\r\n\r\nâ€œThis doesnâ€™t necessarily mean we shouldnâ€™t be doing this, but the timescales are so long that itâ€™s hard to imagine human organisations with this attention span,â€ Kuhn says.\r\n\r\nHoang instead worries whether the superconducting ring itself could survive collisions with interstellar dust, though he agrees with Gros that the Starshot system could technically launch such a mission. â€œThe project did not discuss the potential implication of a long-term mission for panspermia,â€ he says. â€œI think that it would be interesting to use the proposed system to spread some form of life to the interstellar space.â€', 'images/15-11-2017-1510724687.jpeg', 0),
(34, 'The British: 139. Zulu Warriors: 4,000. Let Battle Begin', '               The Battle of Rorkeâ€™s Drift took place in South Africa on this day and is remembered as one of the worldâ€™s most remarkable military engagements. It was to be commemorated in 1964 with the release of the film Zulu, giving Michael Caine his first major screen role.\r\n\r\nBritain was intent on expanding its territory and influence in South Africa in the 1870s and had declared war on the Kingdom of Zululand. Rorkeâ€™s Drift was a mission station near the border between the British colony of Natal and the Zulu Kingdom and had been occupied by British troops. When the battle began, though, only 139 soldiers were encamped there. They had no idea what lay in store.\r\n\r\nAt 4.20pm on January 22, 1879 a force of 4,000 Zulu warriors began to lay siege to the station. Their intermittent attacks were to last for almost twelve hours.\r\n\r\nFortunately for the British, although some of the Zulus had old muskets and antiquated rifles, most were armed only with a short spear called an assegai and a shield made of cowhide. So in weaponry they were no match for the highly trained soldiers with their (then) sophisticated rifles and firepower. But the manpower advantage lay massively in favour of the Zulus.\r\n\r\nBy 4am, after nearly 12 hours repulsing wave after wave of attacks involving hand-to-hand combat, a number of British soldiers lay dead. Most of the others were exhausted, rapidly running out of ammunition, and probably in no condition to repel another assault. But they didnâ€™t have to. As dawn broke they saw that the Zulus were gone, leaving behind a battleground littered with the dead and dying. Zulu casualties were around 500, while the British sustained 17 dead and 10 wounded.\r\n\r\nThe Victoria Cross is Britainâ€™s highest medal for bravery. Eleven were awarded to the defenders of Rorke\'s Drift â€“ the most ever received in a single action by one regiment.\r\n\r\nAccording to American military historian Victor Davis Hanson: â€œIn the long annals of military history it is difficult to find anything quite like Rorke\'s Drift, where a beleaguered force, outnumbered forty to one, survived and killed twenty men for every defender lost.â€             ', 'images/', 0),
(35, 'Good Guy', '                                                                                                                                                                                                   Helping is good for health     hiiiiiiiiiiiiiii                                                                                                                                                                    ', 'images%2F22-11-2017-1511335398.', 0),
(36, 'LAB', 'Presentation', 'images/25-11-2017-1511594037.', 1),
(37, 'Space -Lab', 'LAB EXAM', 'images/30-11-2017-1512026022.', 1);

--
-- Triggers `content`
--
DELIMITER $$
CREATE TRIGGER `delete` AFTER DELETE ON `content` FOR EACH ROW BEGIN
	delete from post where pid=OLD.pid;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update` AFTER UPDATE ON `content` FOR EACH ROW BEGIN
 UPDATE post set title=NEW.title where pid=NEW.pid;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `count`
--

CREATE TABLE `count` (
  `pid` int(10) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `view` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `count`
--

INSERT INTO `count` (`pid`, `ip`, `view`) VALUES
(1, '127.0.0.1', 6),
(4, '127.0.0.1', 20),
(2, '127.0.0.1', 12),
(3, '127.0.0.1', 8),
(17, '127.0.0.1', 9),
(20, '127.0.0.1', 9),
(21, '127.0.0.1', 6),
(22, '127.0.0.1', 10),
(23, '127.0.0.1', 20),
(24, '127.0.0.1', 2),
(26, '127.0.0.1', 4),
(30, '::1', 6),
(26, '::1', 1),
(33, '127.0.0.1', 49),
(32, '127.0.0.1', 18),
(35, '127.0.0.1', 4),
(31, '127.0.0.1', 1),
(36, '127.0.0.1', 1),
(37, '127.0.0.1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `pid` int(2) NOT NULL,
  `title` varchar(100) NOT NULL,
  `aid` int(2) NOT NULL,
  `tid` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`pid`, `title`, `aid`, `tid`) VALUES
(0, 'NEW.title', 0, 0),
(21, 'Meet the world\'s most powerful supercomputers', 1, 1),
(22, '16 Best Entrepreneurship and Business Leadership Articles of the Year', 1, 2),
(23, 'We found our galactic twin 180 million light years away', 1, 3),
(24, 'The Firewood Shortage That Helped Give Birth to America', 1, 4),
(25, '60 percent off a Samsung vacuum and other good deals happening today', 3, 1),
(26, 'How the Owners of This Tiny Bakery Bounced Back From Their Food Network Disaster', 3, 2),
(29, 'Neptuneâ€™s other moons were normal until Triton crashed the party', 3, 3),
(30, 'The Beatles? \'They have no future in show business\'', 3, 4),
(31, 'This temperature-control mug is the best product I\'ve tried in 2017', 2, 1),
(32, 'Is Your \'Personality Type\' Right for Working Remotely?', 2, 2),
(33, 'Should we seed life through the cosmos using laser-driven ships?', 2, 3),
(34, 'The British: 139. Zulu Warriors: 4,000. Let Battle Begin', 2, 4),
(35, 'Good Guy', 1, 1),
(36, 'LAB', 1, 1),
(37, 'Space -Lab', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `tid` int(2) NOT NULL,
  `tname` varchar(30) NOT NULL,
  `timg` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`tid`, `tname`, `timg`) VALUES
(1, 'Technology', 0x696d616765732f67697068792e676966),
(2, 'Entrepreneurship', 0x696d616765732f656e74657270756e65722e676966),
(3, 'Space', 0x696d616765732f73706163652e676966),
(4, 'History', 0x696d616765732f686973746f72792e676966);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
