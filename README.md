# README

#Overview
- host version at: https://recuperator.herokuapp.com/
- Unique validation/auth based on role of user.
- Potential for neat data visuaization.



#Set up for local testing

## Ruby version
- ruby: 2.3.3p222

## System dependencies
- Fork/clone the repo for local deployment.
- Image uploads require ImageMagick to be installed: http://www.imagemagick.org/script/index.php

## Database creation
- In terminal, navigate to the directory where you downloaded this app, and create a database for it: `rails db:create`
- Next, lets set up the database with our models. Run: `rails db:migrate`

## Database initialization
- Add in some seeded data. This will give the app some activities to get started. Additionally, running the seed command will destroy any existing data in the database. THIS IS PERMANENT. YOU CANNOT UNDO THIS. Run `rails db:seed`
- Your database is up and ready for testing. Have fun!

## Configuration
- The carrierWave gem requires the rmagick gem, which is not compatible with the latest version of ImageMagick. As of the writing of this README, to require the correct version of ImageMagick you can use this command:
`brew install imagemagick@6 --force && brew link imagemagick@6 --force`
This will force the installation of a specific version for this.
- If you have additional constraints, this is a good resource for ImageMagick/carrierWave issues:
http://stackoverflow.com/questions/9050419/cant-install-rmagick-2-13-1-cant-find-magickwand-h

## Deployment of a local server
- You will need a local clone of this repository.
- In the app directory, you'll need to install the required gems, run `bundle install` in terminal.
- Spin up a local puma server, use `rails server`. This is set up on localhost:3000.

## How to run the test suite
Im trying to figure that out myself.

* ...
