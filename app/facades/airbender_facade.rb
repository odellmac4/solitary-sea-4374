class AirbenderFacade
  def initialize(nation_selection, service = AirbenderService.new)
    @nation = nation_selection
    @service = service
  end

  def nation_members
    json = @service.members(@nation)
    members = json.map do |member_data|
      Member.new(member_data)
    end
  end

  def nation_member_count
    nation_members.count
  end
end