class Member
  attr_reader :id,
              :name,
              :allies,
              :enemies,
              :affiliation,
              :photo

  def initialize(member_data)
    @id = member_data[:_id]
    @name = member_data[:name]
    @allies = member_data[:allies].to_sentence
    @enemies = member_data[:enemies].to_sentence
    @affiliation = member_data[:affiliation]
    @photo = member_data[:photoUrl]
  end
end