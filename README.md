# ESA 2014 workshop on Data Visualization using R.

Welcome to the GitHub repository for the data visualization using R and ggplot workshop at ESA 2014.

### NOTE: This will be a work in progress until late July 2014.

**Location and time:** 
Sunday, August 10, 2014    
8:00 AM - 11:30 AM    
Location TBD    

## Organizers
[Naupaka Zimmerman](http://naupaka.net) and [Andrew Tredennick](http://warnercnr.colostate.edu/~atredenn/).

---

## Pre workshop instructions

<!-- **Important:** There will be no wifi in conference rooms this year so please plan on spending 10 minutes on Saturday night (or from the conference lobby on Sunday morning) to install the packages listed below and also download a local copy of this repository (see instructions below). -->

### Installing R  
If you don't already have R set up with a suitable code editor, we recommend downloading and installing [R](http://cran.cnr.berkeley.edu) and [RStudio Desktop](http://www.rstudio.com/ide/download/) for your platform. Once installed, open RStudio and install the following packages. Simply paste these commands into your prompt. 

### Installing packages

```coffee
install.packages("ggplot2", dependencies = TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")
install.packages("gridExtra")
install.packages("devtools")
install.packages('cshapes')
# Then a few packages to acquire data from the web to visualize
install.packages("rfisheries")
install.packages("rgbif")
install.packages("taxize")
# optional
devtools::install_github("rWBclimate", "ropensci")
```
### Downloading code/data from this repository  
If you're already familiar with `Git`, then simply clone this repo. If you're not familiar with Git, simply hit the **Download ZIP** button on the right side of this page. If you're not sure where to save it, just download and unzip to your Desktop.

*Please wait until Saturday afternoon to this so you are able to download the latest changes. Otherwise do another git pull or replace your donwloaded copy with a newer one.*

![](how_to_clone.png)

If you're having any trouble with these steps please drop us an [email](mailto:naupaka@gmail.com). We'll also strive to have local copies if you forget to install any of these tools.

See you Sunday!


---

# License  
<a rel="license" href="http://creativecommons.org/licenses/by/2.0/">Creative Commons Attribution 2.0 Generic License</a>.

