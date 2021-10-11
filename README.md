# Data Driven Curriculum

### History  
I have been trying to create a curriculum in HTML/PDF for a long time, but it was
really hard to maintain it, since data and visualization data are all mixed up.

My second try was to separate data and visualization data using XML and XSL, 
but the results were also not good enough.

Recently, I discover that it is possible to do it with `R` and `R Markdown`, I finally succeed to separate data from the hassle of choosing font types, 
color and size.

### Hands on  

1. Open R Studio and install package Vitae:

1. Create new file from template:  
  After package installation, go to:  
  `File > New file > RMardown > From Template`  
  Choose `Curriculum vitae (Hyndman format) {vitae}`  
  
1. R Studio will create a new folder and two files inside.

1. Create folder `r`. See below:
  ```
  ├── Curriculum
  │            ├── Hyndman
  │            │         ├── Hyndman.Rmd
  │            │         └── packages.bib
  │            ├── r
  │            │   └── data.R
  
  ```

5. Create a data source file, `data.R` inside a separated folder `/r`.  
  This file works like a mini database, with tabular information created inside a simple *Tribble*. See an example below:
  ```
  # Education
  
  education <- tribble(
    ~institute, ~subject, ~where, ~year,
    "FEI", "Engineer's Degree", "São Paulo", "1991",
    "UNICAMP", "Engineer's Degree", "Campinas", "1995"
  )
  ```
6. In this example, vector `education` will have 04 columns and will be accessible 
from `Hyndman.Rmd` script using the following loading command:
  ```
  row#20
  source("../r/data.R")
  
  ```
7. After running above command, all vectors created in `data.R`, file will be available at `Hyndman.Rmd` script. See  R Studio tab Environment, on the right hand side.

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


Vitae package basically works with two functions (keep it simple):

* `detailed_entries` 
* `brief_entries`

I used the first function to display information in the curriculum.

You will need to call your vector and then use the pipe operator `%>%` to call 
one of the functions.

```
education %>% 
  detailed_entries(what = subject,
                   when = year,
                   with = institute)
```

This is the tricky part, because you need to try-and-error all entries of
each function to display the correct information in the output PDF file.

Once all vectors are called from `data.R`, you can use the command `Knit` in R 
Studio to generate a PDF file of your curriculum according to Hyndman layout.

See a real curriculum example in PDF format at: `Curriculum/Hyndman/Hyndman.pdf`.


```
├── Curriculum
│             ├── Hyndman
│             │         ├── Hyndman.pdf
│             │         ├── Hyndman.Rmd
│             │         └── packages.bib
│             ├── r
│             │   └── data.R

```


I hope this description helps you create your own curriculum using Vitae package.

I found valuable information on the following links:

* [Mitchelloharawild](https://github.com/mitchelloharawild/vitae)  
* [Making A Data Driven CV With RMarkdown](https://www.youtube.com/watch?v=cMlRAiQUdD8)  

Have a good day,

Eduardo Lima
