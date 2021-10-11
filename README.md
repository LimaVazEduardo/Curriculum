# Data Driven Curriculum

### History  
I have been trying to create a curriculum in HTML/PDF for a long time, but it was
really hard to maintain it, since data and visualization data are all mixed up.

My second try was to separate data and visualization data using XML and XSL, 
but the results were also not good enough.

Recently, I discover that it is possible to do it with `R` and `R Markdown`, I finally succeed to separate data from the hassle of choosing font types, 
color and size.

### Hands on  

1. Open R Studio:  
  Install package Vitae

1. Create new file from template:  
  Go to:  
  `File > New file > RMardown > From Template`  
  Choose:  
  `Curriculum vitae (Hyndman format) {vitae}`  
  
1. R Studio will create a new folder and two files inside:
  ```
  ├── Curriculum
  │            ├── Hyndman
  │            │         ├── Hyndman.Rmd
  │            │         └── packages.bib
  
  ```

4. Create folder `/r`: 
  ```
  ├── Curriculum
  │            ├── Hyndman
  │            │         ├── Hyndman.Rmd
  │            │         └── packages.bib
  │            ├── r
  │            │   └── data.R
  
  ```

5. Create a data source file, `r/data.R`:  
  This file will work like a mini database, with tabular information created 
  inside a simple *Tribble*.  
  See an example below:  
  ```
  # Education
  
  education <- tribble(
    ~institute, ~subject, ~where, ~year,
    "FEI", "Engineer's Degree", "São Paulo", "1991",
    "UNICAMP", "Engineer's Degree", "Campinas", "1995"
  )
  
  ```
6. In the above example, vector `education` will have 04 columns (Institute, 
Subject, Where and Year) and will be accessible from `Hyndman.Rmd` script, using the following load command:
  ```
  source("../r/data.R")
  
  ```
7. After running above command, all vectors created in `data.R` file, will be displayed in R Studio tab Environment, on the right hand side.


### How it works  

Edit script `Hyndman.Rmd` to update the YAML with your information.

```
name:      Eduardo 
surname:   Lima
position:  "Integration Analyst"
phone:     +55 19 11111 1111
address:   "Campinas-SP, Brazil"
email:     "lima.vaz.eduardo@gmail.com"
linkedin:  eduardo1lima
headcolor: 000080             # Navy blue
date:      "`r format(Sys.time(), '%B %Y')`"
output: vitae::hyndman

```


Vitae package basically works with two functions (keep it simple).

* `detailed_entries` 
* `brief_entries`

```
Usage
detailed_entries(data, what, when, with, where, why, .protect = TRUE)
brief_entries   (data, what, when, with, .protect = TRUE)

```


I used the first function to display information in the curriculum.

You will need to access your vector and then use the pipe operator `%>%` to call 
one of the functions.

```
education %>% 
  detailed_entries(what = subject,
                   when = year,
                   with = institute)
                   
```

This is the tricky part, because you need to try-and-error all entries of
each function to display the desired information in the output PDF file.

Once done the first vector, all you need to do is to copy and paste the same structure for the remaining vectors.


After all vectors are called from your database, `data.R`, you can use the command `Knit` in the file `Hyndman.Rmd` to generate a PDF file of your curriculum, according to chosen layout.

See a real curriculum example in PDF format at: `Curriculum/Hyndman/Hyndman.pdf`.


```
├── Curriculum
│           ├── Hyndman
│           │         ├── Hyndman.pdf
│           │         ├── Hyndman.Rmd
│           │         └── packages.bib
│           ├── r
│           │   └── data.R

```

### Why data driven curriculum?
The main idea behind this concept is to update your curriculum, only by updating the file `data.R` and leave the heavy lifting work of formatting the PDF file for R Markdown script `Hyndman.Rmd`. 

Great isn't it?


---

I hope this tutorial helps you create your own curriculum using Vitae package and R Markdown.

There are 06 layouts available in Vitae package. Choose the one you enjoy most.

I found valuable information on this topic, at the following links:

* [Mitchelloharawild](https://github.com/mitchelloharawild/vitae)  
* [Making A Data Driven CV With RMarkdown](https://www.youtube.com/watch?v=cMlRAiQUdD8)  

Have a good day,

[Eduardo Lima](https://www.linkedin.com/in/eduardo1lima/)

[Twitter](https://twitter.com/Eduardo69564454)
