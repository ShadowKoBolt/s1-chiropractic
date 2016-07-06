class Homepage < Page
  jsonb_accessor :content,
                 hero_title: :string,
                 hero_subtitle: :text
end
