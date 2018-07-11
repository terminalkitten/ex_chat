defmodule ExChat.UserSessionSupervisor do
  use Supervisor

  alias ExChat.UserSessionRegistry

  def start_link(_opts) do
    Supervisor.start_link(__MODULE__, [], name: :user_session_supervisor)
  end

  def init(_) do
    children = [worker(ExChat.UserSession, [])]
    supervise(children, strategy: :simple_one_for_one)
  end

  def create(user_session_id) do
    name = {:via, Registry, {UserSessionRegistry, user_session_id}}

    Supervisor.start_child(:user_session_supervisor, [name])
  end

  def find(user_session_id) do
    case Registry.lookup(UserSessionRegistry, user_session_id) do
       [] -> nil
       [{pid, nil}] -> pid
    end
  end
end
