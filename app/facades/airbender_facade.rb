class AirbenderFacade
  def initialize(nation_selection, service = AirbenderService.new)
    @nation = nation_selection
    @service = service
  end
end