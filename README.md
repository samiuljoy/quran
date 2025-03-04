> [!IMPORTANT]
> ***New repositories from now on will be uploaded to [github.com/samiulahmedjoy](https://github.com/samiulahmedjoy) If you have any issues regarding this repository, make sure to open issues instead at [github.com/samiulahmedjoy/quran](https://github.com/samiulahmedjoy/quran)***

> ***A similar cli program like `Quran` has been uploaded to the [github](https://github.com/samiulahmedjoy/hadith) above called `hadith`. Go check it out***

> ***A similar cli program like `Quran` has been uploaded to the [github](https://github.com/samiulahmedjoy/hisnulmuslim) above called `hisnulmuslim`. Go check it out***

## Read the Holy Quran from the command line

Praise to the one and only, the lord of the Universe, Allah Who made it possible for me to write this piece of software

Read the English translation of the Holy Quran right from your terminal on GNU/Linux systems. The translated version is taken from Shaykh Mufti Taqi Usmani. I've included an [about the translator](about-translator.txt) file if you're curious to know more about Shaykh Mufti Taqi Usmani and his works.

This script will also work on any text file/file containing chapters and verses of the same format as the [Quran.txt](Quran.txt) file.

### Usage

**Here's a basic showcasing video**

[Tutorial video](https://youtu.be/EGsrfyhPwIk)


The usage is pretty straightforward, to invoke the script, just type in `Quran` without the quotation marks from your terminal. Invoking `Quran` without any arguments will print out the basic usage message.

### Flags

***Basic Flags***

The `-l` or `--list` flag prints out a list of all the Suras. To invoke it just type in;

```
Quran -l
```

The `-eg` or `--example` flag prints out some helpful examples which might come in handy for beginners.

```
Quran -eg
```

The `-s` or `--search` flag takes in a keyword and performs a search action and returns the verses that matches that keyword.

```
Quran -s "beautiful"
```

The `-h` or `--help` tag prints out the help message


***Suras and Ayats***

Most of what is described in this section can be found invoking the `-eg` flag from your terminal.


**Read a whole Sura by name or number**

Say I wanted to read Sura Kahf. I would type in;

```
Quran kahf
```

And this should print the whole sura. This is true for any other sura, see the names of suras with the `Quran -l` flag to call them by names.

Same goes for Sura number. Say I wanted to read chapter 18(sura 18) of the Holy Quran, I would type in;

```
Quran 18
```

This would print chapter 18 from the Holy Quran. The Chapter number is the same as a whole sura, in this case 18 refers to Sura Kahf.

**Read a verse(Ayat) from a Sura**

Say I wanted to read the 2nd verse from Sura Ta-Ha, I would type in;

```
Quran taha:2
```

Same can be said for a chapter; Say I wanted to read verse(Ayat) 2 from chapter 2 of the Holy Quran;

```
Quran 2:2
```

**Read verse with a range from a Sura**

Say I wanted to read verse 1-10 of Sura Kahf, I would type in;

```
Quran kahf:1-10
```

Or the last 10 ayats of Sura Kahf;

```
Quran kahf:100-110
```

The same is applicable for chapters, Since Sura kahf is chapter 18 of the Holy Quran, I would type in

```
Quran 18:1-10
```

Or last 10 verses of chapter 18

```
Quran 18:100-110
```

**Read from Sura A to Sura B**

Say I wanted to read from Sura Falaq to Sura Naas, I would type in;

```
Quran falaq-naas
```

This would print out the whole Sura Falaq upto Sura Naas, Same goes chapter-wise as well,

```
Quran 113-114
```

Would print out whole Sura Falaq(113th Sura in the Holy Quran) upto Sura Naas(114th Sura in the Holy Quran).

**Note:** The search terms like **falaq** or **naas** is case insensitive, which means you could also type in **Falaq** or **NAAS** and it would print out Sura Falaq and Sura Naas.


## Installation

Installation is pretty straightforward, just type in;

```sh
make install
```
or

```
sh install.sh
```

On a typical Linux system, this should install the program in `$HOME/.local/bin/` provided that `$HOME/.local/bin` is included in you $PATH and the Quran.txt under `$HOME/.local/share/Quran/Quran.txt`. You could of course change that, or manually copy that.

Hopefully you get benefited from this program. If you find any typos, or having problem running it in your system, make sure to open an issue.
