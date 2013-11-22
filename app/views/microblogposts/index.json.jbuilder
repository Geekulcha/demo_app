json.array!(@microblogposts) do |microblogpost|
  json.extract! microblogpost, :content, :user_id
  json.url microblogpost_url(microblogpost, format: :json)
end