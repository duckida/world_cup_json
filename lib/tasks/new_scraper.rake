namespace :scraper do
  desc 'try running as a rake task til we have sidekiq'
  task run_scraper: :environment do
    Scrapers::ScraperTasks.scrape_your_heart_out
  end

  task hourly_cleanup: :environment do
    Scrapers::ScraperTasks.hourly_cleanup
  end

  task hourly_cleanup: :environment do
    Scrapers::ScraperTasks.nightly_cleanup
  end
end
