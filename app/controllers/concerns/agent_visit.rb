module AgentVisit
    extend ActiveSupport::Concern

    def increment_or_create_agent user_agent
        agent = Agent.where("name = ?",user_agent).first || Agent.create(name: user_agent, counter: 0)
        agent.increment(:counter, by = 1).save
    end
end