# ExChat

This is a simple chat server built in Elixir with the goal to show a real life application of Websockets.

![the sketch](/sketch.png?raw=true)

## Features roadmap

- Multiple Rooms support
- A Websockets server implementation so that we can support web clients
- A minimal frontend to allow users to subscribe to each room, sending messages and receiving messages

## Run tests

```
$ mix deps.get
$ mix test
```

## Run application

```
$ mix deps.get
$ iex -S mix
```

_Check out the chat web client at `http://localhost:4000/chat.html`_

## Scratchpad

### DOING

### TODO

- Remove the `/echo` endpoint just because it is no longer needed
- Handle multiple chat rooms
- Rename `web.http` to `web.router`

### DONE

- Allow web clients to receive messages
- Allow web clients to write and send messages
  - We have to create a better web UI to allows user to write and send messages
- Replace the `plug-web-socket` with the default `cowboy_websocket_handler`
- Allow web clients to join a chatroom
- How to test the websocket endpoint in Elixir
- Put `how to run tests` and `how to start application` in the `README.md`
- Start the application
- Rename the test folder `exchat` to `ex_chat`
- As a client I can subscribe to a chat room so that I can receive all the messages sent
