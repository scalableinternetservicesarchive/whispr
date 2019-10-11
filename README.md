whispr
========================
Whispr is a medical profile app - compile all relevant medical history in one place, with a convenient way to send it to healtchare providers, and have them add in new information in real-time.

## Prerequisites

 - Docker 18.09.2

## Getting Started

1. Use `./run build` to build the docker container for the app. 
    - TODO: for now, this step will fail at the end, as we don't have a `schema.rb` file. That's fine, though. The remaining steps will still work.
2. Use `./run start` to run the app locally. It will be exposed at http://127.0.0.1:3000.
3. For further usage of `./run`, use `./run usage`.

## Testing

-  TODO: under construction

## Cleanup

- Press `Ctrl+C` to close a currently-running instance of the docker container.
- Use `./run stop` to stop the docker container running in the background.
- Use `./run tidy` to do a light clean of the docker container.
- Use `./run clean` to do a full cleanup (caches of gem files will be removed).

