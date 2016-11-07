class ContactPage < Page
  jsonb_accessor :content,
                 body: :text
end
