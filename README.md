# hubot-meowme

A Hubot plugin which only aims to bring you joy by posting funny cat pictures and gives to your chat windows. It uses http://meowme.herokuapp.com, a very robust and important service, to do its business.

## Installation

Install hubot-meowme from npm by adding it to your bot's `package.json`, then add hubot-meowme to your `external-scripts.json` file. They should end up looking something like this:

### package.json
    ...
    "dependencies": {
      "hubot":        ">= 2.4.0 < 3.0.0",
      ...
      "hubot-computerdogs": ">= 0.0.1"
    },
    ...

### external-scripts.json
    ["hubot-awesome-module","other-cool-npm-script","hubot-computerdogs"]

Run `npm install` to install hubot-meowme and dependencies.

## Usage

```
hubot cat me
```

```
hubot cat bomb
```

```
hubot cat bomb 10
```
