library(cronR)
myscript <- "spiegel_scraper.R"
# Create bash code for crontab to execute R script
cmd <- cron_rscript(myscript)

## Run every minute
cron_add(command = cmd, frequency = 'minutely',
         id = 'ScraperR_1min', description = 'Spiegel every 1min')

## Run every 15 minutes (using cron syntax)
cron_add(cmd, frequency = '*/15 * * * *', 
         id = 'ScraperR_15min', description = 'Every 15 mins') 

## Check number of running cronR jobs
cron_njobs()

## Check cronR jobs
cron_ls()

## Delete task
cron_rm("ScraperR_1min", ask = TRUE)
