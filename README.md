[![Build Status](https://travis-ci.com/scalableinternetservices/whispr.svg?branch=master)](https://travis-ci.com/scalableinternetservices/whispr)

whispr
========================
Whispr is a medical profile app - compile all relevant medical history in one place, with a convenient way to send it to health care providers, and have them add in new information in real-time.

## Prerequisites

 - Docker 18.09.2

## Getting Started

1. Use `./run build` to build the docker container for the app. 
    - TODO: for now, this step will fail at the end, as we don't have a `schema.rb` file. That's fine, though. The remaining steps will still work.
2. Use `./run start` to run the app locally. It will be exposed at http://127.0.0.1:3000.
3. Database migrations on startup must be done with commmand: `docker exec -d whispr_web_1 rails db:migrate RAILS_ENV=development`
4. For further usage of `./run`, use `./run usage`.

## Testing

-  TODO: under construction

## Cleanup

- Press `Ctrl+C` to close a currently-running instance of the docker container.
- Use `./run stop` to stop the docker container running in the background.
- Use `./run tidy` to do a light clean of the docker container.
- Use `./run clean` to do a full cleanup (caches of gem files will be removed).

## Meet the Team

<img src="https://drive.google.com/uc?export=view&id=1HXKTJR6t2p6fX-4D7nOiVkzaX178bEWa" width="250" height="250">

**Benji Brandt**, *@benjibrandt*

<img src="https://drive.google.com/uc?export=view&id=13--E-GK6gckc0Pe2a52Jeu0Fg8SAFNW_" width="250" height="250">

**Moo Jin Kim**, *@moojink*

<img src="https://drive.google.com/uc?export=view&id=1CYT40mEEEHASm0WuAFW0MggwFZIPzwJ_" width="250" height="250">

**Roy S. Lin**, *@rlin2k1*

<img src="https://drive.google.com/uc?export=view&id=1cSio232vG-iyZHJQtlWCrGx2OMfzfWEm" width="250" height="250">

**Bryan Pan**, *@BryanPan342*

##### What Section Do We Attend? It varies!
