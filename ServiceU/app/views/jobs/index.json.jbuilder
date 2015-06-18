json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :description, :phone, :email, :user_id
  json.url job_url(job, format: :json)
end
